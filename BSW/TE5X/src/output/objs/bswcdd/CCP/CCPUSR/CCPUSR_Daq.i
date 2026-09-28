# 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c"
# 34 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c"
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
# 35 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2
# 1 ".\\output\\inc/CCP.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h" 1
# 34 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h" 2
# 1 ".\\output\\inc/Std_Limits.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Limits.h" 1
# 2 ".\\output\\inc/Std_Limits.h" 2
# 36 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h" 2
# 63 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h"
typedef uint8_least CCP_tudtCmdSts;

typedef uint8_least CCP_tudtState;
typedef uint8_least CCP_tudtCmdCode;

typedef CCP_tudtCmdSts (*CCP_tpfudtSrvFcn)(void);

typedef struct
{
   uint32 u32Adr;
   uint8 u8Extn;
}
CCP_tstrMta;

typedef struct
{
   uint8 u8NoOdt;
   uint8 u8FirstPid;

}
CCP_tstrDaqListStatCfg;



typedef struct
{
   boolean vbStopTx;
   boolean bLstOdtProcd;
   uint8 vu8TxSt;

   uint8 u8OdtLstIdx;

   boolean vbEvtSet;
   uint8 u8EveChn;

   uint8 vu8CfgChgdCtr;


   uint8 u8CfgChgdAckdCtr;

   uint8 vu8Mod;

   uint16 u16Ctr;
   uint16 u16Pslr;
}
CCP_tstrDaqListDynCfg;


typedef struct
{
   uint8 u8ListIdx;

   uint8 u8OdtIdx;

   uint8 u8ElmIdx;


}
CCP_tstrDaqListSeldElm;


typedef struct
{

   uint16 u16Dummy;
}
CCP_tstrIniPrms;
# 36 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h" 1
# 126 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 85 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".const" a
# 127 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h" 2


extern const uint8 CCP_kaudtDevId[sizeof("A5H_BSWTC26")];


# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 122 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 133 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h" 2
# 37 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h" 2
# 75 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h" 2
# 93 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
void CCP_vidIni
(

   const CCP_tstrIniPrms * pkstrIniPrms
);
# 115 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
void CCP_vidMonr(void);
# 153 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
CCP_tudtState CCP_udtGetState(void);
# 169 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
   void CCP_vidDaqListSetEvent
   (
      uint8 u8EveChn

   );
# 194 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
   void CCP_vidDaqListTxMgr
   (
      uint8 u8ListIdx

   );
# 271 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 272 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP.h" 2
# 2 ".\\output\\inc/CCP.h" 2
# 36 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2
# 1 ".\\output\\inc/CCP_L.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Srv.h" 1
# 56 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Srv.h"
typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;

   uint16 u16StnAdr;
   uint8 au8NotUsed[4];
}
CCP_tstrCmdCnct;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[5];
}
CCP_tstrAckCnct;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8Prm[6];
}
CCP_tstrCmdExchId;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8Len;
   uint8 u8DataTyp;
   uint8 u8ResAvlyMask;
   uint8 u8ResProtnMask;
   uint8 u8NotUsed;
}
CCP_tstrAckExchId;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8ReqSlaveRes;
   uint8 au8NotUsed[5];
}
CCP_tstrCmdGetSeed;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8ProtnSts;
   uint8 au8Key[4];
}
CCP_tstrAckGetSeed;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8Key[6];
}
CCP_tstrCmdUnlck;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8CurPvlgSts;
   uint8 au8NotUsed[4];
}
CCP_tstrAckUnlck;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8MtaIdx;
   uint8 u8AdrExtn;
   uint32 u32Adr;
}
CCP_tstrCmdSetMta;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[5];
}
CCP_tstrAckSetMta;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8DataSize;
   uint8 au8Data[5];
}
CCP_tstrCmdDnld;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8AdrExtn;
   uint32 u32Adr;
}
CCP_tstrAckDnld;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8Data[6];
}
CCP_tstrCmdDnld6;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8AdrExtn;
   uint32 u32Adr;
}
CCP_tstrAckDnld6;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8DataSize;
   uint8 au8NotUsed[5];
}
CCP_tstrCmdUpld;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8Data[5];
}
CCP_tstrAckUpld;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8DataSize;
   uint8 u8AdrExtn;
   uint32 u32Adr;
}
CCP_tstrCmdShoUpld;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8Data[5];
}
CCP_tstrAckShoUpld;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[6];
}
CCP_tstrCmdSelCalPage;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[5];
}
CCP_tstrAckSelCalPage;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8ListIdx;
   uint8 u8NotUsed;
   uint32 u32CanId;
}
CCP_tstrCmdGetDaqSize;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8NoOdt;
   uint8 u8FirstPidOfDaq;
   uint8 au8NotUsed[3];
}
CCP_tstrAckGetDaqSize;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8ListIdx;
   uint8 u8OdtIdx;
   uint8 u8ElmIdx;
   uint8 au8NotUsed[3];
}
CCP_tstrCmdSetDaqPtr;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[5];
}
CCP_tstrAckSetDaqPtr;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8Size;
   uint8 u8AdrExtn;
   uint32 u32Adr;
}
CCP_tstrCmdWrDaq;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[5];
}
CCP_tstrAckWrDaq;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8Mod;
   uint8 u8ListIdx;
   uint8 u8OdtLstIdx;
   uint8 u8EveChn;
   uint16 u16Pslr;
}
CCP_tstrCmdStrtStop;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[5];
}
CCP_tstrAckStrtStop;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8Mod;
   uint8 u8NotUsed;

   uint16 u16StnAdr;
   uint8 au8NotUsed2[2];
}
CCP_tstrCmdDcnct;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[5];
}
CCP_tstrAckDcnct;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8SsnSts;
   uint8 au8NotUsed[5];
}
CCP_tstrCmdSetSsnSts;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[5];
}
CCP_tstrAckSetSsnSts;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[6];
}
CCP_tstrCmdGetSsnSts;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8SsnSts;
   uint8 u8AddlStsInfoQlfr;
   uint8 au8AddlStsInfo[3];
}
CCP_tstrAckGetSsnSts;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;




      uint16 u16BlkSizeLSW;
      uint16 u16BlkSizeMSW;

   uint8 au8NotUsed[2];
}
CCP_tstrCmdBldCks;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8CksDataSize;
   uint8 au8CksData[4];
}
CCP_tstrAckBldCks;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;




      uint16 u16BlkSizeLSW;
      uint16 u16BlkSizeMSW;

   uint8 au8NotUsed[2];
}
CCP_tstrCmdClrMem;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[5];
}
CCP_tstrAckClrMem;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8DataSize;
   uint8 au8Data[5];
}
CCP_tstrCmdProg;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8AdrExtn;
   uint32 u32Adr;
}
CCP_tstrAckProg;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8Data[6];
}
CCP_tstrCmdProg6;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8AdrExtn;
   uint32 u32Adr;
}
CCP_tstrAckProg6;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;




      uint16 u16BlkSizeLSW;
      uint16 u16BlkSizeMSW;

   uint8 au8NotUsed[2];
}
CCP_tstrCmdMove;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[5];
}
CCP_tstrAckMove;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint16 u16DiagcSrvIdx;
   uint8 au8Prm[4];
}
CCP_tstrCmdDiagcSrv;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8Len;
   uint8 u8DataTyp;
   uint8 au8NotUsed[3];
}
CCP_tstrAckDiagcSrv;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint16 u16ActnSrvIdx;
   uint8 au8Prm[4];
}
CCP_tstrCmdActnSrv;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8Len;
   uint8 u8DataTyp;
   uint8 au8NotUsed[3];
}
CCP_tstrAckActnSrv;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;

   uint16 u16StnAdr;
   uint8 au8NotUsed[4];
}
CCP_tstrCmdTest;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[5];
}
CCP_tstrAckTest;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8Mod;
   uint8 au8NotUsed[5];
}
CCP_tstrCmdStrtStopAll;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[5];
}
CCP_tstrAckStrtStopAll;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 au8NotUsed[6];
}
CCP_tstrCmdGetAcvCalPage;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8AdrExtn;
   uint32 u32Adr;
}
CCP_tstrAckGetAcvCalPage;


typedef struct
{
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8MaiPtclVers;
   uint8 u8RleasWithinVers;
   uint8 au8NotUsed[4];
}
CCP_tstrCmdGetCcpVers;

typedef struct
{
   uint8 u8PktId;
   uint8 u8CmdCod;
   uint8 u8CmdCtr;
   uint8 u8MaiPtclVers;
   uint8 u8RleasWithinVers;
   uint8 au8NotUsed[3];
}
CCP_tstrAckGetCcpVers;


typedef union
{
   CCP_tstrCmdCnct strCnct;
   CCP_tstrCmdExchId strExchId;
   CCP_tstrCmdGetSeed strGetSeed;
   CCP_tstrCmdUnlck strUnlck;
   CCP_tstrCmdSetMta strSetMta;
   CCP_tstrCmdDnld strDnld;
   CCP_tstrCmdDnld6 strDnld6;
   CCP_tstrCmdUpld strUpld;
   CCP_tstrCmdShoUpld strShoUpld;
   CCP_tstrCmdSelCalPage strSelCalPage;
   CCP_tstrCmdGetDaqSize strGetDaqSize;
   CCP_tstrCmdSetDaqPtr strSetDaqPtr;
   CCP_tstrCmdWrDaq strWrDaq;
   CCP_tstrCmdStrtStop strStrtStop;
   CCP_tstrCmdDcnct strDcnct;
   CCP_tstrCmdSetSsnSts strSetSsnSts;
   CCP_tstrCmdGetSsnSts strGetSsnSts;
   CCP_tstrCmdBldCks strBldCks;
   CCP_tstrCmdClrMem strClrMem;
   CCP_tstrCmdProg strProg;
   CCP_tstrCmdProg6 strProg6;
   CCP_tstrCmdMove strMove;
   CCP_tstrCmdDiagcSrv strDiagcSrv;
   CCP_tstrCmdActnSrv strActnSrv;
   CCP_tstrCmdTest strTest;
   CCP_tstrCmdStrtStopAll strStrtStopAll;
   CCP_tstrCmdGetAcvCalPage strGetAcvCalPage;
   CCP_tstrCmdGetCcpVers strGetCcpVers;
}
CCP_tuniCmdRxObj;


