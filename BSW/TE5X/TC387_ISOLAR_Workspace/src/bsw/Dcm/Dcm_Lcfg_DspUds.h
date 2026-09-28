
#ifndef DCM_LCFG_DSPUDS_H
#define DCM_LCFG_DSPUDS_H
/*
 ***************************************************************************************************
 *    DCM Appl API Prototyes generated from configuration
 ***************************************************************************************************
*/
#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern Std_ReturnType Dcm_DidServices_F186_ReadData(uint8 * adrData_pu8);
#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
#define DCM_START_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"







    
                
    
    
    



/***Extern declarations to obtain NRC value from the application in case of E_NOT_OK return from ReadData API ***/
extern Std_ReturnType DcmAppl_DcmReadDataNRC(uint16 Did,uint32 DidSignalPosn,Dcm_NegativeResponseCodeType * ErrorCode);
/***Extern declarations for XXX_ReadData of type USE_DATA_ASYNCH_FNC ***/
extern Std_ReturnType DcmDspData_BootTime_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_ActiveBank_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_BootReqCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_BootRspCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_AppReqCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_AppRspCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntBswLibDate_0410_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntOfflineDate_0411_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntProductionLineId_0412_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntProjectId_0413_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntBswSvnRev_0414_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntBootSvnRev_0415_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntFpgaSvnRev_0416_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntCpldSvnRev_0417_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntHwSvnRev_0418_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_IntAddlInfo_0419_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_ResetLog_0420_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D000_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D001_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D002_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D003_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D004_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D005_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D007_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D008_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D009_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D010_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D011_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D012_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D013_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D014_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D015_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D016_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D017_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D018_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D019_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D020_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D021_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D022_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D023_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D024_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D025_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D026_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D027_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D028_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D029_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D030_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D031_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D032_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D033_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D034_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D035_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D036_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D037_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D038_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D039_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D040_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D041_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D042_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D043_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D044_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D045_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D046_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D047_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D048_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_D049_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0D2B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_RW_0E00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E01_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0E0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D01_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D10_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D11_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D12_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D13_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D14_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D15_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D16_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D17_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D18_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D19_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D1A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D1B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D1C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D1D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D1E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D1F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D24_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D25_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D26_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D27_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D28_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D29_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D2A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1D2B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_RW_1E00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E01_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_1E0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D11_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D12_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D13_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D14_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D15_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D1C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D1D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D1E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D1F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D24_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D25_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D26_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D27_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2D28_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_2E0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D11_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D12_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D13_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D14_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D15_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D1C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D1D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D1E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D1F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D24_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D25_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D26_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D27_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3D28_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_3E0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D00_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D01_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D02_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D03_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D04_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D05_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D06_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D07_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D08_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D09_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D0A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D0B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D0C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D0D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D0E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D0F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D10_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D11_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D12_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D13_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D14_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D15_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D16_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D17_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D18_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D19_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D1A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D1B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D1C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D1D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D1E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D1F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D24_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D25_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D26_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D27_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D28_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D29_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D2A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D2B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D2C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D2D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D2E_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D2F_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D30_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D31_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D32_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D33_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D34_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D35_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D36_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D37_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D38_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D39_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D3A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D3B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D3C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_4D3D_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_DFEA_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_DFEB_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_DFEC_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_DFED_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F18A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F197_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F187_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F188_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F191_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F193_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F189_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F190_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_B303_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F18C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F1E0_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0B20_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0B21_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0B22_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_0B23_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);


 /***Extern declarations for XXX_ReadData of type USE_DATA_SYNCH_FNC ***/
extern Std_ReturnType Dcm_DataServices_ReadData (uint8 * Data);

 
 




/***Extern declarations for XXX_WriteData of type USE_DATA_ASYNCH_FNC  and of fixed length ***/
extern Std_ReturnType DataServices_RW_0E00_WriteData (const uint8 * Data,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);
extern Std_ReturnType DataServices_RW_1E00_WriteData (const uint8 * Data,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);














