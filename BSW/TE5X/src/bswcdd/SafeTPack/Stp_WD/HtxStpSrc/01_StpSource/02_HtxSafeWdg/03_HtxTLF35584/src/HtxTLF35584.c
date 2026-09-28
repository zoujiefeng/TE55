/*******************************************************************************
**                                                                            **
** Copyright (C) Hitex (UK) Ltd. (2020)                                       **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This source code and any compilation or derivative thereof is the sole     **
** property of Hitex (UK) Ltd. and is provided pursuant to a Software         **
** License  Agreement. This code is the proprietary information of            **
** Hitex (UK) Ltd. and is confidential in nature. Its use and dissemination   **
** by any other party other than Hitex (UK) Ltd. is strictly limited by the   **
** confidential information provisions of the Agreement referenced above.     **
**                                                                            **
********************************************************************************
**                                                                            **
** FILENAME : HtxTLF35584.c                                                   **
**                                                                            **
** REVISION : \$Revision: 28465 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-04-14 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2247             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2242             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2290             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2289             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2245             **
**                @wi.implements 4321.AURIX2G_SafeTpack/4321-2241             **
**                                                                            **
** DESCRIPTION : Source file of the driver HtxTLF35584                        **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#include "IfxPort_reg.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxTLF35584_reg.h"
#include "HtxTLF35584.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/* TLF command read/write bit: */
#define HTXTLF35584_WR_BIT               (0x00004000U)

/* Mask and position of the TLF command, address and data within a data word: */
#define HTXTLF35584_CMD_POS              (8U)

/* Byte sequence to be written to PROTCFG register to unlock the TLF: */
#define HTXTLF35584_UNLOCK_SEQU0         ((uint8)0xABU)
#define HTXTLF35584_UNLOCK_SEQU1         ((uint8)0xEFU)
#define HTXTLF35584_UNLOCK_SEQU2         ((uint8)0x56U)
#define HTXTLF35584_UNLOCK_SEQU3         ((uint8)0x12U)

/* Byte sequence to be written to PROTCFG register to lock the TLF: */
#define HTXTLF35584_LOCK_SEQU0           ((uint8)0xDFU)
#define HTXTLF35584_LOCK_SEQU1           ((uint8)0x34U)
#define HTXTLF35584_LOCK_SEQU2           ((uint8)0xBEU)
#define HTXTLF35584_LOCK_SEQU3           ((uint8)0xCAU)

/* WDCFG bits: */
#define HTXTLF35584_WDCFG0_WDCYC_0_1MS_B ((uint8)0x00U)
#define HTXTLF35584_WDCFG0_WDCYC_1MS_B   ((uint8)0x01U)
#define HTXTLF35584_WDCFG0_WWDTSEL_B     ((uint8)0x02U)
#define HTXTLF35584_WDCFG0_FWDEN_B       ((uint8)0x04U)
#define HTXTLF35584_WDCFG0_WWDEN_B       ((uint8)0x08U)
#define HTXTLF35584_WDCFG0_WDETH_P       (4U)
#define HTXTLF35584_WDCFG1_FWETH_M       ((uint8)0x0FU)

/* Clear bits for FWD and WWD to disable */
#define HTXTLF35584_CLEAR_FWD_WWD        ((uint16)(0xF3U))

/* Clear bits for ERR monitor to disable */
#define HTXTLF35584_CLEAR_ERR_MON        ((uint16)(0xF7))    

/* SYSPCFG bits: */
#if(HTXTLF35584_ERR_PIN_MON_ENABLE == STD_ON)
#define HTXTLF35584_SYSPCFG1_ERR_B       ((uint8)0x08U)
#endif

#define HTXTLF35584_SYSPCFG1_EREN_B      ((uint8)0x08U)

/* FWDSTAT0 bits: */
#define HTXTLF35584_FW_QUEST_M           ((uint8)0x0FU)

/* RWDCFG0 mask bits for FWDEN and WWDEN */
#define HTXTLF35584_RWDCFG0_M            ((uint8)0x0CU)

/* Px_OMC bits: */
#define HTXTLF35584_OMCR_BASE_P          ((uint8)16U)

#define HTXTLF35584_ECNT_M               ((uint16)0x000FU)
#define HTXTLF35584_STATE_M              ((uint16)0x0007U)
#define HTXTLF35584_FW_RSPCNT_M          ((uint8)0x30U)

/*Definitions for device state*/
#define HTXTLF35584_DEVSTAT_RES          (0x0U)
#define HTXTLF35584_DEVSTAT_WAK          (0x5U)

/* HtxTLF35584_JobType definitions: */
#define HTXTLF35584_IDLE                 (0U)  /* Driver idle */
#define HTXTLF35584_ULOCK_JOB            (1U)  /* Init unlock job */
#define HTXTLF35584_LOCK_JOB             (2U)  /* Init lock job */
#define HTXTLF35584_CHK_INIT_JOB         (9U)  /* Init Wdg Disable check job */
#define HTXTLF35584_ENBLE_JOB            (3U)  /* Activate enable job */
#define HTXTLF35584_ACT_SRV_JOB          (4U)  /* Activate first service job */
#define HTXTLF35584_INFO_JOB             (5U)  /* Cyclic info job */
#define HTXTLF35584_SER_JOB              (6U)  /* Regular service job */
#define HTXTLF35584_USR_JOB              (7U)  /* User request job */
#define HTXTLF35584_DEINIT_JOB           (8U)  /* Deinit Job */

#define HTXTLF35584_NOR_STATE_M          (0x02U)
#define HTXTLF35584_BITMASK              (0xFFU)

/* Maximum size of Tx and Rx Buffer */
#define HTXTLF35584_MAXBUF               (25U)

#define HTXTLF35584_INVALIDATE_CRC       (0x0U)

/* Mask for last 4 bits*/
#define HTXTLF35584_MASK_BIT             ((uint8)0x0FU)

/* SafeWdg TLF FWD Rsp counter reset value*/
#define HTXTLF35584_RSPCNT_RESET_VAL     ((uint8)0x03U)

/* 8-bit mask */
#define HTXTLF35584_8BIT_MASK            (0x00FFU)

/* Lower 5 conescutive bits mask  */
#define HTXTLF35584_LOWER_5_BIT_MASK     (0x001FU)

/* Byte specific Mask */
#define HTXTLF35584_BYTE_0_MASK          (0x000000FFU)
#define HTXTLF35584_BYTE_1_MASK          (0x0000FF00U)
#define HTXTLF35584_BYTE_2_MASK          (0x00FF0000U)
#define HTXTLF35584_BYTE_3_MASK          (0xFF000000U)

/* Constants for array index */
#define HTXTLF35584_ARR_INDEX_2          (2U)
#define HTXTLF35584_ARR_INDEX_3          (3U)
#define HTXTLF35584_ARR_INDEX_4          (4U)

/* Constants used for arithmatic operations */
#define HTXTLF35584_CONST_24             (24U)
#define HTXTLF35584_CONST_16             (16U)
#define HTXTLF35584_CONST_8              (8U)
#define HTXTLF35584_CONST_2              (2U)

/* Functional watchdog ERR mask */
#define HTXTLF35584_FUNC_WDG_ERR_MSK     ((uint8)0xF0U)

/* Window watchdog ERR mask */
#define HTXTLF35584_WIND_WDG_ERR_MSK     ((uint8)0x0FU)

/* Functional watchdog ERR bit offset */
#define HTXTLF35584_FUNC_WDG_ERR_OFF     ((uint8)4U)

/* Macro to set all the errors in QSPI */
#define HTXTLF35584_QSPI_ERROR_SET       ((uint32)0x1FFU)

/* Constant shift value used for either lefet/right */
#define HTXTLF35594_SHIFT_4              ((uint8)4U)

/*******************************************************************************
 ****  Function like macro definitions
 ******************************************************************************/

/* MISRA2012_RULE_4_9_JUSTIFICATION:
   Function like macro is defined to prepare the SPI command.
   No side effects foreseen by violating this MISRA rule. */
/* Macro to assemble a TLF register write command: */
#define HTXTLF35584_WR_CMD(REG,VAL)      (((((uint32)(REG)&(uint32)0x3FU) \
                                          << 8U)|HTXTLF35584_WR_BIT)|     \
                                          ((uint32)(VAL)&(uint32)0xFFU))

/* MISRA2012_RULE_4_9_JUSTIFICATION:
   Function like macro is defined to prepare the SPI command.
   No side effects foreseen by violating this MISRA rule. */
/* Macro to assemble a TLF register read command: */
#define HTXTLF35584_RD_CMD(REG)          (((uint32)(REG)&(uint32)0x3FU)<<8U)

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/* Type definition HtxTLF35584_DataType - This structure contains local
 * working data of the TLF driver */
typedef struct HtxTLF35584_DataType
{
    const HtxTLF35584_ConfigType* ConfigPtr; /* Used configuration */
    HtxWdgIf_CmdType* RequestPtr;            /* List of user requests */
    HtxWdgIf_ExtWdgStateType DeviceState;    /* current TLF state*/
    uint32 Crc;                       /* calculated Crc for data set */
    volatile uint16 Syspcfg0;         /* Variable to store value of register SYSPCFG0 */
    volatile uint16 Syspcfg1;         /* Variable to store value of register SYSPCFG1 */
    volatile uint16 Wdcfg0;           /* Variable to store value of register WDCFG0 */
    volatile uint16 Wdcfg1;           /* Variable to store value of register WDCFG1 */
    volatile uint16 Fwdcfg;           /* Variable to store value of register FWDCFG */
    volatile uint16 Wwdcfg0;          /* Variable to store value of register WWDCFG0 */
    volatile uint16 Wwdcfg1;          /* Variable to store value of register WWDCFG1 */
    HtxWdgIf_ResultType JobResult;    /* Current asynchronous job and result: */
    uint8 JobState;
    uint8 LastSeed;            /* Latest seed value */
    uint8 RspCnt;              /* response counter */
    uint8 LastWwdScmd;         /* Last WWD service cmd register value */
    uint8 ErrCtr;              /* Error counter value of TLF*/
    uint8 NoOfBytesToBeSent; /* Number bytes to be transferred */
    boolean WdiRestoreFlag;    /* Flag to indicate that the WDI pin reset is still pending: */
    boolean ActivateRequested; /* Flag to indicate that activate has been requested: */
} HtxTLF35584_DataType;

/* SPI buffer indices for Unlock job: */
typedef enum HtxTLF35584_UnlockJobType
{
    TLF_UNLOCK_WR_PROTCFG_0 = 0U,
    TLF_UNLOCK_WR_PROTCFG_1,
    TLF_UNLOCK_WR_PROTCFG_2,
    TLF_UNLOCK_WR_PROTCFG_3,
    TLF_UNLOCK_RD_RSYSPCFG0,
    TLF_UNLOCK_RD_RSYSPCFG1,
    TLF_UNLOCK_RD_RWDCFG0,
    TLF_UNLOCK_RD_RWDCFG1,
    TLF_UNLOCK_RD_RFWDCFG,
    TLF_UNLOCK_RD_RWWDCFG0,
    TLF_UNLOCK_RD_RWWDCFG1,
    TLF_UNLOCK_MAX
} HtxTLF35584_UnlockJobType;

/* SPI buffer indices for Lock job: */
typedef enum HtxTLF35584_LockJobType
{
    TLF_LOCK_WR_SYSPCFG0 = 0U,
    TLF_LOCK_WR_SYSPCFG1,
    TLF_LOCK_WR_WDCFG0,
    TLF_LOCK_WR_WDCFG1,
    TLF_LOCK_WR_FWDCFG,
    TLF_LOCK_WR_WWDCFG0,
    TLF_LOCK_WR_WWDCFG1,
    TLF_LOCK_RD_SYSPCFG0,
    TLF_LOCK_RD_SYSPCFG1,
    TLF_LOCK_RD_WDCFG0,
    TLF_LOCK_RD_WDCFG1,
    TLF_LOCK_RD_FWDCFG,
    TLF_LOCK_RD_WWDCFG0,
    TLF_LOCK_RD_WWDCFG1,
    TLF_LOCK_WR_PROTCFG_0,
    TLF_LOCK_WR_PROTCFG_1,
    TLF_LOCK_WR_PROTCFG_2,
    TLF_LOCK_WR_PROTCFG_3,
    TLF_LOCK_MAX
} HtxTLF35584_LockJobType;

/* SPI buffer indices for ChkInit job: */
typedef enum HtxTLF35584_ChkInitJobType
{
    TLF_CHK_INIT_RD_RWDCFG0 = 0U,
    TLF_CHK_INIT_MAX
} HtxTLF35584_ChkInitJobType;

