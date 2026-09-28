/**
 * \file
 * \ingroup DEM_PRJ_TPL
 * See Dem_PrjSpecificIndiHandling.h_tpl for documentation
 */

#include "Dem_EventStatus.h"
#include "rba_DemObdBasic_PdtcMem.h"
#include "ASW_DEM.h"
#if 0
Std_ReturnType Dem_GetIndicatorStatus(uint8 IndicatorId, Dem_IndicatorStatusType* IndicatorStatus)
{
  return E_NOT_OK;
}
#endif
Std_ReturnType Dem_GetTcuIndicatorStatus(uint8 IndicatorId)
{
   Std_ReturnType eStatus = 0;
   boolean bLocEventStatus = FALSE;
   uint16 u16FaultIndex = 0;
#if 0

   switch(IndicatorId)
   {
      case ASW_DEM_OBD_MIL_INDICATOR:
      {
         for(u16FaultIndex = 0; u16FaultIndex < (sizeof(Dem_OBD_EventId_TCUSet) / sizeof(Dem_EventIdType)); u16FaultIndex++)
         {
            bLocEventStatus = Dem_EvtSt_GetConfirmedDTC(Dem_OBD_EventId_TCUSet[u16FaultIndex]);
            if(TRUE == bLocEventStatus)
            {
               eStatus = 1;
               break;
            }
         }
         break;
      }
      case ASW_DEM_UDS_MOTOR_INDICATOR:
      {
         for(u16FaultIndex = 0; u16FaultIndex < (sizeof(Dem_UDS_EventId_TCUSet) / sizeof(Dem_EventIdType)); u16FaultIndex++)
         {
            bLocEventStatus = Dem_EvtSt_GetWIR(Dem_UDS_EventId_TCUSet[u16FaultIndex]);
            if(TRUE == bLocEventStatus)
            {
               eStatus = 1;
               break;
            }
         }
         break;
      }
      default:
      {
         break;
      }
   }

#endif
   return eStatus;
}
extern void rba_DemObdBasic_PdtcMem_ClearAllPDTC(void);

void Dem_OBDClearPDTC(void)
{
   rba_DemObdBasic_PdtcMem_ClearAllPDTC();
}

// void Dem_IndicatorAttributeMainFunction(void)
// {
//     /* Project Specific Implementation */
// }

// void Dem_IndicatorAttributeInit(void)
// {
//     /* Project Specific Implementation */
// }

// void Dem_SetIndicatorDeActivation(Dem_EventIdType EventId, Dem_UdsStatusByteType isoByteOld, Dem_UdsStatusByteType isoByteNew)
// {
//     /* Project Specific Implementation */
// }

// void Dem_SetIndicatorActivation(Dem_EventIdType EventId, Dem_UdsStatusByteType isoByteOld, Dem_UdsStatusByteType isoByteNew)
// {
//     /* Project Specific Implementation */
// }

// void Dem_IndicatorAttribute_ConsistencyCheck(Dem_EventIdType EventId, uint16_least EventStatus )
// {
//     /* Project Specific Implementation */
// }


// Std_ReturnType Dem_SetWIRStatus (
//         Dem_EventIdType EventId,
//         boolean WIRStatus
// )
// {
//     return E_NOT_OK;
// }



