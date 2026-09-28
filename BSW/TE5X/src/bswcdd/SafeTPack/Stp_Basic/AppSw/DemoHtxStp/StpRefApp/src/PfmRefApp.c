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
** FILENAME : PfmRefApp.c                                                     **
**                                                                            **
** REVISION : \$Revision: 31189 $                                             **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-12-20 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY : @wi.implements 4321.AURIX2G_SafeTpack/4321-2777             **
**                                                                            **
**  DESCRIPTION  : PfmRefApp module source code file                          **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/
#include "HtxStpIf.h"
#if (HTXSTPIF_PFM_STATUS == STD_ON)
#include "PfmRefApp.h"
#include "HtxPfm.h"
#include "TstM.h"
#include "AppCbk.h"
#include "IfxStm_reg.h"

extern void PfmRefApp_Init(void)
{
    HtxPfm_Init();
}

extern void PfmRefApp_Core_0_5ms(void)
{
    HtxPfm_CheckpointReached(HTXPFM_SEID_TASK_CORE0_5_MS, 0x50001);
    HtxPfm_CheckpointReached(HTXPFM_SEID_TASK_CORE0_5_MS, 0x50002);
}
#endif