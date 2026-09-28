# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
# 42 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
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
# 43 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c" 2



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
# 47 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c" 2



# 1 ".\\output\\inc/Port.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 1
# 45 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 46 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 2
# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 1
# 2 ".\\output\\inc/Mcal_Compiler.h" 2
# 47 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 2

# 1 ".\\output\\inc/Port_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Port_Cfg.h" 1
# 2 ".\\output\\inc/Port_Cfg.h" 2
# 49 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 2
# 164 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
typedef uint16 Port_PinType;




typedef enum
{
  PORT_PIN_IN = 0x00U,
  PORT_PIN_OUT = 0x80U
} Port_PinDirectionType;




typedef uint8 Port_PinModeType;





typedef struct
{

  uint8 PC0;
  uint8 PC1;
  uint8 PC2;
  uint8 PC3;
  uint8 PC4;
  uint8 PC5;
  uint8 PC6;
  uint8 PC7;
  uint8 PC8;
  uint8 PC9;
  uint8 PC10;
  uint8 PC11;
  uint8 PC12;
  uint8 PC13;
  uint8 PC14;
  uint8 PC15;

} Port_n_ControlType;



typedef struct
{

  unsigned_int P0 : 1;
  unsigned_int P1 : 1;
  unsigned_int P2 : 1;
  unsigned_int P3 : 1;
  unsigned_int P4 : 1;
  unsigned_int P5 : 1;
  unsigned_int P6 : 1;
  unsigned_int P7 : 1;
  unsigned_int P8 : 1;
  unsigned_int P9 : 1;
  unsigned_int P10 : 1;
  unsigned_int P11 : 1;
  unsigned_int P12 : 1;
  unsigned_int P13 : 1;
  unsigned_int P14 : 1;
  unsigned_int P15 : 1;
  unsigned_int reserved: 16;

} Port_n_PinType;







typedef struct
{

  uint8 U[(16U)];

} Port_n_ModeType;






typedef struct
{

  Port_n_ControlType PinControl;

  Port_n_PinType PinLevel;

  uint32 DriverStrength0;

  uint32 DriverStrength1;



  Port_n_PinType ModeChangeControl;




  Port_n_PinType DirChangeControl;


  Port_n_ControlType PinControl2;

  Port_n_PinType EmergencyStopConf;
} Port_n_ConfigType;





typedef struct
{
  uint32 LPCR0;

  uint32 LPCR1;


  uint32 LPCR2;


  uint32 LPCR3;


  uint32 LPCR4;


  uint32 LPCR5;


  uint32 LPCR6;




} Port_n_LVDSConfigType;



typedef uint32 Port_n_PCSRConfigType;






typedef struct
{

  const Port_n_ConfigType* PortConfigSetPtr;

  const uint32* PDiscSet;
# 328 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
  const Port_n_LVDSConfigType* Port_LVDSConfigTypePtr;
  const Port_n_PCSRConfigType* Port_PCSRConfigTypePtr;
} Port_ConfigType;
# 348 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 271 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 349 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 2
# 379 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
extern void Port_Init
(
  const Port_ConfigType * ConfigPtr
);
# 418 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
extern void Port_SetPinDirection
(
  const Port_PinType Pin,
  const Port_PinDirectionType Direction
);
# 452 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
extern void Port_RefreshPortDirection(void);
# 528 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
extern void Port_SetPinMode
(
  const Port_PinType Pin,
  const Port_PinModeType Mode
);
# 579 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 283 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 580 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 2

# 1 ".\\output\\inc/Port_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Port_PBcfg.h" 1
# 50 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Port_PBcfg.h"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 236 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 51 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Port_PBcfg.h" 2

extern const Port_ConfigType Port_Config;




# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 249 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 58 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Port_PBcfg.h" 2
# 2 ".\\output\\inc/Port_PBcfg.h" 2
# 582 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h" 2
# 2 ".\\output\\inc/Port.h" 2
# 51 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c" 2
# 325 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 181 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section "Const.Cpu0.16bit" a 2
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 326 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c" 2


