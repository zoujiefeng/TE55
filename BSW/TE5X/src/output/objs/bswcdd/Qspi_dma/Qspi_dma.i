# 1 "bswcdd\\Qspi_dma\\Qspi_dma.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\Qspi_dma\\Qspi_dma.c"




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
# 6 "bswcdd\\Qspi_dma\\Qspi_dma.c" 2
# 1 ".\\output\\inc/IfxDma_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDma_bf.h" 1
# 2 ".\\output\\inc/IfxDma_bf.h" 2
# 7 "bswcdd\\Qspi_dma\\Qspi_dma.c" 2
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
# 8 "bswcdd\\Qspi_dma\\Qspi_dma.c" 2





# 1 "bswcdd\\Qspi_dma\\Qspi_dma.h" 1







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
# 9 "bswcdd\\Qspi_dma\\Qspi_dma.h" 2
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
# 10 "bswcdd\\Qspi_dma\\Qspi_dma.h" 2
# 1 ".\\output\\inc/IfxQspi_reg.h" 1
# 11 "bswcdd\\Qspi_dma\\Qspi_dma.h" 2





typedef void (*Qspi_UserCbkFuncType)(void);


typedef struct Qspi_ModConfigType
{
    volatile Ifx_QSPI* QspiModule;
    volatile Ifx_SRC_SRCR* SrcTxRegister;
    volatile Ifx_SRC_SRCR* SrcRxRegister;
    uint8 TxDmaChannel;
    uint8 RxDmaChannel;
    uint8 RcvInputSel;
    uint8 ModTimeQuantum;
    Qspi_UserCbkFuncType UserFunc;
} Qspi_ModConfigType;





typedef struct Qspi_ChConfigType
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

} Qspi_ChConfigType;


typedef struct Qspi_DataType
{

    volatile uint32 ErrorFlags;

    Ifx_QSPI_BACON Bacon;

    const Qspi_ChConfigType* CfgPtr;

    volatile Ifx_QSPI* QspiModptr;

    volatile Ifx_SRC_SRCR* TxSrcReg;
    volatile Ifx_SRC_SRCR* RxSrcReg;

    uint32* TxBufPtr;
    uint32* RxBufPtr;

    Qspi_UserCbkFuncType CallbackFunc;

    uint8 TxDmaChannel;
    uint8 RxDmaChannel;

    uint8 Count;

    uint8 DataCount;
} Qspi_DataType;
# 95 "bswcdd\\Qspi_dma\\Qspi_dma.h"
void Qspi_CddlQspiDmaChRst(uint8 eCfgIndex);
Std_ReturnType Qspi_CddInit(uint8 eCfgIndex);
void Qspi_CddTxRx(uint8 eCfgIndex, uint32* TxBuf, uint32* RxBuf, uint8 Count);
void Qspi_CddTxRxShortMode(uint8 eCfgIndex, uint32* TxBuf, uint32* RxBuf, uint8 Count);
Std_ReturnType Qspi_CddRxDone(uint8 eCfgIndex);
# 14 "bswcdd\\Qspi_dma\\Qspi_dma.c" 2
# 74 "bswcdd\\Qspi_dma\\Qspi_dma.c"
static Qspi_DataType Qspi_Data[3];


const Qspi_ModConfigType Qspi_ModConfigRoot[3] =
{
   {
      &((*(Ifx_QSPI*)0xF0001E00u)),
      &((*(volatile Ifx_SRC_SRCR*)0xF0038118u)),
      &((*(volatile Ifx_SRC_SRCR*)0xF003811Cu)),
      10U,
      11U,
      0U,
      13U,
      ((void *)0)
   },
   {
      &((*(Ifx_QSPI*)0xF0001C00u)),
      &((*(volatile Ifx_SRC_SRCR*)0xF00380F0u)),
      &((*(volatile Ifx_SRC_SRCR*)0xF00380F4u)),
      12U,
      13U,
      0U,
      13U,
      ((void *)0)
   },
   {
      &((*(Ifx_QSPI*)0xF0001C00u)),
      &((*(volatile Ifx_SRC_SRCR*)0xF00380F0u)),
      &((*(volatile Ifx_SRC_SRCR*)0xF00380F4u)),
      12U,
      13U,
      0U,
      13U,
      ((void *)0)
   }
};

