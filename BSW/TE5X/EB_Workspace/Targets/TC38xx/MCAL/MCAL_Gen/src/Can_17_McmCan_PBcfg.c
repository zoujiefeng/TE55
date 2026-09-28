
/*******************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2019)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**  FILENAME  : Can_17_McmCan_PBCfg.c                                         **
**                                                                            **
**  VERSION   : 1.40.0_21.0.0                                                 **
**                                                                            **
**  DATE, TIME: 2026-09-24, 17:18:40          !!!IGNORE-LINE!!!               **
**                                                                            **
**  GENERATOR : Build b170330-0431            !!!IGNORE-LINE!!!               **
**                                                                            **
**  BSW MODULE DECRIPTION : Can_17_McmCan.bmd                                 **
**                                                                            **
**  VARIANT   : Variant PB                                                    **
**                                                                            **
**  PLATFORM  : Infineon AURIX2G                                              **
**                                                                            **
**  AUTHOR    : DL-AUTOSAR-Engineering                                        **
**                                                                            **
**  VENDOR    : Infineon Technologies                                         **
**                                                                            **
**  DESCRIPTION  : Can configuration generated out of ECUC file               **
**                                                                            **
**  SPECIFICATION(S) : Specification of Can Driver, AUTOSAR Release 4.2.2     **
**                                                                            **
**  MAY BE CHANGED BY USER : no                                               **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/

/* Include CAN Driver Header File */
#include "Can_17_McmCan.h"

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/

/*******************************************************************************
**                      Imported Compiler Switch Check                        **
*******************************************************************************/
/*******************************************************************************
**                      Private Type Definitions                              **
*******************************************************************************/
/*******************************************************************************
**                      Private Function Declarations                         **
*******************************************************************************/
/*******************************************************************************
**                      Global Constant Definitions                           **
*******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
#define CAN_17_MCMCAN_START_SEC_CONFIG_DATA_QM_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */
#include "Can_17_McmCan_MemMap.h"

