#include "NvM.h"
#include "Rte_NvM_Type.h"
#include "TimingCalculation.h"
#include "MemIf.h"
#include "MAIN_ReadAllCallback.h"

#define BSW_START_SEC_VAR_CLEARED_16
#include "Bsw_Memmap.h"
uint16 ReadAllcounter,WriteAllcounter;
#define BSW_STOP_SEC_VAR_CLEARED_16
#include "Bsw_Memmap.h"

#define BSW_START_SEC_VAR_INIT_32
#include "Bsw_Memmap.h"
#if (OS_COUNTER_IS_USED == TRUE)
static uint32 NvM_WriteAll_ElapsedTime = 0;
static uint32 NvM_ReadAll_ElapsedTime = 0;
#else
static float32 NvM_WriteAll_ElapsedTime = 0;
static float32 NvM_ReadAll_ElapsedTime = 0;
#endif
#define BSW_STOP_SEC_VAR_INIT_32
#include "Bsw_Memmap.h"

#define BSW_START_SEC_CODE
#include "Bsw_Memmap.h"
void IC_BswM_NvM_ReadAll ( void );
void IC_BswM_NvM_WriteAll ( void );
void NvM_Integration_WriteAll(void);

uint8 nvm_counter = 0;
void IC_BswM_NvM_ReadAll ( void )
{
	NvM_Rb_StatusType status_NvM;
	MemIf_StatusType stMemIf_en;

	ReadAllcounter=0;
	/* disable detection and report of timeout for FLS */
	Fls_ControlTimeoutDet(0);

	IC_SetCurrentTime();
	if(GetCoreID() == ECUM_CFG_STARTUP_CORE)
    {
        NvM_ReadAll();
		nvm_counter++;
    }
	
	do
	{
		NvM_MainFunction();
		MemIf_Rb_MainFunction();
		NvM_Rb_GetStatus(&status_NvM);
		stMemIf_en = MemIf_Rb_GetStatus();
		ReadAllcounter++;
	} while ( (status_NvM == NVM_RB_STATUS_BUSY ) || (stMemIf_en == MEMIF_BUSY));
	NvM_ReadAll_ElapsedTime = IC_GetElapsedTime();

	/* enable detection and report of timeout for FLS */
	Fls_ControlTimeoutDet(1);
   
   /* read all callback */
   MAIN_vidReadAllCallback();
}


void IC_BswM_NvM_WriteAll ( void )
{
	NvM_Rb_StatusType status_NvM;
	MemIf_StatusType stMemIf_en;

	WriteAllcounter=0;

	/*
	 * Here RTE scheduling is stopped, so WdgM won't be triggered anymore.
	 * we need to prevent the Wdg from reseting the CPU.
	 * WDG_SLOW_MODE so Wdg increases the hardware timeout period
	 */

	
	/* disable detection and report of timeout for FLS */
	Fls_ControlTimeoutDet(0);

	IC_SetCurrentTime();
	NvM_WriteAll();

	do
	{
		/* Trigger watchdog to avoid timer's watchdog is overflow*/
		NvM_MainFunction();
		MemIf_Rb_MainFunction();

		NvM_Rb_GetStatus(&status_NvM);
		stMemIf_en = MemIf_Rb_GetStatus();

		WriteAllcounter++;
	} while ( (status_NvM == NVM_RB_STATUS_BUSY ) || (stMemIf_en == MEMIF_BUSY));
	NvM_WriteAll_ElapsedTime = IC_GetElapsedTime();

	/* enable detection and report of timeout for FLS */
	Fls_ControlTimeoutDet(1);

}

void NvM_Integration_WriteAll(void)
{
	NvM_Rb_StatusType	NvM_Status = NVM_RB_STATUS_UNINIT;
	MemIf_StatusType	MemIf_Status = MEMIF_UNINIT;

	/* Schedule table has been stopped before NvM_WriteAll. */
	NvM_WriteAll();

	do{
		/* Request Memory layers handle request */
		NvM_MainFunction();
		MemIf_Rb_MainFunction();

		/* Get the status of request */
		(void)NvM_Rb_GetStatus(&NvM_Status);
		MemIf_Status = MemIf_Rb_GetStatus();
		//IntWdg_SetTriggerCondition(1);
	} while((NvM_Status == NVM_RB_STATUS_BUSY) || (MemIf_Status == MEMIF_BUSY));
	
	/* Schedule table no need to be restart again as WriteAll designed after Rte Stopped. */
}

#define BSW_STOP_SEC_CODE
#include "Bsw_Memmap.h"