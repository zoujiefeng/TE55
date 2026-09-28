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
** FILENAME : HtxStpIf.h                                                      **
**                                                                            **
** REVISION : \$Revision: 31031 $                                             **
**                                                                            **
** DATE : \$LastChangedDate:: 2021-11-29 #$                                   **
**                                                                            **
** PLATFORM : AURIX 2G (TC3XX)                                                **
**                                                                            **
** AUTHOR : AURIX-SW-Dev                                                      **
**                                                                            **
** VENDOR : Hitex (UK) Ltd.                                                   **
**                                                                            **
** TRACEABILITY :  @wi.implements 4321.AURIX2G_SafeTpack/4321-1678            **
**                                                                            **
** DESCRIPTION : Provides the macro and function definitions required for     **
**               SafeTpack modules.                                           **
**                                                                            **
** SPECIFICATION(S) : <spec name, version>                                    **
**                                                                            **
** MAY BE CHANGED BY USER : Yes                                               **
**                                                                            **
*******************************************************************************/

#ifndef HTXSTPIF_H
#define HTXSTPIF_H

/* Possible values to be given for the macro HTXSTPIF_USES_MCALLIB */
#define HTXSTPIF_MCALLIB_OFF                                (0U)
#define HTXSTPIF_MCALLIB_ON                                 (1U)


/* Enable/Disable McalLib availability */
#define HTXSTPIF_USES_MCALLIB                               (HTXSTPIF_MCALLIB_ON)

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

#if(HTXSTPIF_USES_MCALLIB == HTXSTPIF_MCALLIB_ON)

#include "Std_Types.h"
#include "Platform_Types.h"
#include "McalLib.h"
#include "Smu.h"

#endif /* #if(HTXSTPIF_USES_MCALLIB == HTXSTPIF_MCALLIB_ON) */

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

#include "SchM_HtxIntSafeWdg.h"
#include "StpRefApp.h"
#include "AppCbk.h"

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/* Specifies if the SafeTpack Watchdog stack is enabled(STD_ON) or disabled(STD_OFF) */
#define HTXSTPIF_WDG_STACK_STATUS                           (STD_ON)

/* Specifies if the TLF35584 Startup Test module is enabled(STD_ON) or disabled(STD_OFF) */
#define HTXSTPIF_TLF_TEST_STATUS                            (STD_OFF)

/* Specifies if the program flow monitor(HtxPfm) module is enabled(STD_ON) or disabled(STD_OFF) */
#define HTXSTPIF_PFM_STATUS                                 (STD_OFF)

/* Specifies if the program flow monitor(HtxPfm) module is enabled(STD_ON) or disabled(STD_OFF) */
#define HTXSTPIF_SPI_CONFIG_STATUS                          (STD_OFF)

#if(HTXSTPIF_USES_MCALLIB == HTXSTPIF_MCALLIB_ON)

/* Function to calculate CRC32 using AURIX CRC32 instruction */
#define HTXSTPIF_CRC32(a,b)           /*lint --e(970)*/     CRC32((uint32)(a),(uint32)(b))

/* Function to get CPU id */
#define HTXSTPIF_GET_CPU_INDEX()                            Mcal_GetCpuIndex()

/* Function to write CPU EndInit protected 32-bit register */
#define HTXSTPIF_WRITE_CEINIT_PROTREG32(RegAddr,Data)       Mcal_WriteCpuEndInitProtReg(RegAddr,Data)

/* Function to write Peripheral EndInit protected 32-bit register */
#define HTXSTPIF_WRITE_PEINIT_PROTREG32(RegAddr,Data)       Mcal_WritePeripEndInitProtReg(RegAddr,Data)

/* Function to write Safety EndInit protected 32-bit register */
#define HTXSTPIF_WRITE_SEINIT_PROTREG32(RegAddr,Data)       Mcal_WriteSafetyEndInitProtReg(RegAddr,Data)

/* Function to write Safety EndInit protected 32-bit register */
#define HTXSTPIF_WRITE_SEINIT_PROTREG32M(RegAddr,Data,Mask) Mcal_WriteSafetyEndInitProtRegMask(RegAddr,Data,Mask)

/* Function to write Safety EndInit protected 16-bit register */
#define HTXSTPIF_WRITE_SEINIT_PROTREG16(RegAddr,Data)       Mcal_WriteSafetyEndInitProtReg16(RegAddr,Data)

/* Function to the unused variables */
#define HTXSTPIF_UNUSED_PARAMETER(Var)                      UNUSED_PARAMETER(Var)

/* Function to get atomic read of bit fields */
#define HTXSTPIF_GETBITATOMIC(DataValue,BitPos,BitLen)      Mcal_GetBitAtomic(DataValue,BitPos,BitLen)

/* Compiler specific NOP instruction */
#define HTXSTPIF_NOP()                                      NOP()

/* Compiler specific MFCR instruction */
#define HTXSTPIF_MFCR(Reg)                                  MFCR(Reg)

/* Compiler specific MTCR instruction */
#define HTXSTPIF_MTCR(Reg, Data)                            MTCR((Reg),(Data))

