# 1 "bswcdd\\CCP\\CCP\\CCP_Prg.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\CCP\\CCP\\CCP_Prg.c"
# 35 "bswcdd\\CCP\\CCP\\CCP_Prg.c"
# 1 "bswcdd\\CCP\\CCP\\CCP.h" 1
# 35 "bswcdd\\CCP\\CCP\\CCP.h"
# 1 "bswcdd\\CCP\\CCP\\CCP_Typ.h" 1
# 34 "bswcdd\\CCP\\CCP\\CCP_Typ.h"
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
# 35 "bswcdd\\CCP\\CCP\\CCP_Typ.h" 2
# 1 ".\\output\\inc/Std_Limits.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Limits.h" 1
# 2 ".\\output\\inc/Std_Limits.h" 2
# 36 "bswcdd\\CCP\\CCP\\CCP_Typ.h" 2
# 63 "bswcdd\\CCP\\CCP\\CCP_Typ.h"
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
# 36 "bswcdd\\CCP\\CCP\\CCP.h" 2
# 1 "bswcdd\\CCP\\CCP\\CCP_Cfg.h" 1
# 126 "bswcdd\\CCP\\CCP\\CCP_Cfg.h"
# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 85 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".const" a
# 127 "bswcdd\\CCP\\CCP\\CCP_Cfg.h" 2


extern const uint8 CCP_kaudtDevId[sizeof("A5H_BSWTC26")];


# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 122 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 133 "bswcdd\\CCP\\CCP\\CCP_Cfg.h" 2
# 37 "bswcdd\\CCP\\CCP\\CCP.h" 2
# 75 "bswcdd\\CCP\\CCP\\CCP.h"
# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 76 "bswcdd\\CCP\\CCP\\CCP.h" 2
# 93 "bswcdd\\CCP\\CCP\\CCP.h"
void CCP_vidIni
(

   const CCP_tstrIniPrms * pkstrIniPrms
);
# 115 "bswcdd\\CCP\\CCP\\CCP.h"
void CCP_vidMonr(void);
# 153 "bswcdd\\CCP\\CCP\\CCP.h"
CCP_tudtState CCP_udtGetState(void);
# 169 "bswcdd\\CCP\\CCP\\CCP.h"
   void CCP_vidDaqListSetEvent
   (
      uint8 u8EveChn

   );
# 194 "bswcdd\\CCP\\CCP\\CCP.h"
   void CCP_vidDaqListTxMgr
   (
      uint8 u8ListIdx

   );
# 271 "bswcdd\\CCP\\CCP\\CCP.h"
# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 272 "bswcdd\\CCP\\CCP\\CCP.h" 2
# 36 "bswcdd\\CCP\\CCP\\CCP_Prg.c" 2
# 1 "bswcdd\\CCP\\CCP\\CCP_L.h" 1
# 35 "bswcdd\\CCP\\CCP\\CCP_L.h"
# 1 "bswcdd\\CCP\\CCP\\CCP_Srv.h" 1
# 56 "bswcdd\\CCP\\CCP\\CCP_Srv.h"
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
# 36 "bswcdd\\CCP\\CCP\\CCP_L.h" 2
# 250 "bswcdd\\CCP\\CCP\\CCP_L.h"
# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 85 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".const" a
# 251 "bswcdd\\CCP\\CCP\\CCP_L.h" 2

extern const CCP_tpfudtSrvFcn CCP_kapfudtSrvFcn[36];
extern const CCP_tstrDaqListStatCfg CCP_kastrDaqListStatCfg[3];


# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 122 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 257 "bswcdd\\CCP\\CCP\\CCP_L.h" 2






# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 94 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".data_cpu0" aw
# 264 "bswcdd\\CCP\\CCP\\CCP_L.h" 2

extern CCP_tudtState CCP_udtState;

extern CCP_tuniPtclMsgBuf CCP_uniBuf;

extern CCP_tstrMta CCP_astrMta[1];


   extern uint8 CCP_u8SsnSts;
# 286 "bswcdd\\CCP\\CCP\\CCP_L.h"
   extern CCP_tstrDaqListSeldElm CCP_strDaqListSeldElm;

   extern uint8 CCP_u8DaqNoStrtdList;

   extern CCP_tstrDaqListDynCfg CCP_astrDaqListDynCfg[3];