const Qspi_ChConfigType Qspi_ChConfigRoot[3] =
{
   {
      8U,
      0U,
      10U,
      1U,
      0U,
      1U,
      1U,
      0U,
      0U,
      0U,
      1U,
      15U,
      0U,
      1U,
      0U,
      7U,
      0U,
      5U
   },
   {
      9U,
      0U,
      1U,
      0U,
      0U,
      1U,
      1U,
      0U,
      0U,
      0U,
      1U,
      15U,
      1U,
      1U,
      2U,
      4U,
      2U,
      4U
   },
   {
      9U,
      0U,
      1U,
      0U,
      0U,
      1U,
      0U,
      0U,
      0U,
      0U,
      1U,
      23U,
      1U,
      1U,
      2U,
      4U,
      2U,
      4U
   }
};
# 211 "bswcdd\\Qspi_dma\\Qspi_dma.c"
static Std_ReturnType Qspi_CddlEnQspiClock(uint8 eCfgIndex)
{
    uint32 lClc;
    uint32 lClcDisrBit = 0U;
    uint32 ltempCLC = 0U;
    uint32 Index;
    Std_ReturnType Result;
    Std_ReturnType LoopBreakFlag;

    Result = 0x01u;
    LoopBreakFlag = 0x01u;


    if((Qspi_Data[eCfgIndex].QspiModptr->CLC.U & ((uint32)0x00000002U)) > 0U)
    {
        lClcDisrBit = (uint32)(~((uint32)0x00000001U));


        ltempCLC = Qspi_Data[eCfgIndex].QspiModptr->CLC.U;
        ltempCLC = ltempCLC & lClcDisrBit;


        for(Index = 0u; ((Index < ((uint32)0x00000100U)) && (LoopBreakFlag == 0x01u) ); Index++)
        {
            lClc = Qspi_Data[eCfgIndex].QspiModptr->CLC.U & ((uint32)0x00000002U);
            if(0U == lClc)
            {
                LoopBreakFlag = 0x00u;
            }
        }

        if((Qspi_Data[eCfgIndex].QspiModptr->CLC.U & ((uint32)0x00000002U)) == 0U)
        {
            Result = 0x00u;
        }
        Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON.B.RESETS = (0x3U);
    }
    else
    {
        Result = 0x00u;
    }
    return Result;
}

void Qspi_CddlQspiDmaChRst(uint8 eCfgIndex)
{
    uint32 lRstTimeout;
    volatile uint32 lDummyFifoRead = 0U;
    uint8 lLoopCount;
    volatile uint8 lFifoLevel;


    ((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)1U << (17u)));

    ((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)((uint32)1U)));

    lRstTimeout = 0U;
    do
    {
        lRstTimeout++;
    }while((((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].TxDmaChannel].B.RST != 0U) && (lRstTimeout < ((uint32)50U)));

    lRstTimeout = 0U;

    ((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)1U << (17u)));

    ((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)((uint32)1U)));

    do
    {
        lRstTimeout++;
    } while ((((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].RxDmaChannel].B.RST != 0U) &&
             (lRstTimeout < ((uint32)50U)));


    lFifoLevel = (uint8)Qspi_Data[eCfgIndex].QspiModptr->STATUS.B.RXFIFOLEVEL;
    for (lLoopCount = 0U; lLoopCount < lFifoLevel; lLoopCount++)
    {


        lDummyFifoRead = Qspi_Data[eCfgIndex].QspiModptr->RXEXIT.U;
    }


    (void)(lDummyFifoRead);
}

