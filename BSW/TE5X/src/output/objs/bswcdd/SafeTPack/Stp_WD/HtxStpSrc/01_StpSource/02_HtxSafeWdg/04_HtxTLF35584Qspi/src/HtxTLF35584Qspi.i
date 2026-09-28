# 1 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
# 45 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
# 1 ".\\output\\inc/IfxDma_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_regdef.h" 2
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_regdef.h"
typedef struct _Ifx_DMA_ACCEN_ACCENR0_Bits
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
} Ifx_DMA_ACCEN_ACCENR0_Bits;


typedef struct _Ifx_DMA_ACCEN_ACCENR1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_DMA_ACCEN_ACCENR1_Bits;


typedef struct _Ifx_DMA_CH_ADICR_Bits
{
    Ifx_UReg_32Bit SMF:3;
    Ifx_UReg_32Bit INCS:1;
    Ifx_UReg_32Bit DMF:3;
    Ifx_UReg_32Bit INCD:1;
    Ifx_UReg_32Bit CBLS:4;
    Ifx_UReg_32Bit CBLD:4;
    Ifx_UReg_32Bit SHCT:4;
    Ifx_UReg_32Bit SCBE:1;
    Ifx_UReg_32Bit DCBE:1;
    Ifx_UReg_32Bit STAMP:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit WRPSE:1;
    Ifx_UReg_32Bit WRPDE:1;
    Ifx_UReg_32Bit INTCT:2;
    Ifx_UReg_32Bit IRDV:4;
} Ifx_DMA_CH_ADICR_Bits;


