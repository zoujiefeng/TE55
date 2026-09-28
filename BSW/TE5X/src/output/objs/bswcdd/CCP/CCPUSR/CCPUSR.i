# 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
# 54 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
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
# 55 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2
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
# 56 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2
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
# 57 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2
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
# 58 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2
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
# 59 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2



# 1 ".\\output\\inc/DEVHAL.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL.h" 1
# 25 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 26 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL.h" 2
# 1 ".\\output\\inc/IfxScu_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h" 2
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
typedef struct _Ifx_SCU_ACCEN00_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit EN2:1;
    Ifx_UReg_32Bit EN3:1;
    Ifx_UReg_32Bit EN4:1;
    Ifx_UReg_32Bit EN5:1;
    Ifx_UReg_32Bit EN6:1;
    Ifx_UReg_32Bit EN7:1;
    Ifx_UReg_32Bit EN8:1;
    Ifx_UReg_32Bit EN9:1;
    Ifx_UReg_32Bit EN10:1;
    Ifx_UReg_32Bit EN11:1;
    Ifx_UReg_32Bit EN12:1;
    Ifx_UReg_32Bit EN13:1;
    Ifx_UReg_32Bit EN14:1;
    Ifx_UReg_32Bit EN15:1;
    Ifx_UReg_32Bit EN16:1;
    Ifx_UReg_32Bit EN17:1;
    Ifx_UReg_32Bit EN18:1;
    Ifx_UReg_32Bit EN19:1;
    Ifx_UReg_32Bit EN20:1;
    Ifx_UReg_32Bit EN21:1;
    Ifx_UReg_32Bit EN22:1;
    Ifx_UReg_32Bit EN23:1;
    Ifx_UReg_32Bit EN24:1;
    Ifx_UReg_32Bit EN25:1;
    Ifx_UReg_32Bit EN26:1;
    Ifx_UReg_32Bit EN27:1;
    Ifx_UReg_32Bit EN28:1;
    Ifx_UReg_32Bit EN29:1;
    Ifx_UReg_32Bit EN30:1;
    Ifx_UReg_32Bit EN31:1;
} Ifx_SCU_ACCEN00_Bits;


typedef struct _Ifx_SCU_ACCEN01_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_SCU_ACCEN01_Bits;


typedef struct _Ifx_SCU_ACCEN10_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit EN2:1;
    Ifx_UReg_32Bit EN3:1;
    Ifx_UReg_32Bit EN4:1;
    Ifx_UReg_32Bit EN5:1;
    Ifx_UReg_32Bit EN6:1;
    Ifx_UReg_32Bit EN7:1;
    Ifx_UReg_32Bit EN8:1;
    Ifx_UReg_32Bit EN9:1;
    Ifx_UReg_32Bit EN10:1;
    Ifx_UReg_32Bit EN11:1;
    Ifx_UReg_32Bit EN12:1;
    Ifx_UReg_32Bit EN13:1;
    Ifx_UReg_32Bit EN14:1;
    Ifx_UReg_32Bit EN15:1;
    Ifx_UReg_32Bit EN16:1;
    Ifx_UReg_32Bit EN17:1;
    Ifx_UReg_32Bit EN18:1;
    Ifx_UReg_32Bit EN19:1;
    Ifx_UReg_32Bit EN20:1;
    Ifx_UReg_32Bit EN21:1;
    Ifx_UReg_32Bit EN22:1;
    Ifx_UReg_32Bit EN23:1;
    Ifx_UReg_32Bit EN24:1;
    Ifx_UReg_32Bit EN25:1;
    Ifx_UReg_32Bit EN26:1;
    Ifx_UReg_32Bit EN27:1;
    Ifx_UReg_32Bit EN28:1;
    Ifx_UReg_32Bit EN29:1;
    Ifx_UReg_32Bit EN30:1;
    Ifx_UReg_32Bit EN31:1;
} Ifx_SCU_ACCEN10_Bits;


typedef struct _Ifx_SCU_ACCEN11_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_SCU_ACCEN11_Bits;


