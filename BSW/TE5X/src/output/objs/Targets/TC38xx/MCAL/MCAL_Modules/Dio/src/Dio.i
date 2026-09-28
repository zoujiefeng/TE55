# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
# 43 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
# 1 ".\\output\\inc/IfxPort_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_reg.h" 1
# 122 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h" 2
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h"
typedef struct _Ifx_P_ACCEN0_Bits
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
} Ifx_P_ACCEN0_Bits;


typedef struct _Ifx_P_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_P_ACCEN1_Bits;


typedef struct _Ifx_P_ESR_Bits
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
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_ESR_Bits;


typedef struct _Ifx_P_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUMBER:16;
} Ifx_P_ID_Bits;


typedef struct _Ifx_P_IN_Bits
{
    Ifx_UReg_32Bit P0:1;
    Ifx_UReg_32Bit P1:1;
    Ifx_UReg_32Bit P2:1;
    Ifx_UReg_32Bit P3:1;
    Ifx_UReg_32Bit P4:1;
    Ifx_UReg_32Bit P5:1;
    Ifx_UReg_32Bit P6:1;
    Ifx_UReg_32Bit P7:1;
    Ifx_UReg_32Bit P8:1;
    Ifx_UReg_32Bit P9:1;
    Ifx_UReg_32Bit P10:1;
    Ifx_UReg_32Bit P11:1;
    Ifx_UReg_32Bit P12:1;
    Ifx_UReg_32Bit P13:1;
    Ifx_UReg_32Bit P14:1;
    Ifx_UReg_32Bit P15:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_IN_Bits;


typedef struct _Ifx_P_IOCR0_Bits
{
    Ifx_UReg_32Bit reserved_0:3;
    Ifx_UReg_32Bit PC0:5;
    Ifx_UReg_32Bit reserved_8:3;
    Ifx_UReg_32Bit PC1:5;
    Ifx_UReg_32Bit reserved_16:3;
    Ifx_UReg_32Bit PC2:5;
    Ifx_UReg_32Bit reserved_24:3;
    Ifx_UReg_32Bit PC3:5;
} Ifx_P_IOCR0_Bits;


typedef struct _Ifx_P_IOCR12_Bits
{
    Ifx_UReg_32Bit reserved_0:3;
    Ifx_UReg_32Bit PC12:5;
    Ifx_UReg_32Bit reserved_8:3;
    Ifx_UReg_32Bit PC13:5;
    Ifx_UReg_32Bit reserved_16:3;
    Ifx_UReg_32Bit PC14:5;
    Ifx_UReg_32Bit reserved_24:3;
    Ifx_UReg_32Bit PC15:5;
} Ifx_P_IOCR12_Bits;


typedef struct _Ifx_P_IOCR4_Bits
{
    Ifx_UReg_32Bit reserved_0:3;
    Ifx_UReg_32Bit PC4:5;
    Ifx_UReg_32Bit reserved_8:3;
    Ifx_UReg_32Bit PC5:5;
    Ifx_UReg_32Bit reserved_16:3;
    Ifx_UReg_32Bit PC6:5;
    Ifx_UReg_32Bit reserved_24:3;
    Ifx_UReg_32Bit PC7:5;
} Ifx_P_IOCR4_Bits;


typedef struct _Ifx_P_IOCR8_Bits
{
    Ifx_UReg_32Bit reserved_0:3;
    Ifx_UReg_32Bit PC8:5;
    Ifx_UReg_32Bit reserved_8:3;
    Ifx_UReg_32Bit PC9:5;
    Ifx_UReg_32Bit reserved_16:3;
    Ifx_UReg_32Bit PC10:5;
    Ifx_UReg_32Bit reserved_24:3;
    Ifx_UReg_32Bit PC11:5;
} Ifx_P_IOCR8_Bits;


typedef struct _Ifx_P_LPCR_Bits
{
    Ifx_UReg_32Bit REN_CTRL:1;
    Ifx_UReg_32Bit RX_EN:1;
    Ifx_UReg_32Bit TERM:1;
    Ifx_UReg_32Bit LRXTERM:3;
    Ifx_UReg_32Bit LVDSM:1;
    Ifx_UReg_32Bit PS:1;
    Ifx_UReg_32Bit TEN_CTRL:1;
    Ifx_UReg_32Bit TX_EN:1;
    Ifx_UReg_32Bit VDIFFADJ:2;
    Ifx_UReg_32Bit VOSDYN:1;
    Ifx_UReg_32Bit VOSEXT:1;
    Ifx_UReg_32Bit TX_PD:1;
    Ifx_UReg_32Bit TX_PWDPD:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_LPCR_Bits;


typedef struct _Ifx_P_OMCR_Bits
{
    Ifx_UReg_32Bit reserved_0:16;
    Ifx_UReg_32Bit PCL0:1;
    Ifx_UReg_32Bit PCL1:1;
    Ifx_UReg_32Bit PCL2:1;
    Ifx_UReg_32Bit PCL3:1;
    Ifx_UReg_32Bit PCL4:1;
    Ifx_UReg_32Bit PCL5:1;
    Ifx_UReg_32Bit PCL6:1;
    Ifx_UReg_32Bit PCL7:1;
    Ifx_UReg_32Bit PCL8:1;
    Ifx_UReg_32Bit PCL9:1;
    Ifx_UReg_32Bit PCL10:1;
    Ifx_UReg_32Bit PCL11:1;
    Ifx_UReg_32Bit PCL12:1;
    Ifx_UReg_32Bit PCL13:1;
    Ifx_UReg_32Bit PCL14:1;
    Ifx_UReg_32Bit PCL15:1;
} Ifx_P_OMCR_Bits;


typedef struct _Ifx_P_OMCR0_Bits
{
    Ifx_UReg_32Bit reserved_0:16;
    Ifx_UReg_32Bit PCL0:1;
    Ifx_UReg_32Bit PCL1:1;
    Ifx_UReg_32Bit PCL2:1;
    Ifx_UReg_32Bit PCL3:1;
    Ifx_UReg_32Bit reserved_20:12;
} Ifx_P_OMCR0_Bits;


typedef struct _Ifx_P_OMCR12_Bits
{
    Ifx_UReg_32Bit reserved_0:28;
    Ifx_UReg_32Bit PCL12:1;
    Ifx_UReg_32Bit PCL13:1;
    Ifx_UReg_32Bit PCL14:1;
    Ifx_UReg_32Bit PCL15:1;
} Ifx_P_OMCR12_Bits;


typedef struct _Ifx_P_OMCR4_Bits
{
    Ifx_UReg_32Bit reserved_0:20;
    Ifx_UReg_32Bit PCL4:1;
    Ifx_UReg_32Bit PCL5:1;
    Ifx_UReg_32Bit PCL6:1;
    Ifx_UReg_32Bit PCL7:1;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_P_OMCR4_Bits;


typedef struct _Ifx_P_OMCR8_Bits
{
    Ifx_UReg_32Bit reserved_0:24;
    Ifx_UReg_32Bit PCL8:1;
    Ifx_UReg_32Bit PCL9:1;
    Ifx_UReg_32Bit PCL10:1;
    Ifx_UReg_32Bit PCL11:1;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_P_OMCR8_Bits;


typedef struct _Ifx_P_OMR_Bits
{
    Ifx_UReg_32Bit PS0:1;
    Ifx_UReg_32Bit PS1:1;
    Ifx_UReg_32Bit PS2:1;
    Ifx_UReg_32Bit PS3:1;
    Ifx_UReg_32Bit PS4:1;
    Ifx_UReg_32Bit PS5:1;
    Ifx_UReg_32Bit PS6:1;
    Ifx_UReg_32Bit PS7:1;
    Ifx_UReg_32Bit PS8:1;
    Ifx_UReg_32Bit PS9:1;
    Ifx_UReg_32Bit PS10:1;
    Ifx_UReg_32Bit PS11:1;
    Ifx_UReg_32Bit PS12:1;
    Ifx_UReg_32Bit PS13:1;
    Ifx_UReg_32Bit PS14:1;
    Ifx_UReg_32Bit PS15:1;
    Ifx_UReg_32Bit PCL0:1;
    Ifx_UReg_32Bit PCL1:1;
    Ifx_UReg_32Bit PCL2:1;
    Ifx_UReg_32Bit PCL3:1;
    Ifx_UReg_32Bit PCL4:1;
    Ifx_UReg_32Bit PCL5:1;
    Ifx_UReg_32Bit PCL6:1;
    Ifx_UReg_32Bit PCL7:1;
    Ifx_UReg_32Bit PCL8:1;
    Ifx_UReg_32Bit PCL9:1;
    Ifx_UReg_32Bit PCL10:1;
    Ifx_UReg_32Bit PCL11:1;
    Ifx_UReg_32Bit PCL12:1;
    Ifx_UReg_32Bit PCL13:1;
    Ifx_UReg_32Bit PCL14:1;
    Ifx_UReg_32Bit PCL15:1;
} Ifx_P_OMR_Bits;


typedef struct _Ifx_P_OMSR_Bits
{
    Ifx_UReg_32Bit PS0:1;
    Ifx_UReg_32Bit PS1:1;
    Ifx_UReg_32Bit PS2:1;
    Ifx_UReg_32Bit PS3:1;
    Ifx_UReg_32Bit PS4:1;
    Ifx_UReg_32Bit PS5:1;
    Ifx_UReg_32Bit PS6:1;
    Ifx_UReg_32Bit PS7:1;
    Ifx_UReg_32Bit PS8:1;
    Ifx_UReg_32Bit PS9:1;
    Ifx_UReg_32Bit PS10:1;
    Ifx_UReg_32Bit PS11:1;
    Ifx_UReg_32Bit PS12:1;
    Ifx_UReg_32Bit PS13:1;
    Ifx_UReg_32Bit PS14:1;
    Ifx_UReg_32Bit PS15:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_OMSR_Bits;


typedef struct _Ifx_P_OMSR0_Bits
{
    Ifx_UReg_32Bit PS0:1;
    Ifx_UReg_32Bit PS1:1;
    Ifx_UReg_32Bit PS2:1;
    Ifx_UReg_32Bit PS3:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_P_OMSR0_Bits;


typedef struct _Ifx_P_OMSR12_Bits
{
    Ifx_UReg_32Bit reserved_0:12;
    Ifx_UReg_32Bit PS12:1;
    Ifx_UReg_32Bit PS13:1;
    Ifx_UReg_32Bit PS14:1;
    Ifx_UReg_32Bit PS15:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_OMSR12_Bits;


typedef struct _Ifx_P_OMSR4_Bits
{
    Ifx_UReg_32Bit reserved_0:4;
    Ifx_UReg_32Bit PS4:1;
    Ifx_UReg_32Bit PS5:1;
    Ifx_UReg_32Bit PS6:1;
    Ifx_UReg_32Bit PS7:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_P_OMSR4_Bits;


typedef struct _Ifx_P_OMSR8_Bits
{
    Ifx_UReg_32Bit reserved_0:8;
    Ifx_UReg_32Bit PS8:1;
    Ifx_UReg_32Bit PS9:1;
    Ifx_UReg_32Bit PS10:1;
    Ifx_UReg_32Bit PS11:1;
    Ifx_UReg_32Bit reserved_12:20;
} Ifx_P_OMSR8_Bits;


typedef struct _Ifx_P_OUT_Bits
{
    Ifx_UReg_32Bit P0:1;
    Ifx_UReg_32Bit P1:1;
    Ifx_UReg_32Bit P2:1;
    Ifx_UReg_32Bit P3:1;
    Ifx_UReg_32Bit P4:1;
    Ifx_UReg_32Bit P5:1;
    Ifx_UReg_32Bit P6:1;
    Ifx_UReg_32Bit P7:1;
    Ifx_UReg_32Bit P8:1;
    Ifx_UReg_32Bit P9:1;
    Ifx_UReg_32Bit P10:1;
    Ifx_UReg_32Bit P11:1;
    Ifx_UReg_32Bit P12:1;
    Ifx_UReg_32Bit P13:1;
    Ifx_UReg_32Bit P14:1;
    Ifx_UReg_32Bit P15:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_OUT_Bits;


typedef struct _Ifx_P_PCSR_Bits
{
    Ifx_UReg_32Bit SEL0:1;
    Ifx_UReg_32Bit SEL1:1;
    Ifx_UReg_32Bit SEL2:1;
    Ifx_UReg_32Bit SEL3:1;
    Ifx_UReg_32Bit SEL4:1;
    Ifx_UReg_32Bit SEL5:1;
    Ifx_UReg_32Bit SEL6:1;
    Ifx_UReg_32Bit SEL7:1;
    Ifx_UReg_32Bit SEL8:1;
    Ifx_UReg_32Bit SEL9:1;
    Ifx_UReg_32Bit SEL10:1;
    Ifx_UReg_32Bit SEL11:1;
    Ifx_UReg_32Bit SEL12:1;
    Ifx_UReg_32Bit SEL13:1;
    Ifx_UReg_32Bit SEL14:1;
    Ifx_UReg_32Bit SEL15:1;
    Ifx_UReg_32Bit reserved_16:15;
    Ifx_UReg_32Bit LCK:1;
} Ifx_P_PCSR_Bits;


typedef struct _Ifx_P_PDISC_Bits
{
    Ifx_UReg_32Bit PDIS0:1;
    Ifx_UReg_32Bit PDIS1:1;
    Ifx_UReg_32Bit PDIS2:1;
    Ifx_UReg_32Bit PDIS3:1;
    Ifx_UReg_32Bit PDIS4:1;
    Ifx_UReg_32Bit PDIS5:1;
    Ifx_UReg_32Bit PDIS6:1;
    Ifx_UReg_32Bit PDIS7:1;
    Ifx_UReg_32Bit PDIS8:1;
    Ifx_UReg_32Bit PDIS9:1;
    Ifx_UReg_32Bit PDIS10:1;
    Ifx_UReg_32Bit PDIS11:1;
    Ifx_UReg_32Bit PDIS12:1;
    Ifx_UReg_32Bit PDIS13:1;
    Ifx_UReg_32Bit PDIS14:1;
    Ifx_UReg_32Bit PDIS15:1;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_P_PDISC_Bits;


typedef struct _Ifx_P_PDR0_Bits
{
    Ifx_UReg_32Bit PD0:2;
    Ifx_UReg_32Bit PL0:2;
    Ifx_UReg_32Bit PD1:2;
    Ifx_UReg_32Bit PL1:2;
    Ifx_UReg_32Bit PD2:2;
    Ifx_UReg_32Bit PL2:2;
    Ifx_UReg_32Bit PD3:2;
    Ifx_UReg_32Bit PL3:2;
    Ifx_UReg_32Bit PD4:2;
    Ifx_UReg_32Bit PL4:2;
    Ifx_UReg_32Bit PD5:2;
    Ifx_UReg_32Bit PL5:2;
    Ifx_UReg_32Bit PD6:2;
    Ifx_UReg_32Bit PL6:2;
    Ifx_UReg_32Bit PD7:2;
    Ifx_UReg_32Bit PL7:2;
} Ifx_P_PDR0_Bits;


typedef struct _Ifx_P_PDR1_Bits
{
    Ifx_UReg_32Bit PD8:2;
    Ifx_UReg_32Bit PL8:2;
    Ifx_UReg_32Bit PD9:2;
    Ifx_UReg_32Bit PL9:2;
    Ifx_UReg_32Bit PD10:2;
    Ifx_UReg_32Bit PL10:2;
    Ifx_UReg_32Bit PD11:2;
    Ifx_UReg_32Bit PL11:2;
    Ifx_UReg_32Bit PD12:2;
    Ifx_UReg_32Bit PL12:2;
    Ifx_UReg_32Bit PD13:2;
    Ifx_UReg_32Bit PL13:2;
    Ifx_UReg_32Bit PD14:2;
    Ifx_UReg_32Bit PL14:2;
    Ifx_UReg_32Bit PD15:2;
    Ifx_UReg_32Bit PL15:2;
} Ifx_P_PDR1_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_ACCEN0_Bits B;
} Ifx_P_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_ACCEN1_Bits B;
} Ifx_P_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_ESR_Bits B;
} Ifx_P_ESR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_ID_Bits B;
} Ifx_P_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_IN_Bits B;
} Ifx_P_IN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_IOCR0_Bits B;
} Ifx_P_IOCR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_IOCR12_Bits B;
} Ifx_P_IOCR12;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_IOCR4_Bits B;
} Ifx_P_IOCR4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_IOCR8_Bits B;
} Ifx_P_IOCR8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_LPCR_Bits B;
} Ifx_P_LPCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMCR_Bits B;
} Ifx_P_OMCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMCR0_Bits B;
} Ifx_P_OMCR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMCR12_Bits B;
} Ifx_P_OMCR12;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMCR4_Bits B;
} Ifx_P_OMCR4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMCR8_Bits B;
} Ifx_P_OMCR8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMR_Bits B;
} Ifx_P_OMR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMSR_Bits B;
} Ifx_P_OMSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMSR0_Bits B;
} Ifx_P_OMSR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMSR12_Bits B;
} Ifx_P_OMSR12;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMSR4_Bits B;
} Ifx_P_OMSR4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OMSR8_Bits B;
} Ifx_P_OMSR8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_OUT_Bits B;
} Ifx_P_OUT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_PCSR_Bits B;
} Ifx_P_PCSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_PDISC_Bits B;
} Ifx_P_PDISC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_PDR0_Bits B;
} Ifx_P_PDR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_P_PDR1_Bits B;
} Ifx_P_PDR1;
# 732 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h"
typedef volatile struct _Ifx_P
{
       Ifx_P_OUT OUT;
       Ifx_P_OMR OMR;
       Ifx_P_ID ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_P_IOCR0 IOCR0;
       Ifx_P_IOCR4 IOCR4;
       Ifx_P_IOCR8 IOCR8;
       Ifx_P_IOCR12 IOCR12;
       Ifx_UReg_8Bit reserved_20[4];
       Ifx_P_IN IN;
       Ifx_UReg_8Bit reserved_28[24];
       Ifx_P_PDR0 PDR0;
       Ifx_P_PDR1 PDR1;
       Ifx_UReg_8Bit reserved_48[8];
       Ifx_P_ESR ESR;
       Ifx_UReg_8Bit reserved_54[12];
       Ifx_P_PDISC PDISC;
       Ifx_P_PCSR PCSR;
       Ifx_UReg_8Bit reserved_68[8];
       Ifx_P_OMSR0 OMSR0;
       Ifx_P_OMSR4 OMSR4;
       Ifx_P_OMSR8 OMSR8;
       Ifx_P_OMSR12 OMSR12;
       Ifx_P_OMCR0 OMCR0;
       Ifx_P_OMCR4 OMCR4;
       Ifx_P_OMCR8 OMCR8;
       Ifx_P_OMCR12 OMCR12;
       Ifx_P_OMSR OMSR;
       Ifx_P_OMCR OMCR;
       Ifx_UReg_8Bit reserved_98[8];
       Ifx_P_LPCR LPCR[8];
       Ifx_UReg_8Bit reserved_C0[56];
       Ifx_P_ACCEN1 ACCEN1;
       Ifx_P_ACCEN0 ACCEN0;
} Ifx_P;
# 123 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_reg.h" 2
# 2 ".\\output\\inc/IfxPort_reg.h" 2
# 44 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c" 2


