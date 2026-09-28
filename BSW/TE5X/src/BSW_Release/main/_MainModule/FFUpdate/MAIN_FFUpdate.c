
/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "MAIN_Cfg.h"

#include "_MainModule.h"
#include "MAIN_L.h"
#include "GMAIN_L.h"
#include "MAIN_AcuL.h"
#include "MAIN_OcuL.h"
//#include "MAIN_tsk.h"
//#include "GMAIN_tsk.h"
#include "MAIN_FFUpdate.h"
#include "UDS_DidDataUpdate.h"
#include "CCU6.h"
#include "GCCU6.h"

#include "MAIN_MSG_Auto_Can01_L.h"

#ifdef _PLATFORM_GEN_CODE_EMB_
   #include "SWC_FT.h"
   #include "SWC_FS.h"
#endif

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Constant Definitions
 ******************************************************************************/

/*******************************************************************************
 **** Private Variable Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Private Function Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Global Function Definitions
 ******************************************************************************/
void MAIN_FFDataUpdate_1ms(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_ 
   {
      UDS_vidUpdateDidData_0x0D06(SRC_DATA(FSEVBHV_VoltageFild));
      UDS_vidUpdateDidData_0x0D07(SRC_DATA(FSMTMTA_TempWindingMax));
      UDS_vidUpdateDidData_0x0D0A(SRC_DATA(FS_VCU_DCU_ModeReq_U8));
      UDS_vidUpdateDidData_0x0D0F(SRC_DATA(FTCMTTC_MecaTorqueTgt));
      UDS_vidUpdateDidData_0x0D1A(SRC_DATA(FSMTRDG_ExcVoltageFild));
      UDS_vidUpdateDidData_0x0D1B(SRC_DATA(FS_IO_ExitationDiag_B));
      UDS_vidUpdateDidData_0x0D1F(SRC_DATA(FTCMTCS_ParkVoltageTgt));
      UDS_vidUpdateDidData_0x0D20(SRC_DATA(FTCMTCS_iqLutTgt));
      UDS_vidUpdateDidData_0x0D21(SRC_DATA(FTCMTCS_idLutTgt));
      UDS_vidUpdateDidData_0x0D22(SRC_DATA(FTCMTCS_idCorTgt));
      UDS_vidUpdateDidData_0x0D23(SRC_DATA(FTCMTCS_i0dqTgt3[1]));
      UDS_vidUpdateDidData_0x0D24(SRC_DATA(FTCMTCS_i0dqTgt3[2]));
      UDS_vidUpdateDidData_0x0D29(SRC_DATA(FTEVEIT_EstimTempSecFild));

      UDS_vidUpdateDidData_0xDF20(SRC_DATA(FSEVBLV_VoltageFild));

      UDS_vidUpdateDidData_0x0B01(SRC_DATA(FSEVBLV_VoltageFild));
      //UDS_vidUpdateDidData_0x0B02(SRC_DATA());
      UDS_vidUpdateDidData_0x0B03(SRC_DATA(MAIN_MSGf32VCU_VehSpd));
      UDS_vidUpdateDidData_0x0B08(SRC_DATA(RCEVHCM_PB1VoltageFild));
      UDS_vidUpdateDidData_0x0B0B(SRC_DATA(FS_VehicleGear_U8));
      UDS_vidUpdateDidData_0x0D00(SRC_DATA(MAIN_MSGu8MCU_MotWorkSts));
   }
#endif
}