typedef struct _Ifx_DMA_CH_CHCFGR_Bits
{
    Ifx_UReg_32Bit TREL:14;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit BLKM:3;
    Ifx_UReg_32Bit RROAT:1;
    Ifx_UReg_32Bit CHMODE:1;
    Ifx_UReg_32Bit CHDW:3;
    Ifx_UReg_32Bit PATSEL:3;
    Ifx_UReg_32Bit SWAP:1;
    Ifx_UReg_32Bit PRSEL:1;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_DMA_CH_CHCFGR_Bits;


typedef struct _Ifx_DMA_CH_CHCSR_Bits
{
    Ifx_UReg_32Bit TCOUNT:14;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit LXO:1;
    Ifx_UReg_32Bit WRPS:1;
    Ifx_UReg_32Bit WRPD:1;
    Ifx_UReg_32Bit ICH:1;
    Ifx_UReg_32Bit IPM:1;
    Ifx_UReg_32Bit reserved_20:2;
    Ifx_UReg_32Bit BUFFER:1;
    Ifx_UReg_32Bit FROZEN:1;
    Ifx_UReg_32Bit SWB:1;
    Ifx_UReg_32Bit CWRP:1;
    Ifx_UReg_32Bit CICH:1;
    Ifx_UReg_32Bit SIT:1;
    Ifx_UReg_32Bit reserved_28:3;
    Ifx_UReg_32Bit SCH:1;
} Ifx_DMA_CH_CHCSR_Bits;


typedef struct _Ifx_DMA_CH_DADR_Bits
{
    Ifx_UReg_32Bit DADR:32;
} Ifx_DMA_CH_DADR_Bits;


typedef struct _Ifx_DMA_CH_RDCRCR_Bits
{
    Ifx_UReg_32Bit RDCRC:32;
} Ifx_DMA_CH_RDCRCR_Bits;


typedef struct _Ifx_DMA_CH_SADR_Bits
{
    Ifx_UReg_32Bit SADR:32;
} Ifx_DMA_CH_SADR_Bits;


typedef struct _Ifx_DMA_CH_SDCRCR_Bits
{
    Ifx_UReg_32Bit SDCRC:32;
} Ifx_DMA_CH_SDCRCR_Bits;


typedef struct _Ifx_DMA_CH_SHADR_Bits
{
    Ifx_UReg_32Bit SHADR:32;
} Ifx_DMA_CH_SHADR_Bits;


typedef struct _Ifx_DMA_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_DMA_CLC_Bits;


typedef struct _Ifx_DMA_ERRINTR_Bits
{
    Ifx_UReg_32Bit SIT:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_DMA_ERRINTR_Bits;


typedef struct _Ifx_DMA_HRR_Bits
{
    Ifx_UReg_32Bit HRP:2;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_DMA_HRR_Bits;


typedef struct _Ifx_DMA_ID_Bits
{
    Ifx_UReg_32Bit MOD_REV:8;
    Ifx_UReg_32Bit MOD_TYPE:8;
    Ifx_UReg_32Bit MOD_NUMBER:16;
} Ifx_DMA_ID_Bits;


typedef struct _Ifx_DMA_ME_ADICR_Bits
{
    Ifx_UReg_32Bit SMF:3;
    Ifx_UReg_32Bit INCS:1;
    Ifx_UReg_32Bit DMF:3;
    Ifx_UReg_32Bit INCD:1;
    Ifx_UReg_32Bit CBLS:4;
    Ifx_UReg_32Bit CBLD:4;
    Ifx_UReg_32Bit SHCT:4;
    Ifx_UReg_32Bit SCBE:1;
    Ifx_UReg_32Bit DCBE:1;
    Ifx_UReg_32Bit STAMP:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit WRPSE:1;
    Ifx_UReg_32Bit WRPDE:1;
    Ifx_UReg_32Bit INTCT:2;
    Ifx_UReg_32Bit IRDV:4;
} Ifx_DMA_ME_ADICR_Bits;


typedef struct _Ifx_DMA_ME_CHCR_Bits
{
    Ifx_UReg_32Bit TREL:14;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit BLKM:3;
    Ifx_UReg_32Bit RROAT:1;
    Ifx_UReg_32Bit CHMODE:1;
    Ifx_UReg_32Bit CHDW:3;
    Ifx_UReg_32Bit PATSEL:3;
    Ifx_UReg_32Bit SWAP:1;
    Ifx_UReg_32Bit PRSEL:1;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_DMA_ME_CHCR_Bits;


typedef struct _Ifx_DMA_ME_CHSR_Bits
{
    Ifx_UReg_32Bit TCOUNT:14;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit LXO:1;
    Ifx_UReg_32Bit WRPS:1;
    Ifx_UReg_32Bit WRPD:1;
    Ifx_UReg_32Bit ICH:1;
    Ifx_UReg_32Bit IPM:1;
    Ifx_UReg_32Bit reserved_20:2;
    Ifx_UReg_32Bit BUFFER:1;
    Ifx_UReg_32Bit FROZEN:1;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_DMA_ME_CHSR_Bits;


typedef struct _Ifx_DMA_ME_CLRE_Bits
{
    Ifx_UReg_32Bit reserved_0:16;
    Ifx_UReg_32Bit CSER:1;
    Ifx_UReg_32Bit CDER:1;
    Ifx_UReg_32Bit reserved_18:2;
    Ifx_UReg_32Bit CSPBER:1;
    Ifx_UReg_32Bit CSRIER:1;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit CRAMER:1;
    Ifx_UReg_32Bit CSLLER:1;
    Ifx_UReg_32Bit CDLLER:1;
    Ifx_UReg_32Bit reserved_27:5;
} Ifx_DMA_ME_CLRE_Bits;


typedef struct _Ifx_DMA_ME_DADR_Bits
{
    Ifx_UReg_32Bit DADR:32;
} Ifx_DMA_ME_DADR_Bits;


typedef struct _Ifx_DMA_ME_EER_Bits
{
    Ifx_UReg_32Bit reserved_0:16;
    Ifx_UReg_32Bit ESER:1;
    Ifx_UReg_32Bit EDER:1;
    Ifx_UReg_32Bit reserved_18:8;
    Ifx_UReg_32Bit ELER:1;
    Ifx_UReg_32Bit reserved_27:5;
} Ifx_DMA_ME_EER_Bits;


typedef struct _Ifx_DMA_ME_ERRSR_Bits
{
    Ifx_UReg_32Bit LEC:7;
    Ifx_UReg_32Bit reserved_7:9;
    Ifx_UReg_32Bit SER:1;
    Ifx_UReg_32Bit DER:1;
    Ifx_UReg_32Bit reserved_18:2;
    Ifx_UReg_32Bit SPBER:1;
    Ifx_UReg_32Bit SRIER:1;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit RAMER:1;
    Ifx_UReg_32Bit SLLER:1;
    Ifx_UReg_32Bit DLLER:1;
    Ifx_UReg_32Bit reserved_27:5;
} Ifx_DMA_ME_ERRSR_Bits;


typedef struct _Ifx_DMA_ME_R0_Bits
{
    Ifx_UReg_32Bit RD00:8;
    Ifx_UReg_32Bit RD01:8;
    Ifx_UReg_32Bit RD02:8;
    Ifx_UReg_32Bit RD03:8;
} Ifx_DMA_ME_R0_Bits;


typedef struct _Ifx_DMA_ME_R1_Bits
{
    Ifx_UReg_32Bit RD10:8;
    Ifx_UReg_32Bit RD11:8;
    Ifx_UReg_32Bit RD12:8;
    Ifx_UReg_32Bit RD13:8;
} Ifx_DMA_ME_R1_Bits;


typedef struct _Ifx_DMA_ME_R2_Bits
{
    Ifx_UReg_32Bit RD20:8;
    Ifx_UReg_32Bit RD21:8;
    Ifx_UReg_32Bit RD22:8;
    Ifx_UReg_32Bit RD23:8;
} Ifx_DMA_ME_R2_Bits;


typedef struct _Ifx_DMA_ME_R3_Bits
{
    Ifx_UReg_32Bit RD30:8;
    Ifx_UReg_32Bit RD31:8;
    Ifx_UReg_32Bit RD32:8;
    Ifx_UReg_32Bit RD33:8;
} Ifx_DMA_ME_R3_Bits;


typedef struct _Ifx_DMA_ME_R4_Bits
{
    Ifx_UReg_32Bit RD40:8;
    Ifx_UReg_32Bit RD41:8;
    Ifx_UReg_32Bit RD42:8;
    Ifx_UReg_32Bit RD43:8;
} Ifx_DMA_ME_R4_Bits;


typedef struct _Ifx_DMA_ME_R5_Bits
{
    Ifx_UReg_32Bit RD50:8;
    Ifx_UReg_32Bit RD51:8;
    Ifx_UReg_32Bit RD52:8;
    Ifx_UReg_32Bit RD53:8;
} Ifx_DMA_ME_R5_Bits;


typedef struct _Ifx_DMA_ME_R6_Bits
{
    Ifx_UReg_32Bit RD60:8;
    Ifx_UReg_32Bit RD61:8;
    Ifx_UReg_32Bit RD62:8;
    Ifx_UReg_32Bit RD63:8;
} Ifx_DMA_ME_R6_Bits;


typedef struct _Ifx_DMA_ME_R7_Bits
{
    Ifx_UReg_32Bit RD70:8;
    Ifx_UReg_32Bit RD71:8;
    Ifx_UReg_32Bit RD72:8;
    Ifx_UReg_32Bit RD73:8;
} Ifx_DMA_ME_R7_Bits;


typedef struct _Ifx_DMA_ME_RDCRC_Bits
{
    Ifx_UReg_32Bit RDCRC:32;
} Ifx_DMA_ME_RDCRC_Bits;


typedef struct _Ifx_DMA_ME_SADR_Bits
{
    Ifx_UReg_32Bit SADR:32;
} Ifx_DMA_ME_SADR_Bits;


typedef struct _Ifx_DMA_ME_SDCRC_Bits
{
    Ifx_UReg_32Bit SDCRC:32;
} Ifx_DMA_ME_SDCRC_Bits;


typedef struct _Ifx_DMA_ME_SHADR_Bits
{
    Ifx_UReg_32Bit SHADR:32;
} Ifx_DMA_ME_SHADR_Bits;


typedef struct _Ifx_DMA_ME_SR_Bits
{
    Ifx_UReg_32Bit RS:1;
    Ifx_UReg_32Bit reserved_1:3;
    Ifx_UReg_32Bit WS:1;
    Ifx_UReg_32Bit reserved_5:11;
    Ifx_UReg_32Bit CH:7;
    Ifx_UReg_32Bit reserved_23:9;
} Ifx_DMA_ME_SR_Bits;


typedef struct _Ifx_DMA_MODE_Bits
{
    Ifx_UReg_32Bit MODE:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_DMA_MODE_Bits;


typedef struct _Ifx_DMA_OTSS_Bits
{
    Ifx_UReg_32Bit TGS:4;
    Ifx_UReg_32Bit reserved_4:3;
    Ifx_UReg_32Bit BS:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_DMA_OTSS_Bits;


typedef struct _Ifx_DMA_PRR0_Bits
{
    Ifx_UReg_32Bit PAT00:8;
    Ifx_UReg_32Bit PAT01:8;
    Ifx_UReg_32Bit PAT02:8;
    Ifx_UReg_32Bit PAT03:8;
} Ifx_DMA_PRR0_Bits;


typedef struct _Ifx_DMA_PRR1_Bits
{
    Ifx_UReg_32Bit PAT10:8;
    Ifx_UReg_32Bit PAT11:8;
    Ifx_UReg_32Bit PAT12:8;
    Ifx_UReg_32Bit PAT13:8;
} Ifx_DMA_PRR1_Bits;


typedef struct _Ifx_DMA_SUSACR_Bits
{
    Ifx_UReg_32Bit SUSAC:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_DMA_SUSACR_Bits;


typedef struct _Ifx_DMA_SUSENR_Bits
{
    Ifx_UReg_32Bit SUSEN:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_DMA_SUSENR_Bits;


typedef struct _Ifx_DMA_TIME_Bits
{
    Ifx_UReg_32Bit COUNT:32;
} Ifx_DMA_TIME_Bits;


typedef struct _Ifx_DMA_TSR_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit HTRE:1;
    Ifx_UReg_32Bit TRL:1;
    Ifx_UReg_32Bit CH:1;
    Ifx_UReg_32Bit ETRL:1;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit HLTREQ:1;
    Ifx_UReg_32Bit HLTACK:1;
    Ifx_UReg_32Bit reserved_10:6;
    Ifx_UReg_32Bit ECH:1;
    Ifx_UReg_32Bit DCH:1;
    Ifx_UReg_32Bit CTL:1;
    Ifx_UReg_32Bit reserved_19:5;
    Ifx_UReg_32Bit HLTCLR:1;
    Ifx_UReg_32Bit reserved_25:7;
} Ifx_DMA_TSR_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ACCEN_ACCENR0_Bits B;
} Ifx_DMA_ACCEN_ACCENR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ACCEN_ACCENR1_Bits B;
} Ifx_DMA_ACCEN_ACCENR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_CH_ADICR_Bits B;
} Ifx_DMA_CH_ADICR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_CH_CHCFGR_Bits B;
} Ifx_DMA_CH_CHCFGR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_CH_CHCSR_Bits B;
} Ifx_DMA_CH_CHCSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_CH_DADR_Bits B;
} Ifx_DMA_CH_DADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_CH_RDCRCR_Bits B;
} Ifx_DMA_CH_RDCRCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_CH_SADR_Bits B;
} Ifx_DMA_CH_SADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_CH_SDCRCR_Bits B;
} Ifx_DMA_CH_SDCRCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_CH_SHADR_Bits B;
} Ifx_DMA_CH_SHADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_CLC_Bits B;
} Ifx_DMA_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ERRINTR_Bits B;
} Ifx_DMA_ERRINTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_HRR_Bits B;
} Ifx_DMA_HRR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ID_Bits B;
} Ifx_DMA_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_ADICR_Bits B;
} Ifx_DMA_ME_ADICR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_CHCR_Bits B;
} Ifx_DMA_ME_CHCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_CHSR_Bits B;
} Ifx_DMA_ME_CHSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_CLRE_Bits B;
} Ifx_DMA_ME_CLRE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_DADR_Bits B;
} Ifx_DMA_ME_DADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_EER_Bits B;
} Ifx_DMA_ME_EER;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_ERRSR_Bits B;
} Ifx_DMA_ME_ERRSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_R0_Bits B;
} Ifx_DMA_ME_R0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_R1_Bits B;
} Ifx_DMA_ME_R1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_R2_Bits B;
} Ifx_DMA_ME_R2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_R3_Bits B;
} Ifx_DMA_ME_R3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_R4_Bits B;
} Ifx_DMA_ME_R4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_R5_Bits B;
} Ifx_DMA_ME_R5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_R6_Bits B;
} Ifx_DMA_ME_R6;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_R7_Bits B;
} Ifx_DMA_ME_R7;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_RDCRC_Bits B;
} Ifx_DMA_ME_RDCRC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_SADR_Bits B;
} Ifx_DMA_ME_SADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_SDCRC_Bits B;
} Ifx_DMA_ME_SDCRC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_SHADR_Bits B;
} Ifx_DMA_ME_SHADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_ME_SR_Bits B;
} Ifx_DMA_ME_SR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_MODE_Bits B;
} Ifx_DMA_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_OTSS_Bits B;
} Ifx_DMA_OTSS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_PRR0_Bits B;
} Ifx_DMA_PRR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_PRR1_Bits B;
} Ifx_DMA_PRR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_SUSACR_Bits B;
} Ifx_DMA_SUSACR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_SUSENR_Bits B;
} Ifx_DMA_SUSENR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_TIME_Bits B;
} Ifx_DMA_TIME;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMA_TSR_Bits B;
} Ifx_DMA_TSR;
# 861 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA_ACCEN
{
       Ifx_DMA_ACCEN_ACCENR0 ACCENR0;
       Ifx_DMA_ACCEN_ACCENR1 ACCENR1;
} Ifx_DMA_ACCEN;
# 880 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA_ME
{
       Ifx_DMA_ME_EER EER;
       Ifx_DMA_ME_ERRSR ERRSR;
       Ifx_DMA_ME_CLRE CLRE;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_DMA_ME_SR SR;
       Ifx_UReg_8Bit reserved_14[12];
       Ifx_DMA_ME_R0 R0;
       Ifx_DMA_ME_R1 R1;
       Ifx_DMA_ME_R2 R2;
       Ifx_DMA_ME_R3 R3;
       Ifx_DMA_ME_R4 R4;
       Ifx_DMA_ME_R5 R5;
       Ifx_DMA_ME_R6 R6;
       Ifx_DMA_ME_R7 R7;
       Ifx_UReg_8Bit reserved_40[32];
       Ifx_DMA_ME_RDCRC RDCRC;
       Ifx_DMA_ME_SDCRC SDCRC;
       Ifx_DMA_ME_SADR SADR;
       Ifx_DMA_ME_DADR DADR;
       Ifx_DMA_ME_ADICR ADICR;
       Ifx_DMA_ME_CHCR CHCR;
       Ifx_DMA_ME_SHADR SHADR;
       Ifx_DMA_ME_CHSR CHSR;
} Ifx_DMA_ME;
# 920 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA_CH
{
       Ifx_DMA_CH_RDCRCR RDCRCR;
       Ifx_DMA_CH_SDCRCR SDCRCR;
       Ifx_DMA_CH_SADR SADR;
       Ifx_DMA_CH_DADR DADR;
       Ifx_DMA_CH_ADICR ADICR;
       Ifx_DMA_CH_CHCFGR CHCFGR;
       Ifx_DMA_CH_SHADR SHADR;
       Ifx_DMA_CH_CHCSR CHCSR;
} Ifx_DMA_CH;
# 945 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_regdef.h"
typedef volatile struct _Ifx_DMA
{
       Ifx_DMA_CLC CLC;
       Ifx_UReg_8Bit reserved_4[4];
       Ifx_DMA_ID ID;
       Ifx_UReg_8Bit reserved_C[52];
       Ifx_DMA_ACCEN ACCEN[4];
       Ifx_UReg_8Bit reserved_60[192];
       Ifx_DMA_ME ME0;
       Ifx_UReg_8Bit reserved_1A0[3968];
       Ifx_DMA_ME ME1;
       Ifx_UReg_8Bit reserved_11A0[96];
       Ifx_DMA_OTSS OTSS;
       Ifx_UReg_8Bit reserved_1204[4];
       Ifx_DMA_PRR0 PRR0;
       Ifx_DMA_PRR1 PRR1;
       Ifx_DMA_TIME TIME;
       Ifx_UReg_8Bit reserved_1214[236];
       Ifx_DMA_MODE MODE[4];
       Ifx_UReg_8Bit reserved_1310[16];
       Ifx_DMA_ERRINTR ERRINTR[4];
       Ifx_UReg_8Bit reserved_1330[1232];
       Ifx_DMA_HRR HRR[128];
       Ifx_DMA_SUSENR SUSENR[128];
       Ifx_DMA_SUSACR SUSACR[128];
       Ifx_DMA_TSR TSR[128];
       Ifx_DMA_CH CH[128];
       Ifx_UReg_8Bit reserved_3000[4096];
} Ifx_DMA;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_reg.h" 2
# 2 ".\\output\\inc/IfxDma_reg.h" 2
# 46 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c" 2
# 1 ".\\output\\inc/IfxDma_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_bf.h" 1
# 2 ".\\output\\inc/IfxDma_bf.h" 2
# 47 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c" 2
# 1 ".\\output\\inc/IfxQspi_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_reg.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h"
typedef struct _Ifx_QSPI_ACCEN0_Bits
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
} Ifx_QSPI_ACCEN0_Bits;


typedef struct _Ifx_QSPI_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_QSPI_ACCEN1_Bits;


typedef struct _Ifx_QSPI_BACON_Bits
{
    Ifx_UReg_32Bit LAST:1;
    Ifx_UReg_32Bit IPRE:3;
    Ifx_UReg_32Bit IDLE:3;
    Ifx_UReg_32Bit LPRE:3;
    Ifx_UReg_32Bit LEAD:3;
    Ifx_UReg_32Bit TPRE:3;
    Ifx_UReg_32Bit TRAIL:3;
    Ifx_UReg_32Bit PARTYP:1;
    Ifx_UReg_32Bit UINT:1;
    Ifx_UReg_32Bit MSB:1;
    Ifx_UReg_32Bit BYTE:1;
    Ifx_UReg_32Bit DL:5;
    Ifx_UReg_32Bit CS:4;
} Ifx_QSPI_BACON_Bits;


