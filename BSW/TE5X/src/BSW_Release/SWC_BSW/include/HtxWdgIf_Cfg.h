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
** FILENAME : HtxWdgIf_Cfg.h                                                  **
**                                                                            **
** REVISION : \$Revision: 26142 $                                              **
**                                                                            **
** DATE, TIME: 2024-08-24, 14:02:01                                           **
**                                                                            **
** GENERATOR : Build b191017-0938                                             **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxWdgIf configuration header file                           **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXWDGIF_CFG_H
#define HTXWDGIF_CFG_H

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

#include "HtxWdgIf_Types.h"
#include "HtxTLF35584.h"

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/* Number of available configurations for the HtxWdgIf test */
#define HTXWDGIF_CFG_COUNT              (1u)

/* Only External TLF watchdog is used - Challenge and response watchdog */
#define HTXWDGIF_WDG_TYPE                (HTXWDGIF_EXT_WDG_ONLY)

/* Ext_WDG_TLF APIs */
#define HTXWDGIF_EXT_SERVICE(a)          (HtxTLF35584_Service((a)))
#define HTXWDGIF_EXT_INIT(a)             (HtxTLF35584_Init((a)))
#define HTXWDGIF_EXT_DE_INIT()           (HtxTLF35584_DeInit())
#define HTXWDGIF_EXT_ACTIVATE()          (HtxTLF35584_Activate())
#define HTXWDGIF_EXT_GET_SEED(a)         (HtxTLF35584_GetSeed((a)))
#define HTXWDGIF_EXT_GET_STATE()         (HtxTLF35584_GetState())
#define HTXWDGIF_EXT_USER_REQUEST(a,b)   (HtxTLF35584_UserRequest((a),(b)))
#define HTXWDGIF_EXT_GET_JOB_RESULT()    (HtxTLF35584_GetJobResult())
#define HTXWDGIF_EXT_GET_ERR_CNTR(a)     (HtxTLF35584_GetErrCntr((a)))
#define HTXWDGIF_EXT_GET_WDG_INFO()      (HtxTLF35584_GetWdgInfo())
#define HTXWDGIF_EXT_MAIN_FUNCTION()     (HtxTLF35584_MainFunction())

/* Int WDG WDTS APIs */
#define HTXWDGIF_INT_SERVICE(a)          (E_NOT_OK)
#define HTXWDGIF_INT_INIT(a)             (E_NOT_OK)
#define HTXWDGIF_INT_DE_INIT()
#define HTXWDGIF_INT_ACTIVATE()          (E_NOT_OK)
#define HTXWDGIF_INT_GET_SEED(a)         (E_NOT_OK)
#define HTXWDGIF_INT_GET_STATE()         (E_NOT_OK)
#define HTXWDGIF_INT_GET_WDG_INFO()      (E_NOT_OK)
#define HTXWDGIF_INT_GET_ERR_CNTR(a)     (E_NOT_OK)
#define HTXWDGIF_INT_USER_REQUEST(a,b)   (E_NOT_OK)
#define HTXWDGIF_INT_GET_JOB_RESULT()    (E_NOT_OK)

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/

/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Function Prototypes                            **
*******************************************************************************/

/*******************************************************************************
**                      Global Inline Function Definitions                    **
*******************************************************************************/
#endif  /*HTXWDGIF_CFG_H */

/* EOF */
