/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Dem.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "rba_BswSrv.h"
#include "MAIN_ECPCfg_MCU2.h"
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
#define MAIN_ECP_ECU_NAME       MCU2

#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
#define MAIN_J1939_FILL_BYTE               (0xFFu)

#define MAIN_J1939_SPN_LOG_STATE_BUF_SIZE  ((eMAIN_J1939_SPN_MAX_NO / J1939_STATE_VAR_BIT_SIZE) + 1)
#define MAIN_J1939_SPN_STATE_BUF_SIZE      (J1939_BAM_FAULT_MAX_NO * J1939_FAULT_CODE_SIZE)

#define MAIN_J1939_TX_PDUID_J1939_DM1     MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eCOMHAL_TX_PDUID_J1939_DM1)  //eCOMHAL_TX_PDUID_J1939_DM1_MCU2
#define MAIN_J1939_TX_PDUID_J1939_BAM     MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eCOMHAL_TX_PDUID_J1939_BAM)  //eCOMHAL_TX_PDUID_J1939_BAM_MCU2
#define MAIN_J1939_TX_PDUID_J1939_TPDT    MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eCOMHAL_TX_PDUID_J1939_TPDT) //eCOMHAL_TX_PDUID_J1939_TPDT_MCU2

#endif /* (_MAIN_J1939_MODULE_ENABLE_ == 1) */

#define MAIN_ECP_INVALID_EVENT_NO         (1u)

#define MAIN_REC_BUF_IDX                 MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eMAIN_REC_BUF_IDX)               //eMAIN_REC_BUF_IDX_MCU2
#define MAIN_ku16FaultNum                MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_ku16FaultNum)               //MAIN_ku16FaultNum_MCU2
#define MAIN_katFaultCfgSet              MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_katFaultCfgSet)             //MAIN_katFaultCfgSet_MCU2
#define MAIN_ktJ1939EcuCfg               MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_ktJ1939EcuCfg)              //MAIN_ktJ1939EcuCfg_MCU2
#define MAIN_ECP_vidInvalidEventHandler  MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_ECP_vidInvalidEventHandler) //MAIN_ECP_vidInvalidEventHandler_MCU2

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

static void MAIN_ECP_vidGBSW_COM_BusOff_CAN1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGBSW_COM_TimoutRxVCUCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGBSW_HW2_FPGA_OverVoltVBatCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGBSW_HW2_SelfTst_InterLockCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGBSW_HW_FPGA_IGBT_HCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGBSW_HW_FPGA_IGBT_LCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGBSW_HW_FPGA_OverUnderCurUICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGBSW_HW_FPGA_OverUnderCurVICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGBSW_HW_FPGA_OverUnderCurWICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGBSW_HW_OCDataNotRationalCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVBHV_OverVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVBHV_UnderVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVBHV_VoltageGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVBHV_VoltageVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVBLV_OverVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVBLV_P5VRefADCFltCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVBLV_UnderVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVETA_IgbtTempRationalCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVETA_OverTempNTC1CmdBoardCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVETA_OverTempDrvLeftCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVETA_OverTempIgbtLeftCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVETA_TempIgbtLeftGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSEVETA_TempIgbtLeftVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSMTMTA_OverTempWdgHead1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSMTMTA_TempWindingHead1GndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSMTMTA_TempWindingHead1VccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSMTRDG_ExcGenerationCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSMTRDG_SinCosHLGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSMTRDG_SinCosHLOpenCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSMTRDG_SinCosHLVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFSSMACS_AkdFailFlagCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTASBDS_BattVoltDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTASETP_EstPmDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTASETP_PmDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTASMTP_Wndg1DeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTASOSP_MotorSpdDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTCMSCS_SpdOvershootCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTCMTCS_VoltageMarginLowCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTEVEIT_EstOverTempCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTMTLCS_CurrentSumErrorCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTMTLCS_CurSenrPhaU_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTMTLCS_CurSenrPhaU_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTMTLCS_CurSenrPhaV_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTMTLCS_CurSenrPhaV_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTMTLCS_CurSenrPhaW_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGFTMTLCS_CurSenrPhaW_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGSDMTMEP_CosGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGSDMTMEP_CosVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGSDMTMEP_SinGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGSDMTMEP_SinVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGSDMTMEP_OverSpeedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGSDMTMEP_ResSquaSumErrByFTCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGSDMTMEP_UnderSpeedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidGSDMTMEP_SpeedWarnCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);

/*******************************************************************************
 ****  Private Constant Declarations
 ******************************************************************************/
