#ifndef __TPPC_UHAL_H_
#define __TPPC_UHAL_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "Pwm_17_GtmCcu6.h" 
#include "Icu_17_TimerIp.h"

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "BSW.h"
#include "Fault_Api.h"
#include "IOHAL.h"
#include "MAIN_OcuTsk.h"

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/
static inline boolean TPPCUHAL_bGetReadyState(void);
static inline boolean TPPC_bLowSideIGBTIsFaulty(void);
static inline boolean TPPC_bHighSideIGBTIsFaulty(void);
static inline boolean TPPC_bHvDcIsOvVolt(void);
static inline void TPPC_vidEnaPwmDrv(boolean bState);
static inline void TPPC_vidClearFaultInfo(void);

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
static inline boolean TPPCUHAL_bGetReadyState(void)
{
   return BSW_bGetBswReadySts();
}

static inline boolean TPPC_bLowSideIGBTIsFaulty(void)
{
   boolean bIsFaulty = FALSE;
   uint16 u16PinLevel = IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N();

   if(0 == u16PinLevel)
   {
      bIsFaulty = TRUE;
   }
   if(FALSE == bIsFaulty)
   {
      bIsFaulty = MAIN_bGetOcuIgbtLSFaultFlag();
   }

   return bIsFaulty;
}

static inline boolean TPPC_bHighSideIGBTIsFaulty(void)
{
   boolean bIsFaulty = FALSE;
   uint16 u16PinLevel = IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N();

   if(0 == u16PinLevel)
   {
      bIsFaulty = TRUE;
   }
   if(FALSE == bIsFaulty)
   {
      bIsFaulty = MAIN_bGetOcuIgbtHSFaultFlag();
   }

   return bIsFaulty;
}

static inline boolean TPPC_bIGBTIsFaulty(void)
{
   boolean bIsFaulty = FALSE;
   uint16 u16PinLevel = IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N();

   if(0 == u16PinLevel)
   {
      bIsFaulty = TRUE;
   }
   
   if(FALSE == bIsFaulty)
   {
      bIsFaulty = MAIN_bGetOcuIgbtLSFaultFlag();
   }

   if(FALSE == bIsFaulty)
   {
      bIsFaulty = MAIN_bGetOcuIgbtHSFaultFlag();
   }

   return bIsFaulty;
}

static inline boolean TPPC_bHvDcIsOvVolt(void)
{
   boolean bIsFaulty = FALSE;

   return bIsFaulty;
}

static inline uint8 TPPC_u8GetFaultLevel(void)
{
   uint8 u8FaultLevel = DSM_u8GetUnitFaultLevel(DSM_UNIT_MAP_OCU);

   return u8FaultLevel;
}

static inline void TPPC_vidEnaPwmDrv(boolean bState)
{
   IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM(1);
}

static inline void TPPC_vidClearFaultInfo(void)
{
   /* !Comment: Clear software OVC flag. */
   //MAIN_bSoftOvCurrPhsUFlg = FALSE;
   //MAIN_bSoftOvCurrPhsVFlg = FALSE;
   //MAIN_bSoftOvCurrPhsWFlg = FALSE;
   MAIN_vidClrOcuFaultFlag();

   /* !Comment: Clear all fault log without DTC information. */
   FaultClear(DSM_UNIT_MAP_OCU);
}

#endif /* __TPPC_UHAL_H_ */

