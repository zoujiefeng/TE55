/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Dem.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "rba_BswSrv.h"
#include "MAIN_ECPCfg_MCU1.h"
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
#define MAIN_ECP_ECU_NAME       MCU1

#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
#define MAIN_J1939_FILL_BYTE               (0xFFu)

#define MAIN_J1939_SPN_LOG_STATE_BUF_SIZE  ((eMAIN_J1939_SPN_MAX_NO / J1939_STATE_VAR_BIT_SIZE) + 1)
#define MAIN_J1939_SPN_STATE_BUF_SIZE      (J1939_BAM_FAULT_MAX_NO * J1939_FAULT_CODE_SIZE)

#define MAIN_J1939_TX_PDUID_J1939_DM1     MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eCOMHAL_TX_PDUID_J1939_DM1)  //eCOMHAL_TX_PDUID_J1939_DM1_MCU1
#define MAIN_J1939_TX_PDUID_J1939_BAM     MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eCOMHAL_TX_PDUID_J1939_BAM)  //eCOMHAL_TX_PDUID_J1939_BAM_MCU1
#define MAIN_J1939_TX_PDUID_J1939_TPDT    MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eCOMHAL_TX_PDUID_J1939_TPDT) //eCOMHAL_TX_PDUID_J1939_TPDT_MCU1

#endif /* (_MAIN_J1939_MODULE_ENABLE_ == 1) */

#define MAIN_ECP_INVALID_EVENT_NO         (1u)

#define MAIN_REC_BUF_IDX                 MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eMAIN_REC_BUF_IDX)               //eMAIN_REC_BUF_IDX_MCU1
#define MAIN_ku16FaultNum                MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_ku16FaultNum)               //MAIN_ku16FaultNum_MCU1
#define MAIN_katFaultCfgSet              MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_katFaultCfgSet)             //MAIN_katFaultCfgSet_MCU1
#define MAIN_ktJ1939EcuCfg               MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_ktJ1939EcuCfg)              //MAIN_ktJ1939EcuCfg_MCU1
#define MAIN_ECP_vidInvalidEventHandler  MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_ECP_vidInvalidEventHandler) //MAIN_ECP_vidInvalidEventHandler_MCU1

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

static void MAIN_ECP_vidBSW_COM_BusOff_CAN1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidBSW_COM_TimoutRxVCUCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidBSW_HW2_FPGA_OverVoltVBatCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidBSW_HW2_SelfTst_InterLockCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidBSW_HW_FPGA_IGBT_HCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidBSW_HW_FPGA_IGBT_LCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidBSW_HW_FPGA_OverUnderCurUICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidBSW_HW_FPGA_OverUnderCurVICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidBSW_HW_FPGA_OverUnderCurWICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidBSW_HW_OCDataNotRationalCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVBHV_OverVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVBHV_UnderVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVBHV_VoltageGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVBHV_VoltageVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVBLV_OverVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVBLV_P5VRefADCFltCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVBLV_UnderVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVETA_IgbtTempRationalCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVETA_OverTempNTC1CmdBoardCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVETA_OverTempDrvLeftCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVETA_OverTempIgbtLeftCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVETA_TempIgbtLeftGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSEVETA_TempIgbtLeftVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSMTMTA_OverTempWdgHead1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSMTMTA_TempWindingHead1GndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSMTMTA_TempWindingHead1VccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSMTRDG_ExcGenerationCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSMTRDG_SinCosHLGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSMTRDG_SinCosHLOpenCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSMTRDG_SinCosHLVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFSSMACS_AkdFailFlagCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTASBDS_BattVoltDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTASETP_EstPmDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTASETP_PmDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTASMTP_Wndg1DeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTASOSP_MotorSpdDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTCMSCS_SpdOvershootCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTCMTCS_VoltageMarginLowCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTEVEIT_EstOverTempCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTMTLCS_CurrentSumErrorCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTMTLCS_CurSenrPhaU_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTMTLCS_CurSenrPhaU_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTMTLCS_CurSenrPhaV_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTMTLCS_CurSenrPhaV_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTMTLCS_CurSenrPhaW_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidFTMTLCS_CurSenrPhaW_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidSDMTMEP_CosGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidSDMTMEP_CosVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidSDMTMEP_SinGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidSDMTMEP_SinVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidSDMTMEP_OverSpeedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidSDMTMEP_ResSquaSumErrByFTCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidSDMTMEP_UnderSpeedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidSDMTMEP_SpeedWarnCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);

/*******************************************************************************
 ****  Private Constant Declarations
 ******************************************************************************/
