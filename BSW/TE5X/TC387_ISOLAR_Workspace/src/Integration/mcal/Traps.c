/*******************************************************************************
**                                                                            **
** Copyright (C) Infineon Technologies (2018)                                 **
**                                                                            **
** All rights reserved.                                                       **
**                                                                            **
** This document contains proprietary information belonging to Infineon       **
** Technologies. Passing on and copying of this document, and communication   **
** of its contents is not permitted without prior written authorization.      **
**                                                                            **
********************************************************************************
**                                                                            **
**  FILENAME     : Traps.c                                                    **
**                                                                            **
**  VERSION      : 1.0.0                                                      **
**                                                                            **
**  DATE         : 2018-02-02                                                 **
**                                                                            **
**  VARIANT      : NA                                                         **
**                                                                            **
**  PLATFORM     : Infineon AURIX2G                                           **
**                                                                            **
**  AUTHOR       : DL-AUTOSAR-Engineering                                     **
**                                                                            **
**  VENDOR       : Infineon Technologies                                      **
**                                                                            **
**  DESCRIPTION  : Trap handler functions source file                         **
**                                                                            **
**  MAY BE CHANGED BY USER [yes/no]: Yes                                      **
**                                                                            **
*******************************************************************************/

/*******************************************************************************
**                      Includes                                              **
*******************************************************************************/
#include "Std_Types.h"
#include "IfxScu_reg.h"
#include "IfxCpu_reg.h"
#include "IFX_Os.h"
#include "Traps.h"
/*******************************************************************************
**                      Imported Compiler Switch Check                        **
*******************************************************************************/
#define SHARED_START_SEC_VAR_CLEARED_8
#include "MemMap.h"
uint8 Trap_Status;
#define SHARED_STOP_SEC_VAR_CLEARED_8
#include "MemMap.h"

/*******************************************************************************
**                      Private Macro Definitions                             **
*******************************************************************************/
#define OS_HAL_PCXI_OFFSET              0xFE00
#define CPU_SPINLOCK_TIMEOUT_TRAP   (0xFFFFFFU)

#ifdef _TASKING_C_TRICORE_
#if (_TASKING_C_TRICORE_ == 1U)
#define DEBUG()  __debug()
#endif /* #if (_TASKING_C_TRICORE_ == 1U) */
#endif

#ifdef _GNU_C_TRICORE_
#if (_GNU_C_TRICORE_ == 1U)
#define DEBUG() __asm__ volatile ("debug")
#endif /* #if (_GNU_C_TRICORE_ == 1U) */
#endif

#ifdef _DIABDATA_C_TRICORE_
#if (_DIABDATA_C_TRICORE_ == 1U)
#define DEBUG() __debug()
#define __debug _debug
#endif /* #if (_DIABDATA_C_TRICORE_ == 1U) */
#endif
#ifdef _GHS_C_TRICORE_
#if (_GHS_C_TRICORE_ == 1U)
#define DEBUG() __debug()
#endif /* #if (_GNU_C_TRICORE_ == 1U) */
#endif

/******************************************************************************
**                      Private Variable Definitions                         **
******************************************************************************/

/******************************************************************************
**                      Private Type Definitions                             **
******************************************************************************/

/******************************************************************************
**                      Private Function Declarations                        **
******************************************************************************/
void _trap_0( void );
void _trap_1( void );
void _trap_2( void );
void _trap_3( void );
void _trap_4( void );
void _trap_5( void );
void _trap_6( void );
void _trap_7( void );

#define SHARED_START_SEC_CODE
#include "MemMap.h"
void traptab_cpu0 (void);
#if (MCAL_NO_OF_CORES > 1U)	
void traptab_cpu1 (void);
#endif
#if (MCAL_NO_OF_CORES > 2U)
void traptab_cpu2 (void);
#endif
#define SHARED_STOP_SEC_CODE
#include "MemMap.h"

/******************************************************************************
**                      Global Constant Definitions                          **
******************************************************************************/

/******************************************************************************
**                      Global Variable Definitions                          **
******************************************************************************/
#define SHARED_START_SEC_VAR_CLEARED_32
#include "MemMap.h"
volatile uint32 SFR_Return_Value;
volatile uint32 SV_Return_Value;
static volatile uint32 TrapIdentification[8][8];
volatile uint32 Trap_lock;
static uint32 pcxi;
#define SHARED_STOP_SEC_VAR_CLEARED_32
#include "MemMap.h"

#define SHARED_START_SEC_VAR_INIT_8
#include "MemMap.h"
/* static uint8 tin = 0; */
#define SHARED_STOP_SEC_VAR_INIT_8
#include "MemMap.h"