Std_ReturnType Qspi_CddInit(uint8 eCfgIndex)
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
    const Qspi_ChConfigType* const ConfigPtr = &Qspi_ChConfigRoot[eCfgIndex];


    if(ConfigPtr != ((void *)0))
    {

        Qspi_Data[eCfgIndex].CfgPtr = ConfigPtr;
        Qspi_Data[eCfgIndex].QspiModptr = Qspi_ModConfigRoot[eCfgIndex].QspiModule;
        Qspi_Data[eCfgIndex].TxDmaChannel= Qspi_ModConfigRoot[eCfgIndex].TxDmaChannel;
        Qspi_Data[eCfgIndex].RxDmaChannel= Qspi_ModConfigRoot[eCfgIndex].RxDmaChannel;
        Qspi_Data[eCfgIndex].TxSrcReg = Qspi_ModConfigRoot[eCfgIndex].SrcTxRegister;
        Qspi_Data[eCfgIndex].RxSrcReg = Qspi_ModConfigRoot[eCfgIndex].SrcRxRegister;
        Qspi_Data[eCfgIndex].TxBufPtr = ((void *)0);
        Qspi_Data[eCfgIndex].RxBufPtr = ((void *)0);
        Qspi_Data[eCfgIndex].ErrorFlags = 0U;
        Qspi_Data[eCfgIndex].Count = 0U;
        Qspi_Data[eCfgIndex].DataCount = 0U;
        Qspi_Data[eCfgIndex].Bacon.U = 0U;
        Qspi_Data[eCfgIndex].CallbackFunc= ((void *)0);


        if(0x00u == Qspi_CddlEnQspiClock(eCfgIndex))
        {


            lPiselRegVal.U = 0U;
            lPiselRegVal.B.MRIS = Qspi_ModConfigRoot[eCfgIndex].RcvInputSel;
            Qspi_Data[eCfgIndex].QspiModptr->PISEL.U = lPiselRegVal.U;


            lGlobalconRegVal.U = Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON.U;
            lGlobalconRegVal.B.TQ = Qspi_ModConfigRoot[eCfgIndex].ModTimeQuantum;
            lGlobalconRegVal.B.SRF = 0U;
            Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON.U = lGlobalconRegVal.U;

            lGlobalcon1RegVal.U = Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON1.U;
            lGlobalcon1RegVal.B.RXFIFOINT = 0U;
            lGlobalcon1RegVal.B.TXFIFOINT = 0U;
            lGlobalcon1RegVal.B.TXFM = 1U;
            lGlobalcon1RegVal.B.RXFM = 1U;
            lGlobalcon1RegVal.B.TXEN = 1U;
            lGlobalcon1RegVal.B.RXEN = 1U;
            lGlobalcon1RegVal.B.PT2 = 6;






            lGlobalcon1RegVal.B.ERRORENS = 0;
            Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON1.U = lGlobalcon1RegVal.U;
            lEconRegVal.U = 0U;
            lEconRegVal.B.Q = ConfigPtr->ChTimeQuantum;
            lEconRegVal.B.A = ConfigPtr->BitSeg1;
            lEconRegVal.B.B = ConfigPtr->BitSeg2;
            lEconRegVal.B.C = ConfigPtr->BitSeg3;
            lEconRegVal.B.CPH = ConfigPtr->ClockPhase;
            lEconRegVal.B.CPOL = ConfigPtr->ClockPol;
            lEconRegVal.B.PAREN = ConfigPtr->ParityEn;
            Qspi_Data[eCfgIndex].QspiModptr->ECON[(ConfigPtr->Channel % ((uint8)8U))].U = lEconRegVal.U;


            lSlsoActiveLevel = ((uint32)ConfigPtr->SlsoActiveLevel & 1U);
            lQspiChannel = (ConfigPtr->Channel);
            lSbcPos = (lQspiChannel + (16U));
            lShiftedSbcPos = (uint32)((uint32)1U << lSbcPos);
            lActiveLevelPos = (uint32)(lSlsoActiveLevel << lQspiChannel);
            lSsoc = (uint32)(lActiveLevelPos | lShiftedSbcPos);
            Qspi_Data[eCfgIndex].QspiModptr->SSOC.U = lSsoc;


            Qspi_Data[eCfgIndex].Bacon.B.LAST = 1U;
            Qspi_Data[eCfgIndex].Bacon.B.IPRE = ConfigPtr->IdlePrescaler;
            Qspi_Data[eCfgIndex].Bacon.B.IDLE = ConfigPtr->IdleDelay;
            Qspi_Data[eCfgIndex].Bacon.B.LPRE = ConfigPtr->LeadPrescaler;
            Qspi_Data[eCfgIndex].Bacon.B.LEAD = ConfigPtr->LeadDelay;
            Qspi_Data[eCfgIndex].Bacon.B.TPRE = ConfigPtr->TrailPrescaler;
            Qspi_Data[eCfgIndex].Bacon.B.TRAIL = ConfigPtr->TrailDelay;
            Qspi_Data[eCfgIndex].Bacon.B.MSB = ConfigPtr->MsbFirst;
            Qspi_Data[eCfgIndex].Bacon.B.DL = ConfigPtr->DataLength;
            Qspi_Data[eCfgIndex].Bacon.B.CS = ConfigPtr->Channel;

            Qspi_Data[eCfgIndex].QspiModptr->BACONENTRY.U = Qspi_Data[eCfgIndex].Bacon.U;

            Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON.B.CLKSEL = 1U;


            lGlobalconRegVal.U = Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON.U;
            lGlobalconRegVal.B.EN = 1U;
            Qspi_Data[eCfgIndex].QspiModptr->GLOBALCON.U = lGlobalconRegVal.U;
# 436 "bswcdd\\Qspi_dma\\Qspi_dma.c"
            lDmaTxChcfgrRegVal.U = ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].TxDmaChannel].CHCFGR.U;
            lDmaTxChcfgrRegVal.B.CHDW = ((uint8)2U);
            lDmaTxChcfgrRegVal.B.BLKM = 0U;
            lDmaTxChcfgrRegVal.B.CHMODE = 0U;
            lDmaTxChcfgrRegVal.B.RROAT = 0U;
            lDmaTxChcfgrRegVal.B.PRSEL = 0U;
            ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].TxDmaChannel].CHCFGR.U = lDmaTxChcfgrRegVal.U;







            lDmaTxAdicrRegVal.U = ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].TxDmaChannel].ADICR.U;
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
            ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].TxDmaChannel].ADICR.U = lDmaTxAdicrRegVal.U;





            lDmaRxChcfgrRegVal.U = ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].RxDmaChannel].CHCFGR.U;
            lDmaRxChcfgrRegVal.B.CHDW = ((uint8)2U);
            lDmaRxChcfgrRegVal.B.BLKM = 0U;
            lDmaRxChcfgrRegVal.B.CHMODE = 0U;
            lDmaRxChcfgrRegVal.B.RROAT = 0U;
            lDmaRxChcfgrRegVal.B.PRSEL = 0U;
            ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].RxDmaChannel].CHCFGR.U = lDmaRxChcfgrRegVal.U;







            lDmaRxAdicrRegVal.U = ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].RxDmaChannel].ADICR.U;
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
            ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].RxDmaChannel].ADICR.U = lDmaRxAdicrRegVal.U;




            lTxSrcSre = (uint32)((uint32)1U << (10U));
            lTxSrcTos = (uint32)((uint32)(1U) << (11U));
            lTxSrcPri = (uint32)Qspi_Data[eCfgIndex].TxDmaChannel;
            lTxSrcRegVal = (lTxSrcSre | lTxSrcTos | lTxSrcPri);
            Qspi_Data[eCfgIndex].TxSrcReg->U = (uint32)lTxSrcRegVal;

            lRxSrcSre = (uint32)((uint32)1U << (10U));
            lRxSrcTos = (uint32)((uint32)(1U) << (11U));
            lRxSrcPri = (uint32)Qspi_Data[eCfgIndex].RxDmaChannel;
            lRxSrcRegVal = (lRxSrcSre | lRxSrcTos | lRxSrcPri);
            Qspi_Data[eCfgIndex].RxSrcReg->U = (uint32)lRxSrcRegVal;

            Result = 0x00u;
        }
    }
    return Result;
}

