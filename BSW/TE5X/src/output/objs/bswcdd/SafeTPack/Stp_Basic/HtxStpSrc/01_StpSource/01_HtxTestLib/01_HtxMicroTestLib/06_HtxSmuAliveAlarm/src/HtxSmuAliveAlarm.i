# 1 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c"
# 46 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c"
# 1 ".\\output\\inc/IfxSmu_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h" 2
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h"
typedef struct _Ifx_SMU_ACCEN0_Bits
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
} Ifx_SMU_ACCEN0_Bits;


typedef struct _Ifx_SMU_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_SMU_ACCEN1_Bits;


typedef struct _Ifx_SMU_AD_Bits
{
    Ifx_UReg_32Bit DF0:1;
    Ifx_UReg_32Bit DF1:1;
    Ifx_UReg_32Bit DF2:1;
    Ifx_UReg_32Bit DF3:1;
    Ifx_UReg_32Bit DF4:1;
    Ifx_UReg_32Bit DF5:1;
    Ifx_UReg_32Bit DF6:1;
    Ifx_UReg_32Bit DF7:1;
    Ifx_UReg_32Bit DF8:1;
    Ifx_UReg_32Bit DF9:1;
    Ifx_UReg_32Bit DF10:1;
    Ifx_UReg_32Bit DF11:1;
    Ifx_UReg_32Bit DF12:1;
    Ifx_UReg_32Bit DF13:1;
    Ifx_UReg_32Bit DF14:1;
    Ifx_UReg_32Bit DF15:1;
    Ifx_UReg_32Bit DF16:1;
    Ifx_UReg_32Bit DF17:1;
    Ifx_UReg_32Bit DF18:1;
    Ifx_UReg_32Bit DF19:1;
    Ifx_UReg_32Bit DF20:1;
    Ifx_UReg_32Bit DF21:1;
    Ifx_UReg_32Bit DF22:1;
    Ifx_UReg_32Bit DF23:1;
    Ifx_UReg_32Bit DF24:1;
    Ifx_UReg_32Bit DF25:1;
    Ifx_UReg_32Bit DF26:1;
    Ifx_UReg_32Bit DF27:1;
    Ifx_UReg_32Bit DF28:1;
    Ifx_UReg_32Bit DF29:1;
    Ifx_UReg_32Bit DF30:1;
    Ifx_UReg_32Bit DF31:1;
} Ifx_SMU_AD_Bits;