const MAIN_ECPFaultCfg MAIN_katFaultCfgSet[] = {
    /* u8RollErrCode = , .u8InvtFaultByteIdx = , .u8InvtFaultBitMask = , .u16FaultLogged = , .vidFaultUserCallout = */
    {J1939_FAULT_CFG_DEF(12, 523956), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC00,   9, MAIN_ECP_FAULT_CODE_01, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GBSW_HW_, FPGA_IGBT_H)},
    {J1939_FAULT_CFG_DEF(12, 523956), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC00,  10, MAIN_ECP_FAULT_CODE_01, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GBSW_HW_, FPGA_IGBT_L)},

    {J1939_FAULT_CFG_DEF(16, 523957), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC01,  39, MAIN_ECP_FAULT_CODE_04, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFTASETP_, EstPmDeratingAct)},  //1
    {J1939_FAULT_CFG_DEF(16, 523957), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC01,  40, MAIN_ECP_FAULT_CODE_05, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFTASETP_, PmDeratingAct)},  //1
    {J1939_FAULT_CFG_DEF(16, 523957), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC01,  24, MAIN_ECP_FAULT_CODE_03, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSEVETA_, IgbtTempRational)},  //2

    {J1939_FAULT_CFG_DEF( 0, 523957), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC02,  46, MAIN_ECP_FAULT_CODE_05, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFTEVEIT_, EstOverTemp)},  //3
    {J1939_FAULT_CFG_DEF( 0, 523957), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC02,  27, MAIN_ECP_FAULT_CODE_03, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSEVETA_Over, TempIgbtLeft)},  //3

    {J1939_FAULT_CFG_DEF(12, 523958), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC03,  28, MAIN_ECP_FAULT_CODE_03, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFSEVETA_Temp, IgbtLeftGnd)},
    {J1939_FAULT_CFG_DEF(12, 523958), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC03,  29, MAIN_ECP_FAULT_CODE_03, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSEVETA_Temp, IgbtLeftVcc)},

    {J1939_FAULT_CFG_DEF( 6, 523959), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC04,  11, MAIN_ECP_FAULT_CODE_01, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GBSW_HW_, FPGA_OverUnderCurUI)},

    {J1939_FAULT_CFG_DEF(12, 523959), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC05,  49, MAIN_ECP_FAULT_CODE_06, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFTMTLCS_, CurSenrPhaU_GND)},
    {J1939_FAULT_CFG_DEF(12, 523959), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC05,  50, MAIN_ECP_FAULT_CODE_06, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFTMTLCS_, CurSenrPhaU_VCC)},

    {J1939_FAULT_CFG_DEF( 6, 523960), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC06,  12, MAIN_ECP_FAULT_CODE_01, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GBSW_HW_, FPGA_OverUnderCurVI)},

    {J1939_FAULT_CFG_DEF(12, 523960), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC07,  61, MAIN_ECP_FAULT_CODE_08, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFTMTLCS_, CurSenrPhaV_GND)},
    {J1939_FAULT_CFG_DEF(12, 523960), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC07,  62, MAIN_ECP_FAULT_CODE_08, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFTMTLCS_, CurSenrPhaV_VCC)},

    {J1939_FAULT_CFG_DEF( 6, 523961), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC08,  13, MAIN_ECP_FAULT_CODE_01, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GBSW_HW_, FPGA_OverUnderCurWI)},

    {J1939_FAULT_CFG_DEF(12, 523961), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC09,  63, MAIN_ECP_FAULT_CODE_08, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFTMTLCS_, CurSenrPhaW_GND)},
    {J1939_FAULT_CFG_DEF(12, 523961), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC09,  64, MAIN_ECP_FAULT_CODE_08, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFTMTLCS_, CurSenrPhaW_VCC)},

    {J1939_FAULT_CFG_DEF(12, 523962), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC10,  48, MAIN_ECP_FAULT_CODE_06, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFTMTLCS_, CurrentSumError)},

    {J1939_FAULT_CFG_DEF(12, 523963), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC11,  43, MAIN_ECP_FAULT_CODE_05, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFTCMSCS_, SpdOvershoot)},  //3
    {J1939_FAULT_CFG_DEF(12, 523963), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC11,  60, MAIN_ECP_FAULT_CODE_07, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GSDMTMEP_, UnderSpeed)},  //4
    {J1939_FAULT_CFG_DEF(12, 523963), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC11,  58, MAIN_ECP_FAULT_CODE_07, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GSDMTMEP_, OverSpeed)},

    {J1939_FAULT_CFG_DEF(13, 523964), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC12,  42, MAIN_ECP_FAULT_CODE_05, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFTASOSP_, MotorSpdDeratingAct)},
 
    {J1939_FAULT_CFG_DEF(14, 523965), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC13,  15, MAIN_ECP_FAULT_CODE_01, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GBSW_HW_, OCDataNotRational)},//4
    {J1939_FAULT_CFG_DEF(14, 523965), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC13,  33, MAIN_ECP_FAULT_CODE_04, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFSMTRDG_, ExcGeneration)},  //3
    {J1939_FAULT_CFG_DEF(14, 523965), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC13,  34, MAIN_ECP_FAULT_CODE_04, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFSMTRDG_, SinCosHLGnd)},  //4
    {J1939_FAULT_CFG_DEF(14, 523965), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC13,  35, MAIN_ECP_FAULT_CODE_04, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFSMTRDG_, SinCosHLOpen)},  //4
    {J1939_FAULT_CFG_DEF(14, 523965), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC13,  36, MAIN_ECP_FAULT_CODE_04, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFSMTRDG_, SinCosHLVcc)},  //4
    {J1939_FAULT_CFG_DEF(14, 523965), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC13,  56, MAIN_ECP_FAULT_CODE_07, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GSDMTMEP_, CosGnd)},  //4
    {J1939_FAULT_CFG_DEF(14, 523965), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC13,  57, MAIN_ECP_FAULT_CODE_07, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GSDMTMEP_, CosVcc)},  //4
    {J1939_FAULT_CFG_DEF(14, 523965), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC13,  65, MAIN_ECP_FAULT_CODE_07, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GSDMTMEP_, SinGnd)},  //4
    {J1939_FAULT_CFG_DEF(14, 523965), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC13,  66, MAIN_ECP_FAULT_CODE_07, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GSDMTMEP_, SinVcc)},  //4
    {J1939_FAULT_CFG_DEF(14, 523965), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC13,  59, MAIN_ECP_FAULT_CODE_07, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GSDMTMEP_, ResSquaSumErrByFT)},  //4

    {J1939_FAULT_CFG_DEF(15, 523966), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC14,  31, MAIN_ECP_FAULT_CODE_03, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFSMTMTA_Temp, WindingHead1Gnd)},
    {J1939_FAULT_CFG_DEF(15, 523966), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC14,  32, MAIN_ECP_FAULT_CODE_04, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSMTMTA_Temp, WindingHead1Vcc)},

    {J1939_FAULT_CFG_DEF(16, 523967), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC15,  41, MAIN_ECP_FAULT_CODE_05, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFTASMTP_, Wndg1DeratingAct)},  //1

    {J1939_FAULT_CFG_DEF( 0, 523967), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC16,  30, MAIN_ECP_FAULT_CODE_03, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSMTMTA_Over, TempWdgHead1)},  //3

    {J1939_FAULT_CFG_DEF(12, 523968), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC17,  37, MAIN_ECP_FAULT_CODE_04, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSSMACS_, AkdFailFlag)},

    {J1939_FAULT_CFG_DEF( 3, 523969), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC18,  20, MAIN_ECP_FAULT_CODE_02, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFSEVBHV_, VoltageVcc)},  //4
    {J1939_FAULT_CFG_DEF( 3, 523969), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC18,   5, MAIN_ECP_FAULT_CODE_00, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GBSW_HW2_, FPGA_OverVoltVBat)},
    {J1939_FAULT_CFG_DEF( 3, 523969), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC18,  17, MAIN_ECP_FAULT_CODE_02, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSEVBHV_, OverVoltage)},

    {J1939_FAULT_CFG_DEF( 4, 523973), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC19,  38, MAIN_ECP_FAULT_CODE_04, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFTASBDS_, BattVoltDeratingAct)},  //1
    
    {J1939_FAULT_CFG_DEF( 4, 523969), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC19,  19, MAIN_ECP_FAULT_CODE_02, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(GFSEVBHV_, VoltageGnd)},  //4
    {J1939_FAULT_CFG_DEF( 4, 523969), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC19,  18, MAIN_ECP_FAULT_CODE_02, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSEVBHV_, UnderVoltage)},

    {J1939_FAULT_CFG_DEF(12, 523970), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC20,  45, MAIN_ECP_FAULT_CODE_05, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFTCMTCS_, VoltageMarginLow)},

    {J1939_FAULT_CFG_DEF(12, 523972), DemConf_DemEventParameter_DemEventParameter_ECU2_DTC20,  47, MAIN_ECP_FAULT_CODE_05, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GSDMTMEP_, SpeedWarn)},
    
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,   1, MAIN_ECP_FAULT_CODE_00, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GBSW_COM_, BusOff_CAN1)},    // 3
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,   4, MAIN_ECP_FAULT_CODE_00, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GBSW_COM_, TimoutRxVCU)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  21, MAIN_ECP_FAULT_CODE_02, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSEVBLV_, OverVoltage)},  //3
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  22, MAIN_ECP_FAULT_CODE_02, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSEVBLV_, P5VRefADCFlt)},  //3
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  23, MAIN_ECP_FAULT_CODE_02, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSEVBLV_, UnderVoltage)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,   6, MAIN_ECP_FAULT_CODE_00, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GBSW_HW2_, SelfTst_InterLock)},  //3
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  25, MAIN_ECP_FAULT_CODE_03, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSEVETA_, OverTempNTC1CmdBoard)},  //2
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  26, MAIN_ECP_FAULT_CODE_03, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(GFSEVETA_Over, TempDrvLeft)},  //3
};