/* Funtion to set the SMU alarm */
#define HTXSTPIF_SET_SMU_ALARM_FUNC(AlmGrp,AlmPos)          Smu_SetAlarmStatus((Smu_AlarmGroupId)AlmGrp,(Smu_AlarmIdType)AlmPos)

#else

/* Function to calculate CRC32 using AURIX CRC32 instruction */
#define HTXSTPIF_CRC32(a,b)                                 ERROR_CRC32_NOT_DEFINED(a,b)

/* Function to get CPU id */
#define HTXSTPIF_GET_CPU_INDEX()                            ERROR_GET_CPU_INDEX_NOT_DEFINED

/* Function to write CPU EndInit protected 32-bit register */
#define HTXSTPIF_WRITE_CEINIT_PROTREG32(RegAddr,Data)       ERROR_WRITE_CEINIT_PROTREG32_NOT_DEFINED

/* Function to write Peripheral EndInit protected 32-bit register */
#define HTXSTPIF_WRITE_PEINIT_PROTREG32(RegAddr,Data)       ERROR_WRITE_PEINIT_PROTREG32_NOT_DEFINED

/* Function to write Safety EndInit protected 32-bit register */
#define HTXSTPIF_WRITE_SEINIT_PROTREG32(RegAddr,Data)       ERROR_WRITE_SEINIT_PROTREG32_NOT_DEFINED

/* Function to write Safety EndInit protected 32-bit register */
#define HTXSTPIF_WRITE_SEINIT_PROTREG32M(RegAddr,Data,Mask) ERROR_WRITE_SEINIT_PROTREG32_NOT_DEFINED

/* Function to write Safety EndInit protected 16-bit register */
#define HTXSTPIF_WRITE_SEINIT_PROTREG16(RegAddr,Data)       ERROR_WRITE_SEINIT_PROTREG16_NOT_DEFINED

/* Function to the unused variables */
#define HTXSTPIF_UNUSED_PARAMETER(Var)                      ERROR_UNUSED_PARAMETER_NOT_DEFINED

/* Function to get atomic read of bit fields */
#define HTXSTPIF_GETBITATOMIC(DataValue,BitPos,BitLen)      ERROR_GETBITATOMIC_NOT_DEFINED

/* Compiler specific NOP instruction */
#define HTXSTPIF_NOP()                                      ERROR_NOP_NOT_DEFINED

/* Compiler specific MFCR instruction */
#define HTXSTPIF_MFCR(Reg)                                  ERROR_MFCR_NOT_DEFINED

/* Compiler specific MTCR instruction */
#define HTXSTPIF_MTCR(Reg, Data)                            ERROR_MTCR_NOT_DEFINED

/* Funtion to set the SMU alarm */
#define HTXSTPIF_SET_SMU_ALARM_FUNC(AlmGrp,AlmPos)          ERROR_SMU_SETALARMSTATUS_NOT_DEFINED

#endif /* #if(HTXSTPIF_USES_MCALLIB == HTXSTPIF_MCALLIB_ON) */

/* Function to enter into the critical section for the module HtxIntSafeWdg */
#define HTXINTSAFEWDG_EA_ENTER_WDTSCON0()                   SchM_Enter_HtxIntSafeWdgWdtscon0()

/* Function to enter into the critical section for the module HtxIntSafeWdg */
#define HTXINTSAFEWDG_EA_EXIT_WDTSCON0()                    SchM_Exit_HtxIntSafeWdgWdtscon0()

/* Function to enter into the critical section for the module HtxIntSafeWdg */
#define HTXINTSAFEWDG_EA_ENTER_WDTSCON1()                   SchM_Enter_HtxIntSafeWdgWdtscon1()

/* Function to enter into the critical section for the module HtxIntSafeWdg */
#define HTXINTSAFEWDG_EA_EXIT_WDTSCON1()                    SchM_Exit_HtxIntSafeWdgWdtscon1()

/* CRC32 function used in HtxTLF35584Test module */
#define HTXTLF35584TEST_CRC32(a,b)                          HTXSTPIF_CRC32(a,b)

/* Function to check secondary safety shutdown path activation */
#define HTXTLF35584TEST_IS_SSSP_ACTIVE()                    TLF35584Demo_IsSsspActive()

/* Interrupt service routine for TLF35584 INT pin activation */
#define TLF35584_INT_HANDLER()                              TLF35584Demo_InterruptHandler()

/* Macro to specify the Mask for SMU_AG9 SFR verified in HtxFwCheck module.
   (Bit position specified as '0' in the mask are ignored) */
/* HW errata DTS_TC.H002 */
#define HTXFWCHECK_SMU_AG9_ALM_0_1_MASK                     (0xFFFFFFFCU)

/* Function to report PFM critical errors */
#define HTXSTPIF_REPORT_PFM_ERROR(Error)                    AppCbk_PfmErrorHandler(Error)

/* Function to report PFM detected program sequence or timing faults */
#define HTXSTPIF_REPORT_PFM_FAULT(Seid, MonitorFault)       AppCbk_PfmMonitorFaultHandler(Seid, MonitorFault)
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


#endif /* HTXSTPIF_H */


/* EOF */