typedef struct _Ifx_SMU_AEX_Bits
{
    Ifx_UReg_32Bit IRQ0STS:1;
    Ifx_UReg_32Bit IRQ1STS:1;
    Ifx_UReg_32Bit IRQ2STS:1;
    Ifx_UReg_32Bit RST0STS:1;
    Ifx_UReg_32Bit RST1STS:1;
    Ifx_UReg_32Bit RST2STS:1;
    Ifx_UReg_32Bit RST3STS:1;
    Ifx_UReg_32Bit RST4STS:1;
    Ifx_UReg_32Bit RST5STS:1;
    Ifx_UReg_32Bit NMISTS:1;
    Ifx_UReg_32Bit reserved_10:1;
    Ifx_UReg_32Bit EMSSTS:1;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit IRQ0AEM:1;
    Ifx_UReg_32Bit IRQ1AEM:1;
    Ifx_UReg_32Bit IRQ2AEM:1;
    Ifx_UReg_32Bit RST0AEM:1;
    Ifx_UReg_32Bit RST1AEM:1;
    Ifx_UReg_32Bit RST2AEM:1;
    Ifx_UReg_32Bit RST3AEM:1;
    Ifx_UReg_32Bit RST4AEM:1;
    Ifx_UReg_32Bit RST5AEM:1;
    Ifx_UReg_32Bit NMIAEM:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit EMSAEM:1;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_SMU_AEX_Bits;


typedef struct _Ifx_SMU_AEXCLR_Bits
{
    volatile unsigned int IRQ0CLR:1;
    volatile unsigned int IRQ1CLR:1;
    volatile unsigned int IRQ2CLR:1;
    volatile unsigned int RST0CLR:1;
    volatile unsigned int RST1CLR:1;
    volatile unsigned int RST2CLR:1;
    volatile unsigned int RST3CLR:1;
    volatile unsigned int RST4CLR:1;
    volatile unsigned int RST5CLR:1;
    volatile unsigned int NMICLR:1;
    volatile unsigned int reserved_10:1;
    volatile unsigned int EMSCLR:1;
    volatile unsigned int reserved_12:4;
    volatile unsigned int IRQ0AEMCLR:1;
    volatile unsigned int IRQ1AEMCLR:1;
    volatile unsigned int IRQ2AEMCLR:1;
    volatile unsigned int RST0AEMCLR:1;
    volatile unsigned int RST1AEMCLR:1;
    volatile unsigned int RST2AEMCLR:1;
    volatile unsigned int RST3AEMCLR:1;
    volatile unsigned int RST4AEMCLR:1;
    volatile unsigned int RST5AEMCLR:1;
    volatile unsigned int NMIAEMCLR:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int EMSAEMCLR:1;
    volatile unsigned int reserved_28:4;
} Ifx_SMU_AEXCLR_Bits;


typedef struct _Ifx_SMU_AFCNT_Bits
{
    Ifx_UReg_32Bit FCNT:4;
    Ifx_UReg_32Bit ACNT:12;
    Ifx_UReg_32Bit reserved_16:14;
    Ifx_UReg_32Bit FCO:1;
    Ifx_UReg_32Bit ACO:1;
} Ifx_SMU_AFCNT_Bits;


typedef struct _Ifx_SMU_AG_Bits
{
    volatile unsigned int SF0:1;
    volatile unsigned int SF1:1;
    volatile unsigned int SF2:1;
    volatile unsigned int SF3:1;
    volatile unsigned int SF4:1;
    volatile unsigned int SF5:1;
    volatile unsigned int SF6:1;
    volatile unsigned int SF7:1;
    volatile unsigned int SF8:1;
    volatile unsigned int SF9:1;
    volatile unsigned int SF10:1;
    volatile unsigned int SF11:1;
    volatile unsigned int SF12:1;
    volatile unsigned int SF13:1;
    volatile unsigned int SF14:1;
    volatile unsigned int SF15:1;
    volatile unsigned int SF16:1;
    volatile unsigned int SF17:1;
    volatile unsigned int SF18:1;
    volatile unsigned int SF19:1;
    volatile unsigned int SF20:1;
    volatile unsigned int SF21:1;
    volatile unsigned int SF22:1;
    volatile unsigned int SF23:1;
    volatile unsigned int SF24:1;
    volatile unsigned int SF25:1;
    volatile unsigned int SF26:1;
    volatile unsigned int SF27:1;
    volatile unsigned int SF28:1;
    volatile unsigned int SF29:1;
    volatile unsigned int SF30:1;
    volatile unsigned int SF31:1;
} Ifx_SMU_AG_Bits;


typedef struct _Ifx_SMU_AGC_Bits
{
    volatile unsigned int IGCS0:3;
    volatile unsigned int reserved_3:1;
    volatile unsigned int IGCS1:3;
    volatile unsigned int reserved_7:1;
    volatile unsigned int IGCS2:3;
    volatile unsigned int reserved_11:5;
    volatile unsigned int RCS:6;
    volatile unsigned int reserved_22:2;
    volatile unsigned int PES:5;
    volatile unsigned int EFRST:1;
    volatile unsigned int reserved_30:2;
} Ifx_SMU_AGC_Bits;


typedef struct _Ifx_SMU_AGCF_Bits
{
    volatile unsigned int CF0:1;
    volatile unsigned int CF1:1;
    volatile unsigned int CF2:1;
    volatile unsigned int CF3:1;
    volatile unsigned int CF4:1;
    volatile unsigned int CF5:1;
    volatile unsigned int CF6:1;
    volatile unsigned int CF7:1;
    volatile unsigned int CF8:1;
    volatile unsigned int CF9:1;
    volatile unsigned int CF10:1;
    volatile unsigned int CF11:1;
    volatile unsigned int CF12:1;
    volatile unsigned int CF13:1;
    volatile unsigned int CF14:1;
    volatile unsigned int CF15:1;
    volatile unsigned int CF16:1;
    volatile unsigned int CF17:1;
    volatile unsigned int CF18:1;
    volatile unsigned int CF19:1;
    volatile unsigned int CF20:1;
    volatile unsigned int CF21:1;
    volatile unsigned int CF22:1;
    volatile unsigned int CF23:1;
    volatile unsigned int CF24:1;
    volatile unsigned int CF25:1;
    volatile unsigned int CF26:1;
    volatile unsigned int CF27:1;
    volatile unsigned int CF28:1;
    volatile unsigned int CF29:1;
    volatile unsigned int CF30:1;
    volatile unsigned int CF31:1;
} Ifx_SMU_AGCF_Bits;


typedef struct _Ifx_SMU_AGFSP_Bits
{
    volatile unsigned int FE0:1;
    volatile unsigned int FE1:1;
    volatile unsigned int FE2:1;
    volatile unsigned int FE3:1;
    volatile unsigned int FE4:1;
    volatile unsigned int FE5:1;
    volatile unsigned int FE6:1;
    volatile unsigned int FE7:1;
    volatile unsigned int FE8:1;
    volatile unsigned int FE9:1;
    volatile unsigned int FE10:1;
    volatile unsigned int FE11:1;
    volatile unsigned int FE12:1;
    volatile unsigned int FE13:1;
    volatile unsigned int FE14:1;
    volatile unsigned int FE15:1;
    volatile unsigned int FE16:1;
    volatile unsigned int FE17:1;
    volatile unsigned int FE18:1;
    volatile unsigned int FE19:1;
    volatile unsigned int FE20:1;
    volatile unsigned int FE21:1;
    volatile unsigned int FE22:1;
    volatile unsigned int FE23:1;
    volatile unsigned int FE24:1;
    volatile unsigned int FE25:1;
    volatile unsigned int FE26:1;
    volatile unsigned int FE27:1;
    volatile unsigned int FE28:1;
    volatile unsigned int FE29:1;
    volatile unsigned int FE30:1;
    volatile unsigned int FE31:1;
} Ifx_SMU_AGFSP_Bits;


typedef struct _Ifx_SMU_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_SMU_CLC_Bits;


typedef struct _Ifx_SMU_CMD_Bits
{
    volatile unsigned int CMD:4;
    volatile unsigned int ARG:4;
    volatile unsigned int reserved_8:24;
} Ifx_SMU_CMD_Bits;


typedef struct _Ifx_SMU_DBG_Bits
{
    Ifx_UReg_32Bit SSM:2;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_SMU_DBG_Bits;


typedef struct _Ifx_SMU_FSP_Bits
{
    volatile unsigned int PRE1:3;
    volatile unsigned int PRE2:2;
    volatile unsigned int MODE:2;
    volatile unsigned int PES:1;
    volatile unsigned int TFSP_LOW:14;
    volatile unsigned int TFSP_HIGH:10;
} Ifx_SMU_FSP_Bits;


typedef struct _Ifx_SMU_ID_Bits
{
    Ifx_UReg_32Bit MOD_REV:8;
    Ifx_UReg_32Bit MOD_TYPE:8;
    Ifx_UReg_32Bit MOD_NUMBER:16;
} Ifx_SMU_ID_Bits;


typedef struct _Ifx_SMU_KEYS_Bits
{
    volatile unsigned int CFGLCK:8;
    volatile unsigned int PERLCK:8;
    volatile unsigned int reserved_16:16;
} Ifx_SMU_KEYS_Bits;


typedef struct _Ifx_SMU_OCS_Bits
{
    Ifx_UReg_32Bit TGS:2;
    Ifx_UReg_32Bit TGB:1;
    Ifx_UReg_32Bit TG_P:1;
    Ifx_UReg_32Bit reserved_4:20;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_SMU_OCS_Bits;


typedef struct _Ifx_SMU_PCTL_Bits
{
    volatile unsigned int HWDIR:2;
    volatile unsigned int HWEN:2;
    volatile unsigned int GFSCU_EN:1;
    volatile unsigned int GFSTS_EN:1;
    volatile unsigned int reserved_6:1;
    volatile unsigned int PCS:1;
    volatile unsigned int reserved_8:6;
    volatile unsigned int reserved_14:9;
    volatile unsigned int reserved_23:9;
} Ifx_SMU_PCTL_Bits;


typedef struct _Ifx_SMU_RMCTL_Bits
{
    volatile unsigned int TE0:1;
    volatile unsigned int TE1:1;
    volatile unsigned int TE2:1;
    volatile unsigned int TE3:1;
    volatile unsigned int TE4:1;
    volatile unsigned int TE5:1;
    volatile unsigned int TE6:1;
    volatile unsigned int TE7:1;
    volatile unsigned int TE8:1;
    volatile unsigned int TE9:1;
    volatile unsigned int TE10:1;
    volatile unsigned int reserved_11:1;
    volatile unsigned int reserved_12:1;
    volatile unsigned int reserved_13:1;
    volatile unsigned int reserved_14:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:1;
    volatile unsigned int reserved_19:1;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:1;
    volatile unsigned int reserved_22:1;
    volatile unsigned int reserved_23:1;
    volatile unsigned int reserved_24:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int reserved_31:1;
} Ifx_SMU_RMCTL_Bits;


typedef struct _Ifx_SMU_RMEF_Bits
{
    volatile unsigned int EF0:1;
    volatile unsigned int EF1:1;
    volatile unsigned int EF2:1;
    volatile unsigned int EF3:1;
    volatile unsigned int EF4:1;
    volatile unsigned int EF5:1;
    volatile unsigned int EF6:1;
    volatile unsigned int EF7:1;
    volatile unsigned int EF8:1;
    volatile unsigned int EF9:1;
    volatile unsigned int EF10:1;
    volatile unsigned int reserved_11:1;
    volatile unsigned int reserved_12:1;
    volatile unsigned int reserved_13:1;
    volatile unsigned int reserved_14:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:1;
    volatile unsigned int reserved_19:1;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:1;
    volatile unsigned int reserved_22:1;
    volatile unsigned int reserved_23:1;
    volatile unsigned int reserved_24:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int reserved_31:1;
} Ifx_SMU_RMEF_Bits;


typedef struct _Ifx_SMU_RMSTS_Bits
{
    volatile unsigned int STS0:1;
    volatile unsigned int STS1:1;
    volatile unsigned int STS2:1;
    volatile unsigned int STS3:1;
    volatile unsigned int STS4:1;
    volatile unsigned int STS5:1;
    volatile unsigned int STS6:1;
    volatile unsigned int STS7:1;
    volatile unsigned int STS8:1;
    volatile unsigned int STS9:1;
    volatile unsigned int STS10:1;
    volatile unsigned int reserved_11:1;
    volatile unsigned int reserved_12:1;
    volatile unsigned int reserved_13:1;
    volatile unsigned int reserved_14:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:1;
    volatile unsigned int reserved_19:1;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:1;
    volatile unsigned int reserved_22:1;
    volatile unsigned int reserved_23:1;
    volatile unsigned int reserved_24:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int reserved_31:1;
} Ifx_SMU_RMSTS_Bits;


typedef struct _Ifx_SMU_RTAC00_Bits
{
    volatile unsigned int GID0:4;
    volatile unsigned int ALID0:5;
    volatile unsigned int reserved_9:7;
    volatile unsigned int GID1:4;
    volatile unsigned int ALID1:5;
    volatile unsigned int reserved_25:7;
} Ifx_SMU_RTAC00_Bits;


typedef struct _Ifx_SMU_RTAC01_Bits
{
    volatile unsigned int GID2:4;
    volatile unsigned int ALID2:5;
    volatile unsigned int reserved_9:7;
    volatile unsigned int GID3:4;
    volatile unsigned int ALID3:5;
    volatile unsigned int reserved_25:7;
} Ifx_SMU_RTAC01_Bits;


typedef struct _Ifx_SMU_RTAC10_Bits
{
    volatile unsigned int GID0:4;
    volatile unsigned int ALID0:5;
    volatile unsigned int reserved_9:7;
    volatile unsigned int GID1:4;
    volatile unsigned int ALID1:5;
    volatile unsigned int reserved_25:7;
} Ifx_SMU_RTAC10_Bits;


typedef struct _Ifx_SMU_RTAC11_Bits
{
    volatile unsigned int GID2:4;
    volatile unsigned int ALID2:5;
    volatile unsigned int reserved_9:7;
    volatile unsigned int GID3:4;
    volatile unsigned int ALID3:5;
    volatile unsigned int reserved_25:7;
} Ifx_SMU_RTAC11_Bits;


typedef struct _Ifx_SMU_RTC_Bits
{
    volatile unsigned int RT0E:1;
    volatile unsigned int RT1E:1;
    volatile unsigned int reserved_2:6;
    volatile unsigned int RTD:24;
} Ifx_SMU_RTC_Bits;


typedef struct _Ifx_SMU_STS_Bits
{
    volatile unsigned int CMD:4;
    volatile unsigned int ARG:4;
    volatile unsigned int RES:1;
    volatile unsigned int ASCE:1;
    volatile unsigned int FSP:2;
    volatile unsigned int FSTS:1;
    volatile unsigned int reserved_13:3;
    volatile unsigned int RTS0:1;
    volatile unsigned int RTME0:1;
    volatile unsigned int RTS1:1;
    volatile unsigned int RTME1:1;
    volatile unsigned int reserved_20:12;
} Ifx_SMU_STS_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_ACCEN0_Bits B;
} Ifx_SMU_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_ACCEN1_Bits B;
} Ifx_SMU_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AD_Bits B;
} Ifx_SMU_AD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AEX_Bits B;
} Ifx_SMU_AEX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AEXCLR_Bits B;
} Ifx_SMU_AEXCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AFCNT_Bits B;
} Ifx_SMU_AFCNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AG_Bits B;
} Ifx_SMU_AG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AGC_Bits B;
} Ifx_SMU_AGC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AGCF_Bits B;
} Ifx_SMU_AGCF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_AGFSP_Bits B;
} Ifx_SMU_AGFSP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_CLC_Bits B;
} Ifx_SMU_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_CMD_Bits B;
} Ifx_SMU_CMD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_DBG_Bits B;
} Ifx_SMU_DBG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_FSP_Bits B;
} Ifx_SMU_FSP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_ID_Bits B;
} Ifx_SMU_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_KEYS_Bits B;
} Ifx_SMU_KEYS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_OCS_Bits B;
} Ifx_SMU_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_PCTL_Bits B;
} Ifx_SMU_PCTL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RMCTL_Bits B;
} Ifx_SMU_RMCTL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RMEF_Bits B;
} Ifx_SMU_RMEF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RMSTS_Bits B;
} Ifx_SMU_RMSTS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RTAC00_Bits B;
} Ifx_SMU_RTAC00;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RTAC01_Bits B;
} Ifx_SMU_RTAC01;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RTAC10_Bits B;
} Ifx_SMU_RTAC10;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RTAC11_Bits B;
} Ifx_SMU_RTAC11;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_RTC_Bits B;
} Ifx_SMU_RTC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_SMU_STS_Bits B;
} Ifx_SMU_STS;
# 837 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h"
typedef volatile struct _Ifx_SMU
{
       Ifx_SMU_CLC CLC;
       Ifx_UReg_8Bit reserved_4[4];
       Ifx_SMU_ID ID;
       Ifx_UReg_8Bit reserved_C[20];
       Ifx_SMU_CMD CMD;
       Ifx_SMU_STS STS;
       Ifx_SMU_FSP FSP;
       Ifx_SMU_AGC AGC;
       Ifx_SMU_RTC RTC;
       Ifx_SMU_KEYS KEYS;
       Ifx_SMU_DBG DBG;
       Ifx_SMU_PCTL PCTL;
       Ifx_SMU_AFCNT AFCNT;
       Ifx_UReg_8Bit reserved_44[28];
       Ifx_SMU_RTAC00 RTAC00;
       Ifx_SMU_RTAC01 RTAC01;
       Ifx_SMU_RTAC10 RTAC10;
       Ifx_SMU_RTAC11 RTAC11;
       Ifx_SMU_AEX AEX;
       Ifx_SMU_AEXCLR AEXCLR;
       Ifx_UReg_8Bit reserved_78[136];
       Ifx_SMU_AGCF AGCF[12][3];
       Ifx_SMU_AGFSP AGFSP[12];
       Ifx_SMU_AG AG[12];
       Ifx_UReg_8Bit reserved_1F0[16];
       Ifx_SMU_AD AD[12];
       Ifx_UReg_8Bit reserved_230[208];
       Ifx_SMU_RMCTL RMCTL;
       Ifx_SMU_RMEF RMEF;
       Ifx_SMU_RMSTS RMSTS;
       Ifx_UReg_8Bit reserved_30C[1244];
       Ifx_SMU_OCS OCS;
       Ifx_UReg_8Bit reserved_7EC[12];
       Ifx_SMU_ACCEN1 ACCEN1;
       Ifx_SMU_ACCEN0 ACCEN0;
} Ifx_SMU;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_reg.h" 2
# 2 ".\\output\\inc/IfxSmu_reg.h" 2
# 47 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c" 2
# 1 ".\\output\\inc/IfxPms_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_regdef.h"
typedef struct _Ifx_PMS_ACCEN0_Bits
{
    volatile unsigned int EN0:1;
    volatile unsigned int EN1:1;
    volatile unsigned int EN2:1;
    volatile unsigned int EN3:1;
    volatile unsigned int EN4:1;
    volatile unsigned int EN5:1;
    volatile unsigned int EN6:1;
    volatile unsigned int EN7:1;
    volatile unsigned int EN8:1;
    volatile unsigned int EN9:1;
    volatile unsigned int EN10:1;
    volatile unsigned int EN11:1;
    volatile unsigned int EN12:1;
    volatile unsigned int EN13:1;
    volatile unsigned int EN14:1;
    volatile unsigned int EN15:1;
    volatile unsigned int EN16:1;
    volatile unsigned int EN17:1;
    volatile unsigned int EN18:1;
    volatile unsigned int EN19:1;
    volatile unsigned int EN20:1;
    volatile unsigned int EN21:1;
    volatile unsigned int EN22:1;
    volatile unsigned int EN23:1;
    volatile unsigned int EN24:1;
    volatile unsigned int EN25:1;
    volatile unsigned int EN26:1;
    volatile unsigned int EN27:1;
    volatile unsigned int EN28:1;
    volatile unsigned int EN29:1;
    volatile unsigned int EN30:1;
    volatile unsigned int EN31:1;
} Ifx_PMS_ACCEN0_Bits;


