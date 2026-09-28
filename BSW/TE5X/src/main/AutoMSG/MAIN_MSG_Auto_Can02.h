/*********************************************************************************
 * Copyright 2018 @ Shenzhen INVT Electric Co.,Ltd.
 * All Rights Reserved.
 * Dept.:Software Department.
 * FILE: MAIN_MSG_Auto_Can02.h
 * Description: This file is automatic generate by HalCanAutoGen.
 * History:
 * 2026-08-15 HalCanAutoGen, Auto
 ********************************************************************************/

#include "BSW.h"
#include "Com_Cfg_SymbolicNames.h"
#include "MAIN_L.h"
#include "Com.h"

#include "CAN02_DEF.h"
#ifndef __MAIN_MSG_AUTO_CAN02__
#define __MAIN_MSG_AUTO_CAN02__

#define MAIN_MSGvidFunc_Can02_Rx01 MAIN_MSGvidCan02_Rx01_MC2_0xCFF08D0
#define MAIN_MSGvidFunc_Can02_Rx02 MAIN_MSGvidCan02_Rx02_CCVS_0xCFF07D0
#define MAIN_MSGvidFunc_Can02_Rx03 MAIN_MSGvidCan02_Rx03_TS1_0xCFF06D0
#define MAIN_MSGvidFunc_Can02_Tx01 MAIN_MSGvidCan02_Tx01_MS0_0xCFF0308
#define MAIN_MSGvidFunc_Can02_Tx02 MAIN_MSGvidCan02_Tx02_MS1_0xCFF0008
#define MAIN_MSGvidFunc_Can02_Tx03 MAIN_MSGvidCan02_Tx03_MS2_0xCFF0108
#define MAIN_MSGvidFunc_Can02_Tx04 MAIN_MSGvidCan02_Tx04_MDM1_0xCFF0208
#define MAIN_MSGvidFunc_Can02_Tx05 MAIN_MSGvidCan02_Tx05_MS3_0xCFF0309

#define BSW_bRxTOutFlag_Can02_Rx01_MC2_0xCFF08D0 BSW_bRxTOutFlag_Can02_Rx01
#define BSW_bRxTOutFlag_Can02_Rx02_CCVS_0xCFF07D0 BSW_bRxTOutFlag_Can02_Rx02
#define BSW_bRxTOutFlag_Can02_Rx03_TS1_0xCFF06D0 BSW_bRxTOutFlag_Can02_Rx03

#define MAIN_MSG_OFFSET_Can02_Tx01 1
#define MAIN_MSG_OFFSET_Can02_Tx02 2
#define MAIN_MSG_OFFSET_Can02_Tx03 3
#define MAIN_MSG_OFFSET_Can02_Tx04 4
#define MAIN_MSG_OFFSET_Can02_Tx05 66

#define MAIN_MSG_PERIOD_Can02_Rx01 10
#define MAIN_MSG_PERIOD_Can02_Rx02 100
#define MAIN_MSG_PERIOD_Can02_Rx03 20
#define MAIN_MSG_PERIOD_Can02_Tx01 10
#define MAIN_MSG_PERIOD_Can02_Tx02 20
#define MAIN_MSG_PERIOD_Can02_Tx03 50
#define MAIN_MSG_PERIOD_Can02_Tx04 1000
#define MAIN_MSG_PERIOD_Can02_Tx05 500

#define MAIN_START_SEC_CODE
#include "MAIN_MemMap.h"
extern void MAIN_MSGvidCan02_Rx01_MC2_0xCFF08D0(void);
extern void MAIN_MSGvidCan02_Rx02_CCVS_0xCFF07D0(void);
extern void MAIN_MSGvidCan02_Rx03_TS1_0xCFF06D0(void);
extern void MAIN_MSGvidCan02_Tx01_MS0_0xCFF0308(void);
extern void MAIN_MSGvidCan02_Tx02_MS1_0xCFF0008(void);
extern void MAIN_MSGvidCan02_Tx03_MS2_0xCFF0108(void);
extern void MAIN_MSGvidCan02_Tx04_MDM1_0xCFF0208(void);
extern void MAIN_MSGvidCan02_Tx05_MS3_0xCFF0309(void);

#define MAIN_STOP_SEC_CODE
#include "MAIN_MemMap.h"

#endif /*End of __MAIN_MSG_AUTO_CAN02__*/
/*-------------------------------------EOF--------------------------------------*/

