/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Dem.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "rba_BswSrv.h"
#include "MAIN_ECPCfg_PDU.h"
#include "MAIN_RollErrCode.h"
#include "MAIN_Cfg.h"

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
#define MAIN_ECP_ECU_NAME       PDU

#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
#define MAIN_J1939_FILL_BYTE               (0xFFu)

#define MAIN_J1939_SPN_LOG_STATE_BUF_SIZE  ((eMAIN_J1939_SPN_MAX_NO / J1939_STATE_VAR_BIT_SIZE) + 1)
#define MAIN_J1939_SPN_STATE_BUF_SIZE      (J1939_BAM_FAULT_MAX_NO * J1939_FAULT_CODE_SIZE)

#define MAIN_J1939_TX_PDUID_J1939_DM1     MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eCOMHAL_TX_PDUID_J1939_DM1)  //eCOMHAL_TX_PDUID_J1939_DM1_PDU
#define MAIN_J1939_TX_PDUID_J1939_BAM     MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eCOMHAL_TX_PDUID_J1939_BAM)  //eCOMHAL_TX_PDUID_J1939_BAM_PDU
#define MAIN_J1939_TX_PDUID_J1939_TPDT    MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eCOMHAL_TX_PDUID_J1939_TPDT) //eCOMHAL_TX_PDUID_J1939_TPDT_PDU

#endif /* (_MAIN_J1939_MODULE_ENABLE_ == 1) */

#define MAIN_ECP_INVALID_EVENT_NO         (1u)

#define MAIN_REC_BUF_IDX                 MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, eMAIN_REC_BUF_IDX)               //eMAIN_REC_BUF_IDX_PDU
#define MAIN_ku16FaultNum                MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_ku16FaultNum)               //MAIN_ku16FaultNum_PDU
#define MAIN_katFaultCfgSet              MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_katFaultCfgSet)             //MAIN_katFaultCfgSet_PDU
#define MAIN_ktJ1939EcuCfg               MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_ktJ1939EcuCfg)              //MAIN_ktJ1939EcuCfg_PDU
#define MAIN_ECP_vidInvalidEventHandler  MAIN_ECP_DEF(MAIN_ECP_ECU_NAME, MAIN_ECP_vidInvalidEventHandler) //MAIN_ECP_vidInvalidEventHandler_PDU

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

static void MAIN_ECP_vidRCEVETA_BatNegCopShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_BatPosCopShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_MainPosCopShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_OverTempBatNegCopCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_OverTempBatPosCopCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_OverTempMainPosCopCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_OverTempReserveCopCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_OverTempSmlLoad1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_OverTempSmlLoad2Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_OverTempSmlLoad3Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_OverTempSmlLoad4Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_OverTempSmlLoad5Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_OverTempSmlLoad6Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_ReserveCopShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_SmlLoad1ShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_SmlLoad2ShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_SmlLoad3ShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_SmlLoad4ShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_SmlLoad5ShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVETA_SmlLoad6ShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVLCS_OverCurSmlLoad1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVLCS_OverCurSmlLoad2Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVLCS_OverCurSmlLoad3Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVLCS_OverCurSmlLoad4Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVLCS_OverCurSmlLoad5Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVLCS_OverCurSmlLoad6Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVLCS_SmlLoad1CurShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVLCS_SmlLoad2CurShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVLCS_SmlLoad3CurShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVLCS_SmlLoad4CurShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVLCS_SmlLoad5CurShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCEVLCS_SmlLoad6CurShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_BatHeatCmdOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_EACCmdOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_MainPosCmdOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_SCUCmdOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_BatHeatDrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_BatHeatPreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_BatHeatPreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_BatHeatWeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_EACDrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_EACPreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_EACPreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_EACWeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg1DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg1PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg1PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg1WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg2DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg2PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg2PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg2WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg3DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg3PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg3PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg3WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg4DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg4PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg4PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgNeg4WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos1DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos1PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos1PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos1WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos2DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos2PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos2PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos2WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos3DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos3PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos3PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos3WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos4DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos4PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos4PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_FastChgPos4WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_MainPosDrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_MainPosPreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_MainPosPreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_MainPosWeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_PreMainDrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_PreMainPreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_PreMainPreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_PreMainWeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_SCUDrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_SCUPreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_SCUPreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
static void MAIN_ECP_vidRCSMACS_SCUWeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);

