# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
# 40 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
# 1 ".\\output\\inc/IfxSrc_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_regdef.h" 2
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
# 41 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c" 2


# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 1
# 42 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
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
# 43 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2


# 1 ".\\output\\inc/Irq_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Irq_Cfg.h" 1
# 2 ".\\output\\inc/Irq_Cfg.h" 2
# 46 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2
# 1 ".\\output\\inc/Mcal_Compiler.h" 1
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
# 2 ".\\output\\inc/Mcal_Compiler.h" 2
# 47 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2
# 218 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
# 1 ".\\output\\inc/Irq_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h" 1
# 65 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Irq_MemMap.h" 2
# 219 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2
# 241 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqCcu6_Init(void);
# 264 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqCan_Init(void);
# 287 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqGpt_Init(void);
# 311 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqGtm_Init(void);
# 334 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqGpsrGroup_Init(void);
# 380 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqSpi_Init(void);
# 426 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqAdc_Init(void);
# 472 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqDma_Init(void);
# 495 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqScu_Init(void);
# 518 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqDmu_Init(void);
# 610 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void Irq_ClearAllInterruptFlags(void);
# 656 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqI2c_Init(void);







# 1 ".\\output\\inc/Irq_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h" 1
# 80 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Irq_MemMap.h" 2
# 665 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2
# 44 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c" 2

# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 46 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c" 2
# 1 ".\\output\\inc/IFX_Os.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\TC38x\\IFX_Os.h" 1
# 40 ".\\output\\inc/..\\..\\Integration\\TC38x\\IFX_Os.h"
# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 41 ".\\output\\inc/..\\..\\Integration\\TC38x\\IFX_Os.h" 2
# 49 ".\\output\\inc/..\\..\\Integration\\TC38x\\IFX_Os.h"
void SuspendAllInterrupts(void);
void ResumeAllInterrupts(void);
# 2 ".\\output\\inc/IFX_Os.h" 2
# 47 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c" 2
# 62 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
# 1 ".\\output\\inc/Irq_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h" 1
# 65 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Irq_MemMap.h" 2
# 63 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c" 2




static void Irq_ClearCcu6IntFlags (void);



static void Irq_ClearGptIntFlags (void);



static void Irq_ClearGtmIntFlags (void);



static void Irq_ClearCanIntFlags (void);



static void Irq_ClearGpsrGroupIntFlags (void);



static void Irq_ClearSpiIntFlags (void);







static void Irq_ClearAdcIntFlags (void);
# 107 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
static void Irq_ClearDmaIntFlags (void);







static void Irq_ClearScuIntFlags(void);



static void Irq_ClearDmuIntFlags (void);
# 135 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
static void Irq_ClearI2cIntFlags (void);
# 144 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
# 1 ".\\output\\inc/Irq_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h" 1
# 80 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Irq_MemMap.h" 2
# 145 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c" 2
# 167 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
# 1 ".\\output\\inc/Irq_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h" 1
# 65 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Irq_MemMap.h" 2
# 168 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c" 2







static void Irq_ClearCcu6IntFlags (void)
{


  ((*(volatile Ifx_SRC_SRCR*)0xF00382C0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00382C4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00382C8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00382CCu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00382D0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00382D4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00382D8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00382DCu)).U = (0x52000000U);

}




static void Irq_ClearGptIntFlags (void)
{



  ((*(volatile Ifx_SRC_SRCR*)0xF00382E0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00382E4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00382E8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00382ECu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00382F0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00382F4u)).U = (0x52000000U);

}



