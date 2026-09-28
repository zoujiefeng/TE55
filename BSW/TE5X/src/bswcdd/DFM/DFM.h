#ifndef __DFM_H_
#define __DFM_H_


/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Macro Definitions
 ******************************************************************************/
#define DFM_BYTE_SIZE_TO_WORD_SIZE(ByteSize)  (ByteSize / 4)

#define DFM_RAM_BUFFER_SIZE       32
#define DFM_RAM_BUFFER_WORD_SIZE  DFM_BYTE_SIZE_TO_WORD_SIZE(DFM_RAM_BUFFER_SIZE)

#define DFM_BYTE_SIZE_TO_BLOCK_NO(ByteSize)  (ByteSize / DFM_RAM_BUFFER_SIZE)

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/
#include "DFM_Cfg.h"
#include "DFM_Type.h"

/*******************************************************************************
 ****  Exported Type Definitions
 ******************************************************************************/
   
/*******************************************************************************
 ****  Exported Constant Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Variable Declarations
 ******************************************************************************/

/*******************************************************************************
 ****  Private Macro Definitions
 ******************************************************************************/  
   
/*******************************************************************************
 ****  Private Type Definitions
 ******************************************************************************/

/*******************************************************************************
 ****  Exported Function Declarations
 ******************************************************************************/
extern void DFM_vidModuleInit(void);
extern void DFM_vidMainFunction(void);

extern void    DFM_vidReadAll(void);
extern boolean DFM_bReadBlock(const uint8 ku8BlockId);
extern boolean DFM_bReadBlockToUserBuf(const uint8 ku8BlockId, uint8 *pu8DestBuf, const uint32 u32Size);
extern boolean DFM_bEraseBlock(const uint8 ku8BlockId);
extern boolean DFM_bWriteBlock(const uint8 ku8BlockId, uint8 * const kpu8ErrCode);

/* Unencapsulated interface */
extern PKDFM_Block DFM_ptGetBlock(uint32 u32BlockID);
extern boolean     DFM_bPushCmdToQ(PDFM_Cmd pxCmd, const uint8 * pu8SrcBuf);

#endif /* __DFM_H_ */