typedef struct _Ifx_QSPI_BACONENTRY_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_BACONENTRY_Bits;


typedef struct _Ifx_QSPI_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_QSPI_CLC_Bits;


typedef struct _Ifx_QSPI_DATAENTRY_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_DATAENTRY_Bits;


typedef struct _Ifx_QSPI_ECON_Bits
{
    Ifx_UReg_32Bit Q:6;
    Ifx_UReg_32Bit A:2;
    Ifx_UReg_32Bit B:2;
    Ifx_UReg_32Bit C:2;
    Ifx_UReg_32Bit CPH:1;
    Ifx_UReg_32Bit CPOL:1;
    Ifx_UReg_32Bit PAREN:1;
    Ifx_UReg_32Bit reserved_15:15;
    Ifx_UReg_32Bit BE:2;
} Ifx_QSPI_ECON_Bits;


typedef struct _Ifx_QSPI_FLAGSCLEAR_Bits
{
    Ifx_UReg_32Bit ERRORCLEARS:9;
    Ifx_UReg_32Bit TXC:1;
    Ifx_UReg_32Bit RXC:1;
    Ifx_UReg_32Bit PT1C:1;
    Ifx_UReg_32Bit PT2C:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit USRC:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_QSPI_FLAGSCLEAR_Bits;


typedef struct _Ifx_QSPI_GLOBALCON_Bits
{
    Ifx_UReg_32Bit TQ:8;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit SI:1;
    Ifx_UReg_32Bit EXPECT:4;
    Ifx_UReg_32Bit LB:1;
    Ifx_UReg_32Bit DEL0:1;
    Ifx_UReg_32Bit STROBE:5;
    Ifx_UReg_32Bit SRF:1;
    Ifx_UReg_32Bit STIP:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit EN:1;
    Ifx_UReg_32Bit MS:2;
    Ifx_UReg_32Bit AREN:1;
    Ifx_UReg_32Bit reserved_28:1;
    Ifx_UReg_32Bit CLKSEL:1;
    Ifx_UReg_32Bit RESETS:2;
} Ifx_QSPI_GLOBALCON_Bits;


typedef struct _Ifx_QSPI_GLOBALCON1_Bits
{
    Ifx_UReg_32Bit ERRORENS:9;
    Ifx_UReg_32Bit TXEN:1;
    Ifx_UReg_32Bit RXEN:1;
    Ifx_UReg_32Bit PT1EN:1;
    Ifx_UReg_32Bit PT2EN:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit USREN:1;
    Ifx_UReg_32Bit TXFIFOINT:2;
    Ifx_UReg_32Bit RXFIFOINT:2;
    Ifx_UReg_32Bit PT1:3;
    Ifx_UReg_32Bit PT2:3;
    Ifx_UReg_32Bit TXFM:2;
    Ifx_UReg_32Bit RXFM:2;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_QSPI_GLOBALCON1_Bits;


typedef struct _Ifx_QSPI_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUMBER:16;
} Ifx_QSPI_ID_Bits;


typedef struct _Ifx_QSPI_KRST0_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_QSPI_KRST0_Bits;


typedef struct _Ifx_QSPI_KRST1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_QSPI_KRST1_Bits;


typedef struct _Ifx_QSPI_KRSTCLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_QSPI_KRSTCLR_Bits;


typedef struct _Ifx_QSPI_MC_Bits
{
    Ifx_UReg_32Bit MCOUNT:13;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit CURRENT:13;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_QSPI_MC_Bits;


typedef struct _Ifx_QSPI_MCCON_Bits
{
    Ifx_UReg_32Bit TPRE2:3;
    Ifx_UReg_32Bit TRAIL2:3;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit IBLEN:1;
    Ifx_UReg_32Bit IBLF:1;
    Ifx_UReg_32Bit IBLC:1;
    Ifx_UReg_32Bit IBLS:1;
    Ifx_UReg_32Bit IALEN:1;
    Ifx_UReg_32Bit IALF:1;
    Ifx_UReg_32Bit IALC:1;
    Ifx_UReg_32Bit IALS:1;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit T2EN:1;
    Ifx_UReg_32Bit MCEN:1;
} Ifx_QSPI_MCCON_Bits;


typedef struct _Ifx_QSPI_MIXENTRY_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_MIXENTRY_Bits;


typedef struct _Ifx_QSPI_OCS_Bits
{
    Ifx_UReg_32Bit reserved_0:4;
    Ifx_UReg_32Bit reserved_4:20;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_QSPI_OCS_Bits;


typedef struct _Ifx_QSPI_PISEL_Bits
{
    Ifx_UReg_32Bit MRIS:3;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit SRIS:3;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit SCIS:3;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit SLSIS:3;
    Ifx_UReg_32Bit reserved_15:17;
} Ifx_QSPI_PISEL_Bits;


typedef struct _Ifx_QSPI_RXEXIT_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_RXEXIT_Bits;


typedef struct _Ifx_QSPI_RXEXITD_Bits
{
    Ifx_UReg_32Bit E:32;
} Ifx_QSPI_RXEXITD_Bits;


typedef struct _Ifx_QSPI_SSOC_Bits
{
    Ifx_UReg_32Bit AOL:16;
    Ifx_UReg_32Bit OEN:16;
} Ifx_QSPI_SSOC_Bits;


typedef struct _Ifx_QSPI_STATUS_Bits
{
    Ifx_UReg_32Bit ERRORFLAGS:9;
    Ifx_UReg_32Bit TXF:1;
    Ifx_UReg_32Bit RXF:1;
    Ifx_UReg_32Bit PT1F:1;
    Ifx_UReg_32Bit PT2F:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit USRF:1;
    Ifx_UReg_32Bit TXFIFOLEVEL:3;
    Ifx_UReg_32Bit RXFIFOLEVEL:3;
    Ifx_UReg_32Bit SLAVESEL:4;
    Ifx_UReg_32Bit RPV:1;
    Ifx_UReg_32Bit TPV:1;
    Ifx_UReg_32Bit PHASE:4;
} Ifx_QSPI_STATUS_Bits;


typedef struct _Ifx_QSPI_STATUS1_Bits
{
    Ifx_UReg_32Bit BITCOUNT:8;
    Ifx_UReg_32Bit reserved_8:20;
    Ifx_UReg_32Bit BRDEN:1;
    Ifx_UReg_32Bit BRD:1;
    Ifx_UReg_32Bit SPDEN:1;
    Ifx_UReg_32Bit SPD:1;
} Ifx_QSPI_STATUS1_Bits;


typedef struct _Ifx_QSPI_XXLCON_Bits
{
    Ifx_UReg_32Bit XDL:16;
    Ifx_UReg_32Bit BYTECOUNT:16;
} Ifx_QSPI_XXLCON_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_ACCEN0_Bits B;
} Ifx_QSPI_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_ACCEN1_Bits B;
} Ifx_QSPI_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_BACON_Bits B;
} Ifx_QSPI_BACON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_BACONENTRY_Bits B;
} Ifx_QSPI_BACONENTRY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_CLC_Bits B;
} Ifx_QSPI_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_DATAENTRY_Bits B;
} Ifx_QSPI_DATAENTRY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_ECON_Bits B;
} Ifx_QSPI_ECON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_FLAGSCLEAR_Bits B;
} Ifx_QSPI_FLAGSCLEAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_GLOBALCON_Bits B;
} Ifx_QSPI_GLOBALCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_GLOBALCON1_Bits B;
} Ifx_QSPI_GLOBALCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_ID_Bits B;
} Ifx_QSPI_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_KRST0_Bits B;
} Ifx_QSPI_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_KRST1_Bits B;
} Ifx_QSPI_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_KRSTCLR_Bits B;
} Ifx_QSPI_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_MC_Bits B;
} Ifx_QSPI_MC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_MCCON_Bits B;
} Ifx_QSPI_MCCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_MIXENTRY_Bits B;
} Ifx_QSPI_MIXENTRY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_OCS_Bits B;
} Ifx_QSPI_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_PISEL_Bits B;
} Ifx_QSPI_PISEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_RXEXIT_Bits B;
} Ifx_QSPI_RXEXIT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_RXEXITD_Bits B;
} Ifx_QSPI_RXEXITD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_SSOC_Bits B;
} Ifx_QSPI_SSOC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_STATUS_Bits B;
} Ifx_QSPI_STATUS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_STATUS1_Bits B;
} Ifx_QSPI_STATUS1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_QSPI_XXLCON_Bits B;
} Ifx_QSPI_XXLCON;
# 579 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h"
typedef volatile struct _Ifx_QSPI
{
       Ifx_QSPI_CLC CLC;
       Ifx_QSPI_PISEL PISEL;
       Ifx_QSPI_ID ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_QSPI_GLOBALCON GLOBALCON;
       Ifx_QSPI_GLOBALCON1 GLOBALCON1;
       Ifx_QSPI_BACON BACON;
       Ifx_UReg_8Bit reserved_1C[4];
       Ifx_QSPI_ECON ECON[8];
       Ifx_QSPI_STATUS STATUS;
       Ifx_QSPI_STATUS1 STATUS1;
       Ifx_QSPI_SSOC SSOC;
       Ifx_UReg_8Bit reserved_4C[8];
       Ifx_QSPI_FLAGSCLEAR FLAGSCLEAR;
       Ifx_QSPI_XXLCON XXLCON;
       Ifx_QSPI_MIXENTRY MIXENTRY;
       Ifx_QSPI_BACONENTRY BACONENTRY;
       Ifx_QSPI_DATAENTRY DATAENTRY[8];
       Ifx_UReg_8Bit reserved_84[12];
       Ifx_QSPI_RXEXIT RXEXIT;
       Ifx_QSPI_RXEXITD RXEXITD;
       Ifx_UReg_8Bit reserved_98[12];
       Ifx_QSPI_MC MC;
       Ifx_QSPI_MCCON MCCON;
       Ifx_UReg_8Bit reserved_AC[60];
       Ifx_QSPI_OCS OCS;
       Ifx_QSPI_KRSTCLR KRSTCLR;
       Ifx_QSPI_KRST1 KRST1;
       Ifx_QSPI_KRST0 KRST0;
       Ifx_QSPI_ACCEN1 ACCEN1;
       Ifx_QSPI_ACCEN0 ACCEN0;
} Ifx_QSPI;
# 69 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_reg.h" 2
# 2 ".\\output\\inc/IfxQspi_reg.h" 2
# 48 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c" 2