typedef struct _Ifx_PMS_ACCEN1_Bits
{
    volatile unsigned int reserved_0:32;
} Ifx_PMS_ACCEN1_Bits;


typedef struct _Ifx_PMS_AGFSP_STDBY0_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit FE4:1;
    Ifx_UReg_32Bit FE5:1;
    Ifx_UReg_32Bit FE6:1;
    Ifx_UReg_32Bit FE7:1;
    Ifx_UReg_32Bit FE8:1;
    Ifx_UReg_32Bit FE9:1;
    Ifx_UReg_32Bit FE10:1;
    Ifx_UReg_32Bit FE11:1;
    Ifx_UReg_32Bit FE12:1;
    Ifx_UReg_32Bit FE13:1;
    Ifx_UReg_32Bit FE14:1;
    Ifx_UReg_32Bit FE15:1;
    Ifx_UReg_32Bit reserved_16:1;
    Ifx_UReg_32Bit reserved_17:13;
    Ifx_UReg_32Bit BITPROT:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_AGFSP_STDBY0_Bits;


typedef struct _Ifx_PMS_AGFSP_STDBY1_Bits
{
    Ifx_UReg_32Bit FE0:1;
    Ifx_UReg_32Bit FE1:1;
    Ifx_UReg_32Bit FE2:1;
    Ifx_UReg_32Bit FE3:1;
    Ifx_UReg_32Bit FE4:1;
    Ifx_UReg_32Bit FE5:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit FE7:1;
    Ifx_UReg_32Bit FE8:1;
    Ifx_UReg_32Bit FE9:1;
    Ifx_UReg_32Bit FE10:1;
    Ifx_UReg_32Bit FE11:1;
    Ifx_UReg_32Bit FE12:1;
    Ifx_UReg_32Bit FE13:1;
    Ifx_UReg_32Bit FE14:1;
    Ifx_UReg_32Bit FE15:1;
    Ifx_UReg_32Bit FE16:1;
    Ifx_UReg_32Bit reserved_17:13;
    Ifx_UReg_32Bit BITPROT:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_AGFSP_STDBY1_Bits;


typedef struct _Ifx_PMS_AG_STDBY0_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit SF4:1;
    Ifx_UReg_32Bit SF5:1;
    Ifx_UReg_32Bit SF6:1;
    Ifx_UReg_32Bit SF7:1;
    Ifx_UReg_32Bit SF8:1;
    Ifx_UReg_32Bit SF9:1;
    Ifx_UReg_32Bit SF10:1;
    Ifx_UReg_32Bit SF11:1;
    Ifx_UReg_32Bit SF12:1;
    Ifx_UReg_32Bit SF13:1;
    Ifx_UReg_32Bit SF14:1;
    Ifx_UReg_32Bit SF15:1;
    Ifx_UReg_32Bit reserved_16:1;
    Ifx_UReg_32Bit reserved_17:13;
    Ifx_UReg_32Bit FSPERR:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_AG_STDBY0_Bits;


typedef struct _Ifx_PMS_AG_STDBY1_Bits
{
    Ifx_UReg_32Bit SF0:1;
    Ifx_UReg_32Bit SF1:1;
    Ifx_UReg_32Bit SF2:1;
    Ifx_UReg_32Bit SF3:1;
    Ifx_UReg_32Bit SF4:1;
    Ifx_UReg_32Bit SF5:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit SF7:1;
    Ifx_UReg_32Bit SF8:1;
    Ifx_UReg_32Bit SF9:1;
    Ifx_UReg_32Bit SF10:1;
    Ifx_UReg_32Bit SF11:1;
    Ifx_UReg_32Bit SF12:1;
    Ifx_UReg_32Bit SF13:1;
    Ifx_UReg_32Bit SF14:1;
    Ifx_UReg_32Bit SF15:1;
    Ifx_UReg_32Bit SF16:1;
    Ifx_UReg_32Bit reserved_17:13;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_AG_STDBY1_Bits;


typedef struct _Ifx_PMS_CMD_STDBY_Bits
{
    Ifx_UReg_32Bit SMUEN:1;
    Ifx_UReg_32Bit FSP0EN:1;
    Ifx_UReg_32Bit FSP1EN:1;
    Ifx_UReg_32Bit ASCE:1;
    Ifx_UReg_32Bit reserved_4:26;
    Ifx_UReg_32Bit BITPROT:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_CMD_STDBY_Bits;


typedef struct _Ifx_PMS_DTSLIM_Bits
{
    Ifx_UReg_32Bit LOWER:12;
    Ifx_UReg_32Bit reserved_12:3;
    Ifx_UReg_32Bit LLU:1;
    Ifx_UReg_32Bit UPPER:12;
    Ifx_UReg_32Bit reserved_28:2;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit UOF:1;
} Ifx_PMS_DTSLIM_Bits;


typedef struct _Ifx_PMS_DTSSTAT_Bits
{
    Ifx_UReg_32Bit RESULT:12;
    Ifx_UReg_32Bit reserved_12:20;
} Ifx_PMS_DTSSTAT_Bits;


typedef struct _Ifx_PMS_EVR33CON_Bits
{
    Ifx_UReg_32Bit SHVH33:8;
    Ifx_UReg_32Bit reserved_8:4;
    Ifx_UReg_32Bit SHHVEN:1;
    Ifx_UReg_32Bit SHLVEN:1;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit SHVL33:8;
    Ifx_UReg_32Bit reserved_24:4;
    Ifx_UReg_32Bit reserved_28:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_EVR33CON_Bits;


typedef struct _Ifx_PMS_EVRADCSTAT_Bits
{
    Ifx_UReg_32Bit ADCCV:8;
    Ifx_UReg_32Bit ADC33V:8;
    Ifx_UReg_32Bit ADCSWDV:8;
    Ifx_UReg_32Bit OVC:1;
    Ifx_UReg_32Bit OV33:1;
    Ifx_UReg_32Bit OVSWD:1;
    Ifx_UReg_32Bit UVC:1;
    Ifx_UReg_32Bit UV33:1;
    Ifx_UReg_32Bit UVSWD:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_EVRADCSTAT_Bits;


typedef struct _Ifx_PMS_EVROSCCTRL_Bits
{
    Ifx_UReg_32Bit OSCFTRIM:6;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit OSCFPTRIM:6;
    Ifx_UReg_32Bit reserved_22:7;
    Ifx_UReg_32Bit OSCTEMPOFFS:1;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit OSCTRIMEN:1;
} Ifx_PMS_EVROSCCTRL_Bits;


typedef struct _Ifx_PMS_EVRRSTCON_Bits
{
    Ifx_UReg_32Bit RSTCTRIM:8;
    Ifx_UReg_32Bit RST33TRIM:8;
    Ifx_UReg_32Bit RSTSWDTRIM:8;
    Ifx_UReg_32Bit RSTCOFF:1;
    Ifx_UReg_32Bit BPRSTCOFF:1;
    Ifx_UReg_32Bit RST33OFF:1;
    Ifx_UReg_32Bit BPRST33OFF:1;
    Ifx_UReg_32Bit RSTSWDOFF:1;
    Ifx_UReg_32Bit BPRSTSWDOFF:1;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_EVRRSTCON_Bits;


typedef struct _Ifx_PMS_EVRRSTSTAT_Bits
{
    Ifx_UReg_32Bit RSTC:8;
    Ifx_UReg_32Bit RST33:8;
    Ifx_UReg_32Bit RSTSWD:8;
    Ifx_UReg_32Bit RSTCOFF:1;
    Ifx_UReg_32Bit reserved_25:1;
    Ifx_UReg_32Bit RST33OFF:1;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit RSTSWDOFF:1;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_PMS_EVRRSTSTAT_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF0_Bits
{
    Ifx_UReg_32Bit M0S0EN:1;
    Ifx_UReg_32Bit M0S2EN:1;
    Ifx_UReg_32Bit M0S3EN:1;
    Ifx_UReg_32Bit M0S3CLIP:1;
    Ifx_UReg_32Bit M0S4EN:1;
    Ifx_UReg_32Bit M0RAMPEN:1;
    Ifx_UReg_32Bit M0SFRGET:1;
    Ifx_UReg_32Bit M0SKIPEN:1;
    Ifx_UReg_32Bit M0S3COEFF:4;
    Ifx_UReg_32Bit M0S4COEFF:4;
    Ifx_UReg_32Bit M0SRMPCOEFF:4;
    Ifx_UReg_32Bit M0FGETCOEFF:4;
    Ifx_UReg_32Bit M0S2COEFF:4;
    Ifx_UReg_32Bit M0S2VINSRC:1;
    Ifx_UReg_32Bit M0S2VOSRC:1;
    Ifx_UReg_32Bit M0SRMPCOEFFFRAC:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCOEFF0_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF1_Bits
{
    Ifx_UReg_32Bit M0VOCFLPF:4;
    Ifx_UReg_32Bit M0VOCFINC:4;
    Ifx_UReg_32Bit M0VOUT:8;
    Ifx_UReg_32Bit M0VIN:11;
    Ifx_UReg_32Bit M0S3COEFFFRAC:2;
    Ifx_UReg_32Bit M0S2COEFFFRAC:2;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCOEFF1_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF2_Bits
{
    Ifx_UReg_32Bit M1S0EN:1;
    Ifx_UReg_32Bit M1S2EN:1;
    Ifx_UReg_32Bit M1S3EN:1;
    Ifx_UReg_32Bit M1S3CLIP:1;
    Ifx_UReg_32Bit M1S4EN:1;
    Ifx_UReg_32Bit M1RAMPEN:1;
    Ifx_UReg_32Bit M1SFRGET:1;
    Ifx_UReg_32Bit M1SKIPEN:1;
    Ifx_UReg_32Bit M1S3COEFF:4;
    Ifx_UReg_32Bit M1S4COEFF:4;
    Ifx_UReg_32Bit M1SRMPCOEFF:4;
    Ifx_UReg_32Bit M1FGETCOEFF:4;
    Ifx_UReg_32Bit M1S2COEFF:4;
    Ifx_UReg_32Bit M1S2VINSRC:1;
    Ifx_UReg_32Bit M1S2VOSRC:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_EVRSDCOEFF2_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF3_Bits
{
    Ifx_UReg_32Bit M1VOCFLPF:4;
    Ifx_UReg_32Bit M1VOCFINC:4;
    Ifx_UReg_32Bit M1VOUT:8;
    Ifx_UReg_32Bit M1VIN:11;
    Ifx_UReg_32Bit M1S3COEFFFRAC:2;
    Ifx_UReg_32Bit M1S2COEFFFRAC:2;
    Ifx_UReg_32Bit M1SRMPCOEFFFRAC:1;
} Ifx_PMS_EVRSDCOEFF3_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF4_Bits
{
    Ifx_UReg_32Bit M2S0EN:1;
    Ifx_UReg_32Bit M2S2EN:1;
    Ifx_UReg_32Bit M2S3EN:1;
    Ifx_UReg_32Bit M2S3CLIP:1;
    Ifx_UReg_32Bit M2S4EN:1;
    Ifx_UReg_32Bit M2RAMPEN:1;
    Ifx_UReg_32Bit M2SFRGET:1;
    Ifx_UReg_32Bit M2SKIPEN:1;
    Ifx_UReg_32Bit M2S3COEFF:4;
    Ifx_UReg_32Bit M2S4COEFF:4;
    Ifx_UReg_32Bit M2SRMPCOEFF:4;
    Ifx_UReg_32Bit M2FGETCOEFF:4;
    Ifx_UReg_32Bit M2S2COEFF:4;
    Ifx_UReg_32Bit M2S2VINSRC:1;
    Ifx_UReg_32Bit M2S2VOSRC:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_EVRSDCOEFF4_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF5_Bits
{
    Ifx_UReg_32Bit M2VOCFLPF:4;
    Ifx_UReg_32Bit M2VOCFINC:4;
    Ifx_UReg_32Bit M2VOUT:8;
    Ifx_UReg_32Bit M2VIN:11;
    Ifx_UReg_32Bit M2S3COEFFFRAC:2;
    Ifx_UReg_32Bit M2S2COEFFFRAC:2;
    Ifx_UReg_32Bit M2SRMPCOEFFFRAC:1;
} Ifx_PMS_EVRSDCOEFF5_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF6_Bits
{
    Ifx_UReg_32Bit CT5REG0:8;
    Ifx_UReg_32Bit CT5REG1:8;
    Ifx_UReg_32Bit CT5REG2:8;
    Ifx_UReg_32Bit reserved_24:7;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCOEFF6_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF7_Bits
{
    Ifx_UReg_32Bit CT5REG3:8;
    Ifx_UReg_32Bit CT5REG4:8;
    Ifx_UReg_32Bit reserved_16:15;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCOEFF7_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF8_Bits
{
    Ifx_UReg_32Bit CT33REG0:8;
    Ifx_UReg_32Bit CT33REG1:8;
    Ifx_UReg_32Bit CT33REG2:8;
    Ifx_UReg_32Bit reserved_24:7;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCOEFF8_Bits;


typedef struct _Ifx_PMS_EVRSDCOEFF9_Bits
{
    Ifx_UReg_32Bit CT33REG3:8;
    Ifx_UReg_32Bit CT33REG4:8;
    Ifx_UReg_32Bit reserved_16:15;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCOEFF9_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL0_Bits
{
    Ifx_UReg_32Bit SDFREQSPRD:16;
    Ifx_UReg_32Bit SDFREQ:12;
    Ifx_UReg_32Bit NGOFF:1;
    Ifx_UReg_32Bit PGOFF:1;
    Ifx_UReg_32Bit UP:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL0_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL1_Bits
{
    Ifx_UReg_32Bit M0TOFF:8;
    Ifx_UReg_32Bit M0TON:8;
    Ifx_UReg_32Bit M0S0COEFF:4;
    Ifx_UReg_32Bit M0DEADBD:2;
    Ifx_UReg_32Bit M0ADCZB:2;
    Ifx_UReg_32Bit M0SKIP:4;
    Ifx_UReg_32Bit reserved_28:2;
    Ifx_UReg_32Bit SYNCEN:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL1_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL10_Bits
{
    Ifx_UReg_32Bit SHVH:8;
    Ifx_UReg_32Bit SHVL:8;
    Ifx_UReg_32Bit reserved_16:12;
    Ifx_UReg_32Bit SHHVEN:1;
    Ifx_UReg_32Bit SHLVEN:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_EVRSDCTRL10_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL11_Bits
{
    Ifx_UReg_32Bit DROOPVH:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit DROOPVL:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit SYNCMAXDEV:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SYNCHYST:3;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit SYNCMUXSEL:2;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL11_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL2_Bits
{
    Ifx_UReg_32Bit LPBNDOFFSET:4;
    Ifx_UReg_32Bit LPBNDWIDTH:4;
    Ifx_UReg_32Bit LPLPFCOEFF:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit SDFREQLP:12;
    Ifx_UReg_32Bit reserved_28:2;
    Ifx_UReg_32Bit EVRCMOD:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL2_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL3_Bits
{
    Ifx_UReg_32Bit M1TOFF:8;
    Ifx_UReg_32Bit M1TON:8;
    Ifx_UReg_32Bit M1S0COEFF:4;
    Ifx_UReg_32Bit M1DEADBD:2;
    Ifx_UReg_32Bit M1ADCZB:2;
    Ifx_UReg_32Bit M1SKIP:4;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_PMS_EVRSDCTRL3_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL4_Bits
{
    Ifx_UReg_32Bit VOKCFG:6;
    Ifx_UReg_32Bit reserved_6:10;
    Ifx_UReg_32Bit SDFREQST:12;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_PMS_EVRSDCTRL4_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL5_Bits
{
    Ifx_UReg_32Bit M2TOFF:8;
    Ifx_UReg_32Bit M2TON:8;
    Ifx_UReg_32Bit M2S0COEFF:4;
    Ifx_UReg_32Bit M2DEADBD:2;
    Ifx_UReg_32Bit M2ADCZB:2;
    Ifx_UReg_32Bit M2SKIP:4;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_PMS_EVRSDCTRL5_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL6_Bits
{
    Ifx_UReg_32Bit SVINTH:8;
    Ifx_UReg_32Bit SVOTH:8;
    Ifx_UReg_32Bit SINCLO:3;
    Ifx_UReg_32Bit reserved_19:1;
    Ifx_UReg_32Bit SINCHI:3;
    Ifx_UReg_32Bit reserved_23:8;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL6_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL7_Bits
{
    Ifx_UReg_32Bit DRVNI:2;
    Ifx_UReg_32Bit DRVPCBF:2;
    Ifx_UReg_32Bit DRVP:4;
    Ifx_UReg_32Bit DRVSLOMODE:2;
    Ifx_UReg_32Bit reserved_10:6;
    Ifx_UReg_32Bit DRVSPR:8;
    Ifx_UReg_32Bit SYNCDIVFAC:3;
    Ifx_UReg_32Bit reserved_27:4;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL7_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL8_Bits
{
    Ifx_UReg_32Bit FBADCOFFS:8;
    Ifx_UReg_32Bit FBADCSMP:6;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit FBADCBLNK:2;
    Ifx_UReg_32Bit reserved_18:2;
    Ifx_UReg_32Bit FBADCLPF:2;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit FBADCERR:2;
    Ifx_UReg_32Bit reserved_26:2;
    Ifx_UReg_32Bit FBADCLSB:1;
    Ifx_UReg_32Bit reserved_29:2;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL8_Bits;


typedef struct _Ifx_PMS_EVRSDCTRL9_Bits
{
    Ifx_UReg_32Bit FFADCOFFS:8;
    Ifx_UReg_32Bit FFADCLPF:3;
    Ifx_UReg_32Bit reserved_11:20;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRSDCTRL9_Bits;


typedef struct _Ifx_PMS_EVRSDSTAT0_Bits
{
    Ifx_UReg_32Bit ADCFBCV:8;
    Ifx_UReg_32Bit reserved_8:8;
    Ifx_UReg_32Bit DPWMOUT:12;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_PMS_EVRSDSTAT0_Bits;


typedef struct _Ifx_PMS_EVRSTAT_Bits
{
    Ifx_UReg_32Bit EVRC:1;
    Ifx_UReg_32Bit OVC:1;
    Ifx_UReg_32Bit EVR33:1;
    Ifx_UReg_32Bit OV33:1;
    Ifx_UReg_32Bit OVSWD:1;
    Ifx_UReg_32Bit UVC:1;
    Ifx_UReg_32Bit UV33:1;
    Ifx_UReg_32Bit UVSWD:1;
    Ifx_UReg_32Bit SYNCLCK:1;
    Ifx_UReg_32Bit EVR33VOK:1;
    Ifx_UReg_32Bit reserved_10:3;
    Ifx_UReg_32Bit RSTC:1;
    Ifx_UReg_32Bit RST33:1;
    Ifx_UReg_32Bit RSTSWD:1;
    Ifx_UReg_32Bit EVRCSHLV:1;
    Ifx_UReg_32Bit EVRCSHHV:1;
    Ifx_UReg_32Bit EVR33SHLV:1;
    Ifx_UReg_32Bit EVR33SHHV:1;
    Ifx_UReg_32Bit SWDLVL:1;
    Ifx_UReg_32Bit SDVOK:1;
    Ifx_UReg_32Bit EVRCMOD:2;
    Ifx_UReg_32Bit OVPRE:1;
    Ifx_UReg_32Bit OVSB:1;
    Ifx_UReg_32Bit OVDDM:1;
    Ifx_UReg_32Bit UVPRE:1;
    Ifx_UReg_32Bit UVSB:1;
    Ifx_UReg_32Bit UVDDM:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_EVRSTAT_Bits;


typedef struct _Ifx_PMS_EVRTRIM_Bits
{
    Ifx_UReg_32Bit EVR33VOUTSEL:8;
    Ifx_UReg_32Bit SDVOUTSEL:8;
    Ifx_UReg_32Bit EVR33VOUTTRIM:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit SDVOUTTRIM:6;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit LCK:1;
} Ifx_PMS_EVRTRIM_Bits;


typedef struct _Ifx_PMS_EVRTRIMSTAT_Bits
{
    Ifx_UReg_32Bit EVR33VOUTSEL:8;
    Ifx_UReg_32Bit SDVOUTSEL:8;
    Ifx_UReg_32Bit EVR33VOUTTRIM:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit SDVOUTTRIM:6;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_EVRTRIMSTAT_Bits;


typedef struct _Ifx_PMS_HSMOVMON_Bits
{
    Ifx_UReg_32Bit EVRCOVVAL:8;
    Ifx_UReg_32Bit EVR33OVVAL:8;
    Ifx_UReg_32Bit SWDOVVAL:8;
    Ifx_UReg_32Bit EVRCOFF:1;
    Ifx_UReg_32Bit EVR33OFF:1;
    Ifx_UReg_32Bit SWDOFF:1;
    Ifx_UReg_32Bit reserved_27:4;
    Ifx_UReg_32Bit SLCK:1;
} Ifx_PMS_HSMOVMON_Bits;


typedef struct _Ifx_PMS_HSMUVMON_Bits
{
    Ifx_UReg_32Bit EVRCUVVAL:8;
    Ifx_UReg_32Bit EVR33UVVAL:8;
    Ifx_UReg_32Bit SWDUVVAL:8;
    Ifx_UReg_32Bit EVRCOFF:1;
    Ifx_UReg_32Bit EVR33OFF:1;
    Ifx_UReg_32Bit SWDOFF:1;
    Ifx_UReg_32Bit HSMFIL:4;
    Ifx_UReg_32Bit SLCK:1;
} Ifx_PMS_HSMUVMON_Bits;


typedef struct _Ifx_PMS_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUMBER:16;
} Ifx_PMS_ID_Bits;


typedef struct _Ifx_PMS_MONBISTCTRL_Bits
{
    Ifx_UReg_32Bit TSTEN:1;
    Ifx_UReg_32Bit TSTCLR:1;
    Ifx_UReg_32Bit reserved_2:28;
    Ifx_UReg_32Bit BITPROT:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_MONBISTCTRL_Bits;


typedef struct _Ifx_PMS_MONBISTSTAT_Bits
{
    Ifx_UReg_32Bit TSTOK:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit TSTRUN:1;
    Ifx_UReg_32Bit TSTDONE:1;
    Ifx_UReg_32Bit SMUERR:1;
    Ifx_UReg_32Bit PMSERR:1;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_PMS_MONBISTSTAT_Bits;


typedef struct _Ifx_PMS_MONCTRL_Bits
{
    Ifx_UReg_32Bit EVRCOVMOD:2;
    Ifx_UReg_32Bit PREOVMOD:2;
    Ifx_UReg_32Bit EVRCUVMOD:2;
    Ifx_UReg_32Bit PREUVMOD:2;
    Ifx_UReg_32Bit EVR33OVMOD:2;
    Ifx_UReg_32Bit VDDMOVMOD:2;
    Ifx_UReg_32Bit EVR33UVMOD:2;
    Ifx_UReg_32Bit VDDMUVMOD:2;
    Ifx_UReg_32Bit SWDOVMOD:2;
    Ifx_UReg_32Bit SBOVMOD:2;
    Ifx_UReg_32Bit SWDUVMOD:2;
    Ifx_UReg_32Bit SBUVMOD:2;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_MONCTRL_Bits;


typedef struct _Ifx_PMS_MONFILT_Bits
{
    Ifx_UReg_32Bit EVRCFIL:4;
    Ifx_UReg_32Bit PREFIL:4;
    Ifx_UReg_32Bit EVR33FIL:4;
    Ifx_UReg_32Bit VDDMFIL:4;
    Ifx_UReg_32Bit SWDFIL:4;
    Ifx_UReg_32Bit SBFIL:4;
    Ifx_UReg_32Bit reserved_24:5;
    Ifx_UReg_32Bit CLRFIL:1;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_MONFILT_Bits;


typedef struct _Ifx_PMS_MONSTAT1_Bits
{
    Ifx_UReg_32Bit ADCCV:8;
    Ifx_UReg_32Bit ADC33V:8;
    Ifx_UReg_32Bit ADCSWDV:8;
    Ifx_UReg_32Bit ACTVCNT:6;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_MONSTAT1_Bits;


typedef struct _Ifx_PMS_MONSTAT2_Bits
{
    Ifx_UReg_32Bit ADCPRE:8;
    Ifx_UReg_32Bit ADCSB:8;
    Ifx_UReg_32Bit ADCVDDM:8;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_PMS_MONSTAT2_Bits;


typedef struct _Ifx_PMS_OTSC0_Bits
{
    Ifx_UReg_32Bit B0LAM:4;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit B0HAM:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit B1LAM:4;
    Ifx_UReg_32Bit reserved_20:4;
    Ifx_UReg_32Bit B1HAM:4;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_PMS_OTSC0_Bits;


typedef struct _Ifx_PMS_OTSC1_Bits
{
    Ifx_UReg_32Bit B0EC:4;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit B1EC:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit DMONAD:8;
    Ifx_UReg_32Bit SMCDBG:8;
} Ifx_PMS_OTSC1_Bits;


typedef struct _Ifx_PMS_OTSS_Bits
{
    Ifx_UReg_32Bit OTGB0:4;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit OTGB1:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_PMS_OTSS_Bits;


typedef struct _Ifx_PMS_OVMON_Bits
{
    Ifx_UReg_32Bit EVRCOVVAL:8;
    Ifx_UReg_32Bit EVR33OVVAL:8;
    Ifx_UReg_32Bit SWDOVVAL:8;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_OVMON_Bits;


typedef struct _Ifx_PMS_OVMON2_Bits
{
    Ifx_UReg_32Bit PREOVVAL:8;
    Ifx_UReg_32Bit VDDMOVVAL:8;
    Ifx_UReg_32Bit SBOVVAL:8;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_OVMON2_Bits;


typedef struct _Ifx_PMS_PMSIEN_Bits
{
    Ifx_UReg_32Bit OVSWD:1;
    Ifx_UReg_32Bit UVSWD:1;
    Ifx_UReg_32Bit OV33:1;
    Ifx_UReg_32Bit UV33:1;
    Ifx_UReg_32Bit OVC:1;
    Ifx_UReg_32Bit UVC:1;
    Ifx_UReg_32Bit OVPRE:1;
    Ifx_UReg_32Bit UVPRE:1;
    Ifx_UReg_32Bit OVDDM:1;
    Ifx_UReg_32Bit UVDDM:1;
    Ifx_UReg_32Bit OVSB:1;
    Ifx_UReg_32Bit UVSB:1;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit EVRCMOD:1;
    Ifx_UReg_32Bit SDVOK:1;
    Ifx_UReg_32Bit SYNCLCK:1;
    Ifx_UReg_32Bit SWDLVL:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit WUTWKP:1;
    Ifx_UReg_32Bit ESR0WKP:1;
    Ifx_UReg_32Bit ESR1WKP:1;
    Ifx_UReg_32Bit PINAWKP:1;
    Ifx_UReg_32Bit PINBWKP:1;
    Ifx_UReg_32Bit SCRINT:1;
    Ifx_UReg_32Bit SCRRST:1;
    Ifx_UReg_32Bit SCRECC:1;
    Ifx_UReg_32Bit SCRWDT:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_PMS_PMSIEN_Bits;


typedef struct _Ifx_PMS_PMSWCR0_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit VEXTSTBYEN:1;
    Ifx_UReg_32Bit VDDSTBYEN:1;
    Ifx_UReg_32Bit ESR0DFEN:1;
    Ifx_UReg_32Bit ESR0EDCON:2;
    Ifx_UReg_32Bit ESR1DFEN:1;
    Ifx_UReg_32Bit ESR1EDCON:2;
    Ifx_UReg_32Bit PINADFEN:1;
    Ifx_UReg_32Bit PINAEDCON:2;
    Ifx_UReg_32Bit PINBDFEN:1;
    Ifx_UReg_32Bit PINBEDCON:2;
    Ifx_UReg_32Bit STBYRAMSEL:3;
    Ifx_UReg_32Bit reserved_19:1;
    Ifx_UReg_32Bit BLNKFIL:4;
    Ifx_UReg_32Bit ESR0WKEN:1;
    Ifx_UReg_32Bit ESR1WKEN:1;
    Ifx_UReg_32Bit PINAWKEN:1;
    Ifx_UReg_32Bit PINBWKEN:1;
    Ifx_UReg_32Bit PWRWKEN:1;
    Ifx_UReg_32Bit SCRWKEN:1;
    Ifx_UReg_32Bit PORSTWKEN:1;
    Ifx_UReg_32Bit WUTWKEN:1;
} Ifx_PMS_PMSWCR0_Bits;


typedef struct _Ifx_PMS_PMSWCR2_Bits
{
    Ifx_UReg_32Bit SCRINT:8;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit SCRECC:1;
    Ifx_UReg_32Bit SCRWDT:1;
    Ifx_UReg_32Bit SCRRST:1;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit TCINT:8;
    Ifx_UReg_32Bit TCINTREQ:1;
    Ifx_UReg_32Bit SMURST:1;
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_27:5;
} Ifx_PMS_PMSWCR2_Bits;


typedef struct _Ifx_PMS_PMSWCR3_Bits
{
    Ifx_UReg_32Bit WUTREL:24;
    Ifx_UReg_32Bit reserved_24:3;
    Ifx_UReg_32Bit WUTEN:1;
    Ifx_UReg_32Bit BUSY:1;
    Ifx_UReg_32Bit WUTDIV:1;
    Ifx_UReg_32Bit WUTMODE:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_PMSWCR3_Bits;


typedef struct _Ifx_PMS_PMSWCR4_Bits
{
    Ifx_UReg_32Bit BPSCRSTREQ:1;
    Ifx_UReg_32Bit SCRSTREQ:1;
    Ifx_UReg_32Bit reserved_2:2;
    Ifx_UReg_32Bit BPPORSTREQ:1;
    Ifx_UReg_32Bit PORSTREQ:1;
    Ifx_UReg_32Bit SCRCLKSEL:1;
    Ifx_UReg_32Bit reserved_7:9;
    Ifx_UReg_32Bit SCRCFG:8;
    Ifx_UReg_32Bit BPSCREN:1;
    Ifx_UReg_32Bit SCREN:1;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_PMS_PMSWCR4_Bits;


typedef struct _Ifx_PMS_PMSWCR5_Bits
{
    Ifx_UReg_32Bit BPTRISTREQ:1;
    Ifx_UReg_32Bit TRISTREQ:1;
    Ifx_UReg_32Bit ESR0TRIST:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit PORSTDF:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit DCDCSYNCO:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_PMS_PMSWCR5_Bits;


typedef struct _Ifx_PMS_PMSWSTAT_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit HWCFGEVR:2;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit HWCFG4:1;
    Ifx_UReg_32Bit HWCFG5:1;
    Ifx_UReg_32Bit TRIST:1;
    Ifx_UReg_32Bit TESTMODE:1;
    Ifx_UReg_32Bit ESR0TRIST:1;
    Ifx_UReg_32Bit reserved_9:2;
    Ifx_UReg_32Bit PORSTDF:1;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit SCR:1;
    Ifx_UReg_32Bit SCRST:1;
    Ifx_UReg_32Bit SCRCLK:1;
    Ifx_UReg_32Bit PORSTREQ:1;
    Ifx_UReg_32Bit reserved_20:4;
    Ifx_UReg_32Bit WUTEN:1;
    Ifx_UReg_32Bit WUTRUN:1;
    Ifx_UReg_32Bit WUTMODE:1;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit ESR0INT:1;
    Ifx_UReg_32Bit ESR1INT:1;
    Ifx_UReg_32Bit PINAINT:1;
    Ifx_UReg_32Bit PINBINT:1;
} Ifx_PMS_PMSWSTAT_Bits;


typedef struct _Ifx_PMS_PMSWSTAT2_Bits
{
    Ifx_UReg_32Bit ESR0WKP:1;
    Ifx_UReg_32Bit ESR1WKP:1;
    Ifx_UReg_32Bit PINAWKP:1;
    Ifx_UReg_32Bit PINBWKP:1;
    Ifx_UReg_32Bit PWRWKP:1;
    Ifx_UReg_32Bit SCRWKP:1;
    Ifx_UReg_32Bit PORSTWKP:1;
    Ifx_UReg_32Bit WUTWKP:1;
    Ifx_UReg_32Bit ESR0OVRUN:1;
    Ifx_UReg_32Bit ESR1OVRUN:1;
    Ifx_UReg_32Bit PINAOVRUN:1;
    Ifx_UReg_32Bit PINBOVRUN:1;
    Ifx_UReg_32Bit VDDSTBYEN:1;
    Ifx_UReg_32Bit SCROVRUN:1;
    Ifx_UReg_32Bit PORSTOVRUN:1;
    Ifx_UReg_32Bit WUTOVRUN:1;
    Ifx_UReg_32Bit STBYRAM:3;
    Ifx_UReg_32Bit VEXTSTBYEN:1;
    Ifx_UReg_32Bit BLNKFIL:4;
    Ifx_UReg_32Bit ESR0WKEN:1;
    Ifx_UReg_32Bit ESR1WKEN:1;
    Ifx_UReg_32Bit PINAWKEN:1;
    Ifx_UReg_32Bit PINBWKEN:1;
    Ifx_UReg_32Bit PWRWKEN:1;
    Ifx_UReg_32Bit SCRWKEN:1;
    Ifx_UReg_32Bit PORSTWKEN:1;
    Ifx_UReg_32Bit WUTWKEN:1;
} Ifx_PMS_PMSWSTAT2_Bits;


typedef struct _Ifx_PMS_PMSWSTATCLR_Bits
{
    Ifx_UReg_32Bit ESR0WKPCLR:1;
    Ifx_UReg_32Bit ESR1WKPCLR:1;
    Ifx_UReg_32Bit PINAWKPCLR:1;
    Ifx_UReg_32Bit PINBWKPCLR:1;
    Ifx_UReg_32Bit PWRWKPCLR:1;
    Ifx_UReg_32Bit SCRWKPCLR:1;
    Ifx_UReg_32Bit PORSTWKPCLR:1;
    Ifx_UReg_32Bit WUTWKPCLR:1;
    Ifx_UReg_32Bit ESR0OVRUNCLR:1;
    Ifx_UReg_32Bit ESR1OVRUNCLR:1;
    Ifx_UReg_32Bit PINAOVRUNCLR:1;
    Ifx_UReg_32Bit PINBOVRUNCLR:1;
    Ifx_UReg_32Bit reserved_12:1;
    Ifx_UReg_32Bit SCROVRUNCLR:1;
    Ifx_UReg_32Bit PORSTOVRUNCLR:1;
    Ifx_UReg_32Bit WUTOVRUNCLR:1;
    Ifx_UReg_32Bit SCRSTCLR:1;
    Ifx_UReg_32Bit reserved_17:11;
    Ifx_UReg_32Bit ESR0INTCLR:1;
    Ifx_UReg_32Bit ESR1INTCLR:1;
    Ifx_UReg_32Bit PINAINTCLR:1;
    Ifx_UReg_32Bit PINBINTCLR:1;
} Ifx_PMS_PMSWSTATCLR_Bits;


typedef struct _Ifx_PMS_PMSWUTCNT_Bits
{
    Ifx_UReg_32Bit WUTCNT:24;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_PMS_PMSWUTCNT_Bits;


typedef struct _Ifx_PMS_UVMON_Bits
{
    Ifx_UReg_32Bit EVRCUVVAL:8;
    Ifx_UReg_32Bit EVR33UVVAL:8;
    Ifx_UReg_32Bit SWDUVVAL:8;
    Ifx_UReg_32Bit reserved_24:6;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_UVMON_Bits;


typedef struct _Ifx_PMS_UVMON2_Bits
{
    Ifx_UReg_32Bit PREUVVAL:8;
    Ifx_UReg_32Bit VDDMUVVAL:8;
    Ifx_UReg_32Bit SBUVVAL:8;
    Ifx_UReg_32Bit VDDMLVLSEL:6;
    Ifx_UReg_32Bit SLCK:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_PMS_UVMON2_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_ACCEN0_Bits B;
} Ifx_PMS_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_ACCEN1_Bits B;
} Ifx_PMS_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_AGFSP_STDBY0_Bits B;
} Ifx_PMS_AGFSP_STDBY0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_AGFSP_STDBY1_Bits B;
} Ifx_PMS_AGFSP_STDBY1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_AG_STDBY0_Bits B;
} Ifx_PMS_AG_STDBY0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_AG_STDBY1_Bits B;
} Ifx_PMS_AG_STDBY1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_CMD_STDBY_Bits B;
} Ifx_PMS_CMD_STDBY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_DTSLIM_Bits B;
} Ifx_PMS_DTSLIM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_DTSSTAT_Bits B;
} Ifx_PMS_DTSSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVR33CON_Bits B;
} Ifx_PMS_EVR33CON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRADCSTAT_Bits B;
} Ifx_PMS_EVRADCSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVROSCCTRL_Bits B;
} Ifx_PMS_EVROSCCTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRRSTCON_Bits B;
} Ifx_PMS_EVRRSTCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRRSTSTAT_Bits B;
} Ifx_PMS_EVRRSTSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF0_Bits B;
} Ifx_PMS_EVRSDCOEFF0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF1_Bits B;
} Ifx_PMS_EVRSDCOEFF1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF2_Bits B;
} Ifx_PMS_EVRSDCOEFF2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF3_Bits B;
} Ifx_PMS_EVRSDCOEFF3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF4_Bits B;
} Ifx_PMS_EVRSDCOEFF4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF5_Bits B;
} Ifx_PMS_EVRSDCOEFF5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF6_Bits B;
} Ifx_PMS_EVRSDCOEFF6;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF7_Bits B;
} Ifx_PMS_EVRSDCOEFF7;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF8_Bits B;
} Ifx_PMS_EVRSDCOEFF8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCOEFF9_Bits B;
} Ifx_PMS_EVRSDCOEFF9;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL0_Bits B;
} Ifx_PMS_EVRSDCTRL0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL1_Bits B;
} Ifx_PMS_EVRSDCTRL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL10_Bits B;
} Ifx_PMS_EVRSDCTRL10;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL11_Bits B;
} Ifx_PMS_EVRSDCTRL11;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL2_Bits B;
} Ifx_PMS_EVRSDCTRL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL3_Bits B;
} Ifx_PMS_EVRSDCTRL3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL4_Bits B;
} Ifx_PMS_EVRSDCTRL4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL5_Bits B;
} Ifx_PMS_EVRSDCTRL5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL6_Bits B;
} Ifx_PMS_EVRSDCTRL6;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL7_Bits B;
} Ifx_PMS_EVRSDCTRL7;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL8_Bits B;
} Ifx_PMS_EVRSDCTRL8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDCTRL9_Bits B;
} Ifx_PMS_EVRSDCTRL9;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSDSTAT0_Bits B;
} Ifx_PMS_EVRSDSTAT0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRSTAT_Bits B;
} Ifx_PMS_EVRSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRTRIM_Bits B;
} Ifx_PMS_EVRTRIM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_EVRTRIMSTAT_Bits B;
} Ifx_PMS_EVRTRIMSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_HSMOVMON_Bits B;
} Ifx_PMS_HSMOVMON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_HSMUVMON_Bits B;
} Ifx_PMS_HSMUVMON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_ID_Bits B;
} Ifx_PMS_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_MONBISTCTRL_Bits B;
} Ifx_PMS_MONBISTCTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_MONBISTSTAT_Bits B;
} Ifx_PMS_MONBISTSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_MONCTRL_Bits B;
} Ifx_PMS_MONCTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_MONFILT_Bits B;
} Ifx_PMS_MONFILT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_MONSTAT1_Bits B;
} Ifx_PMS_MONSTAT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_MONSTAT2_Bits B;
} Ifx_PMS_MONSTAT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_OTSC0_Bits B;
} Ifx_PMS_OTSC0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_OTSC1_Bits B;
} Ifx_PMS_OTSC1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_OTSS_Bits B;
} Ifx_PMS_OTSS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_OVMON_Bits B;
} Ifx_PMS_OVMON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_OVMON2_Bits B;
} Ifx_PMS_OVMON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSIEN_Bits B;
} Ifx_PMS_PMSIEN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWCR0_Bits B;
} Ifx_PMS_PMSWCR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWCR2_Bits B;
} Ifx_PMS_PMSWCR2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWCR3_Bits B;
} Ifx_PMS_PMSWCR3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWCR4_Bits B;
} Ifx_PMS_PMSWCR4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWCR5_Bits B;
} Ifx_PMS_PMSWCR5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWSTAT_Bits B;
} Ifx_PMS_PMSWSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWSTAT2_Bits B;
} Ifx_PMS_PMSWSTAT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWSTATCLR_Bits B;
} Ifx_PMS_PMSWSTATCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_PMSWUTCNT_Bits B;
} Ifx_PMS_PMSWUTCNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_UVMON_Bits B;
} Ifx_PMS_UVMON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_PMS_UVMON2_Bits B;
} Ifx_PMS_UVMON2;
# 1610 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_regdef.h"
typedef volatile struct _Ifx_PMS
{
       Ifx_UReg_8Bit reserved_0[8];
       Ifx_PMS_ID ID;
       Ifx_UReg_8Bit reserved_C[32];
       Ifx_PMS_EVRSTAT EVRSTAT;
       Ifx_UReg_8Bit reserved_30[4];
       Ifx_PMS_EVRADCSTAT EVRADCSTAT;
       Ifx_UReg_8Bit reserved_38[4];
       Ifx_PMS_EVRRSTCON EVRRSTCON;
       Ifx_UReg_8Bit reserved_40[4];
       Ifx_PMS_EVRRSTSTAT EVRRSTSTAT;
       Ifx_UReg_8Bit reserved_48[4];
       Ifx_PMS_EVRTRIM EVRTRIM;
       Ifx_PMS_EVRTRIMSTAT EVRTRIMSTAT;
       Ifx_UReg_8Bit reserved_54[12];
       Ifx_PMS_MONSTAT1 MONSTAT1;
       Ifx_PMS_MONSTAT2 MONSTAT2;
       Ifx_PMS_MONCTRL MONCTRL;
       Ifx_UReg_8Bit reserved_6C[4];
       Ifx_PMS_MONFILT MONFILT;
       Ifx_PMS_PMSIEN PMSIEN;
       Ifx_PMS_UVMON UVMON;
       Ifx_PMS_OVMON OVMON;
       Ifx_PMS_UVMON2 UVMON2;
       Ifx_PMS_OVMON2 OVMON2;
       Ifx_PMS_HSMUVMON HSMUVMON;
       Ifx_PMS_HSMOVMON HSMOVMON;
       Ifx_PMS_EVR33CON EVR33CON;
       Ifx_UReg_8Bit reserved_94[12];
       Ifx_PMS_EVROSCCTRL EVROSCCTRL;
       Ifx_UReg_8Bit reserved_A4[16];
       Ifx_PMS_PMSWCR0 PMSWCR0;
       Ifx_PMS_PMSWCR2 PMSWCR2;
       Ifx_UReg_8Bit reserved_BC[4];
       Ifx_PMS_PMSWCR3 PMSWCR3;
       Ifx_PMS_PMSWCR4 PMSWCR4;
       Ifx_PMS_PMSWCR5 PMSWCR5;
       Ifx_UReg_8Bit reserved_CC[8];
       Ifx_PMS_PMSWSTAT PMSWSTAT;
       Ifx_PMS_PMSWSTAT2 PMSWSTAT2;
       Ifx_PMS_PMSWUTCNT PMSWUTCNT;
       Ifx_UReg_8Bit reserved_E0[8];
       Ifx_PMS_PMSWSTATCLR PMSWSTATCLR;
       Ifx_UReg_8Bit reserved_EC[16];
       Ifx_PMS_EVRSDSTAT0 EVRSDSTAT0;
       Ifx_UReg_8Bit reserved_100[8];
       Ifx_PMS_EVRSDCTRL0 EVRSDCTRL0;
       Ifx_PMS_EVRSDCTRL1 EVRSDCTRL1;
       Ifx_PMS_EVRSDCTRL2 EVRSDCTRL2;
       Ifx_PMS_EVRSDCTRL3 EVRSDCTRL3;
       Ifx_PMS_EVRSDCTRL4 EVRSDCTRL4;
       Ifx_PMS_EVRSDCTRL5 EVRSDCTRL5;
       Ifx_PMS_EVRSDCTRL6 EVRSDCTRL6;
       Ifx_PMS_EVRSDCTRL7 EVRSDCTRL7;
       Ifx_PMS_EVRSDCTRL8 EVRSDCTRL8;
       Ifx_PMS_EVRSDCTRL9 EVRSDCTRL9;
       Ifx_PMS_EVRSDCTRL10 EVRSDCTRL10;
       Ifx_PMS_EVRSDCTRL11 EVRSDCTRL11;
       Ifx_UReg_8Bit reserved_138[16];
       Ifx_PMS_EVRSDCOEFF0 EVRSDCOEFF0;
       Ifx_PMS_EVRSDCOEFF1 EVRSDCOEFF1;
       Ifx_PMS_EVRSDCOEFF2 EVRSDCOEFF2;
       Ifx_PMS_EVRSDCOEFF3 EVRSDCOEFF3;
       Ifx_PMS_EVRSDCOEFF4 EVRSDCOEFF4;
       Ifx_PMS_EVRSDCOEFF5 EVRSDCOEFF5;
       Ifx_PMS_EVRSDCOEFF6 EVRSDCOEFF6;
       Ifx_PMS_EVRSDCOEFF7 EVRSDCOEFF7;
       Ifx_PMS_EVRSDCOEFF8 EVRSDCOEFF8;
       Ifx_PMS_EVRSDCOEFF9 EVRSDCOEFF9;
       Ifx_UReg_8Bit reserved_170[24];
       Ifx_PMS_AG_STDBY0 AG_STDBY0;
       Ifx_PMS_AG_STDBY1 AG_STDBY1;
       Ifx_PMS_MONBISTSTAT MONBISTSTAT;
       Ifx_UReg_8Bit reserved_194[4];
       Ifx_PMS_MONBISTCTRL MONBISTCTRL;
       Ifx_PMS_CMD_STDBY CMD_STDBY;
       Ifx_UReg_8Bit reserved_1A0[4];
       Ifx_PMS_AGFSP_STDBY0 AGFSP_STDBY0;
       Ifx_PMS_AGFSP_STDBY1 AGFSP_STDBY1;
       Ifx_UReg_8Bit reserved_1AC[20];
       Ifx_PMS_DTSSTAT DTSSTAT;
       Ifx_UReg_8Bit reserved_1C4[4];
       Ifx_PMS_DTSLIM DTSLIM;
       Ifx_UReg_8Bit reserved_1CC[20];
       Ifx_PMS_OTSS OTSS;
       Ifx_PMS_OTSC0 OTSC0;
       Ifx_PMS_OTSC1 OTSC1;
       Ifx_UReg_8Bit reserved_1EC[12];
       Ifx_PMS_ACCEN1 ACCEN1;
       Ifx_PMS_ACCEN0 ACCEN0;
} Ifx_PMS;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_reg.h" 2
# 2 ".\\output\\inc/IfxPms_reg.h" 2
# 48 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c" 2
# 1 ".\\output\\inc/IfxStm_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_reg.h" 1
# 65 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
typedef struct _Ifx_STM_ACCEN0_Bits
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
} Ifx_STM_ACCEN0_Bits;


