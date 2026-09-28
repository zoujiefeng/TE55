# 1 "bswcdd\\CCU6\\CCU6_Hal.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\CCU6\\CCU6_Hal.c"

# 1 ".\\output\\inc/Os_DisableInterrupts.h" 1
# 1 ".\\output\\inc/..\\..\\os\\Os_DisableInterrupts.h" 1
# 29 ".\\output\\inc/..\\..\\os\\Os_DisableInterrupts.h"
typedef signed int signed_sfr_access_type;
typedef unsigned int unsigned_sfr_access_type;



typedef unsigned int sfr_bitfield;

typedef volatile union
{
 struct
 {
     sfr_bitfield DISR : 1;
                sfr_bitfield DISS : 1;
     sfr_bitfield resv2 : 1;
     sfr_bitfield EDIS : 1;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_CLC_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ALTI : 3;
     sfr_bitfield resv3 : 1;
     sfr_bitfield DEPTH : 6;
     sfr_bitfield resv10 : 6;
     sfr_bitfield CTS : 2;
     sfr_bitfield resv18 : 7;
     sfr_bitfield RCPOL : 1;
     sfr_bitfield CPOL : 1;
     sfr_bitfield SPOL : 1;
     sfr_bitfield LB : 1;
     sfr_bitfield CTSEN : 1;
                sfr_bitfield RXM : 1;
                sfr_bitfield TXM : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_IOCR_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield MODREV : 8;
                sfr_bitfield MODTYPE : 8;
                sfr_bitfield MODNUMBER : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_ID_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield FLUSH : 1;
     sfr_bitfield ENO : 1;
     sfr_bitfield resv2 : 2;
     sfr_bitfield FM : 2;
     sfr_bitfield INW : 2;
     sfr_bitfield INTLEVEL : 4;
     sfr_bitfield resv12 : 4;
                sfr_bitfield FILL : 5;
     sfr_bitfield resv21 : 11;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_TXFIFOCON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield FLUSH : 1;
     sfr_bitfield ENI : 1;
     sfr_bitfield resv2 : 2;
     sfr_bitfield FM : 2;
     sfr_bitfield OUTW : 2;
     sfr_bitfield INTLEVEL : 4;
     sfr_bitfield resv12 : 4;
                sfr_bitfield FILL : 5;
     sfr_bitfield resv21 : 10;
     sfr_bitfield BUF : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_RXFIFOCON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PRESCALER : 12;
     sfr_bitfield resv12 : 4;
     sfr_bitfield OVERSAMPLING : 4;
     sfr_bitfield resv20 : 4;
     sfr_bitfield SAMPLEPOINT : 4;
     sfr_bitfield resv28 : 3;
     sfr_bitfield SM : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_BITCON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 6;
     sfr_bitfield IDLE : 3;
     sfr_bitfield STOP : 3;
     sfr_bitfield LEAD : 3;
     sfr_bitfield resv15 : 1;
     sfr_bitfield MODE : 2;
     sfr_bitfield resv18 : 10;
     sfr_bitfield MSB : 1;
     sfr_bitfield CEN : 1;
     sfr_bitfield PEN : 1;
     sfr_bitfield ODD : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_FRAMECON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield DATLEN : 4;
     sfr_bitfield resv4 : 9;
     sfr_bitfield HO : 1;
     sfr_bitfield RM : 1;
     sfr_bitfield CSM : 1;
     sfr_bitfield RESPONSE : 8;
     sfr_bitfield resv24 : 8;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_DATCON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield DENOMINATOR : 12;
     sfr_bitfield resv12 : 4;
     sfr_bitfield NUMERATOR : 12;
     sfr_bitfield resv28 : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_BRG_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield LOWERLIMIT : 8;
     sfr_bitfield UPPERLIMIT : 8;
                sfr_bitfield MEASURED : 12;
     sfr_bitfield resv28 : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_BRD_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 23;
     sfr_bitfield CSI : 1;
     sfr_bitfield resv24 : 1;
     sfr_bitfield CSEN : 1;
     sfr_bitfield MS : 1;
     sfr_bitfield ABD : 1;
     sfr_bitfield resv28 : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_LINCON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield BREAK : 6;
     sfr_bitfield resv6 : 26;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_LINBTIMER_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield HEADER : 8;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_LINHTIMER_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield TH : 1;
                sfr_bitfield TR : 1;
                sfr_bitfield RH : 1;
                sfr_bitfield RR : 1;
     sfr_bitfield resv4 : 1;
                sfr_bitfield FED : 1;
                sfr_bitfield RED : 1;
     sfr_bitfield resv7 : 6;
                sfr_bitfield TWRQ : 1;
                sfr_bitfield THRQ : 1;
                sfr_bitfield TRRQ : 1;
                sfr_bitfield PE : 1;
                sfr_bitfield TC : 1;
                sfr_bitfield FE : 1;
                sfr_bitfield HT : 1;
                sfr_bitfield RT : 1;
                sfr_bitfield BD : 1;
                sfr_bitfield LP : 1;
                sfr_bitfield LA : 1;
                sfr_bitfield LC : 1;
                sfr_bitfield CE : 1;
                sfr_bitfield RFO : 1;
                sfr_bitfield RFU : 1;
                sfr_bitfield RFL : 1;
     sfr_bitfield resv29 : 1;
                sfr_bitfield TFO : 1;
                sfr_bitfield TFL : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_FLAGS_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield THS : 1;
     sfr_bitfield TRS : 1;
     sfr_bitfield RHS : 1;
     sfr_bitfield RRS : 1;
     sfr_bitfield resv4 : 1;
     sfr_bitfield FEDS : 1;
     sfr_bitfield REDS : 1;
     sfr_bitfield resv7 : 6;
     sfr_bitfield TWRQS : 1;
     sfr_bitfield THRQS : 1;
     sfr_bitfield TRRQS : 1;
     sfr_bitfield PES : 1;
     sfr_bitfield TCS : 1;
     sfr_bitfield FES : 1;
     sfr_bitfield HTS : 1;
     sfr_bitfield RTS : 1;
     sfr_bitfield BDS : 1;
     sfr_bitfield LPS : 1;
     sfr_bitfield LAS : 1;
     sfr_bitfield LCS : 1;
     sfr_bitfield CES : 1;
     sfr_bitfield RFOS : 1;
     sfr_bitfield RFUS : 1;
     sfr_bitfield RFLS : 1;
     sfr_bitfield resv29 : 1;
     sfr_bitfield TFOS : 1;
     sfr_bitfield TFLS : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_FLAGSSET_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield THC : 1;
     sfr_bitfield TRC : 1;
     sfr_bitfield RHC : 1;
     sfr_bitfield RRC : 1;
     sfr_bitfield resv4 : 1;
     sfr_bitfield FEDC : 1;
     sfr_bitfield REDC : 1;
     sfr_bitfield resv7 : 6;
     sfr_bitfield TWRQC : 1;
     sfr_bitfield THRQC : 1;
     sfr_bitfield TRRQC : 1;
     sfr_bitfield PEC : 1;
     sfr_bitfield TCC : 1;
     sfr_bitfield FEC : 1;
     sfr_bitfield HTC : 1;
     sfr_bitfield RTC : 1;
     sfr_bitfield BDC : 1;
     sfr_bitfield LPC : 1;
     sfr_bitfield LAC : 1;
     sfr_bitfield LCC : 1;
     sfr_bitfield CEC : 1;
     sfr_bitfield RFOC : 1;
     sfr_bitfield RFUC : 1;
     sfr_bitfield RFLC : 1;
     sfr_bitfield resv29 : 1;
     sfr_bitfield TFOC : 1;
     sfr_bitfield TFLC : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_FLAGSCLEAR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield THE : 1;
     sfr_bitfield TRE : 1;
     sfr_bitfield RHE : 1;
     sfr_bitfield RRE : 1;
     sfr_bitfield resv4 : 1;
     sfr_bitfield FEDE : 1;
     sfr_bitfield REDE : 1;
     sfr_bitfield resv7 : 9;
     sfr_bitfield PEE : 1;
     sfr_bitfield TCE : 1;
     sfr_bitfield FEE : 1;
     sfr_bitfield HTE : 1;
     sfr_bitfield RTE : 1;
     sfr_bitfield BDE : 1;
     sfr_bitfield LPE : 1;
     sfr_bitfield LAE : 1;
     sfr_bitfield LCE : 1;
     sfr_bitfield CEE : 1;
     sfr_bitfield RFOE : 1;
     sfr_bitfield RFUE : 1;
     sfr_bitfield RFLE : 1;
     sfr_bitfield resv29 : 1;
     sfr_bitfield TFOE : 1;
     sfr_bitfield TFLE : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_FLAGSENABLE_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield DATA : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_TXDATA_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CLKSEL : 5;
     sfr_bitfield resv5 : 26;
                sfr_bitfield CON : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_CSR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 24;
     sfr_bitfield SUS : 4;
     sfr_bitfield SUS_P : 1;
                sfr_bitfield SUSSTA : 1;
     sfr_bitfield resv30 : 2;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_OCS_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CLR : 1;
     sfr_bitfield resv1 : 31;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_KRSTCLR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield RST : 1;
     sfr_bitfield resv1 : 31;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_KRST1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield RST : 1;
                sfr_bitfield RSTSTAT : 1;
     sfr_bitfield resv2 : 30;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_KRST0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_ACCEN1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN0 : 1;
     sfr_bitfield EN1 : 1;
     sfr_bitfield EN2 : 1;
     sfr_bitfield EN3 : 1;
     sfr_bitfield EN4 : 1;
     sfr_bitfield EN5 : 1;
     sfr_bitfield EN6 : 1;
     sfr_bitfield EN7 : 1;
     sfr_bitfield EN8 : 1;
     sfr_bitfield EN9 : 1;
     sfr_bitfield EN10 : 1;
     sfr_bitfield EN11 : 1;
     sfr_bitfield EN12 : 1;
     sfr_bitfield EN13 : 1;
     sfr_bitfield EN14 : 1;
     sfr_bitfield EN15 : 1;
     sfr_bitfield EN16 : 1;
     sfr_bitfield EN17 : 1;
     sfr_bitfield EN18 : 1;
     sfr_bitfield EN19 : 1;
     sfr_bitfield EN20 : 1;
     sfr_bitfield EN21 : 1;
     sfr_bitfield EN22 : 1;
     sfr_bitfield EN23 : 1;
     sfr_bitfield EN24 : 1;
     sfr_bitfield EN25 : 1;
     sfr_bitfield EN26 : 1;
     sfr_bitfield EN27 : 1;
     sfr_bitfield EN28 : 1;
     sfr_bitfield EN29 : 1;
     sfr_bitfield EN30 : 1;
     sfr_bitfield EN31 : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} ASCLIN0_ACCEN0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 24;
     sfr_bitfield IODT : 1;
     sfr_bitfield resv25 : 7;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SMACON_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield TA : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DIEAR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield IED : 1;
                sfr_bitfield IE_T : 1;
                sfr_bitfield IE_C : 1;
                sfr_bitfield IE_S : 1;
                sfr_bitfield IE_BI : 1;
                sfr_bitfield E_INFO : 6;
                sfr_bitfield IE_UNC : 1;
                sfr_bitfield IE_SP : 1;
                sfr_bitfield IE_BS : 1;
                sfr_bitfield IE_DLMU : 1;
                sfr_bitfield IE_LPB : 1;
                sfr_bitfield IE_MTMV : 1;
     sfr_bitfield resv17 : 15;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DIETR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield IED : 1;
                sfr_bitfield IE_T : 1;
                sfr_bitfield IE_C : 1;
                sfr_bitfield IE_S : 1;
                sfr_bitfield IE_BI : 1;
                sfr_bitfield E_INFO : 6;
                sfr_bitfield IE_UNC : 1;
                sfr_bitfield IE_SP : 1;
                sfr_bitfield IE_BS : 1;
                sfr_bitfield IE_ADDR : 1;
                sfr_bitfield IE_LPB : 1;
                sfr_bitfield IE_MTMV : 1;
     sfr_bitfield resv17 : 15;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PIETR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ASI : 5;
     sfr_bitfield resv5 : 27;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TASK_ASI_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield DAC : 16;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PMA0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CAC : 16;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PMA1_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield PSI : 16;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PMA2_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 3;
     sfr_bitfield RM : 1;
     sfr_bitfield SP : 1;
     sfr_bitfield resv5 : 27;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_COMPAT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PCXO : 16;
     sfr_bitfield PCXS : 4;
     sfr_bitfield UL : 1;
     sfr_bitfield PIE : 1;
     sfr_bitfield PCPN : 8;
     sfr_bitfield resv30 : 2;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PCXI_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CDC : 7;
     sfr_bitfield CDE : 1;
     sfr_bitfield GW : 1;
     sfr_bitfield IS : 1;
     sfr_bitfield IO : 2;
     sfr_bitfield PRS : 2;
     sfr_bitfield S : 1;
     sfr_bitfield PRS2 : 1;
     sfr_bitfield resv16 : 8;
     sfr_bitfield USB : 8;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PSW_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
     sfr_bitfield PC : 31;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PC_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield FCDSF : 1;
     sfr_bitfield PROTEN : 1;
     sfr_bitfield TPROTEN : 1;
     sfr_bitfield IS : 1;
     sfr_bitfield TS : 1;
     sfr_bitfield resv5 : 3;
     sfr_bitfield ESDIS : 1;
     sfr_bitfield resv9 : 7;
     sfr_bitfield U1_IED : 1;
     sfr_bitfield U1_IOS : 1;
     sfr_bitfield resv18 : 6;
     sfr_bitfield BHALT : 1;
     sfr_bitfield resv25 : 7;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SYSCON_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield MOD_REV : 8;
                sfr_bitfield MOD_32B : 8;
                sfr_bitfield MOD : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CPU_ID_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield CORE_ID : 3;
     sfr_bitfield resv3 : 29;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CORE_ID_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield VSS : 1;
     sfr_bitfield BIV : 31;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_BIV_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
     sfr_bitfield BTV : 31;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_BTV_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ISP : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_ISP_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CCPN : 8;
     sfr_bitfield resv8 : 7;
     sfr_bitfield IE : 1;
                sfr_bitfield PIPN : 8;
     sfr_bitfield resv24 : 8;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_ICR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield FCXO : 16;
     sfr_bitfield FCXS : 4;
     sfr_bitfield resv20 : 12;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FCX_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield LCXO : 16;
     sfr_bitfield LCXS : 4;
     sfr_bitfield resv20 : 12;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_LCX_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield CID : 3;
     sfr_bitfield resv3 : 29;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CUS_ID_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield DATA : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_D0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ADDR : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_A0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 3;
     sfr_bitfield LOWBND : 29;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DPR0_L_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 3;
     sfr_bitfield UPPBND : 29;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DPR0_U_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 5;
     sfr_bitfield LOWBND : 27;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CPR0_L_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 5;
     sfr_bitfield UPPBND : 27;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CPR0_U_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield XE_n : 10;
     sfr_bitfield resv10 : 22;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CPXE_0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield RE_n : 18;
     sfr_bitfield resv18 : 14;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DPRE_0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield WE_n : 18;
     sfr_bitfield resv18 : 14;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DPWE_0_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield TEXP0 : 1;
                sfr_bitfield TEXP1 : 1;
                sfr_bitfield TEXP2 : 1;
     sfr_bitfield resv3 : 13;
                sfr_bitfield TTRAP : 1;
     sfr_bitfield resv17 : 15;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_CON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield Timer : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_TIMER0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 4;
     sfr_bitfield ENTRY_LVAL : 8;
     sfr_bitfield resv12 : 20;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_ENTRY_LVAL_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield ENTRY_CVAL : 12;
     sfr_bitfield resv12 : 20;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_ENTRY_CVAL_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 4;
     sfr_bitfield EXIT_LVAL : 20;
     sfr_bitfield resv24 : 8;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_EXIT_LVAL_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield EXIT_CVAL : 24;
     sfr_bitfield resv24 : 8;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_EXIT_CVAL_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EXTIM_CLASS_EN : 8;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_CLASS_EN_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EXIT_TIN : 8;
     sfr_bitfield EXIT_CLASS : 3;
     sfr_bitfield resv11 : 4;
                sfr_bitfield EXIT_AT : 1;
     sfr_bitfield ENTRY_TIN : 8;
     sfr_bitfield ENTRY_CLASS : 3;
     sfr_bitfield resv27 : 4;
                sfr_bitfield ENTRY_AT : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_STAT_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield EXIT_FCX : 20;
     sfr_bitfield resv20 : 12;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TPS_EXTIM_FCX_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield TST : 1;
     sfr_bitfield TCL : 1;
     sfr_bitfield resv2 : 6;
                sfr_bitfield RM : 2;
     sfr_bitfield resv10 : 8;
     sfr_bitfield FXE : 1;
     sfr_bitfield FUE : 1;
     sfr_bitfield FZE : 1;
     sfr_bitfield FVE : 1;
     sfr_bitfield FIE : 1;
     sfr_bitfield resv23 : 3;
                sfr_bitfield FX : 1;
                sfr_bitfield FU : 1;
                sfr_bitfield FZ : 1;
                sfr_bitfield FV : 1;
                sfr_bitfield FI : 1;
     sfr_bitfield resv31 : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FPU_TRAP_CON_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield PC : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FPU_TRAP_PC_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield OPC : 8;
                sfr_bitfield FMT : 1;
     sfr_bitfield resv9 : 7;
                sfr_bitfield DREG : 4;
     sfr_bitfield resv20 : 12;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FPU_TRAP_OPC_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield SRC1 : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FPU_TRAP_SRC1_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield SRC2 : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FPU_TRAP_SRC2_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield SRC3 : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FPU_TRAP_SRC3_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EVTA : 3;
     sfr_bitfield BBM : 1;
     sfr_bitfield BOD : 1;
     sfr_bitfield SUSP : 1;
     sfr_bitfield CNT : 2;
     sfr_bitfield resv8 : 4;
     sfr_bitfield TYP : 1;
     sfr_bitfield RNG : 1;
     sfr_bitfield resv14 : 1;
     sfr_bitfield ASI_EN : 1;
     sfr_bitfield ASI : 5;
     sfr_bitfield resv21 : 6;
     sfr_bitfield AST : 1;
     sfr_bitfield ALD : 1;
     sfr_bitfield resv29 : 3;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TR0EVT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ADDR : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TR0ADR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CM : 1;
     sfr_bitfield CE : 1;
     sfr_bitfield M1 : 3;
     sfr_bitfield M2 : 3;
     sfr_bitfield M3 : 3;
     sfr_bitfield resv11 : 21;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CCTRL_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CountValue : 31;
     sfr_bitfield SOvf : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_CCNT_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield DE : 1;
     sfr_bitfield HALT : 2;
                sfr_bitfield SIH : 1;
     sfr_bitfield SUSP : 1;
     sfr_bitfield resv5 : 1;
                sfr_bitfield PREVSUSP : 1;
     sfr_bitfield PEVT : 1;
                sfr_bitfield EVTSRC : 5;
     sfr_bitfield resv13 : 19;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DBGSR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EVTA : 3;
     sfr_bitfield BBM : 1;
     sfr_bitfield BOD : 1;
     sfr_bitfield SUSP : 1;
     sfr_bitfield CNT : 2;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_EXEVT_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield T0 : 1;
                sfr_bitfield T1 : 1;
                sfr_bitfield T2 : 1;
                sfr_bitfield T3 : 1;
                sfr_bitfield T4 : 1;
                sfr_bitfield T5 : 1;
                sfr_bitfield T6 : 1;
                sfr_bitfield T7 : 1;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_TRIG_ACC_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
     sfr_bitfield DMSValue : 31;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DMS_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 6;
     sfr_bitfield DCXValue : 26;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DCX_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield DTA : 1;
     sfr_bitfield resv1 : 31;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DBGTCR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ADFLIP : 8;
     sfr_bitfield ADTYPE : 2;
     sfr_bitfield resv10 : 21;
     sfr_bitfield AE : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SEGEN_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield DCACHE_SZE : 16;
                sfr_bitfield DSCRATCH_SZE : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DCON2_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield SRE : 1;
     sfr_bitfield GAE : 1;
     sfr_bitfield LBE : 1;
     sfr_bitfield DRE : 1;
     sfr_bitfield resv4 : 2;
     sfr_bitfield CRE : 1;
     sfr_bitfield resv7 : 7;
     sfr_bitfield DTME : 1;
     sfr_bitfield LOE : 1;
     sfr_bitfield SDE : 1;
     sfr_bitfield SCE : 1;
     sfr_bitfield CAC : 1;
     sfr_bitfield MPE : 1;
     sfr_bitfield CLE : 1;
     sfr_bitfield resv21 : 3;
     sfr_bitfield ALN : 1;
     sfr_bitfield resv25 : 7;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DSTR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 3;
     sfr_bitfield SBE : 1;
     sfr_bitfield resv4 : 5;
     sfr_bitfield CWE : 1;
     sfr_bitfield CFE : 1;
     sfr_bitfield resv11 : 3;
     sfr_bitfield SOE : 1;
     sfr_bitfield resv15 : 17;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DATR_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield ERROR_ADDRESS : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DEADD_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
     sfr_bitfield DCBYP : 1;
     sfr_bitfield resv2 : 30;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_DCON0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield FRE : 1;
     sfr_bitfield resv1 : 1;
     sfr_bitfield FBE : 1;
     sfr_bitfield resv3 : 9;
     sfr_bitfield FPE : 1;
     sfr_bitfield resv13 : 1;
     sfr_bitfield FME : 1;
     sfr_bitfield resv15 : 17;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PSTR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PCINV : 1;
     sfr_bitfield PBINV : 1;
     sfr_bitfield resv2 : 30;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PCON1_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield PCACHE_SZE : 16;
                sfr_bitfield PSCRATCH_SZE : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PCON2_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
     sfr_bitfield PCBYP : 1;
     sfr_bitfield resv2 : 30;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_PCON0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 5;
     sfr_bitfield ADDR : 27;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SPR_SPROT_RGNLA0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 5;
     sfr_bitfield ADDR : 27;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SPR_SPROT_RGNUA0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SPR_SPROT_RGNACCENA0_W_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SPR_SPROT_RGNACCENB0_W_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SPR_SPROT_RGNACCENA0_R_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SPR_SPROT_RGNACCENB0_R_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SFR_SPROT_ACCENA_W_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_SFR_SPROT_ACCENB_W_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield RST : 1;
                sfr_bitfield RSTSTAT : 2;
     sfr_bitfield resv3 : 29;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_KRST0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield TAG1 : 6;
     sfr_bitfield resv6 : 2;
     sfr_bitfield TAG2 : 6;
     sfr_bitfield resv14 : 2;
     sfr_bitfield TAG3 : 6;
     sfr_bitfield resv22 : 2;
     sfr_bitfield TAG4 : 6;
     sfr_bitfield resv30 : 2;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FLASHCON0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield STALL : 1;
     sfr_bitfield resv1 : 15;
     sfr_bitfield MASKUECC : 2;
     sfr_bitfield resv18 : 14;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FLASHCON1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield RECDIS : 2;
     sfr_bitfield ECCCORDIS : 2;
     sfr_bitfield resv4 : 4;
     sfr_bitfield HMARGIN : 2;
     sfr_bitfield MSEL : 2;
     sfr_bitfield resv12 : 4;
     sfr_bitfield ECCSCLR : 2;
     sfr_bitfield resv18 : 6;
     sfr_bitfield SBABCLR : 2;
     sfr_bitfield DBABCLR : 2;
     sfr_bitfield MBABCLR : 2;
     sfr_bitfield ZBABCLR : 2;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FLASHCON2_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ECCERRINJ : 1;
     sfr_bitfield EDCERRINJ : 1;
     sfr_bitfield SBABERRINJ : 1;
     sfr_bitfield DBABERRINJ : 1;
     sfr_bitfield MBABERRINJ : 1;
     sfr_bitfield ZBABERRINJ : 1;
     sfr_bitfield SBERERRINJ : 1;
     sfr_bitfield DBERERRINJ : 1;
     sfr_bitfield NVMCERRINJ : 1;
     sfr_bitfield FLCONERRINJ : 1;
     sfr_bitfield resv10 : 22;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FLASHCON3_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield DDIS : 1;
     sfr_bitfield resv1 : 31;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_FLASHCON4_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield SHOVEN_x : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_OSEL_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 5;
     sfr_bitfield OBASE : 17;
     sfr_bitfield resv22 : 2;
     sfr_bitfield OMEM : 4;
     sfr_bitfield resv28 : 3;
     sfr_bitfield OVEN : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_RABR0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 5;
     sfr_bitfield TBASE : 23;
     sfr_bitfield resv28 : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_OTAR0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 5;
     sfr_bitfield OMASK : 12;
                sfr_bitfield ONE : 11;
     sfr_bitfield resv28 : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} CPU0_OMASK0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield SRPN : 8;
     sfr_bitfield resv8 : 2;
     sfr_bitfield SRE : 1;
     sfr_bitfield TOS : 3;
     sfr_bitfield resv14 : 2;
     sfr_bitfield ECC : 5;
     sfr_bitfield resv21 : 3;
                sfr_bitfield SRR : 1;
     sfr_bitfield CLRR : 1;
     sfr_bitfield SETR : 1;
                sfr_bitfield IOV : 1;
     sfr_bitfield IOVCLR : 1;
                sfr_bitfield SWS : 1;
     sfr_bitfield SWSCLR : 1;
     sfr_bitfield resv31 : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SRC_CPU0SB_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield P0 : 1;
     sfr_bitfield P1 : 1;
     sfr_bitfield P2 : 1;
     sfr_bitfield P3 : 1;
     sfr_bitfield P4 : 1;
     sfr_bitfield P5 : 1;
     sfr_bitfield P6 : 1;
     sfr_bitfield P7 : 1;
     sfr_bitfield P8 : 1;
     sfr_bitfield P9 : 1;
     sfr_bitfield P10 : 1;
     sfr_bitfield P11 : 1;
     sfr_bitfield P12 : 1;
     sfr_bitfield P13 : 1;
     sfr_bitfield P14 : 1;
     sfr_bitfield P15 : 1;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OUT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield P0 : 1;
     sfr_bitfield P1 : 1;
     sfr_bitfield P2 : 1;
     sfr_bitfield P3 : 1;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P12_OUT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield P0 : 1;
     sfr_bitfield P1 : 1;
     sfr_bitfield P2 : 1;
     sfr_bitfield P3 : 1;
     sfr_bitfield P4 : 1;
     sfr_bitfield P5 : 1;
     sfr_bitfield P6 : 1;
     sfr_bitfield P7 : 1;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P21_OUT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield P0 : 1;
     sfr_bitfield P1 : 1;
     sfr_bitfield P2 : 1;
     sfr_bitfield P3 : 1;
     sfr_bitfield P4 : 1;
     sfr_bitfield P5 : 1;
     sfr_bitfield P6 : 1;
     sfr_bitfield P7 : 1;
     sfr_bitfield P8 : 1;
     sfr_bitfield P9 : 1;
     sfr_bitfield P10 : 1;
     sfr_bitfield P11 : 1;
     sfr_bitfield resv12 : 20;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P22_OUT_type;
