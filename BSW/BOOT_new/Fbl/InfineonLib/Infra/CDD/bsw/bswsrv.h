#ifndef __BSWSRV_H_
#define __BSWSRV_H_

#include "Std_Types.h"



extern const uint8 BSW_kau8BootIntBswLibDate[6];

extern void BSW_vidSetExtFromProgFlag(void);
extern void BSW_vidSetDefFromBootFlag(void);
extern boolean BSW_bCheckStayInBootState(void);
extern void BSW_vidClearStayInBootReq(void);
extern boolean BSW_bCheckSwapReqState(void);
extern void BSW_vidClearSwapReq(void);
extern void BSW_vidGetINVTBootVersion(uint8 *pu8Data);
extern void BSW_vidGetBootCompileTime(uint8 *pu8Data);
extern void BSW_vidGetBootReqCanId(uint8 *pu8Data);
extern void BSW_vidGetBootRspCanId(uint8 *pu8Data);
extern uint32 BSW_u32GetAppLength(void);
extern uint8 BSW_bCheckChanReqState(void);

#endif /* __BSWSRV_H_ */
/*-------------------------------- end of file -------------------------------*/
