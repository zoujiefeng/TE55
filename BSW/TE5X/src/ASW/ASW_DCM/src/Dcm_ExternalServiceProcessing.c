
#include "Dcm_ExternalServiceProcessing.h"
#include "Dcm.h"
#include "Mcu.h"
#include "SBC.h"

/* Switch for notification of communication control.
 * When STD_ON notification is made independant of the subnet in request.
 * When STD_OFF notification is made when subnet includes EPCAN */
#define NOTIFY_0x28_FOR_ALL_SUBNETS STD_ON

/* Switch for enabling/disabling limited support for
 * limited support for 0x28 (subfuntion 0 and 3 only) */
#define LIMITED_0x28_SUPPORT STD_ON

/* For communication control */
#define COMM_TYPE_NORMAL_BIT (1u<<0u)
#define COMM_TYPE_NM_BIT (1u<<1u)
#define AFFECTED_COM_MASK 0x3u
#define TO_AFFECTED_COM(_x) ((_x) & AFFECTED_COM_MASK)
#define SUBNET_START_BIT 4u
#define SUBNET_MASK 0xFu
#define TO_SUBNET(_x) (((_x) >> SUBNET_START_BIT) & SUBNET_MASK)
#define SUBNET_ALL_NETWORKS 0x0u
#define SUBNET_RX_NETWORKS 0xFu
#define SUBNET_LIN_NETWORKS 0x1u
#define IS_SUPPORTED_SUBNET(_x) ((SUBNET_RX_NETWORKS == (_x)) || (SUBNET_ALL_NETWORKS == (_x)) || (SUBNET_LIN_NETWORKS == (_x)))
#define SUBNET_AFFECTS_EPCAN(_x) (SUBNET_ALL_NETWORKS == (_x))
#define SUBNET_AFFECTS_DCAN(_x) (SUBNET_ALL_NETWORKS == (_x))
#define SUBNET_AFFECTS_PCAN(_x) ((SUBNET_RX_NETWORKS == (_x)) || (SUBNET_ALL_NETWORKS == (_x)))
#define SUBNET_AFFECTS_LIN(_x) (SUBNET_LIN_NETWORKS == (_x)) || (SUBNET_ALL_NETWORKS == (_x))

#if (LIMITED_0x28_SUPPORT == STD_ON)
#define IS_SUPPORTED_0x28_SUBFUNCTION(_x) (((_x) == 0u)|| ((_x) == 3u))
#else
#define IS_SUPPORTED_0x28_SUBFUNCTION(_x) ((_x) <= 3u)
#endif



boolean CommunicationControlActive = FALSE;


uint8 MCU_ResetFlag = 0x00;


static void ResetCommunicationControl(void);
void Dcm_Confirmation(Dcm_IdContextType idContext,PduIdType dcmRxPduId,Dcm_ConfirmationStatusType status);
FUNC(Std_ReturnType,DCM_CODE) Dcm_ExternalService_CommunicationControl(VAR( Dcm_SrvOpStatusType,AUTOMATIC) OpStatus,P2VAR(Dcm_MsgContextType,AUTOMATIC,DCM_INTERN_DATA) pMsgContext,P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) dataNegRespCode_u8);


static void ResetCommunicationControl(void)
{

}

/* Exported functions */

/* @req DCM547 */
/**
 * Confirms transmission of response to externally processed service
 * @param idContext
 * @param dcmRxPduId
 * @param status
 */
void Dcm_Confirmation(Dcm_IdContextType idContext,PduIdType dcmRxPduId,Dcm_ConfirmationStatusType status)
{

}


/* External service processing */
/* Service callouts */

/**
 * Implements UDS service 0x28 (communication control)
 * @param OpStatus
 * @param pMsgContext
 * @return E_OK
 */
