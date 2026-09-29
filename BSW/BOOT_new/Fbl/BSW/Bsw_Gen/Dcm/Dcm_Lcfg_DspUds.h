
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
extern Std_ReturnType DcmDspData_Fingerprint_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_BootVersion_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_BootTime_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_ActiveBank_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_ReqCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_RspCanId_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F187_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F18A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F18B_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F18C_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F190_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F193_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F195_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F19A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F1B7_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_INVTBootVersion_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DcmDspData_INVTAppVersion_ReadFunc (Dcm_OpStatusType OpStatus,uint8 * Data);
extern Std_ReturnType DataServices_R_F15A_ReadData (Dcm_OpStatusType OpStatus,uint8 * Data);



 
 




/***Extern declarations for XXX_WriteData of type USE_DATA_ASYNCH_FNC  and of fixed length ***/
extern Std_ReturnType DcmDspData_Fingerprint_WriteFunc (const uint8 * Data,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);
extern Std_ReturnType DataServices_R_F15A_WriteFunc (const uint8 * Data,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);














/***Routine control Appl functions***/






/*** Extern declaration for Fbl_ProgM_CheckProgrammingPreconditionsCallback ***/
extern Std_ReturnType Fbl_ProgM_CheckProgrammingPreconditionsCallback(
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for Fbl_ProgM_StartCheckRoutineCallback ***/
extern Std_ReturnType Fbl_ProgM_StartCheckRoutineCallback(
 uint32  dataIn1,
 uint32  dataIn2,
 uint32  dataIn3,
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for Fbl_ProgM_CheckProgrammingDependenciesCallback ***/
extern Std_ReturnType Fbl_ProgM_CheckProgrammingDependenciesCallback(
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for Fbl_BLSM_StayInBootCallback ***/
extern Std_ReturnType Fbl_BLSM_StayInBootCallback(
                         const uint8 * dataIn1,
                         Dcm_OpStatusType OpStatus,
                          uint16 CurrentDataLength,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for Fbl_ProgM_StartEraseMemoryCallback ***/
extern Std_ReturnType Fbl_ProgM_StartEraseMemoryCallback(
 uint32  dataIn1,
 uint32  dataIn2,
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for Fbl_ProgM_StartSwapCallback_INVT ***/
extern Std_ReturnType Fbl_ProgM_StartSwapCallback_INVT(
                         Dcm_OpStatusType OpStatus,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for Fbl_ProgM_StartCheckRoutineCallback_INVT ***/
extern Std_ReturnType Fbl_ProgM_StartCheckRoutineCallback_INVT(
 uint32  dataIn1,
 uint32  dataIn2,
 uint32  dataIn3,
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for Fbl_ProgM_StartEraseMemoryCallback_INVT ***/
extern Std_ReturnType Fbl_ProgM_StartEraseMemoryCallback_INVT(
 uint32  dataIn1,
 uint32  dataIn2,
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for Fbl_ProgM_CheckProgrammingDependenciesCallback_INVT ***/
extern Std_ReturnType Fbl_ProgM_CheckProgrammingDependenciesCallback_INVT(
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for Fbl_ProgM_CheckProgrammingPreconditionsCallback_INVT ***/
extern Std_ReturnType Fbl_ProgM_CheckProgrammingPreconditionsCallback_INVT(
                         Dcm_OpStatusType OpStatus,
                         uint8 * dataOut1,
                          Dcm_NegativeResponseCodeType * ErrorCode);
/*** Extern declaration for Fbl_ProgM_StartSwapCallback ***/
extern Std_ReturnType Fbl_ProgM_StartSwapCallback(
                         Dcm_OpStatusType OpStatus,
                          Dcm_NegativeResponseCodeType * ErrorCode);

/***Routine control Appl functions for Range Routine***/






/***Seca dcmDspSecurityGetSeedFnc functions with Useport  USE_ASYNCH_FNC ***/

// prototypes for flexible length configuration

// prototypes for fixed length configuration
extern Std_ReturnType DcmGetSeedDSP_Fbl_ProgM_GetSeedCallback(Dcm_SecLevelType SecLevel_u8,uint32 Seedlen_u32,uint32 AccDataRecsize_u32,uint8 * SecurityAccessDataRecord,uint8 * Seed,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);
extern Std_ReturnType DcmGetSeedDSP_Fbl_ProgM_GetSeedCallback_INVT(Dcm_SecLevelType SecLevel_u8,uint32 Seedlen_u32,uint32 AccDataRecsize_u32,uint8 * SecurityAccessDataRecord,uint8 * Seed,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);


/***Seca dcmDspSecurityCompareKeyFnc functions with Useport  USE_ASYNCH_FNC ***/
extern Std_ReturnType DcmCompareKeyDSP_Fbl_ProgM_CompareKeyCallback(uint32 KeyLen_32,const uint8 * Key,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);
extern Std_ReturnType DcmCompareKeyDSP_Fbl_ProgM_CompareKeyCallback_INVT(uint32 KeyLen_32,const uint8 * Key,Dcm_OpStatusType OpStatus,Dcm_NegativeResponseCodeType * ErrorCode);

/***Seca dcmDspSecurityGetAttemptCounterFnc functions with Useport  USE_ASYNCH_FNC ***/
extern Std_ReturnType DcmGetAttemptCounter_L3_Fbl_ProgM( Dcm_OpStatusType OpStatus,uint8 * AttemptCounter);
/***Seca dcmDspSecuritySetAttemptCounterFnc functions with Useport  USE_ASYNCH_FNC ***/
extern Std_ReturnType DcmSetAttemptCounter_L3_Fbl_ProgM( Dcm_OpStatusType OpStatus,uint8 AttemptCounter);


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