typedef union
{
   CCP_tstrAckCnct strCnct;
   CCP_tstrAckExchId strExchId;
   CCP_tstrAckGetSeed strGetSeed;
   CCP_tstrAckUnlck strUnlck;
   CCP_tstrAckSetMta strSetMta;
   CCP_tstrAckDnld strDnld;
   CCP_tstrAckDnld6 strDnld6;
   CCP_tstrAckUpld strUpld;
   CCP_tstrAckShoUpld strShoUpld;
   CCP_tstrAckSelCalPage strSelCalPage;
   CCP_tstrAckGetDaqSize strGetDaqSize;
   CCP_tstrAckSetDaqPtr strSetDaqPtr;
   CCP_tstrAckWrDaq strWrDaq;
   CCP_tstrAckStrtStop strStrtStop;
   CCP_tstrAckDcnct strDcnct;
   CCP_tstrAckSetSsnSts strSetSsnSts;
   CCP_tstrAckGetSsnSts strGetSsnSts;
   CCP_tstrAckBldCks strBldCks;
   CCP_tstrAckClrMem strClrMem;
   CCP_tstrAckProg strProg;
   CCP_tstrAckProg6 strProg6;
   CCP_tstrAckMove strMove;
   CCP_tstrAckDiagcSrv strDiagcSrv;
   CCP_tstrAckActnSrv strActnSrv;
   CCP_tstrAckTest strTest;
   CCP_tstrAckStrtStopAll strStrtStopAll;
   CCP_tstrAckGetAcvCalPage strGetAcvCalPage;
   CCP_tstrAckGetCcpVers strGetCcpVers;
}
CCP_tuniDataTxObj;


typedef struct
{
   uint8 u8PktId;
   uint8 au8Prm[7];
}
CCP_tstrDaqTxObj;


typedef union
{
   uint32 au32Data[2];
   uint8 au8Data[8];
   struct
   {
      uint8 u8CmdCod;
      uint8 u8CmdCtr;
      uint8 au8Prm[6];
   }
   strReq;
   struct
   {
      uint8 u8PktId;
      uint8 u8CmdRtnCod;
      uint8 u8CmdCtr;
      uint8 au8Prm[5];
   }
   strResp;
   CCP_tuniCmdRxObj uniCmd;
   CCP_tuniDataTxObj uniAck;
}
CCP_tuniPtclMsgBuf;

typedef union
{
   uint32 au32Data[2];
   uint8 au8Data[8];
   CCP_tstrDaqTxObj uniDaq;
}
CCP_tuniDaqMsgBuf;
# 36 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h" 2
# 250 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 85 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".const" a
# 251 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h" 2

extern const CCP_tpfudtSrvFcn CCP_kapfudtSrvFcn[36];
extern const CCP_tstrDaqListStatCfg CCP_kastrDaqListStatCfg[3];


# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 122 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 257 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h" 2






# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".data_cpu0" aw
# 264 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h" 2

extern CCP_tudtState CCP_udtState;

extern CCP_tuniPtclMsgBuf CCP_uniBuf;

extern CCP_tstrMta CCP_astrMta[1];


   extern uint8 CCP_u8SsnSts;
# 286 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h"
   extern CCP_tstrDaqListSeldElm CCP_strDaqListSeldElm;

   extern uint8 CCP_u8DaqNoStrtdList;

   extern CCP_tstrDaqListDynCfg CCP_astrDaqListDynCfg[3];

extern boolean CCP_bFaultRecordReadFlag;


# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 296 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h" 2






# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 303 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h" 2


void CCP_vidSsnIni(boolean bResuReqd);

CCP_tudtCmdSts CCP_udtCnct(void);
CCP_tudtCmdSts CCP_udtGetCcpVers(void);
CCP_tudtCmdSts CCP_udtExchId(void);
CCP_tudtCmdSts CCP_udtSetMta(void);
CCP_tudtCmdSts CCP_udtDnld(void);



CCP_tudtCmdSts CCP_udtUpld(void);



CCP_tudtCmdSts CCP_udtDcnct(void);
CCP_tudtCmdSts CCP_udtFcnNotAvl(void);


   CCP_tudtCmdSts CCP_udtTest(void);


   CCP_tudtCmdSts CCP_udtDnld6(void);





   CCP_tudtCmdSts CCP_udtShoUpld(void);





   CCP_tudtCmdSts CCP_udtSetSsnSts(void);


   CCP_tudtCmdSts CCP_udtGetSsnSts(void);
# 350 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h"
   CCP_tudtCmdSts CCP_udtSelCalPage(void);


   CCP_tudtCmdSts CCP_udtGetAcvCalPage(void);


   CCP_tudtCmdSts CCP_udtBldCks(void);
# 382 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h"
   void CCP_vidDaqListIni(void);
   CCP_tudtCmdSts CCP_udtGetDaqSize(void);
   CCP_tudtCmdSts CCP_udtSetDaqPtr(void);
   CCP_tudtCmdSts CCP_udtWrDaqElmCfg(void);
   CCP_tudtCmdSts CCP_udtStrtStop(void);
   CCP_tudtCmdSts CCP_udtStrtStopAll(void);
   void CCP_vidDaqListStop(uint8_least u8ListIdx);
   void CCP_vidDaqListStrt(uint8_least u8ListIdx, uint8_least u8Mod);



# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 394 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_L.h" 2
# 2 ".\\output\\inc/CCP_L.h" 2
# 37 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2
# 1 ".\\output\\inc/CCP_Usr.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Usr.h" 1
# 126 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Usr.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 127 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Usr.h" 2




void CCP_vidUsrIni(void);




void CCP_vidUsrRxCmd
(

   uint8 au8Data[8]
);




void CCP_vidUsrTxCmdResp
(

   const uint8 aku8Data[8]
);




void CCP_vidUsrNtfySsnTrmd(void);
# 191 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Usr.h"
CCP_tudtCmdSts CCP_udtUsrReadMem
(



   uint8 u8UsrSrv,

   const CCP_tstrMta * pkstrMta,

   uint8 * pu8Data,


   uint8 u8DataSize
);
# 226 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Usr.h"
CCP_tudtCmdSts CCP_udtUsrWrMem
(



   uint8 u8UsrSrv,

   const CCP_tstrMta * pkstrMta,

   const uint8 * pku8Data,


   uint8 u8DataSize
);
# 257 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Usr.h"
      void CCP_vidUsrNtfyCalStoreSttChgd
      (

         boolean bCalStoreStt
      );
# 314 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Usr.h"
   CCP_tudtCmdSts CCP_udtUsrSelCalPage
   (

      const CCP_tstrMta * pkstrMta
   );




   void CCP_vidUsrGetAcvCalPage
   (

      CCP_tstrMta * pstrMta
   );
# 336 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Usr.h"
   CCP_tudtCmdSts CCP_udtUsrBldCks
   (

      const CCP_tstrMta * pkstrMta,


      uint32 u32BlkSize,



      uint8 * pu8CksSize,

      uint8 au8CksData[4]
   );
# 477 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Usr.h"
   void CCP_vidUsrDaqListClr
   (



      uint8 u8ListIdx
   );






   CCP_tudtCmdSts CCP_udtUsrWrDaqElmCfg
   (



      uint8 u8ListIdx,



      uint8 u8OdtIdx,



      uint8 u8ElmIdx,

      const CCP_tstrMta * pkstrMta,



      uint8 u8ElmSize
   );




   void CCP_vidUsrDaqListTxMgrInit
   (



      uint8 u8ListIdx,



      uint8 u8FirstPid,



      uint8 u8OdtLstIdx
   );





   boolean CCP_bUsrDaqListTxMgr
   (



      uint8 u8ListIdx
   );




   void CCP_vidUsrDaqListStopd
   (



      uint8 u8ListIdx
   );




   void CCP_vidUsrDaqListTxOvrn
   (



      uint8 u8ListIdx
   );
# 586 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Usr.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 587 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Usr.h" 2
# 2 ".\\output\\inc/CCP_Usr.h" 2
# 38 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2
# 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h" 1
# 25 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 26 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h" 2
# 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 1
# 27 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 28 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2
# 1 ".\\output\\inc/ComStack_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h" 1
# 19 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 20 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h" 2
# 1 ".\\output\\inc/ComStack_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h" 1
# 44 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
typedef uint16 PduIdType;



typedef uint16 PduLengthType;
# 57 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
typedef struct
{
    uint8 * SduDataPtr;
    uint8 * MetaDataPtr;
    PduLengthType SduLength;
} PduInfoType;
# 71 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
typedef uint8 BusTrcvErrorType;
# 2 ".\\output\\inc/ComStack_Cfg.h" 2
# 21 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h" 2
# 44 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
typedef uint8 PNCHandleType;