extern boolean CCP_bFaultRecordReadFlag;


# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 133 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 296 "bswcdd\\CCP\\CCP\\CCP_L.h" 2






# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 303 "bswcdd\\CCP\\CCP\\CCP_L.h" 2


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
# 350 "bswcdd\\CCP\\CCP\\CCP_L.h"
   CCP_tudtCmdSts CCP_udtSelCalPage(void);


   CCP_tudtCmdSts CCP_udtGetAcvCalPage(void);


   CCP_tudtCmdSts CCP_udtBldCks(void);
# 382 "bswcdd\\CCP\\CCP\\CCP_L.h"
   void CCP_vidDaqListIni(void);
   CCP_tudtCmdSts CCP_udtGetDaqSize(void);
   CCP_tudtCmdSts CCP_udtSetDaqPtr(void);
   CCP_tudtCmdSts CCP_udtWrDaqElmCfg(void);
   CCP_tudtCmdSts CCP_udtStrtStop(void);
   CCP_tudtCmdSts CCP_udtStrtStopAll(void);
   void CCP_vidDaqListStop(uint8_least u8ListIdx);
   void CCP_vidDaqListStrt(uint8_least u8ListIdx, uint8_least u8Mod);



# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 394 "bswcdd\\CCP\\CCP\\CCP_L.h" 2
# 37 "bswcdd\\CCP\\CCP\\CCP_Prg.c" 2

# 1 "bswcdd\\CCP\\CCP\\CCP_Usr.h" 1
# 126 "bswcdd\\CCP\\CCP\\CCP_Usr.h"
# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 127 "bswcdd\\CCP\\CCP\\CCP_Usr.h" 2




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
# 191 "bswcdd\\CCP\\CCP\\CCP_Usr.h"
CCP_tudtCmdSts CCP_udtUsrReadMem
(



   uint8 u8UsrSrv,

   const CCP_tstrMta * pkstrMta,

   uint8 * pu8Data,


   uint8 u8DataSize
);
# 226 "bswcdd\\CCP\\CCP\\CCP_Usr.h"
CCP_tudtCmdSts CCP_udtUsrWrMem
(



   uint8 u8UsrSrv,

   const CCP_tstrMta * pkstrMta,

   const uint8 * pku8Data,


   uint8 u8DataSize
);
# 257 "bswcdd\\CCP\\CCP\\CCP_Usr.h"
      void CCP_vidUsrNtfyCalStoreSttChgd
      (

         boolean bCalStoreStt
      );
# 314 "bswcdd\\CCP\\CCP\\CCP_Usr.h"
   CCP_tudtCmdSts CCP_udtUsrSelCalPage
   (

      const CCP_tstrMta * pkstrMta
   );




   void CCP_vidUsrGetAcvCalPage
   (

      CCP_tstrMta * pstrMta
   );
# 336 "bswcdd\\CCP\\CCP\\CCP_Usr.h"
   CCP_tudtCmdSts CCP_udtUsrBldCks
   (

      const CCP_tstrMta * pkstrMta,


      uint32 u32BlkSize,



      uint8 * pu8CksSize,

      uint8 au8CksData[4]
   );
# 477 "bswcdd\\CCP\\CCP\\CCP_Usr.h"
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
# 586 "bswcdd\\CCP\\CCP\\CCP_Usr.h"
# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 587 "bswcdd\\CCP\\CCP\\CCP_Usr.h" 2
# 39 "bswcdd\\CCP\\CCP\\CCP_Prg.c" 2
# 63 "bswcdd\\CCP\\CCP\\CCP_Prg.c"
# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 76 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section ".text" ax
# 64 "bswcdd\\CCP\\CCP\\CCP_Prg.c" 2
# 355 "bswcdd\\CCP\\CCP\\CCP_Prg.c"
# 1 "bswcdd\\CCP\\CCP\\CCP_MemMap.h" 1
# 111 "bswcdd\\CCP\\CCP\\CCP_MemMap.h"
#pragma section
# 356 "bswcdd\\CCP\\CCP\\CCP_Prg.c" 2