# 1 ".\\output\\inc/Dio.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 1
# 44 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
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
# 45 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 2


# 1 ".\\output\\inc/Dio_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Dio_Cfg.h" 1
# 2081 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Dio_Cfg.h"
# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 159 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 2082 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Dio_Cfg.h" 2

extern const struct Dio_ConfigType Dio_Config;



# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 172 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 2088 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Dio_Cfg.h" 2
# 2 ".\\output\\inc/Dio_Cfg.h" 2
# 48 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 2
# 117 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
typedef uint16 Dio_ChannelType;





typedef uint8 Dio_LevelType;




typedef uint8 Dio_PortType;




typedef uint16 Dio_PortLevelType;




typedef struct
{

  Dio_PortLevelType mask;


  uint8 offset;


  Dio_PortType port;
} Dio_ChannelGroupType;




typedef struct
{

  uint8 Dio_PortIdConfig;


  uint16 Dio_ChannelConfig;

} Dio_PortChannelIdType;




typedef struct Dio_ConfigType
{

  const Dio_PortChannelIdType* Dio_PortChannelIdConfigPtr;


  const Dio_ChannelGroupType* Dio_ChannelGroupConfigPtr;


  uint32 Dio_ChannelGroupConfigSize;
} Dio_ConfigType;
# 193 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 194 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 194 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 2
# 223 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern Dio_LevelType Dio_ReadChannel
(
  const Dio_ChannelType ChannelId
);
# 261 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern void Dio_WriteChannel
(
  const Dio_ChannelType ChannelId,
  const Dio_LevelType Level
);
# 293 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern Dio_PortLevelType Dio_ReadPort
(
  const Dio_PortType PortId
);
# 325 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern void Dio_WritePort
(
  const Dio_PortType PortId,
  const Dio_PortLevelType Level
);
# 358 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern Dio_PortLevelType Dio_ReadChannelGroup
(
  const Dio_ChannelGroupType * const ChannelGroupIdPtr
);
# 394 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern void Dio_WriteChannelGroup
(
  const Dio_ChannelGroupType * const ChannelGroupIdPtr,
  const Dio_PortLevelType Level
);
# 431 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
extern Dio_LevelType Dio_FlipChannel
(
  const Dio_ChannelType ChannelId
);
# 487 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 206 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 488 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 2
# 2 ".\\output\\inc/Dio.h" 2
# 47 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c" 2

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
# 49 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c" 2
# 195 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 104 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section "Const.Cpu0.16bit" a 2
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 196 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c" 2






