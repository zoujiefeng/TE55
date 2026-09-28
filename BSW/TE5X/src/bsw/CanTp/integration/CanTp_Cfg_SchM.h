 
#ifndef CANTP_CFG_SCHM_H
#define CANTP_CFG_SCHM_H

/* BSW-17389 */
LOCAL_INLINE void SchM_Enter_CanTp_EXCLUSIVE_AREA(void);
LOCAL_INLINE void SchM_Exit_CanTp_EXCLUSIVE_AREA(void);

LOCAL_INLINE void SchM_Enter_CanTp_EXCLUSIVE_AREA(void)
{
	/*The integrator shall place his code here which would disable/lock the interrupt*/
}

LOCAL_INLINE void SchM_Exit_CanTp_EXCLUSIVE_AREA(void)
{
	/* The integrator shall place here the code which would unlock the interrupts */
}

#endif

