# 1 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c"
# 1 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.h" 1



# 1 ".\\output\\inc/Platform_Types.h" 1
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
# 2 ".\\output\\inc/Platform_Types.h" 2
# 5 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.h" 2






boolean ComToutDet_bMCU1_CANTimeout_DetFun(void);
boolean ComToutDet_bMCU2_CANTimeout_DetFun(void);
boolean ComToutDet_bACM_CANTimeout_DetFun(void);
boolean ComToutDet_bEPS_CANTimeout_DetFun(void);
boolean ComToutDet_bPDU_CANTimeout_DetFun(void);
# 2 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c" 2
# 1 ".\\output\\inc/CAN01_DEF.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 1
# 11 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h" 1
# 21 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
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
# 12 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2


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
# 15 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
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
# 18 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2


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
# 21 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
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
# 28 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 34 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
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
# 143 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 149 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern void CAN01_vidInit(void);

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 152 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
# 2 ".\\output\\inc/CAN01_DEF.h" 2
# 3 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c" 2
# 1 ".\\output\\inc/CAN02_DEF.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 1
# 11 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 18 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2
extern boolean BSW_bRxTOutFlag_Can02_Rx01;
extern boolean BSW_bRxTOutFlag_Can02_Rx02;
extern boolean BSW_bRxTOutFlag_Can02_Rx03;
extern boolean BSW_bRxTOutFlag_Can02_Rx04;
extern boolean BSW_bRxTOutFlag_Can02_Rx05;
extern boolean BSW_bRxTOutFlag_Can02_Rx06;
extern boolean BSW_bRxTOutFlag_Can02_Rx07;
extern boolean BSW_bRxTOutFlag_Can02_Rx08;
extern boolean BSW_bRxTOutFlag_Can02_Rx09;
extern boolean BSW_bRxTOutFlag_Can02_Rx10;
extern boolean BSW_bRxTOutFlag_Can02_Rx11;
extern boolean BSW_bRxTOutFlag_Can02_Rx12;
extern boolean BSW_bRxTOutFlag_Can02_Rx13;
extern boolean BSW_bRxTOutFlag_Can02_Rx14;
extern boolean BSW_bRxTOutFlag_Can02_Rx15;
extern boolean BSW_bRxTOutFlag_Can02_Rx16;
extern boolean BSW_bRxTOutFlag_Can02_Rx17;
extern boolean BSW_bRxTOutFlag_Can02_Rx18;
extern boolean BSW_bRxTOutFlag_Can02_Rx19;
extern boolean BSW_bRxTOutFlag_Can02_Rx20;
extern boolean BSW_bRxTOutFlag_Can02_Rx21;
extern boolean BSW_bRxTOutFlag_Can02_Rx22;
extern boolean BSW_bRxTOutFlag_Can02_Rx23;
extern boolean BSW_bRxTOutFlag_Can02_Rx24;
extern boolean BSW_bRxTOutFlag_Can02_Rx25;
extern boolean BSW_bRxTOutFlag_Can02_Rx26;
extern boolean BSW_bRxTOutFlag_Can02_Rx27;
extern boolean BSW_bRxTOutFlag_Can02_Rx28;
extern boolean BSW_bRxTOutFlag_Can02_Rx29;
extern boolean BSW_bRxTOutFlag_Can02_Rx30;
extern boolean BSW_bRxTOutFlag_Can02_Rx31;
extern boolean BSW_bRxTOutFlag_Can02_Rx32;
extern boolean BSW_bRxTOutFlag_Can02_Rx33;
extern boolean BSW_bRxTOutFlag_Can02_Rx34;
extern boolean BSW_bRxTOutFlag_Can02_Rx35;
extern boolean BSW_bRxTOutFlag_Can02_Rx36;
extern boolean BSW_bRxTOutFlag_Can02_Rx37;
extern boolean BSW_bRxTOutFlag_Can02_Rx38;
extern boolean BSW_bRxTOutFlag_Can02_Rx39;
extern boolean BSW_bRxTOutFlag_Can02_Rx40;