typedef enum
{
    TP_STMIN = 0x00,
    TP_BS = 0x01,
    TP_BC = 0x02
} TPParameterType;


typedef enum
{
    BUFREQ_OK = 0x00,
    BUFREQ_E_NOT_OK = 0x01,
    BUFREQ_E_BUSY = 0x02,
    BUFREQ_E_OVFL = 0x03
} BufReq_ReturnType;


typedef enum
{
    TP_DATACONF = 0x00,
    TP_DATARETRY = 0x01,
    TP_CONFPENDING = 0x02
} TpDataStateType;


typedef struct
{
    TpDataStateType TpDataState;
    PduLengthType TxTpDataCnt;
} RetryInfoType;


typedef uint8 NetworkHandleType;


typedef uint8 IcomConfigIdType;


typedef enum
{
    ICOM_SWITCH_E_OK,
    ICOM_SWITCH_E_FAILED
} IcomSwitch_ErrorType;
# 2 ".\\output\\inc/ComStack_Types.h" 2
# 29 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2
# 1 ".\\output\\inc/CCP_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Cfg.h" 1
# 2 ".\\output\\inc/CCP_Cfg.h" 2
# 30 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2
# 68 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h"
# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 85 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".const" a
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 69 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2


extern const PduIdType CCPUSR_kaudtDtoMsgID[1];


extern const PduIdType CCPUSR_kaudtDaqMsgID[1][3];


# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 122 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 78 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".data_cpu0" aw
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 85 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2



# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 89 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 96 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2

void CCPUSR_vidTxConfirmation_DAQ_BASE_FAST(PduIdType TxPduId);
void CCPUSR_vidTxConfirmation_DAQ_SPY(PduIdType TxPduId);
void CCPUSR_vidTxConfirmation_DAQ_SLOW(PduIdType TxPduId);


# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 103 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Cfg.h" 2
# 27 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h" 2
# 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h" 1
# 25 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 26 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h" 2
# 1 ".\\output\\inc/CCP_Typ.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_Typ.h" 1
# 2 ".\\output\\inc/CCP_Typ.h" 2
# 27 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h" 2
# 1 ".\\output\\inc/CCP_Cfg.h" 1
# 28 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h" 2
# 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Co.h" 1
# 25 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Co.h"
# 1 ".\\output\\inc/CCP_Typ.h" 1
# 26 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Co.h" 2
# 29 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h" 2
# 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Typ.h" 1
# 25 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Typ.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 26 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Typ.h" 2
# 1 ".\\output\\inc/CCP_Typ.h" 1
# 27 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Typ.h" 2
# 30 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h" 2
# 60 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h"
typedef uint8 CCPUSRWrongsize[((((uint8)sizeof(CCP_kaudtDevId))+4)>(18))?-1:1];






typedef struct
{
   uint8 * apu8DaqListElmAdr[322];

   uint8 au8DaqListElmSize[322];
# 83 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h"
}
CCPUSR_tstrDaqListDynCfg;


typedef union
{
   uint8 au8Data[4];
   uint32 u32Data;
}
CCP_tuniCopyData;






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".data_cpu0" aw
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 100 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h" 2


extern CCPUSR_tstrDaqListDynCfg CCPUSR_strDaqListDynCfg;
# 111 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h"
# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 112 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h" 2






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 119 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h" 2


void CCPUSR_vidDaqListIni(void);
void CCPUSR_vidSendDaqMessage(uint8 u8DaqId, const uint8 aku8Data[8]);
# 139 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h"
# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 140 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.h" 2
# 28 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h" 2
# 43 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h"
# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".data_cpu0" aw
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 44 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h" 2

extern uint8 CCPUSR_enuCalStoreStatus;
extern uint32 CCPUSR_au32ReadOnlyMemoryZone[2*2];

# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 49 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h" 2






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 85 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".const" a
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 56 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h" 2

extern const uint32 CCPUSR_kau32WritableMemoryZone[2*7];
extern const uint32 CCPUSR_kau32ReadOnlyMemoryZone[2*2];

   extern const CCPUSR_tstrDaqListDynCfg CCPUSR_kstrDaqListDynCfgInin;



# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 122 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 65 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h" 2






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 72 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h" 2

extern void CCPUSR_vidRxIndication(PduIdType RxPduId, PduInfoType *PduInfoPtr);
void CCPUSR_vidMainFunction(void);





   extern void CCPUSR_DaqListSetEvent(uint8 u8EveChn);
# 89 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h"
# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 90 "bswcdd\\CCP\\CCPUSR\\CCPUSR.h" 2
# 39 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2


# 1 "bswcdd\\CCP\\CCPUSR\\SchM_CCPUSR.h" 1
# 27 "bswcdd\\CCP\\CCPUSR\\SchM_CCPUSR.h"
# 1 ".\\output\\inc/OS.h" 1
# 1 ".\\output\\inc/..\\..\\os\\Os.h" 1
# 39 ".\\output\\inc/..\\..\\os\\Os.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 40 ".\\output\\inc/..\\..\\os\\Os.h" 2
# 94 ".\\output\\inc/..\\..\\os\\Os.h"
 extern int __builtin_clz(unsigned int reg);






typedef struct {
  uint8 Class;
  uint8 TIN;
  uint32 ReturnAddress;
} OsTrapInfoType;
typedef OsTrapInfoType * OsTrapInfoRefType;




typedef uint32 uint32_aligned __attribute__ ((aligned (4)));
# 131 ".\\output\\inc/..\\..\\os\\Os.h"
# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 132 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern StatusType Os_Cbk_StartCore(uint16 CoreID);


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 137 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 142 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern void Os_InitializeInterruptTable(void);
extern void Os_InitializeTrapTable(void);
extern void Os_InitializeServiceRequests(void);
extern void Os_StartCoreGate(void);
extern StatusType Os_GetTrapInfo(OsTrapInfoRefType Info);


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 151 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 156 ".\\output\\inc/..\\..\\os\\Os.h" 2




  extern void Os_ISRWrapper0(uint32 isr_index, uint32 pcxi) __attribute__((interrupt_handler));



# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 165 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 170 ".\\output\\inc/..\\..\\os\\Os.h" 2




  extern void Os_ISRWrapper2(uint32 isr_index, uint32 pcxi) __attribute__((interrupt_handler));



# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 179 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 184 ".\\output\\inc/..\\..\\os\\Os.h" 2




  extern void Os_ISRWrapper3(uint32 isr_index, uint32 pcxi) __attribute__((interrupt_handler));



# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 193 ".\\output\\inc/..\\..\\os\\Os.h" 2






typedef struct {
  uint32 store[17U];
} Os_JumpBufType[1];
extern sint32 Os_setjmp(Os_JumpBufType j);
extern void Os_longjmp(Os_JumpBufType j);
extern void Os_longjmp_ext(Os_JumpBufType j);
extern void Os_ECClongjmp(Os_JumpBufType j);
# 218 ".\\output\\inc/..\\..\\os\\Os.h"
typedef unsigned char Os_ResourceCountType;
typedef unsigned Os_StackTraceType;
typedef struct {Os_StackTraceType sp; Os_StackTraceType ctx;} Os_StackValueType;
typedef Os_StackValueType Os_StackSizeType;


typedef void (*Os_VoidVoidFunctionType)(void);
typedef Os_VoidVoidFunctionType Os_TaskEntryFunctionType;
typedef Os_VoidVoidFunctionType Os_IsrEntryFunctionType;
typedef Std_VersionInfoType * Std_VersionInfoRefType;

typedef enum {OS_BUDGET = 0U, OS_ECC_START, OS_ECC_RESUME, OS_ECC_WAIT} Os_StackOverrunType;
# 238 ".\\output\\inc/..\\..\\os\\Os.h"
typedef unsigned char ApplicationType;


typedef void (*Os_AppErrorHookFunctionType)(StatusType Error);
typedef uint32 Os_tmaskType;
typedef struct Os_ApplicationConfigurationType_s {
  ApplicationType app_id;
  Os_AppErrorHookFunctionType errorhook;
  uint8 access;
} Os_ApplicationConfigurationType;

typedef uint32 Os_CoreStateType;
typedef uint16 AreaIdType;
typedef const uint8 * const Os_ucharConstRefType;
typedef const uint8 * const Os_uint8ConstRefType;
typedef uint8 * const Os_uint8RefType;
typedef const uint16 * const Os_uint16ConstRefType;
typedef uint16 * const Os_uint16RefType;
typedef const uint32 * const Os_uint32ConstRefType;
typedef uint32 * const Os_uint32RefType;
typedef unsigned int Os_PeripheralAddressType;
typedef struct {
  AreaIdType id;
  uint8 access;
  Os_PeripheralAddressType start;
  Os_PeripheralAddressType end;
} Os_PeripheralAreaType;


typedef unsigned int TickType;
typedef signed int SignedTickType;
typedef TickType * TickRefType;
typedef uint32 PhysicalTimeType;
typedef unsigned int Os_StopwatchTickType;
typedef Os_StopwatchTickType * Os_StopwatchTickRefType;
typedef signed int Os_TimeLimitType;

typedef enum {PRO_IGNORE = 0U, PRO_SHUTDOWN} ProtectionReturnType;
typedef Os_JumpBufType * Os_TerminatorType;

typedef uint32 IdleModeType;


typedef uint32_aligned Os_Lockable;
typedef const void * Os_LockerRefType;
typedef uint16 CoreIdType;
typedef uint16 SpinlockIdType;

