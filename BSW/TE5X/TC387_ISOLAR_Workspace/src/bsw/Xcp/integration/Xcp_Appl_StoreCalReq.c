/***************************************************************************************************
* Includes
***************************************************************************************************/
#include "Xcp_Cbk.h"


/***************************************************************************************************
* Variables
***************************************************************************************************/


/***************************************************************************************************
* Functions
***************************************************************************************************/
/* ------------------------------------------------------------------------ */
/* Begin section for code */

#define XCP_START_SEC_CODE
#include "Xcp_MemMap.h"

#if (XCP_STORE_CAL_SUPPORTED == STD_ON)
/**
****************************************************************************************************
Function that shall implement the Resume mode - Store Calibration Request feature. Here the PL can
implement the function to store the calibration data into memory that will retain the variable values
even after power off.
\param[in]  -
\retval     XCP_NO_ERROR              Calibration data stored successfully
\retval     XCP_ERR_WRITE_PROTECTED   The memory location is write protected
***************************************************************************************************/
Std_ReturnType XcpAppl_StoreCalReq()
{
  /*-----------------------------------------------------------------*/
  /* This function is project specific and shall be totally reworked */
  /*-----------------------------------------------------------------*/


  /* Do checks here... */

  return(XCP_NO_ERROR);
}
#endif

/* ------------------------------------------------------------------------ */
/* End section for code */

#define XCP_STOP_SEC_CODE
#include "Xcp_MemMap.h"