# 1 ".\\output\\inc/HtxTLF35584Qspi.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 1
# 43 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
# 1 ".\\output\\inc/IfxSrc_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef struct _Ifx_SRC_SRCR_Bits
{
    Ifx_UReg_32Bit SRPN:8;
    Ifx_UReg_32Bit reserved_8:2;
    Ifx_UReg_32Bit SRE:1;
    Ifx_UReg_32Bit TOS:3;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit ECC:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SRR:1;
    Ifx_UReg_32Bit CLRR:1;
    Ifx_UReg_32Bit SETR:1;
    Ifx_UReg_32Bit IOV:1;
    Ifx_UReg_32Bit IOVCLR:1;
    Ifx_UReg_32Bit SWS:1;
    Ifx_UReg_32Bit SWSCLR:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_SRC_SRCR_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SRC_SRCR_Bits B;
} Ifx_SRC_SRCR;
# 110 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CPU_CPU
{
       Ifx_SRC_SRCR SB;
} Ifx_SRC_CPU_CPU;
# 128 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CPU
{
       Ifx_SRC_CPU_CPU CPU[4];
} Ifx_SRC_CPU;
# 146 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CERBERUS_CERBERUS
{
       Ifx_SRC_SRCR SR[2];
} Ifx_SRC_CERBERUS_CERBERUS;
# 164 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CERBERUS
{
       Ifx_SRC_CERBERUS_CERBERUS CERBERUS;
} Ifx_SRC_CERBERUS;
# 182 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ASCLIN_ASCLIN
{
       Ifx_SRC_SRCR TX;
       Ifx_SRC_SRCR RX;
       Ifx_SRC_SRCR ERR;
} Ifx_SRC_ASCLIN_ASCLIN;
# 202 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ASCLIN
{
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN[12];
} Ifx_SRC_ASCLIN;
# 220 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_QSPI_QSPI
{
       Ifx_SRC_SRCR TX;
       Ifx_SRC_SRCR RX;
       Ifx_SRC_SRCR ERR;
       Ifx_SRC_SRCR PT;
       Ifx_SRC_SRCR U;
} Ifx_SRC_QSPI_QSPI;
# 242 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_QSPI
{
       Ifx_SRC_QSPI_QSPI QSPI[5];
} Ifx_SRC_QSPI;
# 260 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSCT_HSCT
{
       Ifx_SRC_SRCR SR;
} Ifx_SRC_HSCT_HSCT;
# 278 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSCT
{
       Ifx_SRC_HSCT_HSCT HSCT[1];
} Ifx_SRC_HSCT;
# 296 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSSL_HSSL_CH
{
       Ifx_SRC_SRCR COK;
       Ifx_SRC_SRCR RDI;
       Ifx_SRC_SRCR ERR;
       Ifx_SRC_SRCR TRG;
} Ifx_SRC_HSSL_HSSL_CH;
# 317 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSSL_HSSL
{
       Ifx_SRC_HSSL_HSSL_CH CH[4];
       Ifx_SRC_SRCR EXI;
} Ifx_SRC_HSSL_HSSL;
# 336 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSSL
{
       Ifx_SRC_HSSL_HSSL HSSL[1];
} Ifx_SRC_HSSL;
# 354 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_I2C_I2C
{
       Ifx_SRC_SRCR DTR;
       Ifx_SRC_SRCR ERR;
       Ifx_SRC_SRCR P;
       Ifx_UReg_8Bit reserved_C[4];
} Ifx_SRC_I2C_I2C;
# 375 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_I2C
{
       Ifx_SRC_I2C_I2C I2C[2];
} Ifx_SRC_I2C;
# 393 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SENT_SENT
{
       Ifx_SRC_SRCR SR;
} Ifx_SRC_SENT_SENT;
# 411 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SENT
{
       Ifx_SRC_SENT_SENT SENT[10];
} Ifx_SRC_SENT;
# 429 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_MSC_MSC
{
       Ifx_SRC_SRCR SR[5];
} Ifx_SRC_MSC_MSC;
# 447 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_MSC
{
       Ifx_SRC_MSC_MSC MSC[3];
} Ifx_SRC_MSC;
# 465 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CCU6_CCU
{
       Ifx_SRC_SRCR SR[4];
} Ifx_SRC_CCU6_CCU;
# 483 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CCU6
{
       Ifx_SRC_CCU6_CCU CCU[2];
} Ifx_SRC_CCU6;
# 501 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GPT12_GPT12
{
       Ifx_SRC_SRCR CIRQ;
       Ifx_SRC_SRCR T2;
       Ifx_SRC_SRCR T3;
       Ifx_SRC_SRCR T4;
       Ifx_SRC_SRCR T5;
       Ifx_SRC_SRCR T6;
} Ifx_SRC_GPT12_GPT12;
# 524 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GPT12
{
       Ifx_SRC_GPT12_GPT12 GPT12[1];
} Ifx_SRC_GPT12;
# 542 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_STM_STM
{
       Ifx_SRC_SRCR SR[2];
} Ifx_SRC_STM_STM;
# 560 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_STM
{
       Ifx_SRC_STM_STM STM[4];
} Ifx_SRC_STM;
# 578 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_FCE_FCE0
{
       Ifx_SRC_SRCR SR;
} Ifx_SRC_FCE_FCE0;
# 596 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_FCE
{
       Ifx_SRC_FCE_FCE0 FCE0;
} Ifx_SRC_FCE;
# 614 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DMA_DMA
{
       Ifx_SRC_SRCR ERR[4];
       Ifx_UReg_8Bit reserved_10[32];
       Ifx_SRC_SRCR CH[128];
} Ifx_SRC_DMA_DMA;
# 634 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DMA
{
       Ifx_SRC_DMA_DMA DMA[1];
} Ifx_SRC_DMA;
# 652 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GETH_GETH
{
       Ifx_SRC_SRCR SR[10];
} Ifx_SRC_GETH_GETH;
# 670 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GETH
{
       Ifx_SRC_GETH_GETH GETH[1];
} Ifx_SRC_GETH;
# 688 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CAN_CAN
{
       Ifx_SRC_SRCR INT[16];
} Ifx_SRC_CAN_CAN;
# 706 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_CAN
{
       Ifx_SRC_CAN_CAN CAN[3];
} Ifx_SRC_CAN;
# 724 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_VADC_G
{
       Ifx_SRC_SRCR SR0;
       Ifx_SRC_SRCR SR1;
       Ifx_SRC_SRCR SR2;
       Ifx_SRC_SRCR SR3;
} Ifx_SRC_VADC_G;
# 745 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_VADC_FC
{
       Ifx_SRC_SRCR SR0;
} Ifx_SRC_VADC_FC;
# 764 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_VADC
{
       Ifx_SRC_VADC_G G[12];
       Ifx_SRC_VADC_FC FC[4];
       Ifx_UReg_8Bit reserved_D0[16];
       Ifx_SRC_VADC_G CG[2];
} Ifx_SRC_VADC;
# 785 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DSADC_DSADC
{
       Ifx_SRC_SRCR SRM;
       Ifx_SRC_SRCR SRA;
} Ifx_SRC_DSADC_DSADC;
# 804 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DSADC
{
       Ifx_SRC_DSADC_DSADC DSADC[10];
} Ifx_SRC_DSADC;
# 824 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ERAY_ERAY
{
       Ifx_SRC_SRCR INT0;
       Ifx_SRC_SRCR INT1;
       Ifx_SRC_SRCR TINT0;
       Ifx_SRC_SRCR TINT1;
       Ifx_SRC_SRCR NDAT0;
       Ifx_SRC_SRCR NDAT1;
       Ifx_SRC_SRCR MBSC0;
       Ifx_SRC_SRCR MBSC1;
       Ifx_SRC_SRCR OBUSY;
       Ifx_SRC_SRCR IBUSY;
       Ifx_UReg_8Bit reserved_28[8];
} Ifx_SRC_ERAY_ERAY;
# 852 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_ERAY
{
       Ifx_SRC_ERAY_ERAY ERAY[2];
} Ifx_SRC_ERAY;
# 870 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSM_HSM
{
       Ifx_SRC_SRCR HSM[2];
} Ifx_SRC_HSM_HSM;
# 888 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_HSM
{
       Ifx_SRC_HSM_HSM HSM[1];
} Ifx_SRC_HSM;
# 906 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SCU
{
       Ifx_SRC_SRCR SCUERU[4];
} Ifx_SRC_SCU;
# 924 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PMS_PMS
{
       Ifx_SRC_SRCR SR;
} Ifx_SRC_PMS_PMS;
# 942 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PMS
{
       Ifx_SRC_PMS_PMS PMS[4];
} Ifx_SRC_PMS;
# 960 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SMU_SMU
{
       Ifx_SRC_SRCR SR[3];
} Ifx_SRC_SMU_SMU;
# 978 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_SMU
{
       Ifx_SRC_SMU_SMU SMU[1];
} Ifx_SRC_SMU;
# 996 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PSI5_PSI5
{
       Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5_PSI5;
# 1014 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PSI5
{
       Ifx_SRC_PSI5_PSI5 PSI5[1];
} Ifx_SRC_PSI5;
# 1032 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DAM_DAM
{
       Ifx_SRC_SRCR LI0;
       Ifx_SRC_SRCR RI0;
       Ifx_SRC_SRCR LI1;
       Ifx_SRC_SRCR RI1;
       Ifx_SRC_SRCR DR;
       Ifx_SRC_SRCR ERR;
} Ifx_SRC_DAM_DAM;
# 1055 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_DAM
{
       Ifx_SRC_DAM_DAM DAM[1];
} Ifx_SRC_DAM;
# 1073 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PSI5S_PSI5S
{
       Ifx_SRC_SRCR SR[8];
} Ifx_SRC_PSI5S_PSI5S;
# 1091 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_PSI5S
{
       Ifx_SRC_PSI5S_PSI5S PSI5S[1];
} Ifx_SRC_PSI5S;
# 1109 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GPSR_GPSR
{
       Ifx_SRC_SRCR SR[8];
} Ifx_SRC_GPSR_GPSR;
# 1127 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC_GPSR
{
       Ifx_SRC_GPSR_GPSR GPSR[4];
} Ifx_SRC_GPSR;
# 1155 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
typedef volatile struct _Ifx_SRC
{
       Ifx_SRC_CPU CPU;
       Ifx_UReg_8Bit reserved_10[16];
       Ifx_SRC_SRCR SBCU;
       Ifx_UReg_8Bit reserved_24[12];
       Ifx_SRC_SRCR XBAR0;
       Ifx_UReg_8Bit reserved_34[12];
       Ifx_SRC_CERBERUS CERBERUS;
       Ifx_UReg_8Bit reserved_48[8];
       Ifx_SRC_ASCLIN ASCLIN;
       Ifx_UReg_8Bit reserved_E0[12];
       Ifx_SRC_SRCR MTUDONE;
       Ifx_SRC_QSPI QSPI;
       Ifx_UReg_8Bit reserved_154[44];
       Ifx_SRC_HSCT HSCT;
       Ifx_UReg_8Bit reserved_184[12];
       Ifx_SRC_HSSL HSSL;
       Ifx_UReg_8Bit reserved_1D4[76];
       Ifx_SRC_I2C I2C;
       Ifx_SRC_SENT SENT;
       Ifx_UReg_8Bit reserved_268[8];
       Ifx_SRC_MSC MSC;
       Ifx_UReg_8Bit reserved_2AC[20];
       Ifx_SRC_CCU6 CCU6;
       Ifx_SRC_GPT12 GPT12;
       Ifx_UReg_8Bit reserved_2F8[8];
       Ifx_SRC_STM STM;
       Ifx_UReg_8Bit reserved_320[16];
       Ifx_SRC_FCE FCE;
       Ifx_UReg_8Bit reserved_334[12];
       Ifx_SRC_DMA DMA;
       Ifx_UReg_8Bit reserved_570[16];
       Ifx_SRC_GETH GETH;
       Ifx_UReg_8Bit reserved_5A8[8];
       Ifx_SRC_CAN CAN;
       Ifx_SRC_VADC VADC;
       Ifx_SRC_DSADC DSADC;
       Ifx_UReg_8Bit reserved_7C0[32];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN12;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN13;
       Ifx_UReg_8Bit reserved_7F8[8];
       Ifx_SRC_ERAY ERAY;
       Ifx_SRC_SRCR DMUHOST;
       Ifx_SRC_SRCR DMUFSI;
       Ifx_UReg_8Bit reserved_868[8];
       Ifx_SRC_HSM HSM;
       Ifx_UReg_8Bit reserved_878[8];
       Ifx_SRC_SCU SCU;
       Ifx_UReg_8Bit reserved_890[28];
       Ifx_SRC_SRCR PMSDTS;
       Ifx_SRC_PMS PMS;
       Ifx_SRC_SRCR SCR;
       Ifx_UReg_8Bit reserved_8C4[12];
       Ifx_SRC_SMU SMU;
       Ifx_UReg_8Bit reserved_8DC[4];
       Ifx_SRC_PSI5 PSI5;
       Ifx_UReg_8Bit reserved_900[16];
       Ifx_SRC_DAM DAM;
       Ifx_UReg_8Bit reserved_928[40];
       Ifx_SRC_PSI5S PSI5S;
       Ifx_UReg_8Bit reserved_970[32];
       Ifx_SRC_GPSR GPSR;
       Ifx_UReg_8Bit reserved_A10[64];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN14;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN15;
       Ifx_UReg_8Bit reserved_A68[8];
       Ifx_SRC_SRCR GTM_AEIIRQ;
       Ifx_SRC_SRCR GTM_ARUIRQ[3];
       Ifx_SRC_SRCR GTM_BRCIRQ;
       Ifx_SRC_SRCR GTM_CMBIRQ;
       Ifx_SRC_SRCR GTM_SPEIRQ[4];
       Ifx_UReg_8Bit reserved_A98[8];
       Ifx_SRC_SRCR GTM_PSM[2][8];
       Ifx_UReg_8Bit reserved_AE0[32];
       Ifx_SRC_SRCR GTM_DPLL[27];
       Ifx_UReg_8Bit reserved_B6C[4];
       Ifx_SRC_SRCR GTM_ERR;
       Ifx_UReg_8Bit reserved_B74[28];
       Ifx_SRC_SRCR GTM_TIM[7][8];
       Ifx_UReg_8Bit reserved_C70[32];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN16;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN17;
       Ifx_UReg_8Bit reserved_CA8[8];
       Ifx_SRC_SRCR GTM_MCS[7][8];
       Ifx_UReg_8Bit reserved_D90[96];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN18;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN19;
       Ifx_UReg_8Bit reserved_E08[8];
       Ifx_SRC_SRCR GTM_TOM[5][8];
       Ifx_UReg_8Bit reserved_EB0[32];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN20;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN21;
       Ifx_UReg_8Bit reserved_EE8[8];
       Ifx_SRC_SRCR GTM_ATOM[9][4];
       Ifx_UReg_8Bit reserved_F80[48];
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN22;
       Ifx_SRC_ASCLIN_ASCLIN ASCLIN23;
       Ifx_UReg_8Bit reserved_FC8[8];
       Ifx_SRC_SRCR GTM_MCSW[10];
       Ifx_UReg_8Bit reserved_FF8[4104];
} Ifx_SRC;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_reg.h" 2
# 2 ".\\output\\inc/IfxSrc_reg.h" 2
# 44 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 1 ".\\output\\inc/IfxQspi_reg.h" 1
# 45 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2





# 1 ".\\output\\inc/HtxStpIf.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 1
# 56 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h"
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
# 57 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 1 ".\\output\\inc/Platform_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 2 ".\\output\\inc/Platform_Types.h" 2
# 58 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 1 ".\\output\\inc/McalLib.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 1
# 41 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
# 1 ".\\output\\inc/McalLib_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\McalLib_Cfg.h" 1
# 2 ".\\output\\inc/McalLib_Cfg.h" 2
# 42 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 2
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 1
# 45 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 46 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 2
# 1 ".\\output\\inc/Compiler.h" 1
# 47 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 2






# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 1 3
# 88 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _bisr (const unsigned __irq_level)
{
  __asm__ volatile ("bisr %0" :: "i" (__irq_level) : "memory");
}
# 110 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
unsigned _mfcr (const unsigned __regaddr)
{
  unsigned __res;
  __asm__ volatile ("mfcr %0, LO:%1"
                    : "=d" (__res) : "i" (__regaddr) : "memory");
  return __res;
}
# 134 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _mtcr (const unsigned __regaddr, const unsigned __val)
{
  __asm__ volatile ("mtcr LO:%0, %1"
                    :: "i" (__regaddr), "d" (__val) : "memory");
}
# 152 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _syscall (const unsigned __service)
{
  __asm__ volatile ("syscall %0" :: "i" (__service) : "memory");
}






static __inline__ __attribute__((__always_inline__))
void _disable (void)
{
  __asm__ volatile ("disable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _enable (void)
{
  __asm__ volatile ("enable" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _debug (void)
{
  __asm__ volatile ("debug" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _isync (void)
{
  __asm__ volatile ("isync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _dsync (void)
{
  __asm__ volatile ("dsync" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rstv (void)
{
  __asm__ volatile ("rstv" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _rslcx (void)
{
    __asm__ volatile ("rslcx" ::: "memory",
                      "d0", "d1", "d2", "d3", "d4", "d5", "d6", "d7",
                      "a2", "a3", "a4", "a5", "a6", "a7", "a11");
}


static __inline__ __attribute__((__always_inline__))
void _svlcx (void)
{
  __asm__ volatile ("svlcx" ::: "memory");
}

static __inline__ __attribute__((__always_inline__))
void _nop (void)
{
  __asm__ volatile ("nop" ::: "memory");
}
# 227 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h" 3
static __inline__ __attribute__((__always_inline__))
void _restore (const int irqs_on)
{



  if (irqs_on)
    _enable();
  else
    _disable();

}
# 54 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 2
# 75 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
typedef unsigned int unsigned_int;
# 201 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned __crc32bw( unsigned b, unsigned a )
 __attribute__ ((always_inline));






static __inline__ unsigned __crc32bw( unsigned b, unsigned a ) {
  unsigned res;
  __asm__ volatile("crc32b.w %0, %1, %2" :"=d"(res) : "d"(b), "d"(a): "memory");
    return res;
}
# 223 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned __crc32b( unsigned b, unsigned a )
 __attribute__ ((always_inline));






static __inline__ unsigned __crc32b( unsigned b, unsigned a ) {
  unsigned res;
  __asm__ volatile("crc32.b %0, %1, %2" :"=d"(res) : "d"(b), "d"(a): "memory");
    return res;
}
# 613 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned _extru(unsigned a, unsigned p, unsigned w) {
  unsigned res;
  __asm__ volatile ("mov %%d14,%2  \n                     mov %%d15,%3  \n                     extr.u %0,%1,%%e14"


                    : "=d" (res) : "d" (a), "d" (p), "d" (w):"d14","d15");
  return res;
}
# 717 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned int cmpswap_w (unsigned int volatile *address,
           unsigned int value, unsigned int condition)
{
  __extension__ unsigned long long reg64
    = value | (unsigned long long) condition << 32;

  __asm__ __volatile__ ("cmpswap.w [%[addr]]0, %A[reg]"
                        : [reg] "+d" (reg64)
                        : [addr] "a" (address)
                        : "memory");
    return reg64;
}
# 839 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
static __inline__ unsigned int swapmskw (unsigned int *address,
                                           unsigned int value,unsigned int mask)
{
  __extension__ unsigned long long reg64
    = value | (unsigned long long) mask << 32;

    __asm__ __volatile__( "swapmsk.w [%[addr]] 0,%A[reg]"
        : [reg]"+d" (reg64)
        : [addr]"a" (address)
        : "memory");
     return ((unsigned int)reg64 & mask);
}
# 43 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 2
# 273 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
# 1 ".\\output\\inc/McalLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\McalLib_MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\McalLib_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/McalLib_MemMap.h" 2
# 274 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 2
# 297 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetCpuWdgPassword(void);
# 324 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_SetCpuWdgPassword(const uint32 Password);
# 350 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WriteCpuEndInitProtReg
(volatile void* const RegAddress, const uint32 DataValue);
# 377 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetSafetyEndInitPassword(void);
# 405 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_SetSafetyEndInitPassword(const uint32 Password);
# 432 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WriteSafetyEndInitProtReg
( volatile void* const RegAddress, const uint32 DataValue);
# 466 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WriteSafetyEndInitProtRegMask
(volatile void* const RegAddress, const uint32 DataValue, uint32 Mask);
# 492 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetPeripheralEndInitPassword(void);
# 520 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_SetPeripheralEndInitPassword(const uint32 Password);
# 547 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WritePeripEndInitProtReg
( volatile void* const RegAddress, const uint32 DataValue);
# 573 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetCpuPhysicalId(void);
# 609 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetGlobalDsprAddress
(const uint32 CpuId, const uint32 LocalDsprAddress);
# 642 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetLocalDsprAddress(const uint32 GlobalDsprAddress);
# 677 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetGlobalPsprAddress
(const uint32 CpuId, const uint32 LocalPsprAddress);
# 711 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetLocalPsprAddress(const uint32 GlobalPsprAddress);
# 734 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_DelayTickResolution(void);
# 762 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_DelayResetTickCalibration(void);
# 794 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_DelayGetTick(void);
# 821 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_GetCpuIndex(void);
# 853 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_GetSpinlock
(volatile uint32 * const LockAddress, const uint32 Timeout);
# 879 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_ReleaseSpinlock(volatile uint32 * const LockAddress);
# 903 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void McalLib_GetVersionInfo( Std_VersionInfoType* const versioninfo);
# 930 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern void Mcal_WriteSafetyEndInitProtReg16(volatile void* const RegAddress,
                                      const uint16 DataValue);
# 963 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_UpdateSafetyEndInit(const uint32 NewPassword,
                                       const boolean UpdatePassword,
                                       const boolean SetResetProtection);
# 995 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
extern uint32 Mcal_UpdatePeripheralEndInit(const uint32 NewPassword,
                                           const boolean UpdatePassword,
                                           const boolean SetResetProtection);





# 1 ".\\output\\inc/McalLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\McalLib_MemMap.h" 1
# 149 ".\\output\\inc/..\\..\\Integration\\mcal\\McalLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/McalLib_MemMap.h" 2
# 1004 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h" 2
# 2 ".\\output\\inc/McalLib.h" 2
# 59 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 1 ".\\output\\inc/Smu.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h" 1
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
# 1 ".\\output\\inc/Smu_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\CfgMcal\\inc\\Smu_Cfg.h" 1
# 2 ".\\output\\inc/Smu_Cfg.h" 2
# 48 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h" 2
# 1 ".\\output\\inc/Std_Types.h" 1
# 49 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h" 2
# 124 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
typedef uint32 Smu_FSPActionType;



typedef enum
{
  SMU_EFRST_DISABLE = 0U,
  SMU_EFRST_ENABLE = 1U
} Smu_EnableRunStateType;




typedef uint8 Smu_CoreCommandType;
# 149 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
typedef uint8 Smu_CoreStateType;
# 158 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
typedef uint8 Smu_CoreAlarmActionType;
# 170 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
typedef enum
{
  SMU_ALARM_GROUP0 = 0U,
  SMU_ALARM_GROUP1 = 1U,
  SMU_ALARM_GROUP2 = 2U,
  SMU_ALARM_GROUP3 = 3U,
  SMU_ALARM_GROUP4 = 4U,
  SMU_ALARM_GROUP5 = 5U,
  SMU_ALARM_GROUP6 = 6U,
  SMU_ALARM_GROUP7 = 7U,
  SMU_ALARM_GROUP8 = 8U,
  SMU_ALARM_GROUP9 = 9U,
  SMU_ALARM_GROUP10 = 10U,
  SMU_ALARM_GROUP11 = 11U,
  SMU_ALARM_GROUP20 = 20U,
  SMU_ALARM_GROUP21 = 21U
} Smu_AlarmGroupId;



typedef enum
{
  SMU_ALARM_0 = 0U,
  SMU_ALARM_1 = 1U,
  SMU_ALARM_2 = 2U,
  SMU_ALARM_3 = 3U,
  SMU_ALARM_4 = 4U,
  SMU_ALARM_5 = 5U,
  SMU_ALARM_6 = 6U,
  SMU_ALARM_7 = 7U,
  SMU_ALARM_8 = 8U,
  SMU_ALARM_9 = 9U,
  SMU_ALARM_10 = 10U,
  SMU_ALARM_11 = 11U,
  SMU_ALARM_12 = 12U,
  SMU_ALARM_13 = 13U,
  SMU_ALARM_14 = 14U,
  SMU_ALARM_15 = 15U,
  SMU_ALARM_16 = 16U,
  SMU_ALARM_17 = 17U,
  SMU_ALARM_18 = 18U,
  SMU_ALARM_19 = 19U,
  SMU_ALARM_20 = 20U,
  SMU_ALARM_21 = 21U,
  SMU_ALARM_22 = 22U,
  SMU_ALARM_23 = 23U,
  SMU_ALARM_24 = 24U,
  SMU_ALARM_25 = 25U,
  SMU_ALARM_26 = 26U,
  SMU_ALARM_27 = 27U,
  SMU_ALARM_28 = 28U,
  SMU_ALARM_29 = 29U,
  SMU_ALARM_30 = 30U,
  SMU_ALARM_31 = 31U
} Smu_AlarmIdType;



typedef uint8 Smu_SffTestResType;




typedef struct
{
  uint32 FSPCfg;
  uint32 AGCCfg;
  uint32 RTCCfg;
  uint32 RTAC00Cfg;
  uint32 RTAC01Cfg;
  uint32 RTAC10Cfg;
  uint32 RTAC11Cfg;
  uint32 AlarmStdbyCfg;
  uint32 AlarmCoreConfig[((uint32)(36U))];
  uint32 AlarmCoreFspConfig[((uint32)(12U))];
  uint32 AlarmStdbyFspConfig[((uint32)(2U))];
} Smu_ConfigType;
# 261 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
# 1 ".\\output\\inc/Smu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h" 1
# 112 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Smu_MemMap.h" 2
# 262 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h" 2
# 295 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_Init
(
  const Smu_ConfigType* const ConfigPtr
);
# 326 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_DeInit(void);
# 359 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_GetAlarmAction
(
  const Smu_AlarmGroupId AlarmGroup,
  const Smu_AlarmIdType AlarmPos,
  Smu_CoreAlarmActionType* const IntAlarmAction,
  Smu_FSPActionType* const FSPAction
);
# 398 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_SetAlarmAction
(
  const Smu_AlarmGroupId AlarmGroup,
  const Smu_AlarmIdType AlarmPos,
  const Smu_CoreAlarmActionType AlarmAction,
  const Smu_FSPActionType FSPAction
);
# 430 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_LockConfigRegs(void);
# 465 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ActivateRunState(const uint32 Cmd);
# 494 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ClearAlarmStatus
(
  const Smu_AlarmGroupId AlarmGroup,
  const Smu_AlarmIdType AlarmPos
);
# 532 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_SetAlarmStatus
(
  const Smu_AlarmGroupId AlarmGroup,
  const Smu_AlarmIdType AlarmPos
);
# 564 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_GetAlarmStatus
(
  const Smu_AlarmGroupId AlarmGroup,
  uint32* const AlarmStatus
);
# 598 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_GetAlarmDebugStatus
(
  const Smu_AlarmGroupId AlarmGroup,
  uint32* const AlarmStatus
);
# 629 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_SetupErrorPin(void);
# 652 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ReleaseErrorPin(void);
# 682 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ReleaseFSP(void);
# 711 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ActivateFSP(void);
# 741 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_RTStop(const uint8 TimerNum );
# 775 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_GetRTMissedEvent
(
  const uint8 TimerNum,
  boolean* const EventMissed
);
# 806 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Smu_CoreStateType Smu_GetSmuState(void);
# 831 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ActivatePES (void);
# 856 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_CoreAliveTest (void);
# 882 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_GetAlarmExecutionStatus(
  const uint32 AlarmExecStatusReq,
  uint32* const AlarmExecStatus);
# 909 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_ClearAlarmExecutionStatus
(
  const uint32 AlarmExecStatusReq
);
# 942 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_RegisterMonitor
(
  const uint16 * const RegMonPtr, Smu_SffTestResType * const RegMonResult
);
# 972 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
extern Std_ReturnType Smu_InitCheck (const Smu_ConfigType* const ConfigPtr);
# 1019 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h"
# 1 ".\\output\\inc/Smu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h" 1
# 124 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Smu_MemMap.h" 2
# 1020 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h" 2

# 1 ".\\output\\inc/Smu_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\CfgMcal\\inc\\Smu_PBcfg.h" 1
# 54 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\CfgMcal\\inc\\Smu_PBcfg.h"
# 1 ".\\output\\inc/Smu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h" 1
# 77 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Smu_MemMap.h" 2
# 55 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\CfgMcal\\inc\\Smu_PBcfg.h" 2

extern const Smu_ConfigType Smu_Config;





# 1 ".\\output\\inc/Smu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h" 1
# 90 ".\\output\\inc/..\\..\\Integration\\mcal\\Smu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Smu_MemMap.h" 2
# 63 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\CfgMcal\\inc\\Smu_PBcfg.h" 2
# 2 ".\\output\\inc/Smu_PBcfg.h" 2
# 1022 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\Mcal\\Smu\\inc\\Smu.h" 2
# 2 ".\\output\\inc/Smu.h" 2
# 60 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2







# 1 ".\\output\\inc/SchM_HtxIntSafeWdg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\BaseSw\\Integration\\SchM_HtxIntSafeWdg.h" 1
# 77 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\BaseSw\\Integration\\SchM_HtxIntSafeWdg.h"
extern void SchM_Enter_HtxIntSafeWdgWdtscon0(void);
# 108 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\BaseSw\\Integration\\SchM_HtxIntSafeWdg.h"
extern void SchM_Exit_HtxIntSafeWdgWdtscon0(void);
# 139 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\BaseSw\\Integration\\SchM_HtxIntSafeWdg.h"
extern void SchM_Enter_HtxIntSafeWdgWdtscon1(void);
# 170 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\BaseSw\\Integration\\SchM_HtxIntSafeWdg.h"
extern void SchM_Exit_HtxIntSafeWdgWdtscon1(void);
# 2 ".\\output\\inc/SchM_HtxIntSafeWdg.h" 2
# 68 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 1 ".\\output\\inc/StpRefApp.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h" 1
# 43 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 44 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h" 2
# 68 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern uint8 GetActiveCall(void);
extern void SetActiveCall(uint8 u8Called);
# 101 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_SafeTpackMain(void);
# 134 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Tick(void);
# 167 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_WaitForTick(void);
# 200 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_SafeWdgInit(void);
# 233 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Runtime_Cpu0(void);
# 265 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Runtime_Cpu1(void);
# 297 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Runtime_Cpu2(void);
# 329 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Runtime_Cpu3(void);
# 361 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Runtime_Cpu4(void);
# 393 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_Runtime_Cpu5(void);
# 427 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern uint8 TLF35584Demo_IsSsspActive(void);
# 459 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void TLF35584Demo_InterruptHandler(void);
# 490 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
extern void StpRefApp_TlfDisable(void);
# 2 ".\\output\\inc/StpRefApp.h" 2
# 69 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 1 ".\\output\\inc/AppCbk.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h" 1
# 46 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h"
# 1 ".\\output\\inc/Platform_Types.h" 1
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h" 2
# 72 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h"
typedef uint32 AppCbk_ErrorIdType;
# 117 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h"
extern void AppCbk_ErrorHandler(AppCbk_ErrorIdType ErrorId);
extern void AppCbk_PfmErrorHandler(uint32 ErrorType);
extern void AppCbk_PfmMonitorFaultHandler(uint32 Seid, uint32 FaultType);
# 2 ".\\output\\inc/AppCbk.h" 2
# 70 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 2 ".\\output\\inc/HtxStpIf.h" 2
# 51 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 1 ".\\output\\inc/HtxTLF35584Qspi_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxTLF35584Qspi_Cfg.h" 1
# 2 ".\\output\\inc/HtxTLF35584Qspi_Cfg.h" 2
# 52 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 62 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
typedef void (*HtxTLF35584Qspi_UserCbkFuncType)(void);


typedef struct HtxTLF35584Qspi_ModConfigType
{
    volatile Ifx_QSPI* QspiModule;
    volatile Ifx_SRC_SRCR* SrcTxRegister;
    volatile Ifx_SRC_SRCR* SrcRxRegister;
    uint8 TxDmaChannel;
    uint8 RxDmaChannel;
    uint8 RcvInputSel;
    uint8 ModTimeQuantum;
    HtxTLF35584Qspi_UserCbkFuncType UserFunc;
} HtxTLF35584Qspi_ModConfigType;






typedef struct HtxTLF35584Qspi_ChConfigType
{
    uint8 Channel;
    uint8 SlsoActiveLevel;

    uint8 ChTimeQuantum;
    uint8 BitSeg1;
    uint8 BitSeg2;
    uint8 BitSeg3;

    uint8 ClockPhase;
    uint8 ClockPol;
    uint8 ParityEn;
    uint8 ParityType;
    uint8 MsbFirst;
    uint8 DataLength;
    uint8 IdlePrescaler;
    uint8 IdleDelay;
    uint8 LeadPrescaler;
    uint8 LeadDelay;
    uint8 TrailPrescaler;
    uint8 TrailDelay;

} HtxTLF35584Qspi_ChConfigType;
# 130 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 131 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 167 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern Std_ReturnType HtxTLF35584Qspi_Init
(
    const HtxTLF35584Qspi_ChConfigType* const ConfigPtr
);
# 204 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern void HtxTLF35584Qspi_DeInit(void);
# 250 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern void HtxTLF35584Qspi_TxRx
(
    uint32* TxBuf,
    uint32* RxBuf,
    uint8 Count
);
# 307 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern Std_ReturnType HtxTLF35584Qspi_CustTxRx
(
    uint32* TxBuf,
    uint32* RxBuf,
    uint32 BACONRegisterValue,
    uint8 Count
);
# 354 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern Std_ReturnType HtxTLF35584Qspi_RxDone(uint32* Error);
# 399 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 254 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 400 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 411 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 412 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2

extern const HtxTLF35584Qspi_ModConfigType HtxTLF35584Qspi_ModConfigRoot;

extern const HtxTLF35584Qspi_ChConfigType HtxTLF35584Qspi_ChConfigRoot[(1U)];







# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 424 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 2 ".\\output\\inc/HtxTLF35584Qspi.h" 2
# 54 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c" 2
# 120 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
typedef struct HtxTLF35584Qspi_DataType
{

    volatile uint32 ErrorFlags;

    Ifx_QSPI_BACON Bacon;

    const HtxTLF35584Qspi_ChConfigType* CfgPtr;

    volatile Ifx_QSPI* QspiModptr;

    volatile Ifx_SRC_SRCR* TxSrcReg;
    volatile Ifx_SRC_SRCR* RxSrcReg;

    uint32* TxBufPtr;
    uint32* RxBufPtr;

    HtxTLF35584Qspi_UserCbkFuncType CallbackFunc;

    uint8 TxDmaChannel;
    uint8 RxDmaChannel;

    uint8 Count;

    uint8 DataCount;
} HtxTLF35584Qspi_DataType;
# 161 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 48 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section "ClearedData.LmuNC.32bit" aw 4
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 162 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c" 2


static HtxTLF35584Qspi_DataType HtxTLF35584Qspi_Data;







# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 61 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 173 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c" 2
# 184 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 185 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c" 2

static Std_ReturnType HtxTLF35584Qspi_lEnQspiClock(void);


static void HtxTLF35584Qspi_lQspiDmaChRst(void);
# 198 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 254 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 199 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c" 2
# 210 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 211 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c" 2
# 247 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
Std_ReturnType HtxTLF35584Qspi_Init
(
    const HtxTLF35584Qspi_ChConfigType* const ConfigPtr
)
{




    Ifx_QSPI_ECON lEconRegVal;
    Ifx_QSPI_PISEL lPiselRegVal;
    Ifx_QSPI_GLOBALCON lGlobalconRegVal;
    Ifx_QSPI_GLOBALCON1 lGlobalcon1RegVal;
    uint32 lSlsoActiveLevel;
    uint32 lSsoc;
    uint32 lActiveLevelPos;
    uint32 lShiftedSbcPos;





    Ifx_DMA_CH_ADICR lDmaTxAdicrRegVal;
    Ifx_DMA_CH_ADICR lDmaRxAdicrRegVal;
    Ifx_DMA_CH_CHCFGR lDmaTxChcfgrRegVal;
    Ifx_DMA_CH_CHCFGR lDmaRxChcfgrRegVal;
    uint32 lTxSrcSre;
    uint32 lTxSrcTos;
    uint32 lTxSrcPri;
    uint32 lRxSrcSre;
    uint32 lRxSrcTos;
    uint32 lRxSrcPri;
    uint32 lTxSrcRegVal;
    uint32 lRxSrcRegVal;

    Std_ReturnType Result;
    uint8 lQspiChannel;
    uint8 lSbcPos;

    Result = 0x01u;


    if(ConfigPtr != ((void *)0))
    {

        HtxTLF35584Qspi_Data.CfgPtr = ConfigPtr;
        HtxTLF35584Qspi_Data.QspiModptr = HtxTLF35584Qspi_ModConfigRoot.QspiModule;
        HtxTLF35584Qspi_Data.TxDmaChannel= HtxTLF35584Qspi_ModConfigRoot.TxDmaChannel;
        HtxTLF35584Qspi_Data.RxDmaChannel= HtxTLF35584Qspi_ModConfigRoot.RxDmaChannel;
        HtxTLF35584Qspi_Data.TxSrcReg = HtxTLF35584Qspi_ModConfigRoot.SrcTxRegister;
        HtxTLF35584Qspi_Data.RxSrcReg = HtxTLF35584Qspi_ModConfigRoot.SrcRxRegister;
        HtxTLF35584Qspi_Data.TxBufPtr = ((void *)0);
        HtxTLF35584Qspi_Data.RxBufPtr = ((void *)0);
        HtxTLF35584Qspi_Data.ErrorFlags = 0U;
        HtxTLF35584Qspi_Data.Count = 0U;
        HtxTLF35584Qspi_Data.DataCount = 0U;
        HtxTLF35584Qspi_Data.Bacon.U = 0U;
        HtxTLF35584Qspi_Data.CallbackFunc= ((void *)0);


        if(0x00u == HtxTLF35584Qspi_lEnQspiClock())
        {


            lPiselRegVal.U = 0U;
            lPiselRegVal.B.MRIS = HtxTLF35584Qspi_ModConfigRoot.RcvInputSel;
            HtxTLF35584Qspi_Data.QspiModptr->PISEL.U = lPiselRegVal.U;


            lGlobalconRegVal.U = HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.U;
            lGlobalconRegVal.B.TQ = HtxTLF35584Qspi_ModConfigRoot.ModTimeQuantum;
            lGlobalconRegVal.B.SRF = 1U;
            HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.U = lGlobalconRegVal.U;

            lGlobalcon1RegVal.U = HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON1.U;
            lGlobalcon1RegVal.B.RXFIFOINT = 0U;
            lGlobalcon1RegVal.B.TXFIFOINT = 0U;
            lGlobalcon1RegVal.B.TXFM = 1U;
            lGlobalcon1RegVal.B.RXFM = 1U;

            lGlobalcon1RegVal.B.TXEN = 1U;



            lGlobalcon1RegVal.B.RXEN = 1U;






            lGlobalcon1RegVal.B.ERRORENS = (0x6A);
            HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON1.U = lGlobalcon1RegVal.U;
            lEconRegVal.U = 0U;
            lEconRegVal.B.Q = ConfigPtr->ChTimeQuantum;
            lEconRegVal.B.A = ConfigPtr->BitSeg1;
            lEconRegVal.B.B = ConfigPtr->BitSeg2;
            lEconRegVal.B.C = ConfigPtr->BitSeg3;
            lEconRegVal.B.CPH = ConfigPtr->ClockPhase;
            lEconRegVal.B.CPOL = ConfigPtr->ClockPol;
            lEconRegVal.B.PAREN = ConfigPtr->ParityEn;
            HtxTLF35584Qspi_Data.QspiModptr->ECON[(ConfigPtr->Channel % ((uint8)8U))].U = lEconRegVal.U;


            lSlsoActiveLevel = ((uint32)ConfigPtr->SlsoActiveLevel & 1U);
            lQspiChannel = (ConfigPtr->Channel);
            lSbcPos = (lQspiChannel + (16U));
            lShiftedSbcPos = (uint32)((uint32)1U << lSbcPos);
            lActiveLevelPos = (uint32)(lSlsoActiveLevel << lQspiChannel);
            lSsoc = (uint32)(lActiveLevelPos | lShiftedSbcPos);
            HtxTLF35584Qspi_Data.QspiModptr->SSOC.U = lSsoc;


            HtxTLF35584Qspi_Data.Bacon.B.LAST = 1U;
            HtxTLF35584Qspi_Data.Bacon.B.IPRE = ConfigPtr->IdlePrescaler;
            HtxTLF35584Qspi_Data.Bacon.B.IDLE = ConfigPtr->IdleDelay;
            HtxTLF35584Qspi_Data.Bacon.B.LPRE = ConfigPtr->LeadPrescaler;
            HtxTLF35584Qspi_Data.Bacon.B.LEAD = ConfigPtr->LeadDelay;
            HtxTLF35584Qspi_Data.Bacon.B.TPRE = ConfigPtr->TrailPrescaler;
            HtxTLF35584Qspi_Data.Bacon.B.TRAIL = ConfigPtr->TrailDelay;
            HtxTLF35584Qspi_Data.Bacon.B.MSB = ConfigPtr->MsbFirst;
            HtxTLF35584Qspi_Data.Bacon.B.DL = ConfigPtr->DataLength;
            HtxTLF35584Qspi_Data.Bacon.B.CS = ConfigPtr->Channel;


            HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.B.CLKSEL = 1U;


            lGlobalconRegVal.U = HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.U;
            lGlobalconRegVal.B.EN = 1U;
            HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.U = lGlobalconRegVal.U;
# 388 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
            lDmaTxChcfgrRegVal.U = ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCFGR.U;
            lDmaTxChcfgrRegVal.B.CHDW = ((uint8)2U);
            lDmaTxChcfgrRegVal.B.BLKM = 0U;
            lDmaTxChcfgrRegVal.B.CHMODE = 0U;
            lDmaTxChcfgrRegVal.B.RROAT = 0U;
            lDmaTxChcfgrRegVal.B.PRSEL = 0U;
            ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCFGR.U = lDmaTxChcfgrRegVal.U;







            lDmaTxAdicrRegVal.U = ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].ADICR.U;
            lDmaTxAdicrRegVal.B.SMF = 0U;
            lDmaTxAdicrRegVal.B.INCS = 1U;
            lDmaTxAdicrRegVal.B.CBLS = 0U;
            lDmaTxAdicrRegVal.B.SCBE = 0U;
            lDmaTxAdicrRegVal.B.DMF = 0U;
            lDmaTxAdicrRegVal.B.INCD = 0U;
            lDmaTxAdicrRegVal.B.CBLD = 0U;
            lDmaTxAdicrRegVal.B.DCBE = 1U;
            lDmaTxAdicrRegVal.B.INTCT = ((uint8)2U);
            lDmaTxAdicrRegVal.B.IRDV = 0U;
            ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].ADICR.U = lDmaTxAdicrRegVal.U;





            lDmaRxChcfgrRegVal.U = ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCFGR.U;
            lDmaRxChcfgrRegVal.B.CHDW = ((uint8)2U);
            lDmaRxChcfgrRegVal.B.BLKM = 0U;
            lDmaRxChcfgrRegVal.B.CHMODE = 0U;
            lDmaRxChcfgrRegVal.B.RROAT = 0U;
            lDmaRxChcfgrRegVal.B.PRSEL = 0U;
            ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCFGR.U = lDmaRxChcfgrRegVal.U;







            lDmaRxAdicrRegVal.U = ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].ADICR.U;
            lDmaRxAdicrRegVal.B.DMF = 0U;
            lDmaRxAdicrRegVal.B.INCD = 1U;
            lDmaRxAdicrRegVal.B.CBLD = 0U;
            lDmaRxAdicrRegVal.B.DCBE = 0U;
            lDmaRxAdicrRegVal.B.SMF = 0U;
            lDmaRxAdicrRegVal.B.INCS = 0U;
            lDmaRxAdicrRegVal.B.CBLS = 0U;
            lDmaRxAdicrRegVal.B.SCBE = 1U;
            lDmaRxAdicrRegVal.B.INTCT = ((uint8)2U);
            lDmaRxAdicrRegVal.B.IRDV = 0U;
            ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].ADICR.U = lDmaRxAdicrRegVal.U;




            lTxSrcSre = (uint32)((uint32)1U << (10U));
            lTxSrcTos = (uint32)((uint32)(1U) << (11U));
            lTxSrcPri = (uint32)HtxTLF35584Qspi_Data.TxDmaChannel;
            lTxSrcRegVal = (lTxSrcSre | lTxSrcTos | lTxSrcPri);
            HtxTLF35584Qspi_Data.TxSrcReg->U = (uint32)lTxSrcRegVal;

            lRxSrcSre = (uint32)((uint32)1U << (10U));
            lRxSrcTos = (uint32)((uint32)(1U) << (11U));
            lRxSrcPri = (uint32)HtxTLF35584Qspi_Data.RxDmaChannel;
            lRxSrcRegVal = (lRxSrcSre | lRxSrcTos | lRxSrcPri);
            HtxTLF35584Qspi_Data.RxSrcReg->U = (uint32)lRxSrcRegVal;



            Result = 0x00u;
        }
    }
    return Result;
}
# 501 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
void HtxTLF35584Qspi_DeInit(void)
{
    volatile uint32 lDummy;
    volatile Ifx_QSPI* QspiModPtr = HtxTLF35584Qspi_Data.QspiModptr;




    volatile Ifx_SRC_SRCR* TxSrcReg = HtxTLF35584Qspi_Data.TxSrcReg;
    volatile Ifx_SRC_SRCR* RxSrcReg = HtxTLF35584Qspi_Data.RxSrcReg;
    const HtxTLF35584Qspi_ChConfigType* ConfigPtr = HtxTLF35584Qspi_Data.CfgPtr;


    HtxTLF35584Qspi_Data.QspiModptr->PISEL.U = ((uint32)0x00000000U);
    HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.U = ((uint32)0x000F30FFU);
    HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON1.U = ((uint32)0x00050000U);
    HtxTLF35584Qspi_Data.QspiModptr->ECON[ConfigPtr->Channel % ((uint8)8U)].U = ((uint32)0x00001450U);
    HtxTLF35584Qspi_Data.QspiModptr->SSOC.U = ((uint32)0x00000000U);
    HtxTLF35584Qspi_Data.DataCount = 0U;
    HtxTLF35584Qspi_Data.Count = 0U;



    Mcal_WriteCpuEndInitProtReg((volatile void*)&(QspiModPtr->CLC.U),(0x00000001U));


    lDummy = QspiModPtr->CLC.U;

    (void)(lDummy);


    TxSrcReg->U = 0U;
    RxSrcReg->U = 0U;





    ((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U & ((uint32)0x0107030FU)) |
                                                     (((uint32)1U << (17u)) | ((uint32)((uint32)1U))));
    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].SADR.U = 0U;
    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].DADR.U = 0U;
    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].ADICR.U = 0U;
    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCFGR.U = 0U;


    ((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U & ((uint32)0x0107030FU)) |
                                                     (((uint32)1U << (17u)) | ((uint32)((uint32)1U))));
    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].SADR.U = 0U;
    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].DADR.U = 0U;
    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].ADICR.U = 0U;
    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCFGR.U = 0U;



}
# 602 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
void HtxTLF35584Qspi_TxRx
(
    uint32* TxBuf,
    uint32* RxBuf,
    uint8 Count
)
{

    HtxTLF35584Qspi_Data.TxBufPtr = TxBuf;
    HtxTLF35584Qspi_Data.RxBufPtr = RxBuf;
    HtxTLF35584Qspi_Data.ErrorFlags = 0U;
    HtxTLF35584Qspi_Data.DataCount = 0U;
    HtxTLF35584Qspi_Data.Count = Count;


    HtxTLF35584Qspi_Data.CallbackFunc = ((void *)0);


    HtxTLF35584Qspi_Data.QspiModptr->FLAGSCLEAR.U = ((uint32)0x000001FFU);





    HtxTLF35584Qspi_lQspiDmaChRst();



    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].SADR.U = (uint32)HtxTLF35584Qspi_Data.TxBufPtr;
    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].DADR.U = (uint32)&(HtxTLF35584Qspi_Data.QspiModptr->MIXENTRY.U);

    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCFGR.B.TREL = Count;




    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].SADR.U = (uint32)&(HtxTLF35584Qspi_Data.QspiModptr->RXEXIT.U);
    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].DADR.U = (uint32)HtxTLF35584Qspi_Data.RxBufPtr;
    ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCFGR.B.TREL = Count;

    ((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)1U << (16u)));

    ((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)1U << (16u)));


    HtxTLF35584Qspi_Data.QspiModptr->BACONENTRY.U = HtxTLF35584Qspi_Data.Bacon.U;
