

#ifndef DCM_EXTERNAL_H_
#define DCM_EXTERNAL_H_

#include "Dcm.h"

void Dcm_ExternalServiceProccessing_MainFunction(void);
void Dcm_ExternalServiceProccessing_Init(void);
void Dcm_ResetServiceProccessing(void);

extern boolean CommunicationControlActive;

void MCU_vSetResetCmd(void);
uint8 MCU_u8GetResetCmd(void);

#endif /* DCM_EXTERNAL_H_ */


