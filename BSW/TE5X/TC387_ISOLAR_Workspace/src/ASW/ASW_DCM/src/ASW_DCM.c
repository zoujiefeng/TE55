/* *****************************************************************************
 * BEGIN: Banner
 *-----------------------------------------------------------------------------
 *                                 ETAS GmbH
 *                      D-70469 Stuttgart, Borsigstr. 14
 *-----------------------------------------------------------------------------
 *    Administrative Information (automatically filled in by ISOLAR)         
 *-----------------------------------------------------------------------------
 * Name: 
 * Description:
 * Version: 1.0
 *-----------------------------------------------------------------------------
 * END: Banner
 ******************************************************************************

 * Project : INVT_TC387_HighTec_AR422
 * Component: /ASW_DCM/ASW_DCM
 * Runnable : All Runnables in SwComponent
 *****************************************************************************
 * Tool Version: ISOLAR-A/B 9.2.1
 * Author: Administrator
 * Date : Tue Feb 28 11:03:02 2023
 ****************************************************************************/

#include "Rte_ASW_DCM.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedIncludes :ASW_DCM_IOControl_EngineTemperature_ReadData_func) ENABLED START */
/* Start of user defined includes  - Do not remove this comment */
#include "MAIN_L.h"
#include "MAIN_tsk.h"
#include "FAULT_FF.h"
#include "Dcm_ExternalServiceProcessing.h"
/* End of user defined includes - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedConstants :ASW_DCM_IOControl_EngineTemperature_ReadData_func) ENABLED START */
/* Start of user defined constant definitions - Do not remove this comment */
/* End of user defined constant definitions - Do not remove this comment */
/*PROTECTED REGION END */

/*PROTECTED REGION ID(FileHeaderUserDefinedVariables :ASW_DCM_IOControl_EngineTemperature_ReadData_func) ENABLED START */
/* Start of user variable defintions - Do not remove this comment  */
/* End of user variable defintions - Do not remove this comment  */
/*PROTECTED REGION END */
#define ASW_DCM_START_SEC_CODE
#include "ASW_DCM_MemMap.h"
FUNC (void, ASW_DCM_CODE) ASW_DCM_PeriodicRunnable_10ms_func/* return value & FctID */
(
		void
)
{

/*please don't remove it*/
	Dcm_ExternalServiceProccessing_MainFunction();
     Dcm_ResetServiceProccessing();
	/* Local Data Declaration */
	/* Local Data Declaration */

	/*PROTECTED REGION ID(UserVariables :ASW_DCM_PeriodicRunnable_10ms_func) ENABLED START */
	/* Start of user variable defintions - Do not remove this comment  */
#if 0   
	/* End of user variable defintions - Do not remove this comment  */
	/*PROTECTED REGION END */
	Std_ReturnType retValue = RTE_E_OK;
	/*  -------------------------------------- Data Read -----------------------------------------  */

	/*  -------------------------------------- Server Call Point  --------------------------------  */

	/*  -------------------------------------- CDATA ---------------------------------------------  */

	/*  -------------------------------------- Data Write ----------------------------------------  */

	/*  -------------------------------------- Trigger Interface ---------------------------------  */

	/*  -------------------------------------- Mode Management -----------------------------------  */

	/*  -------------------------------------- Port Handling -------------------------------------  */

	/*  -------------------------------------- Exclusive Area ------------------------------------  */

	/*  -------------------------------------- Multiple Instantiation ----------------------------  */

	/*PROTECTED REGION ID(User Logic :ASW_DCM_PeriodicRunnable_10ms_func) ENABLED START */
	/* Start of user code - Do not remove this comment */
#endif   
	/* End of user code - Do not remove this comment */
	/*PROTECTED REGION END */

}
#define ASW_DCM_STOP_SEC_CODE
#include "ASW_DCM_MemMap.h"

