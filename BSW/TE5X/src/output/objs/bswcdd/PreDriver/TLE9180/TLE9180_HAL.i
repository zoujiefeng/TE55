# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c"
# 22 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c"
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 1
# 40 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h"
# 1 ".\\output\\inc/IfxStm_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_reg.h" 1
# 65 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h" 2
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
# 41 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2
# 1 ".\\output\\inc/Qspi_dma.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h" 1







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
# 9 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h" 2
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
# 10 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h" 2
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
# 11 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h" 2





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
# 95 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h"
void Qspi_CddlQspiDmaChRst(uint8 eCfgIndex);
Std_ReturnType Qspi_CddInit(uint8 eCfgIndex);
void Qspi_CddTxRx(uint8 eCfgIndex, uint32* TxBuf, uint32* RxBuf, uint8 Count);
void Qspi_CddTxRxShortMode(uint8 eCfgIndex, uint32* TxBuf, uint32* RxBuf, uint8 Count);
Std_ReturnType Qspi_CddRxDone(uint8 eCfgIndex);
# 2 ".\\output\\inc/Qspi_dma.h" 2
# 42 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2




# 1 ".\\output\\inc/CDD_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\CDD_Types.h" 1






# 1 ".\\output\\inc/Std_Types.h" 1
# 8 ".\\output\\inc/..\\..\\bswcdd\\CDD_Types.h" 2
# 20 ".\\output\\inc/..\\..\\bswcdd\\CDD_Types.h"
typedef enum{
   eCDD_WRITE_DONE = 0,
   eCDD_WRTIE_CONTINUE
}CDD_eTransState;

typedef enum{
   eCDD_PIN_LOW = 0,
   eCDD_PIN_HIGH
}CDD_ePinLevel;

typedef volatile union{
   uint8 *u8Ptr;
   uint16 *u16Ptr;
   uint32 *u32Ptr;
   uint64 *u64Ptr;
   sint8 *s8Ptr;
   sint16 *s16Ptr;
   sint32 *s32Ptr;
   sint64 *s64Ptr;
   float32 *f32Ptr;
   const float32 *kf32Ptr;
}CDD_uCTablePtr;

typedef struct CDD_tTransParam{
   CDD_eTransState eState;
   uint32 u32TransLen;
   uint32 u32TotalLen;
   CDD_uCTablePtr uSrcPtr;
   CDD_uCTablePtr uDestPtr;
}CDD_tTransParam;
# 2 ".\\output\\inc/CDD_Types.h" 2
# 47 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h" 1
# 37 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h" 2
# 68 "bswcdd\\PreDriver\\TLE9180\\TLE9180.h"
extern boolean TLE9180_bIsModeReq;
extern boolean TLE9180_bIsInIdleMode;
extern boolean TLE9180_bIsInCfgLockMode;
extern boolean TLE9180_bDrvOverCurrent;
extern boolean TLE9180_bDrvOverTemp;
extern boolean TLE9180_bDrvOverVoltage;
extern boolean TLE9180_bDrvUnderVoltage;
extern boolean TLE9180_bErrorPinLevel;
extern boolean TLE9180_bInitFailFlg;
extern boolean TLE9180_bPhaseShortHigh;
extern boolean TLE9180_bPhaseShortLow;
extern boolean TLE9180_bPhsOverVolt;
extern boolean TLE9180_bReadErrInfoFlg;
extern boolean TLE9180_bTestReadReg;
extern boolean TLE9180_bTestWriteReg;
extern uint32 TLE9180_u32ReinitTotalTime;
extern uint32 TLE9180_u32ReinitEndTime;
extern uint32 TLE9180_u32ReinitStartTime;
extern float32 TLE9180_af32ReadPhsTempPhys[( 6 )];
extern float32 TLE9180_f32MaxPhsTempPhys;
extern float32 TLE9180_f32BatteryVoltage;
extern uint32 TLE9180_au32SpiReadFrame[( 30 )];
extern uint32 TLE9180_au32SpiTstReadFrame[( 30 )];
extern uint32 TLE9180_au32SpiTstWriteFrame[( 30 )];
extern uint32 TLE9180_au32ErrRegsReadFrame[( 30 )];
extern uint32 TLE9180_au32SpiWriteFrame[( 30 )];
extern uint32 TLE9180_au32ICInitSpiFrame[( 30 )];
extern uint32 TLE9180_au32StateRegs[( 30 )];
extern uint8 TLE9180_au8CfgRegister[( 30 )];
extern uint8 TLE9180_au8CfgRegReadBk[( 30 )];
extern uint8 TLE9180_au8ReadPhsTemp[( 6 )];
extern uint8 TLE9180_au8ReadRegs[( 30 )];
extern uint8 TLE9180_u8ReCfgCnt;
extern uint8 TLE9180_u8InitFailedCnt;
extern uint8 TLE9180_u8ErrRecoverCnt;
extern uint8 TLE9180_u8Mode;
extern uint8 TLE9180_u8RdRegTimCnt;
extern uint8 TLE9180_u8ReadRegAddr;
extern uint8 TLE9180_u8SelfTestStep;
extern uint8 TLE9180_u8SpiTxFrameMaxNb;
extern uint8 TLE9180_u8WriteData;
extern uint8 TLE9180_u8WriteRegAddr;
extern uint16 TLE9180_u16EnaResetTime;
extern uint16 TLE9180_u16ErrPinChkCnt;




