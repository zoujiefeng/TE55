/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Dem.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "rba_BswSrv.h"
#include "MAIN_ECPCfg_EPS.h"
#include "MAIN_RollErrCode.h"

#include "FAULT_Api.h"
#include "ComStack_Types.h"
#include "CanIf.h"
#include "ComHal.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define MAIN_ECP_ECU_NAME       EPS

#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
#define MAIN_J1939_FILL_BYTE               (0xFFu)

#define MAIN_J1939_SPN_LOG_STATE_BUF_SIZE  ((eMAIN_J1939_SPN_MAX_NO / J1939_STATE_VAR_BIT_SIZE) + 1)
#define MAIN_J1939_SPN_STATE_BUF_SIZE      (J1939_BAM_FAULT_MAX_NO * J1939_FAULT_CODE_SIZE)

#define MAIN_J1939_TX_PDUID_J1939_DM1     MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eCOMHAL_TX_PDUID_J1939_DM1)  //eCOMHAL_TX_PDUID_J1939_DM1_EPS
#define MAIN_J1939_TX_PDUID_J1939_BAM     MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eCOMHAL_TX_PDUID_J1939_BAM)  //eCOMHAL_TX_PDUID_J1939_BAM_EPS
#define MAIN_J1939_TX_PDUID_J1939_TPDT    MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eCOMHAL_TX_PDUID_J1939_TPDT) //eCOMHAL_TX_PDUID_J1939_TPDT_EPS

#endif /* (_MAIN_J1939_MODULE_ENABLE_ == 1) */

#define MAIN_ECP_INVALID_EVENT_NO         (0u)

#define MAIN_REC_BUF_IDX                 MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eMAIN_REC_BUF_IDX)               //eMAIN_REC_BUF_IDX_EPS
#define MAIN_ku16FaultNum                MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_ku16FaultNum)               //MAIN_ku16FaultNum_EPS
#define MAIN_katFaultCfgSet              MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_katFaultCfgSet)             //MAIN_katFaultCfgSet_EPS
#define MAIN_ktJ1939EcuCfg               MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_ktJ1939EcuCfg)              //MAIN_ktJ1939EcuCfg_EPS
#define MAIN_ECP_vidInvalidEventHandler  MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_ECP_vidInvalidEventHandler) //MAIN_ECP_vidInvalidEventHandler_EPS

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/
#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
static uint32 MAIN_J1939_au32SpnLogState[MAIN_J1939_SPN_LOG_STATE_BUF_SIZE] = {0};
static uint8  MAIN_J1939_au8DM1TxBuf[8];
static uint8  MAIN_J1939_au8BAMTxBuf[8];
static uint8  MAIN_J1939_au8TPDTTxBuf[8];
static uint8  MAIN_J1939_au8SPNBuf[MAIN_J1939_SPN_STATE_BUF_SIZE] = {0};
static J1939_EcuVarSet MAIN_J1939_tVarSet;
#endif

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
static void MAIN_J1939_vidSPNBufInit(void);
static void MAIN_J1939_vidSendDM1(void);
static void MAIN_J1939_vidSendBAM(void);
static void MAIN_J1939_vidSendTPDT(void);
#endif

static inline void MAIN_ECP_vidCommonHandler(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);

static void MAIN_ECP_vidOBSW_COM_BusOff_CAN1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOBSW_COM_TimoutRxVCUCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOBSW_HW_FPGA_IGBT_HCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOBSW_HW_FPGA_IGBT_LCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurUICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurVICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurWICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOBSW_HW2_FPGA_OverVoltVBatCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVBHV_OverVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVBHV_UnderVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVBLV_OverVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVBLV_UnderVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVETA_OverTempIgbtLeftCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSMTMTA_OverTempWdgHead1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTMTLCS_CurrentSumErrorCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTASETP_PmDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTASMTP_Wndg1DeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTASOSP_MotorSpdDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTCMTCS_VoltageMarginLowCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTMTLCS_ContorOverLoadCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTMTLCS_MotorOverLoadCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVETA_TempIgbtLeftVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTCMSCS_SpeedDiffCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTSLOBS_SpeedImbalanceCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVETA_TempIgbtLeftGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSMTMTA_TempWindingHead1GndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSMTMTA_TempWindingHead1VccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVBLV_P5VRefADCFltCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVETA_IgbtTempRationalCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVBHV_VoltageGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVBHV_VoltageVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVETA_OverTempNTC1CmdBoardCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFSEVETA_OverTempDrvLeftCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidOFTASBDS_BattVoltDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);