const uint16 MAIN_ku16FaultNum = sizeof(MAIN_katFaultCfgSet)/sizeof(MAIN_ECPFaultCfg);

#if (MAIN_ECP_INVALID_EVENT_NO > 0)
static const uint16 MAIN_kau16InvalidEventIdList[] = {
    DemConf_DemEventParameter_DemEventParameter_ECU2_DTC21,
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
#if (_MAIN_MCU2_MODULE_SEND_ENABLE_ == 1U)
    ComHal_vidSendMessage(MAIN_J1939_TX_PDUID_J1939_DM1, &MAIN_J1939_au8DM1TxBuf[0]);
#endif
}

static void MAIN_J1939_vidSendBAM(void)
{
#if (_MAIN_MCU2_MODULE_SEND_ENABLE_ == 1U)
    ComHal_vidSendMessage(MAIN_J1939_TX_PDUID_J1939_BAM, &MAIN_J1939_au8BAMTxBuf[0]);
#endif
}

static void MAIN_J1939_vidSendTPDT(void)
{
#if (_MAIN_MCU2_MODULE_SEND_ENABLE_ == 1U)
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
static void MAIN_ECP_vidGBSW_HW_FPGA_IGBT_HCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGBSW_HW_FPGA_IGBT_LCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGBSW_HW_FPGA_OverUnderCurUICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGBSW_HW_FPGA_OverUnderCurVICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGBSW_HW_FPGA_OverUnderCurWICallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGBSW_HW_OCDataNotRationalCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGBSW_HW2_FPGA_OverVoltVBatCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGBSW_HW2_SelfTst_InterLockCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidGBSW_COM_BusOff_CAN1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidGBSW_COM_TimoutRxVCUCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidGFSEVBLV_OverVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidGFSEVBLV_UnderVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidGFSEVBLV_P5VRefADCFltCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidGFSEVBHV_OverVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFSEVBHV_UnderVoltageCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFSEVBHV_VoltageVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFSEVBHV_VoltageGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFSEVETA_IgbtTempRationalCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidGFSEVETA_OverTempNTC1CmdBoardCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidGFSEVETA_OverTempDrvLeftCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidGFSEVETA_OverTempIgbtLeftCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFSMTMTA_OverTempWdgHead1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFSSMACS_AkdFailFlagCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv1 = TRUE;
}