# 662 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
}
# 714 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
Std_ReturnType HtxTLF35584Qspi_CustTxRx
(
    uint32* TxBuf,
    uint32* RxBuf,
    uint32 BACONRegisterValue,
    uint8 Count
)
{
    uint32 lChipSelectOfCust;
    uint32 lChipSelectOfTLF;
    Std_ReturnType Result;


    lChipSelectOfCust = BACONRegisterValue & ((uint32)0xF0000000U);
    lChipSelectOfTLF = HtxTLF35584Qspi_Data.Bacon.U & ((uint32)0xF0000000U);
    Result = 0x01u;


    if(lChipSelectOfCust != lChipSelectOfTLF)
    {




        HtxTLF35584Qspi_Data.QspiModptr->BACONENTRY.U = BACONRegisterValue;


        HtxTLF35584Qspi_Data.QspiModptr->FLAGSCLEAR.U = ((uint32)0x000001FFU);


        HtxTLF35584Qspi_Data.TxBufPtr = TxBuf;
        HtxTLF35584Qspi_Data.RxBufPtr = RxBuf;
        HtxTLF35584Qspi_Data.ErrorFlags = 0U;
        HtxTLF35584Qspi_Data.DataCount = 0U;
        HtxTLF35584Qspi_Data.Count = Count;
# 757 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
        ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].SADR.U = (uint32)HtxTLF35584Qspi_Data.TxBufPtr;
        ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].DADR.U = (uint32)&(HtxTLF35584Qspi_Data.QspiModptr->MIXENTRY.U);


        ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCFGR.B.TREL = Count;




        ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].SADR.U = (uint32)&(HtxTLF35584Qspi_Data.QspiModptr->RXEXIT.U);
        ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].DADR.U = (uint32) HtxTLF35584Qspi_Data.RxBufPtr;
        ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCFGR.B.TREL = Count;


        ((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                         | ((uint32)1U << (16u)));
        ((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                         | ((uint32)1U << (16u)));
        HtxTLF35584Qspi_Data.TxSrcReg->B.SETR = 1U;
# 788 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
        Result = 0x00u;
    }
    return Result;
}
# 832 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
Std_ReturnType HtxTLF35584Qspi_RxDone(uint32* Error)
{
    Std_ReturnType Result = 0x01u;



    *Error = HtxTLF35584Qspi_Data.QspiModptr->STATUS.U & ((uint32)0x000001FFU);






    if(*Error == 0U)
    {



        if(((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCSR.B.ICH == 1U)
        {
            if(((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCSR.B.ICH == 1U)
            {

                ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.TxDmaChannel].CHCSR.B.CICH = 1U;
                ((*(Ifx_DMA*)0xF0010000u)).CH[HtxTLF35584Qspi_Data.RxDmaChannel].CHCSR.B.CICH = 1U;
                HtxTLF35584Qspi_Data.DataCount = 0U;
                Result = 0x00u;
            }
        }
# 871 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
    }
    else
    {


        HtxTLF35584Qspi_Data.Count = 0U;
        Result = 0x01u;
    }

    return Result;
}
# 1017 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
static Std_ReturnType HtxTLF35584Qspi_lEnQspiClock(void)
{
    uint32 lClc;
    uint32 lClcDisrBit = 0U;
    uint32 ltempCLC = 0U;
    uint32 Index;
    Std_ReturnType Result;
    Std_ReturnType LoopBreakFlag;

    Result = 0x01u;
    LoopBreakFlag = 0x01u;


    if((HtxTLF35584Qspi_Data.QspiModptr->CLC.U & ((uint32)0x00000002U)) > 0U)
    {
        lClcDisrBit = (uint32)(~((uint32)0x00000001U));


        ltempCLC = HtxTLF35584Qspi_Data.QspiModptr->CLC.U;
        ltempCLC = ltempCLC & lClcDisrBit;



        Mcal_WriteCpuEndInitProtReg((volatile void*)&(HtxTLF35584Qspi_Data.QspiModptr->CLC.U),(uint32)ltempCLC);


        for(Index = 0u; ((Index < ((uint32)0x00000100U)) && (LoopBreakFlag == 0x01u) ); Index++)
        {
            lClc = HtxTLF35584Qspi_Data.QspiModptr->CLC.U & ((uint32)0x00000002U);
            if(0U == lClc)
            {
                LoopBreakFlag = 0x00u;
            }
        }

        if((HtxTLF35584Qspi_Data.QspiModptr->CLC.U & ((uint32)0x00000002U)) == 0U)
        {
            Result = 0x00u;
        }
        HtxTLF35584Qspi_Data.QspiModptr->GLOBALCON.B.RESETS = (0x3U);
    }
    else
    {
        Result = 0x00u;
    }
    return Result;
}
# 1098 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
static void HtxTLF35584Qspi_lQspiDmaChRst(void)
{
    uint32 lRstTimeout;
    volatile uint32 lDummyFifoRead = 0U;
    uint8 lLoopCount;
    volatile uint8 lFifoLevel;


    ((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)1U << (17u)));

    ((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.TxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)((uint32)1U)));

    lRstTimeout = 0U;
    do
    {
        lRstTimeout++;
    }while((((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.TxDmaChannel].B.RST != 0U) && (lRstTimeout < ((uint32)50U)));

    lRstTimeout = 0U;

    ((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)1U << (17u)));

    ((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.RxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)((uint32)1U)));

    do
    {
        lRstTimeout++;
    } while ((((*(Ifx_DMA*)0xF0010000u)).TSR[HtxTLF35584Qspi_Data.RxDmaChannel].B.RST != 0U) &&
             (lRstTimeout < ((uint32)50U)));


    lFifoLevel = (uint8)HtxTLF35584Qspi_Data.QspiModptr->STATUS.B.RXFIFOLEVEL;
    for (lLoopCount = 0U; lLoopCount < lFifoLevel; lLoopCount++)
    {


        lDummyFifoRead = HtxTLF35584Qspi_Data.QspiModptr->RXEXIT.U;
    }


    (void)(lDummyFifoRead);

}
# 1154 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 254 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 1155 "bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\src\\HtxTLF35584Qspi.c" 2
