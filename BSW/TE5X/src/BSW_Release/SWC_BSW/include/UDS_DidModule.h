#ifndef __UDS_DID_MODULE_H_
#define __UDS_DID_MODULE_H_

/*******************************************************************************
 ****  Imported Standard Header Files
 ******************************************************************************/

/*******************************************************************************
 ****  Imported Project Header Files
 ******************************************************************************/
#include "Std_Types.h"
#include "CDD_Types.h"
#include "UDS_DidCfg.h"

/*******************************************************************************
 ****  Global Function Declarations
 ******************************************************************************/
extern void   UDS_vidDIDModuleInit(void);
extern void   UDS_vidReadDIDData(const uint16 ku16CfgIdx, uint8 * Data);
extern void   UDS_vidWriteDIDData(const uint16 ku16CfgIdx, const uint8 * Data);
extern void   UDS_vidUpdateDidBuf(const uint16 ku16CfgIdx, const CDD_uCTablePtr kpxSrcVal, const UDS_eSrcDataType eDataType);

#endif /* __UDS_DID_MODULE_H_ */
/*-------------------------------- end of file -------------------------------*/
