/*********************************************************************************
 * Copyright 2018 @ Shenzhen INVT Electric Co.,Ltd.
 * All Rights Reserved.
 * Dept.:Software Department.
 * FILE: MAIN_MSG_Auto_Can01.h
 * Description: This file is automatic generate by HalCanAutoGen.
 * History:
 * 2026-08-15 HalCanAutoGen, Auto
 ********************************************************************************/

#include "BSW.h"
#include "Com_Cfg_SymbolicNames.h"
#include "MAIN_L.h"
#include "Com.h"

#include "CAN01_DEF.h"
#ifndef __MAIN_MSG_AUTO_CAN01__
#define __MAIN_MSG_AUTO_CAN01__

#define MAIN_MSGvidFunc_Can01_Rx01 MAIN_MSGvidCan01_Rx01_PDUMC1_0x18F71E31
#define MAIN_MSGvidFunc_Can01_Rx02 MAIN_MSGvidCan01_Rx02_HSMC1_0x18F02E31
#define MAIN_MSGvidFunc_Can01_Rx03 MAIN_MSGvidCan01_Rx03_HSSTC_0x18EF2E31
#define MAIN_MSGvidFunc_Can01_Rx04 MAIN_MSGvidCan01_Rx04_ACUMC1_0x18F53031
#define MAIN_MSGvidFunc_Can01_Rx05 MAIN_MSGvidCan01_Rx05_AIR1_0x18FEAE30
#define MAIN_MSGvidFunc_Can01_Rx06 MAIN_MSGvidCan01_Rx06_AIR1_0x18FEAE32
#define MAIN_MSGvidFunc_Can01_Tx01 MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E
#define MAIN_MSGvidFunc_Can01_Tx02 MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E
#define MAIN_MSGvidFunc_Can01_Tx03 MAIN_MSGvidCan01_Tx03_PDUST3_0x18F7031E
#define MAIN_MSGvidFunc_Can01_Tx04 MAIN_MSGvidCan01_Tx04_PDUST4_0x18F7041E
#define MAIN_MSGvidFunc_Can01_Tx05 MAIN_MSGvidCan01_Tx05_HSST1_0x0CF6012E 
#define MAIN_MSGvidFunc_Can01_Tx06 MAIN_MSGvidCan01_Tx06_HSST2_0x0CF6022E
#define MAIN_MSGvidFunc_Can01_Tx07 MAIN_MSGvidCan01_Tx07_ACUST1_0x18FF2130
#define MAIN_MSGvidFunc_Can01_Tx08 MAIN_MSGvidCan01_Tx08_ACUST2_0x18FF2230

#define BSW_bRxTOutFlag_Can01_Rx01_PDUMC1_0x18F71E31 BSW_bRxTOutFlag_Can01_Rx01
#define BSW_bRxTOutFlag_Can01_Rx02_HSMC1_0x18F02E31 BSW_bRxTOutFlag_Can01_Rx02
#define BSW_bRxTOutFlag_Can01_Rx03_HSSTC_0x18EF2E31 BSW_bRxTOutFlag_Can01_Rx03
#define BSW_bRxTOutFlag_Can01_Rx04_ACUMC1_0x18F53031 BSW_bRxTOutFlag_Can01_Rx04
#define BSW_bRxTOutFlag_Can01_Rx05_AIR1_0x18FEAE30 BSW_bRxTOutFlag_Can01_Rx05
#define BSW_bRxTOutFlag_Can01_Rx06_AIR1_0x18FEAE32 BSW_bRxTOutFlag_Can01_Rx06

#define MAIN_MSG_OFFSET_Can01_Tx01 1
#define MAIN_MSG_OFFSET_Can01_Tx02 2
#define MAIN_MSG_OFFSET_Can01_Tx03 3
#define MAIN_MSG_OFFSET_Can01_Tx04 4
#define MAIN_MSG_OFFSET_Can01_Tx05 5
#define MAIN_MSG_OFFSET_Can01_Tx06 6
#define MAIN_MSG_OFFSET_Can01_Tx07 7
#define MAIN_MSG_OFFSET_Can01_Tx08 8

#define MAIN_MSG_PERIOD_Can01_Rx01 100
#define MAIN_MSG_PERIOD_Can01_Rx02 100
#define MAIN_MSG_PERIOD_Can01_Rx03 100
#define MAIN_MSG_PERIOD_Can01_Rx04 100
#define MAIN_MSG_PERIOD_Can01_Rx05 1000
#define MAIN_MSG_PERIOD_Can01_Rx06 1000
#define MAIN_MSG_PERIOD_Can01_Tx01 100
#define MAIN_MSG_PERIOD_Can01_Tx02 100
#define MAIN_MSG_PERIOD_Can01_Tx03 100
#define MAIN_MSG_PERIOD_Can01_Tx04 100
#define MAIN_MSG_PERIOD_Can01_Tx05 100
#define MAIN_MSG_PERIOD_Can01_Tx06 100
#define MAIN_MSG_PERIOD_Can01_Tx07 200
#define MAIN_MSG_PERIOD_Can01_Tx08 100

#define MAIN_START_SEC_CODE
#include "MAIN_MemMap.h"
extern void MAIN_MSGvidCan01_Rx01_PDUMC1_0x18F71E31(void);
extern void MAIN_MSGvidCan01_Rx02_HSMC1_0x18F02E31(void);
extern void MAIN_MSGvidCan01_Rx03_HSSTC_0x18EF2E31(void);
extern void MAIN_MSGvidCan01_Rx04_ACUMC1_0x18F53031(void);
extern void MAIN_MSGvidCan01_Rx05_AIR1_0x18FEAE30(void);
extern void MAIN_MSGvidCan01_Rx06_AIR1_0x18FEAE32(void);
extern void MAIN_MSGvidCan01_Tx01_PDUST1_0x18F7011E(void);
extern void MAIN_MSGvidCan01_Tx02_PDUST2_0x18F7021E(void);
extern void MAIN_MSGvidCan01_Tx03_PDUST3_0x18F7031E(void);
extern void MAIN_MSGvidCan01_Tx04_PDUST4_0x18F7041E(void);
extern void MAIN_MSGvidCan01_Tx05_HSST1_0x0CF6012E (void);
extern void MAIN_MSGvidCan01_Tx06_HSST2_0x0CF6022E(void);
extern void MAIN_MSGvidCan01_Tx07_ACUST1_0x18FF2130(void);
extern void MAIN_MSGvidCan01_Tx08_ACUST2_0x18FF2230(void);

#define MAIN_STOP_SEC_CODE
#include "MAIN_MemMap.h"

#endif /*End of __MAIN_MSG_AUTO_CAN01__*/
/*-------------------------------------EOF--------------------------------------*/