static void Irq_ClearGtmIntFlags (void)
{



  ((*(volatile Ifx_SRC_SRCR*)0xF0038A70u)).U = (0x52000000U);




  ((*(volatile Ifx_SRC_SRCR*)0xF0038A74u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038A78u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038A7Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038A80u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038A84u)).U = (0x52000000U);





  ((*(volatile Ifx_SRC_SRCR*)0xF0038A88u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038A8Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038A90u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038A94u)).U = (0x52000000U);
# 269 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  ((*(volatile Ifx_SRC_SRCR*)0xF0038AA0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038AA4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038AA8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038AACu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038AB0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038AB4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038AB8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038ABCu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038AC0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038AC4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038AC8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038ACCu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038AD0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038AD4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038AD8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038ADCu)).U = (0x52000000U);
# 302 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B00u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B04u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B08u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B0Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B10u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B14u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B18u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B1Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B20u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B24u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B28u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B2Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B30u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B34u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B38u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B3Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B40u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B44u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B48u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B4Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B50u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B54u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B58u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B5Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B60u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B64u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B68u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038B70u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038B90u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B94u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B98u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038B9Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BA0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BA4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BA8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BACu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038BB0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BB4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BB8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BBCu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BC0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BC4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BC8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BCCu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038BD0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BD4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BD8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BDCu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BE0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BE4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BE8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BECu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038BF0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BF4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BF8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038BFCu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C00u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C04u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C08u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C0Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038C10u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C14u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C18u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C1Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C20u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C24u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C28u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C2Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038C30u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C34u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C38u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C3Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C40u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C44u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C48u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C4Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038C50u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C54u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C58u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C5Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C60u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C64u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C68u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038C6Cu)).U = (0x52000000U);
# 424 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CB0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CB4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CB8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CBCu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CC0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CC4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CC8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CCCu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038CD0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CD4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CD8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CDCu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CE0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CE4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CE8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CECu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038CF0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CF4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CF8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038CFCu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D00u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D04u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D08u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D0Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038D10u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D14u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D18u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D1Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D20u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D24u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D28u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D2Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038D30u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D34u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D38u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D3Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D40u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D44u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D48u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D4Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038D50u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D54u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D58u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D5Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D60u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D64u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D68u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D6Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038D70u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D74u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D78u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D7Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D80u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D84u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D88u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038D8Cu)).U = (0x52000000U);
# 534 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E10u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E14u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E18u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E1Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E20u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E24u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E28u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E2Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038E30u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E34u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E38u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E3Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E40u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E44u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E48u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E4Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038E50u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E54u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E58u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E5Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E60u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E64u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E68u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E6Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038E70u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E74u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E78u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E7Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E80u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E84u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E88u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E8Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038E90u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E94u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E98u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038E9Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038EA0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038EA4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038EA8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038EACu)).U = (0x52000000U);
# 600 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  ((*(volatile Ifx_SRC_SRCR*)0xF0038EF0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038EF4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038EF8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038EFCu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038F00u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F04u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F08u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F0Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038F10u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F14u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F18u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F1Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038F20u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F24u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F28u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F2Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038F30u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F34u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F38u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F3Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038F40u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F44u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F48u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F4Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038F50u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F54u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F58u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F5Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038F60u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F64u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F68u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F6Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038F70u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F74u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F78u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038F7Cu)).U = (0x52000000U);
# 684 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  ((*(volatile Ifx_SRC_SRCR*)0xF0038FD0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038FD4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038FD8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038FDCu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038FE0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038FE4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038FE8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038FECu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038FF0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038FF4u)).U = (0x52000000U);

}




static void Irq_ClearCanIntFlags (void)
{




  ((*(volatile Ifx_SRC_SRCR*)0xF00385B0u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385B4u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385B8u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385BCu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385C0u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385C4u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385C8u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385CCu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385D0u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385D4u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385D8u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385DCu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385E0u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385E4u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385E8u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385ECu)).U = (0x52000000U);







  ((*(volatile Ifx_SRC_SRCR*)0xF00385F0u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385F4u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385F8u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00385FCu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038600u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038604u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038608u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF003860Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038610u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038614u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038618u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF003861Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038620u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038624u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038628u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF003862Cu)).U = (0x52000000U);







  ((*(volatile Ifx_SRC_SRCR*)0xF0038630u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038634u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038638u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF003863Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038640u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038644u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038648u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF003864Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038650u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038654u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038658u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF003865Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038660u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038664u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038668u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF003866Cu)).U = (0x52000000U);



}




