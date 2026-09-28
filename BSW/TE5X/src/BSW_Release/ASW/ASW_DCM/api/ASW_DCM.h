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
#include "MAIN_MSG_Auto_Can01_L.h"


#define Dem_OBD_FaultClrInhibit_Bool  MAIN_MSGbEMS_OBDFaultClrInhi
#define Dem_OBD_TotalMileage          MAIN_MSGu32IC_TotalOdmeter
#define Dem_DrivingCycle_Bool         MAIN_MSGbEMS_DrivingCycle
#define Dem_OBD_WarmCycle_Bool        MAIN_MSGbEMS_WarmUpCycle
#define Dem_OBD_EMSCalLoadVal         MAIN_MSGf32EMS_CalcuLoadValue
#define Dem_OBD_EMSCoolantTemp        MAIN_MSGf32EMS_EngCoolantTemp
#define Dem_OBD_EMSEngSpeed           MAIN_MSGf32EMS_EngSpd
#define Dem_OBD_VehicleSpeed          MAIN_MSGf32GW_ESC_VehSpd
#define Dem_OBD_AccPedal              MAIN_MSGf32EMS_AccPedPos1NormRaw


extern Std_ReturnType Dcm_OBD04_DTCClrInhibit(void);

#endif /* DEM_SWC_H_ */