/*PROTECTED REGION ID(FileHeaderUserDefinedFunctions :ASW_DCM) ENABLED START */
/* Start of user defined functions  - Do not remove this comment */
#if 1
const uint8 Crc8_Table_MAXIM[256] ={
   0x00, 0x5e, 0xbc, 0xe2, 0x61, 0x3f, 0xdd, 0x83, 
   0xc2, 0x9c, 0x7e, 0x20, 0xa3, 0xfd, 0x1f, 0x41, 
   0x9d, 0xc3, 0x21, 0x7f, 0xfc, 0xa2, 0x40, 0x1e, 
   0x5f, 0x01, 0xe3, 0xbd, 0x3e, 0x60, 0x82, 0xdc, 
   0x23, 0x7d, 0x9f, 0xc1, 0x42, 0x1c, 0xfe, 0xa0, 
   0xe1, 0xbf, 0x5d, 0x03, 0x80, 0xde, 0x3c, 0x62, 
   0xbe, 0xe0, 0x02, 0x5c, 0xdf, 0x81, 0x63, 0x3d, 
   0x7c, 0x22, 0xc0, 0x9e, 0x1d, 0x43, 0xa1, 0xff, 
   0x46, 0x18, 0xfa, 0xa4, 0x27, 0x79, 0x9b, 0xc5, 
   0x84, 0xda, 0x38, 0x66, 0xe5, 0xbb, 0x59, 0x07, 
   0xdb, 0x85, 0x67, 0x39, 0xba, 0xe4, 0x06, 0x58, 
   0x19, 0x47, 0xa5, 0xfb, 0x78, 0x26, 0xc4, 0x9a, 
   0x65, 0x3b, 0xd9, 0x87, 0x04, 0x5a, 0xb8, 0xe6, 
   0xa7, 0xf9, 0x1b, 0x45, 0xc6, 0x98, 0x7a, 0x24, 
   0xf8, 0xa6, 0x44, 0x1a, 0x99, 0xc7, 0x25, 0x7b, 
   0x3a, 0x64, 0x86, 0xd8, 0x5b, 0x05, 0xe7, 0xb9, 
   0x8c, 0xd2, 0x30, 0x6e, 0xed, 0xb3, 0x51, 0x0f, 
   0x4e, 0x10, 0xf2, 0xac, 0x2f, 0x71, 0x93, 0xcd, 
   0x11, 0x4f, 0xad, 0xf3, 0x70, 0x2e, 0xcc, 0x92, 
   0xd3, 0x8d, 0x6f, 0x31, 0xb2, 0xec, 0x0e, 0x50, 
   0xaf, 0xf1, 0x13, 0x4d, 0xce, 0x90, 0x72, 0x2c, 
   0x6d, 0x33, 0xd1, 0x8f, 0x0c, 0x52, 0xb0, 0xee, 
   0x32, 0x6c, 0x8e, 0xd0, 0x53, 0x0d, 0xef, 0xb1, 
   0xf0, 0xae, 0x4c, 0x12, 0x91, 0xcf, 0x2d, 0x73, 
   0xca, 0x94, 0x76, 0x28, 0xab, 0xf5, 0x17, 0x49, 
   0x08, 0x56, 0xb4, 0xea, 0x69, 0x37, 0xd5, 0x8b, 
   0x57, 0x09, 0xeb, 0xb5, 0x36, 0x68, 0x8a, 0xd4, 
   0x95, 0xcb, 0x29, 0x77, 0xf4, 0xaa, 0x48, 0x16, 
   0xe9, 0xb7, 0x55, 0x0b, 0x88, 0xd6, 0x34, 0x6a, 
   0x2b, 0x75, 0x97, 0xc9, 0x4a, 0x14, 0xf6, 0xa8, 
   0x74, 0x2a, 0xc8, 0x96, 0x15, 0x4b, 0xa9, 0xf7, 
   0xb6, 0xe8, 0x0a, 0x54, 0xd7, 0x89, 0x6b, 0x35 
};