typedef struct _Ifx_SCU_ARSTDIS_Bits
{
    Ifx_UReg_32Bit STM0DIS:1;
    Ifx_UReg_32Bit STM1DIS:1;
    Ifx_UReg_32Bit STM2DIS:1;
    Ifx_UReg_32Bit STM3DIS:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_SCU_ARSTDIS_Bits;


typedef struct _Ifx_SCU_CCUCON0_Bits
{
    Ifx_UReg_32Bit STMDIV:4;
    Ifx_UReg_32Bit GTMDIV:4;
    Ifx_UReg_32Bit SRIDIV:4;
    Ifx_UReg_32Bit LPDIV:3;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit SPBDIV:4;
    Ifx_UReg_32Bit BBBDIV:4;
    Ifx_UReg_32Bit FSIDIV:2;
    Ifx_UReg_32Bit FSI2DIV:2;
    Ifx_UReg_32Bit CLKSEL:2;
    Ifx_UReg_32Bit UP:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_SCU_CCUCON0_Bits;


typedef struct _Ifx_SCU_CCUCON1_Bits
{
    Ifx_UReg_32Bit MCANDIV:4;
    Ifx_UReg_32Bit CLKSELMCAN:2;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit PLL1DIVDIS:1;
    Ifx_UReg_32Bit I2CDIV:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit MSCDIV:4;
    Ifx_UReg_32Bit CLKSELMSC:2;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit QSPIDIV:4;
    Ifx_UReg_32Bit CLKSELQSPI:2;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_SCU_CCUCON1_Bits;


typedef struct _Ifx_SCU_CCUCON2_Bits
{
    Ifx_UReg_32Bit ASCLINFDIV:4;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit ASCLINSDIV:4;
    Ifx_UReg_32Bit CLKSELASCLINS:2;
    Ifx_UReg_32Bit reserved_14:10;
    Ifx_UReg_32Bit reserved_24:1;
    Ifx_UReg_32Bit ERAYPERON:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit reserved_27:4;
    Ifx_UReg_32Bit LCK:1;
} Ifx_SCU_CCUCON2_Bits;


typedef struct _Ifx_SCU_CCUCON3_Bits
{
    Ifx_UReg_32Bit PLL0MONEN:1;
    Ifx_UReg_32Bit PLL1MONEN:1;
    Ifx_UReg_32Bit PLL2MONEN:1;
    Ifx_UReg_32Bit SPBMONEN:1;
    Ifx_UReg_32Bit BACKMONEN:1;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit PLL0MONTST:1;
    Ifx_UReg_32Bit PLL1MONTST:1;
    Ifx_UReg_32Bit PLL2MONTST:1;
    Ifx_UReg_32Bit SPBMONTST:1;
    Ifx_UReg_32Bit BACKMONTST:1;
    Ifx_UReg_32Bit reserved_13:11;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit UP:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_SCU_CCUCON3_Bits;


typedef struct _Ifx_SCU_CCUCON4_Bits
{
    Ifx_UReg_32Bit LOTHR:12;
    Ifx_UReg_32Bit UPTHR:12;
    Ifx_UReg_32Bit MONEN:1;
    Ifx_UReg_32Bit MONTST:1;
    Ifx_UReg_32Bit reserved_26:4;
    Ifx_UReg_32Bit UP:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_SCU_CCUCON4_Bits;


typedef struct _Ifx_SCU_CCUCON5_Bits
{
    Ifx_UReg_32Bit GETHDIV:4;
    Ifx_UReg_32Bit MCANHDIV:4;
    Ifx_UReg_32Bit reserved_8:4;
    Ifx_UReg_32Bit reserved_12:18;
    Ifx_UReg_32Bit UP:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_SCU_CCUCON5_Bits;


typedef struct _Ifx_SCU_CCUCON6_Bits
{
    Ifx_UReg_32Bit CPU0DIV:6;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_CCUCON6_Bits;


typedef struct _Ifx_SCU_CCUCON7_Bits
{
    Ifx_UReg_32Bit CPU1DIV:6;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_CCUCON7_Bits;


typedef struct _Ifx_SCU_CCUCON8_Bits
{
    Ifx_UReg_32Bit CPU2DIV:6;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_CCUCON8_Bits;


typedef struct _Ifx_SCU_CCUCON9_Bits
{
    Ifx_UReg_32Bit CPU3DIV:6;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_CCUCON9_Bits;


typedef struct _Ifx_SCU_CHIPID_Bits
{
    Ifx_UReg_32Bit CHREV:6;
    Ifx_UReg_32Bit CHTEC:2;
    Ifx_UReg_32Bit CHPK:4;
    Ifx_UReg_32Bit CHID:4;
    Ifx_UReg_32Bit EEA:1;
    Ifx_UReg_32Bit UCODE:7;
    Ifx_UReg_32Bit FSIZE:4;
    Ifx_UReg_32Bit VART:3;
    Ifx_UReg_32Bit SEC:1;
} Ifx_SCU_CHIPID_Bits;


typedef struct _Ifx_SCU_DTSCLIM_Bits
{
    Ifx_UReg_32Bit LOWER:12;
    Ifx_UReg_32Bit reserved_12:1;
    Ifx_UReg_32Bit BGPOK:1;
    Ifx_UReg_32Bit EN:1;
    Ifx_UReg_32Bit LLU:1;
    Ifx_UReg_32Bit UPPER:12;
    Ifx_UReg_32Bit INTEN:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit INT:1;
    Ifx_UReg_32Bit UOF:1;
} Ifx_SCU_DTSCLIM_Bits;


typedef struct _Ifx_SCU_DTSCSTAT_Bits
{
    Ifx_UReg_32Bit RESULT:12;
    Ifx_UReg_32Bit reserved_12:20;
} Ifx_SCU_DTSCSTAT_Bits;


typedef struct _Ifx_SCU_EICON0_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int ENDINIT:1;
    volatile unsigned int EPW:14;
    volatile unsigned int REL:16;
} Ifx_SCU_EICON0_Bits;


typedef struct _Ifx_SCU_EICON1_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit IR0:1;
    Ifx_UReg_32Bit DR:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit IR1:1;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_EICON1_Bits;


typedef struct _Ifx_SCU_EICR_Bits
{
    Ifx_UReg_32Bit reserved_0:4;
    Ifx_UReg_32Bit EXIS0:3;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit FEN0:1;
    Ifx_UReg_32Bit REN0:1;
    Ifx_UReg_32Bit LDEN0:1;
    Ifx_UReg_32Bit EIEN0:1;
    Ifx_UReg_32Bit INP0:3;
    Ifx_UReg_32Bit reserved_15:5;
    Ifx_UReg_32Bit EXIS1:3;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit FEN1:1;
    Ifx_UReg_32Bit REN1:1;
    Ifx_UReg_32Bit LDEN1:1;
    Ifx_UReg_32Bit EIEN1:1;
    Ifx_UReg_32Bit INP1:3;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_SCU_EICR_Bits;


typedef struct _Ifx_SCU_EIFILT_Bits
{
    Ifx_UReg_32Bit FILRQ0A:1;
    Ifx_UReg_32Bit FILRQ5A:1;
    Ifx_UReg_32Bit FILRQ2A:1;
    Ifx_UReg_32Bit FILRQ3A:1;
    Ifx_UReg_32Bit FILRQ0C:1;
    Ifx_UReg_32Bit FILRQ1C:1;
    Ifx_UReg_32Bit FILRQ3C:1;
    Ifx_UReg_32Bit FILRQ2C:1;
    Ifx_UReg_32Bit FILRQ4A:1;
    Ifx_UReg_32Bit FILRQ6A:1;
    Ifx_UReg_32Bit FILRQ1A:1;
    Ifx_UReg_32Bit FILRQ7A:1;
    Ifx_UReg_32Bit FILRQ6D:1;
    Ifx_UReg_32Bit FILRQ4D:1;
    Ifx_UReg_32Bit FILRQ2B:1;
    Ifx_UReg_32Bit FILRQ3B:1;
    Ifx_UReg_32Bit FILRQ7C:1;
    Ifx_UReg_32Bit reserved_17:7;
    Ifx_UReg_32Bit FILTDIV:4;
    Ifx_UReg_32Bit DEPTH:4;
} Ifx_SCU_EIFILT_Bits;


typedef struct _Ifx_SCU_EIFR_Bits
{
    Ifx_UReg_32Bit INTF0:1;
    Ifx_UReg_32Bit INTF1:1;
    Ifx_UReg_32Bit INTF2:1;
    Ifx_UReg_32Bit INTF3:1;
    Ifx_UReg_32Bit INTF4:1;
    Ifx_UReg_32Bit INTF5:1;
    Ifx_UReg_32Bit INTF6:1;
    Ifx_UReg_32Bit INTF7:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_SCU_EIFR_Bits;


typedef struct _Ifx_SCU_EISR_Bits
{
    Ifx_UReg_32Bit AE:1;
    Ifx_UReg_32Bit OE:1;
    Ifx_UReg_32Bit IS0:1;
    Ifx_UReg_32Bit DS:1;
    Ifx_UReg_32Bit TO:1;
    Ifx_UReg_32Bit IS1:1;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit TIM:16;
} Ifx_SCU_EISR_Bits;


typedef struct _Ifx_SCU_EMSR_Bits
{
    Ifx_UReg_32Bit POL:1;
    Ifx_UReg_32Bit MODE:1;
    Ifx_UReg_32Bit ENON:1;
    Ifx_UReg_32Bit PSEL:1;
    Ifx_UReg_32Bit reserved_4:12;
    Ifx_UReg_32Bit EMSF:1;
    Ifx_UReg_32Bit SEMSF:1;
    Ifx_UReg_32Bit reserved_18:14;
} Ifx_SCU_EMSR_Bits;


typedef struct _Ifx_SCU_EMSSW_Bits
{
    Ifx_UReg_32Bit reserved_0:24;
    Ifx_UReg_32Bit EMSFM:2;
    Ifx_UReg_32Bit SEMSFM:2;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_SCU_EMSSW_Bits;


typedef struct _Ifx_SCU_ESRCFGX_ESRCFGX_Bits
{
    Ifx_UReg_32Bit reserved_0:7;
    Ifx_UReg_32Bit EDCON:2;
    Ifx_UReg_32Bit reserved_9:23;
} Ifx_SCU_ESRCFGX_ESRCFGX_Bits;


typedef struct _Ifx_SCU_ESROCFG_Bits
{
    Ifx_UReg_32Bit ARI:1;
    Ifx_UReg_32Bit ARC:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_SCU_ESROCFG_Bits;


typedef struct _Ifx_SCU_EXTCON_Bits
{
    Ifx_UReg_32Bit EN0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit EN1:1;
    Ifx_UReg_32Bit NSEL:1;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit DIV1:8;
} Ifx_SCU_EXTCON_Bits;


typedef struct _Ifx_SCU_FDR_Bits
{
    Ifx_UReg_32Bit STEP:10;
    Ifx_UReg_32Bit reserved_10:4;
    Ifx_UReg_32Bit DM:2;
    Ifx_UReg_32Bit RESULT:10;
    Ifx_UReg_32Bit reserved_26:5;
    Ifx_UReg_32Bit DISCLK:1;
} Ifx_SCU_FDR_Bits;


typedef struct _Ifx_SCU_FMR_Bits
{
    Ifx_UReg_32Bit FS0:1;
    Ifx_UReg_32Bit FS1:1;
    Ifx_UReg_32Bit FS2:1;
    Ifx_UReg_32Bit FS3:1;
    Ifx_UReg_32Bit FS4:1;
    Ifx_UReg_32Bit FS5:1;
    Ifx_UReg_32Bit FS6:1;
    Ifx_UReg_32Bit FS7:1;
    Ifx_UReg_32Bit reserved_8:8;
    Ifx_UReg_32Bit FC0:1;
    Ifx_UReg_32Bit FC1:1;
    Ifx_UReg_32Bit FC2:1;
    Ifx_UReg_32Bit FC3:1;
    Ifx_UReg_32Bit FC4:1;
    Ifx_UReg_32Bit FC5:1;
    Ifx_UReg_32Bit FC6:1;
    Ifx_UReg_32Bit FC7:1;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_SCU_FMR_Bits;


typedef struct _Ifx_SCU_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUMBER:16;
} Ifx_SCU_ID_Bits;


typedef struct _Ifx_SCU_IGCR_Bits
{
    Ifx_UReg_32Bit IPEN00:1;
    Ifx_UReg_32Bit IPEN01:1;
    Ifx_UReg_32Bit IPEN02:1;
    Ifx_UReg_32Bit IPEN03:1;
    Ifx_UReg_32Bit IPEN04:1;
    Ifx_UReg_32Bit IPEN05:1;
    Ifx_UReg_32Bit IPEN06:1;
    Ifx_UReg_32Bit IPEN07:1;
    Ifx_UReg_32Bit reserved_8:5;
    Ifx_UReg_32Bit GEEN0:1;
    Ifx_UReg_32Bit IGP0:2;
    Ifx_UReg_32Bit IPEN10:1;
    Ifx_UReg_32Bit IPEN11:1;
    Ifx_UReg_32Bit IPEN12:1;
    Ifx_UReg_32Bit IPEN13:1;
    Ifx_UReg_32Bit IPEN14:1;
    Ifx_UReg_32Bit IPEN15:1;
    Ifx_UReg_32Bit IPEN16:1;
    Ifx_UReg_32Bit IPEN17:1;
    Ifx_UReg_32Bit reserved_24:5;
    Ifx_UReg_32Bit GEEN1:1;
    Ifx_UReg_32Bit IGP1:2;
} Ifx_SCU_IGCR_Bits;


typedef struct _Ifx_SCU_IN_Bits
{
    Ifx_UReg_32Bit P0:1;
    Ifx_UReg_32Bit P1:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_SCU_IN_Bits;


typedef struct _Ifx_SCU_IOCR_Bits
{
    Ifx_UReg_32Bit reserved_0:4;
    Ifx_UReg_32Bit PC0:4;
    Ifx_UReg_32Bit reserved_8:4;
    Ifx_UReg_32Bit PC1:4;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_IOCR_Bits;


typedef struct _Ifx_SCU_LBISTCTRL0_Bits
{
    Ifx_UReg_32Bit LBISTREQ:1;
    Ifx_UReg_32Bit LBISTRES:1;
    Ifx_UReg_32Bit PATTERNS:18;
    Ifx_UReg_32Bit reserved_20:8;
    Ifx_UReg_32Bit LBISTDONE:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit LBISTERRINJ:1;
    Ifx_UReg_32Bit LBISTREQRED:1;
} Ifx_SCU_LBISTCTRL0_Bits;


typedef struct _Ifx_SCU_LBISTCTRL1_Bits
{
    Ifx_UReg_32Bit SEED:19;
    Ifx_UReg_32Bit reserved_19:5;
    Ifx_UReg_32Bit SPLITSH:3;
    Ifx_UReg_32Bit BODY:1;
    Ifx_UReg_32Bit LBISTFREQU:4;
} Ifx_SCU_LBISTCTRL1_Bits;


typedef struct _Ifx_SCU_LBISTCTRL2_Bits
{
    Ifx_UReg_32Bit LENGTH:12;
    Ifx_UReg_32Bit reserved_12:20;
} Ifx_SCU_LBISTCTRL2_Bits;


typedef struct _Ifx_SCU_LBISTCTRL3_Bits
{
    Ifx_UReg_32Bit SIGNATURE:32;
} Ifx_SCU_LBISTCTRL3_Bits;


typedef struct _Ifx_SCU_LCLCON0_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:14;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit LS0:1;
    Ifx_UReg_32Bit reserved_17:14;
    Ifx_UReg_32Bit LSEN0:1;
} Ifx_SCU_LCLCON0_Bits;


typedef struct _Ifx_SCU_LCLCON1_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:14;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit LS1:1;
    Ifx_UReg_32Bit reserved_17:14;
    Ifx_UReg_32Bit LSEN1:1;
} Ifx_SCU_LCLCON1_Bits;


typedef struct _Ifx_SCU_LCLTEST_Bits
{
    Ifx_UReg_32Bit LCLT0:1;
    Ifx_UReg_32Bit LCLT1:1;
    Ifx_UReg_32Bit LCLT2:1;
    Ifx_UReg_32Bit LCLT3:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit PLCLT0:1;
    Ifx_UReg_32Bit PLCLT1:1;
    Ifx_UReg_32Bit PLCLT2:1;
    Ifx_UReg_32Bit PLCLT3:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:10;
} Ifx_SCU_LCLTEST_Bits;


typedef struct _Ifx_SCU_MANID_Bits
{
    Ifx_UReg_32Bit DEPT:5;
    Ifx_UReg_32Bit MANUF:11;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_MANID_Bits;


typedef struct _Ifx_SCU_OMR_Bits
{
    Ifx_UReg_32Bit PS0:1;
    Ifx_UReg_32Bit PS1:1;
    Ifx_UReg_32Bit reserved_2:14;
    Ifx_UReg_32Bit PCL0:1;
    Ifx_UReg_32Bit PCL1:1;
    Ifx_UReg_32Bit reserved_18:14;
} Ifx_SCU_OMR_Bits;


typedef struct _Ifx_SCU_OSCCON_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit PLLLV:1;
    Ifx_UReg_32Bit OSCRES:1;
    Ifx_UReg_32Bit GAINSEL:2;
    Ifx_UReg_32Bit MODE:2;
    Ifx_UReg_32Bit SHBY:1;
    Ifx_UReg_32Bit PLLHV:1;
    Ifx_UReg_32Bit HYSEN:1;
    Ifx_UReg_32Bit HYSCTL:2;
    Ifx_UReg_32Bit AMPCTL:2;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit OSCVAL:5;
    Ifx_UReg_32Bit reserved_21:2;
    Ifx_UReg_32Bit APREN:1;
    Ifx_UReg_32Bit CAP0EN:1;
    Ifx_UReg_32Bit CAP1EN:1;
    Ifx_UReg_32Bit CAP2EN:1;
    Ifx_UReg_32Bit CAP3EN:1;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_SCU_OSCCON_Bits;


typedef struct _Ifx_SCU_OUT_Bits
{
    Ifx_UReg_32Bit P0:1;
    Ifx_UReg_32Bit P1:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_SCU_OUT_Bits;


typedef struct _Ifx_SCU_OVCCON_Bits
{
    Ifx_UReg_32Bit CSEL0:1;
    Ifx_UReg_32Bit CSEL1:1;
    Ifx_UReg_32Bit CSEL2:1;
    Ifx_UReg_32Bit CSEL3:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit OVSTRT:1;
    Ifx_UReg_32Bit OVSTP:1;
    Ifx_UReg_32Bit DCINVAL:1;
    Ifx_UReg_32Bit reserved_19:5;
    Ifx_UReg_32Bit OVCONF:1;
    Ifx_UReg_32Bit POVCONF:1;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_SCU_OVCCON_Bits;


typedef struct _Ifx_SCU_OVCENABLE_Bits
{
    Ifx_UReg_32Bit OVEN0:1;
    Ifx_UReg_32Bit OVEN1:1;
    Ifx_UReg_32Bit OVEN2:1;
    Ifx_UReg_32Bit OVEN3:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_OVCENABLE_Bits;


typedef struct _Ifx_SCU_PDISC_Bits
{
    Ifx_UReg_32Bit PDIS0:1;
    Ifx_UReg_32Bit PDIS1:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_SCU_PDISC_Bits;


typedef struct _Ifx_SCU_PDR_Bits
{
    Ifx_UReg_32Bit PD0:2;
    Ifx_UReg_32Bit PL0:2;
    Ifx_UReg_32Bit PD1:2;
    Ifx_UReg_32Bit PL1:2;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_SCU_PDR_Bits;


typedef struct _Ifx_SCU_PDRR_Bits
{
    Ifx_UReg_32Bit PDR0:1;
    Ifx_UReg_32Bit PDR1:1;
    Ifx_UReg_32Bit PDR2:1;
    Ifx_UReg_32Bit PDR3:1;
    Ifx_UReg_32Bit PDR4:1;
    Ifx_UReg_32Bit PDR5:1;
    Ifx_UReg_32Bit PDR6:1;
    Ifx_UReg_32Bit PDR7:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_SCU_PDRR_Bits;


typedef struct _Ifx_SCU_PERPLLCON0_Bits
{
    Ifx_UReg_32Bit DIVBY:1;
    Ifx_UReg_32Bit reserved_1:8;
    Ifx_UReg_32Bit NDIV:7;
    Ifx_UReg_32Bit PLLPWD:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit RESLD:1;
    Ifx_UReg_32Bit reserved_19:5;
    Ifx_UReg_32Bit PDIV:3;
    Ifx_UReg_32Bit reserved_27:5;
} Ifx_SCU_PERPLLCON0_Bits;


typedef struct _Ifx_SCU_PERPLLCON1_Bits
{
    Ifx_UReg_32Bit K2DIV:3;
    Ifx_UReg_32Bit reserved_3:5;
    Ifx_UReg_32Bit K3DIV:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PERPLLCON1_Bits;


typedef struct _Ifx_SCU_PERPLLSTAT_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit PWDSTAT:1;
    Ifx_UReg_32Bit LOCK:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit K3RDY:1;
    Ifx_UReg_32Bit K2RDY:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_SCU_PERPLLSTAT_Bits;


typedef struct _Ifx_SCU_PMCSR0_Bits
{
    Ifx_UReg_32Bit REQSLP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit PMST:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PMCSR0_Bits;


typedef struct _Ifx_SCU_PMCSR1_Bits
{
    Ifx_UReg_32Bit REQSLP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit PMST:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PMCSR1_Bits;


typedef struct _Ifx_SCU_PMCSR2_Bits
{
    Ifx_UReg_32Bit REQSLP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit PMST:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PMCSR2_Bits;


typedef struct _Ifx_SCU_PMCSR3_Bits
{
    Ifx_UReg_32Bit REQSLP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit PMST:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PMCSR3_Bits;


typedef struct _Ifx_SCU_PMCSR4_Bits
{
    Ifx_UReg_32Bit REQSLP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit PMST:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PMCSR4_Bits;


typedef struct _Ifx_SCU_PMCSR5_Bits
{
    Ifx_UReg_32Bit REQSLP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit PMST:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_SCU_PMCSR5_Bits;


typedef struct _Ifx_SCU_PMSTAT0_Bits
{
    Ifx_UReg_32Bit CPU0:1;
    Ifx_UReg_32Bit CPU1:1;
    Ifx_UReg_32Bit CPU2:1;
    Ifx_UReg_32Bit CPU3:1;
    Ifx_UReg_32Bit CPU4:1;
    Ifx_UReg_32Bit CPU5:1;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit CPU0LS:1;
    Ifx_UReg_32Bit CPU1LS:1;
    Ifx_UReg_32Bit CPU2LS:1;
    Ifx_UReg_32Bit CPU3LS:1;
    Ifx_UReg_32Bit reserved_20:12;
} Ifx_SCU_PMSTAT0_Bits;


typedef struct _Ifx_SCU_PMSWCR1_Bits
{
    Ifx_UReg_32Bit reserved_0:8;
    Ifx_UReg_32Bit CPUIDLSEL:3;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit IRADIS:1;
    Ifx_UReg_32Bit reserved_13:11;
    Ifx_UReg_32Bit CPUSEL:3;
    Ifx_UReg_32Bit STBYEVEN:1;
    Ifx_UReg_32Bit STBYEV:3;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_SCU_PMSWCR1_Bits;


typedef struct _Ifx_SCU_PMTRCSR0_Bits
{
    Ifx_UReg_32Bit LJTEN:1;
    Ifx_UReg_32Bit LJTOVEN:1;
    Ifx_UReg_32Bit LJTOVIEN:1;
    Ifx_UReg_32Bit LJTSTRT:1;
    Ifx_UReg_32Bit LJTSTP:1;
    Ifx_UReg_32Bit LJTCLR:1;
    Ifx_UReg_32Bit reserved_6:6;
    Ifx_UReg_32Bit SDSTEP:4;
    Ifx_UReg_32Bit VDTEN:1;
    Ifx_UReg_32Bit VDTOVEN:1;
    Ifx_UReg_32Bit VDTOVIEN:1;
    Ifx_UReg_32Bit VDTSTRT:1;
    Ifx_UReg_32Bit VDTSTP:1;
    Ifx_UReg_32Bit VDTCLR:1;
    Ifx_UReg_32Bit reserved_22:7;
    Ifx_UReg_32Bit LPSLPEN:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_SCU_PMTRCSR0_Bits;


typedef struct _Ifx_SCU_PMTRCSR1_Bits
{
    Ifx_UReg_32Bit LJTCV:16;
    Ifx_UReg_32Bit VDTCV:10;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_SCU_PMTRCSR1_Bits;


typedef struct _Ifx_SCU_PMTRCSR2_Bits
{
    Ifx_UReg_32Bit LDJMPREQ:2;
    Ifx_UReg_32Bit reserved_2:2;
    Ifx_UReg_32Bit LJTRUN:2;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit LJTOV:1;
    Ifx_UReg_32Bit reserved_9:3;
    Ifx_UReg_32Bit LJTOVCLR:1;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit LJTCNT:16;
} Ifx_SCU_PMTRCSR2_Bits;


typedef struct _Ifx_SCU_PMTRCSR3_Bits
{
    Ifx_UReg_32Bit VDROOPREQ:2;
    Ifx_UReg_32Bit reserved_2:2;
    Ifx_UReg_32Bit VDTRUN:2;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit VDTOV:1;
    Ifx_UReg_32Bit reserved_9:3;
    Ifx_UReg_32Bit VDTOVCLR:1;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit VDTCNT:10;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_SCU_PMTRCSR3_Bits;


typedef struct _Ifx_SCU_RSTCON_Bits
{
    Ifx_UReg_32Bit ESR0:2;
    Ifx_UReg_32Bit ESR1:2;
    Ifx_UReg_32Bit reserved_4:2;
    Ifx_UReg_32Bit SMU:2;
    Ifx_UReg_32Bit SW:2;
    Ifx_UReg_32Bit STM0:2;
    Ifx_UReg_32Bit STM1:2;
    Ifx_UReg_32Bit STM2:2;
    Ifx_UReg_32Bit STM3:2;
    Ifx_UReg_32Bit reserved_18:2;
    Ifx_UReg_32Bit reserved_20:2;
    Ifx_UReg_32Bit reserved_22:10;
} Ifx_SCU_RSTCON_Bits;


typedef struct _Ifx_SCU_RSTCON2_Bits
{
    Ifx_UReg_32Bit FRTO:1;
    Ifx_UReg_32Bit CLRC:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit CSSX:6;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit USRINFO:16;
} Ifx_SCU_RSTCON2_Bits;


typedef struct _Ifx_SCU_RSTCON3_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_SCU_RSTCON3_Bits;


typedef struct _Ifx_SCU_RSTSTAT_Bits
{
    Ifx_UReg_32Bit ESR0:1;
    Ifx_UReg_32Bit ESR1:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit SMU:1;
    Ifx_UReg_32Bit SW:1;
    Ifx_UReg_32Bit STM0:1;
    Ifx_UReg_32Bit STM1:1;
    Ifx_UReg_32Bit STM2:1;
    Ifx_UReg_32Bit STM3:1;
    Ifx_UReg_32Bit reserved_9:1;
    Ifx_UReg_32Bit reserved_10:1;
    Ifx_UReg_32Bit reserved_11:5;
    Ifx_UReg_32Bit PORST:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit CB0:1;
    Ifx_UReg_32Bit CB1:1;
    Ifx_UReg_32Bit CB3:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit EVRC:1;
    Ifx_UReg_32Bit EVR33:1;
    Ifx_UReg_32Bit SWD:1;
    Ifx_UReg_32Bit HSMS:1;
    Ifx_UReg_32Bit HSMA:1;
    Ifx_UReg_32Bit STBYR:1;
    Ifx_UReg_32Bit LBPORST:1;
    Ifx_UReg_32Bit LBTERM:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_SCU_RSTSTAT_Bits;


typedef struct _Ifx_SCU_SEICON0_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int ENDINIT:1;
    volatile unsigned int EPW:14;
    volatile unsigned int REL:16;
} Ifx_SCU_SEICON0_Bits;


typedef struct _Ifx_SCU_SEICON1_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit IR0:1;
    Ifx_UReg_32Bit DR:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit IR1:1;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_SCU_SEICON1_Bits;


typedef struct _Ifx_SCU_SEISR_Bits
{
    Ifx_UReg_32Bit AE:1;
    Ifx_UReg_32Bit OE:1;
    Ifx_UReg_32Bit IS0:1;
    Ifx_UReg_32Bit DS:1;
    Ifx_UReg_32Bit TO:1;
    Ifx_UReg_32Bit IS1:1;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit TIM:16;
} Ifx_SCU_SEISR_Bits;


typedef struct _Ifx_SCU_STCON_Bits
{
    Ifx_UReg_32Bit reserved_0:13;
    Ifx_UReg_32Bit SFCBAE:1;
    Ifx_UReg_32Bit CFCBAE:1;
    Ifx_UReg_32Bit STP:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_STCON_Bits;


typedef struct _Ifx_SCU_STMEM1_Bits
{
    Ifx_UReg_32Bit MEM:32;
} Ifx_SCU_STMEM1_Bits;


typedef struct _Ifx_SCU_STMEM2_Bits
{
    Ifx_UReg_32Bit MEM:32;
} Ifx_SCU_STMEM2_Bits;


typedef struct _Ifx_SCU_STMEM3_Bits
{
    Ifx_UReg_32Bit MEM:32;
} Ifx_SCU_STMEM3_Bits;


typedef struct _Ifx_SCU_STMEM4_Bits
{
    Ifx_UReg_32Bit MEM:32;
} Ifx_SCU_STMEM4_Bits;


typedef struct _Ifx_SCU_STMEM5_Bits
{
    Ifx_UReg_32Bit MEM:32;
} Ifx_SCU_STMEM5_Bits;


typedef struct _Ifx_SCU_STMEM6_Bits
{
    Ifx_UReg_32Bit MEM:32;
} Ifx_SCU_STMEM6_Bits;


typedef struct _Ifx_SCU_STSTAT_Bits
{
    Ifx_UReg_32Bit HWCFG:8;
    Ifx_UReg_32Bit FTM:7;
    Ifx_UReg_32Bit MODE:1;
    Ifx_UReg_32Bit FCBAE:1;
    Ifx_UReg_32Bit LUDIS:1;
    Ifx_UReg_32Bit reserved_18:1;
    Ifx_UReg_32Bit TRSTL:1;
    Ifx_UReg_32Bit SPDEN:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit RAMINT:1;
    Ifx_UReg_32Bit reserved_25:3;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_SCU_STSTAT_Bits;


typedef struct _Ifx_SCU_SWAPCTRL_Bits
{
    Ifx_UReg_32Bit ADDRCFG:2;
    Ifx_UReg_32Bit SPARE:14;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_SWAPCTRL_Bits;


typedef struct _Ifx_SCU_SWRSTCON_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit SWRSTREQ:1;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit reserved_8:8;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_SWRSTCON_Bits;


typedef struct _Ifx_SCU_SYSCON_Bits
{
    Ifx_UReg_32Bit CCTRIG0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit RAMINTM:2;
    Ifx_UReg_32Bit SETLUDIS:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit DDC:1;
    Ifx_UReg_32Bit reserved_9:7;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_SYSCON_Bits;


typedef struct _Ifx_SCU_SYSPLLCON0_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit MODEN:1;
    Ifx_UReg_32Bit reserved_3:6;
    Ifx_UReg_32Bit NDIV:7;
    Ifx_UReg_32Bit PLLPWD:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit RESLD:1;
    Ifx_UReg_32Bit reserved_19:5;
    Ifx_UReg_32Bit PDIV:3;
    Ifx_UReg_32Bit reserved_27:3;
    Ifx_UReg_32Bit INSEL:2;
} Ifx_SCU_SYSPLLCON0_Bits;


typedef struct _Ifx_SCU_SYSPLLCON1_Bits
{
    Ifx_UReg_32Bit K2DIV:3;
    Ifx_UReg_32Bit reserved_3:29;
} Ifx_SCU_SYSPLLCON1_Bits;


typedef struct _Ifx_SCU_SYSPLLCON2_Bits
{
    Ifx_UReg_32Bit MODCFG:16;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_SYSPLLCON2_Bits;


typedef struct _Ifx_SCU_SYSPLLSTAT_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit PWDSTAT:1;
    Ifx_UReg_32Bit LOCK:1;
    Ifx_UReg_32Bit reserved_3:2;
    Ifx_UReg_32Bit K2RDY:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit MODRUN:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_SCU_SYSPLLSTAT_Bits;


typedef struct _Ifx_SCU_TRAPCLR_Bits
{
    Ifx_UReg_32Bit ESR0T:1;
    Ifx_UReg_32Bit ESR1T:1;
    Ifx_UReg_32Bit TRAP2:1;
    Ifx_UReg_32Bit SMUT:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_SCU_TRAPCLR_Bits;


typedef struct _Ifx_SCU_TRAPDIS0_Bits
{
    Ifx_UReg_32Bit CPU0ESR0T:1;
    Ifx_UReg_32Bit CPU0ESR1T:1;
    Ifx_UReg_32Bit CPU0TRAP2T:1;
    Ifx_UReg_32Bit CPU0SMUT:1;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit CPU1ESR0T:1;
    Ifx_UReg_32Bit CPU1ESR1T:1;
    Ifx_UReg_32Bit CPU1TRAP2T:1;
    Ifx_UReg_32Bit CPU1SMUT:1;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit CPU2ESR0T:1;
    Ifx_UReg_32Bit CPU2ESR1T:1;
    Ifx_UReg_32Bit CPU2TRAP2T:1;
    Ifx_UReg_32Bit CPU2SMUT:1;
    Ifx_UReg_32Bit reserved_20:4;
    Ifx_UReg_32Bit CPU3ESR0T:1;
    Ifx_UReg_32Bit CPU3ESR1T:1;
    Ifx_UReg_32Bit CPU3TRAP2T:1;
    Ifx_UReg_32Bit CPU3SMUT:1;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_SCU_TRAPDIS0_Bits;


typedef struct _Ifx_SCU_TRAPDIS1_Bits
{
    Ifx_UReg_32Bit reserved_0:4;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit reserved_8:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_TRAPDIS1_Bits;


typedef struct _Ifx_SCU_TRAPSET_Bits
{
    Ifx_UReg_32Bit ESR0T:1;
    Ifx_UReg_32Bit ESR1T:1;
    Ifx_UReg_32Bit TRAP2:1;
    Ifx_UReg_32Bit SMUT:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_SCU_TRAPSET_Bits;


typedef struct _Ifx_SCU_TRAPSTAT_Bits
{
    Ifx_UReg_32Bit ESR0T:1;
    Ifx_UReg_32Bit ESR1T:1;
    Ifx_UReg_32Bit TRAP2:1;
    Ifx_UReg_32Bit SMUT:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_SCU_TRAPSTAT_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON0_Bits
{
    volatile unsigned int ENDINIT:1;
    volatile unsigned int LCK:1;
    volatile unsigned int PW:14;
    volatile unsigned int REL:16;
} Ifx_SCU_WDTCPU_CON0_Bits;


typedef struct _Ifx_SCU_WDTCPU_CON1_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit IR0:1;
    Ifx_UReg_32Bit DR:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit IR1:1;
    Ifx_UReg_32Bit UR:1;
    Ifx_UReg_32Bit PAR:1;
    Ifx_UReg_32Bit TCR:1;
    Ifx_UReg_32Bit TCTR:7;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_WDTCPU_CON1_Bits;


typedef struct _Ifx_SCU_WDTCPU_SR_Bits
{
    Ifx_UReg_32Bit AE:1;
    Ifx_UReg_32Bit OE:1;
    Ifx_UReg_32Bit IS0:1;
    Ifx_UReg_32Bit DS:1;
    Ifx_UReg_32Bit TO:1;
    Ifx_UReg_32Bit IS1:1;
    Ifx_UReg_32Bit US:1;
    Ifx_UReg_32Bit PAS:1;
    Ifx_UReg_32Bit TCS:1;
    Ifx_UReg_32Bit TCT:7;
    Ifx_UReg_32Bit TIM:16;
} Ifx_SCU_WDTCPU_SR_Bits;


typedef struct _Ifx_SCU_WDTS_CON0_Bits
{
    volatile unsigned int ENDINIT:1;
    volatile unsigned int LCK:1;
    volatile unsigned int PW:14;
    volatile unsigned int REL:16;
} Ifx_SCU_WDTS_CON0_Bits;


typedef struct _Ifx_SCU_WDTS_CON1_Bits
{
    Ifx_UReg_32Bit CLRIRF:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit IR0:1;
    Ifx_UReg_32Bit DR:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit IR1:1;
    Ifx_UReg_32Bit UR:1;
    Ifx_UReg_32Bit PAR:1;
    Ifx_UReg_32Bit TCR:1;
    Ifx_UReg_32Bit TCTR:7;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_SCU_WDTS_CON1_Bits;


typedef struct _Ifx_SCU_WDTS_SR_Bits
{
    Ifx_UReg_32Bit AE:1;
    Ifx_UReg_32Bit OE:1;
    Ifx_UReg_32Bit IS0:1;
    Ifx_UReg_32Bit DS:1;
    Ifx_UReg_32Bit TO:1;
    Ifx_UReg_32Bit IS1:1;
    Ifx_UReg_32Bit US:1;
    Ifx_UReg_32Bit PAS:1;
    Ifx_UReg_32Bit TCS:1;
    Ifx_UReg_32Bit TCT:7;
    Ifx_UReg_32Bit TIM:16;
} Ifx_SCU_WDTS_SR_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ACCEN00_Bits B;
} Ifx_SCU_ACCEN00;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ACCEN01_Bits B;
} Ifx_SCU_ACCEN01;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ACCEN10_Bits B;
} Ifx_SCU_ACCEN10;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ACCEN11_Bits B;
} Ifx_SCU_ACCEN11;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ARSTDIS_Bits B;
} Ifx_SCU_ARSTDIS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON0_Bits B;
} Ifx_SCU_CCUCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON1_Bits B;
} Ifx_SCU_CCUCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON2_Bits B;
} Ifx_SCU_CCUCON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON3_Bits B;
} Ifx_SCU_CCUCON3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON4_Bits B;
} Ifx_SCU_CCUCON4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON5_Bits B;
} Ifx_SCU_CCUCON5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON6_Bits B;
} Ifx_SCU_CCUCON6;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON7_Bits B;
} Ifx_SCU_CCUCON7;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON8_Bits B;
} Ifx_SCU_CCUCON8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CCUCON9_Bits B;
} Ifx_SCU_CCUCON9;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_CHIPID_Bits B;
} Ifx_SCU_CHIPID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_DTSCLIM_Bits B;
} Ifx_SCU_DTSCLIM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_DTSCSTAT_Bits B;
} Ifx_SCU_DTSCSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EICON0_Bits B;
} Ifx_SCU_EICON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EICON1_Bits B;
} Ifx_SCU_EICON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EICR_Bits B;
} Ifx_SCU_EICR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EIFILT_Bits B;
} Ifx_SCU_EIFILT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EIFR_Bits B;
} Ifx_SCU_EIFR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EISR_Bits B;
} Ifx_SCU_EISR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EMSR_Bits B;
} Ifx_SCU_EMSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EMSSW_Bits B;
} Ifx_SCU_EMSSW;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ESRCFGX_ESRCFGX_Bits B;
} Ifx_SCU_ESRCFGX_ESRCFGX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ESROCFG_Bits B;
} Ifx_SCU_ESROCFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_EXTCON_Bits B;
} Ifx_SCU_EXTCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_FDR_Bits B;
} Ifx_SCU_FDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_FMR_Bits B;
} Ifx_SCU_FMR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_ID_Bits B;
} Ifx_SCU_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_IGCR_Bits B;
} Ifx_SCU_IGCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_IN_Bits B;
} Ifx_SCU_IN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_IOCR_Bits B;
} Ifx_SCU_IOCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LBISTCTRL0_Bits B;
} Ifx_SCU_LBISTCTRL0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LBISTCTRL1_Bits B;
} Ifx_SCU_LBISTCTRL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LBISTCTRL2_Bits B;
} Ifx_SCU_LBISTCTRL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LBISTCTRL3_Bits B;
} Ifx_SCU_LBISTCTRL3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LCLCON0_Bits B;
} Ifx_SCU_LCLCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LCLCON1_Bits B;
} Ifx_SCU_LCLCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_LCLTEST_Bits B;
} Ifx_SCU_LCLTEST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_MANID_Bits B;
} Ifx_SCU_MANID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_OMR_Bits B;
} Ifx_SCU_OMR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_OSCCON_Bits B;
} Ifx_SCU_OSCCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_OUT_Bits B;
} Ifx_SCU_OUT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_OVCCON_Bits B;
} Ifx_SCU_OVCCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_OVCENABLE_Bits B;
} Ifx_SCU_OVCENABLE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PDISC_Bits B;
} Ifx_SCU_PDISC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PDR_Bits B;
} Ifx_SCU_PDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PDRR_Bits B;
} Ifx_SCU_PDRR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PERPLLCON0_Bits B;
} Ifx_SCU_PERPLLCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PERPLLCON1_Bits B;
} Ifx_SCU_PERPLLCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PERPLLSTAT_Bits B;
} Ifx_SCU_PERPLLSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMCSR0_Bits B;
} Ifx_SCU_PMCSR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMCSR1_Bits B;
} Ifx_SCU_PMCSR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMCSR2_Bits B;
} Ifx_SCU_PMCSR2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMCSR3_Bits B;
} Ifx_SCU_PMCSR3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMCSR4_Bits B;
} Ifx_SCU_PMCSR4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMCSR5_Bits B;
} Ifx_SCU_PMCSR5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMSTAT0_Bits B;
} Ifx_SCU_PMSTAT0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMSWCR1_Bits B;
} Ifx_SCU_PMSWCR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMTRCSR0_Bits B;
} Ifx_SCU_PMTRCSR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMTRCSR1_Bits B;
} Ifx_SCU_PMTRCSR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMTRCSR2_Bits B;
} Ifx_SCU_PMTRCSR2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_PMTRCSR3_Bits B;
} Ifx_SCU_PMTRCSR3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_RSTCON_Bits B;
} Ifx_SCU_RSTCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_RSTCON2_Bits B;
} Ifx_SCU_RSTCON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_RSTCON3_Bits B;
} Ifx_SCU_RSTCON3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_RSTSTAT_Bits B;
} Ifx_SCU_RSTSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SEICON0_Bits B;
} Ifx_SCU_SEICON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SEICON1_Bits B;
} Ifx_SCU_SEICON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SEISR_Bits B;
} Ifx_SCU_SEISR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STCON_Bits B;
} Ifx_SCU_STCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STMEM1_Bits B;
} Ifx_SCU_STMEM1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STMEM2_Bits B;
} Ifx_SCU_STMEM2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STMEM3_Bits B;
} Ifx_SCU_STMEM3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STMEM4_Bits B;
} Ifx_SCU_STMEM4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STMEM5_Bits B;
} Ifx_SCU_STMEM5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STMEM6_Bits B;
} Ifx_SCU_STMEM6;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_STSTAT_Bits B;
} Ifx_SCU_STSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SWAPCTRL_Bits B;
} Ifx_SCU_SWAPCTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SWRSTCON_Bits B;
} Ifx_SCU_SWRSTCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SYSCON_Bits B;
} Ifx_SCU_SYSCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SYSPLLCON0_Bits B;
} Ifx_SCU_SYSPLLCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SYSPLLCON1_Bits B;
} Ifx_SCU_SYSPLLCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SYSPLLCON2_Bits B;
} Ifx_SCU_SYSPLLCON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_SYSPLLSTAT_Bits B;
} Ifx_SCU_SYSPLLSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_TRAPCLR_Bits B;
} Ifx_SCU_TRAPCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_TRAPDIS0_Bits B;
} Ifx_SCU_TRAPDIS0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_TRAPDIS1_Bits B;
} Ifx_SCU_TRAPDIS1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_TRAPSET_Bits B;
} Ifx_SCU_TRAPSET;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_TRAPSTAT_Bits B;
} Ifx_SCU_TRAPSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_WDTCPU_CON0_Bits B;
} Ifx_SCU_WDTCPU_CON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_WDTCPU_CON1_Bits B;
} Ifx_SCU_WDTCPU_CON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_WDTCPU_SR_Bits B;
} Ifx_SCU_WDTCPU_SR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_WDTS_CON0_Bits B;
} Ifx_SCU_WDTS_CON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_WDTS_CON1_Bits B;
} Ifx_SCU_WDTS_CON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SCU_WDTS_SR_Bits B;
} Ifx_SCU_WDTS_SR;
# 2130 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_ESRCFGX
{
       Ifx_SCU_ESRCFGX_ESRCFGX ESRCFGX;
} Ifx_SCU_ESRCFGX;
# 2148 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTCPU
{
       Ifx_SCU_WDTCPU_CON0 CON0;
       Ifx_SCU_WDTCPU_CON1 CON1;
       Ifx_SCU_WDTCPU_SR SR;
} Ifx_SCU_WDTCPU;
# 2168 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU_WDTS
{
       Ifx_SCU_WDTS_CON0 CON0;
       Ifx_SCU_WDTS_CON1 CON1;
       Ifx_SCU_WDTS_SR SR;
} Ifx_SCU_WDTS;
# 2188 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
typedef volatile struct _Ifx_SCU
{
       Ifx_UReg_8Bit reserved_0[8];
       Ifx_SCU_ID ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_SCU_OSCCON OSCCON;
       Ifx_SCU_SYSPLLSTAT SYSPLLSTAT;
       Ifx_SCU_SYSPLLCON0 SYSPLLCON0;
       Ifx_SCU_SYSPLLCON1 SYSPLLCON1;
       Ifx_SCU_SYSPLLCON2 SYSPLLCON2;
       Ifx_SCU_PERPLLSTAT PERPLLSTAT;
       Ifx_SCU_PERPLLCON0 PERPLLCON0;
       Ifx_SCU_PERPLLCON1 PERPLLCON1;
       Ifx_SCU_CCUCON0 CCUCON0;
       Ifx_SCU_CCUCON1 CCUCON1;
       Ifx_SCU_FDR FDR;
       Ifx_SCU_EXTCON EXTCON;
       Ifx_SCU_CCUCON2 CCUCON2;
       Ifx_SCU_CCUCON3 CCUCON3;
       Ifx_SCU_CCUCON4 CCUCON4;
       Ifx_SCU_CCUCON5 CCUCON5;
       Ifx_SCU_RSTSTAT RSTSTAT;
       Ifx_UReg_8Bit reserved_54[4];
       Ifx_SCU_RSTCON RSTCON;
       Ifx_SCU_ARSTDIS ARSTDIS;
       Ifx_SCU_SWRSTCON SWRSTCON;
       Ifx_SCU_RSTCON2 RSTCON2;
       Ifx_SCU_RSTCON3 RSTCON3;
       Ifx_UReg_8Bit reserved_6C[4];
       Ifx_SCU_ESRCFGX ESRCFGX[2];
       Ifx_SCU_ESROCFG ESROCFG;
       Ifx_SCU_SYSCON SYSCON;
       Ifx_SCU_CCUCON6 CCUCON6;
       Ifx_SCU_CCUCON7 CCUCON7;
       Ifx_SCU_CCUCON8 CCUCON8;
       Ifx_SCU_CCUCON9 CCUCON9;
       Ifx_UReg_8Bit reserved_90[12];
       Ifx_SCU_PDR PDR;
       Ifx_SCU_IOCR IOCR;
       Ifx_SCU_OUT OUT;
       Ifx_SCU_OMR OMR;
       Ifx_SCU_IN IN;
       Ifx_UReg_8Bit reserved_B0[16];
       Ifx_SCU_STSTAT STSTAT;
       Ifx_SCU_STCON STCON;
       Ifx_SCU_PMCSR0 PMCSR0;
       Ifx_SCU_PMCSR1 PMCSR1;
       Ifx_SCU_PMCSR2 PMCSR2;
       Ifx_SCU_PMCSR3 PMCSR3;
       Ifx_SCU_PMCSR4 PMCSR4;
       Ifx_SCU_PMCSR5 PMCSR5;
       Ifx_UReg_8Bit reserved_E0[4];
       Ifx_SCU_PMSTAT0 PMSTAT0;
       Ifx_SCU_PMSWCR1 PMSWCR1;
       Ifx_UReg_8Bit reserved_EC[16];
       Ifx_SCU_EMSR EMSR;
       Ifx_SCU_EMSSW EMSSW;
       Ifx_SCU_DTSCSTAT DTSCSTAT;
       Ifx_SCU_DTSCLIM DTSCLIM;
       Ifx_UReg_8Bit reserved_10C[20];
       Ifx_SCU_TRAPDIS1 TRAPDIS1;
       Ifx_SCU_TRAPSTAT TRAPSTAT;
       Ifx_SCU_TRAPSET TRAPSET;
       Ifx_SCU_TRAPCLR TRAPCLR;
       Ifx_SCU_TRAPDIS0 TRAPDIS0;
       Ifx_SCU_LCLCON0 LCLCON0;
       Ifx_SCU_LCLCON1 LCLCON1;
       Ifx_SCU_LCLTEST LCLTEST;
       Ifx_SCU_CHIPID CHIPID;
       Ifx_SCU_MANID MANID;
       Ifx_UReg_8Bit reserved_148[4];
       Ifx_SCU_SWAPCTRL SWAPCTRL;
       Ifx_UReg_8Bit reserved_150[20];
       Ifx_SCU_LBISTCTRL0 LBISTCTRL0;
       Ifx_SCU_LBISTCTRL1 LBISTCTRL1;
       Ifx_SCU_LBISTCTRL2 LBISTCTRL2;
       Ifx_SCU_LBISTCTRL3 LBISTCTRL3;
       Ifx_UReg_8Bit reserved_174[16];
       Ifx_SCU_STMEM1 STMEM1;
       Ifx_SCU_STMEM2 STMEM2;
       Ifx_SCU_PDISC PDISC;
       Ifx_UReg_8Bit reserved_190[8];
       Ifx_SCU_PMTRCSR0 PMTRCSR0;
       Ifx_SCU_PMTRCSR1 PMTRCSR1;
       Ifx_SCU_PMTRCSR2 PMTRCSR2;
       Ifx_SCU_PMTRCSR3 PMTRCSR3;
       Ifx_UReg_8Bit reserved_1A8[24];
       Ifx_SCU_STMEM3 STMEM3;
       Ifx_SCU_STMEM4 STMEM4;
       Ifx_SCU_STMEM5 STMEM5;
       Ifx_SCU_STMEM6 STMEM6;
       Ifx_UReg_8Bit reserved_1D0[16];
       Ifx_SCU_OVCENABLE OVCENABLE;
       Ifx_SCU_OVCCON OVCCON;
       Ifx_UReg_8Bit reserved_1E8[36];
       Ifx_SCU_EIFILT EIFILT;
       Ifx_SCU_EICR EICR[4];
       Ifx_SCU_EIFR EIFR;
       Ifx_SCU_FMR FMR;
       Ifx_SCU_PDRR PDRR;
       Ifx_SCU_IGCR IGCR[4];
       Ifx_UReg_8Bit reserved_23C[16];
       Ifx_SCU_WDTCPU WDTCPU[4];
       Ifx_UReg_8Bit reserved_27C[32];
       Ifx_SCU_EICON0 EICON0;
       Ifx_SCU_EICON1 EICON1;
       Ifx_SCU_EISR EISR;
       Ifx_SCU_WDTS WDTS;
       Ifx_SCU_SEICON0 SEICON0;
       Ifx_SCU_SEICON1 SEICON1;
       Ifx_SCU_SEISR SEISR;
       Ifx_UReg_8Bit reserved_2C0[304];
       Ifx_SCU_ACCEN11 ACCEN11;
       Ifx_SCU_ACCEN10 ACCEN10;
       Ifx_SCU_ACCEN01 ACCEN01;
       Ifx_SCU_ACCEN00 ACCEN00;
} Ifx_SCU;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_reg.h" 2
# 2 ".\\output\\inc/IfxScu_reg.h" 2
# 27 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL.h" 2
# 59 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h" 1
# 97 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h"
#pragma section ".text" ax
# 60 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL.h" 2