/***Extern declarations for XXX_FreezeCurrentStateFnc of type USE_DATA_SYNCH_FNC ***/
extern Std_ReturnType Dcm_DataServices_FreezeCurrentState (Dcm_NegativeResponseCodeType * ErrorCode);



/***Extern declarations for XXX_FreezeCurrentStateFnc of type USE_DATA_SYNCH_FNC with External Control Mask of mask size 1***/

/***Extern declarations for XXX_FreezeCurrentStateFnc of type USE_DATA_SYNCH_FNC with External Control Mask of mask size 2***/

/***Extern declarations for XXX_FreezeCurrentStateFnc of type USE_DATA_SYNCH_FNC with External Control Mask of mask size greater than 2***/











/***Extern declarations for XXX_ResetToDefaultFnc of type USE_DATA_SYNCH_FNC ***/
extern Std_ReturnType Dcm_DataServices_ResetToDefault (Dcm_NegativeResponseCodeType * ErrorCode);


/***Extern declarations for XXX_ResetToDefaultFnc of type USE_DATA_SYNCH_FNC with External Control Mask of mask size 1***/

/***Extern declarations for XXX_ResetToDefaultFnc of type USE_DATA_SYNCH_FNC with External Control Mask of mask size 2***/

/***Extern declarations for XXX_ResetToDefaultFnc of type USE_DATA_SYNCH_FNC with External Control Mask of mask size greater than 2***/












/***ReturnControlToEcu with Internal or No MASK*****/
/***Extern declarations for ReturnControlToEcuFnc.Only Synchronous API is used irrespective of UsePort Configuration to USE_DATA_SYNCH_FNC or USE_DATA_ASYNCH_FNC **/
extern Std_ReturnType Dcm_DataServices_ReturnControlToECU (Dcm_NegativeResponseCodeType * ErrorCode);

/***ReturnControlToEcu EXTERNAL CONTROL MASK with MASK SIZE = 1 ***/
/***Extern declarations for ReturnControlToEcuFnc.Only Synchronous API is used irrespective of UsePort Configuration to USE_DATA_SYNCH_FNC or USE_DATA_ASYNCH_FNC **/

/***ReturnControlToEcu EXTERNAL CONTROL MASK with MASK SIZE = 2 ***/ 
/***Extern declarations for ReturnControlToEcuFnc.Only Synchronous API is used irrespective of UsePort Configuration to USE_DATA_SYNCH_FNC or USE_DATA_ASYNCH_FNC **/


/***ReturnControlToEcu EXTERNAL CONTROL MASK with MASK SIZE greater than 2 ***/ 
/***Extern declarations for ReturnControlToEcuFnc.Only Synchronous API is used irrespective of UsePort Configuration to USE_DATA_SYNCH_FNC or USE_DATA_ASYNCH_FNC **/






/***Extern declarations for ShortTermAdjustmentFnc of type USE_DATA_SYNCH_FNC  for Fixed LENGTH with no control mask or internal control mask handling***/
extern Std_ReturnType Dcm_DataServices_ShortTermAdjustment (const uint8 * ControlStateInfo,Dcm_NegativeResponseCodeType * ErrorCode);




/***Extern declarations for ShortTermAdjustmentFnc of type USE_DATA_SYNCH_FNC  for variable LENGTH with no control mask or internal control mask handling***/












/***Routine control Appl functions***/