/* SPI buffer indices for DeInit job: */
typedef enum HtxTLF35584_DeInitJobType
{
    TLF_DE_INIT_WR_PROTCFG_0 = 0U,
    TLF_DE_INIT_WR_PROTCFG_1,
    TLF_DE_INIT_WR_PROTCFG_2,
    TLF_DE_INIT_WR_PROTCFG_3,
    TLF_DE_INIT_WR_WDCFG0,
    TLF_DE_INIT_WR_SYSPCFG1,
    TLF_DE_INIT_WR_SYSPCFG0,
    TLF_DE_INIT_WR_WDCFG1,
    TLF_DE_INIT_WR_PROTCFG_4,
    TLF_DE_INIT_WR_PROTCFG_5,
    TLF_DE_INIT_WR_PROTCFG_6,
    TLF_DE_INIT_WR_PROTCFG_7,
    TLF_DE_INIT_MAX
} HtxTLF35584_DeInitJobType;

/* SPI buffer indices for Activate job: */
typedef enum HtxTLF35584_EnableJobType
{
    TLF_ENABLE_WR_PROTCFG_0 = 0U,
    TLF_ENABLE_WR_PROTCFG_1,
    TLF_ENABLE_WR_PROTCFG_2,
    TLF_ENABLE_WR_PROTCFG_3,
    TLF_ENABLE_WR_SYSPCFG0,
    TLF_ENABLE_WR_SYSPCFG1,
    TLF_ENABLE_WR_WDCFG0,
    TLF_ENABLE_WR_WDCFG1,
    TLF_ENABLE_WR_FWDCFG,
    TLF_ENABLE_WR_WWDCFG0,
    TLF_ENABLE_WR_WWDCFG1,
    TLF_ENABLE_RD_WWDSCMD,
    TLF_ENABLE_RD_SYSPCFG0,
    TLF_ENABLE_RD_SYSPCFG1,
    TLF_ENABLE_RD_WDCFG0,
    TLF_ENABLE_RD_WDCFG1,
    TLF_ENABLE_RD_FWDCFG,
    TLF_ENABLE_RD_WWDCFG0,
    TLF_ENABLE_RD_WWDCFG1,
    TLF_ENABLE_WR_PROTCFG_4,
    TLF_ENABLE_WR_PROTCFG_5,
    TLF_ENABLE_WR_PROTCFG_6,
    TLF_ENABLE_WR_PROTCFG_7,
    TLF_ENABLE_MAX
} HtxTLF35584_EnableJobType;

/* SPI buffer indices for Activate Service job: */
typedef enum HtxTLF35584_ActSerJobType
{
    TLF_ACT_SER_RD_DEVSTAT = 0U,
    TLF_ACT_SER_RD_FWDSTAT1,
    TLF_ACT_SER_RD_FWDSTAT0,
    TLF_ACT_SER_RD_WWDSTAT,
    TLF_ACT_SER_RD_WWDSCMD,
    TLF_ACT_SER_MAX
} HtxTLF35584_ActSerJobType;

/* SPI buffer indices for window watchdog service job: */
typedef enum HtxTLF35584_ServiceWwdJobType
{
    TLF_SER_WWD_WR_WWDSCMD = 0U,
    TLF_SER_WWD_MAX
} HtxTLF35584_ServiceWwdJobType;

/* SPI buffer indices for functional watchdog service job: */
typedef enum HtxTLF35584_ServiceFwdJobType
{
    TLF_SER_FWD_WR_FWDRSP_0 = 0U,
    TLF_SER_FWD_WR_FWDRSP_1,
    TLF_SER_FWD_WR_FWDRSP_2,
    TLF_SER_FWD_WR_FWDRSPSYNC,
    TLF_SER_FWD_MAX
} HtxTLF35584_ServiceFwdJobType;

/* SPI buffer indices for window & functional watchdog service job: */
typedef enum HtxTLF35584_ServiceFwdWwdJobType
{
    TLF_SER_FWD_WWD_WR_WWDSCMD = 0U,
    TLF_SER_FWD_WWD_WR_FWDRSP_0,
    TLF_SER_FWD_WWD_WR_FWDRSP_1,
    TLF_SER_FWD_WWD_WR_FWDRSP_2,
    TLF_SER_FWD_WWD_WR_FWDRSPSYNC,
    TLF_SER_FWD_WWD_MAX
} HtxTLF35584_ServiceFwdWwdJobType;

/* SPI buffer indices for Info job: */
typedef enum HtxTLF35584_InfoJobType
{
    TLF_INFO_RD_DEVSTAT = 0U,
    TLF_INFO_RD_FWDSTAT1,
    TLF_INFO_RD_FWDSTAT0,
    TLF_INFO_RD_WWDSTAT,
    TLF_INFO_RD_WWDSCMD,
    TLF_INFO_MAX
} HtxTLF35584_InfoJobType;

/* SPI buffer indices for additional "Go-Normal" command in Info job: */
typedef enum HtxTLF35584_InfoNormalJobType
{
    TLF_INFO_NORMAL_WR_DEVCTRL = TLF_INFO_MAX,
    TLF_INFO_NORMAL_WR_DEVCTRLN,
    TLF_INFO_NORMAL_MAX
} HtxTLF35584_InfoNormalJobType;

/*******************************************************************************
 **** Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 **** Variable Declarations
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTLF35584_MemMap.h"

/* TX and RX buffers need to be 4byte aligned. Therefore, they are defined
 * explicitly instead of being part of the local data set */
static uint32 HtxTLF35584_TxBuf[HTXTLF35584_MAXBUF];
static uint32 HtxTLF35584_RxBuf[HTXTLF35584_MAXBUF];

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTLF35584_MemMap.h"


/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584_START_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTLF35584_MemMap.h"

/* Local data set */
static HtxTLF35584_DataType HtxTLF35584_Data;

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584_STOP_SEC_VAR_CLEARED_ASIL_B_GLOBAL_32
#include "HtxTLF35584_MemMap.h"

/*******************************************************************************
 **** Private Function Declarations
 ******************************************************************************/

static HtxWdgIf_ResultType HtxTLF35584_lServiceWwd(void);

static void HtxTLF35584_lServiceFwd
(
    const uint8 UsedSeed,
    const uint32 Signature
);

static void HtxTLF35584_lServiceFwdAndWwd
(
    const uint8 UsedSeed,
    const uint32 Signature
);

static void HtxTLF35584_lProcessUsrReq(void);

static Std_ReturnType HtxTLF35584_lCheckWrData(const uint8 TxWordCount);

static Std_ReturnType HtxTLF35584_lCheckDataCrc(void);

static void HtxTLF35584_lSetDataCrc(void);

static uint32 HtxTLF35584_lCrc(void);

static void HtxTLF35584_lProcessCyclicRequest(void);

static void HtxTLF35584_lProcessUnlock(void);

static void HtxTLF35584_lProcessEnJob(void);

/*******************************************************************************
 **** Global Function Definitions
 ******************************************************************************/

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584_START_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTLF35584_MemMap.h"

/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_Init
 *                  (const HtxTLF35584_ConfigType* const ConfigPtr)
 *
 * \description   : Reads default configuration register data from TLF, and
 *                  disables the watchdog, Error pin monitoring
 *
 *******************************************************************************
 *
 * \param[in]     : ConfigPtr - pointer to the module's configuration
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED: Watchdog init accepted
 *                  HTXWDGIF_JOB_INV_PARAM: Invalid configuration
 *
 *******************************************************************************
 *
 * \service id:   : 0x1C
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2246
 *
 ******************************************************************************/
HtxWdgIf_ResultType HtxTLF35584_Init(const HtxTLF35584_ConfigType* const ConfigPtr)
{
    uint32 TempOmsr;
    HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_INV_PARAM;

    /* Do init only if config pointer is not NULL */
    if(ConfigPtr != NULL_PTR)
    {
        /* Initialise QSPI communication: */
        if(HtxTLF35584Qspi_Init(ConfigPtr->QspiCfgPtr) == E_OK)
        {
            /* Set Job state to indicate init is under progress - TLF35584 will be
               unlocked first*/
            HtxTLF35584_Data.JobState = HTXTLF35584_ULOCK_JOB;
            /* Store config pointer */
            HtxTLF35584_Data.ConfigPtr = ConfigPtr;

            /* Initialize local data: */
            HtxTLF35584_Data.LastSeed = HTXWDGIF_SAFEWDG_SEED_NOTVALID;
            HtxTLF35584_Data.WdiRestoreFlag = FALSE;
            HtxTLF35584_Data.DeviceState = HTXWDGIF_EXT_TLF_NONE;
            HtxTLF35584_Data.ErrCtr = HTXWDGIF_SAFEWDG_ERR_NOTVALID;
            HtxTLF35584_Data.RspCnt = HTXTLF35584_RSPCNT_RESET_VAL;
            HtxTLF35584_Data.ActivateRequested = FALSE;

            /* Set-up GPIO port if WWD triggering via GPIO pin (WDI) is selected: */
            if(TLF_WM_WWD_WDI == HtxTLF35584_Data.ConfigPtr->WatchdogMode)
            {
                TempOmsr = (uint32)((uint32)1U << (uint32)(ConfigPtr->WdiPin));
                /* Set WDI pin to high: */
                HtxTLF35584_Data.ConfigPtr->WdiPort->OMSR.U = TempOmsr;
            }

            /* First 4 bytes : Write Unlock sequence to unlock protected configuration registers
                    5th byte : Read System configuration 0 status
                    6th byte : Read System configuration 1 status
                    7th byte : Read Watchdog configuration 0 status
                    8th byte : Read Watchdog configuration 1 status
                    9th byte : Functional watchdog configuration status
                    10th byte : Window watchdog configuration 0 status
                    11th byte : Window watchdog configuration 1 status */
            HtxTLF35584_TxBuf[TLF_UNLOCK_WR_PROTCFG_0] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_UNLOCK_SEQU0);
            HtxTLF35584_TxBuf[TLF_UNLOCK_WR_PROTCFG_1] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_UNLOCK_SEQU1);
            HtxTLF35584_TxBuf[TLF_UNLOCK_WR_PROTCFG_2] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_UNLOCK_SEQU2);
            HtxTLF35584_TxBuf[TLF_UNLOCK_WR_PROTCFG_3] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_UNLOCK_SEQU3);
            HtxTLF35584_TxBuf[TLF_UNLOCK_RD_RSYSPCFG0] = HTXTLF35584_RD_CMD(TLF_REG_RSYSPCFG0);
            HtxTLF35584_TxBuf[TLF_UNLOCK_RD_RSYSPCFG1] = HTXTLF35584_RD_CMD(TLF_REG_RSYSPCFG1);
            HtxTLF35584_TxBuf[TLF_UNLOCK_RD_RWDCFG0] = HTXTLF35584_RD_CMD(TLF_REG_RWDCFG0);
            HtxTLF35584_TxBuf[TLF_UNLOCK_RD_RWDCFG1] = HTXTLF35584_RD_CMD(TLF_REG_RWDCFG1);
            HtxTLF35584_TxBuf[TLF_UNLOCK_RD_RFWDCFG] = HTXTLF35584_RD_CMD(TLF_REG_RFWDCFG);
            HtxTLF35584_TxBuf[TLF_UNLOCK_RD_RWWDCFG0] = HTXTLF35584_RD_CMD(TLF_REG_RWWDCFG0);
            HtxTLF35584_TxBuf[TLF_UNLOCK_RD_RWWDCFG1] = HTXTLF35584_RD_CMD(TLF_REG_RWWDCFG1);

            HtxTLF35584_Data.NoOfBytesToBeSent = (uint8)TLF_UNLOCK_MAX;

            /* Send request to TLF35584 */
            HtxTLF35584Qspi_TxRx(HtxTLF35584_TxBuf,HtxTLF35584_RxBuf,HtxTLF35584_Data.NoOfBytesToBeSent);
            Result = HTXWDGIF_JOB_ACCEPTED;
        } /* if(HtxTLF35584Qspi_Init(ConfigPtr->QspiCfgPtr) == E_OK) */
    } /* if(ConfigPtr != NULL_PTR) */

    /* Set job result state */
    HtxTLF35584_Data.JobResult = Result;

    /* Set up new CRC */
    HtxTLF35584_lSetDataCrc();

    return Result;
} /* End of HtxTLF35584_Init() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_DeInit(void)
 *
 * \description   : De-initializes the driver and disables the watchdog and
 *                  error pin monitoring
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED: Watchdog de-initialization accepted
 *                  HTXWDGIF_JOB_BUSY: Last transmission is not yet completed
 *
 *******************************************************************************
 *
 * \service id:   : 0x1D
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2232
 *
 ******************************************************************************/