FUNC(Std_ReturnType,DCM_CODE) Dcm_ExternalService_CommunicationControl(VAR( Dcm_SrvOpStatusType,AUTOMATIC) OpStatus,P2VAR(Dcm_MsgContextType,AUTOMATIC,DCM_INTERN_DATA) pMsgContext,P2VAR(Dcm_NegativeResponseCodeType,AUTOMATIC,DCM_INTERN_DATA) dataNegRespCode_u8)
{
	(void)OpStatus;
    uint8 subFunction;
    uint8 affectedCom;
    uint8 subnet;

    if( pMsgContext->reqDataLen == 2u ) {
        subFunction = pMsgContext->reqData[0];
        if( IS_SUPPORTED_0x28_SUBFUNCTION(subFunction) ) {
            affectedCom = TO_AFFECTED_COM(pMsgContext->reqData[1]);
            subnet = TO_SUBNET(pMsgContext->reqData[1]);
            if( (0u != affectedCom) && IS_SUPPORTED_SUBNET(subnet) ) {
                if( SUBNET_AFFECTS_DCAN(subnet) ) {
                    if( 0u != (affectedCom & COMM_TYPE_NORMAL_BIT) ) {

                    }
                    if( 0u != (affectedCom & COMM_TYPE_NM_BIT) ) {

					}
                }

#if (NOTIFY_0x28_FOR_ALL_SUBNETS == STD_ON)

#endif

                pMsgContext->resData[0] = subFunction;
                pMsgContext->resDataLen = 1;
            }
            else {
                /* invalid */
                Dcm_SetNegResponse(pMsgContext, DCM_E_REQUESTOUTOFRANGE);
            }
        }
        else {
            /* Subfunction not supported */
            Dcm_SetNegResponse(pMsgContext, DCM_E_SUBFUNCTIONNOTSUPPORTED);
        }
    }
    else {
        Dcm_SetNegResponse(pMsgContext, DCM_E_INCORRECTMESSAGELENGTHORINVALIDFORMAT);
    }
//    Dcm_ProcessingDone(pMsgContext);
    return E_OK;
}

void MCU_vSetResetCmd(void)
{
   MCU_ResetFlag = 0xAA;
}

uint8 MCU_u8GetResetCmd(void)
{
   return MCU_ResetFlag;
}

void Dcm_ResetServiceProccessing(void)
{
   static volatile uint16 ResetDelay = 0;

   if(MCU_ResetFlag == 0xAA)
   {
      SBC_vidSetDeinitWdgCmd(TRUE);
      MCU_ResetFlag = 0x55;
	  ResetDelay = 0;
   }
   else if(MCU_ResetFlag == 0x55)
   {
      ResetDelay++;
      if(ResetDelay >= 2)
      {
         Mcu_PerformReset();
      }
   }
}


/**
 * Main function for external services
 */
void Dcm_ExternalServiceProccessing_MainFunction(void)
{
	Dcm_SesCtrlType currentSession;
	Dcm_SecLevelType currentSecLevel;
	/* Handle resetting communication control. This since it is implemented using external service
	 * and therefore communication control is not reset by Dcm if session or security level is changed
	 * to one where service is not supported. */
	if( CommunicationControlActive ) {
		/* Communication control is active. Check if is allowed to be */
		if( (E_OK == Dcm_GetSesCtrlType(&currentSession)) && (E_OK == Dcm_GetSecurityLevel(&currentSecLevel)) ) {
			/* Communication control is allowed in extended session and security level 0 and 1 */
			if( (DCM_EXTENDED_DIAGNOSTIC_SESSION == currentSession) && ((0u == currentSecLevel) || (1u == currentSecLevel)) ) {
				/* Session and security level are OK. */
			}
			else {
				/* Communication control not allowed. Reset it. */
				ResetCommunicationControl();
			}
		}
		else {
			/* Failed to read session or security level. Reset communication control. */
			ResetCommunicationControl();
		}
	}
}

/**
 * Init function for external service processing
 */
void Dcm_ExternalServiceProccessing_Init(void)
{
	ResetCommunicationControl();
}