typedef enum {TRYTOGETSPINLOCK_SUCCESS = 0U, TRYTOGETSPINLOCK_NOSUCCESS} TryToGetSpinlockType;
typedef TryToGetSpinlockType * Os_TryToGetSpinlockRefType;
struct Os_ControlledCoreType_s;
typedef struct Os_SpinlockDynType_s {
  volatile Os_Lockable lock;
  SpinlockIdType predecessor;
} Os_SpinlockDynType;
typedef struct Os_SpinlockType_s {
  uint8 access;
  SpinlockIdType successor;
} Os_SpinlockType;
# 330 ".\\output\\inc/..\\..\\os\\Os.h"
typedef StatusType * Os_StatusRefType;


typedef unsigned char AppModeType;



typedef unsigned int AccessType;
# 347 ".\\output\\inc/..\\..\\os\\Os.h"
typedef const uint8 * MemoryStartAddressType;
typedef unsigned int MemorySizeType;

typedef enum {RESTART = 1U, NO_RESTART} RestartType;
typedef enum {APPLICATION_ACCESSIBLE = 0U, APPLICATION_RESTARTING, APPLICATION_TERMINATED} ApplicationStateType;
typedef ApplicationStateType * ApplicationStateRefType;
typedef enum {ACCESS = 0U, NO_ACCESS} ObjectAccessType;
typedef enum {OBJECT_TASK = 0U, OBJECT_ISR, OBJECT_ALARM, OBJECT_RESOURCE, OBJECT_COUNTER, OBJECT_SCHEDULETABLE} ObjectTypeType;
typedef const void * const Os_AnyType;

typedef unsigned char TrustedFunctionIndexType;
typedef void * TrustedFunctionParameterRefType;

typedef void (*Os_FunctionEntryType)(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams);
typedef struct Os_TrustedFunctionType_s {
  Os_FunctionEntryType function;
  CoreIdType core_id;
  const Os_ApplicationConfigurationType * const application;
} Os_TrustedFunctionType;

typedef uint16 Os_IdleType;


typedef struct Os_MeterInfoType_s {
  Os_StopwatchTickType elapsed;
  Os_StopwatchTickType previous;
  Os_StopwatchTickType max;
   Os_StopwatchTickType cumulative;
  Os_StackValueType stackbase;
  Os_StackSizeType stackusage;
  Os_StackSizeType stackmax;
  Os_StackSizeType stackbudget;
} Os_MeterInfoType;
typedef Os_MeterInfoType * Os_MeterInfoRefType;


typedef uint8 EventMaskType;
typedef EventMaskType * EventMaskRefType;



typedef uint32 Os_imaskType;

typedef struct Os_ISRDynType_s {
  boolean terminating;
  Os_MeterInfoType meter;
} Os_ISRDynType;
typedef void (*Os_IsrTerminatedFunctionType)(void);
typedef struct Os_ISRType_s {
  Os_VoidVoidFunctionType entry_function;
  Os_IsrTerminatedFunctionType terminated_function;
  Os_ISRDynType * const dynamic;
  Os_imaskType imask;
  uint32 index;
  Os_StackSizeType stackbudget;
  uint8 access;
  ApplicationType application;
} Os_ISRType;
typedef const Os_ISRType * ISRType;






typedef ISRType * ISRRefType;
# 423 ".\\output\\inc/..\\..\\os\\Os.h"
typedef unsigned int Os_bitmask;
typedef Os_bitmask Os_pset0Type;
typedef Os_bitmask Os_pset1Type;
typedef Os_bitmask Os_pset2Type;
typedef Os_bitmask Os_pset3Type;
typedef union {
  Os_pset0Type p0;
  Os_pset1Type p1;
  Os_pset2Type p2;
  Os_pset3Type p3;
} Os_psetType;

typedef union {
  Os_bitmask t0;
  Os_bitmask t1;
  Os_bitmask t2;
  Os_bitmask t3;
} Os_tpmaskType;

typedef struct Os_TaskDynType_s {
  Os_JumpBufType terminate_jump_buf;
  Os_MeterInfoType meter;
  uint32 termination_state;
} Os_TaskDynType;

typedef struct Os_TaskType_s {
  Os_TaskDynType * const dynamic;
  Os_VoidVoidFunctionType entry_function;
  Os_psetType pset;
  Os_tpmaskType base_tpmask;
  Os_tpmaskType tpmask;
  CoreIdType core_id;
  uint32 index;
  Os_StackSizeType stackbudget;
  uint8 access;
  ApplicationType application;
} Os_TaskType;
typedef const Os_TaskType * TaskType;






typedef TaskType * TaskRefType;
enum Os_TaskStateType {SUSPENDED = 0U, READY, WAITING, RUNNING};
typedef enum Os_TaskStateType TaskStateType;
typedef TaskStateType * TaskStateRefType;
# 481 ".\\output\\inc/..\\..\\os\\Os.h"
typedef struct Os_ResourceDynType_s {
  TaskType locker;
  union {
    Os_tpmaskType tpmask;
  } saved_priority;
} Os_ResourceDynType;
typedef struct Os_ResourceType_s {
  Os_ResourceDynType * const dynamic;
  Os_tpmaskType tpmask;
  uint8 access;
} Os_ResourceType;
typedef const Os_ResourceType * ResourceType;




typedef struct {
  TickType maxallowedvalue;
  TickType ticksperbase;
  TickType mincycle;
} AlarmBaseType;
typedef AlarmBaseType * AlarmBaseRefType;
typedef struct Os_AlarmDynType_s {
  boolean running;
  TickType match;
  TickType period;
} Os_AlarmDynType;
typedef struct Os_AlarmType_s {
  uint8 config;
  uint8 access;
  ApplicationType application;
} Os_AlarmType;
typedef unsigned char AlarmType;



typedef void (*Os_AlarmCallbackType)(void);




typedef struct {
  boolean Running;
  boolean Pending;
  TickType Delay;
} Os_CounterStatusType;
typedef Os_CounterStatusType * Os_CounterStatusRefType;

typedef TickType (*Os_HwCounterNowType)(void);
typedef void (*Os_HwCounterSetType)(TickType Value);
typedef void (*Os_HwCounterStateType)(Os_CounterStatusRefType State);
typedef void (*Os_HwCounterCancelType)(void);
typedef StatusType (*Os_CounterIncrAdvType)(void);
typedef void (*Os_CounterStartType)(Os_AnyType ctr, TickType requested, TickType relative, TickRefType match_value);

typedef struct Os_CounterDynType_s {
  union {
    struct s_swd {
      TickType count;
    } sw;
  } type_dependent;
} Os_CounterDynType;
typedef struct Os_CounterType_s {
  Os_CounterDynType * const dynamic;
  Os_CounterIncrAdvType advincr;
  AlarmBaseType base;
  const void *core;
  uint8 access;
  ApplicationType application;
} Os_CounterType;
typedef const Os_CounterType * CounterType;




enum Os_ScheduleTableStatusType {SCHEDULETABLE_STOPPED = 0U, SCHEDULETABLE_NEXT, SCHEDULETABLE_WAITING, SCHEDULETABLE_RUNNING, SCHEDULETABLE_RUNNING_AND_SYNCHRONOUS};
typedef enum Os_ScheduleTableStatusType ScheduleTableStatusType;
typedef ScheduleTableStatusType * ScheduleTableStatusRefType;
typedef enum {OS_SYNC_NONE, OS_SYNC_IMPLICIT, OS_SYNC_EXPLICIT} Os_ScheduleTableSyncType;
typedef enum {OS_SYNC_ASYNC, OS_SYNC_ADVANCING, OS_SYNC_RETARDING, OS_SYNC_INSYNC} Os_ScheduleTableSyncStateType;

struct Os_ScheduleTableDynType_s;
typedef struct Os_ScheduleTableType_s {
  struct Os_ScheduleTableDynType_s * const dynamic;
  CounterType counter;
  TickType sync_precision;
  TickType maxallowedvalue;
  boolean repeat;
  uint32 config;
  uint8 initial;
  uint8 access;
  Os_ScheduleTableSyncType sync_type;
  ApplicationType application;
} Os_ScheduleTableType;
typedef const Os_ScheduleTableType * ScheduleTableType;
typedef ScheduleTableType * ScheduleTableRefType;
typedef struct Os_ScheduleTableDynType_s {
  TickType match;
  TickType drift;
  ScheduleTableType next;
  ScheduleTableStatusType state;
  uint32 config;
  TickType sync_count_tracker;
  Os_ScheduleTableSyncStateType sync_state;
} Os_ScheduleTableDynType;





typedef unsigned char OSServiceIdType;
# 687 ".\\output\\inc/..\\..\\os\\Os.h"
typedef unsigned int Os_BiggestType;
typedef unsigned int Os_BiggestCommonType;
# 798 ".\\output\\inc/..\\..\\os\\Os.h"
typedef StatusType Os_TraceStatusType;
typedef uint8 Os_TraceDataType;
# 905 ".\\output\\inc/..\\..\\os\\Os.h"
# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 906 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern Os_TraceStatusType Os_Cbk_TraceCommInitTarget(void) ;
extern void Os_Cbk_TraceCommDataReady(void) ;
extern void Os_Cbk_TraceCommTxStart(void) ;
extern void Os_Cbk_TraceCommTxByte(Os_TraceDataType val) ;
extern void Os_Cbk_TraceCommTxEnd(void) ;
extern boolean Os_Cbk_TraceCommTxReady(void) ;


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 916 ".\\output\\inc/..\\..\\os\\Os.h" 2