const MAIN_ECPFaultCfg MAIN_katFaultCfgSet[] = {
    /* u8RollErrCode = , .u8InvtFaultByteIdx = , .u8InvtFaultBitMask = , .u16FaultLogged = , .vidFaultUserCallout = */
    {J1939_FAULT_CFG_DEF(19, 524216), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC00,   1, MAIN_ECP_FAULT_CODE_00, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(BSW_COM_, BusOff_CAN1)},    // 3
    {J1939_FAULT_CFG_DEF(19, 524216), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC00,   4, MAIN_ECP_FAULT_CODE_00, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(BSW_COM_, TimoutRxVCU)},

    {J1939_FAULT_CFG_DEF( 3,    168), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC01,  21, MAIN_ECP_FAULT_CODE_02, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FSEVBLV_, OverVoltage)},

    {J1939_FAULT_CFG_DEF( 4,    168), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC02,  22, MAIN_ECP_FAULT_CODE_02, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FSEVBLV_, P5VRefADCFlt)},  //3
    {J1939_FAULT_CFG_DEF( 4,    168), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC02,  23, MAIN_ECP_FAULT_CODE_02, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FSEVBLV_, UnderVoltage)},

    {J1939_FAULT_CFG_DEF(12, 523931), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC03,   9, MAIN_ECP_FAULT_CODE_01, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(BSW_HW_, FPGA_IGBT_H)},
    {J1939_FAULT_CFG_DEF(12, 523931), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC03,  10, MAIN_ECP_FAULT_CODE_01, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(BSW_HW_, FPGA_IGBT_L)},

    {J1939_FAULT_CFG_DEF(16, 523932), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC04,  39, MAIN_ECP_FAULT_CODE_04, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FTASETP_, EstPmDeratingAct)},  //1
    {J1939_FAULT_CFG_DEF(16, 523932), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC04,  40, MAIN_ECP_FAULT_CODE_05, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FTASETP_, PmDeratingAct)},  //1
    {J1939_FAULT_CFG_DEF(16, 523932), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC04,  24, MAIN_ECP_FAULT_CODE_03, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FSEVETA_, IgbtTempRational)},  //2

    {J1939_FAULT_CFG_DEF( 0, 523932), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC05,  46, MAIN_ECP_FAULT_CODE_05, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FTEVEIT_, EstOverTemp)},  //3
    {J1939_FAULT_CFG_DEF( 0, 523932), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC05,  27, MAIN_ECP_FAULT_CODE_03, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FSEVETA_Over, TempIgbtLeft)},  //3

    {J1939_FAULT_CFG_DEF(12, 523933), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC06,  28, MAIN_ECP_FAULT_CODE_03, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FSEVETA_Temp, IgbtLeftGnd)},
    {J1939_FAULT_CFG_DEF(12, 523933), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC06,  29, MAIN_ECP_FAULT_CODE_03, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FSEVETA_Temp, IgbtLeftVcc)},

    {J1939_FAULT_CFG_DEF( 6, 523934), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC07,  11, MAIN_ECP_FAULT_CODE_01, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(BSW_HW_, FPGA_OverUnderCurUI)},

    {J1939_FAULT_CFG_DEF(12, 523934), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC08,  49, MAIN_ECP_FAULT_CODE_06, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FTMTLCS_, CurSenrPhaU_GND)},
    {J1939_FAULT_CFG_DEF(12, 523934), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC08,  50, MAIN_ECP_FAULT_CODE_06, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FTMTLCS_, CurSenrPhaU_VCC)},

    {J1939_FAULT_CFG_DEF( 6, 523935), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC09,  12, MAIN_ECP_FAULT_CODE_01, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(BSW_HW_, FPGA_OverUnderCurVI)},

    {J1939_FAULT_CFG_DEF(12, 523935), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC10,  61, MAIN_ECP_FAULT_CODE_08, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FTMTLCS_, CurSenrPhaV_GND)},
    {J1939_FAULT_CFG_DEF(12, 523935), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC10,  62, MAIN_ECP_FAULT_CODE_08, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FTMTLCS_, CurSenrPhaV_VCC)},

    {J1939_FAULT_CFG_DEF( 6, 523936), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC11,  13, MAIN_ECP_FAULT_CODE_01, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(BSW_HW_, FPGA_OverUnderCurWI)},

    {J1939_FAULT_CFG_DEF(12, 523936), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC12,  63, MAIN_ECP_FAULT_CODE_08, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FTMTLCS_, CurSenrPhaW_GND)},
    {J1939_FAULT_CFG_DEF(12, 523936), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC12,  64, MAIN_ECP_FAULT_CODE_08, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FTMTLCS_, CurSenrPhaW_VCC)},

    {J1939_FAULT_CFG_DEF(12, 523937), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC13,  48, MAIN_ECP_FAULT_CODE_06, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FTMTLCS_, CurrentSumError)},

    {J1939_FAULT_CFG_DEF(12, 523938), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC14,  43, MAIN_ECP_FAULT_CODE_05, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FTCMSCS_, SpdOvershoot)},  //3
    {J1939_FAULT_CFG_DEF(12, 523938), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC14,  60, MAIN_ECP_FAULT_CODE_07, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(SDMTMEP_, UnderSpeed)},  //4
    {J1939_FAULT_CFG_DEF(12, 523938), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC14,  58, MAIN_ECP_FAULT_CODE_07, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(SDMTMEP_, OverSpeed)},

    {J1939_FAULT_CFG_DEF(13, 523939), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC15,  42, MAIN_ECP_FAULT_CODE_05, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FTASOSP_, MotorSpdDeratingAct)},
 
    {J1939_FAULT_CFG_DEF(14, 523940), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC16,  15, MAIN_ECP_FAULT_CODE_01, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(BSW_HW_, OCDataNotRational)},//4
    {J1939_FAULT_CFG_DEF(14, 523940), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC16,  33, MAIN_ECP_FAULT_CODE_04, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FSMTRDG_, ExcGeneration)},  //3
    {J1939_FAULT_CFG_DEF(14, 523940), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC16,  34, MAIN_ECP_FAULT_CODE_04, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FSMTRDG_, SinCosHLGnd)},  //4
    {J1939_FAULT_CFG_DEF(14, 523940), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC16,  35, MAIN_ECP_FAULT_CODE_04, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FSMTRDG_, SinCosHLOpen)},  //4
    {J1939_FAULT_CFG_DEF(14, 523940), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC16,  36, MAIN_ECP_FAULT_CODE_04, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FSMTRDG_, SinCosHLVcc)},  //4
    {J1939_FAULT_CFG_DEF(14, 523940), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC16,  56, MAIN_ECP_FAULT_CODE_07, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(SDMTMEP_, CosGnd)},  //4
    {J1939_FAULT_CFG_DEF(14, 523940), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC16,  57, MAIN_ECP_FAULT_CODE_07, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(SDMTMEP_, CosVcc)},  //4
    {J1939_FAULT_CFG_DEF(14, 523940), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC16,  65, MAIN_ECP_FAULT_CODE_07, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(SDMTMEP_, SinGnd)},  //4
    {J1939_FAULT_CFG_DEF(14, 523940), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC16,  66, MAIN_ECP_FAULT_CODE_07, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(SDMTMEP_, SinVcc)},  //4
    {J1939_FAULT_CFG_DEF(14, 523940), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC16,  59, MAIN_ECP_FAULT_CODE_07, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(SDMTMEP_, ResSquaSumErrByFT)},  //4

    {J1939_FAULT_CFG_DEF(15, 523941), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC17,  31, MAIN_ECP_FAULT_CODE_03, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FSMTMTA_Temp, WindingHead1Gnd)},
    {J1939_FAULT_CFG_DEF(15, 523941), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC17,  32, MAIN_ECP_FAULT_CODE_04, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FSMTMTA_Temp, WindingHead1Vcc)},

    {J1939_FAULT_CFG_DEF(16, 523942), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC18,  41, MAIN_ECP_FAULT_CODE_05, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FTASMTP_, Wndg1DeratingAct)},  //1

    {J1939_FAULT_CFG_DEF( 0, 523942), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC19,  30, MAIN_ECP_FAULT_CODE_03, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FSMTMTA_Over, TempWdgHead1)},  //3

    {J1939_FAULT_CFG_DEF(12, 523943), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC20,  37, MAIN_ECP_FAULT_CODE_04, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FSSMACS_, AkdFailFlag)},

    {J1939_FAULT_CFG_DEF( 3, 523944), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC21,  20, MAIN_ECP_FAULT_CODE_02, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FSEVBHV_, VoltageVcc)},  //4
    {J1939_FAULT_CFG_DEF( 3, 523944), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC21,   5, MAIN_ECP_FAULT_CODE_00, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(BSW_HW2_, FPGA_OverVoltVBat)},
    {J1939_FAULT_CFG_DEF( 3, 523944), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC21,  17, MAIN_ECP_FAULT_CODE_02, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FSEVBHV_, OverVoltage)},

    {J1939_FAULT_CFG_DEF( 4, 523948), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC22,  38, MAIN_ECP_FAULT_CODE_04, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FTASBDS_, BattVoltDeratingAct)},  //1
    
    {J1939_FAULT_CFG_DEF( 4, 523944), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC22,  19, MAIN_ECP_FAULT_CODE_02, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(FSEVBHV_, VoltageGnd)},  //4
    {J1939_FAULT_CFG_DEF( 4, 523944), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC22,  18, MAIN_ECP_FAULT_CODE_02, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FSEVBHV_, UnderVoltage)},

    {J1939_FAULT_CFG_DEF(12, 523945), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC23,  45, MAIN_ECP_FAULT_CODE_05, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FTCMTCS_, VoltageMarginLow)},

    {J1939_FAULT_CFG_DEF(12, 523947), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC24,  47, MAIN_ECP_FAULT_CODE_05, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(SDMTMEP_, SpeedWarn)},

    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,   6, MAIN_ECP_FAULT_CODE_00, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(BSW_HW2_, SelfTst_InterLock)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  25, MAIN_ECP_FAULT_CODE_03, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FSEVETA_, OverTempNTC1CmdBoard)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  26, MAIN_ECP_FAULT_CODE_03, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(FSEVETA_Over, TempDrvLeft)},
};