void MAIN_FFDataUpdate_10ms(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_ 
   {
      uint8 u8OcState = MAIN_OCT_u8GetOcCalibState(eMAIN_UNIT_MCU_INDEX);

      UDS_vidUpdateDidData_0x0D01(SRC_DATA(FSEVETA_TempCoolingFild));
      UDS_vidUpdateDidData_0x0D09(SRC_DATA(MAIN_MSGu8MCU_MotWorkMode));
      UDS_vidUpdateDidData_0x0D0B(SRC_DATA(FSEVETA_TempIgbt));
      UDS_vidUpdateDidData_0x0D0C(SRC_DATA(FTMTLCS_Iuvw3_Rms[0]));
      UDS_vidUpdateDidData_0x0D0C_1(SRC_DATA(FTMTLCS_Iuvw3_Rms[1]));
      UDS_vidUpdateDidData_0x0D0C_2(SRC_DATA(FTMTLCS_Iuvw3_Rms[2]));
      UDS_vidUpdateDidData_0x0D0D(SRC_DATA(FS_VCU_DCU_TorqSet_F32));
      UDS_vidUpdateDidData_0x0D0E(SRC_DATA(FSEVIBT_IbatHVFild));
      //UDS_vidUpdateDidData_0x0D10(SRC_DATA(\));
      //UDS_vidUpdateDidData_0x0D11(SRC_DATA(\));
      //UDS_vidUpdateDidData_0x0D12(SRC_DATA(\));
      UDS_vidUpdateDidData_0x0D13(SRC_DATA(FSSMACS_FTModeReq));
      UDS_vidUpdateDidData_0x0D14(SRC_DATA(FSSMACS_AclState));
      UDS_vidUpdateDidData_0x0D15(SRC_DATA(FTSMACS_AclState));
      UDS_vidUpdateDidData_0x0D16(SRC_DATA(FTCMTTC_MecaTorqueMaxMin[1]));
      UDS_vidUpdateDidData_0x0D17(SRC_DATA(FTCMTTC_MecaTorqueMaxMin[0]));
      UDS_vidUpdateDidData_0x0D27(SRC_DATA(FSEVETA_TempDrvBoard));
      UDS_vidUpdateDidData_0x0D28(SRC_DATA(FSEVETA_TempIgbt));
      //UDS_vidUpdateDidData_0x0D2A(SRC_DATA(MAIN_as32OCTrimNvm[0]));
      //UDS_vidUpdateDidData_0x0D2A_1(SRC_DATA(MAIN_as32OCTrimNvm[1]));
      //UDS_vidUpdateDidData_0x0D2A_2(SRC_DATA(MAIN_as32OCTrimNvm[2]));
      //UDS_vidUpdateDidData_0x0D2A_3(SRC_DATA(MAIN_as32OCTrimNvm[3]));
      //UDS_vidUpdateDidData_0x0D2A_4(SRC_DATA(MAIN_as32OCTrimNvm[4]));
      UDS_vidUpdateDidData_0x0D2B(SRC_DATA(u8OcState));

      UDS_vidUpdateDidData_0x4D00(SRC_DATA(RCEVHCM_KM1CloseFlg));
      UDS_vidUpdateDidData_0x4D01(SRC_DATA(RCSMACS_KM1FaultSts));
      UDS_vidUpdateDidData_0x4D02(SRC_DATA(RCEVHCM_KM2CloseFlg));
      UDS_vidUpdateDidData_0x4D03(SRC_DATA(RCSMACS_KM5FaultSts));
      UDS_vidUpdateDidData_0x4D04(SRC_DATA(RCEVHCM_KM3CloseFlg));
      UDS_vidUpdateDidData_0x4D05(SRC_DATA(RCSMACS_KM6FaultSts));
      UDS_vidUpdateDidData_0x4D06(SRC_DATA(RCEVHCM_KM4CloseFlg));
      UDS_vidUpdateDidData_0x4D07(SRC_DATA(RCSMACS_KM9FaultSts));
      UDS_vidUpdateDidData_0x4D08(SRC_DATA(RCEVHCM_KM5CloseFlg));
      UDS_vidUpdateDidData_0x4D09(SRC_DATA(RCSMACS_KM10FaultSts));
      UDS_vidUpdateDidData_0x4D0A(SRC_DATA(RCEVHCM_KM6CloseFlg));
      UDS_vidUpdateDidData_0x4D0B(SRC_DATA(RCSMACS_KM13FaultSts));
      //UDS_vidUpdateDidData_0x4D0C(SRC_DATA(RCEVHCM_KM14CloseFlg));
      //UDS_vidUpdateDidData_0x4D0D(SRC_DATA(RCSMACS_KM14FaultSts));
      UDS_vidUpdateDidData_0x4D0E(SRC_DATA(RCEVHCM_KM7CloseFlg));
      UDS_vidUpdateDidData_0x4D0F(SRC_DATA(RCSMACS_KM15FaultSts));
      //UDS_vidUpdateDidData_0x4D10(SRC_DATA(RCEVHCM_KM16CloseFlg));
      //UDS_vidUpdateDidData_0x4D11(SRC_DATA(RCSMACS_KM16FaultSts));
      UDS_vidUpdateDidData_0x4D12(SRC_DATA(RCEVHCM_KM8CloseFlg));
      UDS_vidUpdateDidData_0x4D13(SRC_DATA(RCSMACS_KM17FaultSts));
      UDS_vidUpdateDidData_0x4D14(SRC_DATA(RCEVHCM_KM9CloseFlg));
      UDS_vidUpdateDidData_0x4D15(SRC_DATA(RCSMACS_KM18FaultSts));
      UDS_vidUpdateDidData_0x4D16(SRC_DATA(MAIN_MSGu8PDU2_HVILSts));
      UDS_vidUpdateDidData_0x4D17(SRC_DATA(RCEVHCM_KM10CloseFlg));
      UDS_vidUpdateDidData_0x4D18(SRC_DATA(RCSMACS_KM19FaultSts));
      UDS_vidUpdateDidData_0x4D19(SRC_DATA(RCEVHCM_KM11CloseFlg));
      UDS_vidUpdateDidData_0x4D1A(SRC_DATA(RCSMACS_KM24FaultSts));
      UDS_vidUpdateDidData_0x4D1B(SRC_DATA(RCSMACS_BswQ1PowerOn));
      //UDS_vidUpdateDidData_0x4D1C(SRC_DATA(\));
      UDS_vidUpdateDidData_0x4D1D(SRC_DATA(RCSMACS_BswQ2PowerOn));
      //UDS_vidUpdateDidData_0x4D1E(SRC_DATA(\));
      UDS_vidUpdateDidData_0x4D1F(SRC_DATA(RCSMACS_BswQ3PowerOn));
      //UDS_vidUpdateDidData_0x4D20(SRC_DATA(\));
      UDS_vidUpdateDidData_0x4D21(SRC_DATA(RCSMACS_BswQ4PowerOn));
      //UDS_vidUpdateDidData_0x4D22(SRC_DATA(\));
      UDS_vidUpdateDidData_0x4D23(SRC_DATA(RCSMACS_BswQ5PowerOn));
      //UDS_vidUpdateDidData_0x4D24(SRC_DATA(\));
      UDS_vidUpdateDidData_0x4D25(SRC_DATA(RCSMACS_BswQ6PowerOn));
      //UDS_vidUpdateDidData_0x4D26(SRC_DATA(\));
      UDS_vidUpdateDidData_0x4D27(SRC_DATA(RCEVHCM_KM1VoltageFild));
      UDS_vidUpdateDidData_0x4D28(SRC_DATA(RCEVHCM_KM2VoltageFild));
      UDS_vidUpdateDidData_0x4D29(SRC_DATA(RCEVHCM_KM3VoltageFild));
      UDS_vidUpdateDidData_0x4D2A(SRC_DATA(RCEVHCM_KM4VoltageFild));
      UDS_vidUpdateDidData_0x4D2B(SRC_DATA(RCEVHCM_KM5VoltageFild));
      UDS_vidUpdateDidData_0x4D2C(SRC_DATA(RCEVHCM_KM6VoltageFild));
      //UDS_vidUpdateDidData_0x4D2D(SRC_DATA(RCEVHCM_KM14VoltageFild));
      UDS_vidUpdateDidData_0x4D2E(SRC_DATA(RCEVHCM_KM7VoltageFild));
      //UDS_vidUpdateDidData_0x4D2F(SRC_DATA(RCEVHCM_KM16VoltageFild));
      UDS_vidUpdateDidData_0x4D30(SRC_DATA(RCEVHCM_KM8VoltageFild));
      UDS_vidUpdateDidData_0x4D31(SRC_DATA(RCEVHCM_KM9VoltageFild));
      UDS_vidUpdateDidData_0x4D32(SRC_DATA(RCEVLCS_LCS1));
      UDS_vidUpdateDidData_0x4D33(SRC_DATA(RCEVETA_NTC1));
      UDS_vidUpdateDidData_0x4D34(SRC_DATA(RCEVLCS_LCS2));
      UDS_vidUpdateDidData_0x4D35(SRC_DATA(RCEVETA_NTC2));
      UDS_vidUpdateDidData_0x4D36(SRC_DATA(RCEVLCS_LCS3));
      UDS_vidUpdateDidData_0x4D37(SRC_DATA(RCEVETA_NTC3));
      UDS_vidUpdateDidData_0x4D38(SRC_DATA(RCEVLCS_LCS4));
      UDS_vidUpdateDidData_0x4D39(SRC_DATA(RCEVETA_NTC4));
      UDS_vidUpdateDidData_0x4D3A(SRC_DATA(RCEVLCS_LCS5));
      UDS_vidUpdateDidData_0x4D3B(SRC_DATA(RCEVETA_NTC5));
      UDS_vidUpdateDidData_0x4D3C(SRC_DATA(RCEVLCS_LCS6));
      UDS_vidUpdateDidData_0x4D3D(SRC_DATA(RCEVETA_NTC6));
   }
#endif
}