static void Irq_ClearGpsrGroupIntFlags (void)
{



  ((*(volatile Ifx_SRC_SRCR*)0xF0038990u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038994u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038998u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003899Cu)).U = (0x52000000U);


  ((*(volatile Ifx_SRC_SRCR*)0xF00389A0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389A4u)).U = (0x52000000U);


  ((*(volatile Ifx_SRC_SRCR*)0xF00389A8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389ACu)).U = (0x52000000U);




  ((*(volatile Ifx_SRC_SRCR*)0xF00389B0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389B4u)).U = (0x52000000U);


  ((*(volatile Ifx_SRC_SRCR*)0xF00389B8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389BCu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389C0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389C4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389C8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389CCu)).U = (0x52000000U);




  ((*(volatile Ifx_SRC_SRCR*)0xF00389D0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389D4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389D8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389DCu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389E0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389E4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389E8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389ECu)).U = (0x52000000U);




  ((*(volatile Ifx_SRC_SRCR*)0xF00389F0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389F4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389F8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00389FCu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038A00u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038A04u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038A08u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038A0Cu)).U = (0x52000000U);
# 1032 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
}




static void Irq_ClearSpiIntFlags (void)
{


  ((*(volatile Ifx_SRC_SRCR*)0xF00380F0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00380F4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00380F8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00380FCu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038100u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038104u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038108u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF003810Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038110u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038114u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038118u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF003811Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038120u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038124u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038128u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF003812Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038130u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038134u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038138u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF003813Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038140u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038144u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038148u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF003814Cu)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038150u)).U = (0x52000000U);
# 1094 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
}
# 1343 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
static void Irq_ClearAdcIntFlags (void)
{


  ((*(volatile Ifx_SRC_SRCR*)0xF0038670u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038674u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038678u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF003867Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038680u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038684u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038688u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF003868Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038690u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038694u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038698u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF003869Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00386A0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00386A4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00386A8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00386ACu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF00386B0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00386B4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00386B8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00386BCu)).U = (0x52000000U);
# 1403 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  ((*(volatile Ifx_SRC_SRCR*)0xF00386F0u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00386F4u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00386F8u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF00386FCu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038700u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038704u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038708u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF003870Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038710u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038714u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038718u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF003871Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038720u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038724u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038728u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF003872Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038750u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038754u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038758u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF003875Cu)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038760u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038764u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038768u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF003876Cu)).U = (0x52000000U);


}
# 1583 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
static void Irq_ClearDmaIntFlags (void)
{



  ((*(volatile Ifx_SRC_SRCR*)0xF0038340u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038344u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038348u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003834Cu)).U = (0x52000000U);




  ((*(volatile Ifx_SRC_SRCR*)0xF0038370u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038374u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038378u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003837Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038380u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038384u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038388u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003838Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038390u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038394u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038398u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003839Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383A0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383A4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383A8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383ACu)).U = (0x52000000U);





  ((*(volatile Ifx_SRC_SRCR*)0xF00383B0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383B4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383B8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383BCu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383C0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383C4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383C8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383CCu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383D0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383D4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383D8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383DCu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383E0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383E4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383E8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383ECu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383F0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383F4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383F8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00383FCu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038400u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038404u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038408u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003840Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038410u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038414u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038418u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003841Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038420u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038424u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038428u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003842Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038430u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038434u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038438u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003843Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038440u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038444u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038448u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003844Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038450u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038454u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038458u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003845Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038460u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038464u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038468u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003846Cu)).U = (0x52000000U);




  ((*(volatile Ifx_SRC_SRCR*)0xF0038470u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038474u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038478u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003847Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038480u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038484u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038488u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003848Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038490u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038494u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038498u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003849Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384A0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384A4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384A8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384ACu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384B0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384B4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384B8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384BCu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384C0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384C4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384C8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384CCu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384D0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384D4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384D8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384DCu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384E0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384E4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384E8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384ECu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384F0u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384F4u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384F8u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF00384FCu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038500u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038504u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038508u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003850Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038510u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038514u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038518u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003851Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038520u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038524u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038528u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003852Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038530u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038534u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038538u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003853Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038540u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038544u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038548u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003854Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038550u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038554u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038558u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003855Cu)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038560u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038564u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF0038568u)).U = (0x52000000U);

  ((*(volatile Ifx_SRC_SRCR*)0xF003856Cu)).U = (0x52000000U);


}
# 1905 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
static void Irq_ClearScuIntFlags (void)
{


  ((*(volatile Ifx_SRC_SRCR*)0xF0038880u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038884u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038888u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF003888Cu)).U = (0x52000000U);
}