#define SHARED_START_SEC_VAR_CLEARED_UNSPECIFIED
#include "MemMap.h"
static UpperContext_CSA_Type CSA_Record[6];
#define SHARED_STOP_SEC_VAR_CLEARED_UNSPECIFIED
#include "MemMap.h"
/******************************************************************************
**                      Global Function Definitions                          **
******************************************************************************/
#define SHARED_START_SEC_CODE
#include "MemMap.h"
void Traps_Handler(uint8 class,uint8 tin);
void Traps_Handler(uint8 class,uint8 tin)
{
  volatile uint32 csa_address = 0;
  uint32 *addr;
  uint16 index,i;
  uint32 *csa_ptr ;

  /*save the lower context to csa*/
  __asm ("svlcx");
  /*getting TIN type*/
  //__asm("mov    %0, d15" : "=d"(tin)::);
  /*getting RA(return address)*/
  __asm("mov.aa %0, a11" : "=a"(addr)::);
  /*getting current pcxi register value*/
  pcxi = __mfcr(OS_HAL_PCXI_OFFSET);
  /*record trap class*/
  TrapIdentification[class][tin] = 1;
  /*copy the csa list to non-lost array*/
  for(index=0;index<6;index++)
  {
	  csa_ptr = &CSA_Record[index].PCXI;
	  PCXI_ADDR_TRANSFER(pcxi,csa_address);
	  for(i=0;i<16;i++)
	  {
		  *((uint32 *)csa_ptr+i) = *((uint32 *)csa_address+i);
	  }

	  pcxi = CSA_Record[index].PCXI;

	  if(pcxi == 0x00000000ul)
	  {
		  index = 6;
	  }
  }
}  
/******************************************************************************
** Syntax : void _trap_0( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample Service for  class 0 trap                            **
**                                                                           **
******************************************************************************/
/* Trap class 0 handler. */
void _trap_0( void )
{
  uint32 tin;

  __asm ("svlcx");

  __GETTIN (tin);


  //TrapIdentification[0][tin] = 1;

  //Traps_Handler(0,tin);

  while(1);
  __asm ("rslcx \n");
  __asm ("rfe \n");
}
/******************************************************************************
** Syntax : void _trap_1( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 1 trap                            **
**                                                                           **
******************************************************************************/
/* Trap class 1 handler. */
void _trap_1( void )
{
  uint32 tin;
  __asm ("svlcx");

  __GETTIN (tin);

  //Traps_Handler(1,tin);
  while(1);
  __asm ("rslcx\n");
  __asm ("rfe \n");
}
/******************************************************************************
** Syntax : void _trap_2( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 2 trap                            **
**                                                                           **
******************************************************************************/
/* Trap class 2 handler. */
void _trap_2( void )
{
  uint32 tin;

  __asm ("svlcx");

  __GETTIN (tin);

  //Traps_Handler(2,tin);
  while(1);
  __asm ("rslcx \n");
  __asm ("rfe \n");
}
/******************************************************************************
** Syntax : void _trap_3( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 3 trap                            **
**                                                                           **
******************************************************************************/

/* Trap class 3 handler. */
void _trap_3( void )
{
  /* No local variables used in this function */
  /* No function calls to be performed */
  uint32 tin;

  __asm ("svlcx");

  __GETTIN (tin);

  //Traps_Handler(3,tin);

  while(1);

  __asm ("rslcx \n");
  __asm ("rfe \n");

  /* The return statement here intentionally removed because compiler will
     generate SVLCX instruction in the beginning of trap3 handler which again
     results in trap3 because there is no free CSA, so the warning generated by
     compiler here should be ignored */
}

/******************************************************************************
** Syntax : void _trap_4( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 4 trap                            **
**                                                                           **
******************************************************************************/
/* Trap class 4 handler. */
void _trap_4( void )
{
  uint32 tin;

  __asm ("svlcx\n");

  __GETTIN (tin);

  //Traps_Handler(4,tin);
  while(1);

  __asm ("rslcx \n");
  __asm ("rfe \n");
}
/******************************************************************************
** Syntax : void _trap_5( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 5 trap                            **
**                                                                           **
******************************************************************************/
/* Trap class 5 handler. */
void _trap_5( void )
{
  uint32 tin;

  __asm ("svlcx");

  __GETTIN (tin);

  //Traps_Handler(5,tin);
  while(1);
  __asm ("rslcx \n");
  __asm ("rfe \n");
}

/******************************************************************************
** Syntax : void _trap_6( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 6 trap                            **
**                                                                           **
******************************************************************************/

/* *INDENT-OFF* */


/* Trap class 6 handler. */
void _trap_6( void )
{
    uint8 tin;
  __asm ("svlcx");

  __GETTIN (tin);

  /* TIN can be any number between 0 and 255.
   * storing the tin number in
   * TrapIdentification[6][0]
   */
  //Traps_Handler(6,tin);

   while(1);

  __asm ("rslcx \n");
  __asm ("rfe \n");
}

/******************************************************************************
** Syntax : void _trap_7( void )                                             **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  class 7 trap                            **
**                                                                           **
******************************************************************************/

/* Trap class 7 handler. */
void _trap_7( void )
{
  uint32 tin;

  __asm ("svlcx");
  __GETTIN (tin);

  //Traps_Handler(7,tin);

  while(1);
  __asm ("rslcx \n");
  __asm ("rfe \n");
}

