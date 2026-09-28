#ifndef BSWM_CFG_LE_H
#define BSWM_CFG_LE_H

/*
 **********************************************************************************************************************
 * Includes
 **********************************************************************************************************************
 */
#include "Std_Types.h"

#include "Mcu.h"

#include "Stubs.h"

#include "Rte_Main.h"

#include "CanSM_ComM.h"

#include "CanIf.h"

#include "Can.h"

#include "Can_17_McmCan.h"

#include "Fee.h"

#include "CddCom.h"

/*
 **********************************************************************************************************************
 * Defines/Macros
 **********************************************************************************************************************
 */

/******************************     BswM Logical Expression    *****************************************/

#define BSWMLOGEXP_BSWM_LE_APPREQUESTSHUTDOWN  \
                    ( RTE_MODE_MDG_App_Mode_SWC_REQUEST_SHUTDOWN  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWMSWCMODEREQUEST].dataMode_u16 )

#define BSWMLOGEXP_BSWM_LE_APPRUN  \
                     ( ( CANIF_CS_STARTED  ==  BswM_Cfg_CanSMIndicationModeInfo_ast[BSWM_IDX_BSWM_MRP_CONTROLLERSTATEALREADYSTARTED_CANNODENUM_01].dataMode_en )  \
                     && ( RTE_MODE_MDG_ECUM_STATE_ECUM_STATE_APP_RUN  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].dataMode_u16 )  \
                     && ( CANIF_CS_STARTED  ==  BswM_Cfg_CanSMIndicationModeInfo_ast[BSWM_IDX_BSWM_MRP_CONTROLLERSTATEALREADYSTARTED_CANNODENUM_03].dataMode_en )  \
                     && ( CANIF_CS_STARTED  ==  BswM_Cfg_CanSMIndicationModeInfo_ast[BSWM_IDX_BSWM_MRP_CONTROLLERSTATEALREADYSTARTED_CANNODENUM_02].dataMode_en ) )

#define BSWMLOGEXP_BSWM_LE_DCM_DISABLE_NM  \
                    ( DCM_DISABLE_RX_TX_NM  ==  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].dataMode_u8 )

#define BSWMLOGEXP_BSWM_LE_DCM_DISABLE_RX_ENABLE_TX_NORM  \
                    ( DCM_DISABLE_RX_ENABLE_TX_NORM  ==  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].dataMode_u8 )

#define BSWMLOGEXP_BSWM_LE_DCM_DISABLE_RX_TX_NORM  \
                    ( DCM_DISABLE_RX_TX_NORMAL  ==  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].dataMode_u8 )

#define BSWMLOGEXP_BSWM_LE_DCM_DISABLE_RX_TX_NORM_NM  \
                    ( DCM_DISABLE_RX_TX_NORM_NM  ==  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].dataMode_u8 )

#define BSWMLOGEXP_BSWM_LE_DCM_ENABLE_NM  \
                    ( DCM_ENABLE_RX_TX_NM  ==  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].dataMode_u8 )

#define BSWMLOGEXP_BSWM_LE_DCM_ENABLE_RX_DISABLE_TX_NORM  \
                    ( DCM_ENABLE_RX_DISABLE_TX_NORM  ==  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].dataMode_u8 )

#define BSWMLOGEXP_BSWM_LE_DCM_ENABLE_RX_TX_NORM  \
                    ( DCM_ENABLE_RX_TX_NORM  ==  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].dataMode_u8 )

#define BSWMLOGEXP_BSWM_LE_DCM_ENABLE_RX_TX_NORM_NM  \
                    ( DCM_ENABLE_RX_TX_NORM_NM  ==  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].dataMode_u8 )

#define BSWMLOGEXP_BSWM_LE_DCM_ECURESET_HARD  \
                     ( ( RTE_MODE_DcmEcuReset_HARD  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_MODENOTIFICATION_ECURESET].dataMode_u16 )  \
                     || ( RTE_MODE_DcmEcuReset_KEYONOFF  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_MODENOTIFICATION_ECURESET].dataMode_u16 ) )

#define BSWMLOGEXP_BSWM_LE_DCM_ECURESET_SOFT  \
                    ( RTE_MODE_DcmEcuReset_SOFT  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_MODENOTIFICATION_ECURESET].dataMode_u16 )