void MAIN_FFDataUpdate_100us(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_ 
   {
      uint8 u8IgbtStatus = CCU6_u8GetIGBTStatus();

      UDS_vidUpdateDidData_0x0D02(SRC_DATA(FTMTLCS_Iuvw3[0]));
      UDS_vidUpdateDidData_0x0D03(SRC_DATA(FTMTLCS_Iuvw3[1]));
      UDS_vidUpdateDidData_0x0D04(SRC_DATA(FTMTLCS_Iuvw3[2]));
      UDS_vidUpdateDidData_0x0D05(SRC_DATA(u8IgbtStatus));
      UDS_vidUpdateDidData_0x0D08(SRC_DATA(FSTCGTC_VehicleDirMecaSpeedRpm));
      UDS_vidUpdateDidData_0x0D18(SRC_DATA(SDMTMEP_SinScaled));
      UDS_vidUpdateDidData_0x0D19(SRC_DATA(SDMTMEP_CosScaled));
      UDS_vidUpdateDidData_0x0D1C(SRC_DATA(SDMTMEP_ThetaElecRdSurPi));
      UDS_vidUpdateDidData_0x0D1D(SRC_DATA(FTCMCCS_UM1dTgt));
      UDS_vidUpdateDidData_0x0D1E(SRC_DATA(FTCMCCS_UM1qTgt));
      UDS_vidUpdateDidData_0x0D25(SRC_DATA(FTCMRPC_I0dq3[1]));
      UDS_vidUpdateDidData_0x0D26(SRC_DATA(FTCMRPC_I0dq3[2]));

      UDS_vidUpdateDidData_0xDF23(SRC_DATA(FSTCGTC_VehicleDirMecaSpeedRpm));
   }
#endif
}