/*******************************************************************************
 ****  Private Constant Declarations
 ******************************************************************************/
const MAIN_ECPFaultCfg MAIN_katFaultCfgSet[] = {
    /* u8RollErrCode = , .u8InvtFaultByteIdx = , .u8InvtFaultBitMask = , .u16FaultLogged = , .vidFaultUserCallout = */
    {J1939_FAULT_CFG_DEF(12,523900), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC00,  1,  MAIN_ECP_FAULT_CODE_00, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_PreMain, DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523900), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC00,  2,  MAIN_ECP_FAULT_CODE_00, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_PreMain, PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523900), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC00,  3,  MAIN_ECP_FAULT_CODE_00, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_PreMain, PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523900), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC00,  4,  MAIN_ECP_FAULT_CODE_00, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_PreMain, Weled)},

    {J1939_FAULT_CFG_DEF(12,523901), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC01,  9,  MAIN_ECP_FAULT_CODE_01, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_MainPos, DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523901), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC01,  10, MAIN_ECP_FAULT_CODE_01, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_MainPos, PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523901), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC01,  11, MAIN_ECP_FAULT_CODE_01, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_MainPos, PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523901), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC01,  12, MAIN_ECP_FAULT_CODE_01, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_MainPos, Weled)},
    {J1939_FAULT_CFG_DEF(12,523901), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC01,  5,  MAIN_ECP_FAULT_CODE_01, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_, MainPosCmdOverTime)},

    {J1939_FAULT_CFG_DEF(12,523902), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC02,  17, MAIN_ECP_FAULT_CODE_02, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 1DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523902), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC02,  18, MAIN_ECP_FAULT_CODE_02, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 1PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523902), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC02,  19, MAIN_ECP_FAULT_CODE_02, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 1PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523902), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC02,  20, MAIN_ECP_FAULT_CODE_02, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 1Weled)},

    {J1939_FAULT_CFG_DEF(12,523903), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC03,  25, MAIN_ECP_FAULT_CODE_03, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 1DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523903), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC03,  26, MAIN_ECP_FAULT_CODE_03, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 1PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523903), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC03,  27, MAIN_ECP_FAULT_CODE_03, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 1PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523903), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC03,  28, MAIN_ECP_FAULT_CODE_03, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 1Weled)},

    {J1939_FAULT_CFG_DEF(12,523904), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC04,  33, MAIN_ECP_FAULT_CODE_04, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 2DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523904), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC04,  34, MAIN_ECP_FAULT_CODE_04, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 2PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523904), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC04,  35, MAIN_ECP_FAULT_CODE_04, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 2PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523904), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC04,  36, MAIN_ECP_FAULT_CODE_04, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 2Weled)},

    {J1939_FAULT_CFG_DEF(12,523905), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC05,  41, MAIN_ECP_FAULT_CODE_05, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 2DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523905), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC05,  42, MAIN_ECP_FAULT_CODE_05, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 2PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523905), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC05,  43, MAIN_ECP_FAULT_CODE_05, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 2PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523905), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC05,  44, MAIN_ECP_FAULT_CODE_05, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 2Weled)},
  
    {J1939_FAULT_CFG_DEF(12,523906), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC06,  49, MAIN_ECP_FAULT_CODE_06, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_EAC, DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523906), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC06,  50, MAIN_ECP_FAULT_CODE_06, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_EAC, PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523906), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC06,  51, MAIN_ECP_FAULT_CODE_06, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_EAC, PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523906), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC06,  52, MAIN_ECP_FAULT_CODE_06, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_EAC, Weled)},
    {J1939_FAULT_CFG_DEF(12,523906), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC06,  53, MAIN_ECP_FAULT_CODE_06, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_, EACCmdOverTime)},

    {J1939_FAULT_CFG_DEF(12,523907), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC07,  57, MAIN_ECP_FAULT_CODE_07, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_BatHeat, DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523907), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC07,  58, MAIN_ECP_FAULT_CODE_07, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_BatHeat, PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523907), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC07,  59, MAIN_ECP_FAULT_CODE_07, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_BatHeat, PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523907), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC07,  60, MAIN_ECP_FAULT_CODE_07, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_BatHeat, Weled)},
    {J1939_FAULT_CFG_DEF(12,523907), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC10,  93, MAIN_ECP_FAULT_CODE_07, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_, BatHeatCmdOverTime)},

    {J1939_FAULT_CFG_DEF(12,523908), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC08,  65, MAIN_ECP_FAULT_CODE_08, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 3DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523908), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC08,  66, MAIN_ECP_FAULT_CODE_08, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 3PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523908), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC08,  67, MAIN_ECP_FAULT_CODE_08, 0x03, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 3PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523908), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC08,  68, MAIN_ECP_FAULT_CODE_08, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 3Weled)},

    {J1939_FAULT_CFG_DEF(12,523909), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC09,  73, MAIN_ECP_FAULT_CODE_09, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 3DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523909), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC09,  74, MAIN_ECP_FAULT_CODE_09, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 3PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523909), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC09,  75, MAIN_ECP_FAULT_CODE_09, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 3PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523909), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC09,  76, MAIN_ECP_FAULT_CODE_09, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 3Weled)},
 
    {J1939_FAULT_CFG_DEF(12,523910), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC10,  81, MAIN_ECP_FAULT_CODE_10, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 4DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523910), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC10,  82, MAIN_ECP_FAULT_CODE_10, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 4PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523910), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC10,  83, MAIN_ECP_FAULT_CODE_10, 0x03, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 4PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523910), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC10,  84, MAIN_ECP_FAULT_CODE_10, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgPos, 4Weled)},

    {J1939_FAULT_CFG_DEF(12,523911), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC11,  89, MAIN_ECP_FAULT_CODE_11, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 4DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523911), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC11,  90, MAIN_ECP_FAULT_CODE_11, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 4PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523911), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC11,  91, MAIN_ECP_FAULT_CODE_11, 0x03, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 4PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523911), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC11,  92, MAIN_ECP_FAULT_CODE_11, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_FastChgNeg, 4Weled)},

    {J1939_FAULT_CFG_DEF(12,523912), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC12,  97,  MAIN_ECP_FAULT_CODE_12, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_SCU, DrvErr)},
    {J1939_FAULT_CFG_DEF(12,523912), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC12,  98,  MAIN_ECP_FAULT_CODE_12, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_SCU, PreFailed)},
    {J1939_FAULT_CFG_DEF(12,523912), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC12,  99,  MAIN_ECP_FAULT_CODE_12, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_SCU, PreOverTime)},
    {J1939_FAULT_CFG_DEF(12,523912), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC12,  100, MAIN_ECP_FAULT_CODE_12, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCSMACS_SCU, Weled)},
    {J1939_FAULT_CFG_DEF(12,523912), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC12,  101, MAIN_ECP_FAULT_CODE_12, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCSMACS_, SCUCmdOverTime)},


    {J1939_FAULT_CFG_DEF(0,523914), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC14,  113, MAIN_ECP_FAULT_CODE_13, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_OverTemp, SmlLoad1)},
    {J1939_FAULT_CFG_DEF(0,523914), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC14,  114, MAIN_ECP_FAULT_CODE_13, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_, SmlLoad1Short)},
 
    {J1939_FAULT_CFG_DEF(6,523914), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC15,  115, MAIN_ECP_FAULT_CODE_13, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCEVLCS_, OverCurSmlLoad1)},
    {J1939_FAULT_CFG_DEF(6,523914), DemConf_DemEventParameter_DemEventParameter_ECU5_DTC15,  116, MAIN_ECP_FAULT_CODE_13, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCEVLCS_, SmlLoad1CurShort)},
    
    {J1939_FAULT_CFG_DEF(0,523915), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC16,  121, MAIN_ECP_FAULT_CODE_13, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_OverTemp, SmlLoad2)},
    {J1939_FAULT_CFG_DEF(0,523915), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC16,  122, MAIN_ECP_FAULT_CODE_13, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_, SmlLoad2Short)},
  
    {J1939_FAULT_CFG_DEF(6,523915), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC17,  123, MAIN_ECP_FAULT_CODE_13, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCEVLCS_, OverCurSmlLoad2)},
    {J1939_FAULT_CFG_DEF(6,523915), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC17,  124, MAIN_ECP_FAULT_CODE_13, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCEVLCS_, SmlLoad2CurShort)},

    {J1939_FAULT_CFG_DEF(0,523916), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC18,  129, MAIN_ECP_FAULT_CODE_14, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_OverTemp, SmlLoad3)},
    {J1939_FAULT_CFG_DEF(0,523916), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC18,  130, MAIN_ECP_FAULT_CODE_14, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_, SmlLoad3Short)},
   
    {J1939_FAULT_CFG_DEF(6,523916), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC19,  131, MAIN_ECP_FAULT_CODE_14, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCEVLCS_, OverCurSmlLoad3)},
    {J1939_FAULT_CFG_DEF(6,523916), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC19,  132, MAIN_ECP_FAULT_CODE_14, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCEVLCS_, SmlLoad3CurShort)},

    {J1939_FAULT_CFG_DEF(0,523917), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC20,  137, MAIN_ECP_FAULT_CODE_14, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_OverTemp, SmlLoad4)},
    {J1939_FAULT_CFG_DEF(0,523917), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC20,  138, MAIN_ECP_FAULT_CODE_14, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_, SmlLoad4Short)},
  
    {J1939_FAULT_CFG_DEF(6,523917), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC21,  139, MAIN_ECP_FAULT_CODE_14, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCEVLCS_, OverCurSmlLoad4)},
    {J1939_FAULT_CFG_DEF(6,523917), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC21,  140, MAIN_ECP_FAULT_CODE_14, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCEVLCS_, SmlLoad4CurShort)},

    {J1939_FAULT_CFG_DEF(0,523918), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC22,  145, MAIN_ECP_FAULT_CODE_15, 0x01, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_OverTemp, SmlLoad5)},
    {J1939_FAULT_CFG_DEF(0,523918), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC22,  146, MAIN_ECP_FAULT_CODE_15, 0x02, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_, SmlLoad5Short)},
  
    {J1939_FAULT_CFG_DEF(6,523918), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC23,  147, MAIN_ECP_FAULT_CODE_15, 0x04, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCEVLCS_, OverCurSmlLoad5)},
    {J1939_FAULT_CFG_DEF(6,523918), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC23,  148, MAIN_ECP_FAULT_CODE_15, 0x08, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCEVLCS_, SmlLoad5CurShort)},

    {J1939_FAULT_CFG_DEF(0,523919), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC24,  153, MAIN_ECP_FAULT_CODE_15, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_OverTemp, SmlLoad6)},
    {J1939_FAULT_CFG_DEF(0,523919), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC24,  154, MAIN_ECP_FAULT_CODE_15, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_, SmlLoad6Short)},
   
    {J1939_FAULT_CFG_DEF(6,523919), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC25,  155, MAIN_ECP_FAULT_CODE_15, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE, MAIN_ECP_FUNC_PTR_DEF(RCEVLCS_, OverCurSmlLoad6)},
    {J1939_FAULT_CFG_DEF(6,523919), DemConf_DemEventParameter_DemEventParameter_ECU1_DTC25,  156, MAIN_ECP_FAULT_CODE_15, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_OR, eMAIN_ECP_FAULT_CFG_TABLE_IS_END,      MAIN_ECP_FUNC_PTR_DEF(RCEVLCS_, SmlLoad6CurShort)},


    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  180, MAIN_ECP_FAULT_CODE_02, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_, BatNegCopShort)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  181, MAIN_ECP_FAULT_CODE_02, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_, BatPosCopShort)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  182, MAIN_ECP_FAULT_CODE_02, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_, MainPosCopShort)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  183, MAIN_ECP_FAULT_CODE_02, 0x80, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_, ReserveCopShort)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  184, MAIN_ECP_FAULT_CODE_03, 0x10, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_OverTemp, BatNegCop)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  185, MAIN_ECP_FAULT_CODE_03, 0x20, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_OverTemp, BatPosCop)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  186, MAIN_ECP_FAULT_CODE_03, 0x40, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_OverTemp, MainPosCop)},
    {J1939_FAULT_INVALID_CFG, MAIN_ECP_DEM_EVENT_INVALID_CFG,  187, MAIN_ECP_FAULT_CODE_03, 0x850, eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF, eMAIN_ECP_FAULT_CFG_TABLE_IS_END, MAIN_ECP_FUNC_PTR_DEF(RCEVETA_OverTemp, ReserveCop)},

};