/*******************************************************************************
               Can Controller Configurations for Core0
********************************************************************************
    { Can node Base Address,Combination value of Rx pin select and
    Loopback mode Support,{First Tx Hardware Object, No.of Tx Hardware Objects,
    First Rx Standard Hardware Object, No.of Rx Standard Hardware Objects,
    First Rx Extended Hardware Object, No.of Rx Extended Hardware Objects},
    Default baudrate Config index,First baudrate index for the controller,
    No.of baudrate configuration,Associated kernel Id, Controller Hw Id,
    Logical controller Id,[FD support status] }
********************************************************************************
       Note: [1] The configuration shall be generated only for the activated
                 controller
             [2] The Generation of FD support status Shall be enabled only if
             atleast one of the baudrates configured in the configuration set is
             FD.
*******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
  in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
  in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
  in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
  in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_ControllerConfigType \
  Can_17_McmCan_kControllerConfigCore0[4] =
{
  {
    /* Can controller Base Node address */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: The pointer cast is used to
    cast the generated address with CAN Node structure type */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: conversion between pointer and
    integer type. Permitted for special function registers.*/
    (volatile Ifx_CAN_N*)0xf0208100U,
    /* combination of Loopback and receive input pin selection setting */
    0x1U,
    /* The controller Hw object configuration mapping information */
    {
      /* Tx Message storage start Index */
      0x0U,
      /* Total no of Tx Message configured */
      0x8U,
      /* Rx Message SID filter mask start Index */
      0x0U,
      /* Total no of SID filter mask configured */
      0x3U,
      /* Rx Message XID filter mask start Index */
      0x0U,
      /* Total no of XID filter mask configured */
      0x0U
    },
    /* Default baudrate configuration Index */
    0x0U,
    /* Start index value of Baudrate configuration */
    0x0U,
    /* Total no of Baudrate configuration */
    0x1U,
    /* The controller Associated Kernel configuration Index */
    0x0U,
    /* The CAN controller Hw Index */
    0x00U,
    /* The CAN controller Logical Hw Index - Controller ID defined by user */
    0
  },
  {
    /* Can controller Base Node address */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: The pointer cast is used to
    cast the generated address with CAN Node structure type */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: conversion between pointer and
    integer type. Permitted for special function registers.*/
    (volatile Ifx_CAN_N*)0xf0208500U,
    /* combination of Loopback and receive input pin selection setting */
    0x1U,
    /* The controller Hw object configuration mapping information */
    {
      /* Tx Message storage start Index */
      0x8U,
      /* Total no of Tx Message configured */
      0x1dU,
      /* Rx Message SID filter mask start Index */
      0x3U,
      /* Total no of SID filter mask configured */
      0x1U,
      /* Rx Message XID filter mask start Index */
      0x0U,
      /* Total no of XID filter mask configured */
      0x2aU
    },
    /* Default baudrate configuration Index */
    0x1U,
    /* Start index value of Baudrate configuration */
    0x1U,
    /* Total no of Baudrate configuration */
    0x1U,
    /* The controller Associated Kernel configuration Index */
    0x0U,
    /* The CAN controller Hw Index */
    0x01U,
    /* The CAN controller Logical Hw Index - Controller ID defined by user */
    1
  },
  {
    /* Can controller Base Node address */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: The pointer cast is used to
    cast the generated address with CAN Node structure type */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: conversion between pointer and
    integer type. Permitted for special function registers.*/
    (volatile Ifx_CAN_N*)0xf0208900U,
    /* combination of Loopback and receive input pin selection setting */
    0x1U,
    /* The controller Hw object configuration mapping information */
    {
      /* Tx Message storage start Index */
      0x25U,
      /* Total no of Tx Message configured */
      0x1dU,
      /* Rx Message SID filter mask start Index */
      0x4U,
      /* Total no of SID filter mask configured */
      0x3U,
      /* Rx Message XID filter mask start Index */
      0x2aU,
      /* Total no of XID filter mask configured */
      0x28U
    },
    /* Default baudrate configuration Index */
    0x2U,
    /* Start index value of Baudrate configuration */
    0x2U,
    /* Total no of Baudrate configuration */
    0x1U,
    /* The controller Associated Kernel configuration Index */
    0x0U,
    /* The CAN controller Hw Index */
    0x02U,
    /* The CAN controller Logical Hw Index - Controller ID defined by user */
    2
  },
  {
    /* Can controller Base Node address */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: The pointer cast is used to
    cast the generated address with CAN Node structure type */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: conversion between pointer and
    integer type. Permitted for special function registers.*/
    (volatile Ifx_CAN_N*)0xf0218900U,
    /* combination of Loopback and receive input pin selection setting */
    0x1U,
    /* The controller Hw object configuration mapping information */
    {
      /* Tx Message storage start Index */
      0x42U,
      /* Total no of Tx Message configured */
      0x1dU,
      /* Rx Message SID filter mask start Index */
      0x7U,
      /* Total no of SID filter mask configured */
      0x29U,
      /* Rx Message XID filter mask start Index */
      0x52U,
      /* Total no of XID filter mask configured */
      0x2U
    },
    /* Default baudrate configuration Index */
    0x3U,
    /* Start index value of Baudrate configuration */
    0x3U,
    /* Total no of Baudrate configuration */
    0x1U,
    /* The controller Associated Kernel configuration Index */
    0x1U,
    /* The CAN controller Hw Index */
    0x02U,
    /* The CAN controller Logical Hw Index - Controller ID defined by user */
    3
  }
};