void GMAIN_FFDataUpdate_1ms(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_ 
   //if(0 == GMAIN_u8StopCacheFreezeFrameCnt)
   {
      UDS_vidUpdateDidData_0x1D06(SRC_DATA(GFSEVBHV_VoltageFild));
      UDS_vidUpdateDidData_0x1D07(SRC_DATA(GFSMTMTA_TempWindingMax));
      UDS_vidUpdateDidData_0x1D0A(SRC_DATA(GFS_VCU_DCU_ModeReq_U8));
      UDS_vidUpdateDidData_0x1D0F(SRC_DATA(GFTCMTTC_MecaTorqueTgt));
      UDS_vidUpdateDidData_0x1D1A(SRC_DATA(GFSMTRDG_ExcVoltageFild));
      UDS_vidUpdateDidData_0x1D1B(SRC_DATA(GFS_IO_ExitationDiag_B));
      UDS_vidUpdateDidData_0x1D1F(SRC_DATA(GFTCMTCS_ParkVoltageTgt));
      UDS_vidUpdateDidData_0x1D20(SRC_DATA(GFTCMTCS_iqLutTgt));
      UDS_vidUpdateDidData_0x1D21(SRC_DATA(GFTCMTCS_idLutTgt));
      UDS_vidUpdateDidData_0x1D22(SRC_DATA(GFTCMTCS_idCorTgt));
      UDS_vidUpdateDidData_0x1D23(SRC_DATA(GFTCMTCS_i0dqTgt3[1]));
      UDS_vidUpdateDidData_0x1D24(SRC_DATA(GFTCMTCS_i0dqTgt3[2]));
      UDS_vidUpdateDidData_0x1D29(SRC_DATA(GFTEVEIT_EstimTempSecFild));
   }
#endif
}

