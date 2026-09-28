/*********************************************************************************
 * Copyright 2018 @ Shenzhen INVT Electric Co.,Ltd.
 * All Rights Reserved.
 * Dept.:Software Department.
 * FILE: MAIN_MSG_AUTO.h
 * Description: This file is automatic generate by HalCanAutoGen.
 * History:
 * 2025-03-29 HalCanAutoGen, Auto
 ********************************************************************************/

#include "BSW.h"
#include "Com_Cfg_SymbolicNames.h"
#include "MAIN_L.h"
#include "Com.h"
#include "Rte_ASW_COM.h"

#ifndef __MAIN_MSG_AUTO_CAN03__
#define __MAIN_MSG_AUTO_CAN03__

#define MAIN_MSGvidFunc_Can03_Rx01 DEMO_Function_CAN03_0x01
#define MAIN_MSGvidFunc_Can03_Rx02 DEMO_Function_CAN03_0x02
#define MAIN_MSGvidFunc_Can03_Rx03 DEMO_Function_CAN03_0x03
#define MAIN_MSGvidFunc_Can03_Rx04 DEMO_Function_CAN03_0x04

#define MAIN_MSG_PERIOD_Can03_Rx01 10
#define MAIN_MSG_PERIOD_Can03_Rx02 10
#define MAIN_MSG_PERIOD_Can03_Rx03 10
#define MAIN_MSG_PERIOD_Can03_Rx04 10


#define MAIN_START_SEC_CODE
#include "MAIN_MemMap.h"

extern void DEMO_Function_CAN03_0x01(void);
extern void DEMO_Function_CAN03_0x02(void);
extern void DEMO_Function_CAN03_0x03(void);
extern void DEMO_Function_CAN03_0x04(void);

#define MAIN_STOP_SEC_CODE
#include "MAIN_MemMap.h"

#endif /*End of __MAIN_MSG_AUTO_CAN03__*/
/*-------------------------------------EOF--------------------------------------*/