typedef struct _Ifx_STM_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_STM_ACCEN1_Bits;


typedef struct _Ifx_STM_CAP_Bits
{
    Ifx_UReg_32Bit STMCAP_63_32:32;
} Ifx_STM_CAP_Bits;


typedef struct _Ifx_STM_CAPSV_Bits
{
    Ifx_UReg_32Bit STMCAP_63_32:32;
} Ifx_STM_CAPSV_Bits;


typedef struct _Ifx_STM_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_STM_CLC_Bits;


typedef struct _Ifx_STM_CMCON_Bits
{
    Ifx_UReg_32Bit MSIZE0:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit MSTART0:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit MSIZE1:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit MSTART1:5;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_STM_CMCON_Bits;


typedef struct _Ifx_STM_CMP_Bits
{
    Ifx_UReg_32Bit CMPVAL:32;
} Ifx_STM_CMP_Bits;


typedef struct _Ifx_STM_ICR_Bits
{
    Ifx_UReg_32Bit CMP0EN:1;
    Ifx_UReg_32Bit CMP0IR:1;
    Ifx_UReg_32Bit CMP0OS:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit CMP1EN:1;
    Ifx_UReg_32Bit CMP1IR:1;
    Ifx_UReg_32Bit CMP1OS:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_STM_ICR_Bits;


typedef struct _Ifx_STM_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUM:16;
} Ifx_STM_ID_Bits;


typedef struct _Ifx_STM_ISCR_Bits
{
    Ifx_UReg_32Bit CMP0IRR:1;
    Ifx_UReg_32Bit CMP0IRS:1;
    Ifx_UReg_32Bit CMP1IRR:1;
    Ifx_UReg_32Bit CMP1IRS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_STM_ISCR_Bits;


typedef struct _Ifx_STM_KRST0_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_STM_KRST0_Bits;


typedef struct _Ifx_STM_KRST1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_STM_KRST1_Bits;


typedef struct _Ifx_STM_KRSTCLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_STM_KRSTCLR_Bits;


typedef struct _Ifx_STM_OCS_Bits
{
    Ifx_UReg_32Bit reserved_0:3;
    Ifx_UReg_32Bit reserved_3:21;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_STM_OCS_Bits;


typedef struct _Ifx_STM_TIM0_Bits
{
    Ifx_UReg_32Bit STM_31_0:32;
} Ifx_STM_TIM0_Bits;


typedef struct _Ifx_STM_TIM0SV_Bits
{
    Ifx_UReg_32Bit STM_31_0:32;
} Ifx_STM_TIM0SV_Bits;


typedef struct _Ifx_STM_TIM1_Bits
{
    Ifx_UReg_32Bit STM_35_4:32;
} Ifx_STM_TIM1_Bits;


typedef struct _Ifx_STM_TIM2_Bits
{
    Ifx_UReg_32Bit STM_39_8:32;
} Ifx_STM_TIM2_Bits;


typedef struct _Ifx_STM_TIM3_Bits
{
    Ifx_UReg_32Bit STM_43_12:32;
} Ifx_STM_TIM3_Bits;


typedef struct _Ifx_STM_TIM4_Bits
{
    Ifx_UReg_32Bit STM_47_16:32;
} Ifx_STM_TIM4_Bits;


typedef struct _Ifx_STM_TIM5_Bits
{
    Ifx_UReg_32Bit STM_51_20:32;
} Ifx_STM_TIM5_Bits;


typedef struct _Ifx_STM_TIM6_Bits
{
    Ifx_UReg_32Bit STM_63_32:32;
} Ifx_STM_TIM6_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ACCEN0_Bits B;
} Ifx_STM_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ACCEN1_Bits B;
} Ifx_STM_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CAP_Bits B;
} Ifx_STM_CAP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CAPSV_Bits B;
} Ifx_STM_CAPSV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CLC_Bits B;
} Ifx_STM_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CMCON_Bits B;
} Ifx_STM_CMCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_CMP_Bits B;
} Ifx_STM_CMP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ICR_Bits B;
} Ifx_STM_ICR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ID_Bits B;
} Ifx_STM_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_ISCR_Bits B;
} Ifx_STM_ISCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_KRST0_Bits B;
} Ifx_STM_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_KRST1_Bits B;
} Ifx_STM_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_KRSTCLR_Bits B;
} Ifx_STM_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_OCS_Bits B;
} Ifx_STM_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM0_Bits B;
} Ifx_STM_TIM0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM0SV_Bits B;
} Ifx_STM_TIM0SV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM1_Bits B;
} Ifx_STM_TIM1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM2_Bits B;
} Ifx_STM_TIM2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM3_Bits B;
} Ifx_STM_TIM3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM4_Bits B;
} Ifx_STM_TIM4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM5_Bits B;
} Ifx_STM_TIM5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_STM_TIM6_Bits B;
} Ifx_STM_TIM6;
# 454 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
typedef volatile struct _Ifx_STM
{
       Ifx_STM_CLC CLC;
       Ifx_UReg_8Bit reserved_4[4];
       Ifx_STM_ID ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_STM_TIM0 TIM0;
       Ifx_STM_TIM1 TIM1;
       Ifx_STM_TIM2 TIM2;
       Ifx_STM_TIM3 TIM3;
       Ifx_STM_TIM4 TIM4;
       Ifx_STM_TIM5 TIM5;
       Ifx_STM_TIM6 TIM6;
       Ifx_STM_CAP CAP;
       Ifx_STM_CMP CMP[2];
       Ifx_STM_CMCON CMCON;
       Ifx_STM_ICR ICR;
       Ifx_STM_ISCR ISCR;
       Ifx_UReg_8Bit reserved_44[12];
       Ifx_STM_TIM0SV TIM0SV;
       Ifx_STM_CAPSV CAPSV;
       Ifx_UReg_8Bit reserved_58[144];
       Ifx_STM_OCS OCS;
       Ifx_STM_KRSTCLR KRSTCLR;
       Ifx_STM_KRST1 KRST1;
       Ifx_STM_KRST0 KRST0;
       Ifx_STM_ACCEN1 ACCEN1;
       Ifx_STM_ACCEN0 ACCEN0;
} Ifx_STM;
# 66 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_reg.h" 2
# 2 ".\\output\\inc/IfxStm_reg.h" 2
# 49 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c" 2
# 1 ".\\output\\inc/IfxScu_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h" 1
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
# 50 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c" 2