const uint16 MAIN_ku16FaultNum = sizeof(MAIN_katFaultCfgSet)/sizeof(MAIN_ECPFaultCfg);

#if (MAIN_ECP_INVALID_EVENT_NO > 0)
static const uint16 MAIN_kau16InvalidEventIdList[] = {
    DemConf_DemEventParameter_DemEventParameter_ECU1_DTC24,
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
#if (_MAIN_MCU1_MODULE_SEND_ENABLE_ == 1U)
    ComHal_vidSendMessage(MAIN_J1939_TX_PDUID_J1939_DM1, &MAIN_J1939_au8DM1TxBuf[0]);
#endif
}

static void MAIN_J1939_vidSendBAM(void)
{  
#if (_MAIN_MCU1_MODULE_SEND_ENABLE_ == 1U)
    ComHal_vidSendMessage(MAIN_J1939_TX_PDUID_J1939_BAM, &MAIN_J1939_au8BAMTxBuf[0]);
#endif
}

static void MAIN_J1939_vidSendTPDT(void)
{   
#if (_MAIN_MCU1_MODULE_SEND_ENABLE_ == 1U)
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
static void MAIN_ECP_vidBSW_HW_FPGA_IGBT_HCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidBSW_HW_FPGA_IGBT_LCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidBSW_HW_FPGA_OverUnderCurUICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidBSW_HW_FPGA_OverUnderCurVICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidBSW_HW_FPGA_OverUnderCurWICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidBSW_HW_OCDataNotRationalCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidBSW_HW2_FPGA_OverVoltVBatCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidBSW_HW2_SelfTst_InterLockCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidBSW_COM_BusOff_CAN1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidBSW_COM_TimoutRxVCUCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv3 = TRUE;
}