typedef struct Os_ControlledCoreType_s {
  OsTrapInfoType TrapInfo;
  volatile Os_Lockable lock_taskaccess;
  volatile Os_psetType ReadyTasks ;
  volatile ISRType RunningISR;
  volatile TaskType RunningTask;
  volatile Os_tpmaskType RunningTPMask ;
  volatile Os_psetType TerminatingTasks;
  volatile Os_TerminatorType CurrentTerminator;
  Os_MeterInfoRefType CurrentMeteredObject;
  Os_MeterInfoType IdleMeter;
  uint8 AppAccess;
  volatile ApplicationType AppOverride;
  Os_StackSizeType GetStackValueAdjust;
  boolean InErrorHook;
  volatile TaskType ChainTaskRef;
  Os_StackSizeType GetStackUsageAdjust;
  boolean InProtectionHook;
  boolean CoreIsActive;
  boolean InShutdownHook;
} Os_ControlledCoreType;
# 951 ".\\output\\inc/..\\..\\os\\Os.h"
typedef struct Os_AnyCoreType_s {
  volatile Os_imaskType DisableAllImask;
  volatile Os_imaskType SuspendAllImask;
  volatile Os_imaskType SuspendOSImask;
  volatile uint32 DisableAllCount;
  volatile uint32 SuspendAllCount;
  volatile uint32 SuspendOSCount;
  Os_JumpBufType RestartJumpBuf;
  boolean Restartable;
  StatusType LastProtectionFault;
} Os_AnyCoreType;
# 970 ".\\output\\inc/..\\..\\os\\Os.h"
typedef struct Os_CoreConfiguration_s {
  Os_ControlledCoreType * const controlled;
  Os_AnyCoreType * const any;
  volatile Os_CoreStateType * const state;
  Os_VoidVoidFunctionType dispatch;
  ResourceType Os_Res_Scheduler;
  CoreIdType core_id;
} Os_CoreConfiguration;




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 983 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern void ErrorHook(StatusType Error) ;
extern void PreTaskHook(void) ;
extern void PostTaskHook(void) ;
extern ProtectionReturnType ProtectionHook(StatusType FatalError) ;
extern void StartupHook(void) ;
extern void ShutdownHook(StatusType Error) ;
extern void Os_Cbk_StackOverrunHook(Os_StackSizeType Overrun, Os_StackOverrunType Reason);
extern AccessType Os_Cbk_CheckMemoryAccess(ApplicationType Application, TaskType TaskID, ISRType ISRID, MemoryStartAddressType Address, MemorySizeType Size);
extern boolean Os_Cbk_Idle(void) ;
extern void Os_Cbk_InShutdown(void) ;
extern void Os_Cbk_CheckStackDepth(CoreIdType Core_id, Os_StackSizeType Depth, Os_StackSizeType CurrentPos);

 extern Os_StopwatchTickType Os_Cbk_GetStopwatch(void) ;

extern void Os_Cbk_TimeOverrunHook(Os_StopwatchTickType Overrun) ;


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1002 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1007 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern Os_StackValueType Os_GetSP(void);
extern void Os_GetVersionInfo(Std_VersionInfoType *versioninfo) ;
extern Os_StopwatchTickType Os_GetExecutionTime(void) ;
extern Os_StopwatchTickType Os_GetTaskMaxExecutionTime(TaskType TaskID) ;
extern Os_StopwatchTickType Os_GetISRMaxExecutionTime(ISRType ISRID) ;
extern StatusType Os_ResetTaskMaxExecutionTime(TaskType TaskID) ;
extern StatusType Os_ResetISRMaxExecutionTime(ISRType ISRID) ;
extern Os_StopwatchTickType Os_GetElapsedTime(void) ;
extern Os_StopwatchTickType Os_GetTaskElapsedTime(TaskType TaskID) ;
extern Os_StopwatchTickType Os_GetISRElapsedTime(ISRType ISRID) ;
extern Os_StopwatchTickType Os_GetIdleElapsedTime(Os_IdleType IdleID) ;
extern StatusType Os_ResetTaskElapsedTime(TaskType TaskID) ;
extern StatusType Os_ResetISRElapsedTime(ISRType ISRID) ;
extern StatusType Os_ResetIdleElapsedTime(Os_IdleType IdleID) ;
extern Os_StackSizeType Os_GetStackUsage(void) ;
extern Os_StackSizeType Os_GetTaskMaxStackUsage(TaskType TaskID) ;
extern Os_StackSizeType Os_GetISRMaxStackUsage(ISRType ISRID) ;
extern StatusType Os_ResetTaskMaxStackUsage(TaskType TaskID) ;
extern StatusType Os_ResetISRMaxStackUsage(ISRType ISRID) ;
extern Os_StackValueType Os_GetStackValue(void) ;
extern Os_StackSizeType Os_GetStackSize(Os_StackValueType Base, Os_StackValueType Sample) ;
extern StatusType Os_ActivateTask(TaskType TaskID) ;
extern StatusType Os_GetTaskID(TaskRefType TaskID) ;
extern StatusType Os_GetTaskState(TaskType TaskID, TaskStateRefType State) ;
extern StatusType Os_Schedule(void) ;
extern StatusType Os_SetEvent(TaskType TaskID, EventMaskType Mask) ;
extern StatusType Os_ClearEvent(EventMaskType Mask) ;
extern StatusType Os_GetEvent(TaskType TaskID, EventMaskRefType Mask) ;
extern StatusType Os_WaitEvent(EventMaskType Mask) ;
extern StatusType Os_GetResource(ResourceType ResID) ;
extern StatusType Os_ReleaseResource(ResourceType ResID) ;
extern void Os_DisableAllInterrupts(void) ;
extern void Os_EnableAllInterrupts(void) ;
extern void Os_SuspendAllInterrupts(void) ;
extern void Os_ResumeAllInterrupts(void) ;
extern void Os_SuspendOSInterrupts(void) ;
extern void Os_ResumeOSInterrupts(void) ;
extern ISRType Os_GetISRID(void) ;
extern AppModeType Os_GetActiveApplicationMode(void) ;
extern ApplicationType Os_CheckObjectOwnership(ObjectTypeType ObjectType, Os_AnyType Object) ;
extern ObjectAccessType Os_CheckObjectAccess(ApplicationType ApplID, ObjectTypeType ObjectType, Os_AnyType Object) ;
extern ApplicationType Os_GetApplicationID(void) ;
extern ApplicationType Os_GetCurrentApplicationID(void) ;
extern StatusType Os_TerminateTask(void) ;
extern AccessType Os_CheckTaskMemoryAccess(TaskType TaskID, MemoryStartAddressType Address, MemorySizeType Size) ;
extern AccessType Os_CheckISRMemoryAccess(ISRType ISRID, MemoryStartAddressType Address, MemorySizeType Size) ;
extern StatusType Os_GetCounterValue(CounterType CounterID, TickRefType Value) ;
extern StatusType Os_GetElapsedCounterValue(CounterType CounterID, TickRefType Value, TickRefType ElapsedValue) ;
extern StatusType Os_IncrementCounter(CounterType CounterID) ;
extern StatusType Os_AdvanceCounter(CounterType CounterID) ;
extern StatusType Os_GetAlarmBase(AlarmType AlarmID, AlarmBaseRefType Info) ;
extern StatusType Os_CancelAlarm(AlarmType AlarmID) ;
extern StatusType Os_GetAlarm(AlarmType AlarmID, TickRefType Tick) ;
extern StatusType Os_SetRelAlarm(AlarmType AlarmID, TickType increment, TickType cycle) ;
extern StatusType Os_SetAbsAlarm(AlarmType AlarmID, TickType start, TickType cycle) ;
extern StatusType Os_StopScheduleTable(ScheduleTableType ScheduleTableID) ;
extern StatusType Os_StartScheduleTableRel(ScheduleTableType ScheduleTableID, TickType Offset) ;
extern StatusType Os_StartScheduleTableAbs(ScheduleTableType ScheduleTableID, TickType Start) ;
extern StatusType Os_StartScheduleTableSynchron(ScheduleTableType ScheduleTableID) ;
extern StatusType Os_SyncScheduleTable(ScheduleTableType ScheduleTableID, TickType Value) ;
extern StatusType Os_SyncScheduleTableRel(ScheduleTableType ScheduleTableID, SignedTickType RelativeValue) ;
extern StatusType Os_SetScheduleTableAsync(ScheduleTableType ScheduleTableID) ;
extern StatusType Os_GetScheduleTableStatus(ScheduleTableType ScheduleTableID, ScheduleTableStatusRefType ScheduleStatus) ;
extern StatusType Os_NextScheduleTable(ScheduleTableType ScheduleTableID_From, ScheduleTableType ScheduleTableID_To) ;
extern boolean Os_StartOS(AppModeType Mode) ;
extern void Os_ShutdownOS(StatusType Error) ;
extern void Os_ProtectionLog(StatusType os_status);
extern StatusType Os_ControlIdle(CoreIdType CoreID, IdleModeType IdleMode) ;
extern IdleModeType Os_CurrentIdleMode(void);
extern uint32 Os_GetCurrentTPL(void) ;
extern Os_imaskType Os_GetCurrentIMask(void) ;
extern StatusType Os_EnableInterruptSource(ISRType ISRID, boolean ClearPending) ;
extern StatusType Os_DisableInterruptSource(ISRType ISRID) ;
extern StatusType Os_ClearPendingInterrupt(ISRType ISRID) ;
extern uint32 Os_GetNumberOfActivatedCores(void) ;
extern void Os_ShutdownAllCores(StatusType Error) ;
extern void Os_StartCore(CoreIdType CoreID, Os_StatusRefType Status) ;
extern StatusType Os_GetSpinlock(SpinlockIdType SpinlockId) ;
extern StatusType Os_TryToGetSpinlock(SpinlockIdType SpinlockId, TryToGetSpinlockType* Success) ;
extern StatusType Os_ReleaseSpinlock(SpinlockIdType SpinlockId) ;
extern void Os_CrossCoreCheck(Os_ControlledCoreType *os_current_controlled_core, const Os_CoreConfiguration *os_current_core_const);
extern StatusType Os_Restart(void) ;
extern StatusType Os_ChainTask(TaskType TaskID) ;
extern StatusType Os_TerminateApplication(ApplicationType Application, RestartType RestartOption) ;
extern StatusType Os_GetApplicationState(ApplicationType Application, ApplicationStateRefType Value) ;
extern StatusType Os_AllowAccess(void) ;
extern StatusType Os_CallTrustedFunction(TrustedFunctionIndexType FunctionIndex, TrustedFunctionParameterRefType FunctionParams) ;
extern StatusType Os_ReadPeripheral8(AreaIdType Area, Os_uint8ConstRefType Address, Os_uint8RefType ReadValue) ;
extern StatusType Os_WritePeripheral8(AreaIdType Area, Os_uint8RefType Address, uint8 WriteValue) ;
extern StatusType Os_ModifyPeripheral8(AreaIdType Area, Os_uint8RefType Address, uint8 Clearmask, uint8 Setmask) ;
extern StatusType Os_ReadPeripheral16(AreaIdType Area, Os_uint16ConstRefType Address, Os_uint16RefType ReadValue) ;
extern StatusType Os_WritePeripheral16(AreaIdType Area, Os_uint16RefType Address, uint16 WriteValue) ;
extern StatusType Os_ModifyPeripheral16(AreaIdType Area, Os_uint16RefType Address, uint16 Clearmask, uint16 Setmask) ;
extern StatusType Os_ReadPeripheral32(AreaIdType Area, Os_uint32ConstRefType Address, Os_uint32RefType ReadValue) ;
extern StatusType Os_WritePeripheral32(AreaIdType Area, Os_uint32RefType Address, uint32 WriteValue) ;
extern StatusType Os_ModifyPeripheral32(AreaIdType Area, Os_uint32RefType Address, uint32 Clearmask, uint32 Setmask) ;


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1107 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 347 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 372 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.DEFAULT_CONST_UNSPECIFIED" a
# 2 ".\\output\\inc/MemMap.h" 2
# 348 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1112 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern const CoreIdType Os_TotalNumberOfCores;
extern const Os_CoreConfiguration Os_const_coreconfiguration[];
extern const Os_ApplicationConfigurationType Os_const_applications[];
extern const Os_ISRType Os_const_isrs[];
extern const TaskType Os_const_tasks[];
extern const Os_ResourceType Os_const_resources[];
extern const Os_CounterType Os_const_counters[];
extern const Os_ScheduleTableType Os_const_scheduletables[];
extern const Os_TaskType Os_const_tasks0[];
extern const Os_TaskType Os_const_tasks1[];
extern const Os_TaskType Os_const_tasks2[];
extern const Os_TaskType Os_const_tasks3[];


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 351 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 382 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 352 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1128 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 104 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 427 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".bss.DEFAULT_VAR_CLEARED_UNSPECIFIED"
# 2 ".\\output\\inc/MemMap.h" 2
# 105 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1133 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern volatile AppModeType Os_CurrentAppMode;
extern Os_AnyCoreType Os_AnyCoreInfo[];


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 109 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 435 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1139 ".\\output\\inc/..\\..\\os\\Os.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 62 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 227 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".bss.DEFAULT_START_SEC_VAR_NO_INIT_UNSPECIFIED"
# 2 ".\\output\\inc/MemMap.h" 2
# 63 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1144 ".\\output\\inc/..\\..\\os\\Os.h" 2