# 1 ".\\output\\inc/HtxSmuAliveAlarm.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\inc\\HtxSmuAliveAlarm.h" 1
# 43 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\inc\\HtxSmuAliveAlarm.h"
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
# 44 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\inc\\HtxSmuAliveAlarm.h" 2





# 1 ".\\output\\inc/HtxTestHnd_ErrorCodes.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h" 1
# 51 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h"
# 1 ".\\output\\inc/HtxStpIf.h" 1
# 52 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h" 2
# 151 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h"
typedef uint32 HtxTestHnd_TstRsltType;
# 2 ".\\output\\inc/HtxTestHnd_ErrorCodes.h" 2
# 50 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\inc\\HtxSmuAliveAlarm.h" 2
# 77 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\inc\\HtxSmuAliveAlarm.h"
# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 2089 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 78 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\inc\\HtxSmuAliveAlarm.h" 2
# 123 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\inc\\HtxSmuAliveAlarm.h"
extern HtxTestHnd_TstRsltType HtxSmuAliveAlarm_Test
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
);







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 2101 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 137 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\inc\\HtxSmuAliveAlarm.h" 2
# 2 ".\\output\\inc/HtxSmuAliveAlarm.h" 2
# 56 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c" 2
# 108 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c"
# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 2089 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 109 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c" 2

