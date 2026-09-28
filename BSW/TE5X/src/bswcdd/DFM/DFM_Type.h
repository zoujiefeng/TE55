#ifndef __DFM_TYPE_H_
#define __DFM_TYPE_H_


/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "RingQueue.h"

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/
typedef enum DFM_CORE_ID_SET{
   DFM_COREID_CORE0 = 0,
   DFM_COREID_CORE1,
   DFM_COREID_CORE2,
   DFM_COREID_CORE3,
   DFM_COREID_CORE4,
   DFM_COREID_CORE5,
   DFM_MAX_CORE_NUM
}DFM_CORE_ID_SET;

typedef enum DFM_DATA_READ_RESULT{
   DFM_DATA_NORMAL = 0,
   DFM_DATA_DEFAULT,
   DFM_DATA_READERR,
}DFM_DATA_READ_RESULT;

typedef enum DFM_CMD_EXE_RESULT{
   DFM_FUN_EXE_SUCCEED = 0,
   DFM_FUN_EXE_FAILED
}DFM_CMD_EXE_RESULT;

typedef enum DFM_CMD_LIST{
   DFM_ERASE = 1,
   DFM_WRITE,
   DFM_READ
}DFM_CMD_LIST;
   
/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/
#define DFM_CMD_QUEUE_SIZE   3

/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/
enum {
   eDFM_NO_ERROR_CODE = 0,
   eDFM_INVALID_RAM_BLOCK
};

typedef struct DFM_VarSet{
   boolean bWriteReq;
   uint8   u8State;

   uint32  u32WriteIndex;
}DFM_VarSet, * PDFM_VarSet;

typedef struct DFM_Block{
   uint32 u32BlockID;
   uint32 u32RomBlockAddress;
   uint32 u32RamBlockAddress;
   uint32 u32RamBlockLength;
   uint32 u32RomBlockLength;

   DFM_VarSet *ptVarSet;
}DFM_Block, * PDFM_Block;

typedef struct DFM_Cmd{
   uint8 u8Cmd;
   uint8 u8BlockID;
   uint16 u16WriteDataNum;
   uint32 u32DataSize;
}DFM_Cmd, *PDFM_Cmd;

typedef struct DFM_CmdQVarObj{
   DFM_Cmd CmdBuffer[DFM_CMD_QUEUE_SIZE];
   IfxCpu_mutexLock u32Lock;
   uint8 u8Head;
   uint8 u8Tail;
   uint8 u8QState;
}DFM_CmdQVarObj, *PDFM_CmdQVarObj;

typedef struct DFM_CmdQConstObj{
   const PDFM_CmdQVarObj kpxVarObjSet;
   uint8 * pu8FlashWriteBuf;
   boolean (*bIsEmpty)(const struct DFM_CmdQConstObj* pxQueue);
   boolean (*bIsFull)(const struct DFM_CmdQConstObj* pxQueue);
   boolean (*bAdd)(const struct DFM_CmdQConstObj* pxQueue, PDFM_Cmd value);
   boolean (*bPop)(const struct DFM_CmdQConstObj* pxQueue, PDFM_Cmd value);
}DFM_CmdQConstObj, *PDFM_CmdQConstObj; 

typedef const DFM_Block * PKDFM_Block; 
typedef const DFM_CmdQConstObj * PKDFM_CmdQConstObj; 

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/

#endif /* __DFM_TYPE_H_ */
