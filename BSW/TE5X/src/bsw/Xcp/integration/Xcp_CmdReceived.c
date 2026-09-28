/***************************************************************************************************
* Includes
***************************************************************************************************/
#include "Xcp_Cbk.h"
#include "Xcp_Priv.h"

/***************************************************************************************************
* Variables
***************************************************************************************************/
extern boolean XCP_bReferPageOn;

/***************************************************************************************************
* Functions
***************************************************************************************************/
/* ------------------------------------------------------------------------ */
/* Begin section for code */

#define XCP_START_SEC_CODE
#include "Xcp_MemMap.h"

#if (XCP_CMD_RECEIVED_NOTIFICATION == STD_ON)
/**
****************************************************************************************************
Function is called when a XCP CMD is received
\param[in]  XcpCmd            Command pointer
\param[in]  Length            Command Length
\param[in]  ProtocolLayerId   Protocol layer id
\return     -
***************************************************************************************************/
void XcpAppl_CmdReceived(const uint8* XcpCmd, uint8 Length, uint8 ProtocolLayerId)
{
  /*-----------------------------------------------------------------*/
  /* This function is project specific and shall be totally reworked */
  /*-----------------------------------------------------------------*/

  /* Remove when parameter used */
  XCP_PARAM_UNUSED(Length);

  /* Here can be done something... */
  if(XCP_CMD_SET_MTA_ID == *XcpCmd)
  {
    if(FALSE != XCP_bReferPageOn)
    {
      /* access non-cached flash memory: 0x80058000 -> 0xA0058000 */
      XCP_MTA(ProtocolLayerId).AddrValue = XCP_MTA(ProtocolLayerId).AddrValue + 0x20000000;
    }
  }
}
#endif /* (XCP_CMD_RECEIVED_NOTIFICATION == STD_ON) */

/* ------------------------------------------------------------------------ */
/* End section for code */

#define XCP_STOP_SEC_CODE
#include "Xcp_MemMap.h"


