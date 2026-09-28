/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Dem.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_ErrCodePolling.h"
#include "rba_BswSrv.h"

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
typedef struct MAIN_ECPTabCheckParam{
    uint16  u16ActualVal;
    uint16  u16ExpectedVal;
}MAIN_ECPTabCheckParam;

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define MAIN_ECP_FAULT_LOG_STATE_NO_FAULT   (0x0000u)
#define MAIN_ECP_FAULT_LOG_STATE_BIT_MASK   (0x0001u)

/*******************************************************************************
 ****  Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Export Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static inline uint8 MAIN_ECP_u8CfgTabHandler(const MAIN_ECPFaultCfg * const kpktTemp,
                                             MAIN_ECPParam * const kptUserParam,
                                             MAIN_ECPTabCheckParam * const kptTabParam);
static inline void  MAIN_ECP_vidDTCHandler(const MAIN_ECPEcuCfg * const kpktEcuCfg,
                                           const MAIN_ECPFaultCfg * const kpktFltCfg,
                                           MAIN_ECPTabCheckParam * const kptTabParam);
static inline void MAIN_ECP_vidSetEventNormalStatus(const uint16 ku16EventId);
static inline void MAIN_ECP_vidSetEventErrorStatus(const uint16 ku16EventId);

/*******************************************************************************
 ****  Private Constant Declarations
 ******************************************************************************/
extern const uint16 MAIN_ku16FaultNum_MCU1;
extern const uint16 MAIN_ku16FaultNum_MCU2;
extern const uint16 MAIN_ku16FaultNum_ACM;
extern const uint16 MAIN_ku16FaultNum_EPS;
extern const uint16 MAIN_ku16FaultNum_PDU;

extern const MAIN_ECPFaultCfg MAIN_katFaultCfgSet_MCU1[];
extern const MAIN_ECPFaultCfg MAIN_katFaultCfgSet_MCU2[];
extern const MAIN_ECPFaultCfg MAIN_katFaultCfgSet_ACM[];
extern const MAIN_ECPFaultCfg MAIN_katFaultCfgSet_EPS[];
extern const MAIN_ECPFaultCfg MAIN_katFaultCfgSet_PDU[];

#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
extern const J1939_EcuCfg MAIN_ktJ1939EcuCfg_MCU1;
extern const J1939_EcuCfg MAIN_ktJ1939EcuCfg_MCU2;
extern const J1939_EcuCfg MAIN_ktJ1939EcuCfg_ACM;
extern const J1939_EcuCfg MAIN_ktJ1939EcuCfg_EPS;
extern const J1939_EcuCfg MAIN_ktJ1939EcuCfg_PDU;
#endif

static const MAIN_ECPEcuCfg MAIN_katECPEcuCfg[] = {
#if (_MAIN_J1939_MODULE_ENABLE_ == 0)    
    {&MAIN_ku16FaultNum_MCU1, &MAIN_katFaultCfgSet_MCU1[0], },
    {&MAIN_ku16FaultNum_MCU2, &MAIN_katFaultCfgSet_MCU2[0], },
    {&MAIN_ku16FaultNum_ACM,  &MAIN_katFaultCfgSet_ACM[0],  MAIN_ECP_vidInvalidEventHandler_ACM},
    {&MAIN_ku16FaultNum_EPS,  &MAIN_katFaultCfgSet_EPS[0],  },
    {&MAIN_ku16FaultNum_PDU,  &MAIN_katFaultCfgSet_PDU[0],  }
#else
    {eMAIN_REC_BUF_IDX_MCU1, &MAIN_ku16FaultNum_MCU1, &MAIN_katFaultCfgSet_MCU1[0], MAIN_ECP_vidInvalidEventHandler_MCU1, &MAIN_ktJ1939EcuCfg_MCU1},
    {eMAIN_REC_BUF_IDX_MCU2, &MAIN_ku16FaultNum_MCU2, &MAIN_katFaultCfgSet_MCU2[0], MAIN_ECP_vidInvalidEventHandler_MCU2, &MAIN_ktJ1939EcuCfg_MCU2},
    {eMAIN_REC_BUF_IDX_ACM,  &MAIN_ku16FaultNum_ACM,  &MAIN_katFaultCfgSet_ACM[0],  MAIN_ECP_vidInvalidEventHandler_ACM,  &MAIN_ktJ1939EcuCfg_ACM},
    {eMAIN_REC_BUF_IDX_EPS,  &MAIN_ku16FaultNum_EPS,  &MAIN_katFaultCfgSet_EPS[0],  MAIN_ECP_vidInvalidEventHandler_EPS,  &MAIN_ktJ1939EcuCfg_EPS},
    {eMAIN_REC_BUF_IDX_PDU,  &MAIN_ku16FaultNum_PDU,  &MAIN_katFaultCfgSet_PDU[0],  MAIN_ECP_vidInvalidEventHandler_PDU,  &MAIN_ktJ1939EcuCfg_PDU}
#endif
};

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void MAIN_ECP_vidModuleInit(void)
{
#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
    uint8 u8Index;

    for(u8Index = 0; u8Index < (sizeof(MAIN_katECPEcuCfg) / sizeof(MAIN_ECPEcuCfg)); u8Index++)
    {
        if(MAIN_katECPEcuCfg[u8Index].pktJ1939EcuCfg != NULL_PTR)
        {
            if(MAIN_katECPEcuCfg[u8Index].pktJ1939EcuCfg->vidSPNBufInit != NULL_PTR)
            {
                MAIN_katECPEcuCfg[u8Index].pktJ1939EcuCfg->vidSPNBufInit();
            }
        }
    }
#endif
}