extern boolean BSW_bMsgValidState_Can02_Rx01;
extern boolean BSW_bMsgValidState_Can02_Rx02;
extern boolean BSW_bMsgValidState_Can02_Rx03;
extern boolean BSW_bMsgValidState_Can02_Rx04;
extern boolean BSW_bMsgValidState_Can02_Rx05;
extern boolean BSW_bMsgValidState_Can02_Rx06;
extern boolean BSW_bMsgValidState_Can02_Rx07;
extern boolean BSW_bMsgValidState_Can02_Rx08;
extern boolean BSW_bMsgValidState_Can02_Rx09;
extern boolean BSW_bMsgValidState_Can02_Rx10;
extern boolean BSW_bMsgValidState_Can02_Rx11;
extern boolean BSW_bMsgValidState_Can02_Rx12;
extern boolean BSW_bMsgValidState_Can02_Rx13;
extern boolean BSW_bMsgValidState_Can02_Rx14;
extern boolean BSW_bMsgValidState_Can02_Rx15;
extern boolean BSW_bMsgValidState_Can02_Rx16;
extern boolean BSW_bMsgValidState_Can02_Rx17;
extern boolean BSW_bMsgValidState_Can02_Rx18;
extern boolean BSW_bMsgValidState_Can02_Rx19;
extern boolean BSW_bMsgValidState_Can02_Rx20;
extern boolean BSW_bMsgValidState_Can02_Rx21;
extern boolean BSW_bMsgValidState_Can02_Rx22;
extern boolean BSW_bMsgValidState_Can02_Rx23;
extern boolean BSW_bMsgValidState_Can02_Rx24;
extern boolean BSW_bMsgValidState_Can02_Rx25;
extern boolean BSW_bMsgValidState_Can02_Rx26;
extern boolean BSW_bMsgValidState_Can02_Rx27;
extern boolean BSW_bMsgValidState_Can02_Rx28;
extern boolean BSW_bMsgValidState_Can02_Rx29;
extern boolean BSW_bMsgValidState_Can02_Rx30;
extern boolean BSW_bMsgValidState_Can02_Rx31;
extern boolean BSW_bMsgValidState_Can02_Rx32;
extern boolean BSW_bMsgValidState_Can02_Rx33;
extern boolean BSW_bMsgValidState_Can02_Rx34;
extern boolean BSW_bMsgValidState_Can02_Rx35;
extern boolean BSW_bMsgValidState_Can02_Rx36;
extern boolean BSW_bMsgValidState_Can02_Rx37;
extern boolean BSW_bMsgValidState_Can02_Rx38;
extern boolean BSW_bMsgValidState_Can02_Rx39;
extern boolean BSW_bMsgValidState_Can02_Rx40;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 101 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 107 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2
extern void CAN02_vidInit(void);

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2
# 2 ".\\output\\inc/CAN02_DEF.h" 2
# 4 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c" 2
# 1 ".\\output\\inc/CAN03_DEF.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 1
# 11 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 18 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2
extern boolean BSW_bRxTOutFlag_Can03_Rx01;
extern boolean BSW_bRxTOutFlag_Can03_Rx02;
extern boolean BSW_bRxTOutFlag_Can03_Rx03;
extern boolean BSW_bRxTOutFlag_Can03_Rx04;
extern boolean BSW_bRxTOutFlag_Can03_Rx05;
extern boolean BSW_bRxTOutFlag_Can03_Rx06;
extern boolean BSW_bRxTOutFlag_Can03_Rx07;
extern boolean BSW_bRxTOutFlag_Can03_Rx08;
extern boolean BSW_bRxTOutFlag_Can03_Rx09;
extern boolean BSW_bRxTOutFlag_Can03_Rx10;
extern boolean BSW_bRxTOutFlag_Can03_Rx11;
extern boolean BSW_bRxTOutFlag_Can03_Rx12;
extern boolean BSW_bRxTOutFlag_Can03_Rx13;
extern boolean BSW_bRxTOutFlag_Can03_Rx14;
extern boolean BSW_bRxTOutFlag_Can03_Rx15;
extern boolean BSW_bRxTOutFlag_Can03_Rx16;
extern boolean BSW_bRxTOutFlag_Can03_Rx17;
extern boolean BSW_bRxTOutFlag_Can03_Rx18;
extern boolean BSW_bRxTOutFlag_Can03_Rx19;
extern boolean BSW_bRxTOutFlag_Can03_Rx20;
extern boolean BSW_bRxTOutFlag_Can03_Rx21;
extern boolean BSW_bRxTOutFlag_Can03_Rx22;
extern boolean BSW_bRxTOutFlag_Can03_Rx23;
extern boolean BSW_bRxTOutFlag_Can03_Rx24;
extern boolean BSW_bRxTOutFlag_Can03_Rx25;
extern boolean BSW_bRxTOutFlag_Can03_Rx26;
extern boolean BSW_bRxTOutFlag_Can03_Rx27;
extern boolean BSW_bRxTOutFlag_Can03_Rx28;
extern boolean BSW_bRxTOutFlag_Can03_Rx29;
extern boolean BSW_bRxTOutFlag_Can03_Rx30;
extern boolean BSW_bRxTOutFlag_Can03_Rx31;
extern boolean BSW_bRxTOutFlag_Can03_Rx32;
extern boolean BSW_bRxTOutFlag_Can03_Rx33;
extern boolean BSW_bRxTOutFlag_Can03_Rx34;
extern boolean BSW_bRxTOutFlag_Can03_Rx35;
extern boolean BSW_bRxTOutFlag_Can03_Rx36;
extern boolean BSW_bRxTOutFlag_Can03_Rx37;
extern boolean BSW_bRxTOutFlag_Can03_Rx38;
extern boolean BSW_bRxTOutFlag_Can03_Rx39;
extern boolean BSW_bRxTOutFlag_Can03_Rx40;