static Std_ReturnType HtxSmuAliveAlarm_lGetAlmSts(void);

static Std_ReturnType HtxSmuAliveAlarm_lTrigger(void);

static Std_ReturnType HtxSmuAliveAlarm_lIsApplOrSysRst(void);







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 2101 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 123 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c" 2
# 134 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c"
# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 2089 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 135 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c" 2
# 180 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c"
HtxTestHnd_TstRsltType HtxSmuAliveAlarm_Test
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType ReturnValue;
    Std_ReturnType AliveAlmTstSts;
    uint8 SmuSsmReg;

    SmuSsmReg = (uint8)(*(volatile Ifx_SMU_DBG*)0xF0036838u).B.SSM;





    *TstSignature = (uint32)(__crc32bw((unsigned int)((uint32)(((uint16)0x0007))),(unsigned int)((uint32)(TstSeed))));


    *TstSignature = (uint32)(__crc32bw((unsigned int)((uint32)(*TstSignature)),(unsigned int)((uint32)(ParamSetIndex))));



    if(SmuSsmReg == ((uint8)0U))
    {


        if(((*(volatile Ifx_PMS_AG_STDBY1*)0xF024818Cu)).B.SF16 == 0U)
        {
            AliveAlmTstSts = HtxSmuAliveAlarm_lTrigger();

            if(AliveAlmTstSts == 0x00u)
            {
                if(HtxSmuAliveAlarm_lGetAlmSts() == 0x00u)
                {
                    ReturnValue = (0x000701FFU);
                }
                else
                {
                    ReturnValue = (0x00070003U);
                }
            }
            else
            {
                ReturnValue = (0x00070004U);
            }
        }
        else
        {
            ReturnValue = (0x00070005U);
        }
    }
    else
    {

        if((HtxSmuAliveAlarm_lIsApplOrSysRst() == 0x00u) && (SmuSsmReg == ((uint8)1U)))
        {
            ReturnValue = (0x000701FFU);
        }
        else
        {




            ReturnValue = (0x00070006U);
        }
    }

    *TstSignature = (uint32)(__crc32bw((unsigned int)((uint32)(*TstSignature)),(unsigned int)((uint32)(ReturnValue))));

    return ReturnValue;

}
# 292 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c"
static Std_ReturnType HtxSmuAliveAlarm_lIsApplOrSysRst(void)
{




    Ifx_SCU_RSTSTAT ResetStatus;
    uint8 RetVal = 0x01u;


    ResetStatus.U = (*(volatile Ifx_SCU_RSTSTAT*)0xF0036050u).U;

    if((ResetStatus.U & ((uint32)0x0C00FFFFU)) != 0U)
    {
        RetVal = 0x00u;
    }

    return RetVal;

}
# 343 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c"
static Std_ReturnType HtxSmuAliveAlarm_lTrigger(void)
{
    uint32 Timeout;
    uint8 RetVal;


    RetVal = 0x01u;


    (*(volatile Ifx_SMU_CMD*)0xF0036820u).U = (0x7U) | ((uint32)((uint32)0x5U << 4U));

    Timeout = 0U;


    while(((*(volatile Ifx_SMU_STS*)0xF0036824u).B.RES != 0U) && (Timeout < ((uint32)0x000000FFU)))
    {
        Timeout++;
    }

    if(Timeout < ((uint32)0x000000FFU))
    {

        (*(volatile Ifx_SMU_CMD*)0xF0036820u).U = (0x7U) | ((uint32)((uint32)0xAU << 4U));

        Timeout = 0U;


        while(((*(volatile Ifx_SMU_STS*)0xF0036824u).B.RES != 0U) && (Timeout < ((uint32)0x000000FFU)))
        {
            Timeout++;
        }

        if(Timeout < ((uint32)0x000000FFU))
        {
            RetVal = 0x00u;
        }
    }

    return RetVal;
}
# 414 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c"
static Std_ReturnType HtxSmuAliveAlarm_lGetAlmSts(void)
{




    Ifx_PMS_CMD_STDBY PmsStdbyCmdRegVal;
    Std_ReturnType RetVal = 0x01u;


    if(((*(volatile Ifx_PMS_AG_STDBY1*)0xF024818Cu)).B.SF16 == (uint8)1U)
    {

        PmsStdbyCmdRegVal.U = (*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U;
        PmsStdbyCmdRegVal.B.BITPROT = 1U;
        PmsStdbyCmdRegVal.B.ASCE = 1U;


        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U,PmsStdbyCmdRegVal.U);



        Mcal_WriteSafetyEndInitProtReg(&((*(volatile Ifx_PMS_AG_STDBY1*)0xF024818Cu)).U,((uint32)0x00010000U));


        if(((*(volatile Ifx_PMS_AG_STDBY1*)0xF024818Cu)).B.SF16 == (uint8)0U)
        {
            RetVal = 0x00u;
        }
    }

    return RetVal;
}







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 2101 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 455 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c" 2