boolean DEVHAL_bCheckEmulCard(void);
Std_ReturnType DEVHAL_udtCheckEngineState(void);


# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h" 1
# 156 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h"
#pragma section
# 66 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL.h" 2
# 2 ".\\output\\inc/DEVHAL.h" 2
# 63 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2
# 1 ".\\output\\inc/DEVHAL_Def.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_Def.h" 1
# 25 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_Def.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 26 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_Def.h" 2






# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h" 1
# 130 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h"
#pragma section ".bss" awB
# 33 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_Def.h" 2


# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h" 1
# 197 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h"
#pragma section
# 36 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_Def.h" 2


# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h" 1
# 139 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h"
#pragma section ".bss" awB
# 39 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_Def.h" 2

extern uint8 DEVHAL_u8CheckEngineState;


# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h" 1
# 208 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h"
#pragma section
# 44 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_Def.h" 2


# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h" 1
# 115 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h"
#pragma section ".data" aw
# 47 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_Def.h" 2


# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h" 1
# 178 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_MemMap.h"
#pragma section
# 50 ".\\output\\inc/..\\..\\bswcdd\\CCP\\DEVHAL\\DEVHAL_Def.h" 2
# 2 ".\\output\\inc/DEVHAL_Def.h" 2
# 64 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2

# 1 ".\\output\\inc/CALUSR.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CAL\\CALUSR.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CAL\\CALUSR.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CAL\\CALUSR.h" 2
# 53 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CAL\\CALUSR.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CAL\\CALUSR.h" 2
extern const uint32 CalUsr_ku32CalibUpdEnaMskA;
extern const uint32 CalUsr_ku32CalibUpdEnaMskB;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 58 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CAL\\CALUSR.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 65 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CAL\\CALUSR.h" 2
extern boolean CalUsr_bIsCalibUpdEna;
extern uint32 CalUsr_u32PODataCRC;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 69 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CAL\\CALUSR.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CAL\\CALUSR.h" 2
boolean CALUsr_bIsCalDownldEnabled(void);
boolean CalUsr_bVerifyCalData(void);
void CalUsr_vidInit(void);
void CalUsr_vidSchHandler(void);

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 82 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CAL\\CALUSR.h" 2
# 2 ".\\output\\inc/CALUSR.h" 2
# 66 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2
# 155 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
extern unsigned int __const_begin[];
extern unsigned int __const_end[];





# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".data_cpu0" aw
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 163 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2

boolean CCPUSR_bDaqListEnableEvent = (0 != 0);
uint8 CCPUSR_enuCalStoreStatus;
uint32 CCPUSR_u32ActivePageAddr;
uint32 CCPUSR_au32ReadOnlyMemoryZone[2*2];


# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 171 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 85 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".const" a
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 178 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2



const CCPUSR_tstrDaqListDynCfg CCPUSR_kstrDaqListDynCfgInin =
{
   {0},

   {0},
# 199 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
};



# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 122 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 204 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 211 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2





static CCP_tudtCmdSts CCPUSR_udtMemoryControlWriteRight
(
   uint8 * pu8SrcAddr,
   uint8 u8SizeOfData
)
{
   CCP_tudtCmdSts udtlocalStatus;
   uint16_least u16LocalLoop;

   udtlocalStatus = ((CCP_tudtCmdSts)0x33);

   for (u16LocalLoop = 0; u16LocalLoop < 2 * 7; u16LocalLoop += 2)
   {
      if ( ((uint32)pu8SrcAddr >= CCPUSR_kau32WritableMemoryZone[u16LocalLoop])
         && ((uint32)pu8SrcAddr <= (CCPUSR_kau32WritableMemoryZone[u16LocalLoop + 1] - u8SizeOfData)))
      {
         udtlocalStatus = ((CCP_tudtCmdSts)0x00);
      }
   }

   return (udtlocalStatus);
}