static void MAIN_ECP_vidBSW_COM_RcErrRxVCUCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidFSEVBLV_OverVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidFSEVBLV_UnderVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidFSEVBLV_P5VRefADCFltCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidFSEVBHV_OverVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFSEVBHV_UnderVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFSEVBHV_VoltageVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFSEVBHV_VoltageGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFSEVETA_IgbtTempRationalCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidFSEVETA_OverTempNTC1CmdBoardCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidFSEVETA_OverTempDrvLeftCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidFSEVETA_OverTempIgbtLeftCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFSMTMTA_OverTempWdgHead1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFSSMACS_AkdFailFlagCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv1 = TRUE;
}

static void MAIN_ECP_vidFSMTRDG_ExcGenerationCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFSMTRDG_SinCosHLVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFSMTRDG_SinCosHLGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFSMTRDG_SinCosHLOpenCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFSEVETA_TempIgbtLeftGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidFSEVETA_TempIgbtLeftVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidFSMTMTA_TempWindingHead1GndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidFSMTMTA_TempWindingHead1VccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidFTEVEIT_EstOverTempCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFTMTLCS_CurrentSumErrorCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFTMTLCS_CurSenrPhaU_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFTMTLCS_CurSenrPhaU_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFTMTLCS_CurSenrPhaV_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFTMTLCS_CurSenrPhaV_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFTMTLCS_CurSenrPhaW_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFTMTLCS_CurSenrPhaW_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidSDMTMEP_CosGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidSDMTMEP_CosVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidSDMTMEP_SinGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidSDMTMEP_SinVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidSDMTMEP_OverSpeedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidSDMTMEP_UnderSpeedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidSDMTMEP_ResSquaSumErrByFTCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidSDMTMEP_SpeedWarnCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFTCMTCS_VoltageMarginLowCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidFTASBDS_BattVoltDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidFTASETP_EstPmDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidFTASETP_PmDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidFTASMTP_Wndg1DeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidFTASMTP_WndgRatedDeratingSendSPNActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidFTASMTP_WndgFaultLevelUpgradeActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidFTASOSP_MotorSpdDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidFTCMSCS_SpdOvershootCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}