/*******************************************************************************
              Controller Id to Index Map configuration for Core0
********************************************************************************
    {Array holding the respective logical Controller ID at the core specific
    controller index }
********************************************************************************
           Note: This shall be generated only for the controllers allocated
           for the current core.
*******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
  in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
  in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
  in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
  in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_ControllerIndexType \
  Can_17_McmCan_kControllerIndexingCore0[4] =
{0,1,2,3};

/*******************************************************************************
              Message RAM partition configuration for Core0
********************************************************************************
      {{start address of SID section,start address of XID section,
      start address of FIFO0 section,start address of FIFO1 section,start
      address of Rx dedicated buffer section,start address of Tx Event section,
      start address of Tx dedicated buffer section},Tx_ded_Buff size,
      Tx_Evnt size,[Rx_FIFO0 size],[Rx_FIFO0 Threshold],[Rx_FIFO1 size],
      [Rx_FIFO1 Threshold],[Tx_Queue size],[Tx_Queue Enable Status]}
********************************************************************************
           Note: This shall be generated only for the activated controller
*******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
  in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
  in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
  in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
  in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_ControllerMsgRAMConfigType \
  Can_17_McmCan_kControllerMsgRAMMapConfigCore0[4] =
{
  {
    /* Start Address of each section within the Message RAM */
    {
      0xf0200000UL,
      0x00000000UL,
      0x00000000UL,
      0x00000000UL,
      0xf020000cUL,
      0xf020003cUL,
      0xf020007cUL
    },
    0x8U,
    0x8U,
    0x0U,
    0x0U,
    0x0U,
    0x0U,
    0x0U,
    FALSE
  },
  {
    /* Start Address of each section within the Message RAM */
    {
      0xf02000fcUL,
      0xf0200100UL,
      0xf0200250UL,
      0x00000000UL,
      0xf02002a0UL,
      0xf0200540UL,
      0xf0200628UL
    },
    0x1dU,
    0x1dU,
    0x5U,
    0x1U,
    0x0U,
    0x0U,
    0x0U,
    FALSE
  },
  {
    /* Start Address of each section within the Message RAM */
    {
      0xf02007f8UL,
      0xf0200804UL,
      0xf0200944UL,
      0x00000000UL,
      0xf0200994UL,
      0xf0200c34UL,
      0xf0200d1cUL
    },
    0x1dU,
    0x1dU,
    0x5U,
    0x1U,
    0x0U,
    0x0U,
    0x0U,
    FALSE
  },
  {
    /* Start Address of each section within the Message RAM */
    {
      0xf0210000UL,
      0xf02100a4UL,
      0xf02100b4UL,
      0x00000000UL,
      0xf0210104UL,
      0xf02103a4UL,
      0xf02104a4UL
    },
    0x1cU,
    0x20U,
    0x5U,
    0x1U,
    0x0U,
    0x0U,
    0x4U,
    TRUE
  }
};

/*******************************************************************************
            CAN Controller Baudrate Configurations for Core0
********************************************************************************
           { CANx_NBTP value, Configured Baudrate ,FDBaudrate config Index ,
             FD Support Status  }
********************************************************************************
                           Baudrate Setting
    (uint32)((NSJW << 25)|(NBRP << 16)|(TSEG1 << 8)|(TSEG2))
    NSJW   -> CanControllerSyncJumpWidth - 1
    NTSEG1 -> CanControllerPropSeg + CanControllerSeg1 - 1
    NTSEG2 -> CanControllerSeg2 - 1
*******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_ControllerBaudrateConfigType \
  Can_17_McmCan_kBaudrateConfigCore0[4] =
{
  {
    /* Configured Baudrate -> 1000 kbps */
    /* Actual Baudrate     -> 1000.0 kbps */
    /* NBRP   -> 0 */
    /* NSJW   -> 7  */
    /* NTSEG1 -> 30  */
    /* NTSEG2 -> 7  */
    0xe001e07U,
    1000U
  },
  {
    /* Configured Baudrate -> 500 kbps */
    /* Actual Baudrate     -> 500.0 kbps */
    /* NBRP   -> 1 */
    /* NSJW   -> 5  */
    /* NTSEG1 -> 32  */
    /* NTSEG2 -> 5  */
    0xa012005U,
    500U
  },
  {
    /* Configured Baudrate -> 500 kbps */
    /* Actual Baudrate     -> 500.0 kbps */
    /* NBRP   -> 1 */
    /* NSJW   -> 7  */
    /* NTSEG1 -> 30  */
    /* NTSEG2 -> 7  */
    0xe011e07U,
    500U
  },
  {
    /* Configured Baudrate -> 500 kbps */
    /* Actual Baudrate     -> 500.0 kbps */
    /* NBRP   -> 1 */
    /* NSJW   -> 7  */
    /* NTSEG1 -> 30  */
    /* NTSEG2 -> 7  */
    0xe011e07U,
    500U
  }
};


