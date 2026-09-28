/**************************************************************************
 * @file        DRV8343.h
 * @author      MDBU Software Team
 * @date        13th Novemeber 2017
 * @brief       This file defines all the functions and data structures used for accessing DRV8343 registers
 * @note        Copyright (c) 2017 Texas Instruments Incorporated.
 *              All rights reserved.
 ******************************************************************************/

#ifndef DRV8x_HAL_H_
#define DRV8x_HAL_H_

#include "Std_Types.h"
#include "DRV83xx.h"

void DRV83xx_vidControlInit(void);
void DRV83xx_vidRegisterInit(void);
void DRV83xx_vidStartOLPTest(void);
void DRV83xx_vidStartShortTest(void);
void DRV83xx_vidEnableGateDrv(void);
void DRV83xx_vidDisableGateDrv(void);
void DRV83xx_vidWriteRegs(void);
void DRV83xx_vidRestoreCfgRegs(void);
boolean DRV83xx_bCfgIsNormal(void);
void DRV83xx_vidReadRegs(void);
void DRV83xx_vidCacheRestoreFromReg(void);
uint16 DRV83xx_u16GetFaultStatus(void);
void DRV83xx_vidClearFaultStatus(void);
void DVR83xx_vidGetFaultRegsVal(uint8 * const pu8FaultRegsCache);

void DRV83xx_set_Six_PWM_Mode(void);
void DRV83xx_set_One_PWM_Mode(void);
void DRV83xx_set_IND_ABC_PWM_Mode(void);
void DRV83xx_set_IND_AB_FET_C_PWM_Mode(void);
void DRV83xx_set_IND_BC_FET_A_PWM_Mode(void);
void DRV83xx_set_IND_A_FET_BC_PWM_Mode(void);
void DRV83xx_set_FET_ABC_PWM_Mode(void);
uint8 DRV83xx_is_CSA_BI_DIR_Mode(void);

void DRV83xxHAL_u8SpiInit(void);
boolean DRV83xxHAL_bIsComEnd(void);
void DRV83xxHAL_vidSpiWrite(uint8 u8DataSize);

/* Driver chip max current seeting */
uint8 DRV83xx_u8GetDriverCur(void);
void DRV83xx_u8SetDriverCur(uint8 u8DriverCur);

extern uint32 DRV83xxHAL_xRegMapRxBuf[20];
extern uint32 DRV83xxHAL_xRegMapTxBuf[20];
extern const DRV83xx_FaultIndicateSet DRV83xx_FaultFuncSet;

/********** Fault Status Indication *******/
#define OVER_CURRENT_FAULT				1
#define GATE_DRIVE_FAULT				2
#define CHARGE_PUMP_UV_FAULT			3
#define UNDER_VOLTAGE_LOCK_OUT_FAULT	4
#define OVER_TEMPERATURE_FAULT			5
#define OPEN_LOAD_SHORT_FAULT			6
#define UNKNOWN_FAULT					7
#define NO_FAULT						8

#define DRV8343_DEVICE				    4           // Device variant used for DRV8343x
#define FULL_SCALE_VOLTAGE             (67)			/*As BEMF for above full scale volts may give ADC ref volts exceeds nominal value 3.3V , MAX VCC is limited*/


#define MAX(a,b)        ((a) > (b) ? (a) : (b))
#define MIN(a,b)        ((a) < (b) ? (a) : (b))

/////////////////////////
#endif /*DRV8x_HAL_H_*/