const uint16 MAIN_ku16FaultNum = sizeof(MAIN_katFaultCfgSet)/sizeof(MAIN_ECPFaultCfg);

#if (MAIN_ECP_INVALID_EVENT_NO > 0)
static const uint16 MAIN_kau16InvalidEventIdList[] = {
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC07,
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC08,
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC09,
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC10,
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC11,
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC12,
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC13,
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC14,
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC15,
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC16,
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC17,
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC18,
    DemConf_DemEventParameter_DemEventParameter_ECU5_DTC19,
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
#if (_MAIN_PDU_MODULE_SEND_ENABLE_ == 1U)
    ComHal_vidSendMessage(MAIN_J1939_TX_PDUID_J1939_DM1, &MAIN_J1939_au8DM1TxBuf[0]);
#endif
}

static void MAIN_J1939_vidSendBAM(void)
{   
#if (_MAIN_PDU_MODULE_SEND_ENABLE_ == 1U)
     ComHal_vidSendMessage(MAIN_J1939_TX_PDUID_J1939_BAM, &MAIN_J1939_au8BAMTxBuf[0]);
#endif
}

static void MAIN_J1939_vidSendTPDT(void)
{   
#if (_MAIN_PDU_MODULE_SEND_ENABLE_ == 1U)
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

static void MAIN_ECP_vidRCEVETA_BatNegCopShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_BatPosCopShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_MainPosCopShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_ReserveCopShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_SmlLoad1ShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_SmlLoad2ShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_SmlLoad3ShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_SmlLoad4ShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_SmlLoad5ShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_SmlLoad6ShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_OverTempBatNegCopCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_OverTempBatPosCopCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_OverTempMainPosCopCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_OverTempReserveCopCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_OverTempSmlLoad1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_OverTempSmlLoad2Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_OverTempSmlLoad3Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_OverTempSmlLoad4Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_OverTempSmlLoad5Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVETA_OverTempSmlLoad6Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVLCS_OverCurSmlLoad1Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVLCS_OverCurSmlLoad2Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVLCS_OverCurSmlLoad3Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVLCS_OverCurSmlLoad4Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVLCS_OverCurSmlLoad5Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVLCS_OverCurSmlLoad6Callout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVLCS_SmlLoad1CurShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVLCS_SmlLoad2CurShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVLCS_SmlLoad3CurShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVLCS_SmlLoad4CurShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVLCS_SmlLoad5CurShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCEVLCS_SmlLoad6CurShortCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_BatHeatDrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_BatHeatPreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_BatHeatPreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_BatHeatWeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_EACDrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_EACPreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_EACPreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_EACWeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_MainPosDrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_MainPosPreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_MainPosPreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_MainPosWeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_PreMainDrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_PreMainPreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_PreMainPreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_PreMainWeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_SCUDrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_SCUPreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_SCUPreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_SCUWeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_MainPosCmdOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_SCUCmdOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_BatHeatCmdOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_EACCmdOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg1DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg1PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg1PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg1WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg2DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg2PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg2PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg2WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg3DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg3PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg3PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg3WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg4DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg4PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg4PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgNeg4WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos1DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos1PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos1PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos1WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos2DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos2PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos2PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos2WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos3DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos3PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos3PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos3WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos4DrvErrCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos4PreFailedCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos4PreOverTimeCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}

static void MAIN_ECP_vidRCSMACS_FastChgPos4WeledCallout(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam)
{
    MAIN_ECP_vidCommonHandler(kpktCfg, kptUserParam);

    /* User Code */
    kptUserParam->bFaultLv0 = TRUE;
}
