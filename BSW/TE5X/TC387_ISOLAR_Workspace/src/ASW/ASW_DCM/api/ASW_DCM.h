/* *****************************************************************************
 * BEGIN: Banner
 *-----------------------------------------------------------------------------
 *                                 ETAS GmbH
 *                      D-70469 Stuttgart, Borsigstr. 14
 *-----------------------------------------------------------------------------
 *    Administrative Information (automatically filled in by ISOLAR)         
 *-----------------------------------------------------------------------------
 * Project :    ETAS Entry Platfrom
 * Component:  ASW_DEM
 * Description: Testcode for ASW_DEM
 * Version         Author:       Date               Update information
 * 1.0             HAD1HC        7-Nov-2018         Create software
 * 1.1             AGT1HC        19-Nov-2021        Update the Banner
 *-----------------------------------------------------------------------------
 * END: Banner
 ******************************************************************************/

#ifndef DCM_SWC_H_
#define DCM_SWC_H_

#include "Std_Types.h"
#include "MAIN_L.h"
#include "MAIN_tsk.h"

#define Dem_OBD_FaultClrInhibit_Bool  MAIN_MSGbPDCM_OBD_FaultClrInhibit
#define Dem_OBD_TotalMileage          MAIN_MSGf32PDCM_IC_ACUic_totalMileagePhys
#define Dem_DrivingCycle_Bool         MAIN_MSGbPDCM24_DrivingCycle
#define Dem_OBD_WarmCycle_Bool        MAIN_MSGbPDCM_OBD_WarmCycleSts
#define Dem_OBD_EMSCalLoadVal         MAIN_MSGf32EMS1_calLoadValPhys
#define Dem_OBD_EMSCoolantTemp        MAIN_MSGf32EMS8_CoolantTempPhys
#define Dem_OBD_EMSEngSpeed           MAIN_MSGf32EMS1_EngSpdPhys
#define Dem_OBD_VehicleSpeed          MAIN_MSGf32PDCM10_VehicleSpeedPhys
#define Dem_OBD_AccPedal              MAIN_MSGf32PDCM_OBD_AccPedal_PosPhys


extern Std_ReturnType Dcm_OBD04_DTCClrInhibit(void);

#endif /* DEM_SWC_H_ */
