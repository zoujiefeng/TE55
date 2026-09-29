
#ifndef     ECUMGR_H
#define     ECUMGR_H

/*******************************************************************************
**                      Includes
*******************************************************************************/
#include "Std_Types.h"
#include "EcuMgr_cfg_BootTarget.h"
#include "EcuMgr_Cfg_DownloadTarget.h"
#include "EcuMgr_DIDServices.h"
#include "SBL_Flash.h"

/*******************************************************************************
**                      Global Macro Definitions                              **
*******************************************************************************/

/*******************************************************************************
**                      Global Type Definitions                               **
*******************************************************************************/
typedef struct
{
    EcuMgr_BlockIdType blockId;
    uint32 blockIndex;
} ActiveBlocktype;

typedef struct{
   boolean bNeedCopy;
   boolean bCopyParamLoadFlag;
   uint8   u8CopyResult;
   uint32  u32MemStartAddress;
   uint32  u32MemEndAddress;
}ImplicitManageBlock;

/*******************************************************************************
**                      Global Constant Declarations                          **
*******************************************************************************/

/*******************************************************************************
**                      Global Variable Declarations                          **
*******************************************************************************/
extern boolean reqCheckRoutineFlag;
extern boolean reqCheckRoutineFlag_INVT;
extern FlashParamType FlashParam;
extern ImplicitManageBlock ImplicitBlock;

/*******************************************************************************
**                      Global Function Declarations                          **
*******************************************************************************/
extern void EcuMgr_Init(void);
extern void EcuMgr_HwReset(void);
extern void EcuMgr_PerformReset(void);
extern void EcuMgr_JumpToApplication(void);

extern void EcuMgr_Prv_DeactivateBlock(void);
extern ActiveBlocktype *EcuMgr_Prv_GetActiveBlock(void);
extern uint32 EcuMgr_u32GetLogicBlockLength(uint8 u8BlockIndex);
extern boolean EcuMgr_bGetFlsValidFlag(void);
extern void EcuMgr_vidSetFlsValidFlag(void);
extern void EcuMgr_vidClrFlsValidFlag(void);

extern void EcuMgr_vidSetVerifySuccessFlag(void);
extern void EcuMgr_vidClrVerifySuccessFlag(void);

/*******************************************************************************
**                      Global Inline Function Definitions                    **
*******************************************************************************/
#endif