extern boolean BSW_bMsgValidState_Can03_Rx01;
extern boolean BSW_bMsgValidState_Can03_Rx02;
extern boolean BSW_bMsgValidState_Can03_Rx03;
extern boolean BSW_bMsgValidState_Can03_Rx04;
extern boolean BSW_bMsgValidState_Can03_Rx05;
extern boolean BSW_bMsgValidState_Can03_Rx06;
extern boolean BSW_bMsgValidState_Can03_Rx07;
extern boolean BSW_bMsgValidState_Can03_Rx08;
extern boolean BSW_bMsgValidState_Can03_Rx09;
extern boolean BSW_bMsgValidState_Can03_Rx10;
extern boolean BSW_bMsgValidState_Can03_Rx11;
extern boolean BSW_bMsgValidState_Can03_Rx12;
extern boolean BSW_bMsgValidState_Can03_Rx13;
extern boolean BSW_bMsgValidState_Can03_Rx14;
extern boolean BSW_bMsgValidState_Can03_Rx15;
extern boolean BSW_bMsgValidState_Can03_Rx16;
extern boolean BSW_bMsgValidState_Can03_Rx17;
extern boolean BSW_bMsgValidState_Can03_Rx18;
extern boolean BSW_bMsgValidState_Can03_Rx19;
extern boolean BSW_bMsgValidState_Can03_Rx20;
extern boolean BSW_bMsgValidState_Can03_Rx21;
extern boolean BSW_bMsgValidState_Can03_Rx22;
extern boolean BSW_bMsgValidState_Can03_Rx23;
extern boolean BSW_bMsgValidState_Can03_Rx24;
extern boolean BSW_bMsgValidState_Can03_Rx25;
extern boolean BSW_bMsgValidState_Can03_Rx26;
extern boolean BSW_bMsgValidState_Can03_Rx27;
extern boolean BSW_bMsgValidState_Can03_Rx28;
extern boolean BSW_bMsgValidState_Can03_Rx29;
extern boolean BSW_bMsgValidState_Can03_Rx30;
extern boolean BSW_bMsgValidState_Can03_Rx31;
extern boolean BSW_bMsgValidState_Can03_Rx32;
extern boolean BSW_bMsgValidState_Can03_Rx33;
extern boolean BSW_bMsgValidState_Can03_Rx34;
extern boolean BSW_bMsgValidState_Can03_Rx35;
extern boolean BSW_bMsgValidState_Can03_Rx36;
extern boolean BSW_bMsgValidState_Can03_Rx37;
extern boolean BSW_bMsgValidState_Can03_Rx38;
extern boolean BSW_bMsgValidState_Can03_Rx39;
extern boolean BSW_bMsgValidState_Can03_Rx40;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 101 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 107 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2
extern void CAN03_vidInit(void);

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2
# 2 ".\\output\\inc/CAN03_DEF.h" 2
# 5 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c" 2
# 13 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c"
boolean ComToutDet_bMCU1_CANTimeout_DetFun(void)
{
   uint8 bRet = 0u ;
   bRet = BSW_bRxTOutFlag_Can01_Rx01
        | BSW_bRxTOutFlag_Can01_Rx02 ;
   return bRet ;
}
# 28 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c"
boolean ComToutDet_bMCU2_CANTimeout_DetFun(void)
{
   uint8 bRet = 0u ;
   bRet = BSW_bRxTOutFlag_Can01_Rx01
        | BSW_bRxTOutFlag_Can01_Rx02 ;
   return bRet ;
}
# 43 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c"
boolean ComToutDet_bACM_CANTimeout_DetFun(void)
{
   uint8 bRet = 0u ;
   bRet = BSW_bRxTOutFlag_Can01_Rx01
        | BSW_bRxTOutFlag_Can01_Rx02 ;
   return bRet ;
}
# 58 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c"
boolean ComToutDet_bEPS_CANTimeout_DetFun(void)
{
   uint8 bRet = 0u ;
   bRet = BSW_bRxTOutFlag_Can01_Rx01
        | BSW_bRxTOutFlag_Can01_Rx02 ;
   return bRet ;
}
# 73 "bswcdd\\BSW\\ComToutDet\\ComToutDet_Cfg.c"
boolean ComToutDet_bPDU_CANTimeout_DetFun(void)
{
   uint8 bRet = 0u ;
   bRet = BSW_bRxTOutFlag_Can01_Rx01
        | BSW_bRxTOutFlag_Can01_Rx02 ;
   return bRet ;
}
