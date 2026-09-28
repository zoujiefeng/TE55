

#include "Rte_RSID.h"
#include "MAIN_Tsk.h"


#define RSID_STOP_SEC_CODE
#include "RSID_MemMap.h"
#define RSID_START_SEC_CODE
#include "RSID_MemMap.h"

FUNC(Std_ReturnType, AUTOMATIC)
Runnable_0203_RequestRoutineResults(VAR(Dcm_OpStatusType, AUTOMATIC) OpStatus,
									CONSTP2VAR(Dcm_RequestDataOut_DcmDspRoutine_0203_DcmDspRequestRoutineResultsOutSignal_0Type, AUTOMATIC, RTE_APPL_DATA) DataOut_DcmDspRequestRoutineResultsOutSignal_0,
									CONSTP2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, RTE_APPL_DATA) ErrorCode)
{
	Std_ReturnType retValue = RTE_E_OK;

   *ErrorCode = 0;
	return retValue;
	
}
#define RSID_STOP_SEC_CODE
#include "RSID_MemMap.h"
#define RSID_START_SEC_CODE
#include "RSID_MemMap.h"
FUNC(Std_ReturnType, RSID_CODE)
Runnable_0203_Start(VAR(Dcm_OpStatusType, AUTOMATIC) OpStatus,
					CONSTP2VAR(Dcm_StartDataOut_DcmDspRoutine_0203_DcmDspStartRoutineOutSignalType, AUTOMATIC, RTE_APPL_DATA) DataOut_DcmDspStartRoutineOutSignal,
					CONSTP2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, RTE_APPL_DATA) ErrorCode)
{
	Std_ReturnType retValue = RTE_E_OK;
    boolean bLocProgCond1 = FALSE;
    boolean bLocProgCond2 = FALSE;   
    *ErrorCode = 0;

    bLocProgCond1 = MAIN_vidGetProgCondition();
    bLocProgCond2 = GMAIN_vidGetProgCondition();  
    if((bLocProgCond1 == FALSE) || (bLocProgCond2 == FALSE))
    {
       *ErrorCode = 0x22;
       retValue = E_NOT_OK;
    }
   
	return retValue;
}
#define RSID_STOP_SEC_CODE
#include "RSID_MemMap.h"


void Runnable_RSID_100ms(void)
{
}