/* x^8+x^5+x^4+1 */
uint8 Crc_CalcCRC8_MAXIM(const uint8 *data, uint8 startVal, uint16 len);
uint8 Crc_CalcCRC8_MAXIM(const uint8 *data, uint8 startVal, uint16 len)
{
   uint8 crc8 = startVal;
   
   while(len--) 
   {
       crc8 = Crc8_Table_MAXIM[(crc8 ^ *data++) & 0xff];
   }
   
   return crc8;
}
#if 0
FUNC(Std_ReturnType, ASW_DCM_CODE) DataServices_RW_0D37_ReadData(VAR(Dcm_OpStatusType, AUTOMATIC) OpStatus,
                                                                 P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data)
{
   VAR(Std_ReturnType, AUTOMATIC) rtn;
   float f32AutophsAng;
   uint16 u16LocAutophsAngle;
   uint8 u8LocAutophsAngle;
   
   f32AutophsAng = MAIN_f32GetAutophsingAngle();
   u16LocAutophsAngle = (uint16)f32AutophsAng;
   *Data++ = (uint8)( (u16LocAutophsAngle >> 8) & 0x00FF);
   *Data++ = (uint8)(u16LocAutophsAngle & 0x00FF);
   rtn = ((VAR(Std_ReturnType, AUTOMATIC))RTE_E_OK);

   return rtn;
}

FUNC(Std_ReturnType, ASW_DCM_CODE) DataServices_RW_0D37_WriteData(P2CONST(uint8, AUTOMATIC, RTE_APPL_DATA) Data,
                                                                 VAR(Dcm_OpStatusType, AUTOMATIC) OpStatus,
                                                                 P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, RTE_APPL_DATA) ErrorCode)
{
   VAR(Std_ReturnType, AUTOMATIC) rtn;
   uint16 u16LocAutophsAngle;

   u16LocAutophsAngle = (uint16)(Data[0] << 8) + (uint16)(Data[1]);
   MAIN_bSetSaforiAutophsAngC((const uint16)u16LocAutophsAngle);

   rtn = ((VAR(Std_ReturnType, AUTOMATIC))RTE_E_OK);

   return rtn;
}
#endif
FUNC(Std_ReturnType, ASW_DCM_CODE) DataServices_RW_0E00_ReadData(VAR(Dcm_OpStatusType, AUTOMATIC) OpStatus,
                                                                P2VAR(uint8, AUTOMATIC, RTE_APPL_DATA) Data)
{
   VAR(Std_ReturnType, AUTOMATIC) rtn;
   float f32AutophsAng;
   uint16 u16LocAutophsAngle;
   uint8 u8LocAngle[2] = {0};
   uint8 u8LocCrcTemp = 0;
   
   f32AutophsAng = MAIN_f32GetAutophsingAngle();
   u16LocAutophsAngle = (uint16)f32AutophsAng;
   
   u8LocAngle[0] = (uint8)( (u16LocAutophsAngle >> 8) & 0x00FF);
   u8LocAngle[1] = (uint8)(u16LocAutophsAngle & 0x00FF);
   u8LocCrcTemp = Crc_CalcCRC8_MAXIM(u8LocAngle, 0x00, 2);

   *Data++ = (uint8)( (u16LocAutophsAngle >> 8) & 0x00FF);
   *Data++ = (uint8)(u16LocAutophsAngle & 0x00FF);
   *Data++ = u8LocCrcTemp;
   rtn = ((VAR(Std_ReturnType, AUTOMATIC))RTE_E_OK);

   return rtn;
}

FUNC(Std_ReturnType, ASW_DCM_CODE) DataServices_RW_0E00_WriteData(P2CONST(uint8, AUTOMATIC, RTE_APPL_DATA) Data,
                                                                VAR(Dcm_OpStatusType, AUTOMATIC) OpStatus,
                                                                P2VAR(Dcm_NegativeResponseCodeType, AUTOMATIC, RTE_APPL_DATA) ErrorCode)
{
   VAR(Std_ReturnType, AUTOMATIC) rtn;
   uint16 u16LocAutophsAngle;
   uint8 u8LocCrcTemp = 0;

   u8LocCrcTemp = Crc_CalcCRC8_MAXIM(&Data[0], 0x00, 2);

   if(u8LocCrcTemp == Data[2])
   {
      u16LocAutophsAngle = (uint16)(Data[0] << 8) + (uint16)(Data[1]);
      MAIN_bSetSaforiAutophsAngC((const uint16)u16LocAutophsAngle);
      rtn = ((VAR(Std_ReturnType, AUTOMATIC))RTE_E_OK);
   }
   else
   {
      rtn = ((VAR(Std_ReturnType, AUTOMATIC))RTE_E_INVALID);
   }

   return rtn;
}
#endif
/* End of user defined functions - Do not remove this comment */
/*PROTECTED REGION END */