/*******************************************************************************
    CAN Controller Handling of Events for Core0 : Interrupt/Polling
********************************************************************************
        { CanTxProcessing Mode, CanRxProcessing Mode,
          CanBusoffProcessing Mode, CanWakeupProcessing Mode }
********************************************************************************
           Note: If the CAN controller is not activated then,
                 { 0U, 0U, 0U, 0U } will be generated
*******************************************************************************/
/* CanConfigSet -> CAN Controller - Handling of Events */
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_EventHandlingType \
  Can_17_McmCan_kEventHandlingConfigCore0[4] =
{
  {
    {
      (CAN_17_MCMCAN_INTERRUPT),
      (CAN_17_MCMCAN_INTERRUPT),
      (CAN_17_MCMCAN_INTERRUPT),
      (CAN_17_MCMCAN_INTERRUPT)
    }
  },
  {
    {
      (CAN_17_MCMCAN_INTERRUPT),
      (CAN_17_MCMCAN_INTERRUPT),
      (CAN_17_MCMCAN_INTERRUPT),
      (CAN_17_MCMCAN_INTERRUPT)
    }
  },
  {
    {
      (CAN_17_MCMCAN_INTERRUPT),
      (CAN_17_MCMCAN_INTERRUPT),
      (CAN_17_MCMCAN_INTERRUPT),
      (CAN_17_MCMCAN_INTERRUPT)
    }
  },
  {
    {
      (CAN_17_MCMCAN_INTERRUPT),
      (CAN_17_MCMCAN_INTERRUPT),
      (CAN_17_MCMCAN_INTERRUPT),
      (CAN_17_MCMCAN_INTERRUPT)
    }
  }
};
/*******************************************************************************
               Receive Hardware Object Configurations for Core0
********************************************************************************
        This is the combination of SID filter elements
        Rx Object -> { Combination of Mask and filter value S0, HRH HwObject Id,
        Hw Controller Id, Rx BufferType, [Pretended Support Status] }
********************************************************************************
       Note: [1] If the associated CAN Controller is not activated then,
                   Hw Controller Id -> 255
             [2] If CanFilterMaskRef is not configured then,
                   Mask -> 0x7ff - for STANDARD Msg Id Type
*******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_SIDFilterConfigType \
  Can_17_McmCan_kSIDFilterConfigCore0[48] =
{
  {
    0xbb320000U,
    0U,
    0U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb330001U,
    1U,
    0U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb170002U,
    2U,
    0U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0x8d800780U,
    3U,
    1U,
    CAN_17_MCMCAN_RX_FIFO0
  },
  {
    0x8d800780U,
    46U,
    2U,
    CAN_17_MCMCAN_RX_FIFO0
  },
  {
    0xbfdf0001U,
    47U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbfe30002U,
    48U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0x8d800780U,
    89U,
    3U,
    CAN_17_MCMCAN_RX_FIFO0
  },
  {
    0xbbc00003U,
    92U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbbc10004U,
    93U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbbc20005U,
    94U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbbc30006U,
    95U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb550007U,
    96U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb560008U,
    97U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb570009U,
    98U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb58000aU,
    99U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb59000bU,
    100U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb60000cU,
    101U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb61000dU,
    102U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb62000eU,
    103U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb63000fU,
    104U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb640010U,
    105U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb650011U,
    106U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb660012U,
    107U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb670013U,
    108U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb680014U,
    109U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb690015U,
    110U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb700016U,
    111U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb710017U,
    112U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb720018U,
    113U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb730019U,
    114U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb74001aU,
    115U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb75001bU,
    116U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb76001cU,
    117U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb77001dU,
    118U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb78001eU,
    119U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb79001fU,
    120U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb800020U,
    121U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb810021U,
    122U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb820022U,
    123U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb830023U,
    124U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb840024U,
    125U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb850025U,
    126U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb860026U,
    127U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb870027U,
    128U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb880028U,
    129U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb890029U,
    130U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xbb90002aU,
    131U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  }
};
/*******************************************************************************
      This is the combination of XID filer elements for Core0
      Rx Object -> { Combination of Mask and filter valueF0,Combination of
      Mask and filter valueF1, HRH HwObject Id, Hw Controller Id, Rx BufferType,
            [Pretended Support Status]  }
********************************************************************************
       Note: [1] If the associated CAN Controller is not activated then,
                   this shall not be generated
             [2] If CanFilterMaskRef is not configured then,
                   Mask -> 0x1fffffff - for EXTENDED/MIXED Msg Id Type
*******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_XIDFilterConfigType \
  Can_17_McmCan_kXIDFilterConfigCore0[84] =
{
  {
    0xf8dbeff1U,
    0x80000001U,
    4U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xf8daeff1U,
    0x80000002U,
    5U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xf8f71e31U,
    0x80000003U,
    6U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xf8f02e31U,
    0x80000004U,
    7U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xf8ef2e31U,
    0x80000005U,
    8U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xf8f53031U,
    0x80000006U,
    9U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xf8feae30U,
    0x80000007U,
    10U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xf8feae32U,
    0x80000008U,
    11U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6506U,
    0x80000009U,
    12U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6507U,
    0x8000000aU,
    13U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6508U,
    0x8000000bU,
    14U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6509U,
    0x8000000cU,
    15U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd650aU,
    0x8000000dU,
    16U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd650bU,
    0x8000000eU,
    17U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd650cU,
    0x8000000fU,
    18U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd650dU,
    0x80000010U,
    19U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd650eU,
    0x80000011U,
    20U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd650fU,
    0x80000012U,
    21U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6510U,
    0x80000013U,
    22U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6511U,
    0x80000014U,
    23U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6512U,
    0x80000015U,
    24U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6513U,
    0x80000016U,
    25U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6514U,
    0x80000017U,
    26U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6515U,
    0x80000018U,
    27U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6516U,
    0x80000019U,
    28U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6517U,
    0x8000001aU,
    29U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6518U,
    0x8000001bU,
    30U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6519U,
    0x8000001cU,
    31U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd651aU,
    0x8000001dU,
    32U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd651bU,
    0x8000001eU,
    33U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd651cU,
    0x8000001fU,
    34U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd651dU,
    0x80000020U,
    35U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd651eU,
    0x80000021U,
    36U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd651fU,
    0x80000022U,
    37U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6520U,
    0x80000023U,
    38U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6521U,
    0x80000024U,
    39U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6522U,
    0x80000025U,
    40U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6523U,
    0x80000026U,
    41U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6524U,
    0x80000027U,
    42U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6525U,
    0x80000028U,
    43U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6526U,
    0x80000029U,
    44U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6527U,
    0x8000002aU,
    45U,
    1U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xecff08d0U,
    0x80000003U,
    49U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xecff07d0U,
    0x80000004U,
    50U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xecff06d0U,
    0x80000005U,
    51U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd652bU,
    0x80000006U,
    52U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd652cU,
    0x80000007U,
    53U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd652dU,
    0x80000008U,
    54U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd652eU,
    0x80000009U,
    55U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd652fU,
    0x8000000aU,
    56U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6530U,
    0x8000000bU,
    57U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6531U,
    0x8000000cU,
    58U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6532U,
    0x8000000dU,
    59U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6533U,
    0x8000000eU,
    60U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6534U,
    0x8000000fU,
    61U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6535U,
    0x80000010U,
    62U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6536U,
    0x80000011U,
    63U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6537U,
    0x80000012U,
    64U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6538U,
    0x80000013U,
    65U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6539U,
    0x80000014U,
    66U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd653aU,
    0x80000015U,
    67U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd653bU,
    0x80000016U,
    68U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd653cU,
    0x80000017U,
    69U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd653dU,
    0x80000018U,
    70U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd653eU,
    0x80000019U,
    71U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd653fU,
    0x8000001aU,
    72U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6540U,
    0x8000001bU,
    73U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6541U,
    0x8000001cU,
    74U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6542U,
    0x8000001dU,
    75U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6543U,
    0x8000001eU,
    76U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6544U,
    0x8000001fU,
    77U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6545U,
    0x80000020U,
    78U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6546U,
    0x80000021U,
    79U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6547U,
    0x80000022U,
    80U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6548U,
    0x80000023U,
    81U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd6549U,
    0x80000024U,
    82U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd654aU,
    0x80000025U,
    83U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd654bU,
    0x80000026U,
    84U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd654cU,
    0x80000027U,
    85U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd654dU,
    0x80000028U,
    86U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd654eU,
    0x80000029U,
    87U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xfdcd654fU,
    0x8000002aU,
    88U,
    2U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xf8dbfffaU,
    0x80000001U,
    90U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  },
  {
    0xf8da30faU,
    0x80000002U,
    91U,
    3U,
    CAN_17_MCMCAN_RX_DED_BUFFER
  }
};
/*******************************************************************************
           Transmit Hardware Object Configurations for Core0
********************************************************************************
 Tx Object -> { CanTxHwObjId, CanTxBuffIndx, HwControllerId, [CanFdPaddValue],
               CanTxHwObjIdType , CanTxBufferType, CanTrigTxStatus}
********************************************************************************
       Note: [1] If the associated CAN Controller is not activated then,
                   this shall not be generated.
*******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_TxHwObjectConfigType \
  Can_17_McmCan_kTxHwObjectConfigCore0[95] =
{
  {
    132U,
    0U,
    0U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    133U,
    1U,
    0U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    134U,
    2U,
    0U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    135U,
    3U,
    0U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    136U,
    4U,
    0U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    137U,
    5U,
    0U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    138U,
    6U,
    0U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    139U,
    7U,
    0U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    140U,
    0U,
    1U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    141U,
    1U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    142U,
    2U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    143U,
    3U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    144U,
    4U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    145U,
    5U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    146U,
    6U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    147U,
    7U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    148U,
    8U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    149U,
    9U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    150U,
    10U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    151U,
    11U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    152U,
    12U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    153U,
    13U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    154U,
    14U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    155U,
    15U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    156U,
    16U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    157U,
    17U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    158U,
    18U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    159U,
    19U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    160U,
    20U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    161U,
    21U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    162U,
    22U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    163U,
    23U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    164U,
    24U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    165U,
    25U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    166U,
    26U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    167U,
    27U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    168U,
    28U,
    1U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    169U,
    0U,
    2U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    170U,
    1U,
    2U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    171U,
    2U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    172U,
    3U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    173U,
    4U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    174U,
    5U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    175U,
    6U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    176U,
    7U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    177U,
    8U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    178U,
    9U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    179U,
    10U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    180U,
    11U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    181U,
    12U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    182U,
    13U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    183U,
    14U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    184U,
    15U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    185U,
    16U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    186U,
    17U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    187U,
    18U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    188U,
    19U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    189U,
    20U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    190U,
    21U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    191U,
    22U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    192U,
    23U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    193U,
    24U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    194U,
    25U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    195U,
    26U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    196U,
    27U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    197U,
    28U,
    2U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    198U,
    0U,
    3U,
    CAN_17_MCMCAN_ID_EXTENDED,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    199U,
    1U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    200U,
    255U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_QUEUE
  },
  {
    201U,
    2U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    202U,
    3U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    203U,
    4U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    204U,
    5U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    205U,
    6U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    206U,
    7U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    207U,
    8U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    208U,
    9U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    209U,
    10U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    210U,
    11U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    211U,
    12U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    212U,
    13U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    213U,
    14U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    214U,
    15U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    215U,
    16U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    216U,
    17U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    217U,
    18U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    218U,
    19U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    219U,
    20U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    220U,
    21U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    221U,
    22U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    222U,
    23U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    223U,
    24U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    224U,
    25U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    225U,
    26U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  },
  {
    226U,
    27U,
    3U,
    CAN_17_MCMCAN_ID_STANDARD,
    CAN_17_MCMCAN_TX_DED_BUFFER
  }
};

/******************************************************************************/
             /* CAN Configuration Pointer for Core0 */