static void MAIN_ECP_vidGFSMTRDG_ExcGenerationCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFSMTRDG_SinCosHLVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFSMTRDG_SinCosHLGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFSMTRDG_SinCosHLOpenCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFSEVETA_TempIgbtLeftGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFSEVETA_TempIgbtLeftVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFSMTMTA_TempWindingHead1GndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidGFSMTMTA_TempWindingHead1VccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidGFTEVEIT_EstOverTempCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFTMTLCS_CurrentSumErrorCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFTMTLCS_CurSenrPhaU_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFTMTLCS_CurSenrPhaU_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFTMTLCS_CurSenrPhaV_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFTMTLCS_CurSenrPhaV_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFTMTLCS_CurSenrPhaW_GNDCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFTMTLCS_CurSenrPhaW_VCCCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGSDMTMEP_CosGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGSDMTMEP_CosVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGSDMTMEP_SinGndCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGSDMTMEP_SinVccCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGSDMTMEP_OverSpeedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGSDMTMEP_UnderSpeedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGSDMTMEP_ResSquaSumErrByFTCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGSDMTMEP_SpeedWarnCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidGFTCMTCS_VoltageMarginLowCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}

static void MAIN_ECP_vidGFTASBDS_BattVoltDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidGFTASETP_EstPmDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidGFTASETP_PmDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidGFTASMTP_Wndg1DeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidGFTASMTP_WndgRatedDeratingSendSPNActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidGFTASMTP_WndgFaultLevelUpgradeActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidGFTASOSP_MotorSpdDeratingActCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv2 = TRUE;
}

static void MAIN_ECP_vidGFTCMSCS_SpdOvershootCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv4 = TRUE;
}