static const Dio_PortLevelType Dio_kMaskAllPortPins[] =
{
  (Dio_PortLevelType)(0x1fffU),
  (Dio_PortLevelType)(0x00f8U),
  (Dio_PortLevelType)(0x0fffU),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x01ffU),
  (Dio_PortLevelType)(0xffffU),
  (Dio_PortLevelType)(0x0003U),
  (Dio_PortLevelType)(0x000fU),
  (Dio_PortLevelType)(0x07ffU),
  (Dio_PortLevelType)(0x01ffU),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x7fcfU),
  (Dio_PortLevelType)(0x00ffU),
  (Dio_PortLevelType)(0x0fffU),
  (Dio_PortLevelType)(0x00ffU),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x00ffU),
  (Dio_PortLevelType)(0xffffU),
  (Dio_PortLevelType)(0x003eU),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x0000U),
  (Dio_PortLevelType)(0x7fffU),
  (Dio_PortLevelType)(0x0000U)

};







# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 117 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 256 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c" 2
# 300 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 194 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 301 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c" 2
# 357 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
static __inline__ Dio_PortType Dio_lGetPortNumber(const Dio_ChannelType ChannelId);


static __inline__ Ifx_P *Dio_lGetPortAdr(const Dio_PortType PortNumber);


static __inline__ uint8 Dio_lGetPinNumber(const Dio_ChannelType ChannelId);
# 398 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
Dio_LevelType Dio_ReadChannel(const Dio_ChannelType ChannelId)
{
  uint32 PinPosition;
  Dio_PortType PortNumber;
  uint8 PinNumber;
  Dio_LevelType RetVal;
  const Ifx_P *GetPortAddressPtr;


  RetVal = (Dio_LevelType)0x00u;


  PortNumber = Dio_lGetPortNumber(ChannelId);

  PinNumber = Dio_lGetPinNumber(ChannelId);
# 445 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
  {

    GetPortAddressPtr = Dio_lGetPortAdr(PortNumber);


    PinPosition = ((uint32)(0x1U) << PinNumber);






    if ((PinPosition & (uint32)(GetPortAddressPtr->IN.U)) != (uint32)0x00u)
    {
      RetVal = (Dio_LevelType)0x01u;
    }
  }



  return RetVal;
}
# 502 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
void Dio_WriteChannel(const Dio_ChannelType ChannelId,
                      const Dio_LevelType Level)
{

  const Ifx_P *GetPortAddressPtr;
  uint32 OmrVal;
  Dio_PortType PortNumber;
  uint8 PinNumber;
  uint8 Offset;
# 520 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
  OmrVal = (0x1U);
  Offset = (0x10U);


  PortNumber = Dio_lGetPortNumber(ChannelId);

  PinNumber = Dio_lGetPinNumber(ChannelId);
# 577 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
  {





    if (Level != (Dio_LevelType)0x00u)
    {
      Offset = (0x0U);
    }


    GetPortAddressPtr = Dio_lGetPortAdr(PortNumber);





    {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((OmrVal << PinNumber))),"d"((Offset)),"i"((16)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((&(GetPortAddressPtr->OMR))),"d"(tmp): "memory");}
                                             ;
  }






}
# 632 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
Dio_PortLevelType Dio_ReadPort(const Dio_PortType PortId)
{
  const Ifx_P *GetPortAddressPtr;
  Dio_PortLevelType RetVal;
# 671 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
  {
    GetPortAddressPtr = Dio_lGetPortAdr(PortId);



    RetVal = ((Dio_PortLevelType)GetPortAddressPtr->IN.U &
              Dio_kMaskAllPortPins[PortId]);
  }



  return (RetVal);
}
# 714 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
void Dio_WritePort (const Dio_PortType PortId, const Dio_PortLevelType Level)
{
  const Ifx_P *GetPortAddressPtr;
# 770 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
  {





    GetPortAddressPtr = Dio_lGetPortAdr(PortId);



    {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"(((uint16)Level)),"d"(((0x0U))),"i"((16)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((&(GetPortAddressPtr->OUT))),"d"(tmp): "memory");}
                                     ;

  }




}
# 818 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
Dio_PortLevelType Dio_ReadChannelGroup
( const Dio_ChannelGroupType* const ChannelGroupIdPtr)
{
  const Ifx_P *GetPortAddressPtr;
  Dio_PortLevelType RetVal;
# 858 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
  {

    GetPortAddressPtr = Dio_lGetPortAdr(ChannelGroupIdPtr->port);





    RetVal = (Dio_PortLevelType)((uint32)GetPortAddressPtr->IN.U &
                                 (uint32)ChannelGroupIdPtr->mask);



    RetVal = (RetVal >> ChannelGroupIdPtr->offset);
  }



  return (RetVal);
}
# 911 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
void Dio_WriteChannelGroup
( const Dio_ChannelGroupType * const ChannelGroupIdPtr,
  const Dio_PortLevelType Level)
{

  Ifx_P *GetPortAddressPtr;
  uint32 PortVal;
  uint32 PortResetVal;
# 974 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
  {






    PortVal = (uint32)(((uint32)Level << (uint32)ChannelGroupIdPtr->offset) &
                       (uint32) ChannelGroupIdPtr->mask);




    PortResetVal = ((~PortVal) & ((uint32)ChannelGroupIdPtr->mask));




    PortVal = (PortVal | (PortResetVal << (0x10U)));





    GetPortAddressPtr = Dio_lGetPortAdr(ChannelGroupIdPtr->port);



    GetPortAddressPtr->OMR.U = PortVal;
  }
}
# 1043 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
Dio_LevelType Dio_FlipChannel(const Dio_ChannelType ChannelId)
{
  Ifx_P *GetPortAddressPtr;
  uint32 OmrVal;
  uint8 PinNumber;
  uint8 PortNumber;
  uint32 PinPosition;
  Dio_LevelType RetVal;
  const volatile uint8 *IocrRegPtr;
# 1060 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
  OmrVal = ((uint32)0x00010001);

  PortNumber = Dio_lGetPortNumber(ChannelId);
  PinNumber = Dio_lGetPinNumber(ChannelId);
# 1118 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
  {

    volatile uint32 DummyRead;


    GetPortAddressPtr = Dio_lGetPortAdr(PortNumber);
# 1133 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
    IocrRegPtr=(const volatile uint8*)((const volatile uint32*)
                                       (const volatile void*)
                                        GetPortAddressPtr +
                                        (0x4U));



    PinPosition = ((uint32)(0x1U) << (uint32)PinNumber);






    if((*(IocrRegPtr + PinNumber) & (uint8)(0x80U))
        != (uint8)(0x00U))
    {
      OmrVal = (OmrVal << PinNumber);




      GetPortAddressPtr->OMR.U = OmrVal;




      DummyRead = GetPortAddressPtr->OMR.U;
      (void)(DummyRead);
    }




    RetVal = (Dio_LevelType)((PinPosition & (uint32)(GetPortAddressPtr->IN.U))
                             >> (uint32)PinNumber);
  }



  return RetVal;
}
# 1893 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
static __inline__ Dio_PortType Dio_lGetPortNumber(const Dio_ChannelType ChannelId)
{
  Dio_PortType RetVal;

  RetVal = (Dio_PortType)((ChannelId & (uint16)(0x0FF0U))
                          >> (uint16)(0x4U));
  return(RetVal);
}
# 1928 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
static __inline__ Ifx_P *Dio_lGetPortAdr(const Dio_PortType PortNumber)
{
  Ifx_P *RetVal;


  RetVal = ( ((Ifx_P *)&((*(Ifx_P*)0xF003A000u)) + PortNumber ));
  return(RetVal);

}
# 1963 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c"
static __inline__ uint8 Dio_lGetPinNumber(const Dio_ChannelType ChannelId)
{
  uint8 RetVal;

  RetVal = (uint8)(ChannelId & (uint16)(0x0FU) );
  return(RetVal);
}







# 1 ".\\output\\inc/Dio_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h" 1
# 206 ".\\output\\inc/..\\..\\Integration\\mcal\\Dio_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Dio_MemMap.h" 2
# 1978 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\src\\Dio.c" 2