/*******************************************************************************
 ****  Private Constant Declarations
 ******************************************************************************/
const MAIN_ECPFaultCfg MAIN_katFaultCfgSet[] = {
    /* u8RollErrCode = , .u8InvtFaultByteIdx = , .u8InvtFaultBitMask = , .u16FaultLogged = , .vidFaultUserCallout = */
    {J1939_FAULT_CFG_DEF(6, 520615), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC00,  6, MAIN_ECP_FAULT_CODE_01, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OBSW_HW_, FPGA_OverUnderCurUI)},

    {J1939_FAULT_CFG_DEF(6, 520616), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC01,  7, MAIN_ECP_FAULT_CODE_01, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OBSW_HW_, FPGA_OverUnderCurVI)},

    {J1939_FAULT_CFG_DEF(6, 520617), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC02,  8, MAIN_ECP_FAULT_CODE_01, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OBSW_HW_, FPGA_OverUnderCurWI)},

    {J1939_FAULT_CFG_DEF(12, 520618), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC03,  9, MAIN_ECP_FAULT_CODE_11, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFTMTLCS_, CurSenrPhaU_GND)},
    {J1939_FAULT_CFG_DEF(12, 520618), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC03, 10, MAIN_ECP_FAULT_CODE_11, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFTMTLCS_, CurSenrPhaU_VCC)},
    {J1939_FAULT_CFG_DEF(12, 520618), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC03, 70, MAIN_ECP_FAULT_CODE_11, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFTMTLCS_, CurSenrPhaV_GND)},
    {J1939_FAULT_CFG_DEF(12, 520618), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC03, 71, MAIN_ECP_FAULT_CODE_11, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFTMTLCS_, CurSenrPhaV_VCC)},
    {J1939_FAULT_CFG_DEF(12, 520618), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC03, 72, MAIN_ECP_FAULT_CODE_11, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFTMTLCS_, CurSenrPhaW_GND)},
    {J1939_FAULT_CFG_DEF(12, 520618), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC03, 73, MAIN_ECP_FAULT_CODE_11, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFTMTLCS_, CurSenrPhaW_VCC)},
    
    {J1939_FAULT_CFG_DEF(12, 520619), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC04, 11, MAIN_ECP_FAULT_CODE_05, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFTMTLCS_, CurrentSumError)},

    {J1939_FAULT_CFG_DEF(12, 520620), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC05, 23, MAIN_ECP_FAULT_CODE_07, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFTCMTCS_, VoltageMarginLow)},
    
    {J1939_FAULT_CFG_DEF(0, 520622), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC08, 27, MAIN_ECP_FAULT_CODE_04, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFSEVETA_Over, TempIgbtLeft)},  /* 3 */

    {J1939_FAULT_CFG_DEF(12, 520622), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC06,  4, MAIN_ECP_FAULT_CODE_00, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OBSW_HW_, FPGA_IGBT_H)},
    {J1939_FAULT_CFG_DEF(12, 520622), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC06,  5, MAIN_ECP_FAULT_CODE_00, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OBSW_HW_, FPGA_IGBT_L)},

    {J1939_FAULT_CFG_DEF(16, 520622), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC07, 30, MAIN_ECP_FAULT_CODE_06, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFTASETP_, PmDeratingAct)},     /* 1 */
    {J1939_FAULT_CFG_DEF(16, 520622), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC07, 33, MAIN_ECP_FAULT_CODE_12, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFSEVETA_, IgbtTempRational)},    /* 2 */

    {J1939_FAULT_CFG_DEF(12, 520623), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC09, 32, MAIN_ECP_FAULT_CODE_07, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFSEVETA_Temp, IgbtLeftVcc)},
    {J1939_FAULT_CFG_DEF(12, 520623), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC09, 31, MAIN_ECP_FAULT_CODE_08, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFSEVETA_Temp, IgbtLeftGnd)},

    {J1939_FAULT_CFG_DEF(3, 520624), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC10, 12, MAIN_ECP_FAULT_CODE_01, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OBSW_HW2_, FPGA_OverVoltVBat)},
    {J1939_FAULT_CFG_DEF(3, 520624), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC10, 38, MAIN_ECP_FAULT_CODE_01, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFSEVBHV_, VoltageVcc)},        /* 4 */
    {J1939_FAULT_CFG_DEF(3, 520624), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC10, 13, MAIN_ECP_FAULT_CODE_02, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFSEVBHV_, OverVoltage)},

    {J1939_FAULT_CFG_DEF(4, 520624), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC11, 45, MAIN_ECP_FAULT_CODE_04, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFTASBDS_, BattVoltDeratingAct)},  /* 1 */
    {J1939_FAULT_CFG_DEF(4, 520624), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC11, 49, MAIN_ECP_FAULT_CODE_00, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFSEVBHV_, VoltageGnd)},        /* 4 */
    {J1939_FAULT_CFG_DEF(4, 520624), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC11, 14, MAIN_ECP_FAULT_CODE_02, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFSEVBHV_, UnderVoltage)},
 
    {J1939_FAULT_CFG_DEF(0, 520625), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC12, 34, MAIN_ECP_FAULT_CODE_04, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFSMTMTA_Over, TempWdgHead1)},  /* 3 */
    {J1939_FAULT_CFG_DEF(0, 520625), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC12, 35, MAIN_ECP_FAULT_CODE_06, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFTASMTP_, Wndg1DeratingAct)},  /* 1 */

    {J1939_FAULT_CFG_DEF(12, 520626), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC13, 36, MAIN_ECP_FAULT_CODE_09, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFSMTMTA_Temp, WindingHead1Gnd)},    /* 2 */
    {J1939_FAULT_CFG_DEF(12, 520626), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC13, 37, MAIN_ECP_FAULT_CODE_10, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFSMTMTA_Temp, WindingHead1Vcc)},    /* 2 */

    {J1939_FAULT_CFG_DEF(12, 520627), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC14, 59, MAIN_ECP_FAULT_CODE_07, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFTMTLCS_, ContorOverLoad)},    /* 2 */
    {J1939_FAULT_CFG_DEF(12, 520627), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC14, 60, MAIN_ECP_FAULT_CODE_07, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFTMTLCS_, MotorOverLoad)},    /* 2 */
    
    {J1939_FAULT_CFG_DEF(12, 520628), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC15, 69, MAIN_ECP_FAULT_CODE_08, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFTSLOBS_, SpeedImbalance)},        /* 4 */
    
    {J1939_FAULT_CFG_DEF(12, 520629), DemConf_DemEventParameter_DemEventParameter_ECU4_DTC16, 68, MAIN_ECP_FAULT_CODE_08, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(OFTCMSCS_, SpeedDiff)},        /* 4 */

    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  1, MAIN_ECP_FAULT_CODE_00, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OBSW_COM_, BusOff_CAN1)},    // 3
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG, 15, MAIN_ECP_FAULT_CODE_00, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OBSW_COM_, TimoutRxVCU)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG, 24, MAIN_ECP_FAULT_CODE_11, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFSEVBLV_, P5VRefADCFlt)},  /* 3 */
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG, 39, MAIN_ECP_FAULT_CODE_01, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFSEVETA_, OverTempNTC1CmdBoard)},    /* 2 */
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG, 40, MAIN_ECP_FAULT_CODE_01, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFSEVETA_Over, TempDrvLeft)},        /* 4 */
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG, 55, MAIN_ECP_FAULT_CODE_06, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFTASOSP_, MotorSpdDeratingAct)},  /* 1 */
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  3, MAIN_ECP_FAULT_CODE_02, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFSEVBLV_, OverVoltage)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  2, MAIN_ECP_FAULT_CODE_02, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(OFSEVBLV_, UnderVoltage)},

};