/******************************************************************************/
    /* Core sepcific CAN configurations */
/******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_CoreConfigType \
  Can_17_McmCan_kMcmCanConfigCore0=
{
  /* Number of controllers configured for the core */
  4,
  /* Array of all the controllers configured */
  &Can_17_McmCan_kControllerIndexingCore0[0],
  /* Pointer to CAN controller configuration settings */
  &Can_17_McmCan_kControllerConfigCore0[0],
  /* Pointer to Message RAM configuration settings */
  &Can_17_McmCan_kControllerMsgRAMMapConfigCore0[0],
  /* Pointer to CAN Controller Handling of Events : Interrupt/Polling */
  &Can_17_McmCan_kEventHandlingConfigCore0[0],
  /* Pointer to Baudrate configuration settings */
  &Can_17_McmCan_kBaudrateConfigCore0[0],
  /* Pointer to CAN Controller <-> Tx Hardware Objects Mapping */
  &Can_17_McmCan_kTxHwObjectConfigCore0[0],
  /* Pointer to CAN Controller <-> Rx Hardware Objects Mapping for Standard
     messages */
  &Can_17_McmCan_kSIDFilterConfigCore0[0],
  /* Pointer to CAN Controller <-> Rx Hardware Objects Mapping for Extended
  messages */
  &Can_17_McmCan_kXIDFilterConfigCore0[0]
};
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
#define CAN_17_MCMCAN_STOP_SEC_CONFIG_DATA_QM_CORE0_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */
#include "Can_17_McmCan_MemMap.h"

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
#define CAN_17_MCMCAN_START_SEC_CONFIG_DATA_QM_GLOBAL_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */
#include "Can_17_McmCan_MemMap.h"