HtxWdgIf_ResultType HtxTLF35584_DeInit(void)
{
    HtxWdgIf_ResultType Result;
    uint16 Wdcfg0Val;
    uint16 Syspcfg1Val;
    uint16 Wdcfg1Val;
    uint16 Syspcfg0Val;

    Result = HTXWDGIF_JOB_BUSY;

    /* Check if driver is free. No other API's can alter this value now */
    if(HtxTLF35584_Data.JobState == HTXTLF35584_IDLE)
    {
        /* Readback the current configuration */
        Wdcfg0Val = HtxTLF35584_Data.Wdcfg0;
        Syspcfg1Val = HtxTLF35584_Data.Syspcfg1;
        Syspcfg0Val = HtxTLF35584_Data.Syspcfg0;
        Wdcfg1Val = HtxTLF35584_Data.Wdcfg1;
    
        /* Driver is free. This request can be accepted. Set JobState to
           HTXTLF35584_DEINIT_JOB and also set tempHtxTLF35584_JobState */
        HtxTLF35584_Data.JobState = HTXTLF35584_DEINIT_JOB;

        /* Change driver state to reset */
        HtxTLF35584_Data.DeviceState = HTXWDGIF_EXT_TLF_NONE;

        /* invalidate stored information by destroying crc */
        HtxTLF35584_Data.Crc ^= ~(HTXTLF35584_INVALIDATE_CRC);

        /* Unlock and disable watchdogs and error pin monitoring.*/
        /* First 4 bytes : Write Unlock sequence to unlock protected configuration registers
                5th byte : Protected Watchdog configuration request 0
                6th byte : Protected System configuration request 1
                7th byte : Protected System configuration request 0
                8th byte : Protected Watchdog configuration request 0
               9-12 bytes: Write lock sequence to lock protected configuration registers */
        HtxTLF35584_TxBuf[TLF_DE_INIT_WR_PROTCFG_0] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_UNLOCK_SEQU0);
        HtxTLF35584_TxBuf[TLF_DE_INIT_WR_PROTCFG_1] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_UNLOCK_SEQU1);
        HtxTLF35584_TxBuf[TLF_DE_INIT_WR_PROTCFG_2] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_UNLOCK_SEQU2);
        HtxTLF35584_TxBuf[TLF_DE_INIT_WR_PROTCFG_3] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_UNLOCK_SEQU3);

        /* Disable FWD, Wdcfg0Val = 0 & 0xFB ; Wdcfg0Val = 0; */
        Wdcfg0Val &= ~HTXTLF35584_WDCFG0_FWDEN_B;

        /* Disable WWD, Wdcfg0Val = 0 & 0xF7 ; WWdcfg0Val = 0; So Final value of Wdcfg0Val = 0 */
        Wdcfg0Val &= ~HTXTLF35584_WDCFG0_WWDEN_B;

        HtxTLF35584_TxBuf[TLF_DE_INIT_WR_WDCFG0] = HTXTLF35584_WR_CMD(TLF_REG_WDCFG0,Wdcfg0Val);


        /* Disable Error pin monitoring and for other settings, set to user configured values */
        Syspcfg1Val &= ~HTXTLF35584_SYSPCFG1_EREN_B;

        #if(HTXTLF35584_ERRREC_TIME != 0U)
        Syspcfg1Val |= (HTXTLF35584_ERRREC_TIME);
        #endif
        #if(HTXTLF35584_SS2DEL_TIME != 0U)
        Syspcfg1Val |= (HTXTLF35584_SS2DEL_TIME);
        #endif
        #if(HTXTLF35584_ERR_REC_EN != 0U)
        Syspcfg1Val |= (HTXTLF35584_ERR_REC_EN);
        #endif
        #if(HTXTLF35584_ERRSLP_EN != 0U)
        Syspcfg1Val |= (HTXTLF35584_ERRSLP_EN);
        #endif

        HtxTLF35584_TxBuf[TLF_DE_INIT_WR_SYSPCFG1] = HTXTLF35584_WR_CMD(TLF_REG_SYSPCFG1,Syspcfg1Val);

        /* Set user configured values for these two registers:
           Protected System configuration request 0, Protected Watchdog configuration request 1 */
        Syspcfg0Val |= HTXTLF35584_STAND_BY_ENABLE;

        #if(HTXTLF35584_WDSLP_EN != 0U)
        Wdcfg1Val |= HTXTLF35584_WDSLP_EN;
        #endif
        
        HtxTLF35584_TxBuf[TLF_DE_INIT_WR_SYSPCFG0] = HTXTLF35584_WR_CMD(TLF_REG_SYSPCFG0,Syspcfg0Val);
        HtxTLF35584_TxBuf[TLF_DE_INIT_WR_WDCFG1] = HTXTLF35584_WR_CMD(TLF_REG_WDCFG1,Wdcfg1Val);

        /* Remaining protected configuration registers are not written since
           it would anyway get written with default values. But watchdog and error
           pin monitoring are enabled by default.*/
        HtxTLF35584_TxBuf[TLF_DE_INIT_WR_PROTCFG_4] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_LOCK_SEQU0);
        HtxTLF35584_TxBuf[TLF_DE_INIT_WR_PROTCFG_5] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_LOCK_SEQU1);
        HtxTLF35584_TxBuf[TLF_DE_INIT_WR_PROTCFG_6] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_LOCK_SEQU2);
        HtxTLF35584_TxBuf[TLF_DE_INIT_WR_PROTCFG_7] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_LOCK_SEQU3);

        HtxTLF35584_Data.JobResult = HTXWDGIF_JOB_ACCEPTED;
        HtxTLF35584_Data.NoOfBytesToBeSent = (uint8)TLF_DE_INIT_MAX;
        HtxTLF35584Qspi_TxRx(HtxTLF35584_TxBuf,HtxTLF35584_RxBuf,HtxTLF35584_Data.NoOfBytesToBeSent);
        Result = HTXWDGIF_JOB_ACCEPTED;
    }

    /*Set job result state*/
    HtxTLF35584_Data.JobResult = Result;

    /*Set up new CRC*/
    HtxTLF35584_lSetDataCrc();

    return Result;
} /* End of HtxTLF35584_DeInit() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_Activate(void)
 *
 * \description   : Enables the watchdog, error pin monitoring and puts the
 *                  driver to ACTIVE state.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED:
 *                    Watchdog Activation Job accepted
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                    CRC check on internal data structure failed
 *                  HTXWDGIF_JOB_INV_STATE:
 *                    TLF35584 is not in INIT or WAKE state
 *                  HTXWDGIF_JOB_BUSY:
 *                    HtxTLF35584 driver is already busy, processing another job
 *
 *******************************************************************************
 *
 * \service id:   : 0x1E
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2233
 *
 ******************************************************************************/
HtxWdgIf_ResultType HtxTLF35584_Activate(void)
{
    HtxWdgIf_ResultType Result;
    uint16 Syspcfg0;
    uint16 Syspcfg1;
    uint16 Wdcfg1;
    uint8 WdCfg0;

    Result = HTXWDGIF_JOB_FAILED_CRC;

    /* Check for CRC */
    if(HtxTLF35584_lCheckDataCrc() == E_OK)
    {
        Syspcfg0 = HtxTLF35584_Data.Syspcfg0;
        Syspcfg1 = HtxTLF35584_Data.Syspcfg1;

        /* Activate if TLF35584 is in INIT, NORMAL, and WAKE */
        if((HtxTLF35584_Data.DeviceState == HTXWDGIF_EXT_TLF_INIT) ||
           (HtxTLF35584_Data.DeviceState == HTXWDGIF_EXT_TLF_NORMAL) ||
           (HtxTLF35584_Data.DeviceState == HTXWDGIF_EXT_TLF_WAKE))
        {
            if(HtxTLF35584_Data.JobState == HTXTLF35584_IDLE)
            {
                /* Set JobState to HTXTLF35584_ENBLE_JOB */
                HtxTLF35584_Data.JobState = HTXTLF35584_ENBLE_JOB;

                /*Unlock TLF35584 to write to protected configuration registers*/
                /* First 4 bytes : Write Unlock sequence to unlock protected configuration registers */
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_PROTCFG_0] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_UNLOCK_SEQU0);
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_PROTCFG_1] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_UNLOCK_SEQU1);
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_PROTCFG_2] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_UNLOCK_SEQU2);
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_PROTCFG_3] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_UNLOCK_SEQU3);

                /* Configure TLF35584 based on user configuration */

                #if(HTXTLF35584_ERR_PIN_MON_ENABLE == STD_ON)
                /* Set error pin monitoring based on user configuration: */
                Syspcfg1 |= HTXTLF35584_SYSPCFG1_ERR_B;
                #endif

                /* Setup Watchdog configuration register 0: */
                if(0U == HtxTLF35584_Data.ConfigPtr->HeartbeatBase)
                {   /* 0.1ms wdg cycle time */
                    WdCfg0 = HTXTLF35584_WDCFG0_WDCYC_0_1MS_B;
                }
                else
                {   /* 1ms wdg cycle time */
                    WdCfg0 = HTXTLF35584_WDCFG0_WDCYC_1MS_B;
                }

                /* Check watchdog mode */
                if((TLF_WM_WWD_SPI == HtxTLF35584_Data.ConfigPtr->WatchdogMode) ||
                   (TLF_WM_FWD_WWD_SPI == HtxTLF35584_Data.ConfigPtr->WatchdogMode))
                {
                    /* Set up Watchdog in SPI mode */
                    WdCfg0 |= HTXTLF35584_WDCFG0_WWDTSEL_B;
                    WdCfg0 |= HTXTLF35584_WDCFG0_WWDEN_B;
                    if(TLF_WM_FWD_WWD_SPI == HtxTLF35584_Data.ConfigPtr->WatchdogMode)
                    {
                        /* Functional watchdog has to be enabled too */
                        WdCfg0 |= HTXTLF35584_WDCFG0_FWDEN_B;
                    }
                }
                else if(TLF_WM_WWD_WDI == HtxTLF35584_Data.ConfigPtr->WatchdogMode)
                {
                    /* Window watchdog in WDI mode selected by user */
                    WdCfg0 |= HTXTLF35584_WDCFG0_WWDEN_B;
                }
                else /*(TLF_WM_FWD == HtxTLF35584_Data.ConfigPtr->WatchdogMode) */
                {
                    /* Only functional watchdog selected by user */
                    WdCfg0 |= HTXTLF35584_WDCFG0_FWDEN_B;
                }

                /* WWD error threshold: */
                WdCfg0 |= (uint8)(HtxTLF35584_Data.ConfigPtr->WWDWdgErrorThreshold
                                  << HTXTLF35584_WDCFG0_WDETH_P);
                /* FWD error threshold: */
                Wdcfg1 = (uint16)HtxTLF35584_Data.ConfigPtr->FWDWdgErrorThreshold & HTXTLF35584_WDCFG1_FWETH_M;

                /* Update these configuration registers based on user configuration */

                Syspcfg0 |= HTXTLF35584_STAND_BY_ENABLE;

                #if(HTXTLF35584_ERRREC_TIME != 0U)
                Syspcfg1 |= (HTXTLF35584_ERRREC_TIME);
                #endif
                #if(HTXTLF35584_SS2DEL_TIME != 0U)
                Syspcfg1 |= (HTXTLF35584_SS2DEL_TIME);
                #endif
                #if(HTXTLF35584_ERR_REC_EN != 0U)
                Syspcfg1 |= (HTXTLF35584_ERR_REC_EN);
                #endif
                #if(HTXTLF35584_ERRSLP_EN != 0U)
                Syspcfg1 |= (HTXTLF35584_ERRSLP_EN);
                #endif

                #if(HTXTLF35584_WDSLP_EN != 0U)
                Wdcfg1 |= HTXTLF35584_WDSLP_EN;
                #endif

                /* No partial configuration of protected registers allowed.So write
                   values to all protected registers during each unlock-lock sequence.*/
                /* 5th byte : Protected System configuration request 0
                   6th byte : Protected System configuration request 1
                   7th byte : Protected Watchdog configuration request 0
                   8th byte : Protected Watchdog configuration request 1
                   9th byte : Protected Functional watchdog configuration
                   10th byte : Protected Window watchdog configuration request
                   11th byte : Protected Window watchdog configuration request
                   12th byte : Window watchdog service command */
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_SYSPCFG0]= HTXTLF35584_WR_CMD(TLF_REG_SYSPCFG0,Syspcfg0);
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_SYSPCFG1]= HTXTLF35584_WR_CMD(TLF_REG_SYSPCFG1,Syspcfg1);
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_WDCFG0] = HTXTLF35584_WR_CMD(TLF_REG_WDCFG0,WdCfg0);
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_WDCFG1] = HTXTLF35584_WR_CMD(TLF_REG_WDCFG1,Wdcfg1);
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_FWDCFG] = HTXTLF35584_WR_CMD(TLF_REG_FWDCFG,(HtxTLF35584_Data.ConfigPtr->FwdHeartbeat));
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_WWDCFG0] = HTXTLF35584_WR_CMD(TLF_REG_WWDCFG0,(HtxTLF35584_Data.ConfigPtr->CloseWindowHeartbeat));
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_WWDCFG1] = HTXTLF35584_WR_CMD(TLF_REG_WWDCFG1,(HtxTLF35584_Data.ConfigPtr->OpenWindowHeartbeat));
                HtxTLF35584_TxBuf[TLF_ENABLE_RD_WWDSCMD] = HTXTLF35584_RD_CMD(TLF_REG_WWDSCMD);

                /* Read back all protected register values to verify correctness */
                /* 13th byte : Read System configuration 0 status
                   14th byte : Read System configuration 1 status
                   15th byte : Read Watchdog configuration 0 status
                   16th byte : Read Watchdog configuration 1 status
                   17th byte : Functional watchdog configuration status
                   18th byte : Window watchdog configuration 0 status
                   19th byte : Window watchdog configuration 1 status */
                HtxTLF35584_TxBuf[TLF_ENABLE_RD_SYSPCFG0]= HTXTLF35584_RD_CMD(TLF_REG_SYSPCFG0);
                HtxTLF35584_TxBuf[TLF_ENABLE_RD_SYSPCFG1]= HTXTLF35584_RD_CMD(TLF_REG_SYSPCFG1);
                HtxTLF35584_TxBuf[TLF_ENABLE_RD_WDCFG0] = HTXTLF35584_RD_CMD(TLF_REG_WDCFG0);
                HtxTLF35584_TxBuf[TLF_ENABLE_RD_WDCFG1] = HTXTLF35584_RD_CMD(TLF_REG_WDCFG1);
                HtxTLF35584_TxBuf[TLF_ENABLE_RD_FWDCFG] = HTXTLF35584_RD_CMD(TLF_REG_FWDCFG);
                HtxTLF35584_TxBuf[TLF_ENABLE_RD_WWDCFG0] = HTXTLF35584_RD_CMD(TLF_REG_WWDCFG0);
                HtxTLF35584_TxBuf[TLF_ENABLE_RD_WWDCFG1] = HTXTLF35584_RD_CMD(TLF_REG_WWDCFG1);

                /* 20-23 bytes: Write lock sequence to lock protected configuration registers */
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_PROTCFG_4] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_LOCK_SEQU0);
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_PROTCFG_5] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_LOCK_SEQU1);
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_PROTCFG_6] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_LOCK_SEQU2);
                HtxTLF35584_TxBuf[TLF_ENABLE_WR_PROTCFG_7] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG,HTXTLF35584_LOCK_SEQU3);
                HtxTLF35584_Data.NoOfBytesToBeSent = (uint8)TLF_ENABLE_MAX;
                HtxTLF35584Qspi_TxRx(HtxTLF35584_TxBuf,HtxTLF35584_RxBuf,HtxTLF35584_Data.NoOfBytesToBeSent);
                Result = HTXWDGIF_JOB_ACCEPTED;
            }
            else
            {
                Result = HTXWDGIF_JOB_BUSY;
            }
        }
        else
        {
            Result = HTXWDGIF_JOB_INV_STATE;
        }
        /* Set job result state */
        HtxTLF35584_Data.JobResult = Result;

        /* Set up new CRC */
        HtxTLF35584_lSetDataCrc();
    }

    return Result;
} /* End of HtxTLF35584_Activate() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_Service
 *                  (const uint32 Signature)
 *
 * \description   : Services the watchdog and requests a new seed value
 *
 *******************************************************************************
 *
 * \param[in]     : Signature - The signature to be used for watchdog service
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED:
 *                  Job accepted and ongoing
 *
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                  CRC check on internal data structure failed
 *
 *                  HTXWDGIF_JOB_INV_STATE:
 *                  TLF35584 is not in INIT, SLEEP, WAKE or NORMAL state
 *
 *                  HTXWDGIF_JOB_BUSY:
 *                  HtxTLF35584 driver is already busy, processing another job
 *
 *                  HTXWDGIF_JOB_INVALID_SEED:
 *                  Invalid seed is stored internally, (call HtxTLF35584_GetSeed)
 *
 *                  HTXWDGIF_JOB_SUCCESS:
 *                  Successful servicing of the watchdog (window)
 *
 *******************************************************************************
 *
 * \service id:   : 0x1F
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2234
 *
 ******************************************************************************/