void GMAIN_FFDataUpdate_10ms(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_ 
   //if(0 == GMAIN_u8StopCacheFreezeFrameCnt)
   {
      uint8 u8OcState = MAIN_OCT_u8GetOcCalibState(eMAIN_UNIT_GCU_INDEX);

      UDS_vidUpdateDidData_0x1D00(SRC_DATA(MAIN_MSGu8MCU2_MotWorkSts));
      UDS_vidUpdateDidData_0x1D01(SRC_DATA(GFSEVETA_TempCoolingFild));
      UDS_vidUpdateDidData_0x1D09(SRC_DATA(MAIN_MSGu8MCU2_MotWorkMode));
      UDS_vidUpdateDidData_0x1D0B(SRC_DATA(GFSEVETA_TempIgbt));
      UDS_vidUpdateDidData_0x1D0C(SRC_DATA(GFTMTLCS_Iuvw3_Rms[0]));
      UDS_vidUpdateDidData_0x1D0C_1(SRC_DATA(GFTMTLCS_Iuvw3_Rms[1]));
      UDS_vidUpdateDidData_0x1D0C_2(SRC_DATA(GFTMTLCS_Iuvw3_Rms[2]));
      UDS_vidUpdateDidData_0x1D0D(SRC_DATA(GFS_VCU_DCU_TorqSet_F32));
      UDS_vidUpdateDidData_0x1D0E(SRC_DATA(GFSEVIBT_IbatHVFild));
      //UDS_vidUpdateDidData_0x1D10(SRC_DATA(\));
      //UDS_vidUpdateDidData_0x1D11(SRC_DATA(\));
      //UDS_vidUpdateDidData_0x1D12(SRC_DATA(\));
      UDS_vidUpdateDidData_0x1D13(SRC_DATA(GFSSMACS_GFTModeReq));
      UDS_vidUpdateDidData_0x1D14(SRC_DATA(GFSSMACS_AclState));
      UDS_vidUpdateDidData_0x1D15(SRC_DATA(GFTSMACS_AclState));
      UDS_vidUpdateDidData_0x1D16(SRC_DATA(GFTCMTTC_MecaTorqueMaxMin[1]));
      UDS_vidUpdateDidData_0x1D17(SRC_DATA(GFTCMTTC_MecaTorqueMaxMin[0]));
      UDS_vidUpdateDidData_0x1D27(SRC_DATA(GFSEVETA_TempDrvBoard));
      UDS_vidUpdateDidData_0x1D28(SRC_DATA(GFSEVETA_TempIgbt));
      //UDS_vidUpdateDidData_0x1D2A(SRC_DATA(GMAIN_as32OCTrimNvm[0]));
      //UDS_vidUpdateDidData_0x1D2A_1(SRC_DATA(GMAIN_as32OCTrimNvm[1]));
      //UDS_vidUpdateDidData_0x1D2A_2(SRC_DATA(GMAIN_as32OCTrimNvm[2]));
      //UDS_vidUpdateDidData_0x1D2A_3(SRC_DATA(GMAIN_as32OCTrimNvm[3]));
      //UDS_vidUpdateDidData_0x1D2A_4(SRC_DATA(GMAIN_as32OCTrimNvm[4]));
      UDS_vidUpdateDidData_0x1D2B(SRC_DATA(u8OcState));
   }
#endif
}

void GMAIN_FFDataUpdate_100us(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_ 
   //if(0 == GMAIN_u8StopCacheFreezeFrameCnt)
   {
      uint8 u8IgbtStatus = GCCU6_u8GetIGBTStatus();

      UDS_vidUpdateDidData_0x1D02(SRC_DATA(GFTMTLCS_Iuvw3[0]));
      UDS_vidUpdateDidData_0x1D03(SRC_DATA(GFTMTLCS_Iuvw3[1]));
      UDS_vidUpdateDidData_0x1D04(SRC_DATA(GFTMTLCS_Iuvw3[2]));
      UDS_vidUpdateDidData_0x1D05(SRC_DATA(u8IgbtStatus));
      UDS_vidUpdateDidData_0x1D08(SRC_DATA(GFSTCGTC_VehicleDirMecaSpeedRpm));
      UDS_vidUpdateDidData_0x1D18(SRC_DATA(GSDMTMEP_SinScaled));
      UDS_vidUpdateDidData_0x1D19(SRC_DATA(GSDMTMEP_CosScaled));
      UDS_vidUpdateDidData_0x1D1C(SRC_DATA(GSDMTMEP_ThetaElecRdSurPi));
      UDS_vidUpdateDidData_0x1D1D(SRC_DATA(GFTCMCCS_UM1dTgt));
      UDS_vidUpdateDidData_0x1D1E(SRC_DATA(GFTCMCCS_UM1qTgt));
      UDS_vidUpdateDidData_0x1D25(SRC_DATA(GFTCMRPC_I0dq3[1]));
      UDS_vidUpdateDidData_0x1D26(SRC_DATA(GFTCMRPC_I0dq3[2]));
   }
#endif
}