void TLE9180_vidInit(void);
void TLE9180_vidMainFunction(void);
boolean TLE9180_bIsWorkModeNormal(void);
# 48 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 1
# 37 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
# 52 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h"
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 105 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 106 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 53 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
extern const boolean TLE9180_bManualReadRegC;
extern const boolean TLE9180_bDrvOverVoltageTestOnC;
extern const boolean TLE9180_bDrvUnderVoltageTestOnC;
extern const boolean TLE9180_bDrvOverTempTestOnC;
extern const boolean TLE9180_bPhaseShortHighTestOnC;
extern const boolean TLE9180_bPhaseShortLowTestOnC;
extern const boolean TLE9180_bDrvOverCurrentTestOnC;
extern const boolean TLE9180_bPhsOverVoltTestOnC;
extern const boolean TLE9180_bPhasePerfTestOnC;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 110 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 111 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 64 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 94 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 95 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 67 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
extern const uint8 TLE9180_ku8MaxInitTimeC;
extern const uint8 TLE9180_ku8MaxReCfgTimeC;
extern const uint8 TLE9180_ku8EnaResetCntC;
extern const uint8 TLE9180_ku8ErrRecvMaxNumC;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 99 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 100 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 73 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 83 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 164 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_16" a 2
# 2 ".\\output\\inc/MemMap.h" 2
# 84 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 76 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
extern const uint16 TLE9180_ku16EnaResetTimeC;
extern const uint16 TLE9180_ku16ErrPinChkTimC;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 88 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 173 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 89 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 80 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 116 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 109 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_unspec" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 117 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 83 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2
extern const float32 TLE9180_kf32PhsTempFaultC;
extern const float32 TLE9180_kf32PhsTempFltRecoverC;
extern const float32 TLE9180_kf32BatteryVolValidThrdC;

# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 121 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 118 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 122 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 2
# 88 "bswcdd\\PreDriver\\TLE9180\\TLE9180_L.h" 2




extern boolean TLE9180_bPhasePerf;
extern boolean TLE9180_bTempWarning;
# 49 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2
# 66 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h"
boolean TLE9180_bHalBatIsNormal(void);
boolean TLE9180_bHalSysIsReady(void);
boolean TLE9180_bHalPwmIsReady(void);
boolean TLE9180_bHalICIsNormal(void);
void TLE9180_vidHalWriteEnaPin(const CDD_ePinLevel kePinLevel);
void TLE9180_vidHalWriteSoffPin(const CDD_ePinLevel kePinLevel);
void TLE9180_vidHalWriteInhPin(const CDD_ePinLevel kePinLevel);




static inline void TLE9180_vidHalSpiInit(void);
static inline boolean TLE9180_bHalSpiWrite(CDD_tTransParam * const kpkxParam);
static inline uint32 TLE9180_u32HalGetTimerVal(void);
static inline boolean TLE9180_bHalIsComEnd(CDD_tTransParam * const kpkxParam);





# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 140 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section ".text" ax
# 87 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2
static inline void TLE9180_vidHalSpiInit(void)
{
   Qspi_CddInit(2);
}

static inline boolean TLE9180_bHalIsComEnd(CDD_tTransParam * const kpkxParam)
{
   boolean bReadResult;


   (void)kpkxParam;
   bReadResult = (0x00u == Qspi_CddRxDone(2));




   return bReadResult;
}

static inline boolean TLE9180_bHalSpiWrite(CDD_tTransParam * const kpkxParam)
{
   boolean bRetVal;

   Qspi_CddTxRxShortMode(2,
                         kpkxParam->uSrcPtr.u32Ptr,
                         kpkxParam->uDestPtr.u32Ptr,
                         (uint8)kpkxParam->u32TotalLen);

   bRetVal = (1 != 0);
# 141 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h"
   return bRetVal;
}

static inline uint32 TLE9180_u32HalGetTimerVal(void)
{
   uint32 u32Time;

   u32Time = ((*(Ifx_STM*)0xF0001100u)).TIM0.U;

   return u32Time;
}


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 181 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section
# 155 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.h" 2
# 23 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c" 2
# 1 ".\\output\\inc/iohal.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL.h" 1
# 32 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 1
# 34 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 35 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 2
# 45 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_MemMap.h" 1
# 69 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_MemMap.h"
#pragma section ".text" ax
# 46 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 2