static void Irq_ClearDmuIntFlags (void)
{


  (*(volatile Ifx_SRC_SRCR*)0xF0038860u).U = (0x52000000U);



  (*(volatile Ifx_SRC_SRCR*)0xF0038864u).U = (0x52000000U);

}
# 1993 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
static void Irq_ClearI2cIntFlags (void) {

  ((*(volatile Ifx_SRC_SRCR*)0xF0038220u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038224u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038228u)).U = (0x52000000U);



  ((*(volatile Ifx_SRC_SRCR*)0xF0038230u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038234u)).U = (0x52000000U);
  ((*(volatile Ifx_SRC_SRCR*)0xF0038238u)).U = (0x52000000U);

}
# 2032 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
void IrqCcu6_Init(void)
{


  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382C0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382C0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382C4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382C4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382C8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382C8u)).U)) = (((uint32)((0x0000)) | (uint32) 0xff));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382CCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382CCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382D0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382D0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382D4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382D4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382D8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382D8u)).U)) = (((uint32)((0x1800)) | (uint32) 0xfe));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382DCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382DCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;


}
# 2079 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
void IrqGpt_Init(void)
{



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382E0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382E0u)).U)) = (((uint32) ((0x0000)) | (uint32) 0x0 ));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382E4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382E4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382E8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382E8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382ECu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382ECu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382F0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382F0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00382F4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00382F4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;


}
# 2126 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
void IrqGtm_Init(void)
{

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A70u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A70u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                          ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A74u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A74u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A78u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A78u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A7Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A7Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A80u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A80u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                          ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A84u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A84u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                          ;





  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A88u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A88u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A8Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A8Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A90u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A90u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A94u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A94u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
# 2187 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AA0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AA0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AA4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AA4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AA8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AA8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AACu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AACu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AB0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AB0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AB4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AB4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AB8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AB8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038ABCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038ABCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AC0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AC0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AC4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AC4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AC8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AC8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038ACCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038ACCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AD0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AD0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AD4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AD4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038AD8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038AD8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038ADCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038ADCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
# 2246 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B00u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B00u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B04u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B04u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B08u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B08u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B0Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B0Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B10u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B10u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B14u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B14u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B18u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B18u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B1Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B1Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B20u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B20u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B24u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B24u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B28u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B28u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B2Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B2Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B30u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B30u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B34u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B34u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B38u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B38u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B3Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B3Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B40u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B40u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B44u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B44u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B48u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B48u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B4Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B4Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B50u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B50u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B54u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B54u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B58u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B58u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B5Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B5Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B60u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B60u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B64u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B64u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B68u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B68u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B70u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B70u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B90u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B90u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B94u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B94u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B98u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B98u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038B9Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038B9Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BA0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BA0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BA4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BA4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BA8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BA8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BACu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BACu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;




  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BB0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BB0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BB4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BB4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BB8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BB8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BBCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BBCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BC0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BC0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BC4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BC4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BC8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BC8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BCCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BCCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BD0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BD0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BD4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BD4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BD8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BD8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BDCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BDCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BE0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BE0u)).U)) = (((uint32)((0x2000)) | (uint32) 0xf8));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BE4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BE4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BE8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BE8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BECu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BECu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BF0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BF0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BF4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BF4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BF8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BF8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038BFCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038BFCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C00u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C00u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C04u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C04u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C08u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C08u)).U)) = (((uint32)((0x2000)) | (uint32) 0xf9));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C0Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C0Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C10u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C10u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C14u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C14u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C18u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C18u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C1Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C1Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C20u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C20u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C24u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C24u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C28u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C28u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C2Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C2Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C30u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C30u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C34u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C34u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C38u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C38u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C3Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C3Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C40u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C40u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C44u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C44u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C48u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C48u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C4Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C4Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C50u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C50u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C54u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C54u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C58u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C58u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C5Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C5Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C60u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C60u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C64u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C64u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C68u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C68u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038C6Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038C6Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