/*******************************************************************************
              CAN Kernel configuration parameters
********************************************************************************
     { CAN Global Kernel Address, The status of the nodes in the configured
     kernel }
********************************************************************************
           Note: 1. If any of CAN controllers in the kernel is not activated
                 then, the configuration for that kernel will not be generated.
                 2. CAN controllers that are activated in the kernel will be
                 set to True state and the pending controller nodes shall be
                 set to False state.
*******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_McmModuleConfigType \
  Can_17_McmCan_kMcmCanModuleConfig[2] =
{
  {
    /* The Global Base address of Kernel module */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: The pointer cast is used to
    cast the generated address with CAN Kernel structure type */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: conversion between pointer and
    integer type. Permitted for special function registers.*/
    (volatile Ifx_CAN*) 0xf0200000U,
    /* The CAN node is enabled or not within the kernel*/
    {
      /* Node 0 of kernel enable state */
      TRUE,
      /* Node 1 of kernel enable state */
      TRUE,
      /* Node 2 of kernel enable state */
      TRUE,
      /* Node 3 of kernel enable state */
      FALSE
    }
  },
  {
    /* The Global Base address of Kernel module */
    /* MISRA2012_RULE_11_6_JUSTIFICATION: The pointer cast is used to
    cast the generated address with CAN Kernel structure type */
    /* MISRA2012_RULE_11_4_JUSTIFICATION: conversion between pointer and
    integer type. Permitted for special function registers.*/
    (volatile Ifx_CAN*) 0xf0210000U,
    /* The CAN node is enabled or not within the kernel*/
    {
      /* Node 0 of kernel enable state */
      FALSE,
      /* Node 1 of kernel enable state */
      FALSE,
      /* Node 2 of kernel enable state */
      TRUE,
      /* Node 3 of kernel enable state */
      FALSE
    }
  }
};
/*******************************************************************************
              Overall CAN Hth Indexing Configuration
********************************************************************************
     { Hth handle Core assignment, Hth handle logical index (HOH ID),
     Hth handle core specific index}
********************************************************************************
           Note: 1. If there are no Transmit objects configured, this structure
           shall not be generated.
*******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_HthIndexType \
  Can_17_McmCan_kMcmCanHthIndexConfig[95] =
{
  {0,0,0},
  {0,0,1},
  {0,0,2},
  {0,0,3},
  {0,0,4},
  {0,0,5},
  {0,0,6},
  {0,0,7},
  {0,1,8},
  {0,1,9},
  {0,1,10},
  {0,1,11},
  {0,1,12},
  {0,1,13},
  {0,1,14},
  {0,1,15},
  {0,1,16},
  {0,1,17},
  {0,1,18},
  {0,1,19},
  {0,1,20},
  {0,1,21},
  {0,1,22},
  {0,1,23},
  {0,1,24},
  {0,1,25},
  {0,1,26},
  {0,1,27},
  {0,1,28},
  {0,1,29},
  {0,1,30},
  {0,1,31},
  {0,1,32},
  {0,1,33},
  {0,1,34},
  {0,1,35},
  {0,1,36},
  {0,2,37},
  {0,2,38},
  {0,2,39},
  {0,2,40},
  {0,2,41},
  {0,2,42},
  {0,2,43},
  {0,2,44},
  {0,2,45},
  {0,2,46},
  {0,2,47},
  {0,2,48},
  {0,2,49},
  {0,2,50},
  {0,2,51},
  {0,2,52},
  {0,2,53},
  {0,2,54},
  {0,2,55},
  {0,2,56},
  {0,2,57},
  {0,2,58},
  {0,2,59},
  {0,2,60},
  {0,2,61},
  {0,2,62},
  {0,2,63},
  {0,2,64},
  {0,2,65},
  {0,3,66},
  {0,3,67},
  {0,3,68},
  {0,3,69},
  {0,3,70},
  {0,3,71},
  {0,3,72},
  {0,3,73},
  {0,3,74},
  {0,3,75},
  {0,3,76},
  {0,3,77},
  {0,3,78},
  {0,3,79},
  {0,3,80},
  {0,3,81},
  {0,3,82},
  {0,3,83},
  {0,3,84},
  {0,3,85},
  {0,3,86},
  {0,3,87},
  {0,3,88},
  {0,3,89},
  {0,3,90},
  {0,3,91},
  {0,3,92},
  {0,3,93},
  {0,3,94}
};
/*******************************************************************************
              Overall CAN Logical Controller Indexing Configuration
********************************************************************************
     { CAN Controller Core assignment, CAN logical indexing indicating the core
       specific indexing,Physical node index and kernel index}
********************************************************************************
           Note:
*******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_LogicalControllerIndexType \
  Can_17_McmCan_kMcmCanLogicContIndexConfig[4] =
{
  {0,0,0,0},
  {0,1,1,0},
  {0,2,2,0},
  {0,3,2,1}
};
/******************************************************************************/
        /* Overall Physical CAN Controller Indexing Configuration */