#define BSWMLOGEXP_BSWM_LE_NETWORKRELEASE  \
                    ( RTE_MODE_ComMMode_COMM_NO_COMMUNICATION  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_SWC_NETWORK].dataMode_u16 )

#define BSWMLOGEXP_BSWM_LE_NETWORKREQUEST  \
                    ( RTE_MODE_ComMMode_COMM_FULL_COMMUNICATION  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_SWC_NETWORK].dataMode_u16 )

#define BSWMLOGEXP_BSWM_LE_PREPSHUTDOWN  \
                    ( RTE_MODE_MDG_ECUM_STATE_ECUM_STATE_PREP_SHUTDOWN  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].dataMode_u16 )

#define BSWMLOGEXP_BSWM_LE_RUN  \
                    ( RTE_MODE_MDG_ECUM_STATE_ECUM_STATE_RUN  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].dataMode_u16 )

#define BSWMLOGEXP_BSWM_LE_RUN_WAKEUP_CANMSG  \
                     ( ( RTE_MODE_MDG_ECUM_STATE_ECUM_STATE_RUN  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].dataMode_u16 )  \
                     && ( ECUM_WKSTATUS_VALIDATED  ==  BswM_Cfg_EcuMWkpSrcInfo_ast[BSWM_IDX_BSWM_MRP_WKSOURCE_CANMSG].dataState ) )

#define BSWMLOGEXP_BSWM_LE_RUN_WAKEUP_KL15  \
                     ( ( ECUM_WKSTATUS_VALIDATED  ==  BswM_Cfg_EcuMWkpSrcInfo_ast[BSWM_IDX_BSWM_MRP_WKSOURCE_KL15].dataState )  \
                     && ( RTE_MODE_MDG_ECUM_STATE_ECUM_STATE_RUN  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].dataMode_u16 ) )

#define BSWMLOGEXP_BSWM_LE_SHUTDOWN  \
                     ( ( RTE_MODE_MDG_ECUM_STATE_ECUM_STATE_SHUTDOWN  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].dataMode_u16 )  \
                     && ( NVM_REQ_PENDING  !=  BswM_Cfg_NvMJobModeInfo_ast[BSWM_IDX_BSWM_MRP_NVMWRITEALLCOMPLETE].dataMode_en ) )

#define BSWMLOGEXP_BSWM_LE_STARTUPONE  \
                    ( RTE_MODE_MDG_ECUM_STATE_ECUM_STATE_STARTUP_ONE  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].dataMode_u16 )

#define BSWMLOGEXP_BSWM_LE_STARTUPTWO  \
                     ( ( RTE_MODE_MDG_ECUM_STATE_ECUM_STATE_STARTUP_TWO  ==  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].dataMode_u16 )  \
                     && ( NVM_REQ_PENDING  !=  BswM_Cfg_NvMJobModeInfo_ast[BSWM_IDX_BSWM_MRP_NVMREADALLCOMPLETE].dataMode_en ) )

/******************   Macros for checking whether the ModeValues are defined   ******************************/

#define BSWMMODEVALUE_BSWM_LE_APPREQUESTSHUTDOWN  \
        ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWMSWCMODEREQUEST].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_APPRUN  \
        ( ( FALSE  !=  BswM_Cfg_CanSMIndicationModeInfo_ast[BSWM_IDX_BSWM_MRP_CONTROLLERSTATEALREADYSTARTED_CANNODENUM_01].isValidModePresent_b )  \
         && ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].isValidModePresent_b )  \
         && ( FALSE  !=  BswM_Cfg_CanSMIndicationModeInfo_ast[BSWM_IDX_BSWM_MRP_CONTROLLERSTATEALREADYSTARTED_CANNODENUM_03].isValidModePresent_b )  \
         && ( FALSE  !=  BswM_Cfg_CanSMIndicationModeInfo_ast[BSWM_IDX_BSWM_MRP_CONTROLLERSTATEALREADYSTARTED_CANNODENUM_02].isValidModePresent_b ) )