# 2463 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CB0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CB0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CB4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CB4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CB8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CB8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CBCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CBCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CC0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CC0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CC4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CC4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CC8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CC8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CCCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CCCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CD0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CD0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CD4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CD4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CD8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CD8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CDCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CDCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CE0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CE0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CE4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CE4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CE8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CE8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CECu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CECu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CF0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CF0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CF4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CF4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CF8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CF8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038CFCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038CFCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D00u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D00u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D04u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D04u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D08u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D08u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D0Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D0Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D10u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D10u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D14u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D14u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D18u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D18u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D1Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D1Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D20u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D20u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D24u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D24u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D28u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D28u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D2Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D2Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D30u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D30u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D34u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D34u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D38u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D38u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D3Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D3Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D40u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D40u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D44u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D44u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D48u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D48u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D4Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D4Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D50u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D50u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D54u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D54u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D58u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D58u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D5Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D5Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D60u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D60u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D64u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D64u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D68u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D68u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D6Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D6Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D70u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D70u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D74u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D74u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D78u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D78u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D7Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D7Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D80u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D80u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D84u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D84u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D88u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D88u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038D8Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038D8Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
# 2657 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E10u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E10u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E14u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E14u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E18u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E18u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E1Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E1Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E20u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E20u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E24u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E24u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E28u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E28u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E2Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E2Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E30u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E30u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E34u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E34u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E38u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E38u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E3Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E3Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E40u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E40u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E44u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E44u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E48u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E48u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E4Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E4Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;





  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E50u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E50u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E54u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E54u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E58u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E58u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E5Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E5Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E60u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E60u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E64u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E64u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E68u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E68u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E6Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E6Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E70u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E70u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E74u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E74u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E78u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E78u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E7Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E7Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E80u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E80u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E84u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E84u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E88u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E88u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E8Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E8Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E90u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E90u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E94u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E94u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E98u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E98u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038E9Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038E9Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038EA0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038EA0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038EA4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038EA4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038EA8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038EA8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038EACu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038EACu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                    ;
