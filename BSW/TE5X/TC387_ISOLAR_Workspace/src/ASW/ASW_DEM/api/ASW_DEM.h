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

#ifndef DEM_SWC_H_
#define DEM_SWC_H_

enum ASWDEM_MotorFaultLamp{
   FaultLamp_NoRequst = 0,
   FaultLamp_YellowLED,
   FaultLamp_RedLED
};

enum ASWDEM_MilLamp{
   MilLamp_Off = 0,
   MilLamp_On
};
   
#define ASW_DEM_SET_MAIN_MOTOR_OBD_MIL(State)       MAIN_MSGu8MCUF6_OBDLmpReq = State
#define ASW_DEM_SET_MAIN_MOTOR_FAULT_LAMP(State)    MAIN_MSGu8MCUF6_FaultLmpReq = State
#define ASW_DEM_SET_TCU_OBD_MIL(State)              
#define ASW_DEM_SET_TCU_FAULT_LAMP(State)           
#define ASW_DEM_OBD_PDTC_CLR_CMD                    MAIN_MSGbPDCM_OBD_PDTCClrSts
#define ASW_DEM_OBD_FAULT_INFO_CLR_CMD              MAIN_MSGbPDCM_OBD_FaultClrReq

#define Dem_OBD_EventId_TCUSetSize   1
#define Dem_UDS_EventId_TCUSetSize   21

#define ASW_DEM_OBD_MIL_INDICATOR    3
#define ASW_DEM_UDS_MOTOR_INDICATOR  2

extern const Dem_EventIdType Dem_OBD_EventId_TCUSet[Dem_OBD_EventId_TCUSetSize];
extern const Dem_EventIdType Dem_UDS_EventId_TCUSet[Dem_UDS_EventId_TCUSetSize];


extern void ASWDEM_EndOperationCycle(void);

extern void FRecord_vStartClearDelay(void);
#define Dcm_vStartFrecordClearDelay   FRecord_vStartClearDelay

#endif /* DEM_SWC_H_ */