/******************************************************************************
** Syntax : void traptab_cpu0 (void)                                         **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  Cpu0 trap                               **
**                                                                           **
******************************************************************************/
void traptab_cpu0 (void)
{
 /* ; Special trap table used during the Trap test: */

  /* ; Class 0, MMU Traps: */
  __asm (".align 8");
  __asm("j       _trap_0"); /*        ; Jump to the trap handler */

  /* ; Class 1, Internal Protection Traps: */
  __asm(".align 5");
  __asm("j       _trap_1"); /*        ; Jump to the trap handler */

  /* ; Class 2, Instruction Error Traps: */
  __asm(".align 5");
  __asm("j       _trap_2"); /*        ; Jump to the trap handler */

  /* ; Class 3, Context Management Traps: */
  __asm(".align 5");
  __asm("j       _trap_3"); /*        ; Jump to the trap handler */

  /* ; Class 4, System Bus and Peripheral Error Traps: */
  __asm(".align 5");
  __asm("j       _trap_4"); /*        ; Jump to the trap handler */

  /* ; Class 5, Assertion Traps: */
  __asm(".align 5");
  __asm("j       _trap_5"); /*        ; Jump to the trap handler */

  /* ; Class 6, System Call Trap: */
  __asm(".align 5");
  __asm("j       _trap_6"); /*        ; Jump to the trap handler */

  /* ; Class 7, Non Maskable Interrupt Traps: */
  __asm(".align 5");
  __asm("j       _trap_7"); /*        ; Jump to the trap handler */

}

#if (MCAL_NO_OF_CORES > 1U)	
/******************************************************************************
** Syntax : void traptab_cpu1 (void)                                         **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  Cpu1 trap                               **
**                                                                           **
******************************************************************************/


void traptab_cpu1 (void)
{
 /* ; Special trap table used during the Trap test: */

  /* ; Class 0, MMU Traps: */
  __asm (".align 8");
  __asm("j       _trap_0"); /*        ; Jump to the trap handler */

  /* ; Class 1, Internal Protection Traps: */
  __asm(".align 5");
  __asm("j       _trap_1"); /*        ; Jump to the trap handler */

  /* ; Class 2, Instruction Error Traps: */
  __asm(".align 5");
  __asm("j       _trap_2"); /*        ; Jump to the trap handler */

  /* ; Class 3, Context Management Traps: */
  __asm(".align 5");
  __asm("j       _trap_3"); /*        ; Jump to the trap handler */

  /* ; Class 4, System Bus and Peripheral Error Traps: */
  __asm(".align 5");
  __asm("j       _trap_4"); /*        ; Jump to the trap handler */

  /* ; Class 5, Assertion Traps: */
  __asm(".align 5");
  __asm("j       _trap_5"); /*        ; Jump to the trap handler */

  /* ; Class 6, System Call Trap: */
  __asm(".align 5");
  __asm("j       _trap_6"); /*        ; Jump to the trap handler */

  /* ; Class 7, Non Maskable Interrupt Traps: */
  __asm(".align 5");
  __asm("j       _trap_7"); /*        ; Jump to the trap handler */

}
#endif

#if (MCAL_NO_OF_CORES > 2U)
/******************************************************************************
** Syntax : void traptab_cpu2 (void)                                         **
**                                                                           **
** Service ID:       NA                                                      **
**                                                                           **
** Sync/Async:       Synchronous                                             **
**                                                                           **
** Reentrancy:       reentrant                                               **
**                                                                           **
** Parameters (in):  none                                                    **
**                                                                           **
** Parameters (out): none                                                    **
**                                                                           **
** Return value:     none                                                    **
**                                                                           **
** Description : Sample handler for  Cpu2 trap                               **
**                                                                           **
******************************************************************************/
void traptab_cpu2 (void)
{
 /* ; Special trap table used during the Trap test: */

  /* ; Class 0, MMU Traps: */
  __asm (".align 8");
  __asm("j       _trap_0"); /*        ; Jump to the trap handler */

  /* ; Class 1, Internal Protection Traps: */
  __asm(".align 5");
  __asm("j       _trap_1"); /*        ; Jump to the trap handler */

  /* ; Class 2, Instruction Error Traps: */
  __asm(".align 5");
  __asm("j       _trap_2"); /*        ; Jump to the trap handler */

  /* ; Class 3, Context Management Traps: */
  __asm(".align 5");
  __asm("j       _trap_3"); /*        ; Jump to the trap handler */

  /* ; Class 4, System Bus and Peripheral Error Traps: */
  __asm(".align 5");
  __asm("j       _trap_4"); /*        ; Jump to the trap handler */

  /* ; Class 5, Assertion Traps: */
  __asm(".align 5");
  __asm("j       _trap_5"); /*        ; Jump to the trap handler */

  /* ; Class 6, System Call Trap: */
  __asm(".align 5");
  __asm("j       _trap_6"); /*        ; Jump to the trap handler */

  /* ; Class 7, Non Maskable Interrupt Traps: */
  __asm(".align 5");
  __asm("j       _trap_7"); /*        ; Jump to the trap handler */

}

#endif /*#if (MCAL_NO_OF_CORES > 2U)*/

#define SHARED_STOP_SEC_CODE
#include "MemMap.h"