/*** Extern declaration for DcmDspRequestRoutine_GcuPosSelfLearning ***/
extern Std_ReturnType DcmDspRequestRoutine_GcuPosSelfLearning(
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for DcmDspRequestRoutine_TcuPosLearning ***/
extern Std_ReturnType DcmDspRequestRoutine_TcuPosLearning(
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for DcmDspRequestRoutine_ZeroPosSelfLearning ***/
extern Std_ReturnType DcmDspRequestRoutine_ZeroPosSelfLearning(
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);




/*** Extern declaration for DcmDspStartRoutine_GcuPosSelfLearning ***/
extern Std_ReturnType DcmDspStartRoutine_GcuPosSelfLearning(
                         Dcm_OpStatusType OpStatus,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for DcmDspStartRoutine_StartSwapCallback ***/
extern Std_ReturnType DcmDspStartRoutine_StartSwapCallback(
                         Dcm_OpStatusType OpStatus,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for DcmDspStartRoutine_StayInBootCallback ***/
extern Std_ReturnType DcmDspStartRoutine_StayInBootCallback(
                         const uint8 * dataIn1,
                         Dcm_OpStatusType OpStatus,
                          uint16 CurrentDataLength,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for DcmDspStartRoutine_TcuPosLearning ***/
extern Std_ReturnType DcmDspStartRoutine_TcuPosLearning(
                         Dcm_OpStatusType OpStatus,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for DcmDspStartRoutine_ZeroPosSelfLearning ***/
extern Std_ReturnType DcmDspStartRoutine_ZeroPosSelfLearning(
                         Dcm_OpStatusType OpStatus,
                          Dcm_NegativeResponseCodeType * ErrorCode);

/***Routine control Appl functions for Range Routine***/






/***Seca dcmDspSecurityGetSeedFnc functions with Useport  USE_ASYNCH_FNC ***/

// prototypes for flexible length configuration

// prototypes for fixed length configuration
extern Std_ReturnType GetSeed_L1(Dcm_SecLevelType SecLevel_u8,uint32 Seedlen_u32,uint32 AccDataRecsize_u32,uint8 * SecurityAccessDataRecord,uint8 * Seed,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);


/***Seca dcmDspSecurityCompareKeyFnc functions with Useport  USE_ASYNCH_FNC ***/
extern Std_ReturnType CompareKey_L1(uint32 KeyLen_32,const uint8 * Key,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);

/***Seca dcmDspSecurityGetAttemptCounterFnc functions with Useport  USE_ASYNCH_FNC ***/
extern Std_ReturnType Dcm_GetAttemptCounter_L1( Dcm_OpStatusType OpStatus,uint8 * AttemptCounter);
/***Seca dcmDspSecuritySetAttemptCounterFnc functions with Useport  USE_ASYNCH_FNC ***/
extern Std_ReturnType Dcm_SetAttemptCounter_L1( Dcm_OpStatusType OpStatus,uint8 AttemptCounter);


#define DCM_STOP_SEC_CODE /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"



/* Generated Out Buffers for RoutineControl service -> Array Data Types */

#define DCM_START_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern sint16 Dcm_RCSigOutN_as16[];
#define DCM_STOP_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern sint32 Dcm_RCSigOutN_as32[];
#define DCM_STOP_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern sint8 Dcm_RCSigOutN_as8[];
#define DCM_STOP_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern uint32 Dcm_RCSigOutN_au32[];
#define DCM_STOP_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern uint16 Dcm_RCSigOutN_au16[];
#define DCM_STOP_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern uint8 Dcm_RCSigOutN_au8[];
#define DCM_STOP_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"



/* Generated In Buffers for RoutineControl service -> Array Data Types */

#define DCM_START_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern sint16 Dcm_RCSigInN_as16[];
#define DCM_STOP_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern sint32 Dcm_RCSigInN_as32[];
#define DCM_STOP_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern sint8 Dcm_RCSigInN_as8[];
#define DCM_STOP_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_VAR_CLEARED_32/*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern uint32 Dcm_RCSigInN_au32[];
#define DCM_STOP_SEC_VAR_CLEARED_32 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern uint16 Dcm_RCSigInN_au16[];
#define DCM_STOP_SEC_VAR_CLEARED_16 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#define DCM_START_SEC_VAR_CLEARED_8 /*Adding this for memory mapping*/
#include "Dcm_MemMap.h"
extern uint8 Dcm_RCSigInN_au8[];
#define DCM_STOP_SEC_VAR_CLEARED_8/*Adding this for memory mapping*/
#include "Dcm_MemMap.h"

#endif /* DCM_LCFG_DSPUDS_H */