static const uint16 Port_kAvailablePins[] =
{
  (0x1fffU),
  (0x00f8U),
  (0x0fffU),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x01ffU),
  (0xffffU),
  (0x0003U),
  (0x000fU),
  (0x07ffU),
  (0x01ffU),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x7fcfU),
  (0x00ffU),
  (0x0fffU),
  (0x00ffU),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x00ffU),
  (0xffffU),
  (0x003eU),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x0000U),
  (0x0000U),

  (0x7fffU)




};






# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 194 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 384 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c" 2
# 394 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 49 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section "ClearedData.LmuNC.32bit" aw 4
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 395 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c" 2


static const Port_ConfigType *Port_kConfigPtr;
# 412 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 62 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 413 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c" 2
# 428 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 75 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section "ClearedData.LmuNC.8bit" aw
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 429 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c" 2
# 448 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 87 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 449 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c" 2
# 459 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 271 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 460 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c" 2
# 468 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ void Port_lIOInit(void);


static __inline__ void Port_lPDRInit(void);


static __inline__ Ifx_P *Port_lAdr(uint32 PortNumber);



static __inline__ uint32 Port_lIsPortAvailable31(uint32 Port);



static __inline__ uint32 Port_lIsPortAvailable63(uint32 Port);



static __inline__ uint32 Port_lIsPortAvailable(uint32 Port);



static __inline__ uint32 Port_lIsPortReadOnly31(uint32 Port);


static __inline__ uint32 Port_lIsPortReadOnly63(uint32 Port);


static __inline__ uint32 Port_lIsPortReadOnly(uint32 Port);




static __inline__ uint16 Port_lIsPinAvailable(uint32 Port, uint32 Pin);



static __inline__ uint16 Port_lIsPortPdr1Available(uint32 Port);



static __inline__ uint16 Port_lIsPortIocrAvailable(uint32 Port, uint16 Pin);
# 537 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lNumber(Port_PinType Pin);


static __inline__ uint32 Port_lPinNumber(Port_PinType Pin);





static __inline__ uint32 Port_lIsPortLVDSAvailable31(uint32 Port);



static __inline__ uint32 Port_lIsPortLVDSAvailable63(uint32 Port);



static __inline__ uint32 Port_lIsPortLVDSAvailable(uint32 Port);




static __inline__ uint32 Port_lIsPortPCSRAvailable31(uint32 Port);



static __inline__ uint32 Port_lIsPortPCSRAvailable63(uint32 Port);



static __inline__ uint32 Port_lIsPortPCSRAvailable(uint32 Port);



static __inline__ uint32 Port_lIsPortPDISCAvailable31(uint32 Port);



static __inline__ uint32 Port_lIsPortPDISCAvailable63(uint32 Port);



static __inline__ uint32 Port_lIsPortPDISCAvailable(uint32 Port);




