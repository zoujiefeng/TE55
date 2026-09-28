#ifndef VADC_H
#define VADC_H

#include "Std_Types.h"

extern uint16 VADC_u16GroupBuffer0[16];
extern uint16 VADC_u16GroupBuffer1[16];
extern uint16 VADC_u16GroupBuffer2[16];
extern uint16 VADC_u16GroupBuffer3[16];
extern uint16 VADC_u16GroupBuffer3_1[16];
extern uint16 VADC_u16GroupBuffer4[16];
extern uint16 VADC_u16GroupBuffer8[16];
extern uint16 VADC_u16GroupBuffer8_2[16];
extern uint16 VADC_u16GroupBuffer10[16];
extern uint16 VADC_u16GroupBuffer11[16];

extern void VADC_vidTreatment(void);
void VADC_vidMainFunction(void);

#endif
