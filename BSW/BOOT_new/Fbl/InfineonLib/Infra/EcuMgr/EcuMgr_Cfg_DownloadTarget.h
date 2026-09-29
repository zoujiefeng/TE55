
#ifndef     ECUMGR_CFG_DOWNLOADTARGET_H
#define     ECUMGR_CFG_DOWNLOADTARGET_H

/*******************************************************************************
**                      Includes
*******************************************************************************/
#include "Std_Types.h"
#include "FBL_ProgMCfg.h"
#include "DcmAppl.h"
#include "UcbSwap.h"
/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/
#define ECUMGR_DOWNLOAD_BLOCK_SIZE          (2048U)
#define ECUMGR_DOWNLOAD_SEGMENT_SIZE        (1024U)  // the number must be power of two.
#define ECUMGR_ERASE_SEGMENT_SIZE           (0x4000u)
#define ECUMGR_BUFFER_BLOCK_SIZE            (0x8000u)
#define MINIMUM_SEG_SIZE                   (1U)

#define ECUMGR_APPLICATION_REGION_START_ADDRESS ((uint32)&Fls_AppRomStart)
#define ECUMGR_APPLICATION_REGION_END_ADDRESS   ((uint32)&Fls_AppRomEnd)
#define ECUMGR_APPLICATION_REGION_OFFSET        (0x0U)
#define ECUMGR_APPLICATION_REGION_SIZE		      (ECUMGR_APPLICATION_REGION_END_ADDRESS-ECUMGR_APPLICATION_REGION_END_ADDRESS+1)

#define ECUMGR_DATA_REGION_START_ADDRESS        ((uint32)&Fls_CalibRomStart)
#define ECUMGR_DATA_REGION_END_ADDRESS          ((uint32)&Fls_CalibRomEnd)
#define ECUMGR_DATA_REGION_OFFSET               (0x0)
#define ECUMGR_DATA_REGION_SIZE			         (ECUMGR_DATA_REGION_END_ADDRESS-ECUMGR_DATA_REGION_END_ADDRESS+1)

#define ECUMGR_BOOTLOADER_REGION_START_ADDRESS  (0x80000000)
#define ECUMGR_BOOTLOADER_REGION_END_ADDRESS    (0x80027FFF)
#define ECUMGR_BOOTLOADER_REGION_OFFSET         (0x0)
#define ECUMGR_BOOTLOADER_REGION_SIZE           (ECUMGR_BOOTLOADER_REGION_END_ADDRESS-ECUMGR_BOOTLOADER_REGION_END_ADDRESS+1)

#define ECUMGR_SBL_REGION_START_ADDRESS         ((uint32)&Fls_SblRamStart)
#define ECUMGR_SBL_REGION_END_ADDRESS           ((uint32)&Fls_SblRamEnd)


#define ECUMGR_APP_MAX_PROGRAMMING_ATTEMPT_COUNTER  10000U // 1000 times reprogramming
#define ECUMGR_DATA_MAX_PROGRAMMING_ATTEMPT_COUNTER  10000U // 1000 times reprogramming
#define ECUMGR_ALL_MAX_PROGRAMMING_ATTEMPT_COUNTER  10000U // 1000 times reprogramming

#define ECUMGR_DOWNLOAD_ADDRESS_OFFSET     Swap_u32GetPflashEraseOrWriteOffset()
#define ECUMGR_VERIFY_READ_ADDRESS_OFFSET  PFLASH_BANK_SIZE

/*******************************************************************************
**                      Global Type Definitions                               **
******************************************************************************/
enum{
    ECUMGR_COPY_ONGOING = 0,
    ECUMGR_COPY_SUCCESS,
    ECUMGR_COPY_FAILED
};
    
typedef enum
{
    LOGICAL_BLOCK_APPLICATION       = 0,
    LOGICAL_BLOCK_DATA              = 1,
    LOGICAL_BLOCK_ALL               = 2,
    LOGICAL_BLOCK_BOOTLOADER        = 3,
    NUMBER_OF_LOGICAL_BLOCK_TYPE    = 4

} EcuMgr_LogicalBlockType;