HtxWdgIf_ResultType HtxTLF35584_Service(const uint32 Signature)
{
    HtxWdgIf_ResultType Result;
    uint8 UsedSeed;

    Result = HTXWDGIF_JOB_FAILED_CRC;
    UsedSeed = HtxTLF35584_Data.LastSeed;

    if(HtxTLF35584_lCheckDataCrc() == E_OK)
    {
        Result = HTXWDGIF_JOB_INVALID_SEED;

        if(UsedSeed < HTXWDGIF_SAFEWDG_MAXNBR_SEED)
        {
            Result = HTXWDGIF_JOB_INV_STATE;

            /* Servicing is possible if TLF35584 is in INIT, WAKE or NORMAL mode */
            if((HtxTLF35584_Data.DeviceState == HTXWDGIF_EXT_TLF_INIT) ||
               (HtxTLF35584_Data.DeviceState == HTXWDGIF_EXT_TLF_WAKE) ||
               (HtxTLF35584_Data.DeviceState == HTXWDGIF_EXT_TLF_NORMAL))
            {
                if(TLF_WM_WWD_WDI != HtxTLF35584_Data.ConfigPtr->WatchdogMode)
                {
                    if(HtxTLF35584_Data.JobState == HTXTLF35584_IDLE)
                    {
                        /* Set JobState to HTXTLF35584_SER_JOB */
                        HtxTLF35584_Data.JobState = HTXTLF35584_SER_JOB;

                        if(TLF_WM_FWD == HtxTLF35584_Data.ConfigPtr->WatchdogMode)
                        {
                            /* Service functional watchdog: */
                            HtxTLF35584_lServiceFwd(UsedSeed, Signature);
                            Result = HTXWDGIF_JOB_ACCEPTED;

                            /* Reset seed: */
                            HtxTLF35584_Data.LastSeed = HTXWDGIF_SAFEWDG_SEED_NOTVALID;
                        } /* if(TLF_WM_FWD == HtxTLF35584_Data.ConfigPtr->WatchdogMode) */
                        else if(TLF_WM_FWD_WWD_SPI == HtxTLF35584_Data.ConfigPtr->WatchdogMode)
                        {
                            /* Service functional, as well as Window watchdog: */
                            HtxTLF35584_lServiceFwdAndWwd(UsedSeed, Signature);
                            Result = HTXWDGIF_JOB_ACCEPTED;

                            /* Reset seed: */
                            HtxTLF35584_Data.LastSeed = HTXWDGIF_SAFEWDG_SEED_NOTVALID;
                        }
                        else
                        {
                            /* Service window watchdog: */
                            Result = HtxTLF35584_lServiceWwd();
                        } /* if(TLF_WM_FWD != HtxTLF35584_Data.ConfigPtr->WatchdogMode) */
                    } /* if(HtxTLF35584_Data.JobState == HTXTLF35584_IDLE)*/
                    else
                    {
                        Result = HTXWDGIF_JOB_BUSY;
                    }
                }
                else
                {
                    /* Service window watchdog: */
                    Result = HtxTLF35584_lServiceWwd();
                }
            }
        }

        /* Set job result state */
        HtxTLF35584_Data.JobResult = Result;

        /* Set up new CRC */
        HtxTLF35584_lSetDataCrc();
    }

    return Result;
} /* End of HtxTLF35584_Service() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_GetWdgInfo(void)
 *
 * \description   : Initiates the read of TLF status registers
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED : Job accepted and ongoing
 *
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                  CRC check on internal data structure failed
 *
 *                  HTXWDGIF_JOB_BUSY:
 *                  The service not accepted as the bus is busy
 *******************************************************************************
 *
 * \service id:   : 0x20
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2235
 *
 ******************************************************************************/
 uint8 Htx_LDOTest = 0;
uint8 Htx_ReinitTest = 0;
HtxWdgIf_ResultType HtxTLF35584_GetWdgInfo(void)
{
    HtxWdgIf_ResultType Result;
    HtxTLF35584_WdgModeType lWdgMode;
    uint16 DevCtrl;
    uint16 DevCtrlN;
    uint8 lFWDErr;
    uint8 lWWDErr;
    uint8 ErrLimit;

    Result = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxTLF35584_lCheckDataCrc() == E_OK)
    {
        if(HtxTLF35584_Data.JobState == HTXTLF35584_IDLE)
        {
            /* Set JobState to HTXTLF35584_INFO_JOB */
            HtxTLF35584_Data.JobState = HTXTLF35584_INFO_JOB;

            /* Device status, seed value, error counter of functional watchdog,
               error counter of window watchdog and Window watchdog service command
               values are requested from TLF. This set of information is received
               irrespective of the TLF35584 mode. This information will be used by
               the driver based on the modes.
               This is done to avoid "if" checks in runtime to improve the drivers
               runtime performance */
            HtxTLF35584_TxBuf[TLF_INFO_RD_DEVSTAT] = HTXTLF35584_RD_CMD(TLF_REG_DEVSTAT);
            HtxTLF35584_TxBuf[TLF_INFO_RD_FWDSTAT1] = HTXTLF35584_RD_CMD(TLF_REG_FWDSTAT1);
            HtxTLF35584_TxBuf[TLF_INFO_RD_FWDSTAT0] = HTXTLF35584_RD_CMD(TLF_REG_FWDSTAT0);
            HtxTLF35584_TxBuf[TLF_INFO_RD_WWDSTAT] = HTXTLF35584_RD_CMD(TLF_REG_WWDSTAT);
            HtxTLF35584_TxBuf[TLF_INFO_RD_WWDSCMD] = HTXTLF35584_RD_CMD(TLF_REG_WWDSCMD);
            HtxTLF35584_Data.NoOfBytesToBeSent = (uint8)TLF_INFO_MAX;

            /* Send additional move-to-normal command in case the error counters
               are sufficient below the threshold: */
            if((HtxTLF35584_Data.ActivateRequested == TRUE) || (Htx_ReinitTest == 1))
            {
                Htx_ReinitTest = 0;
                lWdgMode = HtxTLF35584_Data.ConfigPtr->WatchdogMode;
                lFWDErr = E_NOT_OK;
                lWWDErr = E_NOT_OK;

                /* Check if Window WDG is enabled */
                if(lWdgMode != TLF_WM_FWD)
                {
                    ErrLimit = ((uint8)HtxTLF35584_Data.ConfigPtr->WWDWdgErrorThreshold > 1U) ?
                               ((uint8)HtxTLF35584_Data.ConfigPtr->WWDWdgErrorThreshold - HTXTLF35584_CONST_2) : 0U;
                    if(((uint8)HtxTLF35584_Data.ErrCtr & HTXTLF35584_WIND_WDG_ERR_MSK) <= ErrLimit)
                    {
                        lWWDErr = E_OK;
                    }
                }
                else
                {
                    lWWDErr = E_OK;
                }
                /* Check if Functional WDG is enabled */
                if((lWdgMode == TLF_WM_FWD) || (lWdgMode == TLF_WM_FWD_WWD_SPI))
                {
                    ErrLimit = ((uint8)HtxTLF35584_Data.ConfigPtr->FWDWdgErrorThreshold > 1U) ?
                               ((uint8)HtxTLF35584_Data.ConfigPtr->FWDWdgErrorThreshold - HTXTLF35584_CONST_2) : 0U;
                    ErrLimit = (uint8)((uint8)ErrLimit << HTXTLF35584_FUNC_WDG_ERR_OFF);

                    if(((uint8)HtxTLF35584_Data.ErrCtr & HTXTLF35584_FUNC_WDG_ERR_MSK) <= ErrLimit)
                    {
                        lFWDErr = E_OK;
                    }
                }
                else
                {
                    lFWDErr = E_OK;
                }

                /* Check ErrLimit for WWD and FWD: */
                if((lFWDErr == E_OK) && (lWWDErr == E_OK))
                {
                    /* Set the device state to Normal */
                    DevCtrl = HTXTLF35584_NOR_STATE_M;

                    /* Get user configured values for VREF,COMEN,TRK1,TRK2 */
                    #if(HTXTLF35584_VREF_EN != 0U)
                    DevCtrl |= HTXTLF35584_VREF_EN;
                    #endif
                    #if(HTXTLF35584_COM_EN != 0U)
                    if(1 != Htx_LDOTest)
                    {
                       DevCtrl |= HTXTLF35584_COM_EN;
                    }
                    else
                    {
                       DevCtrl &= ~HTXTLF35584_COM_EN;
                    }
                    #endif
                    #if(HTXTLF35584_TRK1_EN != 0U)
                    DevCtrl |= HTXTLF35584_TRK1_EN;
                    #endif
                    #if(HTXTLF35584_TRK2_EN != 0U)
                    DevCtrl |= HTXTLF35584_TRK2_EN;
                    #endif

                    /* Write inverse values to DEVCTRLN register */
                    DevCtrlN = HTXTLF35584_BITMASK ^ DevCtrl;

                    /* Move TLF35584 by writing to DEVCTRL and DEVCTRLN register */
                    HtxTLF35584_TxBuf[TLF_INFO_NORMAL_WR_DEVCTRL] = HTXTLF35584_WR_CMD(TLF_REG_DEVCTRL, DevCtrl);
                    HtxTLF35584_TxBuf[TLF_INFO_NORMAL_WR_DEVCTRLN] = HTXTLF35584_WR_CMD(TLF_REG_DEVCTRLN, DevCtrlN);
                    HtxTLF35584_Data.NoOfBytesToBeSent = (uint8)TLF_INFO_NORMAL_MAX;
                    HtxTLF35584_Data.ActivateRequested = FALSE;
                }
            }

            HtxTLF35584Qspi_TxRx(HtxTLF35584_TxBuf,HtxTLF35584_RxBuf,
                                 HtxTLF35584_Data.NoOfBytesToBeSent);
            Result = HTXWDGIF_JOB_ACCEPTED;
        }
        else
        {
            Result = HTXWDGIF_JOB_BUSY;
        }
        /* Set job result state */
        HtxTLF35584_Data.JobResult = Result;
        /* Set up new CRC */
        HtxTLF35584_lSetDataCrc();
    }

    return Result;
} /* End of HtxTLF35584_GetWdgInfo() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_GetSeed
 *                  (uint8* const NextSeedPtr)
 *
 * \description   : Returns the next seed value to be used
 *
 *******************************************************************************
 *
 * \param[in]     : NextSeedPtr - address to store the seed
 *
 * \param[out]    : NextSeedPtr - Pointer that will receive the next seed value
 *                                in case of success,remains unchanged otherwise
 *
 * \return        : HTXWDGIF_JOB_SUCCESS :
 *                     Operation successfully performed
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                     CRC check on internal data structure failed
 *                  HTXWDGIF_JOB_INV_PARAM : Invalid parameter supplied
 *                  HTXWDGIF_JOB_INVALID_SEED : No valid seed available
 *
 *******************************************************************************
 *
 * \service id:   : 0x21
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2236
 *
 ******************************************************************************/
