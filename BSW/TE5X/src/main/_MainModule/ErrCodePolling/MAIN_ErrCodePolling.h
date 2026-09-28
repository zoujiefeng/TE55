#ifndef __MAIN_ERR_CODE_POLLING_H_
#define __MAIN_ERR_CODE_POLLING_H_

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"
#include "MAIN_Cfg.h"
#include "MAIN_RollErrCode.h"

#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
#include "J1939.h"
#endif

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define MAIN_ECP_FUNC_PTR_DEF(sFuncName, sFaultName)   \
    .u16FaultLogged = FaultDetn_u16Read_##sFuncName##sFaultName##Logged, \
    .vidUserCallout = MAIN_ECP_vid##sFuncName##sFaultName##Callout

#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
    /* Input param : dec */
    #define J1939_FAULT_CFG_DEF(u16Fmi, u32Spn)   \
        {.u16FMI = u16Fmi, .u16SPNIdx = (eMAIN_J1939_SPN_IDX_##u32Spn), .u32SPN = (u32Spn)}
    #define J1939_FAULT_INVALID_CFG   \
        {.u16FMI = 0xFFu, .u16SPNIdx = 0xFFFFu, .u32SPN = 0xFFFFFFFFu}
#endif

#define MAIN_ECP_DEM_EVENT_INVALID_CFG   (0xFFFFu)

#define _MAIN_ECP_DEF(sEcuName, sString)   sString##_##sEcuName
#define MAIN_ECP_DEF(sEcuName, sString)    _MAIN_ECP_DEF(sEcuName, sString)

/*******************************************************************************
 ****  Private Type Declarations
 ******************************************************************************/
typedef struct MAIN_ECPParam    MAIN_ECPParam;
typedef struct MAIN_ECPFaultCfg MAIN_ECPFaultCfg;

typedef void tSetEventStateFuncPtr(const uint16 ku16EventId);

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
enum {
    MAIN_ECP_FAULT_CODE_00 = 0,
    MAIN_ECP_FAULT_CODE_01,
    MAIN_ECP_FAULT_CODE_02,
    MAIN_ECP_FAULT_CODE_03,
    MAIN_ECP_FAULT_CODE_04,
    MAIN_ECP_FAULT_CODE_05,
    MAIN_ECP_FAULT_CODE_06,
    MAIN_ECP_FAULT_CODE_07,
    MAIN_ECP_FAULT_CODE_08,
    MAIN_ECP_FAULT_CODE_09,
    MAIN_ECP_FAULT_CODE_10,
    MAIN_ECP_FAULT_CODE_11,
    MAIN_ECP_FAULT_CODE_12,
    MAIN_ECP_FAULT_CODE_13,
    MAIN_ECP_FAULT_CODE_14,
    MAIN_ECP_FAULT_CODE_15,
    MAIN_ECP_FAULT_CODE_MAX_NUM
};

typedef enum MAIN_ECPFltStateType{
    eMAIN_ECP_FAULT_NOT_LOGGED = 0,
    eMAIN_ECP_FAULT_IS_LOGGED
}MAIN_ECPFltStateType;

typedef enum MAIN_ECPCfgTabEndType{
    eMAIN_ECP_FAULT_CFG_TABLE_UNDEF = 0,
    eMAIN_ECP_FAULT_CFG_TABLE_IS_END,
    eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE
}MAIN_ECPCfgTabEndType;

typedef enum MAIN_ECPTabLogicType{
    eMAIN_ECP_CFG_TABLE_LOGIC_UNDEF = 0,
    eMAIN_ECP_CFG_TABLE_LOGIC_AND,
    eMAIN_ECP_CFG_TABLE_LOGIC_OR
}MAIN_ECPTabLogicType;

struct MAIN_ECPFaultCfg{
#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
    J1939_FaultCfg tJ1939FaultCfg;
#endif
    uint16 u16DTCEventId;

    uint8  u8RollErrCode;
    uint8  u8InvtFaultByteIdx;
    uint8  u8InvtFaultBitMask;

    MAIN_ECPTabLogicType  eTableLogic;
    MAIN_ECPCfgTabEndType eCfgTableEnd;

    uint16 (*u16FaultLogged)(void);
    void   (*vidUserCallout)(const MAIN_ECPFaultCfg *const kpktCfg, MAIN_ECPParam * const kptUserParam);
};

typedef struct MAIN_ECPEcuCfg{
    MAIN_REC_BUF_INDEX eRecBufIdx;
    
    const uint16 *pku16FaultNum;
    const MAIN_ECPFaultCfg *pktFaultCfg;
    void (*vidInvalidEventHandler)(tSetEventStateFuncPtr tFuncPtr);

#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
    const J1939_EcuCfg * pktJ1939EcuCfg;
#endif
}MAIN_ECPEcuCfg;

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern void MAIN_ECP_vidModuleInit(void);
extern void MAIN_ECP_vidPollingFault(const uint8 ku8EcuId, MAIN_ECPParam * const kptUserParam, const uint32 ku32ParamSize);

extern void MAIN_ECP_vidInvalidEventHandler_MCU1(tSetEventStateFuncPtr tFuncPtr);
extern void MAIN_ECP_vidInvalidEventHandler_MCU2(tSetEventStateFuncPtr tFuncPtr);
extern void MAIN_ECP_vidInvalidEventHandler_ACM(tSetEventStateFuncPtr tFuncPtr);
extern void MAIN_ECP_vidInvalidEventHandler_EPS(tSetEventStateFuncPtr tFuncPtr);
extern void MAIN_ECP_vidInvalidEventHandler_PDU(tSetEventStateFuncPtr tFuncPtr);

#endif /* __MAIN_ERR_CODE_POLLING_H_ */