static CCP_tudtCmdSts CCPUSR_udtMemoryControlReadRight
(
   uint8 * pu8SrcAddr,
   uint8 u8SizeOfData
)
{
   CCP_tudtCmdSts udtlocalStatus;
   uint16_least u16LocalLoop;


   udtlocalStatus = ((CCP_tudtCmdSts)0x33);

   for (u16LocalLoop = 0; u16LocalLoop < 2 * 2; u16LocalLoop += 2)
   {
      if ( ((uint32)pu8SrcAddr >= CCPUSR_au32ReadOnlyMemoryZone[u16LocalLoop])
         && ((uint32)pu8SrcAddr <= (CCPUSR_au32ReadOnlyMemoryZone[u16LocalLoop + 1] - u8SizeOfData)))
      {
         udtlocalStatus = ((CCP_tudtCmdSts)0x00);
      }
   }

   if ( ((uint32)pu8SrcAddr >= (uint32)(&__const_begin))
       && ((uint32)pu8SrcAddr <= (uint32)((uint32)(&__const_end) - u8SizeOfData)))
   {
      udtlocalStatus = ((CCP_tudtCmdSts)0x00);
   }


   if (udtlocalStatus != ((CCP_tudtCmdSts)0x00))
   {
      udtlocalStatus = CCPUSR_udtMemoryControlWriteRight(pu8SrcAddr, u8SizeOfData);
   }

   return (udtlocalStatus);
}


# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 282 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2






# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 289 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2





void CCP_vidUsrIni(void)
{
   uint16 u16LocalIndex;

   CCPUSR_vidDaqListIni();

   CCPUSR_enuCalStoreStatus = 1U;

   CalUsr_bIsCalibUpdEna = (0 != 0);

   if (1)
   {
       if (DEVHAL_bCheckEmulCard() == (1 != 0))
       {
          CCPUSR_u32ActivePageAddr = 0x60018000;
       }
       else
       {
         CCPUSR_u32ActivePageAddr = 0x80058000;
       }
   }
   else
   {
       CCPUSR_u32ActivePageAddr = 0x80058000;
   }

   for (u16LocalIndex = 0; u16LocalIndex < (2*2); u16LocalIndex++)
   {
      CCPUSR_au32ReadOnlyMemoryZone[u16LocalIndex] = CCPUSR_kau32ReadOnlyMemoryZone[u16LocalIndex];
   }
}




void CCP_vidUsrNtfySsnTrmd(void)
{
}
# 381 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
CCP_tudtCmdSts CCP_udtUsrReadMem
(



   uint8 u8UsrSrv,

   const CCP_tstrMta * pkstrMta,

   uint8 * pu8Data,


   uint8 u8DataSize
)
{
   uint8_least u8LocalIdx;
   uint8 * pu8Src;
   CCP_tudtCmdSts udtLocalStatus;


   do { if ((u8UsrSrv) != 0) { } } while(0);

   pu8Src = (uint8 *)pkstrMta->u32Adr;

   udtLocalStatus = CCPUSR_udtMemoryControlReadRight(pu8Src, u8DataSize);
   if (udtLocalStatus == ((CCP_tudtCmdSts)0x00))
   {
      for (u8LocalIdx = 0; u8LocalIdx < u8DataSize; u8LocalIdx++)
      {
         *pu8Data = *pu8Src;
         pu8Data++;
         pu8Src++;
      }
   }
   return(udtLocalStatus);
}
# 442 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
CCP_tudtCmdSts CCP_udtUsrWrMem
(



   uint8 u8UsrSrv,

   const CCP_tstrMta * pkstrMta,

   const uint8 * pku8Data,


   uint8 u8DataSize
)
{
   uint32 u32LocAddr;
   uint8_least u8LocIdx;
   uint8 * pu8LocDst;
   CCP_tudtCmdSts udtLocalStatus;


   do { if ((u8UsrSrv) != 0) { } } while(0);

   u32LocAddr = pkstrMta->u32Adr;



   if (CCPUSR_u32ActivePageAddr == 0x60018000)
   {

      if ( (u32LocAddr >= (uint32)0x80058000)
         && (u32LocAddr < ((uint32)0x80058000 + 0x10000)) )
      {
         u32LocAddr = (u32LocAddr - 0x80058000)
                                               + 0x60018000;
      }
      else if( (u32LocAddr >= (uint32)0x80058000)
                && (u32LocAddr < ((uint32)0x80058000 + 0x8000) ) )
      {
         u32LocAddr = (u32LocAddr - 0x80058000)
                                                + 0x60018000;
      }
      else
      {

      }
   }

   pu8LocDst = (uint8 *)u32LocAddr;

   udtLocalStatus = CCPUSR_udtMemoryControlWriteRight(pu8LocDst, u8DataSize);
   if (udtLocalStatus == ((CCP_tudtCmdSts)0x00))
   {
      for (u8LocIdx = 0; u8LocIdx < u8DataSize; u8LocIdx++)
      {
         *pu8LocDst = *pku8Data;
         pku8Data++;
         pu8LocDst++;
      }

      if (CCPUSR_u32ActivePageAddr == 0x60018000)
      {

         do { (*(volatile Ifx_SCU_OVCCON*)0xF00361E4u).U = 0x0004000FU; } while (0U);
      }
   }
   return(udtLocalStatus);
}
# 530 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
      void CCP_vidUsrNtfyCalStoreSttChgd
      (

         boolean bCalStoreStt
      )
      {
         if (bCalStoreStt == (1 != 0))
         {
            CCPUSR_enuCalStoreStatus = 2U;
         }
         else
         {
            CCPUSR_enuCalStoreStatus = 1U;
         }
      }