HtxWdgIf_ResultType HtxTLF35584_GetSeed(uint8* const NextSeedPtr)
{
    HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxTLF35584_lCheckDataCrc() == E_OK)
    {
        /* Check for NULL pointer */
        if(NULL_PTR != NextSeedPtr)
        {
            /*Check if the seed is valid.*/
            if(HTXWDGIF_SAFEWDG_SEED_NOTVALID != HtxTLF35584_Data.LastSeed)
            {
                /* Update new seed and set result to SUCCESS. Seed will be updated when
                   GetWdgInfo() is called and will be updated in Main() */
                *NextSeedPtr = HtxTLF35584_Data.LastSeed;
                Result = HTXWDGIF_JOB_SUCCESS;
            } /* if(HTXWDG_SEED_NOTVALID == HtxTLF35584_Data.LastSeed) */
            else
            {
                Result = HTXWDGIF_JOB_INVALID_SEED;
            }
        } /* if(NULL_PTR != NextSeedPtr) */
        else
        {
            Result = HTXWDGIF_JOB_INV_PARAM;
        }
    }
    return Result;
} /* End of HtxTLF35584_GetSeed() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ExtWdgStateType HtxTLF35584_GetState(void)
 *
 * \description   : Returns the current state of the watchdog driver
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_EXT_TLF_INIT    - TLF35584 INIT state
 *                  HTXWDGIF_EXT_TLF_NORMAL  - TLF35584 in NORMAL state
 *                  HTXWDGIF_EXT_TLF_SLEEP   - TLF35584 in SLEEP state
 *                  HTXWDGIF_EXT_TLF_STANDBY - TLF35584 in STANDBY state
 *                  HTXWDGIF_EXT_TLF_WAKE    - TLF35584 in WAKE state
 *                  HTXWDGIF_EXT_TLF_NONE    - TLF35584 in RESET state
 *                  HTXWDGIF_EXT_TLF_UNDEFINED1 - TLF35584 in Undefined state
 *                  HTXWDGIF_EXT_TLF_UNDEFINED2 - TLF35584 in Undefined state
 *******************************************************************************
 *
 * \service id:   : 0x22
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2237
 *
 ******************************************************************************/
HtxWdgIf_ExtWdgStateType HtxTLF35584_GetState(void)
{
    HtxWdgIf_ExtWdgStateType DeviceState;

    /* Update the device state information requested by GetWdgInfo() API */
    if(HtxTLF35584_lCheckDataCrc() == E_OK)
    {
        DeviceState = HtxTLF35584_Data.DeviceState;
    }
    else
    {
        DeviceState = HTXWDGIF_EXT_TLF_UNDEFINED1;
    }

    return DeviceState;
} /* End of HtxTLF35584_GetState() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_GetJobResult(void)
 *
 * \description   : Returns the state / result of the last asynchronous
 *                  data transmission, i.e. either watchdog servicing
 *                  or user requests.
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_<JobResult>
 *                  (Refer User manual for all the possible values of
 *                   HtxWdgIf_ResultType return type)
 *
 *******************************************************************************
 *
 * \service id:   : 0x23
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2238
 *
 ******************************************************************************/
HtxWdgIf_ResultType HtxTLF35584_GetJobResult(void)
{
    HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_FAILED_CRC;

    if(HtxTLF35584_lCheckDataCrc() == E_OK)
    {
        Result = (HtxTLF35584_Data.JobResult);
    }

    return Result;
} /* End of HtxTLF35584_GetJobResult() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_UserRequest
 *                  (
 *                      HtxWdgIf_CmdType* const UserCmdPtr,
 *                      const uint8 Count
 *                  )
 *
 * \description   : This API sends user requests to the watchdog and
 *                  returns the watchdog response to the caller. The
 *                  requests are transferred asynchronously and the
 *                  HtxTLF35584_GetJobResult API needs to be polled to
 *                  check whether transmission succeeded and the response
 *                  is available.
 *
 *******************************************************************************
 *
 * \param[in]     : UserCmdPtr - pointer to the structure which has the
                        command nad data to be sent to the TLF35584 device
 *
 * \param[in]     : Count - Number of User commands to be sent
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED: Job accepted and ongoing
 *
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                  CRC check on internal data structure failed
 *
 *                  HTXWDGIF_JOB_INV_PARAM: Invalid parameter supplied
 *
 *                  HTXWDGIF_JOB_BUSY: HtxTLF35584 driver is already busy,
 *                  processing another job
 *
 *******************************************************************************
 *
 * \service id:   : 0x24
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2239
 *
 ******************************************************************************/
HtxWdgIf_ResultType HtxTLF35584_UserRequest
(
    HtxWdgIf_CmdType* const UserCmdPtr,
    const uint8 Count
)
{
    HtxWdgIf_ResultType Result;
    uint16 TxValue;
    uint8 Index;

    Result = HTXWDGIF_JOB_FAILED_CRC;

    /* Check data integrity via CRC */
    if(HtxTLF35584_lCheckDataCrc() == E_OK)
    {
        Result = HTXWDGIF_JOB_INV_PARAM;

        /* Plausibility check for the input parameters */
        if((NULL_PTR != UserCmdPtr) && ((Count > 0U) && (Count <= HTXTLF35584_MAXBUF)))
        {
            if(HtxTLF35584_Data.JobState == HTXTLF35584_IDLE)
            {
                /* Set JobState to HTXTLF35584_USR_JOB */
                HtxTLF35584_Data.JobState = HTXTLF35584_USR_JOB;

                /* Save user request buffer and size: */
                HtxTLF35584_Data.RequestPtr = UserCmdPtr;
                HtxTLF35584_Data.NoOfBytesToBeSent = Count;

                /* Copy user command and data to the TX buffer */
                for (Index = 0U; Index < Count; Index++)
                {
                    TxValue = (((uint16)UserCmdPtr[Index].ReqCmd) << HTXTLF35584_CMD_POS);
                    TxValue = (TxValue | (uint16)UserCmdPtr[Index].UserData) ;
                    HtxTLF35584_TxBuf[Index] = TxValue;
                    HtxTLF35584_RxBuf[Index] = 0U;
                } /* for (Index = 0U; Index < Count; Index++) */

                HtxTLF35584Qspi_TxRx(HtxTLF35584_TxBuf, HtxTLF35584_RxBuf, Count);
                Result = HTXWDGIF_JOB_ACCEPTED;
            }
            else
            {
                Result = HTXWDGIF_JOB_BUSY;
            }
        }

        /* Set job result state */
        HtxTLF35584_Data.JobResult = Result;

        /* Set up new CRC */
        HtxTLF35584_lSetDataCrc();
    }

    return Result;
} /* End of HtxTLF35584_UserRequest() */


/*******************************************************************************
 *
 * \function      : void HtxTLF35584_MainFunction(void)
 *
 * \description   : Main function handles watchdog servicing and cyclically
 *                  updates device information.
 *                  If the window watchdog mode is enabled, the WDI pin will be
 *                  set to high in this API. All asynchronous request's
 *                  responses will be evaluated in this function.
 *                  It should be called periodically by the OS or the
 *                  application software
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : 0x25
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2240
 *
 ******************************************************************************/