typedef volatile union
{
 struct
 {
             sfr_bitfield PS0 : 1;
             sfr_bitfield PS1 : 1;
             sfr_bitfield PS2 : 1;
             sfr_bitfield PS3 : 1;
             sfr_bitfield PS4 : 1;
             sfr_bitfield PS5 : 1;
             sfr_bitfield PS6 : 1;
             sfr_bitfield PS7 : 1;
             sfr_bitfield PS8 : 1;
             sfr_bitfield PS9 : 1;
             sfr_bitfield PS10 : 1;
             sfr_bitfield PS11 : 1;
             sfr_bitfield PS12 : 1;
             sfr_bitfield PS13 : 1;
             sfr_bitfield PS14 : 1;
             sfr_bitfield PS15 : 1;
             sfr_bitfield PCL0 : 1;
             sfr_bitfield PCL1 : 1;
             sfr_bitfield PCL2 : 1;
             sfr_bitfield PCL3 : 1;
             sfr_bitfield PCL4 : 1;
             sfr_bitfield PCL5 : 1;
             sfr_bitfield PCL6 : 1;
             sfr_bitfield PCL7 : 1;
             sfr_bitfield PCL8 : 1;
             sfr_bitfield PCL9 : 1;
             sfr_bitfield PCL10 : 1;
             sfr_bitfield PCL11 : 1;
             sfr_bitfield PCL12 : 1;
             sfr_bitfield PCL13 : 1;
             sfr_bitfield PCL14 : 1;
             sfr_bitfield PCL15 : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMR_type;
typedef volatile union
{
 struct
 {
             sfr_bitfield PS0 : 1;
             sfr_bitfield PS1 : 1;
             sfr_bitfield PS2 : 1;
             sfr_bitfield PS3 : 1;
     sfr_bitfield resv4 : 12;
             sfr_bitfield PCL0 : 1;
             sfr_bitfield PCL1 : 1;
             sfr_bitfield PCL2 : 1;
             sfr_bitfield PCL3 : 1;
     sfr_bitfield resv20 : 12;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P12_OMR_type;
typedef volatile union
{
 struct
 {
             sfr_bitfield PS0 : 1;
             sfr_bitfield PS1 : 1;
             sfr_bitfield PS2 : 1;
             sfr_bitfield PS3 : 1;
             sfr_bitfield PS4 : 1;
             sfr_bitfield PS5 : 1;
             sfr_bitfield PS6 : 1;
             sfr_bitfield PS7 : 1;
     sfr_bitfield resv8 : 8;
             sfr_bitfield PCL0 : 1;
             sfr_bitfield PCL1 : 1;
             sfr_bitfield PCL2 : 1;
             sfr_bitfield PCL3 : 1;
             sfr_bitfield PCL4 : 1;
             sfr_bitfield PCL5 : 1;
             sfr_bitfield PCL6 : 1;
             sfr_bitfield PCL7 : 1;
     sfr_bitfield resv24 : 8;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P21_OMR_type;
typedef volatile union
{
 struct
 {
             sfr_bitfield PS0 : 1;
             sfr_bitfield PS1 : 1;
             sfr_bitfield PS2 : 1;
             sfr_bitfield PS3 : 1;
             sfr_bitfield PS4 : 1;
             sfr_bitfield PS5 : 1;
             sfr_bitfield PS6 : 1;
             sfr_bitfield PS7 : 1;
             sfr_bitfield PS8 : 1;
             sfr_bitfield PS9 : 1;
             sfr_bitfield PS10 : 1;
             sfr_bitfield PS11 : 1;
     sfr_bitfield resv12 : 4;
             sfr_bitfield PCL0 : 1;
             sfr_bitfield PCL1 : 1;
             sfr_bitfield PCL2 : 1;
             sfr_bitfield PCL3 : 1;
             sfr_bitfield PCL4 : 1;
             sfr_bitfield PCL5 : 1;
             sfr_bitfield PCL6 : 1;
             sfr_bitfield PCL7 : 1;
             sfr_bitfield PCL8 : 1;
             sfr_bitfield PCL9 : 1;
             sfr_bitfield PCL10 : 1;
             sfr_bitfield PCL11 : 1;
     sfr_bitfield resv28 : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P22_OMR_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield MODREV : 8;
                sfr_bitfield MODTYPE : 8;
                sfr_bitfield MODNUMBER : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_ID_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 3;
     sfr_bitfield PC0 : 5;
     sfr_bitfield resv8 : 3;
     sfr_bitfield PC1 : 5;
     sfr_bitfield resv16 : 3;
     sfr_bitfield PC2 : 5;
     sfr_bitfield resv24 : 3;
     sfr_bitfield PC3 : 5;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_IOCR0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 3;
     sfr_bitfield PC4 : 5;
     sfr_bitfield resv8 : 3;
     sfr_bitfield PC5 : 5;
     sfr_bitfield resv16 : 3;
     sfr_bitfield PC6 : 5;
     sfr_bitfield resv24 : 3;
     sfr_bitfield PC7 : 5;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_IOCR4_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 3;
     sfr_bitfield PC4 : 5;
     sfr_bitfield resv8 : 3;
     sfr_bitfield PC5 : 5;
     sfr_bitfield resv16 : 3;
     sfr_bitfield PC6 : 5;
     sfr_bitfield resv24 : 3;
     sfr_bitfield PC7 : 5;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P22_IOCR4_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 3;
     sfr_bitfield PC4 : 5;
     sfr_bitfield resv8 : 3;
     sfr_bitfield PC5 : 5;
     sfr_bitfield resv16 : 3;
     sfr_bitfield PC6 : 5;
     sfr_bitfield resv24 : 3;
     sfr_bitfield PC7 : 5;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P41_IOCR4_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 3;
     sfr_bitfield PC8 : 5;
     sfr_bitfield resv8 : 3;
     sfr_bitfield PC9 : 5;
     sfr_bitfield resv16 : 3;
     sfr_bitfield PC10 : 5;
     sfr_bitfield resv24 : 3;
     sfr_bitfield PC11 : 5;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_IOCR8_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 3;
     sfr_bitfield PC8 : 5;
     sfr_bitfield resv8 : 3;
     sfr_bitfield PC9 : 5;
     sfr_bitfield resv16 : 3;
     sfr_bitfield PC10 : 5;
     sfr_bitfield resv24 : 3;
     sfr_bitfield PC11 : 5;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P24_IOCR8_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 3;
     sfr_bitfield PC12 : 5;
     sfr_bitfield resv8 : 3;
     sfr_bitfield PC13 : 5;
     sfr_bitfield resv16 : 3;
     sfr_bitfield PC14 : 5;
     sfr_bitfield resv24 : 3;
     sfr_bitfield PC15 : 5;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_IOCR12_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 3;
     sfr_bitfield PC12 : 5;
     sfr_bitfield resv8 : 3;
     sfr_bitfield PC13 : 5;
     sfr_bitfield resv16 : 3;
     sfr_bitfield PC14 : 5;
     sfr_bitfield resv24 : 3;
     sfr_bitfield PC15 : 5;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P25_IOCR12_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield P0 : 1;
                sfr_bitfield P1 : 1;
                sfr_bitfield P2 : 1;
                sfr_bitfield P3 : 1;
                sfr_bitfield P4 : 1;
                sfr_bitfield P5 : 1;
                sfr_bitfield P6 : 1;
                sfr_bitfield P7 : 1;
                sfr_bitfield P8 : 1;
                sfr_bitfield P9 : 1;
                sfr_bitfield P10 : 1;
                sfr_bitfield P11 : 1;
                sfr_bitfield P12 : 1;
                sfr_bitfield P13 : 1;
                sfr_bitfield P14 : 1;
                sfr_bitfield P15 : 1;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_IN_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield P0 : 1;
                sfr_bitfield P1 : 1;
                sfr_bitfield P2 : 1;
                sfr_bitfield P3 : 1;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P12_IN_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield P0 : 1;
                sfr_bitfield P1 : 1;
                sfr_bitfield P2 : 1;
                sfr_bitfield P3 : 1;
                sfr_bitfield P4 : 1;
                sfr_bitfield P5 : 1;
                sfr_bitfield P6 : 1;
                sfr_bitfield P7 : 1;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P21_IN_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield P0 : 1;
                sfr_bitfield P1 : 1;
                sfr_bitfield P2 : 1;
                sfr_bitfield P3 : 1;
                sfr_bitfield P4 : 1;
                sfr_bitfield P5 : 1;
                sfr_bitfield P6 : 1;
                sfr_bitfield P7 : 1;
                sfr_bitfield P8 : 1;
                sfr_bitfield P9 : 1;
                sfr_bitfield P10 : 1;
                sfr_bitfield P11 : 1;
     sfr_bitfield resv12 : 20;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P22_IN_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PD0 : 2;
     sfr_bitfield PL0 : 2;
     sfr_bitfield PD1 : 2;
     sfr_bitfield PL1 : 2;
     sfr_bitfield PD2 : 2;
     sfr_bitfield PL2 : 2;
     sfr_bitfield PD3 : 2;
     sfr_bitfield PL3 : 2;
     sfr_bitfield PD4 : 2;
     sfr_bitfield PL4 : 2;
     sfr_bitfield PD5 : 2;
     sfr_bitfield PL5 : 2;
     sfr_bitfield PD6 : 2;
     sfr_bitfield PL6 : 2;
     sfr_bitfield PD7 : 2;
     sfr_bitfield PL7 : 2;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_PDR0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PD0 : 2;
     sfr_bitfield PL0 : 2;
     sfr_bitfield PD1 : 2;
     sfr_bitfield PL1 : 2;
     sfr_bitfield PD2 : 2;
     sfr_bitfield PL2 : 2;
     sfr_bitfield PD3 : 2;
     sfr_bitfield PL3 : 2;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P12_PDR0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PD8 : 2;
     sfr_bitfield PL8 : 2;
     sfr_bitfield PD9 : 2;
     sfr_bitfield PL9 : 2;
     sfr_bitfield PD10 : 2;
     sfr_bitfield PL10 : 2;
     sfr_bitfield PD11 : 2;
     sfr_bitfield PL11 : 2;
     sfr_bitfield PD12 : 2;
     sfr_bitfield PL12 : 2;
     sfr_bitfield PD13 : 2;
     sfr_bitfield PL13 : 2;
     sfr_bitfield PD14 : 2;
     sfr_bitfield PL14 : 2;
     sfr_bitfield PD15 : 2;
     sfr_bitfield PL15 : 2;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_PDR1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PD8 : 2;
     sfr_bitfield PL8 : 2;
     sfr_bitfield PD9 : 2;
     sfr_bitfield PL9 : 2;
     sfr_bitfield PD10 : 2;
     sfr_bitfield PL10 : 2;
     sfr_bitfield PD11 : 2;
     sfr_bitfield PL11 : 2;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P22_PDR1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PD8 : 2;
     sfr_bitfield PL8 : 2;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P41_PDR1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN0 : 1;
     sfr_bitfield EN1 : 1;
     sfr_bitfield EN2 : 1;
     sfr_bitfield EN3 : 1;
     sfr_bitfield EN4 : 1;
     sfr_bitfield EN5 : 1;
     sfr_bitfield EN6 : 1;
     sfr_bitfield EN7 : 1;
     sfr_bitfield EN8 : 1;
     sfr_bitfield EN9 : 1;
     sfr_bitfield EN10 : 1;
     sfr_bitfield EN11 : 1;
     sfr_bitfield EN12 : 1;
     sfr_bitfield EN13 : 1;
     sfr_bitfield EN14 : 1;
     sfr_bitfield EN15 : 1;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_ESR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN0 : 1;
     sfr_bitfield EN1 : 1;
     sfr_bitfield EN2 : 1;
     sfr_bitfield EN3 : 1;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P12_ESR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN0 : 1;
     sfr_bitfield EN1 : 1;
     sfr_bitfield resv2 : 1;
     sfr_bitfield EN3 : 1;
     sfr_bitfield EN4 : 1;
     sfr_bitfield EN5 : 1;
     sfr_bitfield EN6 : 1;
     sfr_bitfield EN7 : 1;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P21_ESR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN0 : 1;
     sfr_bitfield EN1 : 1;
     sfr_bitfield EN2 : 1;
     sfr_bitfield EN3 : 1;
     sfr_bitfield EN4 : 1;
     sfr_bitfield EN5 : 1;
     sfr_bitfield EN6 : 1;
     sfr_bitfield EN7 : 1;
     sfr_bitfield EN8 : 1;
     sfr_bitfield EN9 : 1;
     sfr_bitfield EN10 : 1;
     sfr_bitfield EN11 : 1;
     sfr_bitfield resv12 : 20;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P22_ESR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN0 : 1;
     sfr_bitfield EN1 : 1;
     sfr_bitfield EN2 : 1;
     sfr_bitfield EN3 : 1;
     sfr_bitfield EN4 : 1;
     sfr_bitfield EN5 : 1;
     sfr_bitfield EN6 : 1;
     sfr_bitfield EN7 : 1;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P23_ESR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN0 : 1;
     sfr_bitfield EN1 : 1;
     sfr_bitfield EN2 : 1;
     sfr_bitfield EN3 : 1;
     sfr_bitfield EN4 : 1;
     sfr_bitfield EN5 : 1;
     sfr_bitfield EN6 : 1;
     sfr_bitfield EN7 : 1;
     sfr_bitfield resv8 : 1;
     sfr_bitfield EN9 : 1;
     sfr_bitfield EN10 : 1;
     sfr_bitfield EN11 : 1;
     sfr_bitfield EN12 : 1;
     sfr_bitfield EN13 : 1;
     sfr_bitfield EN14 : 1;
     sfr_bitfield EN15 : 1;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P33_ESR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PDIS0 : 1;
     sfr_bitfield PDIS1 : 1;
     sfr_bitfield PDIS2 : 1;
     sfr_bitfield PDIS3 : 1;
     sfr_bitfield PDIS4 : 1;
     sfr_bitfield PDIS5 : 1;
     sfr_bitfield PDIS6 : 1;
     sfr_bitfield PDIS7 : 1;
     sfr_bitfield PDIS8 : 1;
     sfr_bitfield PDIS9 : 1;
     sfr_bitfield PDIS10 : 1;
     sfr_bitfield PDIS11 : 1;
     sfr_bitfield PDIS12 : 1;
     sfr_bitfield PDIS13 : 1;
     sfr_bitfield PDIS14 : 1;
     sfr_bitfield PDIS15 : 1;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_PDISC_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PDIS0 : 1;
     sfr_bitfield PDIS1 : 1;
     sfr_bitfield PDIS2 : 1;
     sfr_bitfield PDIS3 : 1;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P12_PDISC_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PDIS0 : 1;
     sfr_bitfield PDIS1 : 1;
     sfr_bitfield PDIS2 : 1;
     sfr_bitfield PDIS3 : 1;
     sfr_bitfield PDIS4 : 1;
     sfr_bitfield PDIS5 : 1;
     sfr_bitfield PDIS6 : 1;
     sfr_bitfield PDIS7 : 1;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P21_PDISC_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PDIS0 : 1;
     sfr_bitfield PDIS1 : 1;
     sfr_bitfield PDIS2 : 1;
     sfr_bitfield PDIS3 : 1;
     sfr_bitfield PDIS4 : 1;
     sfr_bitfield PDIS5 : 1;
     sfr_bitfield PDIS6 : 1;
     sfr_bitfield PDIS7 : 1;
     sfr_bitfield PDIS8 : 1;
     sfr_bitfield PDIS9 : 1;
     sfr_bitfield PDIS10 : 1;
     sfr_bitfield PDIS11 : 1;
     sfr_bitfield resv12 : 20;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P22_PDISC_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PDIS0 : 1;
     sfr_bitfield PDIS1 : 1;
     sfr_bitfield PDIS2 : 1;
     sfr_bitfield PDIS3 : 1;
     sfr_bitfield PDIS4 : 1;
     sfr_bitfield PDIS5 : 1;
     sfr_bitfield PDIS6 : 1;
     sfr_bitfield PDIS7 : 1;
     sfr_bitfield PDIS8 : 1;
     sfr_bitfield resv9 : 23;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P41_PDISC_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 10;
     sfr_bitfield SEL10 : 1;
     sfr_bitfield SEL11 : 1;
     sfr_bitfield resv12 : 20;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_PCSR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield SEL0 : 1;
     sfr_bitfield SEL1 : 1;
     sfr_bitfield SEL2 : 1;
     sfr_bitfield SEL3 : 1;
     sfr_bitfield SEL4 : 1;
     sfr_bitfield resv5 : 1;
     sfr_bitfield SEL6 : 1;
     sfr_bitfield resv7 : 25;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P11_PCSR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield SEL0 : 1;
     sfr_bitfield SEL1 : 1;
     sfr_bitfield SEL2 : 1;
     sfr_bitfield SEL3 : 1;
     sfr_bitfield SEL4 : 1;
     sfr_bitfield SEL5 : 1;
     sfr_bitfield SEL6 : 1;
     sfr_bitfield SEL7 : 1;
     sfr_bitfield SEL8 : 1;
     sfr_bitfield SEL9 : 1;
     sfr_bitfield SEL10 : 1;
     sfr_bitfield SEL11 : 1;
     sfr_bitfield SEL12 : 1;
     sfr_bitfield SEL13 : 1;
     sfr_bitfield SEL14 : 1;
     sfr_bitfield SEL15 : 1;
     sfr_bitfield resv16 : 15;
                sfr_bitfield LCK : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P33_PCSR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
     sfr_bitfield SEL1 : 1;
     sfr_bitfield resv2 : 29;
                sfr_bitfield LCK : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P34_PCSR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
     sfr_bitfield SEL1 : 1;
     sfr_bitfield SEL2 : 1;
     sfr_bitfield SEL3 : 1;
     sfr_bitfield resv4 : 1;
     sfr_bitfield SEL5 : 1;
     sfr_bitfield resv6 : 4;
     sfr_bitfield SEL10 : 1;
     sfr_bitfield SEL11 : 1;
     sfr_bitfield SEL12 : 1;
     sfr_bitfield resv13 : 2;
     sfr_bitfield SEL15 : 1;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P40_PCSR_type;
typedef volatile union
{
 struct
 {
             sfr_bitfield PS0 : 1;
             sfr_bitfield PS1 : 1;
             sfr_bitfield PS2 : 1;
             sfr_bitfield PS3 : 1;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMSR0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 4;
             sfr_bitfield PS4 : 1;
             sfr_bitfield PS5 : 1;
             sfr_bitfield PS6 : 1;
             sfr_bitfield PS7 : 1;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMSR4_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 8;
             sfr_bitfield PS8 : 1;
             sfr_bitfield PS9 : 1;
             sfr_bitfield PS10 : 1;
             sfr_bitfield PS11 : 1;
     sfr_bitfield resv12 : 20;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMSR8_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 12;
             sfr_bitfield PS12 : 1;
             sfr_bitfield PS13 : 1;
             sfr_bitfield PS14 : 1;
             sfr_bitfield PS15 : 1;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMSR12_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 16;
             sfr_bitfield PCL0 : 1;
             sfr_bitfield PCL1 : 1;
             sfr_bitfield PCL2 : 1;
             sfr_bitfield PCL3 : 1;
     sfr_bitfield resv20 : 12;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMCR0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 20;
             sfr_bitfield PCL4 : 1;
             sfr_bitfield PCL5 : 1;
             sfr_bitfield PCL6 : 1;
             sfr_bitfield PCL7 : 1;
     sfr_bitfield resv24 : 8;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMCR4_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 24;
             sfr_bitfield PCL8 : 1;
             sfr_bitfield PCL9 : 1;
             sfr_bitfield PCL10 : 1;
             sfr_bitfield PCL11 : 1;
     sfr_bitfield resv28 : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMCR8_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 28;
             sfr_bitfield PCL12 : 1;
             sfr_bitfield PCL13 : 1;
             sfr_bitfield PCL14 : 1;
             sfr_bitfield PCL15 : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMCR12_type;
typedef volatile union
{
 struct
 {
             sfr_bitfield PS0 : 1;
             sfr_bitfield PS1 : 1;
             sfr_bitfield PS2 : 1;
             sfr_bitfield PS3 : 1;
             sfr_bitfield PS4 : 1;
             sfr_bitfield PS5 : 1;
             sfr_bitfield PS6 : 1;
             sfr_bitfield PS7 : 1;
             sfr_bitfield PS8 : 1;
             sfr_bitfield PS9 : 1;
             sfr_bitfield PS10 : 1;
             sfr_bitfield PS11 : 1;
             sfr_bitfield PS12 : 1;
             sfr_bitfield PS13 : 1;
             sfr_bitfield PS14 : 1;
             sfr_bitfield PS15 : 1;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMSR_type;
typedef volatile union
{
 struct
 {
             sfr_bitfield PS0 : 1;
             sfr_bitfield PS1 : 1;
             sfr_bitfield PS2 : 1;
             sfr_bitfield PS3 : 1;
             sfr_bitfield PS4 : 1;
             sfr_bitfield PS5 : 1;
             sfr_bitfield PS6 : 1;
             sfr_bitfield PS7 : 1;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P21_OMSR_type;
typedef volatile union
{
 struct
 {
             sfr_bitfield PS0 : 1;
             sfr_bitfield PS1 : 1;
             sfr_bitfield PS2 : 1;
             sfr_bitfield PS3 : 1;
             sfr_bitfield PS4 : 1;
             sfr_bitfield PS5 : 1;
             sfr_bitfield PS6 : 1;
             sfr_bitfield PS7 : 1;
             sfr_bitfield PS8 : 1;
             sfr_bitfield PS9 : 1;
             sfr_bitfield PS10 : 1;
             sfr_bitfield PS11 : 1;
     sfr_bitfield resv12 : 20;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P22_OMSR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 16;
             sfr_bitfield PCL0 : 1;
             sfr_bitfield PCL1 : 1;
             sfr_bitfield PCL2 : 1;
             sfr_bitfield PCL3 : 1;
             sfr_bitfield PCL4 : 1;
             sfr_bitfield PCL5 : 1;
             sfr_bitfield PCL6 : 1;
             sfr_bitfield PCL7 : 1;
             sfr_bitfield PCL8 : 1;
             sfr_bitfield PCL9 : 1;
             sfr_bitfield PCL10 : 1;
             sfr_bitfield PCL11 : 1;
             sfr_bitfield PCL12 : 1;
             sfr_bitfield PCL13 : 1;
             sfr_bitfield PCL14 : 1;
             sfr_bitfield PCL15 : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P00_OMCR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 16;
             sfr_bitfield PCL0 : 1;
             sfr_bitfield PCL1 : 1;
             sfr_bitfield PCL2 : 1;
             sfr_bitfield PCL3 : 1;
             sfr_bitfield PCL4 : 1;
             sfr_bitfield PCL5 : 1;
             sfr_bitfield PCL6 : 1;
             sfr_bitfield PCL7 : 1;
     sfr_bitfield resv24 : 8;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P21_OMCR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 16;
             sfr_bitfield PCL0 : 1;
             sfr_bitfield PCL1 : 1;
             sfr_bitfield PCL2 : 1;
             sfr_bitfield PCL3 : 1;
             sfr_bitfield PCL4 : 1;
             sfr_bitfield PCL5 : 1;
             sfr_bitfield PCL6 : 1;
             sfr_bitfield PCL7 : 1;
             sfr_bitfield PCL8 : 1;
             sfr_bitfield PCL9 : 1;
             sfr_bitfield PCL10 : 1;
             sfr_bitfield PCL11 : 1;
     sfr_bitfield resv28 : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P22_OMCR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 7;
     sfr_bitfield PS : 1;
     sfr_bitfield TEN_CTRL : 1;
     sfr_bitfield TX_EN : 1;
     sfr_bitfield VDIFFADJ : 2;
     sfr_bitfield VOSDYN : 1;
     sfr_bitfield VOSEXT : 1;
     sfr_bitfield TX_PD : 1;
     sfr_bitfield TX_PWDPD : 1;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P13_LPCR0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield REN_CTRL : 1;
     sfr_bitfield RX_EN : 1;
     sfr_bitfield TERM : 1;
     sfr_bitfield LRXTERM : 3;
     sfr_bitfield LVDSM : 1;
     sfr_bitfield PS : 1;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} P14_LPCR5_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CCTRIG0 : 1;
     sfr_bitfield resv1 : 1;
     sfr_bitfield RAMINTM : 2;
     sfr_bitfield SETLUDIS : 1;
     sfr_bitfield resv5 : 3;
     sfr_bitfield DDC : 1;
     sfr_bitfield resv9 : 23;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SYSCON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield POL : 1;
     sfr_bitfield MODE : 1;
     sfr_bitfield ENON : 1;
     sfr_bitfield PSEL : 1;
     sfr_bitfield resv4 : 12;
                sfr_bitfield EMSF : 1;
                sfr_bitfield SEMSF : 1;
     sfr_bitfield resv18 : 14;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EMSR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 24;
     sfr_bitfield EMSFM : 2;
     sfr_bitfield SEMSFM : 2;
     sfr_bitfield resv28 : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EMSSW_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 16;
                sfr_bitfield LS0 : 1;
     sfr_bitfield resv17 : 14;
     sfr_bitfield LSEN0 : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LCLCON0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 16;
                sfr_bitfield LS1 : 1;
     sfr_bitfield resv17 : 14;
     sfr_bitfield LSEN1 : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LCLCON1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield LCLT0 : 1;
     sfr_bitfield LCLT1 : 1;
     sfr_bitfield LCLT2 : 1;
     sfr_bitfield LCLT3 : 1;
     sfr_bitfield resv4 : 12;
     sfr_bitfield PLCLT0 : 1;
     sfr_bitfield PLCLT1 : 1;
     sfr_bitfield PLCLT2 : 1;
     sfr_bitfield PLCLT3 : 1;
     sfr_bitfield resv20 : 12;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LCLTEST_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield CHREV : 6;
                sfr_bitfield CHTEC : 2;
     sfr_bitfield CHPK : 4;
     sfr_bitfield CHID : 4;
                sfr_bitfield EEA : 1;
     sfr_bitfield UCODE : 7;
     sfr_bitfield FSIZE : 4;
     sfr_bitfield VART : 3;
     sfr_bitfield SEC : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CHIPID_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield DEPT : 5;
                sfr_bitfield MANUF : 11;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_MANID_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ADDRCFG : 2;
     sfr_bitfield Spare : 14;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SWAPCTRL_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield LBISTREQ : 1;
     sfr_bitfield LBISTRES : 1;
     sfr_bitfield PATTERNS : 18;
     sfr_bitfield resv20 : 8;
                sfr_bitfield LBISTDONE : 1;
     sfr_bitfield resv29 : 1;
     sfr_bitfield LBISTERRINJ : 1;
     sfr_bitfield LBISTREQRED : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LBISTCTRL0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield SEED : 19;
     sfr_bitfield resv19 : 5;
     sfr_bitfield SPLITSH : 3;
     sfr_bitfield BODY : 1;
     sfr_bitfield LBISTFREQU : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LBISTCTRL1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield LENGTH : 12;
     sfr_bitfield resv12 : 20;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LBISTCTRL2_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield SIGNATURE : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_LBISTCTRL3_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield MEM : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_STMEM1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield OVEN0 : 1;
     sfr_bitfield OVEN1 : 1;
     sfr_bitfield OVEN2 : 1;
     sfr_bitfield OVEN3 : 1;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_OVCENABLE_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CSEL0 : 1;
     sfr_bitfield CSEL1 : 1;
     sfr_bitfield CSEL2 : 1;
     sfr_bitfield CSEL3 : 1;
     sfr_bitfield resv4 : 12;
     sfr_bitfield OVSTRT : 1;
     sfr_bitfield OVSTP : 1;
     sfr_bitfield DCINVAL : 1;
     sfr_bitfield resv19 : 5;
     sfr_bitfield OVCONF : 1;
     sfr_bitfield POVCONF : 1;
     sfr_bitfield resv26 : 6;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_OVCCON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield FILRQ0A : 1;
     sfr_bitfield FILRQ5A : 1;
     sfr_bitfield FILRQ2A : 1;
     sfr_bitfield FILRQ3A : 1;
     sfr_bitfield FILRQ0C : 1;
     sfr_bitfield FILRQ1C : 1;
     sfr_bitfield FILRQ3C : 1;
     sfr_bitfield FILRQ2C : 1;
     sfr_bitfield FILRQ4A : 1;
     sfr_bitfield FILRQ6A : 1;
     sfr_bitfield FILRQ1A : 1;
     sfr_bitfield FILRQ7A : 1;
     sfr_bitfield FILRQ6D : 1;
     sfr_bitfield FILRQ4D : 1;
     sfr_bitfield FILRQ2B : 1;
     sfr_bitfield FILRQ3B : 1;
     sfr_bitfield FILRQ7C : 1;
     sfr_bitfield resv17 : 7;
     sfr_bitfield FILTDIV : 4;
     sfr_bitfield DEPTH : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EIFILT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 4;
     sfr_bitfield EXIS0 : 3;
     sfr_bitfield resv7 : 1;
     sfr_bitfield FEN0 : 1;
     sfr_bitfield REN0 : 1;
     sfr_bitfield LDEN0 : 1;
     sfr_bitfield EIEN0 : 1;
     sfr_bitfield INP0 : 3;
     sfr_bitfield resv15 : 5;
     sfr_bitfield EXIS1 : 3;
     sfr_bitfield resv23 : 1;
     sfr_bitfield FEN1 : 1;
     sfr_bitfield REN1 : 1;
     sfr_bitfield LDEN1 : 1;
     sfr_bitfield EIEN1 : 1;
     sfr_bitfield INP1 : 3;
     sfr_bitfield resv31 : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EICR0_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield INTF0 : 1;
                sfr_bitfield INTF1 : 1;
                sfr_bitfield INTF2 : 1;
                sfr_bitfield INTF3 : 1;
                sfr_bitfield INTF4 : 1;
                sfr_bitfield INTF5 : 1;
                sfr_bitfield INTF6 : 1;
                sfr_bitfield INTF7 : 1;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EIFR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield FS0 : 1;
     sfr_bitfield FS1 : 1;
     sfr_bitfield FS2 : 1;
     sfr_bitfield FS3 : 1;
     sfr_bitfield FS4 : 1;
     sfr_bitfield FS5 : 1;
     sfr_bitfield FS6 : 1;
     sfr_bitfield FS7 : 1;
     sfr_bitfield resv8 : 8;
     sfr_bitfield FC0 : 1;
     sfr_bitfield FC1 : 1;
     sfr_bitfield FC2 : 1;
     sfr_bitfield FC3 : 1;
     sfr_bitfield FC4 : 1;
     sfr_bitfield FC5 : 1;
     sfr_bitfield FC6 : 1;
     sfr_bitfield FC7 : 1;
     sfr_bitfield resv24 : 8;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_FMR_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield PDR0 : 1;
                sfr_bitfield PDR1 : 1;
                sfr_bitfield PDR2 : 1;
                sfr_bitfield PDR3 : 1;
                sfr_bitfield PDR4 : 1;
                sfr_bitfield PDR5 : 1;
                sfr_bitfield PDR6 : 1;
                sfr_bitfield PDR7 : 1;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PDRR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield IPEN00 : 1;
     sfr_bitfield IPEN01 : 1;
     sfr_bitfield IPEN02 : 1;
     sfr_bitfield IPEN03 : 1;
     sfr_bitfield IPEN04 : 1;
     sfr_bitfield IPEN05 : 1;
     sfr_bitfield IPEN06 : 1;
     sfr_bitfield IPEN07 : 1;
     sfr_bitfield resv8 : 5;
     sfr_bitfield GEEN0 : 1;
     sfr_bitfield IGP0 : 2;
     sfr_bitfield IPEN10 : 1;
     sfr_bitfield IPEN11 : 1;
     sfr_bitfield IPEN12 : 1;
     sfr_bitfield IPEN13 : 1;
     sfr_bitfield IPEN14 : 1;
     sfr_bitfield IPEN15 : 1;
     sfr_bitfield IPEN16 : 1;
     sfr_bitfield IPEN17 : 1;
     sfr_bitfield resv24 : 5;
     sfr_bitfield GEEN1 : 1;
     sfr_bitfield IGP1 : 2;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_IGCR0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ENDINIT : 1;
     sfr_bitfield LCK : 1;
     sfr_bitfield PW : 14;
     sfr_bitfield REL : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_WDTCPU0CON0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 2;
     sfr_bitfield IR0 : 1;
     sfr_bitfield DR : 1;
     sfr_bitfield resv4 : 1;
     sfr_bitfield IR1 : 1;
     sfr_bitfield UR : 1;
     sfr_bitfield PAR : 1;
     sfr_bitfield TCR : 1;
     sfr_bitfield TCTR : 7;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_WDTCPU0CON1_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield AE : 1;
                sfr_bitfield OE : 1;
                sfr_bitfield IS0 : 1;
                sfr_bitfield DS : 1;
                sfr_bitfield TO : 1;
                sfr_bitfield IS1 : 1;
                sfr_bitfield US : 1;
                sfr_bitfield PAS : 1;
                sfr_bitfield TCS : 1;
                sfr_bitfield TCT : 7;
                sfr_bitfield TIM : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_WDTCPU0SR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
     sfr_bitfield ENDINIT : 1;
     sfr_bitfield EPW : 14;
                sfr_bitfield REL : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EICON0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 2;
     sfr_bitfield IR0 : 1;
     sfr_bitfield DR : 1;
     sfr_bitfield resv4 : 1;
     sfr_bitfield IR1 : 1;
     sfr_bitfield resv6 : 26;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EICON1_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield AE : 1;
                sfr_bitfield OE : 1;
                sfr_bitfield IS0 : 1;
                sfr_bitfield DS : 1;
                sfr_bitfield TO : 1;
                sfr_bitfield IS1 : 1;
     sfr_bitfield resv6 : 10;
                sfr_bitfield TIM : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EISR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CLRIRF : 1;
     sfr_bitfield resv1 : 1;
     sfr_bitfield IR0 : 1;
     sfr_bitfield DR : 1;
     sfr_bitfield resv4 : 1;
     sfr_bitfield IR1 : 1;
     sfr_bitfield UR : 1;
     sfr_bitfield PAR : 1;
     sfr_bitfield TCR : 1;
     sfr_bitfield TCTR : 7;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_WDTSCON1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
     sfr_bitfield ENDINIT : 1;
     sfr_bitfield EPW : 14;
                sfr_bitfield REL : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SEICON0_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield AE : 1;
                sfr_bitfield OE : 1;
                sfr_bitfield IS0 : 1;
                sfr_bitfield DS : 1;
                sfr_bitfield TO : 1;
                sfr_bitfield IS1 : 1;
     sfr_bitfield resv6 : 10;
                sfr_bitfield TIM : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SEISR_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield ESR0 : 1;
                sfr_bitfield ESR1 : 1;
     sfr_bitfield resv2 : 1;
                sfr_bitfield SMU : 1;
                sfr_bitfield SW : 1;
                sfr_bitfield STM0 : 1;
                sfr_bitfield STM1 : 1;
                sfr_bitfield STM2 : 1;
                sfr_bitfield STM3 : 1;
     sfr_bitfield resv9 : 7;
                sfr_bitfield PORST : 1;
     sfr_bitfield resv17 : 1;
                sfr_bitfield CB0 : 1;
                sfr_bitfield CB1 : 1;
                sfr_bitfield CB3 : 1;
     sfr_bitfield resv21 : 2;
                sfr_bitfield EVRC : 1;
                sfr_bitfield EVR33 : 1;
                sfr_bitfield SWD : 1;
                sfr_bitfield HSMS : 1;
                sfr_bitfield HSMA : 1;
                sfr_bitfield STBYR : 1;
                sfr_bitfield LBPORST : 1;
                sfr_bitfield LBTERM : 1;
     sfr_bitfield resv31 : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_RSTSTAT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ESR0 : 2;
     sfr_bitfield ESR1 : 2;
     sfr_bitfield resv4 : 2;
     sfr_bitfield SMU : 2;
     sfr_bitfield SW : 2;
     sfr_bitfield STM0 : 2;
     sfr_bitfield STM1 : 2;
     sfr_bitfield STM2 : 2;
     sfr_bitfield STM3 : 2;
     sfr_bitfield resv18 : 14;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_RSTCON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield STM0DIS : 1;
     sfr_bitfield STM1DIS : 1;
     sfr_bitfield STM2DIS : 1;
     sfr_bitfield STM3DIS : 1;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_ARSTDIS_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
     sfr_bitfield SWRSTREQ : 1;
     sfr_bitfield resv2 : 30;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SWRSTCON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield FRTO : 1;
     sfr_bitfield CLRC : 1;
     sfr_bitfield resv2 : 5;
                sfr_bitfield CSSx : 6;
     sfr_bitfield resv13 : 3;
     sfr_bitfield USRINFO : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_RSTCON2_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 7;
     sfr_bitfield EDCON : 2;
     sfr_bitfield resv9 : 23;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_ESRCFG0_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield ARI : 1;
     sfr_bitfield ARC : 1;
     sfr_bitfield resv2 : 30;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_ESROCFG_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PD0 : 2;
     sfr_bitfield PL0 : 2;
     sfr_bitfield PD1 : 2;
     sfr_bitfield PL1 : 2;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PDR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 4;
     sfr_bitfield PC0 : 4;
     sfr_bitfield resv8 : 4;
     sfr_bitfield PC1 : 4;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_IOCR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield P0 : 1;
     sfr_bitfield P1 : 1;
     sfr_bitfield resv2 : 30;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_OUT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PS0 : 1;
     sfr_bitfield PS1 : 1;
     sfr_bitfield resv2 : 14;
     sfr_bitfield PCL0 : 1;
     sfr_bitfield PCL1 : 1;
     sfr_bitfield resv18 : 14;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_OMR_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield P0 : 1;
                sfr_bitfield P1 : 1;
     sfr_bitfield resv2 : 30;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_IN_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield HWCFG : 8;
                sfr_bitfield FTM : 7;
                sfr_bitfield MODE : 1;
                sfr_bitfield FCBAE : 1;
                sfr_bitfield LUDIS : 1;
     sfr_bitfield resv18 : 1;
                sfr_bitfield TRSTL : 1;
                sfr_bitfield SPDEN : 1;
     sfr_bitfield resv21 : 3;
                sfr_bitfield RAMINT : 1;
     sfr_bitfield resv25 : 7;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_STSTAT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 13;
     sfr_bitfield SFCBAE : 1;
     sfr_bitfield CFCBAE : 1;
     sfr_bitfield STP : 1;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_STCON_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield ESR0T : 1;
                sfr_bitfield ESR1T : 1;
                sfr_bitfield TRAP2 : 1;
                sfr_bitfield SMUT : 1;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_TRAPSTAT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ESR0T : 1;
     sfr_bitfield ESR1T : 1;
     sfr_bitfield TRAP2 : 1;
     sfr_bitfield SMUT : 1;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_TRAPSET_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ESR0T : 1;
     sfr_bitfield ESR1T : 1;
     sfr_bitfield TRAP2 : 1;
     sfr_bitfield SMUT : 1;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_TRAPCLR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CPU0ESR0T : 1;
     sfr_bitfield CPU0ESR1T : 1;
     sfr_bitfield CPU0TRAP2T : 1;
     sfr_bitfield CPU0SMUT : 1;
     sfr_bitfield resv4 : 4;
     sfr_bitfield CPU1ESR0T : 1;
     sfr_bitfield CPU1ESR1T : 1;
     sfr_bitfield CPU1TRAP2T : 1;
     sfr_bitfield CPU1SMUT : 1;
     sfr_bitfield resv12 : 4;
     sfr_bitfield CPU2ESR0T : 1;
     sfr_bitfield CPU2ESR1T : 1;
     sfr_bitfield CPU2TRAP2T : 1;
     sfr_bitfield CPU2SMUT : 1;
     sfr_bitfield resv20 : 4;
     sfr_bitfield CPU3ESR0T : 1;
     sfr_bitfield CPU3ESR1T : 1;
     sfr_bitfield CPU3TRAP2T : 1;
     sfr_bitfield CPU3SMUT : 1;
     sfr_bitfield resv28 : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_TRAPDIS0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PDIS0 : 1;
     sfr_bitfield PDIS1 : 1;
     sfr_bitfield resv2 : 30;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PDISC_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
                sfr_bitfield PLLLV : 1;
     sfr_bitfield OSCRES : 1;
     sfr_bitfield GAINSEL : 2;
     sfr_bitfield MODE : 2;
     sfr_bitfield SHBY : 1;
                sfr_bitfield PLLHV : 1;
     sfr_bitfield HYSEN : 1;
     sfr_bitfield HYSCTL : 2;
     sfr_bitfield AMPCTL : 2;
     sfr_bitfield resv14 : 2;
     sfr_bitfield OSCVAL : 5;
     sfr_bitfield resv21 : 2;
     sfr_bitfield APREN : 1;
     sfr_bitfield CAP0EN : 1;
     sfr_bitfield CAP1EN : 1;
     sfr_bitfield CAP2EN : 1;
     sfr_bitfield CAP3EN : 1;
     sfr_bitfield resv28 : 4;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_OSCCON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
                sfr_bitfield PWDSTAT : 1;
                sfr_bitfield LOCK : 1;
     sfr_bitfield resv3 : 2;
                sfr_bitfield K2RDY : 1;
     sfr_bitfield resv6 : 1;
                sfr_bitfield MODRUN : 1;
     sfr_bitfield resv8 : 24;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SYSPLLSTAT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 2;
     sfr_bitfield MODEN : 1;
     sfr_bitfield resv3 : 6;
     sfr_bitfield NDIV : 7;
     sfr_bitfield PLLPWD : 1;
     sfr_bitfield resv17 : 1;
     sfr_bitfield RESLD : 1;
     sfr_bitfield resv19 : 5;
     sfr_bitfield PDIV : 3;
     sfr_bitfield resv27 : 3;
     sfr_bitfield INSEL : 2;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SYSPLLCON0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield K2DIV : 3;
     sfr_bitfield resv3 : 29;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SYSPLLCON1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield MODCFG : 16;
     sfr_bitfield resv16 : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_SYSPLLCON2_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 1;
                sfr_bitfield PWDSTAT : 1;
                sfr_bitfield LOCK : 1;
     sfr_bitfield resv3 : 1;
                sfr_bitfield K3RDY : 1;
                sfr_bitfield K2RDY : 1;
     sfr_bitfield resv6 : 26;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PERPLLSTAT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield DIVBY : 1;
     sfr_bitfield resv1 : 8;
     sfr_bitfield NDIV : 7;
     sfr_bitfield PLLPWD : 1;
     sfr_bitfield resv17 : 1;
     sfr_bitfield RESLD : 1;
     sfr_bitfield resv19 : 5;
     sfr_bitfield PDIV : 3;
     sfr_bitfield resv27 : 5;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PERPLLCON0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield K2DIV : 3;
     sfr_bitfield resv3 : 5;
     sfr_bitfield K3DIV : 3;
     sfr_bitfield resv11 : 21;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PERPLLCON1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield STMDIV : 4;
     sfr_bitfield GTMDIV : 4;
     sfr_bitfield SRIDIV : 4;
     sfr_bitfield LPDIV : 3;
     sfr_bitfield resv15 : 1;
     sfr_bitfield SPBDIV : 4;
     sfr_bitfield BBBDIV : 4;
     sfr_bitfield FSIDIV : 2;
     sfr_bitfield FSI2DIV : 2;
     sfr_bitfield CLKSEL : 2;
     sfr_bitfield UP : 1;
                sfr_bitfield LCK : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield MCANDIV : 4;
     sfr_bitfield CLKSELMCAN : 2;
     sfr_bitfield resv6 : 1;
     sfr_bitfield PLL1DIVDIS : 1;
     sfr_bitfield I2CDIV : 4;
     sfr_bitfield resv12 : 4;
     sfr_bitfield MSCDIV : 4;
     sfr_bitfield CLKSELMSC : 2;
     sfr_bitfield resv22 : 2;
     sfr_bitfield QSPIDIV : 4;
     sfr_bitfield CLKSELQSPI : 2;
     sfr_bitfield resv30 : 1;
                sfr_bitfield LCK : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield STEP : 10;
     sfr_bitfield resv10 : 4;
     sfr_bitfield DM : 2;
                sfr_bitfield RESULT : 10;
     sfr_bitfield resv26 : 5;
     sfr_bitfield DISCLK : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_FDR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield EN0 : 1;
     sfr_bitfield resv1 : 1;
     sfr_bitfield SEL0 : 4;
     sfr_bitfield resv6 : 10;
     sfr_bitfield EN1 : 1;
     sfr_bitfield NSEL : 1;
     sfr_bitfield SEL1 : 4;
     sfr_bitfield resv22 : 2;
     sfr_bitfield DIV1 : 8;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_EXTCON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield ASCLINFDIV : 4;
     sfr_bitfield resv4 : 4;
     sfr_bitfield ASCLINSDIV : 4;
     sfr_bitfield CLKSELASCLINS : 2;
     sfr_bitfield resv14 : 11;
     sfr_bitfield ERAYPERON : 1;
     sfr_bitfield resv26 : 5;
                sfr_bitfield LCK : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON2_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield PLL0MONEN : 1;
     sfr_bitfield PLL1MONEN : 1;
     sfr_bitfield PLL2MONEN : 1;
     sfr_bitfield SPBMONEN : 1;
     sfr_bitfield BACKMONEN : 1;
     sfr_bitfield resv5 : 3;
     sfr_bitfield PLL0MONTST : 1;
     sfr_bitfield PLL1MONTST : 1;
     sfr_bitfield PLL2MONTST : 1;
     sfr_bitfield SPBMONTST : 1;
     sfr_bitfield BACKMONTST : 1;
     sfr_bitfield resv13 : 17;
     sfr_bitfield UP : 1;
                sfr_bitfield LCK : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON3_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield LOTHR : 12;
     sfr_bitfield UPTHR : 12;
     sfr_bitfield MONEN : 1;
     sfr_bitfield MONTST : 1;
     sfr_bitfield resv26 : 4;
     sfr_bitfield UP : 1;
                sfr_bitfield LCK : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON4_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield GETHDIV : 4;
     sfr_bitfield MCANHDIV : 4;
     sfr_bitfield resv8 : 22;
     sfr_bitfield UP : 1;
                sfr_bitfield LCK : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON5_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CPU0DIV : 6;
     sfr_bitfield resv6 : 26;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON6_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CPU1DIV : 6;
     sfr_bitfield resv6 : 26;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON7_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CPU2DIV : 6;
     sfr_bitfield resv6 : 26;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON8_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CPU3DIV : 6;
     sfr_bitfield resv6 : 26;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_CCUCON9_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield REQSLP : 2;
     sfr_bitfield resv2 : 6;
                sfr_bitfield PMST : 3;
     sfr_bitfield resv11 : 21;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMCSR0_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield CPU0 : 1;
                sfr_bitfield CPU1 : 1;
                sfr_bitfield CPU2 : 1;
                sfr_bitfield CPU3 : 1;
                sfr_bitfield CPU4 : 1;
                sfr_bitfield CPU5 : 1;
     sfr_bitfield resv6 : 10;
                sfr_bitfield CPU0LS : 1;
                sfr_bitfield CPU1LS : 1;
                sfr_bitfield CPU2LS : 1;
                sfr_bitfield CPU3LS : 1;
     sfr_bitfield resv20 : 12;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMSTAT0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield resv0 : 8;
     sfr_bitfield CPUIDLSEL : 3;
     sfr_bitfield resv11 : 1;
     sfr_bitfield IRADIS : 1;
     sfr_bitfield resv13 : 11;
     sfr_bitfield CPUSEL : 3;
     sfr_bitfield STBYEVEN : 1;
     sfr_bitfield STBYEV : 3;
     sfr_bitfield resv31 : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMSWCR1_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield RESULT : 12;
     sfr_bitfield resv12 : 20;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_DTSCSTAT_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield LOWER : 12;
     sfr_bitfield resv12 : 1;
                sfr_bitfield BGPOK : 1;
     sfr_bitfield EN : 1;
     sfr_bitfield LLU : 1;
     sfr_bitfield UPPER : 12;
     sfr_bitfield INTEN : 1;
     sfr_bitfield resv29 : 1;
     sfr_bitfield INT : 1;
     sfr_bitfield UOF : 1;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_DTSCLIM_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield LJTEN : 1;
     sfr_bitfield LJTOVEN : 1;
     sfr_bitfield LJTOVIEN : 1;
     sfr_bitfield LJTSTRT : 1;
     sfr_bitfield LJTSTP : 1;
     sfr_bitfield LJTCLR : 1;
     sfr_bitfield resv6 : 6;
     sfr_bitfield SDSTEP : 4;
     sfr_bitfield VDTEN : 1;
     sfr_bitfield VDTOVEN : 1;
     sfr_bitfield VDTOVIEN : 1;
     sfr_bitfield VDTSTRT : 1;
     sfr_bitfield VDTSTP : 1;
     sfr_bitfield VDTCLR : 1;
     sfr_bitfield resv22 : 7;
     sfr_bitfield LPSLPEN : 1;
     sfr_bitfield resv30 : 2;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMTRCSR0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield LJTCV : 16;
     sfr_bitfield VDTCV : 10;
     sfr_bitfield resv26 : 6;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMTRCSR1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield LDJMPREQ : 2;
     sfr_bitfield resv2 : 2;
                sfr_bitfield LJTRUN : 2;
     sfr_bitfield resv6 : 2;
                sfr_bitfield LJTOV : 1;
     sfr_bitfield resv9 : 3;
     sfr_bitfield LJTOVCLR : 1;
     sfr_bitfield resv13 : 3;
                sfr_bitfield LJTCNT : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMTRCSR2_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield VDROOPREQ : 2;
     sfr_bitfield resv2 : 2;
                sfr_bitfield VDTRUN : 2;
     sfr_bitfield resv6 : 2;
                sfr_bitfield VDTOV : 1;
     sfr_bitfield resv9 : 3;
     sfr_bitfield VDTOVCLR : 1;
     sfr_bitfield resv13 : 3;
                sfr_bitfield VDTCNT : 10;
     sfr_bitfield resv26 : 6;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} SCU_PMTRCSR3_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield MODREV : 8;
                sfr_bitfield MODTYPE : 8;
                sfr_bitfield MODNUM : 16;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_ID_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield STM_31_0 : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM0_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield STM_35_4 : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM1_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield STM_39_8 : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM2_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield STM_43_12 : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM3_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield STM_47_16 : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM4_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield STM_51_20 : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM5_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield STM_63_32 : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_TIM6_type;
typedef volatile union
{
 struct
 {
                sfr_bitfield STMCAP_63_32 : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_CAP_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CMPVAL : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_CMP0_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CMPVAL : 32;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_CMP1_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield MSIZE0 : 5;
     sfr_bitfield resv5 : 3;
     sfr_bitfield MSTART0 : 5;
     sfr_bitfield resv13 : 3;
     sfr_bitfield MSIZE1 : 5;
     sfr_bitfield resv21 : 3;
     sfr_bitfield MSTART1 : 5;
     sfr_bitfield resv29 : 3;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_CMCON_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CMP0EN : 1;
                sfr_bitfield CMP0IR : 1;
     sfr_bitfield CMP0OS : 1;
     sfr_bitfield resv3 : 1;
     sfr_bitfield CMP1EN : 1;
                sfr_bitfield CMP1IR : 1;
     sfr_bitfield CMP1OS : 1;
     sfr_bitfield resv7 : 25;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_ICR_type;
typedef volatile union
{
 struct
 {
     sfr_bitfield CMP0IRR : 1;
     sfr_bitfield CMP0IRS : 1;
     sfr_bitfield CMP1IRR : 1;
     sfr_bitfield CMP1IRS : 1;
     sfr_bitfield resv4 : 28;
  } B;
  signed_sfr_access_type I;
  unsigned_sfr_access_type U;
} STM0_ISCR_type;
# 2 ".\\output\\inc/Os_DisableInterrupts.h" 2
# 3 "bswcdd\\CCU6\\CCU6_Hal.c" 2

# 1 "bswcdd\\CCU6\\CCU6_Hal.h" 1



extern void CCU6_vidDisableTrap(void);
extern void CCU6_vidEnableTrap(void);
extern void GCCU6_vidDisableTrap(void);
extern void GCCU6_vidEnableTrap(void);
# 5 "bswcdd\\CCU6\\CCU6_Hal.c" 2

void CCU6_vidDisableTrap(void)
{
   (*( SRC_CPU0SB_type *) 0xF00382C8U).U = 0x22U;
}

void CCU6_vidEnableTrap(void)
{
   (*( SRC_CPU0SB_type *) 0xF00382C8U).U = 0x422U;
}

void GCCU6_vidDisableTrap(void)
{
   (*( SRC_CPU0SB_type *) 0xF00382D8U).U = 0x1821U;
}

void GCCU6_vidEnableTrap(void)
{
   (*( SRC_CPU0SB_type *) 0xF00382D8U).U = 0x1c21U;
}