# 607 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
   CCP_tudtCmdSts CCP_udtUsrSelCalPage
   (

      const CCP_tstrMta * pkstrMta
   )
   {
      CCP_tudtCmdSts udtReturnCode;

      udtReturnCode = ((CCP_tudtCmdSts)0x00);
      if (0)
      {
         if (pkstrMta->u32Adr == 0x80058000)
         {
            CCPUSR_u32ActivePageAddr = 0x80058000;
            udtReturnCode = ((CCP_tudtCmdSts)0x00);
         }
         else
         {
            if (pkstrMta->u32Adr == 0x60018000)
            {
               CCPUSR_u32ActivePageAddr = 0x60018000;
               udtReturnCode = ((CCP_tudtCmdSts)0x00);
            }

         }
      }
      return(udtReturnCode);
   }




   void CCP_vidUsrGetAcvCalPage
   (

      CCP_tstrMta * pstrMta
   )
   {

      pstrMta->u32Adr = CCPUSR_u32ActivePageAddr;
      pstrMta->u8Extn = 0;
   }
# 657 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
   CCP_tudtCmdSts CCP_udtUsrBldCks
   (

      const CCP_tstrMta * pkstrMta,


      uint32 u32BlkSize,



      uint8 * pu8CksSize,

      uint8 au8CksData[4]
   )
   {
      uint32 u32LocalIdx;
      uint8 * pu8Data;
      uint16 u16LocalChecksum;
      uint16 * pu16Cks;


      u16LocalChecksum = 0;
      pu8Data = (uint8 *)pkstrMta->u32Adr;
      for (u32LocalIdx = 0; u32LocalIdx < u32BlkSize; u32LocalIdx++)
      {
         u16LocalChecksum += *pu8Data;
         pu8Data++;
      }
      pu16Cks = (uint16 *)&au8CksData[0];
      *pu16Cks = u16LocalChecksum;
      *pu8CksSize = 2;
      return (((CCP_tudtCmdSts)0x00));
   }