const uint16 MAIN_ku16FaultNum = sizeof(MAIN_katFaultCfgSet)/sizeof(MAIN_ECPFaultCfg);

#if (MAIN_ECP_INVALID_EVENT_NO > 0)
static const uint16 MAIN_kau16InvalidEventIdList[] = {

};
#endif

#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
const J1939_EcuCfg MAIN_ktJ1939EcuCfg = {
   .u16SPNNum       = eMAIN_J1939_SPN_MAX_NO,
   .u8FillByte      = MAIN_J1939_FILL_BYTE,

   .pau8SPNBuf      = &MAIN_J1939_au8SPNBuf[0],
   .pau32StateBuf   = &MAIN_J1939_au32SpnLogState[0],

   .pau8DM1TxBuf    = &MAIN_J1939_au8DM1TxBuf[0],
   .pau8BAMTxBuf    = &MAIN_J1939_au8BAMTxBuf[0],
   .pau8TPDTTxBuf   = &MAIN_J1939_au8TPDTTxBuf[0],

   .ptVarSet        = &MAIN_J1939_tVarSet,

   .vidSPNBufInit   = MAIN_J1939_vidSPNBufInit,
   .vidSendDM1      = MAIN_J1939_vidSendDM1,
   .vidSendBAM      = MAIN_J1939_vidSendBAM,
   .vidSendTPDT     = MAIN_J1939_vidSendTPDT,
};
#endif

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void MAIN_ECP_vidInvalidEventHandler(tSetEventStateFuncPtr tFuncPtr)
{
#if (MAIN_ECP_INVALID_EVENT_NO > 0)
    uint16 u16Index;

    for(u16Index = 0; u16Index < sizeof(MAIN_kau16InvalidEventIdList)/sizeof(MAIN_kau16InvalidEventIdList[0]); u16Index++)
    {
        tFuncPtr(MAIN_kau16InvalidEventIdList[u16Index]);
    }
#else
    (void)tFuncPtr;
#endif
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
/******************************************************************************/
/*********************************  J1939  ************************************/
/******************************************************************************/
#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
static void MAIN_J1939_vidSPNBufInit(void)
{
    (void)rba_BswSrv_MemSet(&MAIN_J1939_au8SPNBuf[0], MAIN_J1939_FILL_BYTE, MAIN_J1939_SPN_STATE_BUF_SIZE);
}

static void MAIN_J1939_vidSendDM1(void)
{
#if (_MAIN_EPS_MODULE_SEND_ENABLE_ == 1U)
    ComHal_vidSendMessage(MAIN_J1939_TX_PDUID_J1939_DM1, &MAIN_J1939_au8DM1TxBuf[0]);
#endif
}

static void MAIN_J1939_vidSendBAM(void)
{   
#if (_MAIN_EPS_MODULE_SEND_ENABLE_ == 1U)
    ComHal_vidSendMessage(MAIN_J1939_TX_PDUID_J1939_BAM, &MAIN_J1939_au8BAMTxBuf[0]);
#endif
}

static void MAIN_J1939_vidSendTPDT(void)
{   
#if (_MAIN_EPS_MODULE_SEND_ENABLE_ == 1U)
    ComHal_vidSendMessage(MAIN_J1939_TX_PDUID_J1939_TPDT, &MAIN_J1939_au8TPDTTxBuf[0]);
#endif
}
#endif

/******************************************************************************/
/********************************  Common  ************************************/
/******************************************************************************/
static inline void MAIN_ECP_vidCommonHandler(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    /* Set INVT fault Code */
    kptUserParam->u8LocFaultCode[kpktCfg->u8InvtFaultByteIdx] |= kpktCfg->u8InvtFaultBitMask;

#if (_MAIN_ROLL_ERR_CODE_MERGE_ENABLE_ == 0)
    /* Set rolling error code */
    MAIN_REC_vidSetErrCode(MAIN_REC_BUF_IDX, kpktCfg->u8RollErrCode);
#endif /* (_MAIN_J1939_MODULE_ENABLE_ == 0) */
}

/******************************************************************************/
/*******************************  User Cfg  ***********************************/
/******************************************************************************/

static void MAIN_ECP_vidOBSW_HW_FPGA_IGBT_HCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOBSW_HW_FPGA_IGBT_LCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurUICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurVICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOBSW_HW_FPGA_OverUnderCurWICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOBSW_HW2_FPGA_OverVoltVBatCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOBSW_COM_BusOff_CAN1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidOBSW_COM_TimoutRxVCUCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidOFSEVBHV_OverVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFSEVBHV_UnderVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFSEVBHV_VoltageVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFSEVBHV_VoltageGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFSEVBLV_OverVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidOFSEVBLV_UnderVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidOFSEVBLV_P5VRefADCFltCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidOFSEVETA_IgbtTempRationalCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFSEVETA_OverTempNTC1CmdBoardCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidOFSEVETA_OverTempDrvLeftCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidOFSEVETA_OverTempIgbtLeftCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFSMTMTA_OverTempWdgHead1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidOFSEVETA_TempIgbtLeftGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidOFSEVETA_TempIgbtLeftVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidOFSMTMTA_TempWindingHead1GndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidOFSMTMTA_TempWindingHead1VccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidOFTMTLCS_CurrentSumErrorCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFTMTLCS_CurSenrPhaU_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFTMTLCS_CurSenrPhaV_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFTMTLCS_CurSenrPhaW_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFTMTLCS_ContorOverLoadCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidOFTMTLCS_MotorOverLoadCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidOFTMTLCS_RunForLongTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidOFTCMTCS_VoltageMarginLowCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFTASBDS_BattVoltDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidOFTASETP_PmDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidOFTASMTP_Wndg1DeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidOFTASOSP_MotorSpdDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidOFTCMSCS_SpeedDiffCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidOFTSLOBS_SpeedImbalanceCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}