void AMAIN_FFDataUpdate_1ms(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_ 
   //if(0 == AMAIN_u8StopCacheFreezeFrameCnt)
   {
      UDS_vidUpdateDidData_0x2D06(SRC_DATA(AFSEVBHV_VoltageFild));
      UDS_vidUpdateDidData_0x2D07(SRC_DATA(AFSMTMTA_TempWindingMax));
      UDS_vidUpdateDidData_0x2D1F(SRC_DATA(AFTCMTCS_ParkVoltageTgt));
      UDS_vidUpdateDidData_0x2D22(SRC_DATA(AFTCMTCS_idCorTgt));
      UDS_vidUpdateDidData_0x2D23(SRC_DATA(AFTCMTCS_i0dqTgt3[1]));
      UDS_vidUpdateDidData_0x2D24(SRC_DATA(AFTCMTCS_i0dqTgt3[2]));
   }
#endif
}

void AMAIN_FFDataUpdate_10ms(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_ 
   //if(0 == AMAIN_u8StopCacheFreezeFrameCnt)
   {
      uint8 u8DCACStatus = 0x05;

      UDS_vidUpdateDidData_0x2D09(SRC_DATA(u8DCACStatus));
      UDS_vidUpdateDidData_0x2D0A(SRC_DATA(u8DCACStatus));
      UDS_vidUpdateDidData_0x2D0C(SRC_DATA(AFTMTLCS_Iu_Rms));
      UDS_vidUpdateDidData_0x2D0C_1(SRC_DATA(AFTMTLCS_Iv_Rms));
      UDS_vidUpdateDidData_0x2D0C_2(SRC_DATA(AFTMTLCS_Iw_Rms));
      UDS_vidUpdateDidData_0x2D0D(SRC_DATA(AFS_SpdSet_F32));
      UDS_vidUpdateDidData_0x2D0E(SRC_DATA(AFSEVIBT_IbatHVFild));
      UDS_vidUpdateDidData_0x2D13(SRC_DATA(AFSSMACS_FTModeReq));
      UDS_vidUpdateDidData_0x2D14(SRC_DATA(AFSSMACS_AclState));
      UDS_vidUpdateDidData_0x2D15(SRC_DATA(AFSSMACS_AclState));
      UDS_vidUpdateDidData_0x2D27(SRC_DATA(AFSEVETA_TempDrvBoard));
      UDS_vidUpdateDidData_0x2D28(SRC_DATA(AFSEVETA_TempIgbt));
   }
#endif
}

void AMAIN_FFDataUpdate_100us(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_ 
   //if(0 == AMAIN_u8StopCacheFreezeFrameCnt)
   {
      UDS_vidUpdateDidData_0x2D02(SRC_DATA(AFTMTLCS_Iuvw3[0]));
      UDS_vidUpdateDidData_0x2D03(SRC_DATA(AFTMTLCS_Iuvw3[1]));
      UDS_vidUpdateDidData_0x2D04(SRC_DATA(AFTMTLCS_Iuvw3[2]));
      UDS_vidUpdateDidData_0x2D08(SRC_DATA(AFTMTSEP_MecaSpeedRpm));
      UDS_vidUpdateDidData_0x2D1C(SRC_DATA(AFTSLOBS_ActEleThetaRd));
      UDS_vidUpdateDidData_0x2D1D(SRC_DATA(AFTCMCCS_UM1dTgt));
      UDS_vidUpdateDidData_0x2D1E(SRC_DATA(AFTCMCCS_UM1qTgt));
      UDS_vidUpdateDidData_0x2D25(SRC_DATA(AFTCMRPC_I0dq3[1]));
      UDS_vidUpdateDidData_0x2D26(SRC_DATA(AFTCMRPC_I0dq3[2]));
   }
#endif
}