/******************************************************************************/
      /* Physical CAN indexing indicating the Logical controller ID,
         Core specific controller ID and Core assignment.
         This has a constant array size of 12
         i.e.(PhyKernelID * No of Node in kernel)+(PhyNodeID)*/
/******************************************************************************/
/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars.
in generated code due to Autosar Naming constraints.*/
static const Can_17_McmCan_PhyControllerIndexType \
  Can_17_McmCan_kMcmCanPhyContIndexConfig[12] =
{
  {0,0,0},
  {1,1,0},
  {2,2,0},
  {255,255,255},
  {255,255,255},
  {255,255,255},
  {3,3,0},
  {255,255,255},
  {255,255,255},
  {255,255,255},
  {255,255,255},
  {255,255,255}
};
/******************************************************************************/
                  /* Overall CAN Configuration */
/******************************************************************************/
      /* Over all CAN configurations, structure that points to one of the
           configuration is passed as parameter to Can_Init API */
/******************************************************************************/

/* MISRA2012_RULE_8_7_JUSTIFICATION: Module configuration data structure
   declaration as per Autosar guidelines. This data structure may be needed
   by SW units using CAN Driver APIs */
/* MISRA2012_RULE_8_4_JUSTIFICATION: Definition is as per Autosar guidelines */
const Can_17_McmCan_ConfigType \
  Can_17_McmCan_Config=
{
  /********************* Core specific configuration set **********************/

  /* Pointer to the Core specific CAN configuration set */
  {
    &Can_17_McmCan_kMcmCanConfigCore0,
    NULL_PTR,
    NULL_PTR,
    NULL_PTR
  },
  /****************** Global data shared amongst all cores ********************/

  /* Number of Kernels configured */
  2,
  /* Number of Hrh configured */
  132,
  /* Pointer to CAN Kernel configuration */
  &Can_17_McmCan_kMcmCanModuleConfig[0],
  /* Pointer holding physical controller index data */
  &Can_17_McmCan_kMcmCanPhyContIndexConfig[0],
  /* Pointer holding logical controller index data */
  &Can_17_McmCan_kMcmCanLogicContIndexConfig[0],
  /* Pointer holding configured Hth index data */
  &Can_17_McmCan_kMcmCanHthIndexConfig[0]};

/* MISRA2012_RULE_5_1_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_2_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_4_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
/* MISRA2012_RULE_5_5_JUSTIFICATION: External identifiers going beyond 32 chars
in generated code due to Autosar Naming constraints.*/
#define CAN_17_MCMCAN_STOP_SEC_CONFIG_DATA_QM_GLOBAL_UNSPECIFIED
/* MISRA2012_RULE_20_1_JUSTIFICATION: Memmap header usage as per Autosar
   guideline. */
/* MISRA2012_RULE_4_10_JUSTIFICATION: Memmap header is repeatedly included
   without safegaurd. It complies to Autosar guidelines. */
#include "Can_17_McmCan_MemMap.h"

/*******************************************************************************
**                      Global Variable Definitions                           **
*******************************************************************************/
/*******************************************************************************
**                      Private Constant Definitions                          **
*******************************************************************************/
/*******************************************************************************
**                      Private Variable Definitions                          **
*******************************************************************************/
/*******************************************************************************
**                      Global Function Definitions                           **
*******************************************************************************/
/*******************************************************************************
**                      Private Function Definitions                          **
*******************************************************************************/
