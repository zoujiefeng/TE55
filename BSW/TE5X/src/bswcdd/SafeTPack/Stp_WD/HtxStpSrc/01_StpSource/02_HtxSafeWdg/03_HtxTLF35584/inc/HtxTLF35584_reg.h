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
** FILENAME : HtxTLF35584_reg.h                                               **
**                                                                            **
** REVISION : \$Revision: 25753 $                                              **
**                                                                            **
** DATE : \$LastChangedDate:: 2020-08-19 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** DESCRIPTION : HtxTLF35584 Registers Header File                            **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : No                                                **
**                                                                            **
*******************************************************************************/

#ifndef HTXTLF35584_REG_H
#define HTXTLF35584_REG_H

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

/* TLF35584 register addresses */
#define TLF_REG_DEVCFG0                  ( (uint8)0x00U )
#define TLF_REG_DEVCFG1                  ( (uint8)0x01U )
#define TLF_REG_DEVCFG2                  ( (uint8)0x02U )
#define TLF_REG_PROTCFG                  ( (uint8)0x03U )
#define TLF_REG_SYSPCFG0                 ( (uint8)0x04U )
#define TLF_REG_SYSPCFG1                 ( (uint8)0x05U )
#define TLF_REG_WDCFG0                   ( (uint8)0x06U )
#define TLF_REG_WDCFG1                   ( (uint8)0x07U )
#define TLF_REG_FWDCFG                   ( (uint8)0x08U )
#define TLF_REG_WWDCFG0                  ( (uint8)0x09U )
#define TLF_REG_WWDCFG1                  ( (uint8)0x0AU )
#define TLF_REG_RSYSPCFG0                ( (uint8)0x0BU )
#define TLF_REG_RSYSPCFG1                ( (uint8)0x0CU )
#define TLF_REG_RWDCFG0                  ( (uint8)0x0DU )
#define TLF_REG_RWDCFG1                  ( (uint8)0x0EU )
#define TLF_REG_RFWDCFG                  ( (uint8)0x0FU )
#define TLF_REG_RWWDCFG0                 ( (uint8)0x10U )
#define TLF_REG_RWWDCFG1                 ( (uint8)0x11U )
#define TLF_REG_WKTIMCFG0                ( (uint8)0x12U )
#define TLF_REG_WKTIMCFG1                ( (uint8)0x13U )
#define TLF_REG_WKTIMCFG2                ( (uint8)0x14U )
#define TLF_REG_DEVCTRL                  ( (uint8)0x15U )
#define TLF_REG_DEVCTRLN                 ( (uint8)0x16U )
#define TLF_REG_WWDSCMD                  ( (uint8)0x17U )
#define TLF_REG_FWDRSP                   ( (uint8)0x18U )
#define TLF_REG_FWDRSPSYNC               ( (uint8)0x19U )
#define TLF_REG_SYSFAIL                  ( (uint8)0x1AU )
#define TLF_REG_INITERR                  ( (uint8)0x1BU )
#define TLF_REG_IF                       ( (uint8)0x1CU )
#define TLF_REG_SYSSF                    ( (uint8)0x1DU )
#define TLF_REG_WKSF                     ( (uint8)0x1EU )
#define TLF_REG_SPISF                    ( (uint8)0x1FU )
#define TLF_REG_MONSF0                   ( (uint8)0x20U )
#define TLF_REG_MONSF1                   ( (uint8)0x21U )
#define TLF_REG_MONSF2                   ( (uint8)0x22U )
#define TLF_REG_MONSF3                   ( (uint8)0x23U )
#define TLF_REG_OTFAIL                   ( (uint8)0x24U )
#define TLF_REG_OTWRNSF                  ( (uint8)0x25U )
#define TLF_REG_VMONSTAT                 ( (uint8)0x26U )
#define TLF_REG_DEVSTAT                  ( (uint8)0x27U )
#define TLF_REG_PROTSTAT                 ( (uint8)0x28U )
#define TLF_REG_WWDSTAT                  ( (uint8)0x29U )
#define TLF_REG_FWDSTAT0                 ( (uint8)0x2AU )
#define TLF_REG_FWDSTAT1                 ( (uint8)0x2BU )
#define TLF_REG_ABIST_CTRL0              ( (uint8)0x2CU )
#define TLF_REG_ABIST_CTRL1              ( (uint8)0x2DU )
#define TLF_REG_ABIST_SELECT0            ( (uint8)0x2EU )
#define TLF_REG_ABIST_SELECT1            ( (uint8)0x2FU )
#define TLF_REG_ABIST_SELECT2            ( (uint8)0x30U )
#define TLF_REG_BCK_FREQ_CHANGE          ( (uint8)0x31U )
#define TLF_REG_BCK_FRE_SPREAD           ( (uint8)0x32U )
#define TLF_REG_BCK_MAIN_CTRL            ( (uint8)0x33U )
#define TLF_REG_GTM                      ( (uint8)0x3FU )

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

/*******************************************************************************
 *
 * \function      : <return_type> <function_name>(<input_parameters>)
 *
 * \description   : <description>
 *
 *******************************************************************************
 *
 * \param[in]     : <parameter1> - <parameter1_description>
 * \param[in]     : <parameter2> - <parameter2_description>
 *
 * \param[out]    : <parameter3> - <parameter3_description>
 * \param[out]    : <parameter4> - <parameter4_description>
 *
 * \param[in,out] : <parameter5> - <parameter5_description>
 * \param[in,out] : <parameter6> - <parameter6_description>
 *
 * \return        : <return_value description>
 *
 *******************************************************************************
 *
 * \service id:   : <function_service_id>
 *
 * \sync          : <Synchronous/Asynchronous>
 *
 * \reentrancy    : <Reentrant/Non-reentrant>
 *
 * \pre           : <Description of pre-condition>
 * \post          : <Description of post-condition>
 * \attention     : <Description of any precautions>
 * \traceability  :
 *
 ******************************************************************************/


#endif /* HTXTLF35584_REG_H */

/* EOF */

