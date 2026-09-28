#ifndef __COM_TOUT_DET_CFG_H_
#define __COM_TOUT_DET_CFG_H_

#include "Platform_Types.h"

#ifdef __cplusplus
extern "C" {
#endif


boolean ComToutDet_bMCU1_CANTimeout_DetFun(void);
boolean ComToutDet_bMCU2_CANTimeout_DetFun(void);
boolean ComToutDet_bACM_CANTimeout_DetFun(void);
boolean ComToutDet_bEPS_CANTimeout_DetFun(void);
boolean ComToutDet_bPDU_CANTimeout_DetFun(void);

#ifdef __cplusplus
}
#endif

#endif /* __COM_TOUT_DET_CFG_H_ */