void Qspi_CddTxRx(uint8 eCfgIndex, uint32* TxBuf, uint32* RxBuf, uint8 Count)
{

    Qspi_Data[eCfgIndex].TxBufPtr = TxBuf;
    Qspi_Data[eCfgIndex].RxBufPtr = RxBuf;
    Qspi_Data[eCfgIndex].ErrorFlags = 0U;
    Qspi_Data[eCfgIndex].DataCount = 0U;
    Qspi_Data[eCfgIndex].Count = Count;


    Qspi_Data[eCfgIndex].CallbackFunc = ((void *)0);


    Qspi_Data[eCfgIndex].QspiModptr->FLAGSCLEAR.U = ((uint32)0x000001FFU);



    Qspi_CddlQspiDmaChRst(eCfgIndex);



    ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].TxDmaChannel].SADR.U = (uint32)Qspi_Data[eCfgIndex].TxBufPtr;
    ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].TxDmaChannel].DADR.U = (uint32)&(Qspi_Data[eCfgIndex].QspiModptr->MIXENTRY.U);

    ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].TxDmaChannel].CHCFGR.B.TREL = Count;




    ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].RxDmaChannel].SADR.U = (uint32)&(Qspi_Data[eCfgIndex].QspiModptr->RXEXIT.U);
    ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].RxDmaChannel].DADR.U = (uint32)Qspi_Data[eCfgIndex].RxBufPtr;
    ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].RxDmaChannel].CHCFGR.B.TREL = Count;

    ((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)1U << (16u)));

    ((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)1U << (16u)));


    Qspi_Data[eCfgIndex].QspiModptr->BACONENTRY.U = Qspi_Data[eCfgIndex].Bacon.U;



}

