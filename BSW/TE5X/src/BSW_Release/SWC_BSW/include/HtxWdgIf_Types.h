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
** FILENAME : HtxWdgIf_Types.h                                                **
**                                                                            **
** REVISION : \$Revision: 26594 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-10-20 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : Watchdog Interface Types Definition Header File              **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXWDGIF_TYPES_H
#define HTXWDGIF_TYPES_H

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "HtxStpIf.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

#define HTXWDGIF_SAFEWDG_UNKNOWN              (0)
#define HTXWDGIF_SAFEWDG_MAXNBR_SEED          (16U)     /* Max. number of supported seed values */
#define HTXWDGIF_SAFEWDG_SEED_NOTVALID        (255U)    /* Seed not valid/not available */
#define HTXWDGIF_SAFEWDG_ERR_NOTVALID         (255U)    /* Error counter not yet valid */

/* Shall be treated as unknown */
#define HTXWDGIF_UNKNOWN                      (0U)

/* Watchdog type Ids */
#define HTXWDGIF_INT_WDG_ONLY                 (0U)
#define HTXWDGIF_EXT_WDG_ONLY                 (1U)
#define HTXWDGIF_INT_CNR_WDG_TLF_WINDOW       (2U)


/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

typedef enum HtxWdgIf_ResultType
{
    HTXWDGIF_JOB_ACCEPTED = (1U),
    HTXWDGIF_JOB_FAILED,
    HTXWDGIF_JOB_FAILED_CRC,
    HTXWDGIF_JOB_INV_PARAM,
    HTXWDGIF_JOB_COM_ERR,
    HTXWDGIF_JOB_BUSY,
    HTXWDGIF_JOB_INV_STATE,
    HTXWDGIF_JOB_READBACK_FAIL,
    HTXWDGIF_JOB_INIT_FAIL,
    HTXWDGIF_JOB_RD_DATA_FAIL,
    HTXWDGIF_JOB_FAILED_SERVICE,
    HTXWDGIF_JOB_INVALID_SEED,
    HTXWDGIF_JOB_SUCCESS
} HtxWdgIf_ResultType;


typedef enum HtxWdgIf_IntWdgStateType
{
    /* Internal watchdog states */
    HTXWDGIF_INT_SWDG_UNKNOWN = (1U),
    HTXWDGIF_INT_SWDG_INIT,
    HTXWDGIF_INT_SWDG_ACTIVE,
    HTXWDGIF_INT_SWDG_FAIL
} HtxWdgIf_IntWdgStateType;

typedef enum HtxWdgIf_ExtWdgStateType
{
    /* TLF35584 states */
    HTXWDGIF_EXT_TLF_NONE = (0U),
    HTXWDGIF_EXT_TLF_INIT,        /* TLF35584 INIT state */
    HTXWDGIF_EXT_TLF_NORMAL,      /* TLF35584 in NORMAL state */
    HTXWDGIF_EXT_TLF_SLEEP,       /* TLF35584 in SLEEP state */
    HTXWDGIF_EXT_TLF_STANDBY,     /* TLF35584 in STANDBY state */
    HTXWDGIF_EXT_TLF_WAKE,        /* TLF35584 in WAKE state */
    HTXWDGIF_EXT_TLF_UNDEFINED1,  /* TLF35584 in Undefined state */
    HTXWDGIF_EXT_TLF_UNDEFINED2  /* TLF35584 in Undefined state */    
} HtxWdgIf_ExtWdgStateType;


/* MISRA2012_RULE_4_8_JUSTIFICATION:
   This type is defined to specify the command format to be used by upper layer */
/* Structure for user command */
typedef struct HtxWdgIf_CmdType
{
    uint8 ReqCmd;         /* Requested user command to ext. watch dog */
    uint8 UserData;       /* Send/receive back data for this operation */
} HtxWdgIf_CmdType;

/* Container for common watchdog configuration */
typedef struct HtxWdgIf_ConfigType
{
    const void* const DriverIntConfigPtr;
    const void* const DriverExtConfigPtr;
} HtxWdgIf_ConfigType;

typedef struct HtxWdgIf_StateType
{
    HtxWdgIf_IntWdgStateType IntWdgState;
    HtxWdgIf_ExtWdgStateType ExtWdgState;
} HtxWdgIf_StateType;

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/


#endif /* HTXWDGIF_TYPES_H */

/* EOF */