void MAIN_ECP_vidPollingFault(const uint8 ku8EcuId, MAIN_ECPParam * const kptUserParam, const uint32 ku32ParamSize)
{
    uint8  u8TabSize;
    uint16 u16Index;

    MAIN_ECPTabCheckParam  tTabParam;
    /* 1. Get ECU config */
    const MAIN_ECPEcuCfg   * pktEcuCfg = &MAIN_katECPEcuCfg[ku8EcuId];
    const MAIN_ECPFaultCfg * pktFltCfg = pktEcuCfg->pktFaultCfg;

    /* 2. Init param memory */
    (void)rba_BswSrv_MemSet(kptUserParam, 0, ku32ParamSize);

    /* 3. Polling all faults for the specified ECU */
    for(u16Index = 0; u16Index < *(pktEcuCfg->pku16FaultNum); /* Nothing(Modified by polling table) */)
    {
        /* 1. Polling config table */
        u8TabSize = MAIN_ECP_u8CfgTabHandler(&pktFltCfg[u16Index], kptUserParam, &tTabParam);
        /* 2. Handle DTC and SPN */
        MAIN_ECP_vidDTCHandler(pktEcuCfg, &pktFltCfg[u16Index], &tTabParam);

        u16Index = u16Index + u8TabSize;
    }

#if (_MAIN_J1939_MODULE_ENABLE_ == 1)
    if(NULL_PTR != MAIN_katECPEcuCfg[ku8EcuId].pktJ1939EcuCfg)
    {
        J1939_vidMainFunction(MAIN_katECPEcuCfg[ku8EcuId].pktJ1939EcuCfg);
    }
#endif

    if(NULL_PTR != pktEcuCfg->vidInvalidEventHandler)
    {
        pktEcuCfg->vidInvalidEventHandler(MAIN_ECP_vidSetEventNormalStatus);
    }
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static inline uint8 MAIN_ECP_u8CfgTabHandler(const MAIN_ECPFaultCfg * const kpktFltCfg,
                                             MAIN_ECPParam * const kptUserParam,
                                             MAIN_ECPTabCheckParam * const kptTabParam)
{
    uint8 u8TabIdx = 0;

    /* 1. Polling config table (Table size: (1 ~ N)) */
    do{
        kptTabParam->u16ExpectedVal |= (MAIN_ECP_FAULT_LOG_STATE_BIT_MASK << u8TabIdx);

        if(kpktFltCfg[u8TabIdx].u16FaultLogged() != 0)
        {
            /* 2. Log fault */
            kptTabParam->u16ActualVal |= (MAIN_ECP_FAULT_LOG_STATE_BIT_MASK << u8TabIdx);
            kpktFltCfg[u8TabIdx].vidUserCallout(&kpktFltCfg[u8TabIdx], kptUserParam);
        }
    }while(eMAIN_ECP_FAULT_CFG_TABLE_IS_CONTINUE == kpktFltCfg[u8TabIdx++].eCfgTableEnd);

    return u8TabIdx;
}

static inline void MAIN_ECP_vidDTCHandler(const MAIN_ECPEcuCfg * const kpktEcuCfg,
                                          const MAIN_ECPFaultCfg * const kpktFltCfg,
                                          MAIN_ECPTabCheckParam * const kptTabParam)
{
    if(MAIN_ECP_FAULT_LOG_STATE_NO_FAULT != kptTabParam->u16ActualVal)
    {
        /* 1. One or several faults in the fault table have been triggered */
        if((kptTabParam->u16ExpectedVal   != kptTabParam->u16ActualVal)
        && (eMAIN_ECP_CFG_TABLE_LOGIC_AND == kpktFltCfg->eTableLogic))
        {
            /* Logic and */
            /* 2. Not all the faults in the fault table were triggered */
            /* Clear DTC */
            MAIN_ECP_vidSetEventNormalStatus(kpktFltCfg->u16DTCEventId);
        }
        else
        {
        #if (_MAIN_ROLL_ERR_CODE_MERGE_ENABLE_ == 1)
            /* Set rolling error code */
            MAIN_REC_vidSetErrCode(kpktEcuCfg->eRecBufIdx, kpktFltCfg->u8RollErrCode);
        #endif /* (_MAIN_J1939_MODULE_ENABLE_ == 1) */

            /* Log DTC */
            MAIN_ECP_vidSetEventErrorStatus(kpktFltCfg->u16DTCEventId);

        #if (_MAIN_J1939_MODULE_ENABLE_ == 1)
            if(NULL_PTR != kpktEcuCfg->pktJ1939EcuCfg)
            {
                J1939_vidSPNHandler(kpktEcuCfg->pktJ1939EcuCfg, &(kpktFltCfg->tJ1939FaultCfg));
            }
        #endif
        }
    }
    else
    {
        /* Clear DTC */
        MAIN_ECP_vidSetEventNormalStatus(kpktFltCfg->u16DTCEventId);
    }

    /* Clear param */
    kptTabParam->u16ActualVal   = MAIN_ECP_FAULT_LOG_STATE_NO_FAULT;
    kptTabParam->u16ExpectedVal = MAIN_ECP_FAULT_LOG_STATE_NO_FAULT;
}

static inline void MAIN_ECP_vidSetEventNormalStatus(const uint16 ku16EventId)
{
    if(MAIN_ECP_DEM_EVENT_INVALID_CFG != ku16EventId)
    {
        Dem_SetEventStatus((Dem_EventIdType)(ku16EventId), DEM_EVENT_STATUS_PASSED);
    }
}

static inline void MAIN_ECP_vidSetEventErrorStatus(const uint16 ku16EventId)
{
    if(MAIN_ECP_DEM_EVENT_INVALID_CFG != ku16EventId)
    {
        Dem_SetEventStatus((Dem_EventIdType)(ku16EventId), DEM_EVENT_STATUS_FAILED);
    }
}