extern uint16 IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2 (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2 (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_SER_2 (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4 (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2 (void);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_DI1_KM_EN (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_SER_3 (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3 (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_1 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_1 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_1 (void);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_DO2 (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_RCLK (uint16 u16State);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2 (void);
extern uint16 IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2 (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1 (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_KEY_ON (void);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC (uint16 u16State);

extern void IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_SER (uint16 u16State);
extern void IOHAL_vidWrite_CH_DIO_OUT_M_DO1 (uint16 u16State);

extern uint16 IOHAL_u16Read_CH_DIO_IN_M_CHG_ON (void);

extern void IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3 (uint16 u16State);




extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_MON_CURRENT_OCP_MCU2 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_HDW_VERSION (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11 (void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12 (void);

extern uint16 IOHAL_u16Read_CH_ADC_IN_LV_VOL_SAMPLE(void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_P5V_COM_SAMPLE(void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_P5V_BT_SAMPLE(void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_P5V_HS_SAMPLE(void);
extern uint16 IOHAL_u16Read_CH_ADC_IN_P5V_LS_SAMPLE(void);





extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_W(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_EPS_TEMP_MEAS_MOD_V(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_W(void);
extern float32 IOHAL_u16Read_CH_PWM_IN_M_ACM_TEMP_MEAS_MOD_V(void);


# 1 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_MemMap.h" 1
# 95 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_MemMap.h"
#pragma section
# 223 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h" 2
# 33 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL.h" 2
# 2 ".\\output\\inc/iohal.h" 2
# 24 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c" 2
# 1 ".\\output\\inc/Dio.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h" 1
# 44 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Dio\\inc\\Dio.h"
# 1 ".\\output\\inc/Std_Types.h" 1
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
# 25 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c" 2
# 1 ".\\output\\inc/BSW.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2
# 1 ".\\output\\inc/CAN01_DEF.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 1
# 11 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2


# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 89 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 90 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 15 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern const boolean CAN01_bE2ERxValidC;

# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 95 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 18 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2


# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 78 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_8" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 79 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 21 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern const uint8 CAN01_u8ChecksumErrThdC;
extern const uint8 CAN01_u8RCUnchgErrThdC;
extern const uint8 CAN01_u8RcJumpErrThdC;
extern const uint8 CAN01_u8Rx6RcErrThdC;
extern const uint8 CAN01_u8RcErrRecThdC;

# 1 ".\\output\\inc/BSWSRV_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 83 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 155 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 84 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 2 ".\\output\\inc/BSWSRV_MemMap.h" 2
# 28 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 34 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern boolean BSW_bRxTOutFlag_Can01_Rx01;
extern boolean BSW_bRxTOutFlag_Can01_Rx02;
extern boolean BSW_bRxTOutFlag_Can01_Rx03;
extern boolean BSW_bRxTOutFlag_Can01_Rx04;
extern boolean BSW_bRxTOutFlag_Can01_Rx05;
extern boolean BSW_bRxTOutFlag_Can01_Rx06;
extern boolean BSW_bRxTOutFlag_Can01_Rx07;
extern boolean BSW_bRxTOutFlag_Can01_Rx08;
extern boolean BSW_bRxTOutFlag_Can01_Rx09;
extern boolean BSW_bRxTOutFlag_Can01_Rx10;
extern boolean BSW_bRxTOutFlag_Can01_Rx11;
extern boolean BSW_bRxTOutFlag_Can01_Rx12;
extern boolean BSW_bRxTOutFlag_Can01_Rx13;
extern boolean BSW_bRxTOutFlag_Can01_Rx14;
extern boolean BSW_bRxTOutFlag_Can01_Rx15;
extern boolean BSW_bRxTOutFlag_Can01_Rx16;
extern boolean BSW_bRxTOutFlag_Can01_Rx17;
extern boolean BSW_bRxTOutFlag_Can01_Rx18;
extern boolean BSW_bRxTOutFlag_Can01_Rx19;
extern boolean BSW_bRxTOutFlag_Can01_Rx20;
extern boolean BSW_bRxTOutFlag_Can01_Rx21;
extern boolean BSW_bRxTOutFlag_Can01_Rx22;
extern boolean BSW_bRxTOutFlag_Can01_Rx23;
extern boolean BSW_bRxTOutFlag_Can01_Rx24;
extern boolean BSW_bRxTOutFlag_Can01_Rx25;
extern boolean BSW_bRxTOutFlag_Can01_Rx26;
extern boolean BSW_bRxTOutFlag_Can01_Rx27;
extern boolean BSW_bRxTOutFlag_Can01_Rx28;
extern boolean BSW_bRxTOutFlag_Can01_Rx29;
extern boolean BSW_bRxTOutFlag_Can01_Rx30;
extern boolean BSW_bRxTOutFlag_Can01_Rx31;
extern boolean BSW_bRxTOutFlag_Can01_Rx32;
extern boolean BSW_bRxTOutFlag_Can01_Rx33;
extern boolean BSW_bRxTOutFlag_Can01_Rx34;
extern boolean BSW_bRxTOutFlag_Can01_Rx35;
extern boolean BSW_bRxTOutFlag_Can01_Rx36;
extern boolean BSW_bRxTOutFlag_Can01_Rx37;
extern boolean BSW_bRxTOutFlag_Can01_Rx38;
extern boolean BSW_bRxTOutFlag_Can01_Rx39;
extern boolean BSW_bRxTOutFlag_Can01_Rx40;

extern boolean BSW_bMsgValidState_Can01_Rx01;
extern boolean BSW_bMsgValidState_Can01_Rx02;
extern boolean BSW_bMsgValidState_Can01_Rx03;
extern boolean BSW_bMsgValidState_Can01_Rx04;
extern boolean BSW_bMsgValidState_Can01_Rx05;
extern boolean BSW_bMsgValidState_Can01_Rx06;
extern boolean BSW_bMsgValidState_Can01_Rx07;
extern boolean BSW_bMsgValidState_Can01_Rx08;
extern boolean BSW_bMsgValidState_Can01_Rx09;
extern boolean BSW_bMsgValidState_Can01_Rx10;
extern boolean BSW_bMsgValidState_Can01_Rx11;
extern boolean BSW_bMsgValidState_Can01_Rx12;
extern boolean BSW_bMsgValidState_Can01_Rx13;
extern boolean BSW_bMsgValidState_Can01_Rx14;
extern boolean BSW_bMsgValidState_Can01_Rx15;
extern boolean BSW_bMsgValidState_Can01_Rx16;
extern boolean BSW_bMsgValidState_Can01_Rx17;
extern boolean BSW_bMsgValidState_Can01_Rx18;
extern boolean BSW_bMsgValidState_Can01_Rx19;
extern boolean BSW_bMsgValidState_Can01_Rx20;
extern boolean BSW_bMsgValidState_Can01_Rx21;
extern boolean BSW_bMsgValidState_Can01_Rx22;
extern boolean BSW_bMsgValidState_Can01_Rx23;
extern boolean BSW_bMsgValidState_Can01_Rx24;
extern boolean BSW_bMsgValidState_Can01_Rx25;
extern boolean BSW_bMsgValidState_Can01_Rx26;
extern boolean BSW_bMsgValidState_Can01_Rx27;
extern boolean BSW_bMsgValidState_Can01_Rx28;
extern boolean BSW_bMsgValidState_Can01_Rx29;
extern boolean BSW_bMsgValidState_Can01_Rx30;
extern boolean BSW_bMsgValidState_Can01_Rx31;
extern boolean BSW_bMsgValidState_Can01_Rx32;
extern boolean BSW_bMsgValidState_Can01_Rx33;
extern boolean BSW_bMsgValidState_Can01_Rx34;
extern boolean BSW_bMsgValidState_Can01_Rx35;
extern boolean BSW_bMsgValidState_Can01_Rx36;
extern boolean BSW_bMsgValidState_Can01_Rx37;
extern boolean BSW_bMsgValidState_Can01_Rx38;
extern boolean BSW_bMsgValidState_Can01_Rx39;
extern boolean BSW_bMsgValidState_Can01_Rx40;

extern boolean CAN01_bCsumErrFlag_SGRx5Req;
extern boolean CAN01_bRcErrFlag_SGRx5Req;
extern boolean CAN01_bCsumErrFlag_SGRx6Req;
extern boolean CAN01_bRcErrFlag_SGRx6Req;
extern boolean CAN01_bCsumErrFlag_SGRx8Req;
extern boolean CAN01_bRcErrFlag_SGRx8Req;
extern boolean CAN01_bRcCsErrFlagReq;

extern uint8 CAN01_u8Rx5CsumErrCnt;
extern uint8 CAN01_u8Rx5RcLast;
extern uint8 CAN01_u8Rx5RollingCod;
extern uint8 CAN01_u8Rx5RcErrCnt;
extern uint8 CAN01_u8Rx5RcUnchangedErrCnt;
extern uint8 CAN01_u8Rx6CsumErrCnt;
extern uint8 CAN01_u8Rx6RcLast;
extern uint8 CAN01_u8Rx6RollingCod;
extern uint8 CAN01_u8Rx6RcErrCnt;
extern uint8 CAN01_u8Rx6RcRecCnt;
extern uint8 CAN01_u8Rx6RcUnchangedErrCnt;
extern uint8 CAN01_u8Rx8CsumErrCnt;
extern uint8 CAN01_u8Rx8RcLast;
extern uint8 CAN01_u8Rx8RollingCod;
extern uint8 CAN01_u8Rx8RcErrCnt;
extern uint8 CAN01_u8Rx8RcUnchangedErrCnt;


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 143 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 149 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
extern void CAN01_vidInit(void);

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 152 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN01\\CAN01_DEF.h" 2
# 2 ".\\output\\inc/CAN01_DEF.h" 2
# 39 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2
# 1 ".\\output\\inc/CAN02_DEF.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 1
# 11 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 18 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2
extern boolean BSW_bRxTOutFlag_Can02_Rx01;
extern boolean BSW_bRxTOutFlag_Can02_Rx02;
extern boolean BSW_bRxTOutFlag_Can02_Rx03;
extern boolean BSW_bRxTOutFlag_Can02_Rx04;
extern boolean BSW_bRxTOutFlag_Can02_Rx05;
extern boolean BSW_bRxTOutFlag_Can02_Rx06;
extern boolean BSW_bRxTOutFlag_Can02_Rx07;
extern boolean BSW_bRxTOutFlag_Can02_Rx08;
extern boolean BSW_bRxTOutFlag_Can02_Rx09;
extern boolean BSW_bRxTOutFlag_Can02_Rx10;
extern boolean BSW_bRxTOutFlag_Can02_Rx11;
extern boolean BSW_bRxTOutFlag_Can02_Rx12;
extern boolean BSW_bRxTOutFlag_Can02_Rx13;
extern boolean BSW_bRxTOutFlag_Can02_Rx14;
extern boolean BSW_bRxTOutFlag_Can02_Rx15;
extern boolean BSW_bRxTOutFlag_Can02_Rx16;
extern boolean BSW_bRxTOutFlag_Can02_Rx17;
extern boolean BSW_bRxTOutFlag_Can02_Rx18;
extern boolean BSW_bRxTOutFlag_Can02_Rx19;
extern boolean BSW_bRxTOutFlag_Can02_Rx20;
extern boolean BSW_bRxTOutFlag_Can02_Rx21;
extern boolean BSW_bRxTOutFlag_Can02_Rx22;
extern boolean BSW_bRxTOutFlag_Can02_Rx23;
extern boolean BSW_bRxTOutFlag_Can02_Rx24;
extern boolean BSW_bRxTOutFlag_Can02_Rx25;
extern boolean BSW_bRxTOutFlag_Can02_Rx26;
extern boolean BSW_bRxTOutFlag_Can02_Rx27;
extern boolean BSW_bRxTOutFlag_Can02_Rx28;
extern boolean BSW_bRxTOutFlag_Can02_Rx29;
extern boolean BSW_bRxTOutFlag_Can02_Rx30;
extern boolean BSW_bRxTOutFlag_Can02_Rx31;
extern boolean BSW_bRxTOutFlag_Can02_Rx32;
extern boolean BSW_bRxTOutFlag_Can02_Rx33;
extern boolean BSW_bRxTOutFlag_Can02_Rx34;
extern boolean BSW_bRxTOutFlag_Can02_Rx35;
extern boolean BSW_bRxTOutFlag_Can02_Rx36;
extern boolean BSW_bRxTOutFlag_Can02_Rx37;
extern boolean BSW_bRxTOutFlag_Can02_Rx38;
extern boolean BSW_bRxTOutFlag_Can02_Rx39;
extern boolean BSW_bRxTOutFlag_Can02_Rx40;

extern boolean BSW_bMsgValidState_Can02_Rx01;
extern boolean BSW_bMsgValidState_Can02_Rx02;
extern boolean BSW_bMsgValidState_Can02_Rx03;
extern boolean BSW_bMsgValidState_Can02_Rx04;
extern boolean BSW_bMsgValidState_Can02_Rx05;
extern boolean BSW_bMsgValidState_Can02_Rx06;
extern boolean BSW_bMsgValidState_Can02_Rx07;
extern boolean BSW_bMsgValidState_Can02_Rx08;
extern boolean BSW_bMsgValidState_Can02_Rx09;
extern boolean BSW_bMsgValidState_Can02_Rx10;
extern boolean BSW_bMsgValidState_Can02_Rx11;
extern boolean BSW_bMsgValidState_Can02_Rx12;
extern boolean BSW_bMsgValidState_Can02_Rx13;
extern boolean BSW_bMsgValidState_Can02_Rx14;
extern boolean BSW_bMsgValidState_Can02_Rx15;
extern boolean BSW_bMsgValidState_Can02_Rx16;
extern boolean BSW_bMsgValidState_Can02_Rx17;
extern boolean BSW_bMsgValidState_Can02_Rx18;
extern boolean BSW_bMsgValidState_Can02_Rx19;
extern boolean BSW_bMsgValidState_Can02_Rx20;
extern boolean BSW_bMsgValidState_Can02_Rx21;
extern boolean BSW_bMsgValidState_Can02_Rx22;
extern boolean BSW_bMsgValidState_Can02_Rx23;
extern boolean BSW_bMsgValidState_Can02_Rx24;
extern boolean BSW_bMsgValidState_Can02_Rx25;
extern boolean BSW_bMsgValidState_Can02_Rx26;
extern boolean BSW_bMsgValidState_Can02_Rx27;
extern boolean BSW_bMsgValidState_Can02_Rx28;
extern boolean BSW_bMsgValidState_Can02_Rx29;
extern boolean BSW_bMsgValidState_Can02_Rx30;
extern boolean BSW_bMsgValidState_Can02_Rx31;
extern boolean BSW_bMsgValidState_Can02_Rx32;
extern boolean BSW_bMsgValidState_Can02_Rx33;
extern boolean BSW_bMsgValidState_Can02_Rx34;
extern boolean BSW_bMsgValidState_Can02_Rx35;
extern boolean BSW_bMsgValidState_Can02_Rx36;
extern boolean BSW_bMsgValidState_Can02_Rx37;
extern boolean BSW_bMsgValidState_Can02_Rx38;
extern boolean BSW_bMsgValidState_Can02_Rx39;
extern boolean BSW_bMsgValidState_Can02_Rx40;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 101 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 107 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2
extern void CAN02_vidInit(void);

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN02\\CAN02_DEF.h" 2
# 2 ".\\output\\inc/CAN02_DEF.h" 2
# 40 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2
# 1 ".\\output\\inc/CAN03_DEF.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 1
# 11 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 12 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2





# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 18 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2
extern boolean BSW_bRxTOutFlag_Can03_Rx01;
extern boolean BSW_bRxTOutFlag_Can03_Rx02;
extern boolean BSW_bRxTOutFlag_Can03_Rx03;
extern boolean BSW_bRxTOutFlag_Can03_Rx04;
extern boolean BSW_bRxTOutFlag_Can03_Rx05;
extern boolean BSW_bRxTOutFlag_Can03_Rx06;
extern boolean BSW_bRxTOutFlag_Can03_Rx07;
extern boolean BSW_bRxTOutFlag_Can03_Rx08;
extern boolean BSW_bRxTOutFlag_Can03_Rx09;
extern boolean BSW_bRxTOutFlag_Can03_Rx10;
extern boolean BSW_bRxTOutFlag_Can03_Rx11;
extern boolean BSW_bRxTOutFlag_Can03_Rx12;
extern boolean BSW_bRxTOutFlag_Can03_Rx13;
extern boolean BSW_bRxTOutFlag_Can03_Rx14;
extern boolean BSW_bRxTOutFlag_Can03_Rx15;
extern boolean BSW_bRxTOutFlag_Can03_Rx16;
extern boolean BSW_bRxTOutFlag_Can03_Rx17;
extern boolean BSW_bRxTOutFlag_Can03_Rx18;
extern boolean BSW_bRxTOutFlag_Can03_Rx19;
extern boolean BSW_bRxTOutFlag_Can03_Rx20;
extern boolean BSW_bRxTOutFlag_Can03_Rx21;
extern boolean BSW_bRxTOutFlag_Can03_Rx22;
extern boolean BSW_bRxTOutFlag_Can03_Rx23;
extern boolean BSW_bRxTOutFlag_Can03_Rx24;
extern boolean BSW_bRxTOutFlag_Can03_Rx25;
extern boolean BSW_bRxTOutFlag_Can03_Rx26;
extern boolean BSW_bRxTOutFlag_Can03_Rx27;
extern boolean BSW_bRxTOutFlag_Can03_Rx28;
extern boolean BSW_bRxTOutFlag_Can03_Rx29;
extern boolean BSW_bRxTOutFlag_Can03_Rx30;
extern boolean BSW_bRxTOutFlag_Can03_Rx31;
extern boolean BSW_bRxTOutFlag_Can03_Rx32;
extern boolean BSW_bRxTOutFlag_Can03_Rx33;
extern boolean BSW_bRxTOutFlag_Can03_Rx34;
extern boolean BSW_bRxTOutFlag_Can03_Rx35;
extern boolean BSW_bRxTOutFlag_Can03_Rx36;
extern boolean BSW_bRxTOutFlag_Can03_Rx37;
extern boolean BSW_bRxTOutFlag_Can03_Rx38;
extern boolean BSW_bRxTOutFlag_Can03_Rx39;
extern boolean BSW_bRxTOutFlag_Can03_Rx40;

extern boolean BSW_bMsgValidState_Can03_Rx01;
extern boolean BSW_bMsgValidState_Can03_Rx02;
extern boolean BSW_bMsgValidState_Can03_Rx03;
extern boolean BSW_bMsgValidState_Can03_Rx04;
extern boolean BSW_bMsgValidState_Can03_Rx05;
extern boolean BSW_bMsgValidState_Can03_Rx06;
extern boolean BSW_bMsgValidState_Can03_Rx07;
extern boolean BSW_bMsgValidState_Can03_Rx08;
extern boolean BSW_bMsgValidState_Can03_Rx09;
extern boolean BSW_bMsgValidState_Can03_Rx10;
extern boolean BSW_bMsgValidState_Can03_Rx11;
extern boolean BSW_bMsgValidState_Can03_Rx12;
extern boolean BSW_bMsgValidState_Can03_Rx13;
extern boolean BSW_bMsgValidState_Can03_Rx14;
extern boolean BSW_bMsgValidState_Can03_Rx15;
extern boolean BSW_bMsgValidState_Can03_Rx16;
extern boolean BSW_bMsgValidState_Can03_Rx17;
extern boolean BSW_bMsgValidState_Can03_Rx18;
extern boolean BSW_bMsgValidState_Can03_Rx19;
extern boolean BSW_bMsgValidState_Can03_Rx20;
extern boolean BSW_bMsgValidState_Can03_Rx21;
extern boolean BSW_bMsgValidState_Can03_Rx22;
extern boolean BSW_bMsgValidState_Can03_Rx23;
extern boolean BSW_bMsgValidState_Can03_Rx24;
extern boolean BSW_bMsgValidState_Can03_Rx25;
extern boolean BSW_bMsgValidState_Can03_Rx26;
extern boolean BSW_bMsgValidState_Can03_Rx27;
extern boolean BSW_bMsgValidState_Can03_Rx28;
extern boolean BSW_bMsgValidState_Can03_Rx29;
extern boolean BSW_bMsgValidState_Can03_Rx30;
extern boolean BSW_bMsgValidState_Can03_Rx31;
extern boolean BSW_bMsgValidState_Can03_Rx32;
extern boolean BSW_bMsgValidState_Can03_Rx33;
extern boolean BSW_bMsgValidState_Can03_Rx34;
extern boolean BSW_bMsgValidState_Can03_Rx35;
extern boolean BSW_bMsgValidState_Can03_Rx36;
extern boolean BSW_bMsgValidState_Can03_Rx37;
extern boolean BSW_bMsgValidState_Can03_Rx38;
extern boolean BSW_bMsgValidState_Can03_Rx39;
extern boolean BSW_bMsgValidState_Can03_Rx40;

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 101 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2





# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 107 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2
extern void CAN03_vidInit(void);

# 1 ".\\output\\inc/BSW_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Memmap\\Bsw_MemMap.h" 1
# 2 ".\\output\\inc/BSW_MemMap.h" 2
# 110 ".\\output\\inc/..\\..\\bswcdd\\BSW\\CAN03\\CAN03_DEF.h" 2
# 2 ".\\output\\inc/CAN03_DEF.h" 2
# 41 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2
# 56 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 89 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 128 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_bool" a 1
# 2 ".\\output\\inc/MemMap.h" 2
# 90 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 57 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2
extern const boolean BSW_bSPYBenchOnC;

# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 137 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 95 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSWSRV_MemMap.h" 2
# 60 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2






# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 67 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2

extern boolean BSW_bCAN0BusOff;
extern boolean BSW_bComIsNormalFlg;
extern boolean BSW_bMKeyOnStatus;
extern boolean BSW_bOCDataNotRation;
extern boolean GBSW_bOCDataNotRation;
extern boolean BSW_bVsiReadySts;
extern uint16 BSW_u16RawVolt15VRdc;
extern uint32 BSW_u32VSICounterCkreq;
extern uint32 GBSW_u32VSICounterCkreq;
extern uint32 ABSW_u32VSICounterCkreq;
extern uint32 OBSW_u32VSICounterCkreq;
extern uint32 BSW_u8CAN0BusOffCounter;
extern uint32 BSW_u8CAN1BusOffCounter;
extern uint32 BSW_u8CAN2BusOffCounter;
extern uint32 BSW_u8CAN3BusOffCounter;


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 86 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2




# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW_VER_MemMap.h" 1
# 68 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW_VER_MemMap.h"
#pragma section ".version_bsw" a
# 91 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2

extern const uint8 BSW_kau8IntOfflineDate[4];
extern const uint8 BSW_kau8IntProductionLineId[4];
extern const uint8 BSW_kau8IntProjectId[8];
extern const uint8 BSW_kau8IntBswLibDate[6];
extern const uint8 BSW_kau8IntBswSvnRev[2];
extern const uint8 BSW_kau8IntBootSvnRev[2];
extern const uint8 BSW_kau8IntFpgaSvnRev[2];
extern const uint8 BSW_kau8IntCpldSvnRev[2];
extern const uint8 BSW_kau8IntHwSvnRev[2];
extern const uint8 BSW_kau8IntAddlInfo[8];


# 1 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW_VER_MemMap.h" 1
# 92 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW_VER_MemMap.h"
#pragma section
# 105 ".\\output\\inc/..\\..\\bswcdd\\BSW\\BSW.h" 2






void BSW_vidInit(void);
void BSW_vidSetOcDataNotRatFlg(const boolean);
void GBSW_vidSetOcDataNotRatFlg(const boolean);
uint8 BSW_u8GetSelfChkErrSts(void);
boolean BSW_bGetBswReadySts(void);
# 2 ".\\output\\inc/BSW.h" 2
# 26 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c" 2
# 1 ".\\output\\inc/BLDC.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC.h" 1
# 41 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 42 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC.h" 2
# 58 ".\\output\\inc/..\\..\\bswcdd\\BLDC\\BLDC.h"
void BLDCDev_vidInit(const uint8 ku8DevID);
void BLDCDev_vidMotorStateMng(const uint8 ku8DevID);
void BLDCDev_vidMotPosPwmMng(const uint8 ku8DevID);
void BLDCDev_vidGetPosSigPerd(const uint8 ku8DevID, uint32* pu32PosSigPerd);
void BLDCDev_vidGetPositionDuty(const uint8 ku8DevID, float32* pf32PosDuty);
extern boolean BLDC_bPwmIsReady(void);
void BLDCDev_vidHallDiagMainfunction(const uint8 ku8DevID, const uint8 u8CurHallStt);
uint8 BLDCDev_u8GetHallStt(const uint8 ku8DevID);
void BLDCDev_vidChgHallPattern(const uint8 ku8DevID);
void BLDCDev_vidSetPwmBcDuty(const uint8 ku8DevID, const float32 f32Duty);

uint8 BLDCDev_u8GetHallState(const uint8 ku8DevID);
uint8 BLDCDev_u8GetCurDirSts(const uint8 ku8DevID);
uint8 BLDCDev_u8GetDutyModeStt(const uint8 ku8DevID);
boolean BLDCDev_bGetHallUndefFlt(const uint8 ku8DevID);
boolean BLDCDev_bGetHallInvalidFlt(const uint8 ku8DevID);
boolean BLDCDev_bGetP5vAD2SOverVolFlt(const uint8 ku8DevID);
boolean BLDCDev_bGetP5vAD2SUnderVolFlt(const uint8 ku8DevID);
boolean BLDCDev_bGetUvwShortGnd(const uint8 ku8DevID);
boolean BLDCDev_bGetUvwShortVs(const uint8 ku8DevID);
# 2 ".\\output\\inc/BLDC.h" 2
# 27 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c" 2
# 40 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c"
# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 140 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section ".text" ax
# 41 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c" 2
boolean TLE9180_bHalBatIsNormal(void)
{
   uint16 u16AdVal;
   boolean bIsNormal = (0 != 0);



   TLE9180_f32BatteryVoltage = ((float32)u16AdVal * 0.0124) + 0.1336;

   if(TLE9180_f32BatteryVoltage >= TLE9180_kf32BatteryVolValidThrdC)
   {
      bIsNormal = (1 != 0);
   }

   return bIsNormal;
}

boolean TLE9180_bHalSysIsReady(void)
{
   boolean bTcuReadySts;

   bTcuReadySts = BSW_bGetBswReadySts();

   return bTcuReadySts;
}

boolean TLE9180_bHalPwmIsReady(void)
{
   boolean bPwmReadySts;

   bPwmReadySts = BLDC_bPwmIsReady();

   return bPwmReadySts;
}

boolean TLE9180_bHalICIsNormal(void)
{
   boolean bICIsNormal;
   uint16 u16LocTempVal;


   bICIsNormal = (u16LocTempVal != 0x00)? (1 != 0) : (0 != 0);

   return bICIsNormal;
}

void TLE9180_vidHalWriteEnaPin(const CDD_ePinLevel kePinLevel)
{

}

void TLE9180_vidHalWriteSoffPin(const CDD_ePinLevel kePinLevel)
{

}

void TLE9180_vidHalWriteInhPin(const CDD_ePinLevel kePinLevel)
{

}


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 181 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section
# 104 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c" 2





# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 140 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section ".text" ax
# 110 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c" 2


# 1 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h" 1
# 181 "bswcdd\\PreDriver\\TLE9180\\TLE9180_MemMap.h"
#pragma section
# 113 "bswcdd\\PreDriver\\TLE9180\\TLE9180_HAL.c" 2