static __inline__ uint32 Port_lIsPortPinPairAvailable(uint32 PortLPCRvalue);
# 644 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
void Port_Init ( const Port_ConfigType * const ConfigPtr )
{
# 673 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
  {
# 682 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
    Port_kConfigPtr = ConfigPtr;





    Port_lIOInit();
# 698 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
  }
}
# 739 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
void Port_SetPinDirection(
  const Port_PinType Pin,
  const Port_PinDirectionType Direction
)
{

  uint32 PortNumber;
  uint32 PinNumber;





  uint32 ConfigIndex;
  uint32 Index;
  const uint8 *IocrDataPtr;
  volatile uint32 *IocrRegPtr;
  const uint32 *DataPtr;
  Ifx_P *PortAddressPtr;
# 772 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
  {




    PortNumber = (uint32)Port_lNumber(Pin);



    PinNumber = (uint32)Port_lPinNumber(Pin);
# 809 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
    {
# 819 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
      {
        {



        ConfigIndex = 0U;



        for(Index = 0U; Index < PortNumber; Index++)
        {



          if(Port_lIsPortAvailable(Index) != (uint32)0U)
          {
            ConfigIndex++;
          }
        }
# 847 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
        DataPtr = (const uint32*)(const void*) (
                  (Port_kConfigPtr->PortConfigSetPtr) + ConfigIndex);
# 861 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
        if ( ((*(DataPtr + (0x8U))) & ((uint32)0x01U << PinNumber))
             == (uint32)(0x00U)
           )
        {
# 879 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
        }
        else
        {

          IocrDataPtr = (const uint8*)(DataPtr);




          PortAddressPtr = Port_lAdr(PortNumber);







          IocrRegPtr = ((volatile uint32*)(volatile void*)PortAddressPtr +
         ((PinNumber / (uint32)0x4) + (uint32)(0x4U)));




          if((*(IocrDataPtr + PinNumber) & (uint8)(0x80U)) == (uint8)Direction)
          {

            {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"((*(IocrDataPtr + PinNumber))),"d"((((PinNumber % ((uint32)0x4)) * (uint32)0x8))),"i"((0x8)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((IocrRegPtr)),"d"(tmp): "memory");}

                                                          ;
          }
          else
          {

            {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"((*((const uint8*)(DataPtr + (0x9U)) + PinNumber))),"d"((((PinNumber % ((uint32)0x4)) * (uint32)0x8))),"i"((0x8)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((IocrRegPtr)),"d"(tmp): "memory");}


                         ;
          }
        }
      }
    }
   }
  }





}
# 952 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
void Port_RefreshPortDirection(void)
{
  uint32 LoopCtr;

  uint32 PortNumber;
  uint32 ConfigIndex;


  uint32 DirectionData;
  uint32 PinPos;

  const uint32 *DataPtr;
  const uint8 *IocrDataPtr;
  volatile uint8 *IocrRegPtr;
  Ifx_P *PortAddressPtr;
# 984 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
  {

    PortNumber = 0U;
    ConfigIndex = 0U;



    do
    {







      if(Port_lIsPortAvailable(PortNumber) != (uint32)0U)
      {

        DataPtr = (const uint32*)(const void*)







                  ((Port_kConfigPtr->PortConfigSetPtr) + ConfigIndex);
# 1022 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
        DirectionData = *(DataPtr + (0x8U));
# 1033 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
        IocrDataPtr = (const uint8*)(const void*)(DataPtr + (0x0U));






        PortAddressPtr = Port_lAdr(PortNumber);


        IocrRegPtr = (volatile uint8 *)(volatile void*)







                     ((volatile uint32 *)(volatile void*)PortAddressPtr +






                      (0x4U));



        PinPos = 0x01U;



        LoopCtr = 0U;



        do
        {
          if(Port_lIsPinAvailable(PortNumber, LoopCtr) != (uint16)0U)
          {
# 1082 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
            if((DirectionData & PinPos) == (uint32)(0x00U))
            {


              *IocrRegPtr = *IocrDataPtr;
            }







          }

          IocrRegPtr++;

          IocrDataPtr++;
# 1109 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
          PinPos = PinPos << (0x1U);


          LoopCtr++;
        } while (LoopCtr <= (uint32)(0xFU) );
        ConfigIndex++;
      }
      PortNumber++;
    } while (PortNumber <= (uint32)(40U));
  }
}
# 1155 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
void Port_SetPinMode(const Port_PinType Pin, const Port_PinModeType Mode)
{

  uint32 PortNumber;
  uint32 PinNumber;





  uint32 ConfigIndex;
  uint32 Index;
  const uint32 *DataPtr;
  volatile uint32 *IocrRegPtr;
  uint8 ReadMode;
  uint8 SetMode;
  Ifx_P *PortAddressPtr;
# 1194 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
  {




    PortNumber = (uint32)Port_lNumber(Pin);



    PinNumber = (uint32)Port_lPinNumber(Pin);
# 1233 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
    {
      ConfigIndex = 0U;



      for(Index = 0U; Index < PortNumber; Index++)
      {



        if(Port_lIsPortAvailable(Index) != (uint32)0U)
        {
          ConfigIndex++;
        }
      }







      DataPtr = (const uint32*)(const void*)
                ((Port_kConfigPtr->PortConfigSetPtr) + ConfigIndex);





      PortAddressPtr = Port_lAdr(PortNumber);
# 1271 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
      IocrRegPtr = ((volatile uint32*)(volatile void*)PortAddressPtr +
                    (PinNumber / (uint32)4) + (0x4U));






      if ((((*(DataPtr + (0x7U))) & ((uint32)(0x01U)
            << PinNumber))
           == (uint32)(0x00U))
         )
      {
# 1296 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
      }
      else
      {
# 1318 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
        {



          ReadMode = *((volatile uint8*)(IocrRegPtr) + (PinNumber % ((0x4U))));

          SetMode = ((ReadMode & (uint8)(0xC0U)) | (uint8)Mode);




          {long long tmp; __asm__("imask %A0,%1,%2,%3" :"=d"((long long)tmp) :"d"((SetMode)),"d"(((PinNumber % ((uint32)0x4)) *(uint32)0x8)),"i"((0x8)): "memory"); __asm__("ldmst [%0]0,%A1"::"a"((IocrRegPtr)),"d"(tmp): "memory");}
                                                                              ;
        }
      }

    }
  }




}
# 1460 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ void Port_lIOInit(void)
{
  const uint32 *DataPtr;
  const Port_n_ConfigType *ConfigDataPtr;

  uint32 PortNumber;

  uint32 PortLevel;

  uint32 EmerStopConf;


  uint32 ConfigIndex;
  Ifx_P *PortAddressPtr;
  const uint32 *PCSRDataPtr;
  const uint32 *PDISCDataPtr;
  volatile const uint32 *PCSRRegPtr;
  volatile const uint32 *PDISCRegPtr;

   uint32 counter;
   const uint32 *LVDSDataPtr;
   volatile const uint32 *LVDSRegPtr;






  Port_lPDRInit();
  ConfigIndex = 0U;




  LVDSDataPtr = (const uint32*)(const void*)
                (Port_kConfigPtr->Port_LVDSConfigTypePtr);




  PCSRDataPtr = (const uint32*)(const void*)
                (Port_kConfigPtr->Port_PCSRConfigTypePtr);



  PDISCDataPtr = (const uint32*)(const void*)(Port_kConfigPtr->PDiscSet);




  for(PortNumber = (uint32)0U; PortNumber <= (uint32)(40U); PortNumber++)
  {






    if(Port_lIsPortAvailable(PortNumber) != (uint32)0U)
    {


      ConfigDataPtr = (Port_kConfigPtr->PortConfigSetPtr) + ConfigIndex ;






      DataPtr = (const uint32 *)(const void*)(ConfigDataPtr);



      PortAddressPtr = Port_lAdr(PortNumber);
# 1549 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
      if(Port_lIsPortReadOnly(PortNumber) == (uint32)0U)

      {


        PortLevel = (*(DataPtr + (0x4U)));
        PortAddressPtr->OUT.U = (uint32)PortLevel;
      }






      EmerStopConf = (*(DataPtr + (13U)));





      Mcal_WritePeripEndInitProtReg((uint32*) & (PortAddressPtr->ESR.U),EmerStopConf)
                                                          ;



      PortAddressPtr->IOCR0.U = *DataPtr;
      DataPtr++;






      if(Port_lIsPortIocrAvailable(PortNumber, (uint16)(0x00F0U)) != (uint16)0U)
      {



        PortAddressPtr->IOCR4.U = *DataPtr;
      }
      DataPtr++;



      if(Port_lIsPortIocrAvailable(PortNumber, (uint16)(0x0F00U)) != (uint16)0U)
      {



        PortAddressPtr->IOCR8.U = *DataPtr;
      }
      DataPtr++;



      if(Port_lIsPortIocrAvailable(PortNumber, (uint16)(0xF000U)) != (uint16)0U)
      {
        PortAddressPtr->IOCR12.U = *DataPtr;
      }
# 1616 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
      if(Port_lIsPortLVDSAvailable(PortNumber) != (uint32)0U)
      {






        LVDSRegPtr = ((volatile uint32*)(volatile void*)PortAddressPtr +
                       (0x28U));





        for(counter = (uint32)0U; counter < (uint32)(7U) ; counter++)
        {



          if(Port_lIsPortPinPairAvailable(*LVDSDataPtr) == (uint32)0U)
          {


            Ifx_P_PDISC DiscReg;
            if((PortNumber == (0xEU)) && (counter == (0x5U)))
            {
              if(1U == ((_extru((unsigned)((*LVDSDataPtr)), (unsigned)((1)), (unsigned)((1))))))
              {
                DiscReg.U = ((*(volatile Ifx_P_PDISC*)0xF003AE60u).U) & (~(uint32)((0x0800U)));
                Mcal_WritePeripEndInitProtReg(&(*(volatile Ifx_P_PDISC*)0xF003AE60u),DiscReg.U);
                (*(volatile Ifx_P_IOCR8*)0xF003AE18u).B.PC11 = (0x2U);

              }
            }






            Mcal_WritePeripEndInitProtReg((uint32*)LVDSRegPtr,*LVDSDataPtr)
                                                                ;
          }
          LVDSRegPtr++;
          LVDSDataPtr++;
        }
      }
# 1674 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
      if(Port_lIsPortPCSRAvailable(PortNumber) != (uint32)0U)
      {






        PCSRRegPtr = ((volatile uint32*)(volatile void*)PortAddressPtr +


                     (0x19U));






        Mcal_WriteSafetyEndInitProtReg((uint32*)PCSRRegPtr,*PCSRDataPtr);
        PCSRDataPtr++;
      }



      if(Port_lIsPortPDISCAvailable(PortNumber) != (uint32)0U)
      {






        PDISCRegPtr = ((volatile uint32*)(volatile void*)PortAddressPtr +


                       (0x18U));





        Mcal_WritePeripEndInitProtReg((uint32 *)PDISCRegPtr,*PDISCDataPtr)
                                                              ;
        PDISCDataPtr++;
      }
      ConfigIndex++;
    }
  }
}
# 1746 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ void Port_lPDRInit(void)
{

  uint32 PortNumber;


  uint32 ConfigIndex;
  Ifx_P *PortAddressPtr;




  ConfigIndex = 0U;




  for (PortNumber = (uint32)0U; PortNumber <= (uint32)(40U);
       PortNumber++)

  {



    if(Port_lIsPortAvailable(PortNumber) != (uint32)0U)
    {



      PortAddressPtr = Port_lAdr(PortNumber);







      Mcal_WritePeripEndInitProtReg(( uint32 *) &PortAddressPtr->PDR0.U,Port_kConfigPtr->PortConfigSetPtr [ConfigIndex].DriverStrength0)


                                                                           ;






      if(Port_lIsPortPdr1Available(PortNumber) != (uint16)0U)
      {







        Mcal_WritePeripEndInitProtReg((uint32*) &PortAddressPtr->PDR1.U,Port_kConfigPtr->PortConfigSetPtr [ConfigIndex].DriverStrength1)

                                       ;
      }
      ConfigIndex++;
    }
  }
}
# 1837 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ Ifx_P * Port_lAdr(const uint32 PortNumber)
{
  Ifx_P *RetVal;


  RetVal = ( (&((*(Ifx_P*)0xF003A000u)) + PortNumber));
  return(RetVal);
}
# 1872 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortAvailable31(const uint32 Port)
{
  uint32 RetVal;

  RetVal = ( ((uint32)((0x01U)) << (Port)) &
             ((uint32)(0x00f0fc07U))
           );
  return(RetVal);
}
# 1908 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortAvailable63(const uint32 Port)
{
  uint32 RetVal;

  RetVal = ( ((uint32)((0x01U)) << (Port - (uint32)(0x20U))) &
             ((uint32)(0x00000107U))
           );
  return(RetVal);
}
# 1944 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortAvailable(const uint32 Port)
{
  uint32 RetVal;
# 1958 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
  RetVal = ((Port > (uint32)(0x1FU)) ? (Port_lIsPortAvailable63(Port)) :
            (Port_lIsPortAvailable31(Port))
           );
  return(RetVal);
}
# 1993 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortReadOnly31(const uint32 Port)
{
  uint32 RetVal;

  RetVal = ( ((uint32)((0x01U)) << (Port)) &
             ((uint32)(0x00000000U))
           );
  return(RetVal);
}
# 2029 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortReadOnly63(const uint32 Port)
{
  uint32 RetVal;

  RetVal = ( ((uint32)((0x01U)) << (Port - (uint32)(0x20U))) &
             ((uint32)(0x00000100U))
           );
  return(RetVal);
}
# 2065 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortReadOnly(const uint32 Port)
{
  uint32 RetVal;
# 2079 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
  RetVal = ((Port <= (uint32)(0x1FU)) ? (Port_lIsPortReadOnly31(Port)) :
            (Port_lIsPortReadOnly63(Port))
           );
  return(RetVal);
}
# 2112 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint16 Port_lIsPinAvailable(const uint32 Port, const uint32 Pin)
{
  uint16 RetVal;
  RetVal = (uint16)(((uint32)(0x01U) << (Pin)) &
                    (uint32)(Port_kAvailablePins[(Port)])
                   );
  return(RetVal);
}
# 2148 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint16 Port_lIsPortPdr1Available(const uint32 Port)
{
  uint16 RetVal;

  RetVal = (uint16)(((uint32)((0xFF00U))) &
                    (uint32)(Port_kAvailablePins[(Port)]));
  return(RetVal);
}
# 2185 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint16 Port_lIsPortIocrAvailable(const uint32 Port, const uint16 Pin)
{
  uint16 RetVal;

  RetVal = (uint16)( ((uint32)(Pin)) & (uint32)(Port_kAvailablePins[(Port)]) );
  return(RetVal);
}
# 2315 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lNumber(const Port_PinType Pin)
{
  uint32 RetVal;
  RetVal = (((uint32)(Pin) >> (uint32)(0x4U)) &
            (uint32)(0x000000FFU));
  return(RetVal);
}
# 2349 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lPinNumber(const Port_PinType Pin)
{
  uint32 RetVal;
  RetVal = ((uint32)(Pin) & (uint32)(0x0FU));
  return(RetVal);
}
# 2494 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortLVDSAvailable31(const uint32 Port)
{
  uint32 RetVal;
  RetVal = ( ((uint32)((0x01U)) << (Port)) &
             ((uint32)(0x00606000U))
           );
  return(RetVal);
}
# 2527 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortLVDSAvailable63(const uint32 Port)
{
  uint32 RetVal;
  RetVal = (((uint32)((0x01U)) <<
             (Port - (uint32)(0x20U))) &
            ((uint32)(0x00000000U))
           );
  return(RetVal);
}
# 2561 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortLVDSAvailable(const uint32 Port)
{
  uint32 RetVal;
# 2573 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
  RetVal = ((Port > (uint32)(0x1FU)) ?
            (Port_lIsPortLVDSAvailable63(Port)) :
            (Port_lIsPortLVDSAvailable31(Port))
           );
  return(RetVal);
}
# 2605 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortPCSRAvailable31(const uint32 Port)
{
  uint32 RetVal;
  RetVal = (((uint32)((0x01U)) << (Port)) &
            ((uint32)(0x00000801U))
           );
  return(RetVal);
}
# 2638 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortPCSRAvailable63(const uint32 Port)
{
  uint32 RetVal;
  RetVal = (((uint32)((0x01U)) <<
             (Port - (uint32)(0x20U))) &
            ((uint32)(0x00000106U))
           );
  return(RetVal);
}
# 2672 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortPCSRAvailable(const uint32 Port)
{
  uint32 RetVal;
# 2686 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
  RetVal = ((Port > (uint32)(0x1FU)) ?
            (Port_lIsPortPCSRAvailable63(Port)) :
            (Port_lIsPortPCSRAvailable31(Port))
           );
  return(RetVal);
}
# 2720 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortPinPairAvailable(const uint32 PortLPCRvalue)
{
  uint32 RetVal;
  RetVal = ( (PortLPCRvalue >> 16) & (uint32)0xFFFFU );
  return(RetVal);
}
# 2797 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortPDISCAvailable(const uint32 Port)
{
  uint32 RetVal;
# 2811 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
  RetVal = ((Port > (uint32)(0x1FU)) ?
            (Port_lIsPortPDISCAvailable63(Port)) :
            (Port_lIsPortPDISCAvailable31(Port))
           );
  return(RetVal);
}
# 2843 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortPDISCAvailable31(const uint32 Port)
{
  uint32 RetVal;
  RetVal = ( ((uint32)((0x01U)) << (Port)) &
             ((uint32)(0x00000007U))
           );
  return(RetVal);
}
# 2876 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
static __inline__ uint32 Port_lIsPortPDISCAvailable63(const uint32 Port)
{
  uint32 RetVal;
  RetVal = (((uint32)((0x01U)) <<
             (Port - (uint32)(0x20U))) &
            ((uint32)(0x00000106U))
           );
  return(RetVal);
}
# 3387 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
# 1 ".\\output\\inc/Port_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h" 1
# 283 ".\\output\\inc/..\\..\\Integration\\mcal\\Port_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Port_MemMap.h" 2
# 3388 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c" 2
