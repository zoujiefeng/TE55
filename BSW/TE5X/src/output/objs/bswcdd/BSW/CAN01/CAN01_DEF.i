# 1 "bswcdd\\BSW\\CAN01\\CAN01_DEF.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\BSW\\CAN01\\CAN01_DEF.c"







# 1 "bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 1
# 11 "bswcdd\\BSW\\CAN01\\CAN01_DEF.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 13 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types_Cfg.h" 1
# 14 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 2
# 76 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
typedef signed char sint8;




typedef unsigned char uint8;




typedef signed short sint16;




typedef unsigned short uint16;




typedef signed int sint32;




typedef signed long long sint64;




typedef unsigned int uint32;




typedef unsigned long long uint64;





typedef float float32;


typedef double float64;







typedef unsigned char boolean;






typedef signed long sint8_least;


typedef unsigned long uint8_least;




typedef signed long sint16_least;




typedef unsigned long uint16_least;




typedef signed long sint32_least;




typedef unsigned long uint32_least;
# 22 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 44 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h"
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 1
# 50 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h"
# 1 ".\\output\\inc/Os_Compiler_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 1





# 1 ".\\output\\inc/Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 1
# 2 ".\\output\\inc/Compiler.h" 2
# 7 ".\\output\\inc/..\\..\\Integration\\os\\Os_Compiler_Cfg.h" 2
# 2 ".\\output\\inc/Os_Compiler_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler_Cfg.h" 2
# 45 ".\\output\\inc/..\\..\\Integration\\mcal\\Compiler.h" 2
# 2 ".\\output\\inc/Compiler.h" 2
# 23 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 2
# 72 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
    typedef unsigned char StatusType;
# 96 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
typedef uint8 Std_ReturnType;



typedef struct
{
    uint16 vendorID;
    uint16 moduleID;
    uint8 sw_major_version;
    uint8 sw_minor_version;
    uint8 sw_patch_version;
} Std_VersionInfoType;
# 2 ".\\output\\inc/Std_Types.h" 2
# 12 "bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2


# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 89 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 90 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 15 "bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern const boolean CAN01_bE2ERxValidC;

# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 95 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 18 "bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2


# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 78 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 79 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 21 "bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern const uint8 CAN01_u8ChecksumErrThdC;
extern const uint8 CAN01_u8RCUnchgErrThdC;
extern const uint8 CAN01_u8RcJumpErrThdC;
extern const uint8 CAN01_u8Rx6RcErrThdC;
extern const uint8 CAN01_u8RcErrRecThdC;

# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 28 "bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 34 "bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern boolean BSW_bRxTOutFlag_Can01_Rx01;
extern boolean BSW_bRxTOutFlag_Can01_Rx02;
extern boolean BSW_bRxTOutFlag_Can01_Rx03;
extern boolean BSW_bRxTOutFlag_Can01_Rx04;
extern boolean BSW_bRxTOutFlag_Can01_Rx05;
extern boolean BSW_bRxTOutFlag_Can01_Rx06;
extern boolean BSW_bRxTOutFlag_Can01_Rx07;
extern boolean BSW_bRxTOutFlag_Can01_Rx08;
extern boolean BSW_bRxTOutFlag_Can01_Rx09;
extern boolean BSW_bRxTOutFlag_Can01_Rx10;
extern boolean BSW_bRxTOutFlag_Can01_Rx11;
extern boolean BSW_bRxTOutFlag_Can01_Rx12;
extern boolean BSW_bRxTOutFlag_Can01_Rx13;
extern boolean BSW_bRxTOutFlag_Can01_Rx14;
extern boolean BSW_bRxTOutFlag_Can01_Rx15;
extern boolean BSW_bRxTOutFlag_Can01_Rx16;
extern boolean BSW_bRxTOutFlag_Can01_Rx17;
extern boolean BSW_bRxTOutFlag_Can01_Rx18;
extern boolean BSW_bRxTOutFlag_Can01_Rx19;
extern boolean BSW_bRxTOutFlag_Can01_Rx20;
extern boolean BSW_bRxTOutFlag_Can01_Rx21;
extern boolean BSW_bRxTOutFlag_Can01_Rx22;
extern boolean BSW_bRxTOutFlag_Can01_Rx23;
extern boolean BSW_bRxTOutFlag_Can01_Rx24;
extern boolean BSW_bRxTOutFlag_Can01_Rx25;
extern boolean BSW_bRxTOutFlag_Can01_Rx26;
extern boolean BSW_bRxTOutFlag_Can01_Rx27;
extern boolean BSW_bRxTOutFlag_Can01_Rx28;
extern boolean BSW_bRxTOutFlag_Can01_Rx29;
extern boolean BSW_bRxTOutFlag_Can01_Rx30;
extern boolean BSW_bRxTOutFlag_Can01_Rx31;
extern boolean BSW_bRxTOutFlag_Can01_Rx32;
extern boolean BSW_bRxTOutFlag_Can01_Rx33;
extern boolean BSW_bRxTOutFlag_Can01_Rx34;
extern boolean BSW_bRxTOutFlag_Can01_Rx35;
extern boolean BSW_bRxTOutFlag_Can01_Rx36;
extern boolean BSW_bRxTOutFlag_Can01_Rx37;
extern boolean BSW_bRxTOutFlag_Can01_Rx38;
extern boolean BSW_bRxTOutFlag_Can01_Rx39;
extern boolean BSW_bRxTOutFlag_Can01_Rx40;