void Qspi_CddTxRxShortMode(uint8 eCfgIndex, uint32* TxBuf, uint32* RxBuf, uint8 Count)
{

    Qspi_Data[eCfgIndex].TxBufPtr = TxBuf;
    Qspi_Data[eCfgIndex].RxBufPtr = RxBuf;
    Qspi_Data[eCfgIndex].ErrorFlags = 0U;
    Qspi_Data[eCfgIndex].DataCount = 0U;
    Qspi_Data[eCfgIndex].Count = Count;


    Qspi_Data[eCfgIndex].CallbackFunc = ((void *)0);


    Qspi_Data[eCfgIndex].QspiModptr->FLAGSCLEAR.U = ((uint32)0x000001FFU);



    Qspi_CddlQspiDmaChRst(eCfgIndex);



    ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].TxDmaChannel].SADR.U = (uint32)Qspi_Data[eCfgIndex].TxBufPtr;
    ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].TxDmaChannel].DADR.U = (uint32)&(Qspi_Data[eCfgIndex].QspiModptr->DATAENTRY);

    ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].TxDmaChannel].CHCFGR.B.TREL = Count;




    ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].RxDmaChannel].SADR.U = (uint32)&(Qspi_Data[eCfgIndex].QspiModptr->RXEXIT.U);
    ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].RxDmaChannel].DADR.U = (uint32)Qspi_Data[eCfgIndex].RxBufPtr;
    ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].RxDmaChannel].CHCFGR.B.TREL = Count;

    ((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].TxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)1U << (16u)));

    ((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U = (uint32)((((*(Ifx_DMA*)0xF0010000u)).TSR[Qspi_Data[eCfgIndex].RxDmaChannel].U & ((uint32)0x0107030FU))
                                                                                                     | ((uint32)1U << (16u)));


    Qspi_Data[eCfgIndex].QspiModptr->BACONENTRY.U = Qspi_Data[eCfgIndex].Bacon.U;



}

Std_ReturnType Qspi_CddRxDone(uint8 eCfgIndex)
{
    Std_ReturnType Result = 0x01u;
    uint32 Error = 0;


    Error = Qspi_Data[eCfgIndex].QspiModptr->STATUS.U & ((uint32)0x000001FFU);


    if(Error == 0U)
    {


        if(((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].RxDmaChannel].CHCSR.B.ICH == 1U)
        {
            if(((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].TxDmaChannel].CHCSR.B.ICH == 1U)
            {

                ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].TxDmaChannel].CHCSR.B.CICH = 1U;
                ((*(Ifx_DMA*)0xF0010000u)).CH[Qspi_Data[eCfgIndex].RxDmaChannel].CHCSR.B.CICH = 1U;
                Qspi_Data[eCfgIndex].DataCount = 0U;
                Result = 0x00u;
            }
        }
    }
    else
    {


        Qspi_Data[eCfgIndex].Count = 0U;
        Result = 0x01u;
    }

    return Result;
}
