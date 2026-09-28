#ifndef PDUR_CFG_SCHM_H
#define PDUR_CFG_SCHM_H

#include "SchM.h"
#include "rba_BswSrv.h"

#if ( PDUR_ECUC_RB_RTE_IN_USE == STD_ON )
/* If the RTE code generation is Involved please include the below file */
#include "SchM_PduR.h"
#endif /* #if ( PDUR_ECUC_RB_RTE_IN_USE == STD_ON ) */

/* Looks like too many locks in PduR !!*/
LOCAL_INLINE void SchM_Enter_PduR_LockTpGatewayBuffer(void);
LOCAL_INLINE void SchM_Exit_PduR_LockTpGatewayBuffer(void);
LOCAL_INLINE void SchM_Enter_PduR_LockDisableRoutingNoNest(void);
LOCAL_INLINE void SchM_Exit_PduR_LockDisableRoutingNoNest(void);
LOCAL_INLINE void SchM_Enter_PduR_LockEnableRoutingNoNest(void);
LOCAL_INLINE void SchM_Exit_PduR_LockEnableRoutingNoNest(void);


LOCAL_INLINE void SchM_Enter_PduR_LockIFGatewayTx(void);
LOCAL_INLINE void SchM_Exit_PduR_LockIFGatewayTx(void);
LOCAL_INLINE void SchM_Enter_PduR_LockIFGatewayTxConf(void);
LOCAL_INLINE void SchM_Exit_PduR_LockIFGatewayTxConf(void);
LOCAL_INLINE void SchM_Enter_PduR_LockTpGatewayCopyRxData(void);
LOCAL_INLINE void SchM_Exit_PduR_LockTpGatewayCopyRxData(void);
LOCAL_INLINE void SchM_Enter_PduR_LockTpGatewayCopyTxDataNoNest(void);
LOCAL_INLINE void SchM_Exit_PduR_LockTpGatewayCopyTxDataNoNest(void);
LOCAL_INLINE void SchM_Enter_PduR_LockIFGatewayTriggerTxNoNest(void);
LOCAL_INLINE void SchM_Exit_PduR_LockIFGatewayTriggerTxNoNest(void);
LOCAL_INLINE void SchM_Enter_PduR_LockIFGatewayTriggerTx(void);
LOCAL_INLINE void SchM_Exit_PduR_LockIFGatewayTriggerTx(void);
LOCAL_INLINE void SchM_Enter_PduR_LockIFGatewayTriggerTxConf(void);
LOCAL_INLINE void SchM_Exit_PduR_LockIFGatewayTriggerTxConf(void);
LOCAL_INLINE void SchM_Enter_PduR_LockMcTpTxCopyTxData(void);
LOCAL_INLINE void SchM_Exit_PduR_LockMcTpTxCopyTxData(void);
LOCAL_INLINE void SchM_Enter_PduR_LockMcTpTxConf(void);
LOCAL_INLINE void SchM_Exit_PduR_LockMcTpTxConf(void);
LOCAL_INLINE void SchM_Enter_PduR_LockMCTxConfNoNest(void);
LOCAL_INLINE void SchM_Exit_PduR_LockMCTxConfNoNest(void);
/* The integrator shall implement the particular services SchM_Enter and SchM_Exit.*/

/* Since there is currently only one resource used (PDUR_RESOURCE), there is no need to consider the resource name*/

LOCAL_INLINE void SchM_Enter_PduR_LockIFGatewayTx(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockIFGatewayTx(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Enter_PduR_LockIFGatewayTxConf(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockIFGatewayTxConf(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Enter_PduR_LockIFGatewayTriggerTxConf(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockIFGatewayTriggerTxConf(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Enter_PduR_LockEnableRoutingNoNest(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Enter_PduR_LockIFGatewayTriggerTxNoNest(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Enter_PduR_LockIFGatewayTriggerTx(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Enter_PduR_LockDisableRoutingNoNest(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockDisableRoutingNoNest(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Enter_PduR_LockMCTxConfNoNest(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockMCTxConfNoNest(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockIFGatewayTriggerTxNoNest(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockIFGatewayTriggerTx(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockEnableRoutingNoNest(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
    /* BSW-17388 */
}

LOCAL_INLINE void SchM_Enter_PduR_LockTpGatewayBuffer(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
        /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockTpGatewayBuffer(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
        /* BSW-17388 */
}

LOCAL_INLINE void SchM_Enter_PduR_LockTpGatewayCopyRxData(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
        /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockTpGatewayCopyRxData(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
        /* BSW-17388 */
}

LOCAL_INLINE void SchM_Enter_PduR_LockMcTpTxCopyTxData(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
        /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockMcTpTxCopyTxData(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
        /* BSW-17388 */
}

LOCAL_INLINE void SchM_Enter_PduR_LockMcTpTxConf(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
        /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockMcTpTxConf(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
        /* BSW-17388 */
}

LOCAL_INLINE void SchM_Enter_PduR_LockTpGatewayCopyTxDataNoNest(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
        /* BSW-17388 */
}

LOCAL_INLINE void SchM_Exit_PduR_LockTpGatewayCopyTxDataNoNest(void)
{
    /*The integrator shall place his code here which would disable/lock the interrupt*/
        /* BSW-17388 */
}

#endif /* PDUR_CFG_SCHM_H */

/* -------- END OF FILE -------------------------------------------------------*/