typedef enum
{
    RAM_BLOCK_SBL                   = 0,
    NUMBER_OF_RAM_BLOCK_TYPE        = 1
}EcuMgr_RamBlockType;

typedef enum
{
    RAM_BLOCK_ID = 0,
    LOGICAL_BLOCK_ID = 1,
    NUMBER_OF_BLOCK_ID = 2
} EcuMgr_BlockIdType;

typedef enum
{
    CUSTOM_PROCESS_ID = 0,
    INVT_PROCESS_ID = 1,
    NUMBER_OF_PROCESS_TYPE = 2
} EcuMgr_FlashingProcessID;


typedef struct
{
    Fbl_ProgM_EraseResultType   (*eraseFunc)(void);
    Fbl_ProgM_EraseResultType   (*ImplicitEraseFunc)(void);
    Std_ReturnType              (*ImplicitCopyFunc)(void);
    Std_ReturnType              (*ImplicitCheckFunc)(void);
    Std_ReturnType              (*setValidityBlock)(boolean isValid);
    Std_ReturnType              (*isValidBlock)(uint8 u8CheckBank);
    boolean                     (*isPersistedBlock)(void);
} EcuMgr_BlockApisType;

typedef struct
{

    EcuMgr_LogicalBlockType blockType;
    uint32 startAddress;
    uint32 endAddress;
    uint16 maxAttemptCounter;
    const EcuMgr_BlockApisType *apis;
} EcuMgr_LogicalBlockInfoType;

typedef struct 
{
    EcuMgr_RamBlockType blockType;
    uint32 startAddress;
    uint32 endAddress;
    void    (*load)(uint32 targetAddress, const uint8 *sourceAddress, uint32 length);
    void    (*unload)(void);
}EcuMgr_RamBlockInfoType;


/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Declarations                          **
*******************************************************************************/
extern const void *targetBlockInfo[NUMBER_OF_BLOCK_ID];
extern uint32 Fls_AppRomStart;
extern uint32 Fls_AppRomEnd;
extern uint32 Fls_BootRomStart;
extern uint32 Fls_BootRomEnd;
extern uint32 Fls_CalibRomStart;
extern uint32 Fls_CalibRomEnd;
extern uint32 Fls_SblRamStart;
extern uint32 Fls_SblRamEnd;
extern const EcuMgr_LogicalBlockInfoType targetLogicalBlockinfo[NUMBER_OF_LOGICAL_BLOCK_TYPE];
extern const EcuMgr_RamBlockInfoType targetRamBlockInfo[NUMBER_OF_RAM_BLOCK_TYPE];
extern uint32 scratchBuf[];     /* PRQA S 3684 */
extern uint32 debugmemaddr;
extern uint32 memlength;

extern boolean bActiveAppNotValid;

/*******************************************************************************
**                      Global Function Declarations                          **
*******************************************************************************/
extern boolean EcuMgr_IsValidWholeLogicalBlock(void);
extern boolean EcuMgr_IsValidBootloaderLogicalBlock(void);

extern void EcuMgr_DownloadTargetInit(void);
extern void EcuMgr_ProcessCopy(void);


extern Fbl_ProgM_WriteResultType EcuMgr_DownloadTargetWrite(uint32 memoryAddress, uint32 dataLength, const uint8  * reqBuf, Dcm_OpStatusType Wmba_Opstatus);
extern void EcuMgr_DownloadTargetMainFunction(void);

extern Fbl_ProgM_EraseResultType EcuMgr_ImplicitErasePostEraseBootloaderHook(void);
extern Fbl_ProgM_EraseResultType EcuMgr_ImplicitErasePostEraseAllHook(void);

extern Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetEraseBootloader(void);
extern Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetEraseApplication(void);
extern Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetEraseCalibration(void);
extern Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetEraseAll(void);