extern boolean BSW_bMsgValidState_Can01_Rx01;
extern boolean BSW_bMsgValidState_Can01_Rx02;
extern boolean BSW_bMsgValidState_Can01_Rx03;
extern boolean BSW_bMsgValidState_Can01_Rx04;
extern boolean BSW_bMsgValidState_Can01_Rx05;
extern boolean BSW_bMsgValidState_Can01_Rx06;
extern boolean BSW_bMsgValidState_Can01_Rx07;
extern boolean BSW_bMsgValidState_Can01_Rx08;
extern boolean BSW_bMsgValidState_Can01_Rx09;
extern boolean BSW_bMsgValidState_Can01_Rx10;
extern boolean BSW_bMsgValidState_Can01_Rx11;
extern boolean BSW_bMsgValidState_Can01_Rx12;
extern boolean BSW_bMsgValidState_Can01_Rx13;
extern boolean BSW_bMsgValidState_Can01_Rx14;
extern boolean BSW_bMsgValidState_Can01_Rx15;
extern boolean BSW_bMsgValidState_Can01_Rx16;
extern boolean BSW_bMsgValidState_Can01_Rx17;
extern boolean BSW_bMsgValidState_Can01_Rx18;
extern boolean BSW_bMsgValidState_Can01_Rx19;
extern boolean BSW_bMsgValidState_Can01_Rx20;
extern boolean BSW_bMsgValidState_Can01_Rx21;
extern boolean BSW_bMsgValidState_Can01_Rx22;
extern boolean BSW_bMsgValidState_Can01_Rx23;
extern boolean BSW_bMsgValidState_Can01_Rx24;
extern boolean BSW_bMsgValidState_Can01_Rx25;
extern boolean BSW_bMsgValidState_Can01_Rx26;
extern boolean BSW_bMsgValidState_Can01_Rx27;
extern boolean BSW_bMsgValidState_Can01_Rx28;
extern boolean BSW_bMsgValidState_Can01_Rx29;
extern boolean BSW_bMsgValidState_Can01_Rx30;
extern boolean BSW_bMsgValidState_Can01_Rx31;
extern boolean BSW_bMsgValidState_Can01_Rx32;
extern boolean BSW_bMsgValidState_Can01_Rx33;
extern boolean BSW_bMsgValidState_Can01_Rx34;
extern boolean BSW_bMsgValidState_Can01_Rx35;
extern boolean BSW_bMsgValidState_Can01_Rx36;
extern boolean BSW_bMsgValidState_Can01_Rx37;
extern boolean BSW_bMsgValidState_Can01_Rx38;
extern boolean BSW_bMsgValidState_Can01_Rx39;
extern boolean BSW_bMsgValidState_Can01_Rx40;

extern boolean CAN01_bCsumErrFlag_SGRx5Req;
extern boolean CAN01_bRcErrFlag_SGRx5Req;
extern boolean CAN01_bCsumErrFlag_SGRx6Req;
extern boolean CAN01_bRcErrFlag_SGRx6Req;
extern boolean CAN01_bCsumErrFlag_SGRx8Req;
extern boolean CAN01_bRcErrFlag_SGRx8Req;
extern boolean CAN01_bRcCsErrFlagReq;

extern uint8 CAN01_u8Rx5CsumErrCnt;
extern uint8 CAN01_u8Rx5RcLast;
extern uint8 CAN01_u8Rx5RollingCod;
extern uint8 CAN01_u8Rx5RcErrCnt;
extern uint8 CAN01_u8Rx5RcUnchangedErrCnt;
extern uint8 CAN01_u8Rx6CsumErrCnt;
extern uint8 CAN01_u8Rx6RcLast;
extern uint8 CAN01_u8Rx6RollingCod;
extern uint8 CAN01_u8Rx6RcErrCnt;
extern uint8 CAN01_u8Rx6RcRecCnt;
extern uint8 CAN01_u8Rx6RcUnchangedErrCnt;
extern uint8 CAN01_u8Rx8CsumErrCnt;
extern uint8 CAN01_u8Rx8RcLast;
extern uint8 CAN01_u8Rx8RollingCod;
extern uint8 CAN01_u8Rx8RcErrCnt;
extern uint8 CAN01_u8Rx8RcUnchangedErrCnt;


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 143 "bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 149 "bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern void CAN01_vidInit(void);

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 152 "bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
# 9 "bswcdd\\BSW\\CAN01\\CAN01_DEF.c" 2


# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 89 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 90 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 12 "bswcdd\\BSW\\CAN01\\CAN01_DEF.c" 2
const boolean CAN01_bE2ERxValidC = (1 != 0);

# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 95 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 15 "bswcdd\\BSW\\CAN01\\CAN01_DEF.c" 2


# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 78 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 79 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 18 "bswcdd\\BSW\\CAN01\\CAN01_DEF.c" 2
const uint8 CAN01_u8ChecksumErrThdC = 5;
const uint8 CAN01_u8RCUnchgErrThdC = 5;
const uint8 CAN01_u8RcJumpErrThdC = 3;
const uint8 CAN01_u8Rx6RcErrThdC = 10;
const uint8 CAN01_u8RcErrRecThdC = 5;

# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 25 "bswcdd\\BSW\\CAN01\\CAN01_DEF.c" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 31 "bswcdd\\BSW\\CAN01\\CAN01_DEF.c" 2
boolean BSW_bRxTOutFlag_Can01_Rx01 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx02 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx03 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx04 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx05 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx06 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx07 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx08 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx09 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx10 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx11 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx12 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx13 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx14 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx15 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx16 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx17 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx18 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx19 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx20 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx21 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx22 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx23 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx24 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx25 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx26 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx27 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx28 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx29 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx30 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx31 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx32 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx33 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx34 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx35 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx36 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx37 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx38 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx39 = (0 != 0);
boolean BSW_bRxTOutFlag_Can01_Rx40 = (0 != 0);

boolean BSW_bMsgValidState_Can01_Rx01 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx02 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx03 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx04 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx05 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx06 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx07 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx08 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx09 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx10 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx11 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx12 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx13 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx14 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx15 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx16 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx17 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx18 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx19 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx20 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx21 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx22 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx23 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx24 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx25 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx26 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx27 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx28 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx29 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx30 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx31 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx32 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx33 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx34 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx35 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx36 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx37 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx38 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx39 = (0 != 0);
boolean BSW_bMsgValidState_Can01_Rx40 = (0 != 0);

boolean CAN01_bCsumErrFlag_SGRx5Req;
boolean CAN01_bRcErrFlag_SGRx5Req;
boolean CAN01_bCsumErrFlag_SGRx6Req;
boolean CAN01_bRcErrFlag_SGRx6Req;
boolean CAN01_bCsumErrFlag_SGRx8Req;
boolean CAN01_bRcErrFlag_SGRx8Req;
boolean CAN01_bRcCsErrFlagReq;

uint8 CAN01_u8Rx5CsumErrCnt;
uint8 CAN01_u8Rx5RcLast;
uint8 CAN01_u8Rx5RollingCod;
uint8 CAN01_u8Rx5RcErrCnt;
uint8 CAN01_u8Rx5RcUnchangedErrCnt;
uint8 CAN01_u8Rx6CsumErrCnt;
uint8 CAN01_u8Rx6RcLast;
uint8 CAN01_u8Rx6RollingCod;
uint8 CAN01_u8Rx6RcErrCnt;
uint8 CAN01_u8Rx6RcRecCnt;
uint8 CAN01_u8Rx6RcUnchangedErrCnt;
uint8 CAN01_u8Rx8CsumErrCnt;
uint8 CAN01_u8Rx8RcLast;
uint8 CAN01_u8Rx8RollingCod;
uint8 CAN01_u8Rx8RcErrCnt;
uint8 CAN01_u8Rx8RcUnchangedErrCnt;


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 140 "bswcdd\\BSW\\CAN01\\CAN01_DEF.c" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 146 "bswcdd\\BSW\\CAN01\\CAN01_DEF.c" 2
void CAN01_vidInit(void)
{
   BSW_bRxTOutFlag_Can01_Rx01 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx02 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx03 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx04 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx05 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx06 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx07 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx08 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx09 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx10 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx11 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx12 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx13 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx14 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx15 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx16 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx17 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx18 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx19 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx20 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx21 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx22 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx23 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx24 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx25 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx26 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx27 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx28 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx29 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx30 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx31 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx32 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx33 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx34 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx35 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx36 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx37 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx38 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx39 = (0 != 0);
   BSW_bRxTOutFlag_Can01_Rx40 = (0 != 0);

   BSW_bMsgValidState_Can01_Rx01 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx02 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx03 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx04 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx05 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx06 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx07 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx08 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx09 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx10 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx11 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx12 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx13 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx14 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx15 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx16 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx17 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx18 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx19 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx20 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx21 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx22 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx23 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx24 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx25 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx26 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx27 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx28 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx29 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx30 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx31 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx32 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx33 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx34 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx35 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx36 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx37 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx38 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx39 = (0 != 0);
   BSW_bMsgValidState_Can01_Rx40 = (0 != 0);
}

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 232 "bswcdd\\BSW\\CAN01\\CAN01_DEF.c" 2