# 857 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
void CCPUSR_vidMainFunction(void)
{
   uint8 u8LocalCheckEngineState;

   if (DEVHAL_bCheckEmulCard() == (1 != 0))
   {
      if (CCPUSR_enuCalStoreStatus == 4U)
      {
         DEVHAL_udtCheckEngineState();
         u8LocalCheckEngineState = DEVHAL_u8CheckEngineState;
         switch (u8LocalCheckEngineState)
         {
            case 1U:
               CCPUSR_enuCalStoreStatus = 8U;
               break;

            case 0U:
               CCPUSR_enuCalStoreStatus = 1U;



               CCP_u8SsnSts &= (uint8)(~0x40);
               break;

            case 2U:
               break;

            default:
               CCPUSR_enuCalStoreStatus = 1U;



               CCP_u8SsnSts &= (uint8)(~0x40);

               break;
         }
      }
   }
}
# 936 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c"
   void CCPUSR_DaqListSetEvent(uint8 u8EveChn)
   {
      if ( CCPUSR_bDaqListEnableEvent == (1 != 0) )
      {
         CCP_vidDaqListSetEvent (u8EveChn);
      }
   }



# 1 ".\\output\\inc/CCP_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 ".\\output\\inc/..\\..\\bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 2 ".\\output\\inc/CCP_MemMap.h" 2
# 947 "bswcdd\\CCP\\CCPUSR\\CCPUSR.c" 2