void OMAIN_FFDataUpdate_1ms(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_ 
   //if(0 == OMAIN_u8StopCacheFreezeFrameCnt)
   {
      UDS_vidUpdateDidData_0x3D06(SRC_DATA(OFSEVBHV_VoltageFild));
      UDS_vidUpdateDidData_0x3D07(SRC_DATA(OFSMTMTA_TempWindingMax));
      UDS_vidUpdateDidData_0x3D1F(SRC_DATA(OFTCMTCS_ParkVoltageTgt));
      UDS_vidUpdateDidData_0x3D22(SRC_DATA(OFTCMTCS_idCorTgt));
      UDS_vidUpdateDidData_0x3D23(SRC_DATA(OFTCMTCS_i0dqTgt3[1]));
      UDS_vidUpdateDidData_0x3D24(SRC_DATA(OFTCMTCS_i0dqTgt3[2]));
   }
#endif
}

void OMAIN_FFDataUpdate_10ms(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_ 
   //if(0 == OMAIN_u8StopCacheFreezeFrameCnt)
   {
      uint8 u8DCACStatus = 0x05;

      UDS_vidUpdateDidData_0x3D09(SRC_DATA(u8DCACStatus));
      UDS_vidUpdateDidData_0x3D0A(SRC_DATA(u8DCACStatus));
      UDS_vidUpdateDidData_0x3D0C(SRC_DATA(OFTMTLCS_Iu_Rms));
      UDS_vidUpdateDidData_0x3D0C_1(SRC_DATA(OFTMTLCS_Iv_Rms));
      UDS_vidUpdateDidData_0x3D0C_2(SRC_DATA(OFTMTLCS_Iw_Rms));
      UDS_vidUpdateDidData_0x3D0D(SRC_DATA(OFS_SpdSet_F32));
      UDS_vidUpdateDidData_0x3D0E(SRC_DATA(OFSEVIBT_IbatHVFild));
      UDS_vidUpdateDidData_0x3D13(SRC_DATA(OFSSMACS_FTModeReq));
      UDS_vidUpdateDidData_0x3D14(SRC_DATA(OFSSMACS_AclState));
      UDS_vidUpdateDidData_0x3D15(SRC_DATA(OFSSMACS_AclState));
      UDS_vidUpdateDidData_0x3D27(SRC_DATA(OFSEVETA_TempDrvBoard));
      UDS_vidUpdateDidData_0x3D28(SRC_DATA(OFSEVETA_TempIgbt));
   }
#endif
}

void OMAIN_FFDataUpdate_100us(void)
{
#ifdef _PLATFORM_GEN_CODE_EMB_ 
   //if(0 == OMAIN_u8StopCacheFreezeFrameCnt)
   {
      UDS_vidUpdateDidData_0x3D02(SRC_DATA(OFTMTLCS_Iuvw3[0]));
      UDS_vidUpdateDidData_0x3D03(SRC_DATA(OFTMTLCS_Iuvw3[1]));
      UDS_vidUpdateDidData_0x3D04(SRC_DATA(OFTMTLCS_Iuvw3[2]));
      UDS_vidUpdateDidData_0x3D08(SRC_DATA(OFTMTSEP_MecaSpeedRpm));
      UDS_vidUpdateDidData_0x3D1C(SRC_DATA(OFTSLOBS_ActEleThetaRd));
      UDS_vidUpdateDidData_0x3D1D(SRC_DATA(OFTCMCCS_UM1dTgt));
      UDS_vidUpdateDidData_0x3D1E(SRC_DATA(OFTCMCCS_UM1qTgt));
      UDS_vidUpdateDidData_0x3D25(SRC_DATA(OFTCMRPC_I0dq3[1]));
      UDS_vidUpdateDidData_0x3D26(SRC_DATA(OFTCMRPC_I0dq3[2]));
   }
#endif
}

/*******************************************************************************
 ****  Private Function Definitions
 ******************************************************************************/