void HtxTLF35584_MainFunction(void)
{
    uint32 HtxTLF35584QspiError;
    uint32 TempOmsr;
    uint32 RxValue;
    uint32 TxValue;
    Std_ReturnType ProtectedRegistersConfigNotOk;
    Std_ReturnType HtxTLF35584QspiTransferComplete;
    uint8 LoopIndex;

    if(HtxTLF35584_lCheckDataCrc() == E_OK)
    {
        /* Check if WDI pin is to be toggled:.This will be done only if TLF35584 is
           configured in window watchdog - WDI mode. This flag will always be set
           to FALSE (set to FALSE in Init API) if window watchdog - WDI mode is not
           used.*/
        if(TRUE == HtxTLF35584_Data.WdiRestoreFlag)
        {
            /* Set WDI pin: */
            TempOmsr = (uint32)((uint32)1U << (HtxTLF35584_Data.ConfigPtr->WdiPin));
            HtxTLF35584_Data.ConfigPtr->WdiPort->OMSR.U = TempOmsr;
            /* Clear task flag: */
            HtxTLF35584_Data.WdiRestoreFlag = FALSE;
        } /* if((boolean)TRUE == HtxTLF35584_Data.WdiRestoreFlag) */

        /* Proceed further only if any Asynchronous activity is pending /requested */
        if(HtxTLF35584_Data.JobState != HTXTLF35584_IDLE)
        {
            /* Initialise with all Error flags set */
            HtxTLF35584QspiError = HTXTLF35584_QSPI_ERROR_SET;

            /* Call RxDone() to know the status of Async request placed by TLF API's */
            
            /* MISRA2012_RULE_1_3_JUSTIFICATION:
            Address of auto variable HtxTLF35584QspiError is used inside HtxTLF35584Qspi_RxDone()
            to read the values. The address is not used beyond the context of the
            local function called and hence it is not an issue */
            HtxTLF35584QspiTransferComplete = HtxTLF35584Qspi_RxDone(&HtxTLF35584QspiError);

            /* Check for QSPI communication errors */
            if(HtxTLF35584QspiError == 0x0U)
            {
                /* If Transfer is complete process the responses */
                if(HtxTLF35584QspiTransferComplete == E_OK)
                {
                    /* Check if all write commands were cycled back by TLF35584 */
                    if(HtxTLF35584_lCheckWrData(HtxTLF35584_Data.NoOfBytesToBeSent) == E_OK)
                    {
                        switch (HtxTLF35584_Data.JobState)
                        {
                        /* Process Unlock Job, possibly from HtxTLF35584_Init */
                        case HTXTLF35584_ULOCK_JOB:
                            HtxTLF35584_lProcessUnlock();
                            break;

                        /* Process the lock job after the configuration is updated */
                        case HTXTLF35584_LOCK_JOB:

                            ProtectedRegistersConfigNotOk = E_NOT_OK;
                            for(LoopIndex = 0U; ((LoopIndex <
                                                 (uint8)((uint8)TLF_LOCK_WR_PROTCFG_0 - (uint8)TLF_LOCK_RD_SYSPCFG0))
                                                  && (ProtectedRegistersConfigNotOk != E_OK)); LoopIndex++)
                            {
                                /* Check if data written to protected configuration registers are fine.
                                   TLF35584 will send inverted values of data written to protected registers */
                                RxValue = HtxTLF35584_RxBuf[(LoopIndex + (uint8)TLF_LOCK_RD_SYSPCFG0)] & (uint32)HTXTLF35584_8BIT_MASK;
                                TxValue = HtxTLF35584_TxBuf[LoopIndex] & (uint32)HTXTLF35584_8BIT_MASK;

                                /* Data send (Tx) and read request from the protected registers (Rx) xor
                                   will be FF, if data written to protected configuration registers are OK */
                                if((TxValue ^ RxValue) != (uint32)HTXTLF35584_8BIT_MASK)
                                {
                                    ProtectedRegistersConfigNotOk = E_OK;
                                }
                            }
                            if(ProtectedRegistersConfigNotOk == E_NOT_OK)
                            {
                                /* Issue command to check if disable request by the driver reflects at TLF35584 status too */
                                HtxTLF35584_TxBuf[TLF_CHK_INIT_RD_RWDCFG0] = HTXTLF35584_RD_CMD(TLF_REG_RWDCFG0);
                                HtxTLF35584_Data.NoOfBytesToBeSent = (uint8)TLF_CHK_INIT_MAX;
                                HtxTLF35584_Data.JobState = HTXTLF35584_CHK_INIT_JOB;
                                HtxTLF35584Qspi_TxRx(HtxTLF35584_TxBuf,HtxTLF35584_RxBuf,HtxTLF35584_Data.NoOfBytesToBeSent);
                            }
                            else
                            {
                                HtxTLF35584_Data.JobResult = HTXWDGIF_JOB_READBACK_FAIL;
                                HtxTLF35584_Data.JobState = HTXTLF35584_IDLE;
                            }
                            break;

                        /* Process the verification of HtxTLF35584_Init */
                        case HTXTLF35584_CHK_INIT_JOB:
                            /* Read RWDCFG0 register to check if watchdogs are disabled
                               (To check if disable request is executed as intended) */
                            if((HTXTLF35584_RWDCFG0_M & (uint8)HtxTLF35584_RxBuf[TLF_CHK_INIT_RD_RWDCFG0]) == 0U)
                            {
                                HtxTLF35584_Data.DeviceState = HTXWDGIF_EXT_TLF_INIT;
                                HtxTLF35584_Data.JobResult = HTXWDGIF_JOB_SUCCESS;
                            }
                            else
                            {
                                /* Watchdog not initialized properly. Set the state to unknown/reset */
                                HtxTLF35584_Data.DeviceState = HTXWDGIF_EXT_TLF_NONE;
                                HtxTLF35584_Data.JobResult = HTXWDGIF_JOB_INIT_FAIL;
                            }
                            HtxTLF35584_Data.JobState = HTXTLF35584_IDLE;
                            break;

                        /* Process the Job to enable the watchdog, possibly from HtxTLF35584_Activate */
                        case HTXTLF35584_ENBLE_JOB:
                            HtxTLF35584_lProcessEnJob();
                            break;

                        /* Process the Activate service job */
                        case HTXTLF35584_ACT_SRV_JOB:
                            /* Activation successful. Get seed and WwdScmd value for servicing */
                            HtxTLF35584_lProcessCyclicRequest();
                            break;

                        /* Process the job from HtxTLF35584_GetInfo */
                        case HTXTLF35584_INFO_JOB:
                            HtxTLF35584_lProcessCyclicRequest();
                            break;

                        /* Process the Service job, possibly from HtxTLF35584_Service */
                        case HTXTLF35584_SER_JOB:
                            HtxTLF35584_Data.JobResult = HTXWDGIF_JOB_SUCCESS;
                            HtxTLF35584_Data.JobState = HTXTLF35584_IDLE;
                            break;

                        /* Process the user request job, from HtxTLF35584_UserRequest */
                        case HTXTLF35584_USR_JOB:
                            HtxTLF35584_lProcessUsrReq();
                            break;

                        /* Process the deinit job, from HtxTLF35584_DeInit */
                        case HTXTLF35584_DEINIT_JOB:
                            /* De-initialize QSPI driver */
                            HtxTLF35584Qspi_DeInit();
                            HtxTLF35584_Data.JobResult = HTXWDGIF_JOB_SUCCESS;
                            HtxTLF35584_Data.JobState = HTXTLF35584_IDLE;
                            break;

                        default:
                            /* Nothing to do */
                            break;
                        } /* switch (HtxTLF35584_Data.JobState) */
                    }
                    else
                    {
                        HtxTLF35584_Data.JobResult = HTXWDGIF_JOB_RD_DATA_FAIL;
                        HtxTLF35584_Data.JobState = HTXTLF35584_IDLE;
                    } /* if(HtxTLF35584_lCheckWrData(HtxTLF35584_Data.NoOfBytesToBeSent) == E_OK) */
                }
            }
            else
            {
                HtxTLF35584_Data.JobResult = HTXWDGIF_JOB_COM_ERR;
                HtxTLF35584_Data.JobState = HTXTLF35584_IDLE;
            } /* if(HtxTLF35584QspiError == 0x0U) */
        }

        /* Seed, Device state and error count info updated. Set new CRC */
        HtxTLF35584_lSetDataCrc();
    }
    else
    {   /* Set the CRC error */
        HtxTLF35584_Data.JobResult = HTXWDGIF_JOB_COM_ERR;
    }
} /* End of HtxTLF35584_MainFunction() */


/*******************************************************************************
 *
 * \function      : HtxWdgIf_ResultType HtxTLF35584_GetErrCntr
 *                  (uint8* const ErrCtrPtr)
 *
 * \description   : Returns error counter of configured watchdog
 *
 *******************************************************************************
 *
 * \param[in]     : ErrCtrPtr - pointer to report back error counter value
 *
 * \param[out]    : ErrCtrPtr - returned error counter value
 *
 * \return        : HTXWDGIF_JOB_SUCCESS: Operation successfully performed
 *
 *                  HTXWDGIF_JOB_FAILED_CRC:
 *                  CRC check on internal data structure failed
 *
 *                  HTXWDGIF_JOB_INV_PARAM: Failed due to invalid input parameter
 *
 *******************************************************************************
 *
 * \service id:   : 0x30
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2244
 *
 ******************************************************************************/
HtxWdgIf_ResultType HtxTLF35584_GetErrCntr(uint8* const ErrCtrPtr)
{
    HtxWdgIf_ResultType Result;

    Result = HTXWDGIF_JOB_FAILED_CRC;

    /*Check for CRC*/
    if(HtxTLF35584_lCheckDataCrc() == E_OK)
    {
        Result = HTXWDGIF_JOB_INV_PARAM;

        /* Check for NULL pointer */
        if(NULL_PTR != ErrCtrPtr)
        {
            *ErrCtrPtr = HtxTLF35584_Data.ErrCtr;
            Result = HTXWDGIF_JOB_SUCCESS;
        }
    }
    return Result;
} /* End of HtxTLF35584_GetErrCntr() */


/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : static void HtxTLF35584_lProcessCyclicRequest(void)
 *
 * \description   : Process cyclic responses received from TLF
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2573
 *
 ******************************************************************************/
static void HtxTLF35584_lProcessCyclicRequest(void)
{
    uint8 lDeviceState;
    uint8 WwdgErrCtr;
    uint8 FuncWdgErrCtr;

    /* Fetch the device state and functional watchdog error count from the Rx Buffer */
    lDeviceState = (uint8)(HtxTLF35584_RxBuf[TLF_INFO_RD_DEVSTAT] & HTXTLF35584_STATE_M);
    FuncWdgErrCtr = (uint8)(HtxTLF35584_RxBuf[TLF_INFO_RD_FWDSTAT1] & HTXTLF35584_ECNT_M);
    HtxTLF35584_Data.LastSeed = (uint8)(HtxTLF35584_RxBuf[TLF_INFO_RD_FWDSTAT0] & HTXTLF35584_FW_QUEST_M);
    HtxTLF35584_Data.RspCnt = (uint8)((HtxTLF35584_RxBuf[TLF_INFO_RD_FWDSTAT0] & HTXTLF35584_FW_RSPCNT_M) >> HTXTLF35594_SHIFT_4);

    /* Fetch the Window watchdog error count from the Rx Buffer */
    WwdgErrCtr = (uint8)(HtxTLF35584_RxBuf[TLF_INFO_RD_WWDSTAT] & HTXTLF35584_ECNT_M);
    HtxTLF35584_Data.LastWwdScmd = (uint8)HtxTLF35584_RxBuf[TLF_INFO_RD_WWDSCMD];

    /* Assign the device state */
    switch(lDeviceState)
    {
         case 0U: HtxTLF35584_Data.DeviceState = HTXWDGIF_EXT_TLF_NONE;
                break;

         case 1U: HtxTLF35584_Data.DeviceState = HTXWDGIF_EXT_TLF_INIT;
                break;
                 
         case 2U: HtxTLF35584_Data.DeviceState = HTXWDGIF_EXT_TLF_NORMAL;
                break;
                 
         case 3U: HtxTLF35584_Data.DeviceState = HTXWDGIF_EXT_TLF_SLEEP;
                break;
                 
         case 4U: HtxTLF35584_Data.DeviceState = HTXWDGIF_EXT_TLF_STANDBY;
                break;

         case 5U: HtxTLF35584_Data.DeviceState = HTXWDGIF_EXT_TLF_WAKE;
                break;
                 
         case 6U: HtxTLF35584_Data.DeviceState = HTXWDGIF_EXT_TLF_UNDEFINED1;
                break;
                 
         /* case 7U: This case is handled in default */

         default: HtxTLF35584_Data.DeviceState = HTXWDGIF_EXT_TLF_UNDEFINED2;
       	        break;
    }

    /* Store both, WWD and FWD error counters: */
    HtxTLF35584_Data.ErrCtr = ((uint8)((FuncWdgErrCtr & HTXTLF35584_MASK_BIT) << HTXTLF35594_SHIFT_4) | WwdgErrCtr);

    /* Cyclic request successful */
    HtxTLF35584_Data.JobResult = HTXWDGIF_JOB_SUCCESS;

    /* Cyclic request completed */
    HtxTLF35584_Data.JobState = HTXTLF35584_IDLE;
} /* End of HtxTLF35584_lProcessCyclicRequest() */


/*******************************************************************************
 *
 * \function      : static void HtxTLF35584_lProcessUnlock(void)
 *
 * \description   : This function is called by HtxTLF35584_Main() to process
 *                  HTXTLF35584_ULOCK_JOB request
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2574
 *
 ******************************************************************************/
