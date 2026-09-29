
/*******************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2020)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**  FILENAME  : Dio_Lcfg.c                                                    **
**                                                                            **
**  VERSION   : 7.0.0                                                         **
**                                                                            **
**  DATE, TIME: 2025-04-28, 10:56:16       !!!IGNORE-LINE!!!                  **
**                                                                            **
**  GENERATOR : Build b191017-0938           !!!IGNORE-LINE!!!                **
**                                                                            **
**  BSW MODULE DECRIPTION : Dio.bmd                                           **
**                                                                            **
**  VARIANT   : Variant LT                                                    **
**                                                                            **
**  PLATFORM  : Infineon AURIX2G                                              **
**                                                                            **
**  AUTHOR    : DL-AUTOSAR-Engineering                                        **
**                                                                            **
**  VENDOR    : Infineon Technologies                                         **
**                                                                            **
**  DESCRIPTION  : Dio configuration generated out of ECUC file               **
**                                                                            **
**  SPECIFICATION(S) : Specification of Dio Driver, AUTOSAR Release 4.2.2     **
**                    and AUTOSAR Release 4.4.0                               **
**                                                                            **
** MAY BE CHANGED BY USER : no                                                **
**                                                                            **
*******************************************************************************/


    
  /*******************************************************************************
  **                             Includes                                       **
  *******************************************************************************/

  /* Include Port Module File */
  #include "Dio.h"

  /*******************************************************************************
  **                      Private Macro Definitions                             **
  *******************************************************************************/

  /*******************************************************************************
  **                      Global Constant Definitions                           **
  *******************************************************************************/
  
  /* Memory mapping of the DIO configuration */
  #define DIO_START_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
  /* MISRA2012_RULE_4_10_JUSTIFICATION: To be compliant with autosar guidelines 
  Dio_Memmap.h header is included without safegaurd.*/
  #include "Dio_MemMap.h"
  /*
      Configuration of DIO Channel groups 
  */
          
    
/* No Groups are configured */

    
  static const Dio_PortChannelIdType Dio_kPortChannelConfig[] =
  { 
    {
    /* Port0*/
      DIO_PORT_CONFIGURED,
      (0x1ac1U)
    },
    {
    /* Port1*/
      DIO_PORT_CONFIGURED,
      (0x00f8U)
    },
    {
    /* Port2*/
      DIO_PORT_CONFIGURED,
      (0x0fc3U)
    },
    {
    /* Port10*/
      DIO_PORT_CONFIGURED,
      (0x0070U)
    },
    {
    /* Port11*/
      DIO_PORT_CONFIGURED,
      (0xe1b7U)
    },
    {
    /* Port12*/
      DIO_PORT_CONFIGURED,
      (0x0003U)
    },
    {
    /* Port13*/
      DIO_PORT_CONFIGURED,
      (0x000fU)
    },
    {
    /* Port14*/
      DIO_PORT_CONFIGURED,
      (0x05fcU)
    },
    {
    /* Port15*/
      DIO_PORT_CONFIGURED,
      (0x018fU)
    },
    {
    /* Port20*/
      DIO_PORT_CONFIGURED,
      (0x5e0bU)
    },
    {
    /* Port21*/
      DIO_PORT_CONFIGURED,
      (0x0020U)
    },
    {
    /* Port22*/
      DIO_PORT_CONFIGURED,
      (0x011fU)
    },
    {
    /* Port23*/
      DIO_PORT_CONFIGURED,
      (0x00d7U)
    },
    {
    /* Port32*/
      DIO_PORT_CONFIGURED,
      (0x00fcU)
    },
    {
    /* Port33*/
      DIO_PORT_CONFIGURED,
      (0xc0c0U)
    },
    {
    /* Port34*/
      DIO_PORT_CONFIGURED,
      (0x0036U)
    },
    {
    /* Port40*/
      DIO_PORT_CONFIGURED,
      (0x0000U)
    }
  };
    const Dio_ConfigType Dio_Config =
    {
                
      /* Dio Port and Channelconfiguration */
            &Dio_kPortChannelConfig[0],
      /* Dio Channelgroup configuration */
      
      NULL_PTR,
      /* Configured number of Dio Channelgroups for configuration */
      DIO_CHANNELGROUPCOUNT
    };
  #define DIO_STOP_SEC_CONFIG_DATA_ASIL_B_GLOBAL_UNSPECIFIED
    /* MISRA2012_RULE_4_10_JUSTIFICATION: To be compliant with autosar guidelines 
    Dio_Memmap.h header is included without safegaurd.*/
    /* MISRA2012_RULE_20_1_JUSTIFICATION: Dio_Memmap.h header included as per Autosar 
    guidelines. */
  #include "Dio_MemMap.h"

/*******************************************************************************
**                      Private Constant Definitions                          **
*******************************************************************************/