extern StatusType Os_ShutdownAllCores_Indicator;
extern Os_StackValueType Os_StackBase[];
extern volatile Os_Lockable Os_lock_alarmaccess;
extern ApplicationStateType Os_dyn_appstate[];
extern Os_TaskDynType Os_dyn_tasks[];
extern Os_ISRDynType Os_dyn_isrs[];
extern Os_ControlledCoreType Os_ControlledCoreInfo[];


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 66 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 236 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 1155 ".\\output\\inc/..\\..\\os\\Os.h" 2



# 1 ".\\output\\inc/Os_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 1
# 171 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"
extern void Os_CrossCoreISR0(void) __attribute__((interrupt_handler));

extern void Os_CrossCoreISR1(void) __attribute__((interrupt_handler));

extern void Os_CrossCoreISR2(void) __attribute__((interrupt_handler));

extern void Os_CrossCoreISR3(void) __attribute__((interrupt_handler));

extern void ADC8SR0_ISR(void) __attribute__((interrupt_handler));
extern void GTMTIM2SR4_ISR(void) __attribute__((interrupt_handler));
extern void GTMTIM3SR6_ISR(void) __attribute__((interrupt_handler));
extern void ADC0SR0_ISR(void) __attribute__((interrupt_handler));
extern void ADC2SR0_ISR(void) __attribute__((interrupt_handler));
extern void ADC3SR0_ISR(void) __attribute__((interrupt_handler));
extern void ADC1SR0_ISR(void) __attribute__((interrupt_handler));
extern void CCU61SR2_ISR(void) __attribute__((interrupt_handler));
extern void CCU60SR2_ISR(void) __attribute__((interrupt_handler));
extern void DefaultInterruptHandler(void) __attribute__((interrupt_handler));
# 249 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"
# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 250 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 2

extern void ErrorHook_OsApplication_Core0(StatusType Error) ;
extern void ErrorHook_OsApplication_Core1(StatusType Error) ;
extern void ErrorHook_OsApplication_Core2(StatusType Error) ;
extern void ErrorHook_OsApplication_Core3(StatusType Error) ;
extern void Os_Cbk_Terminated_CAN1SR11_ISR(void) ;
extern void Os_Cbk_Terminated_CAN1SR10_ISR(void) ;
extern void Os_Cbk_Terminated_CAN1SR9_ISR(void) ;
extern void Os_Cbk_Terminated_CAN1SR8_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR11_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR10_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR9_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR8_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR0_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR7_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR6_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR5_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR4_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR3_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR2_ISR(void) ;
extern void Os_Cbk_Terminated_CAN0SR1_ISR(void) ;
extern void Os_Cbk_Terminated_ADC4SR0_ISR(void) ;
extern void Os_Cbk_Terminated_ADC11SR0_ISR(void) ;
extern void Os_Cbk_Terminated_ADC10SR0_ISR(void) ;
extern void Os_Cbk_Terminated_ADC9SR0_ISR(void) ;
extern void Os_Cbk_Terminated_ADC8SR1_ISR(void) ;
extern void Os_Cbk_Terminated_ADC3SR1_ISR(void) ;
extern void Os_Cbk_Terminated_STM0SR1_ISR(void) ;
extern void Os_Cbk_Terminated_Millisecond(void) ;
extern void Os_Cbk_Disable_CAN1SR11_ISR(void) ;
extern void Os_Cbk_Disable_CAN1SR10_ISR(void) ;
extern void Os_Cbk_Disable_CAN1SR9_ISR(void) ;
extern void Os_Cbk_Disable_CAN1SR8_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR11_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR10_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR9_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR8_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR0_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR7_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR6_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR5_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR4_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR3_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR2_ISR(void) ;
extern void Os_Cbk_Disable_CAN0SR1_ISR(void) ;
extern void Os_Cbk_Disable_ADC4SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC11SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC10SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC9SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC8SR1_ISR(void) ;
extern void Os_Cbk_Disable_ADC3SR1_ISR(void) ;
extern void Os_Cbk_Disable_STM0SR1_ISR(void) ;
extern void Os_Cbk_Disable_Millisecond(void) ;
extern void Os_Cbk_Disable_ADC8SR0_ISR(void) ;
extern void Os_Cbk_Disable_GTMTIM2SR4_ISR(void) ;
extern void Os_Cbk_Disable_GTMTIM3SR6_ISR(void) ;
extern void Os_Cbk_Disable_ADC0SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC2SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC3SR0_ISR(void) ;
extern void Os_Cbk_Disable_ADC1SR0_ISR(void) ;
extern void Os_Cbk_Disable_CCU61SR2_ISR(void) ;
extern void Os_Cbk_Disable_CCU60SR2_ISR(void) ;


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 315 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 2




# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 320 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 2