static void HtxTLF35584_lProcessUnlock(void)
{
    uint16 Wdgcfg0Val;
    uint16 Syspcfg0Val;
    uint16 Syspcfg1Val;

    /* Copy protected configuration register values from Rx Buffer */
    Syspcfg0Val = (uint16)(((uint16)1U) & (HtxTLF35584_RxBuf[TLF_UNLOCK_RD_RSYSPCFG0]));
    Syspcfg1Val = (uint16)(HTXTLF35584_8BIT_MASK & (HtxTLF35584_RxBuf[TLF_UNLOCK_RD_RSYSPCFG1]));
    Wdgcfg0Val = (uint16)(HTXTLF35584_8BIT_MASK & (HtxTLF35584_RxBuf[TLF_UNLOCK_RD_RWDCFG0]));
    HtxTLF35584_Data.Wdcfg1 = (uint16)(HTXTLF35584_LOWER_5_BIT_MASK & (HtxTLF35584_RxBuf[TLF_UNLOCK_RD_RWDCFG1]));
    HtxTLF35584_Data.Fwdcfg = (uint16)(HTXTLF35584_LOWER_5_BIT_MASK & (HtxTLF35584_RxBuf[TLF_UNLOCK_RD_RFWDCFG]));
    HtxTLF35584_Data.Wwdcfg0 = (uint16)(HTXTLF35584_LOWER_5_BIT_MASK & (HtxTLF35584_RxBuf[TLF_UNLOCK_RD_RWWDCFG0]));
    HtxTLF35584_Data.Wwdcfg1 = (uint16)(HTXTLF35584_LOWER_5_BIT_MASK & (HtxTLF35584_RxBuf[TLF_UNLOCK_RD_RWWDCFG1]));

    /* Disable FWD and WWD */
    Wdgcfg0Val = (uint16)(Wdgcfg0Val & HTXTLF35584_CLEAR_FWD_WWD);
    	
    HtxTLF35584_Data.Wdcfg0 = Wdgcfg0Val;

    /* Disable request for standby LDO */
    /* Note: Disabling Standby LDO makes the board reset and 1.25V LED goes OFF */
    /* Might be coz, this controls the V_STDBY for the uC, which would reset the power supply by PMS V-EVRSB detector */
    HtxTLF35584_Data.Syspcfg0 = Syspcfg0Val;

    /* Disable error pin monitoring*/
    Syspcfg1Val =(uint16)(Syspcfg1Val & HTXTLF35584_CLEAR_ERR_MON);
    HtxTLF35584_Data.Syspcfg1 = Syspcfg1Val;

    /* No partial configuration of protected registers allowed.So write values
       to all protected registers during each unlock-lock sequence */
    HtxTLF35584_TxBuf[TLF_LOCK_WR_SYSPCFG0] = HTXTLF35584_WR_CMD(TLF_REG_SYSPCFG0, HtxTLF35584_Data.Syspcfg0);
    HtxTLF35584_TxBuf[TLF_LOCK_WR_SYSPCFG1] = HTXTLF35584_WR_CMD(TLF_REG_SYSPCFG1, HtxTLF35584_Data.Syspcfg1);
    HtxTLF35584_TxBuf[TLF_LOCK_WR_WDCFG0] = HTXTLF35584_WR_CMD(TLF_REG_WDCFG0, HtxTLF35584_Data.Wdcfg0);
    HtxTLF35584_TxBuf[TLF_LOCK_WR_WDCFG1] = HTXTLF35584_WR_CMD(TLF_REG_WDCFG1, HtxTLF35584_Data.Wdcfg1);
    HtxTLF35584_TxBuf[TLF_LOCK_WR_FWDCFG] = HTXTLF35584_WR_CMD(TLF_REG_FWDCFG, HtxTLF35584_Data.Fwdcfg);
    HtxTLF35584_TxBuf[TLF_LOCK_WR_WWDCFG0] = HTXTLF35584_WR_CMD(TLF_REG_WWDCFG0, HtxTLF35584_Data.Wwdcfg0);
    HtxTLF35584_TxBuf[TLF_LOCK_WR_WWDCFG1] = HTXTLF35584_WR_CMD(TLF_REG_WWDCFG1, HtxTLF35584_Data.Wwdcfg1);

    /* Read back all protected register values to verify correctness */
    HtxTLF35584_TxBuf[TLF_LOCK_RD_SYSPCFG0] = HTXTLF35584_RD_CMD(TLF_REG_SYSPCFG0);
    HtxTLF35584_TxBuf[TLF_LOCK_RD_SYSPCFG1] = HTXTLF35584_RD_CMD(TLF_REG_SYSPCFG1);
    HtxTLF35584_TxBuf[TLF_LOCK_RD_WDCFG0] = HTXTLF35584_RD_CMD(TLF_REG_WDCFG0);
    HtxTLF35584_TxBuf[TLF_LOCK_RD_WDCFG1] = HTXTLF35584_RD_CMD(TLF_REG_WDCFG1);
    HtxTLF35584_TxBuf[TLF_LOCK_RD_FWDCFG] = HTXTLF35584_RD_CMD(TLF_REG_FWDCFG);
    HtxTLF35584_TxBuf[TLF_LOCK_RD_WWDCFG0] = HTXTLF35584_RD_CMD(TLF_REG_WWDCFG0);
    HtxTLF35584_TxBuf[TLF_LOCK_RD_WWDCFG1] = HTXTLF35584_RD_CMD(TLF_REG_WWDCFG1);

    /* Issue lock command */
    HtxTLF35584_TxBuf[TLF_LOCK_WR_PROTCFG_0] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG, HTXTLF35584_LOCK_SEQU0);
    HtxTLF35584_TxBuf[TLF_LOCK_WR_PROTCFG_1] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG, HTXTLF35584_LOCK_SEQU1);
    HtxTLF35584_TxBuf[TLF_LOCK_WR_PROTCFG_2] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG, HTXTLF35584_LOCK_SEQU2);
    HtxTLF35584_TxBuf[TLF_LOCK_WR_PROTCFG_3] = HTXTLF35584_WR_CMD(TLF_REG_PROTCFG, HTXTLF35584_LOCK_SEQU3);
    HtxTLF35584_Data.JobState = HTXTLF35584_LOCK_JOB;
    HtxTLF35584_Data.NoOfBytesToBeSent = (uint8)TLF_LOCK_MAX;

    HtxTLF35584Qspi_TxRx(HtxTLF35584_TxBuf,HtxTLF35584_RxBuf,HtxTLF35584_Data.NoOfBytesToBeSent);
} /* End of HtxTLF35584_lProcessUnlock() */


/*******************************************************************************
 *
 * \function      : static void HtxTLF35584_lProcessEnJob(void)
 *
 * \description   : This function is called by HtxTLF35584_Main() to process
 *                  HTXTLF35584_ENBLE_JOB request
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2572
 *
 ******************************************************************************/
static void HtxTLF35584_lProcessEnJob(void)
{
    uint32 RxValue;
    uint32 TxValue;
    uint8 LoopIndex;
    Std_ReturnType ProtectedRegistersConfigNotOk;

    ProtectedRegistersConfigNotOk = E_NOT_OK;

    for (LoopIndex = (uint8)TLF_ENABLE_WR_SYSPCFG0;
         ((LoopIndex < (uint8)TLF_ENABLE_RD_WWDSCMD) && (ProtectedRegistersConfigNotOk != E_OK));
         LoopIndex++)
    {
        /* Check if data written to protected configuration registers are
           fine. TLF35584 will send inverted values of data written to protected registers */
        
        RxValue = HtxTLF35584_RxBuf[(LoopIndex + (uint8)((uint8)TLF_ENABLE_RD_SYSPCFG0 - (uint8)TLF_ENABLE_WR_SYSPCFG0))] & (uint32)HTXTLF35584_8BIT_MASK;
        TxValue = HtxTLF35584_TxBuf[LoopIndex] & (uint32)HTXTLF35584_8BIT_MASK;

        /* Data send (Tx) and read request from the protected registers
           (Rx) xor will be 0xFF, if data written to protected configuration registers are OK */
        if(( TxValue ^ RxValue) != (uint32)HTXTLF35584_BITMASK)
        {
            ProtectedRegistersConfigNotOk = E_OK;
        }
    }

    if(ProtectedRegistersConfigNotOk == E_NOT_OK)
    {
        /* Read status registers */
        HtxTLF35584_TxBuf[TLF_ACT_SER_RD_DEVSTAT] = HTXTLF35584_RD_CMD(TLF_REG_DEVSTAT);
        HtxTLF35584_TxBuf[TLF_ACT_SER_RD_FWDSTAT1] = HTXTLF35584_RD_CMD(TLF_REG_FWDSTAT1);
        HtxTLF35584_TxBuf[TLF_ACT_SER_RD_FWDSTAT0] = HTXTLF35584_RD_CMD(TLF_REG_FWDSTAT0);
        HtxTLF35584_TxBuf[TLF_ACT_SER_RD_WWDSTAT] = HTXTLF35584_RD_CMD(TLF_REG_WWDSTAT);
        HtxTLF35584_TxBuf[TLF_ACT_SER_RD_WWDSCMD] = HTXTLF35584_RD_CMD(TLF_REG_WWDSCMD);
        HtxTLF35584_Data.NoOfBytesToBeSent = (uint8)TLF_ACT_SER_MAX;

        /* Set activate request to issue move-to-normal command in GetInfo API: */
        HtxTLF35584_Data.ActivateRequested = TRUE;
        HtxTLF35584_Data.JobState = HTXTLF35584_ACT_SRV_JOB;
        HtxTLF35584Qspi_TxRx(HtxTLF35584_TxBuf,HtxTLF35584_RxBuf, HtxTLF35584_Data.NoOfBytesToBeSent);
    }
    else
    {
        HtxTLF35584_Data.JobResult = HTXWDGIF_JOB_READBACK_FAIL;
        HtxTLF35584_Data.JobState = HTXTLF35584_IDLE;
    }
} /*  End of HtxTLF35584_lProcessEnJob() */

/*******************************************************************************
 *
 * \function      : static HtxWdgIf_ResultType HtxTLF35584_lServiceWwd(void)
 *
 * \description   : Services the window watchdog
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_SUCCESS: Watchdog service succeeded
 *
 *                  HTXWDGIF_JOB_ACCEPTED:
 *                  Watchdog service was started and is still pending
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous (triggered by WDI pin)
 *                  Asynchronous (triggered by SPI frame)
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2566
 *
 ******************************************************************************/
static HtxWdgIf_ResultType HtxTLF35584_lServiceWwd(void)
{
    HtxWdgIf_ResultType Result;
    uint32 TempOmcr;
    uint8 TempOmcrBase;

    /* Check operation mode window watchdog: */
    if(TLF_WM_WWD_WDI == HtxTLF35584_Data.ConfigPtr->WatchdogMode)
    {
        /* Triggering via GPIO pin selected, clear WDI pin to generate a falling edge: */
        TempOmcrBase = (HtxTLF35584_Data.ConfigPtr->WdiPin) + HTXTLF35584_OMCR_BASE_P;
        TempOmcr = (uint32)((uint32)1U << TempOmcrBase);
        HtxTLF35584_Data.ConfigPtr->WdiPort->OMCR.U = TempOmcr;

        /* Set up task for WDI restoration: */
        HtxTLF35584_Data.WdiRestoreFlag = TRUE;

        Result = HTXWDGIF_JOB_SUCCESS;

    } /* if(TLF_WM_WWD_WDI == HtxTLF35584_Data.ConfigPtr->WatchdogMode) */
    else
    {
        /* Invert previously read WWDSCMD.TRIG bit: */
        HtxTLF35584_Data.LastWwdScmd ^= (uint8)0x01U;

        HtxTLF35584_TxBuf[TLF_SER_WWD_WR_WWDSCMD] =
            HTXTLF35584_WR_CMD(TLF_REG_WWDSCMD, HtxTLF35584_Data.LastWwdScmd);

        HtxTLF35584_Data.NoOfBytesToBeSent = (uint8)TLF_SER_WWD_MAX;

        /*Send service command to TLF35584*/
        HtxTLF35584Qspi_TxRx(HtxTLF35584_TxBuf,HtxTLF35584_RxBuf,
                             HtxTLF35584_Data.NoOfBytesToBeSent);
        Result = HTXWDGIF_JOB_ACCEPTED;
    }

    return Result;
} /* End of HtxTLF35584_lServiceWwd() */


/*******************************************************************************
 *
 * \function      : static void HtxTLF35584_lServiceFwd
 *                  (
 *                      const uint8 UsedSeed,
 *                      const uint32 Signature
 *                  )
 *
 * \description   : Services the functional watchdog
 *
 *******************************************************************************
 *
 * \param[in]     : UsedSeed - Seed considered to generate the signature
 *
 * \param[in]     : Signature - signature used to service the watchdog
 *
 * \param[out]    : None
 *
 * \return        : HTXWDGIF_JOB_ACCEPTED -
 *                          Watchdog service was started and is still pending
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2567
 *
 ******************************************************************************/
static void HtxTLF35584_lServiceFwd
(
    const uint8 UsedSeed,
    const uint32 Signature
)
{
    uint32 SignTmp;
    uint8 Rsp;

    /* Extract the TLF response(signature) from the configuration */
    SignTmp = Signature ^ HtxTLF35584_Data.ConfigPtr->XorResponse[UsedSeed];

    /* From the signature extract 4 bytes and write the first 3 bytes to
       FUNCWDGRSP register and the last byte to FUNCWDGRSPSYNC register
       to service the functional watchdog */
    switch (HtxTLF35584_Data.RspCnt)
    {
    case 0U:
        Rsp = (uint8)(SignTmp & HTXTLF35584_BYTE_0_MASK);
        HtxTLF35584_TxBuf[0U] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSPSYNC, Rsp);
        break;

    case 1U:
        Rsp = (uint8)((SignTmp & HTXTLF35584_BYTE_1_MASK) >> HTXTLF35584_CONST_8);
        HtxTLF35584_TxBuf[0U] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSP, Rsp);
        Rsp = (uint8)(SignTmp & HTXTLF35584_BYTE_0_MASK);
        HtxTLF35584_TxBuf[1U] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSPSYNC, Rsp);
        break;

    case 2U:
        Rsp = (uint8)((SignTmp & HTXTLF35584_BYTE_2_MASK) >> HTXTLF35584_CONST_16);
        HtxTLF35584_TxBuf[0U] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSP, Rsp);
        Rsp = (uint8)((SignTmp & HTXTLF35584_BYTE_1_MASK) >> HTXTLF35584_CONST_8);
        HtxTLF35584_TxBuf[1U] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSP, Rsp);
        Rsp = (uint8)(SignTmp & HTXTLF35584_BYTE_0_MASK);
        HtxTLF35584_TxBuf[HTXTLF35584_ARR_INDEX_2] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSPSYNC, Rsp);
        break;

    case 3U:
    /* This case is handled in default */

    default:
        Rsp = (uint8)((SignTmp & HTXTLF35584_BYTE_3_MASK) >> HTXTLF35584_CONST_24);
        HtxTLF35584_TxBuf[0U] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSP, Rsp);
        Rsp = (uint8)((SignTmp & HTXTLF35584_BYTE_2_MASK) >> HTXTLF35584_CONST_16);
        HtxTLF35584_TxBuf[1U] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSP, Rsp);
        Rsp = (uint8)((SignTmp & HTXTLF35584_BYTE_1_MASK) >> HTXTLF35584_CONST_8);
        HtxTLF35584_TxBuf[HTXTLF35584_ARR_INDEX_2] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSP, Rsp);
        Rsp = (uint8)(SignTmp & HTXTLF35584_BYTE_0_MASK);
        HtxTLF35584_TxBuf[HTXTLF35584_ARR_INDEX_3] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSPSYNC, Rsp);
        break;
    } /* switch (HtxTLF35584_Data.RspCnt) */

    HtxTLF35584_Data.NoOfBytesToBeSent = (uint8)(HtxTLF35584_Data.RspCnt + 1U);

    HtxTLF35584Qspi_TxRx(HtxTLF35584_TxBuf,HtxTLF35584_RxBuf, HtxTLF35584_Data.NoOfBytesToBeSent);
} /* End of HtxTLF35584_lServiceFwd() */