#define BSWMMODEVALUE_BSWM_LE_DCM_DISABLE_NM  \
        ( FALSE  !=  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_DCM_DISABLE_RX_ENABLE_TX_NORM  \
        ( FALSE  !=  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_DCM_DISABLE_RX_TX_NORM  \
        ( FALSE  !=  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_DCM_DISABLE_RX_TX_NORM_NM  \
        ( FALSE  !=  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_DCM_ENABLE_NM  \
        ( FALSE  !=  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_DCM_ENABLE_RX_DISABLE_TX_NORM  \
        ( FALSE  !=  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_DCM_ENABLE_RX_TX_NORM  \
        ( FALSE  !=  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_DCM_ENABLE_RX_TX_NORM_NM  \
        ( FALSE  !=  BswM_Cfg_DcmComModeRequestModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_COMMODEREQUEST_CANNODENUM_01].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_DCM_ECURESET_HARD  \
        ( ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_MODENOTIFICATION_ECURESET].isValidModePresent_b )  \
         && ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_MODENOTIFICATION_ECURESET].isValidModePresent_b ) )

#define BSWMMODEVALUE_BSWM_LE_DCM_ECURESET_SOFT  \
        ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_DCM_MODENOTIFICATION_ECURESET].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_NETWORKRELEASE  \
        ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_SWC_NETWORK].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_NETWORKREQUEST  \
        ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_SWC_NETWORK].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_PREPSHUTDOWN  \
        ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_RUN  \
        ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_RUN_WAKEUP_CANMSG  \
        ( ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].isValidModePresent_b )  \
         && ( FALSE  !=  BswM_Cfg_EcuMWkpSrcInfo_ast[BSWM_IDX_BSWM_MRP_WKSOURCE_CANMSG].isValidModePresent_b ) )

#define BSWMMODEVALUE_BSWM_LE_RUN_WAKEUP_KL15  \
        ( ( FALSE  !=  BswM_Cfg_EcuMWkpSrcInfo_ast[BSWM_IDX_BSWM_MRP_WKSOURCE_KL15].isValidModePresent_b )  \
         && ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].isValidModePresent_b ) )

#define BSWMMODEVALUE_BSWM_LE_SHUTDOWN  \
        ( ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].isValidModePresent_b )  \
         && ( FALSE  !=  BswM_Cfg_NvMJobModeInfo_ast[BSWM_IDX_BSWM_MRP_NVMWRITEALLCOMPLETE].isValidModePresent_b ) )

#define BSWMMODEVALUE_BSWM_LE_STARTUPONE  \
        ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].isValidModePresent_b )

#define BSWMMODEVALUE_BSWM_LE_STARTUPTWO  \
        ( ( FALSE  !=  BswM_Cfg_GenericReqModeInfo_ast[BSWM_IDX_BSWM_MRP_BSWM_MDG].isValidModePresent_b )  \
         && ( FALSE  !=  BswM_Cfg_NvMJobModeInfo_ast[BSWM_IDX_BSWM_MRP_NVMREADALLCOMPLETE].isValidModePresent_b ) )

/*
 **********************************************************************************************************************
 * Extern declarations
 **********************************************************************************************************************
 */

/********************************  LogicalExpressionEvaluateFunctions  ***************************************/
#define BSWM_START_SEC_CODE
#include "BswM_MemMap.h"

extern void BswM_Cfg_LE_BswM_LE_AppRequestShutdown(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_AppRun(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_DCM_DISABLE_NM(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_DCM_DISABLE_RX_ENABLE_TX_NORM(
		boolean *isValidMode_pb, boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_DCM_DISABLE_RX_TX_NORM(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_DCM_DISABLE_RX_TX_NORM_NM(
		boolean *isValidMode_pb, boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_DCM_ENABLE_NM(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_DCM_ENABLE_RX_DISABLE_TX_NORM(
		boolean *isValidMode_pb, boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_DCM_ENABLE_RX_TX_NORM(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_DCM_ENABLE_RX_TX_NORM_NM(
		boolean *isValidMode_pb, boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_DCM_EcuReset_HARD(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_DCM_EcuReset_SOFT(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_NetworkRelease(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_NetworkRequest(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_PrepShutdown(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_Run(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_Run_Wakeup_CanMsg(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_Run_Wakeup_KL15(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_Shutdown(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_StartupOne(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);
extern void BswM_Cfg_LE_BswM_LE_StartupTwo(boolean *isValidMode_pb,
		boolean *hasLogExpRes_pb);

#define BSWM_STOP_SEC_CODE
#include "BswM_MemMap.h"

#endif  /* BSWM_CFG_LE_H */
/**********************************************************************************************************************
 * End of header file
 **********************************************************************************************************************/