# 2775 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038EF0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038EF0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038EF4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038EF4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038EF8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038EF8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038EFCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038EFCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F00u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F00u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F04u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F04u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F08u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F08u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F0Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F0Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F10u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F10u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F14u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F14u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F18u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F18u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F1Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F1Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F20u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F20u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F24u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F24u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F28u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F28u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F2Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F2Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F30u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F30u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F34u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F34u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F38u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F38u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F3Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F3Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F40u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F40u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F44u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F44u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F48u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F48u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F4Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F4Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F50u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F50u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F54u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F54u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F58u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F58u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F5Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F5Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F60u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F60u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F64u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F64u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F68u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F68u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F6Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F6Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F70u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F70u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F74u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F74u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F78u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F78u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038F7Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038F7Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                      ;
# 2911 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038FD0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038FD0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038FD4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038FD4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038FD8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038FD8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038FDCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038FDCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038FE0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038FE0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038FE4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038FE4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038FE8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038FE8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038FECu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038FECu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038FF0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038FF0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038FF4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038FF4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;


}
# 2955 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
void IrqCan_Init(void)
{





  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385B0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385B0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385B4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385B4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385B8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385B8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385BCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385BCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385C0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385C0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385C4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385C4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385C8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385C8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385CCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385CCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385D0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385D0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385D4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385D4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385D8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385D8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385DCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385DCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385E0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385E0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385E4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385E4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385E8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385E8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385ECu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385ECu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;






  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385F0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385F0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385F4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385F4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385F8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385F8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00385FCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00385FCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038600u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038600u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038604u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038604u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038608u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038608u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF003860Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003860Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038610u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038610u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038614u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038614u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038618u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038618u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF003861Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003861Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038620u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038620u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038624u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038624u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038628u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038628u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF003862Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003862Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;






  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038630u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038630u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038634u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038634u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038638u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038638u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF003863Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003863Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038640u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038640u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038644u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038644u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038648u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038648u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF003864Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003864Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038650u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038650u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038654u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038654u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038658u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038658u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF003865Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003865Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038660u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038660u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038664u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038664u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038668u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038668u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF003866Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003866Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



}
# 3232 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
void IrqGpsrGroup_Init(void)
{




  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038990u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038990u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038994u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038994u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038998u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038998u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003899Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003899Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389A0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389A0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389A4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389A4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389A8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389A8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389ACu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389ACu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;




  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389B0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389B0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389B4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389B4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389B8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389B8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389BCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389BCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389C0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389C0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389C4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389C4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389C8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389C8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389CCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389CCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;




  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389D0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389D0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389D4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389D4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389D8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389D8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389DCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389DCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389E0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389E0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389E4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389E4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389E8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389E8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389ECu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389ECu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;




  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389F0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389F0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389F4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389F4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389F8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389F8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00389FCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00389FCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A00u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A00u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A04u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A04u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A08u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A08u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038A0Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038A0Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                        ;
# 3399 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
}
# 3422 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
void IrqSpi_Init(void)
{



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00380F0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00380F0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00380F4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00380F4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00380F8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00380F8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00380FCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00380FCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038100u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038100u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038104u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038104u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038108u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038108u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF003810Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003810Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038110u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038110u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038114u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038114u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038118u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038118u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF003811Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003811Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038120u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038120u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038124u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038124u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;




  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038128u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038128u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF003812Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003812Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038130u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038130u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038134u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038134u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038138u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038138u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;




  { ((((*(volatile Ifx_SRC_SRCR*)0xF003813Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003813Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038140u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038140u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038144u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038144u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038148u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038148u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF003814Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003814Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038150u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038150u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
# 3512 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
}
# 3890 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
void IrqAdc_Init(void)
{



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038670u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038670u)).U)) = (((uint32)((0x1000)) | (uint32) 0xfa));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038674u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038674u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038678u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038678u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF003867Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003867Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038680u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038680u)).U)) = (((uint32)((0x0000)) | (uint32) 0xfd));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038684u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038684u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038688u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038688u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF003868Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003868Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038690u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038690u)).U)) = (((uint32)((0x1000)) | (uint32) 0xfb));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038694u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038694u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038698u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038698u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF003869Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003869Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00386A0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00386A0u)).U)) = (((uint32)((0x1800)) | (uint32) 0xfc));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00386A4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00386A4u)).U)) = (((uint32)((0x1800)) | (uint32) 0xea));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00386A8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00386A8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00386ACu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00386ACu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF00386B0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00386B0u)).U)) = (((uint32)((0x2000)) | (uint32) 0xe5));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00386B4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00386B4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00386B8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00386B8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00386BCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00386BCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
# 3983 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00386F0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00386F0u)).U)) = (((uint32)((0x2000)) | (uint32) 0xf7));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00386F4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00386F4u)).U)) = (((uint32)((0x0000)) | (uint32) 0xe9));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00386F8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00386F8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF00386FCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00386FCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038700u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038700u)).U)) = (((uint32)((0x0000)) | (uint32) 0xe8));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038704u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038704u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038708u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038708u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF003870Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003870Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038710u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038710u)).U)) = (((uint32)((0x0000)) | (uint32) 0xe7));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038714u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038714u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038718u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038718u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF003871Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003871Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038720u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038720u)).U)) = (((uint32)((0x0000)) | (uint32) 0xe6));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038724u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038724u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038728u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038728u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF003872Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003872Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;




  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038750u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038750u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038754u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038754u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038758u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038758u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF003875Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003875Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                ;



  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038760u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038760u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038764u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038764u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038768u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038768u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF003876Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003876Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                ;



}
# 4449 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
void IrqDma_Init(void)
{


  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038340u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038340u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038344u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038344u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038348u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038348u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003834Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003834Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;




  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038370u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038370u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                          ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038374u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038374u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                          ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038378u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038378u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                          ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003837Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003837Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                          ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038380u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038380u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                          ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038384u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038384u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                          ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038388u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038388u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                          ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003838Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003838Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                          ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038390u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038390u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                          ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038394u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038394u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                          ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038398u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038398u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003839Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003839Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383A0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383A0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383A4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383A4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383A8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383A8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383ACu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383ACu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;




  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383B0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383B0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383B4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383B4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383B8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383B8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383BCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383BCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383C0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383C0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383C4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383C4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383C8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383C8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383CCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383CCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383D0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383D0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383D4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383D4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383D8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383D8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383DCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383DCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383E0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383E0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383E4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383E4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383E8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383E8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383ECu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383ECu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383F0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383F0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383F4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383F4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383F8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383F8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00383FCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00383FCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038400u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038400u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038404u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038404u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038408u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038408u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003840Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003840Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038410u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038410u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038414u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038414u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038418u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038418u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003841Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003841Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038420u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038420u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038424u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038424u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038428u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038428u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003842Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003842Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038430u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038430u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038434u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038434u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038438u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038438u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003843Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003843Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038440u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038440u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038444u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038444u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038448u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038448u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003844Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003844Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038450u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038450u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038454u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038454u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038458u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038458u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003845Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003845Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038460u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038460u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038464u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038464u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038468u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038468u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003846Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003846Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;




  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038470u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038470u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038474u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038474u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038478u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038478u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003847Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003847Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038480u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038480u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038484u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038484u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038488u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038488u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003848Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003848Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038490u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038490u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038494u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038494u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038498u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038498u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003849Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003849Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384A0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384A0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384A4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384A4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384A8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384A8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384ACu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384ACu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384B0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384B0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384B4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384B4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384B8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384B8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384BCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384BCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384C0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384C0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384C4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384C4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384C8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384C8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384CCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384CCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384D0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384D0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384D4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384D4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384D8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384D8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384DCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384DCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384E0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384E0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384E4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384E4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384E8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384E8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384ECu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384ECu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384F0u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384F0u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384F4u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384F4u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384F8u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384F8u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF00384FCu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF00384FCu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                            ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038500u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038500u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038504u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038504u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038508u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038508u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003850Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003850Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038510u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038510u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038514u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038514u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038518u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038518u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003851Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003851Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038520u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038520u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038524u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038524u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038528u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038528u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003852Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003852Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038530u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038530u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038534u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038534u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038538u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038538u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003853Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003853Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038540u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038540u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038544u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038544u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038548u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038548u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003854Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003854Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038550u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038550u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038554u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038554u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038558u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038558u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003855Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003855Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038560u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038560u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038564u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038564u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038568u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038568u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;

  { ((((*(volatile Ifx_SRC_SRCR*)0xF003856Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003856Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                              ;


}
# 4949 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
void IrqScu_Init(void)
{

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038880u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038880u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038884u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038884u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038888u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038888u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF003888Cu)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF003888Cu)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;
}
# 4983 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
void IrqDmu_Init(void)
{

  { (((*(volatile Ifx_SRC_SRCR*)0xF0038860u).U)) &= 0xFFFFFFFFU; (((*(volatile Ifx_SRC_SRCR*)0xF0038860u).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                            ;



  { (((*(volatile Ifx_SRC_SRCR*)0xF0038864u).U)) &= 0xFFFFFFFFU; (((*(volatile Ifx_SRC_SRCR*)0xF0038864u).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                          ;

}
# 5018 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
extern void IrqI2c_Init(void) {

  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038220u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038220u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038224u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038224u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038228u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038228u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;





  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038230u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038230u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038234u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038234u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                                  ;
  { ((((*(volatile Ifx_SRC_SRCR*)0xF0038238u)).U)) &= 0xFFFFFFFFU; ((((*(volatile Ifx_SRC_SRCR*)0xF0038238u)).U)) = (((uint32)((0x0000)) | (uint32) 0x0));}
                                                                              ;

}
# 5059 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
void Irq_ClearAllInterruptFlags(void)
{
  _disable();




  Irq_ClearCcu6IntFlags();



  Irq_ClearGptIntFlags();



  Irq_ClearGtmIntFlags();



  Irq_ClearCanIntFlags();




  Irq_ClearGpsrGroupIntFlags();



  Irq_ClearSpiIntFlags();







  Irq_ClearAdcIntFlags();
# 5108 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  Irq_ClearDmaIntFlags();







  Irq_ClearScuIntFlags();



  Irq_ClearDmuIntFlags();
# 5137 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c"
  Irq_ClearI2cIntFlags ();


}






# 1 ".\\output\\inc/Irq_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h" 1
# 80 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Irq_MemMap.h" 2
# 5148 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.c" 2