/*******************************************************************************
 *
 * \function      : static void HtxTLF35584_lServiceFwdAndWwd
 *                  (
 *                      const uint8 UsedSeed,
 *                      const uint32 Signature
 *                  )
 *
 * \description   : Services the both functional and window watchdog
 *
 *******************************************************************************
 *
 * \param[in]     : UsedSeed - Seed considered to generate the signature
 *
 * \param[in]     : Signature - signature used to service the watchdog
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Asynchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2568
 *
 ******************************************************************************/
const uint32 HtxTLF35584_u32DebugXorResponse[16] = {   
   0xFF0FF000,
   0xB040BF4F,
   0xE919E616,
   0xA656A959,
   0x75857A8A,
   0x3ACA35C5,
   0x63936C9C,
   0x2CDC23D3,
   0xD222DD2D,
   0x9D6D9262,
   0xC434CB3B,
   0x8B7B8474,
   0x58A857A7,
   0x17E718E8,
   0x4EBE41B1,
   0x01F10EFE
};

static void HtxTLF35584_lServiceFwdAndWwd
(
    const uint8 UsedSeed,
    const uint32 Signature
)
{
    uint32 SignTmp;
    uint8 Rsp;
    boolean bLocProgFlowStartFlag = FALSE;

    /* Extract the TLF response(signature) from the configuration */
#ifdef _TLF35584_FWD_DEBUG_ENABLE_
    SignTmp = HtxTLF35584_Data.ConfigPtr->XorResponse[UsedSeed];
#else
    bLocProgFlowStartFlag = TstM_bGetProgFlowStartFlag();

    if(FALSE == bLocProgFlowStartFlag)
    {
        SignTmp = HtxTLF35584_u32DebugXorResponse[UsedSeed];
    }
    else
    {
        SignTmp = HtxTLF35584_u32DebugXorResponse[UsedSeed];
        // SignTmp = Signature ^ HtxTLF35584_Data.ConfigPtr->XorResponse[UsedSeed];
    }
#endif

    /* Invert previously read WWDSCMD.TRIG bit: */
    HtxTLF35584_Data.LastWwdScmd ^= (uint8)0x01U;

    /* Prepare TX buffer for data transfer, write new trigger bit: */
    HtxTLF35584_TxBuf[TLF_SER_FWD_WWD_WR_WWDSCMD] =
        HTXTLF35584_WR_CMD(TLF_REG_WWDSCMD,HtxTLF35584_Data.LastWwdScmd);

    /* From the signature extract 4 bytes and write the first 3 bytes to
       FUNCWDGRSP register and the last byte to FUNCWDGRSPSYNC register
       to service the functional watchdog */
    switch (HtxTLF35584_Data.RspCnt)
    {
    case 0U:
        Rsp = (uint8)(SignTmp & HTXTLF35584_BYTE_0_MASK);
        HtxTLF35584_TxBuf[1U] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSPSYNC, Rsp);
        break;

    case 1U:
        Rsp = (uint8)((SignTmp & HTXTLF35584_BYTE_1_MASK) >> HTXTLF35584_CONST_8);
        HtxTLF35584_TxBuf[1U] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSP, Rsp);
        Rsp = (uint8)(SignTmp & HTXTLF35584_BYTE_0_MASK);
        HtxTLF35584_TxBuf[HTXTLF35584_ARR_INDEX_2] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSPSYNC, Rsp);
        break;

    case 2U:
        Rsp = (uint8)((SignTmp & HTXTLF35584_BYTE_2_MASK) >> HTXTLF35584_CONST_16);
        HtxTLF35584_TxBuf[1U] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSP, Rsp);
        Rsp = (uint8)((SignTmp & HTXTLF35584_BYTE_1_MASK) >> HTXTLF35584_CONST_8);
        HtxTLF35584_TxBuf[HTXTLF35584_ARR_INDEX_2] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSP, Rsp);
        Rsp = (uint8)(SignTmp & HTXTLF35584_BYTE_0_MASK);
        HtxTLF35584_TxBuf[HTXTLF35584_ARR_INDEX_3] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSPSYNC, Rsp);
        break;

    case 3U:
    /* This case is handled in default */

    default:
        Rsp = (uint8)((SignTmp & HTXTLF35584_BYTE_3_MASK) >> HTXTLF35584_CONST_24);
        HtxTLF35584_TxBuf[1U] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSP, Rsp);
        Rsp = (uint8)((SignTmp & HTXTLF35584_BYTE_2_MASK) >> HTXTLF35584_CONST_16);
        HtxTLF35584_TxBuf[HTXTLF35584_ARR_INDEX_2] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSP, Rsp);
        Rsp = (uint8)((SignTmp & HTXTLF35584_BYTE_1_MASK) >> HTXTLF35584_CONST_8);
        HtxTLF35584_TxBuf[HTXTLF35584_ARR_INDEX_3] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSP, Rsp);
        Rsp = (uint8)(SignTmp & HTXTLF35584_BYTE_0_MASK);
        HtxTLF35584_TxBuf[HTXTLF35584_ARR_INDEX_4] = HTXTLF35584_WR_CMD(TLF_REG_FWDRSPSYNC, Rsp);
        break;
    } /* switch (HtxTLF35584_Data.RspCnt) */

    HtxTLF35584_Data.NoOfBytesToBeSent = (uint8)(HtxTLF35584_Data.RspCnt + HTXTLF35584_CONST_2);

    /* Send the signature to Window and functional watchdog */
    HtxTLF35584Qspi_TxRx(HtxTLF35584_TxBuf,HtxTLF35584_RxBuf, HtxTLF35584_Data.NoOfBytesToBeSent);
} /* End of HtxTLF35584_lServiceFwdAndWwd() */


/*******************************************************************************
 *
 * \function      : static void HtxTLF35584_lProcessUsrReq(void)
 *
 * \description   : This function checks for complete reception of the user
 *                  request response and processes the response, once it
 *                  has been received
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2569
 *
 ******************************************************************************/
static void HtxTLF35584_lProcessUsrReq(void)
{
    uint8 LoopIndex;
    uint8 lNoOfBytesToBeSent;

    lNoOfBytesToBeSent = HtxTLF35584_Data.NoOfBytesToBeSent;

    /* Data transfer complete, copy Rx data to user request array: */
    for (LoopIndex = 0U; LoopIndex < lNoOfBytesToBeSent; LoopIndex++)
    {
        /* Copy response back to user buffer*/
        HtxTLF35584_Data.RequestPtr[LoopIndex].UserData = (uint8)HtxTLF35584_RxBuf[LoopIndex];
    }

    /* Reset job state and return success: */
    HtxTLF35584_Data.JobResult = HTXWDGIF_JOB_SUCCESS;
    HtxTLF35584_Data.JobState = HTXTLF35584_IDLE;
} /* End of HtxTLF35584_lProcessUsrReq() */


/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxTLF35584_lCheckWrData
 *                  (uint8 TxWordCount)
 *
 * \description   : This function checks if all register write commands of
 *                  the last transmitted data packet were echoed back
 *                  correctly via SPI. Register read commands are not
 *                  checked by this function
 *
 *******************************************************************************
 *
 * \param[in]     : TxWordCount - Number of data words transmitted
 *
 * \param[out]    : None
 *
 * \return        : E_OK - All data was echoed back correctly
 *                  E_NOT_OK - Unexpected data was echoed back
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2570
 *
 ******************************************************************************/
static Std_ReturnType HtxTLF35584_lCheckWrData(const uint8 TxWordCount)
{
    uint8 Index;
    Std_ReturnType Result;

    Result = E_OK;

    /* Check that all write commands are cycled back correctly: */
    Index = 0U;
    while(Index < TxWordCount)
    {
        /* is Current data word is a write command? */
        if((HtxTLF35584_TxBuf[Index] & HTXTLF35584_WR_BIT) > 0U)
        {
            /* Was Tx data echoed back as Rx data ? */
            if(HtxTLF35584_TxBuf[Index] != HtxTLF35584_RxBuf[Index])
            {
                Result = E_NOT_OK;

                /* Break the loop */
                Index = TxWordCount;
            }
        } /* if((HtxTLF35584_TxBuf[Index] & HTXTLF35584_WR_BIT) > 0U) */

        /* Increement the loop count */
        Index++;

    } /* End of while(Index < TxWordCount) */

    return Result;
} /* End of HtxTLF35584_lCheckWrData() */


/*******************************************************************************
 *
 * \function      : static Std_ReturnType HtxTLF35584_lCheckDataCrc(void)
 *
 * \description   : check data set integrity by CRC validation
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : E_OK - Calculated CRC matches with the expected CRC
 *                  E_NOT_OK - CRC mismatch
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2291
 *
 ******************************************************************************/
static Std_ReturnType HtxTLF35584_lCheckDataCrc(void)
{
    uint32 CurrCrc;
    Std_ReturnType lRetVal;

    lRetVal = E_NOT_OK;
    CurrCrc = HtxTLF35584_lCrc();

    if(CurrCrc == HtxTLF35584_Data.Crc)
    {
        lRetVal = E_OK;
    }

    return lRetVal;
} /* End of HtxTLF35584_lCheckDataCrc() */


/*******************************************************************************
 *
 * \function      : static void HtxTLF35584_lSetDataCrc(void)
 *
 * \description   : calculate and update crc for data set
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : None
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2292
 *
 ******************************************************************************/
static void HtxTLF35584_lSetDataCrc(void)
{
    HtxTLF35584_Data.Crc = HtxTLF35584_lCrc();
} /* End of HtxTLF35584_lSetDataCrc() */


/*******************************************************************************
 *
 * \function      : static uint32 HtxTLF35584_lCrc(void)
 *
 * \description   : Calculated CRC value
 *
 *******************************************************************************
 *
 * \param[in]     : None
 *
 * \param[out]    : None
 *
 * \return        : return Calculated 32bit CRC
 *
 *******************************************************************************
 *
 * \service id:   : (Intentionally left blank)
 *
 * \sync          : Synchronous
 *
 * \reentrancy    : Non-reentrant
 *
 * \pre           : None
 * \post          : None
 * \attention     : None
 * \traceability  : @wi.implements 4321.AURIX2G_SafeTpack/4321-2571
 *
 ******************************************************************************/
static uint32 HtxTLF35584_lCrc(void)
{
    uint32 CurrCrc;

    CurrCrc = 0U;
    /* MISRA2012_RULE_8_5_JUSTIFICATION:
       "HTXSTPIF_CRC32" is user-defined specifier. It is defined as, __crc32bw instruction,
       Its definition/declaration is specific to the compiler */
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.LastSeed);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.ErrCtr);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.DeviceState);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.LastWwdScmd);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.JobState);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.JobResult);
    /* MISRA2012_RULE_11_4_JUSTIFICATION:
       The address stored in the pointer is used to calculate the CRC */    
    /* MISRA2012_RULE_11_6_JUSTIFICATION:
       The address stored in the pointer is used to calculate the CRC */
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.ConfigPtr);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.NoOfBytesToBeSent);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.WdiRestoreFlag);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.ActivateRequested);
    /* MISRA2012_RULE_11_4_JUSTIFICATION:
       The address stored in the pointer is used to calculate the CRC */    
    /* MISRA2012_RULE_11_6_JUSTIFICATION:
       The address stored in the pointer is used to calculate the CRC */
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.RequestPtr);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.RspCnt);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.Syspcfg0);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.Syspcfg1);
    CurrCrc = (uint32)HTXSTPIF_CRC32(CurrCrc, HtxTLF35584_Data.Wdcfg1);

    return (CurrCrc);
} /* End of HtxTLF35584_lCrc() */

/* MISRA2012_RULE_20_1_JUSTIFICATION:
   MemMap header usage as per AUTOSAR guideline */
/* MISRA2012_RULE_4_10_JUSTIFICATION:
   MemMap header is repeatedly included without safeguard.
   It complies to AUTOSAR guidelines */
#define HTXTLF35584_STOP_SEC_CODE_ASIL_B_GLOBAL
#include "HtxTLF35584_MemMap.h"

/* EOF */