extern boolean EcuMgr_DownloadTargetCheckValidRequestDownloadInputs(uint8 DataFormatIdentifier,
                                                                uint32 MemoryAddress,
                                                                uint32 MemorySize, 
                                                                Dcm_NegativeResponseCodeType * nrcRet);
extern boolean EcuMgr_DownloadTargetCheckValidEraseInputs(uint32 MemoryAddress,
                                                            uint32 regionSize,
                                                            Dcm_NegativeResponseCodeType *nrcRet);     

extern Std_ReturnType EcuMgr_DownloadTargetPreEraseHook(Dcm_NegativeResponseCodeType * nrcRet);
extern Std_ReturnType EcuMgr_DownloadTargetPostEraseHook(void);
extern Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetExecuteErase(void);

extern Std_ReturnType EcuMgr_DownloadTargetExecuteVerifingRegion(uint32 crcValueDataIn);
extern Std_ReturnType EcuMgr_DownloadTargetGetImplicitCopyResult(void);
extern Std_ReturnType EcuMgr_ImplicitCopyPostVerifyBootloaderHook(void);
extern Std_ReturnType EcuMgr_ImplicitCopyPostVerifyAllHook(void);
extern Std_ReturnType EcuMgr_DownloadTargetExecuteImplicitCopy(void);
extern Std_ReturnType EcuMgr_ImplicitCheckPostVerifyBootloaderHook(void);
extern Std_ReturnType EcuMgr_ImplicitCheckPostVerifyAllHook(void);
extern Std_ReturnType EcuMgr_DownloadTargetExecuteImplicitCheck(void);
extern Std_ReturnType EcuMgr_DownloadTargetPostVerifyingRegionHook(void);

extern Std_ReturnType EcuMgr_DownloadTargetGetImplicitCopyResult_INVT(void);
extern Std_ReturnType EcuMgr_DownloadTargetPostVerifyingRegionHook_INVT(void);

extern Fbl_ProgM_CheckDependenceResultType EcuMgr_DowloadTargetCheckDependenciesHook(void);
extern Fbl_ProgM_CheckDependenceResultType EcuMgr_DowloadTargetCheckDependenciesHook_INVT(void);

extern Fbl_ProgM_EraseResultType EcuMgr_ImplicitErasePostEraseBootloaderHook_INVT(void);
extern Fbl_ProgM_EraseResultType EcuMgr_ImplicitErasePostEraseAllHook_INVT(void);

extern Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetEraseBootloader_INVT(void);
extern Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetEraseApplication_INVT(void);
extern Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetEraseCalibration_INVT(void);
extern Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetEraseAll_INVT(void);

extern Std_ReturnType EcuMgr_ImplicitCopyPostVerifyBootloaderHook_INVT(void);
extern Std_ReturnType EcuMgr_ImplicitCopyPostVerifyAllHook_INVT(void);

extern Std_ReturnType EcuMgr_ImplicitCheckPostVerifyBootloaderHook_INVT(void);
extern Std_ReturnType EcuMgr_ImplicitCheckPostVerifyAllHook_INVT(void);

extern Std_ReturnType EcuMgr_DownloadTargetExecuteImplicitCopy_INVT(void);
extern Std_ReturnType EcuMgr_DownloadTargetExecuteImplicitCheck_INVT(void);

extern Std_ReturnType EcuMgr_DownloadTargetPreEraseHook_INVT(Dcm_NegativeResponseCodeType * nrcRet);
extern Std_ReturnType EcuMgr_DownloadTargetPostEraseHook_INVT(void);
extern Fbl_ProgM_EraseResultType EcuMgr_DownloadTargetExecuteErase_INVT(void);

extern Std_ReturnType EcuMgr_DownloadTargetExecuteVerifingRegion_INVT(uint32 crcValueDataIn);


/*******************************************************************************
**                      Global Inline Function Definitions                    **
*******************************************************************************/
#endif