extern StatusType Os_IncrementCounter_Rte_TickCounter(void);
extern void Os_Entry_Core0_OsTask_Background_1ms(void);
extern void Os_Entry_Core3_OsTask_ASW_5ms(void);
extern void Os_Entry_Core3_OsTask_ASW_1ms(void);
extern void Os_Entry_Core3_OsTask_BSW_10ms(void);
extern void Os_Entry_Core2_OsTask_ASW_100ms(void);
extern void Os_Entry_Core2_OsTask_ASW_10ms(void);
extern void Os_Entry_Core2_OsTask_ASW_5ms(void);
extern void Os_Entry_Core2_OsTask_ASW_1ms(void);
extern void Os_Entry_Core2_OsTask_BSW_10ms(void);
extern void Os_Entry_Core1_OsTask_ASW_100ms(void);
extern void Os_Entry_Core0_OsTask_ASW_100ms(void);
extern void Os_Entry_Core1_OsTask_ASW_10ms(void);
extern void Os_Entry_Core0_BSW_OsTask_SwcRequest(void);
extern void Os_Entry_Core1_OsTask_BSW_10ms(void);
extern void Os_Entry_Core1_OsTask_ASW_1ms(void);
extern void Os_Entry_Core0_OsTask_BSW_100ms(void);
extern void Os_Entry_Core0_OsTask_BSW_50ms(void);
extern void Os_Entry_Core0_OsTask_ASW_10ms(void);
extern void Os_Entry_Core0_OsTask_BSW_10ms(void);
extern void Os_Entry_Core0_OsTask_ASW_1ms(void);
extern void Os_Entry_Core0_OsTask_BSW_1ms(void);
extern void Os_Entry_Core0_ECU_StartupTask(void);
extern void Os_Entry_CAN1SR11_ISR(void);
extern void Os_Entry_CAN1SR10_ISR(void);
extern void Os_Entry_CAN1SR9_ISR(void);
extern void Os_Entry_CAN1SR8_ISR(void);
extern void Os_Entry_CAN0SR11_ISR(void);
extern void Os_Entry_CAN0SR10_ISR(void);
extern void Os_Entry_CAN0SR9_ISR(void);
extern void Os_Entry_CAN0SR8_ISR(void);
extern void Os_Entry_CAN0SR0_ISR(void);
extern void Os_Entry_CAN0SR7_ISR(void);
extern void Os_Entry_CAN0SR6_ISR(void);
extern void Os_Entry_CAN0SR5_ISR(void);
extern void Os_Entry_CAN0SR4_ISR(void);
extern void Os_Entry_CAN0SR3_ISR(void);
extern void Os_Entry_CAN0SR2_ISR(void);
extern void Os_Entry_CAN0SR1_ISR(void);
extern void Os_Entry_ADC4SR0_ISR(void);
extern void Os_Entry_ADC11SR0_ISR(void);
extern void Os_Entry_ADC10SR0_ISR(void);
extern void Os_Entry_ADC9SR0_ISR(void);
extern void Os_Entry_ADC8SR1_ISR(void);
extern void Os_Entry_ADC3SR1_ISR(void);
extern void Os_Entry_STM0SR1_ISR(void);
extern void Os_Entry_Millisecond(void);


# 1 ".\\output\\inc/Os_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 1
# 14 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h"
# 1 ".\\output\\inc/Compiler.h" 1
# 15 ".\\output\\inc/..\\..\\Integration\\os\\Os_MemMap.h" 2
# 2 ".\\output\\inc/Os_MemMap.h" 2
# 371 ".\\output\\inc/..\\..\\os\\Os_Cfg.h" 2
# 403 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"































































































































# 543 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"




















































































































# 668 ".\\output\\inc/..\\..\\os\\Os_Cfg.h"



























# 2 ".\\output\\inc/Os_Cfg.h" 2
# 1159 ".\\output\\inc/..\\..\\os\\Os.h" 2
# 2 ".\\output\\inc/OS.h" 2
# 28 "bswcdd\\CCP\\CCPUSR\\SchM_CCPUSR.h" 2
# 42 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2





# 1 ".\\output\\inc/SPY.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\SPY\\SPY.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\CCP\\SPY\\SPY.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\CCP\\SPY\\SPY.h" 2
# 62 ".\\output\\inc/..\\..\\bswcdd\\CCP\\SPY\\SPY.h"
boolean SPY_bPreTrigBufFilled(void);
boolean SPY_bWrOdt(uint8 u8ListIdx, uint16 u16FirstElmIdx, uint8 *pu8BufDst);
void SPY_vidDaqListStopd(uint8 u8ListIdx);
void SPY_vidDaqListTxInit(uint8 u8ListIdx, uint8 **ppu8DaqListElmAdr, uint16 u16FirstElmIdx, uint8 u8OdtLstIdx);
void SPY_vidInit(void);
void SPY_vidStopDataAcq(void);
void SPY_vidWrBuf(void);
# 2 ".\\output\\inc/SPY.h" 2
# 48 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2
# 90 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c"
typedef struct
{
   uint8 u8OdtLstIdx;
   uint8 u8OdtToTxIdx;
   uint16 u16ElmToTxIdx;
   boolean bTxSuspd;
}
CCPUSR_tstrDaqListData;






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 105 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2


   static void CCPUSR_vidDaqListSrchNextActvDaqList
   (



      uint8 u8ListIdx
   );



# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 118 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".data_cpu0" aw
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 125 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2


CCPUSR_tstrDaqListDynCfg CCPUSR_strDaqListDynCfg;







static uint8 CCPUSR_au8DaqListElmVal[322];


static CCPUSR_tstrDaqListData CCPUSR_astrDaqListData[3];

static uint8 CCPUSR_u8DaqListInvalidData = 0;



static volatile uint8 CCPUSR_vu8DaqListPrio = 255;



# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 149 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 156 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2





   void CCPUSR_vidDaqListIni(void)
   {




      uint8 u8LocalListIdx;
# 177 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c"
      for (u8LocalListIdx = 0; u8LocalListIdx < 3; u8LocalListIdx++)
      {
         CCPUSR_astrDaqListData[u8LocalListIdx].u8OdtToTxIdx = 255;
      }
   }
# 211 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c"
   void CCP_vidUsrDaqListClr
   (



      uint8 u8ListIdx
   )
   {
      const CCP_tstrDaqListStatCfg * pkstr8LocalDaqListStatCfg;

      uint16_least u16LocalFirstElmIdx;

      uint16_least u16LocalLastElmIdx;

      uint16_least u16LocalElmIdx;


      CCPUSR_astrDaqListData[u8ListIdx].u8OdtToTxIdx = 255;

      pkstr8LocalDaqListStatCfg = &CCP_kastrDaqListStatCfg[u8ListIdx];

      u16LocalFirstElmIdx = ((uint16_least)pkstr8LocalDaqListStatCfg->u8FirstPid) * 7;
      u16LocalLastElmIdx = (u16LocalFirstElmIdx + ((((uint16_least)pkstr8LocalDaqListStatCfg->u8NoOdt) * 7) - 1));

      for (u16LocalElmIdx = u16LocalFirstElmIdx; u16LocalElmIdx <= u16LocalLastElmIdx; u16LocalElmIdx++)
      {
         CCPUSR_strDaqListDynCfg.apu8DaqListElmAdr[u16LocalElmIdx] = &CCPUSR_u8DaqListInvalidData;

            CCPUSR_strDaqListDynCfg.au8DaqListElmSize[u16LocalElmIdx] = 0;



            CCPUSR_au8DaqListElmVal[u16LocalElmIdx] = 0;

      }
   }






   CCP_tudtCmdSts CCP_udtUsrWrDaqElmCfg
   (



      uint8 u8ListIdx,



      uint8 u8OdtIdx,



      uint8 u8ElmIdx,

      const CCP_tstrMta * pkstrMta,



      uint8 u8ElmSize
   )
   {

      uint16_least u16LocalFirstElmIdx;
      uint8 * * ppu8LocalElmAdr;

         uint8 * pu8LocalElmSize;
         uint8_least u8LocalNrOfElmUsed;
         uint8_least u8LocalIdx;
         uint8_least u8LocalElmToUpdIdx;
         uint8 * pu8LocalData;



      u16LocalFirstElmIdx = ((uint16_least)CCP_kastrDaqListStatCfg[u8ListIdx].u8FirstPid + u8OdtIdx) * 7;
      ppu8LocalElmAdr = &(CCPUSR_strDaqListDynCfg.apu8DaqListElmAdr[u16LocalFirstElmIdx]);



         pu8LocalElmSize = &(CCPUSR_strDaqListDynCfg.au8DaqListElmSize[u16LocalFirstElmIdx]);


         if ( ( (u8ElmIdx > 0)
               && (pu8LocalElmSize[u8ElmIdx - 1] == 0))
            || ( (u8ElmIdx < (7 - 1))
               && (pu8LocalElmSize[u8ElmIdx + 1] != 0)))
         {
            return (((CCP_tudtCmdSts)0x32));
         }


         u8LocalNrOfElmUsed = 0;
         if (u8ElmIdx != 0)
         {
            u8LocalIdx = 0;
            do
            {
               u8LocalNrOfElmUsed += pu8LocalElmSize[u8LocalIdx];
               u8LocalIdx ++;
            }
            while (u8LocalIdx < u8ElmIdx);
         }
         if ((u8LocalNrOfElmUsed + u8ElmSize) > 7)
         {
            return (((CCP_tudtCmdSts)0x32));
         }

         u8LocalElmToUpdIdx = u8LocalNrOfElmUsed;
         pu8LocalData = (uint8 *)pkstrMta->u32Adr;

         ppu8LocalElmAdr[u8LocalElmToUpdIdx] = pu8LocalData;
         if (u8ElmSize != 1)
         {
            ppu8LocalElmAdr[u8LocalElmToUpdIdx + 1] = pu8LocalData + 1;
            if (u8ElmSize == 4)
            {
               ppu8LocalElmAdr[u8LocalElmToUpdIdx + 2] = pu8LocalData + 2;
               ppu8LocalElmAdr[u8LocalElmToUpdIdx + 3] = pu8LocalData + 3;
            }
         }
         pu8LocalElmSize[u8ElmIdx] = u8ElmSize;

      return (((CCP_tudtCmdSts)0x00));
   }




   void CCP_vidUsrDaqListTxMgrInit
   (



      uint8 u8ListIdx,



      uint8 u8FirstPid,



      uint8 u8OdtLstIdx
   )
   {
      uint8 u8LocalListPrio;
      CCPUSR_tstrDaqListData * pstrLocalDaqListData;

      uint16_least u16LocalFirstElmIdx;


         uint8 * * ppu8LocalElmAdr;
         uint8 * pu8LocalBufDst;
         uint8_least u8LocalOdtIdx;

      boolean bLocalVar32bit = (0 != 0);
      CCP_tuniCopyData udtLocalVar;
      uint32* pu32LocalVar32bit = 0;


      SPY_vidDaqListTxInit(u8ListIdx, &(CCPUSR_strDaqListDynCfg.apu8DaqListElmAdr[0]),
                           (uint16)u8FirstPid * 7, u8OdtLstIdx);


      Os_SuspendOSInterrupts();
      u8LocalListPrio = CCPUSR_vu8DaqListPrio;
      if (u8LocalListPrio > u8ListIdx)
      {
         CCPUSR_vu8DaqListPrio = u8ListIdx;
      }
      Os_ResumeOSInterrupts();

      pstrLocalDaqListData = &CCPUSR_astrDaqListData[u8ListIdx];

      pstrLocalDaqListData->u8OdtToTxIdx = 255;


      pstrLocalDaqListData->u8OdtLstIdx = u8FirstPid + u8OdtLstIdx;
      pstrLocalDaqListData->bTxSuspd = (0 != 0);
      u16LocalFirstElmIdx = u8FirstPid * 7;
      pstrLocalDaqListData->u16ElmToTxIdx = (uint16)u16LocalFirstElmIdx;


         pu8LocalBufDst = &CCPUSR_au8DaqListElmVal[u16LocalFirstElmIdx];
         ppu8LocalElmAdr = &(CCPUSR_strDaqListDynCfg.apu8DaqListElmAdr[u16LocalFirstElmIdx]);

         for (u8LocalOdtIdx = 0; u8LocalOdtIdx <= u8OdtLstIdx; u8LocalOdtIdx++)
         {
            bLocalVar32bit = (0 != 0);
            if(((*ppu8LocalElmAdr) + 3) == (*(ppu8LocalElmAdr + 3)))
            {
               if(((uint32)*ppu8LocalElmAdr & 0x03) == 0)
               {
                  pu32LocalVar32bit = (uint32*)(*ppu8LocalElmAdr);
                  bLocalVar32bit = (1 != 0);
               }
            }

            Os_SuspendAllInterrupts();
            if(bLocalVar32bit != (0 != 0))
            {
               udtLocalVar.u32Data = *pu32LocalVar32bit;
               *pu8LocalBufDst = udtLocalVar.au8Data[0];
               pu8LocalBufDst++;
               ppu8LocalElmAdr++;
               *pu8LocalBufDst = udtLocalVar.au8Data[1];
               pu8LocalBufDst++;
               ppu8LocalElmAdr++;
               *pu8LocalBufDst = udtLocalVar.au8Data[2];
               pu8LocalBufDst++;
               ppu8LocalElmAdr++;
               *pu8LocalBufDst = udtLocalVar.au8Data[3];
            }
            else
            {
               *pu8LocalBufDst = *(*ppu8LocalElmAdr);
               pu8LocalBufDst++;
               ppu8LocalElmAdr++;
               *pu8LocalBufDst = *(*ppu8LocalElmAdr);
               pu8LocalBufDst++;
               ppu8LocalElmAdr++;
               *pu8LocalBufDst = *(*ppu8LocalElmAdr);
               pu8LocalBufDst++;
               ppu8LocalElmAdr++;
               *pu8LocalBufDst = *(*ppu8LocalElmAdr);
            }

            pu8LocalBufDst++;
            ppu8LocalElmAdr++;
            *pu8LocalBufDst = *(*ppu8LocalElmAdr);
            pu8LocalBufDst++;
            ppu8LocalElmAdr++;
            *pu8LocalBufDst = *(*ppu8LocalElmAdr);
            pu8LocalBufDst++;
            ppu8LocalElmAdr++;
            *pu8LocalBufDst = *(*ppu8LocalElmAdr);
            pu8LocalBufDst++;
            ppu8LocalElmAdr++;
            Os_ResumeAllInterrupts();
         }

      pstrLocalDaqListData->u8OdtToTxIdx = u8FirstPid;

   }





   boolean CCP_bUsrDaqListTxMgr
   (



      uint8 u8ListIdx
   )
   {
      uint8 u8LocalListPrio;
      boolean bLocalTxSuspd;
      CCPUSR_tstrDaqListData * pstrLocalDaqListData;

      uint16_least u16LocalFirstElmIdx;
      CCP_tuniDaqMsgBuf uniLocalDaqBuf;
      uint8 * pu8LocalBufDst;

         uint8 * pu8LocalBufSrc;





      pstrLocalDaqListData = &CCPUSR_astrDaqListData[u8ListIdx];
      bLocalTxSuspd = (0 != 0);
      Os_SuspendOSInterrupts();
      u8LocalListPrio = CCPUSR_vu8DaqListPrio;
      if (u8LocalListPrio < u8ListIdx)
      {
         pstrLocalDaqListData->bTxSuspd = (1 != 0);
         bLocalTxSuspd = (1 != 0);
      }
      Os_ResumeOSInterrupts();
      if (bLocalTxSuspd == (1 != 0))
      {
         return((0 != 0));
      }
      u16LocalFirstElmIdx = pstrLocalDaqListData->u16ElmToTxIdx;
      pstrLocalDaqListData->u16ElmToTxIdx += 7;

      pu8LocalBufDst = &uniLocalDaqBuf.uniDaq.au8Prm[0];

      if (SPY_bWrOdt(u8ListIdx, u16LocalFirstElmIdx, pu8LocalBufDst) == (0 != 0))

      {

         pu8LocalBufSrc = &CCPUSR_au8DaqListElmVal[u16LocalFirstElmIdx];

         *pu8LocalBufDst = *pu8LocalBufSrc;
         pu8LocalBufDst++;
         pu8LocalBufSrc++;
         *pu8LocalBufDst = *pu8LocalBufSrc;
         pu8LocalBufDst++;
         pu8LocalBufSrc++;
         *pu8LocalBufDst = *pu8LocalBufSrc;
         pu8LocalBufDst++;
         pu8LocalBufSrc++;
         *pu8LocalBufDst = *pu8LocalBufSrc;
         pu8LocalBufDst++;
         pu8LocalBufSrc++;
         *pu8LocalBufDst = *pu8LocalBufSrc;
         pu8LocalBufDst++;
         pu8LocalBufSrc++;
         *pu8LocalBufDst = *pu8LocalBufSrc;
         pu8LocalBufDst++;
         pu8LocalBufSrc++;
         *pu8LocalBufDst = *pu8LocalBufSrc;
# 552 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c"
      }

      uniLocalDaqBuf.uniDaq.u8PktId = pstrLocalDaqListData->u8OdtToTxIdx++;
      CCPUSR_vidSendDaqMessage(u8ListIdx, &uniLocalDaqBuf.au8Data[0]);

      if (pstrLocalDaqListData->u8OdtToTxIdx > pstrLocalDaqListData->u8OdtLstIdx)
      {
         CCPUSR_vidDaqListSrchNextActvDaqList(u8ListIdx);
         return((1 != 0));
      }
      else
      {
         return((0 != 0));
      }
   }




   void CCP_vidUsrDaqListStopd
   (



      uint8 u8ListIdx
   )
   {
      CCPUSR_astrDaqListData[u8ListIdx].u8OdtToTxIdx = 255;


      SPY_vidDaqListStopd(u8ListIdx);

      CCPUSR_vidDaqListSrchNextActvDaqList(u8ListIdx);
   }




   static void CCPUSR_vidDaqListSrchNextActvDaqList
   (



      uint8 u8ListIdx
   )
   {
      uint8_least u8LocalListIdx;
      CCPUSR_tstrDaqListData * pstrLocalDaqListData;
      boolean bLocalTxSuspd;


      Os_SuspendOSInterrupts();
      for (u8LocalListIdx = (u8ListIdx + 1); u8LocalListIdx < 3; u8LocalListIdx++)
      {
         pstrLocalDaqListData = &CCPUSR_astrDaqListData[u8LocalListIdx];
         if (pstrLocalDaqListData->u8OdtToTxIdx <= pstrLocalDaqListData->u8OdtLstIdx)
         {
            CCPUSR_vu8DaqListPrio = (uint8)u8LocalListIdx;
            bLocalTxSuspd = pstrLocalDaqListData->bTxSuspd;
            pstrLocalDaqListData->bTxSuspd = (0 != 0);
            Os_ResumeOSInterrupts();
            if (bLocalTxSuspd == (1 != 0))
            {
               CCP_vidDaqListTxMgr((uint8)u8LocalListIdx);
            }
            return;
         }
      }
      CCPUSR_vu8DaqListPrio = 255;
      Os_ResumeOSInterrupts();
   }




   void CCP_vidUsrDaqListTxOvrn
   (



      uint8 u8ListIdx
   )
   {
      CCP_tuniDaqMsgBuf uniLocalDaqBuf;


      uniLocalDaqBuf.au8Data[0] = 0xFE;
      uniLocalDaqBuf.au8Data[1] = (uint8)((CCP_tudtCmdSts)0x01);
      uniLocalDaqBuf.au8Data[2] = u8ListIdx;
      CCPUSR_vidSendDaqMessage(u8ListIdx, &uniLocalDaqBuf.au8Data[0]);
   }
# 713 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c"
# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 714 "bswcdd\\CCP\\CCPUSR\\CCPUSR_Daq.c" 2
