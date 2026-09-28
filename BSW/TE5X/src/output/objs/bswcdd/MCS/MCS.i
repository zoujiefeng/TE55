# 1 "bswcdd\\MCS\\MCS.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\MCS\\MCS.c"
# 25 "bswcdd\\MCS\\MCS.c"
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
# 26 "bswcdd\\MCS\\MCS.c" 2
# 1 ".\\output\\inc/Std_Limits.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Limits.h" 1
# 2 ".\\output\\inc/Std_Limits.h" 2
# 27 "bswcdd\\MCS\\MCS.c" 2

# 1 "bswcdd\\MCS\\MCS.h" 1
# 26 "bswcdd\\MCS\\MCS.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 27 "bswcdd\\MCS\\MCS.h" 2
# 1 ".\\output\\inc/Std_Limits.h" 1
# 28 "bswcdd\\MCS\\MCS.h" 2
# 1 "bswcdd\\MCS\\MCS0.h" 1
# 29 "bswcdd\\MCS\\MCS.h" 2
# 1 ".\\output\\inc/IfxGtm_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h" 2
# 73 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef struct _Ifx_GTM_ACCEN0_Bits
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
} Ifx_GTM_ACCEN0_Bits;


typedef struct _Ifx_GTM_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_GTM_ACCEN1_Bits;


typedef struct _Ifx_GTM_ADCTRIG_OUT0_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit SEL4:4;
    Ifx_UReg_32Bit SEL5:4;
    Ifx_UReg_32Bit SEL6:4;
    Ifx_UReg_32Bit SEL7:4;
} Ifx_GTM_ADCTRIG_OUT0_Bits;


typedef struct _Ifx_GTM_ADCTRIG_OUT1_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GTM_ADCTRIG_OUT1_Bits;


typedef struct _Ifx_GTM_AEI_ADDR_XPT_Bits
{
    volatile unsigned int TO_ADDR:20;
    volatile unsigned int TO_W1R0:1;
    volatile unsigned int reserved_21:11;
} Ifx_GTM_AEI_ADDR_XPT_Bits;


typedef struct _Ifx_GTM_AEI_STA_XPT_Bits
{
    volatile unsigned int ADDR:20;
    volatile unsigned int W1R0:1;
    volatile unsigned int reserved_21:11;
} Ifx_GTM_AEI_STA_XPT_Bits;


typedef struct _Ifx_GTM_ARU_ACCESS_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int RREQ:1;
    volatile unsigned int WREQ:1;
    volatile unsigned int reserved_14:18;
} Ifx_GTM_ARU_ACCESS_Bits;


typedef struct _Ifx_GTM_ARU_CADDR_Bits
{
    volatile unsigned int CADDR_0:7;
    volatile unsigned int reserved_7:9;
    volatile unsigned int CADDR_1:7;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_ARU_CADDR_Bits;


typedef struct _Ifx_GTM_ARU_CADDR_END_Bits
{
    volatile unsigned int CADDR_END:7;
    volatile unsigned int reserved_7:25;
} Ifx_GTM_ARU_CADDR_END_Bits;


typedef struct _Ifx_GTM_ARU_CTRL_Bits
{
    volatile unsigned int ARU_0_DYN_EN:2;
    volatile unsigned int ARU_1_DYN_EN:2;
    volatile unsigned int ARU_DYN_RING_MODE:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_ARU_CTRL_Bits;


typedef struct _Ifx_GTM_ARU_DATA_H_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DATA_H_Bits;


typedef struct _Ifx_GTM_ARU_DATA_L_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DATA_L_Bits;


typedef struct _Ifx_GTM_ARU_DBG_ACCESS0_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_ARU_DBG_ACCESS0_Bits;


typedef struct _Ifx_GTM_ARU_DBG_ACCESS1_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_ARU_DBG_ACCESS1_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA0_H_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DBG_DATA0_H_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA0_L_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DBG_DATA0_L_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA1_H_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DBG_DATA1_H_Bits;


typedef struct _Ifx_GTM_ARU_DBG_DATA1_L_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DBG_DATA1_L_Bits;


typedef struct _Ifx_GTM_ARU_DYN_CTRL_Bits
{
    volatile unsigned int DYN_ARU_UPDATE_EN:1;
    volatile unsigned int DYN_ROUTE_SWAP:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ARU_DYN_CTRL_Bits;


typedef struct _Ifx_GTM_ARU_DYN_RDADDR_Bits
{
    volatile unsigned int DYN_ARU_RDADDR:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_ARU_DYN_RDADDR_Bits;


typedef struct _Ifx_GTM_ARU_DYN_ROUTE_HIGH_Bits
{
    volatile unsigned int DYN_READ_ID3:8;
    volatile unsigned int DYN_READ_ID4:8;
    volatile unsigned int DYN_READ_ID5:8;
    volatile unsigned int DYN_CLK_WAIT:4;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_ARU_DYN_ROUTE_HIGH_Bits;


typedef struct _Ifx_GTM_ARU_DYN_ROUTE_LOW_Bits
{
    volatile unsigned int DYN_READ_ID0:8;
    volatile unsigned int DYN_READ_ID1:8;
    volatile unsigned int DYN_READ_ID2:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ARU_DYN_ROUTE_LOW_Bits;


typedef struct _Ifx_GTM_ARU_DYN_ROUTE_SR_HIGH_Bits
{
    volatile unsigned int DYN_READ_ID9:8;
    volatile unsigned int DYN_READ_ID10:8;
    volatile unsigned int DYN_READ_ID11:8;
    volatile unsigned int DYN_CLK_WAIT:4;
    volatile unsigned int DYN_UPDATE_EN:1;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ARU_DYN_ROUTE_SR_HIGH_Bits;


typedef struct _Ifx_GTM_ARU_DYN_ROUTE_SR_LOW_Bits
{
    volatile unsigned int DYN_READ_ID6:8;
    volatile unsigned int DYN_READ_ID7:8;
    volatile unsigned int DYN_READ_ID8:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ARU_DYN_ROUTE_SR_LOW_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_EN_Bits
{
    volatile unsigned int NEW_DATA0_IRQ_EN:1;
    volatile unsigned int NEW_DATA1_IRQ_EN:1;
    volatile unsigned int ACC_ACK_IRQ_EN:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_ARU_IRQ_EN_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_NEW_DATA0:1;
    volatile unsigned int TRG_NEW_DATA1:1;
    volatile unsigned int TRG_ACC_ACK:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_ARU_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ARU_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_ARU_IRQ_NOTIFY_Bits
{
    volatile unsigned int NEW_DATA0:1;
    volatile unsigned int NEW_DATA1:1;
    volatile unsigned int ACC_ACK:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_ARU_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_ACT_TB_Bits
{
    volatile unsigned int ACT_TB:24;
    volatile unsigned int TB_TRIG:1;
    volatile unsigned int TBU_SEL:2;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_ATOM_AGC_ACT_TB_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0:2;
    volatile unsigned int ENDIS_CTRL1:2;
    volatile unsigned int ENDIS_CTRL2:2;
    volatile unsigned int ENDIS_CTRL3:2;
    volatile unsigned int ENDIS_CTRL4:2;
    volatile unsigned int ENDIS_CTRL5:2;
    volatile unsigned int ENDIS_CTRL6:2;
    volatile unsigned int ENDIS_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_CTRL0:2;
    volatile unsigned int ENDIS_CTRL1:2;
    volatile unsigned int ENDIS_CTRL2:2;
    volatile unsigned int ENDIS_CTRL3:2;
    volatile unsigned int ENDIS_CTRL4:2;
    volatile unsigned int ENDIS_CTRL5:2;
    volatile unsigned int ENDIS_CTRL6:2;
    volatile unsigned int ENDIS_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0:2;
    volatile unsigned int FUPD_CTRL1:2;
    volatile unsigned int FUPD_CTRL2:2;
    volatile unsigned int FUPD_CTRL3:2;
    volatile unsigned int FUPD_CTRL4:2;
    volatile unsigned int FUPD_CTRL5:2;
    volatile unsigned int FUPD_CTRL6:2;
    volatile unsigned int FUPD_CTRL7:2;
    volatile unsigned int RSTCN0_CH0:2;
    volatile unsigned int RSTCN0_CH1:2;
    volatile unsigned int RSTCN0_CH2:2;
    volatile unsigned int RSTCN0_CH3:2;
    volatile unsigned int RSTCN0_CH4:2;
    volatile unsigned int RSTCN0_CH5:2;
    volatile unsigned int RSTCN0_CH6:2;
    volatile unsigned int RSTCN0_CH7:2;
} Ifx_GTM_ATOM_AGC_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG:1;
    volatile unsigned int reserved_1:7;
    volatile unsigned int RST_CH0:1;
    volatile unsigned int RST_CH1:1;
    volatile unsigned int RST_CH2:1;
    volatile unsigned int RST_CH3:1;
    volatile unsigned int RST_CH4:1;
    volatile unsigned int RST_CH5:1;
    volatile unsigned int RST_CH6:1;
    volatile unsigned int RST_CH7:1;
    volatile unsigned int UPEN_CTRL0:2;
    volatile unsigned int UPEN_CTRL1:2;
    volatile unsigned int UPEN_CTRL2:2;
    volatile unsigned int UPEN_CTRL3:2;
    volatile unsigned int UPEN_CTRL4:2;
    volatile unsigned int UPEN_CTRL5:2;
    volatile unsigned int UPEN_CTRL6:2;
    volatile unsigned int UPEN_CTRL7:2;
} Ifx_GTM_ATOM_AGC_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0:2;
    volatile unsigned int INT_TRIG1:2;
    volatile unsigned int INT_TRIG2:2;
    volatile unsigned int INT_TRIG3:2;
    volatile unsigned int INT_TRIG4:2;
    volatile unsigned int INT_TRIG5:2;
    volatile unsigned int INT_TRIG6:2;
    volatile unsigned int INT_TRIG7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_INT_TRIG_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0:2;
    volatile unsigned int OUTEN_CTRL1:2;
    volatile unsigned int OUTEN_CTRL2:2;
    volatile unsigned int OUTEN_CTRL3:2;
    volatile unsigned int OUTEN_CTRL4:2;
    volatile unsigned int OUTEN_CTRL5:2;
    volatile unsigned int OUTEN_CTRL6:2;
    volatile unsigned int OUTEN_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_AGC_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0:2;
    volatile unsigned int OUTEN_STAT1:2;
    volatile unsigned int OUTEN_STAT2:2;
    volatile unsigned int OUTEN_STAT3:2;
    volatile unsigned int OUTEN_STAT4:2;
    volatile unsigned int OUTEN_STAT5:2;
    volatile unsigned int OUTEN_STAT6:2;
    volatile unsigned int OUTEN_STAT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_ATOM_AGC_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CM0_Bits
{
    volatile unsigned int CM0:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_CM0_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CM1_Bits
{
    volatile unsigned int CM1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_CM1_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CN0_Bits
{
    volatile unsigned int CN0:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_CN0_Bits;


typedef struct _Ifx_GTM_ATOM_CH_CTRL_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int TB12_SEL:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB:5;
    volatile unsigned int CMP_CTRL:1;
    volatile unsigned int EUPM:1;
    volatile unsigned int SL:1;
    volatile unsigned int CLK_SRC_SR:3;
    volatile unsigned int ECLK_SRC:1;
    volatile unsigned int WR_REQ:1;
    volatile unsigned int TRIG_PULSE:1;
    volatile unsigned int UDMODE:2;
    volatile unsigned int RST_CCU0:1;
    volatile unsigned int OSM_TRIG:1;
    volatile unsigned int EXT_TRIG:1;
    volatile unsigned int EXTTRIGOUT:1;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int SLA:1;
    volatile unsigned int OSM:1;
    volatile unsigned int ABM:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int EXT_FUPD:1;
    volatile unsigned int SOMB:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_ATOM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_EN_Bits
{
    volatile unsigned int CCU0TC_IRQ_EN:1;
    volatile unsigned int CCU1TC_IRQ_EN:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ATOM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_CCU0TC:1;
    volatile unsigned int TRG_CCU1TC:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ATOM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ATOM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_ATOM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int CCU0TC:1;
    volatile unsigned int CCU1TC:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_ATOM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_ATOM_CH_RDADDR_Bits
{
    volatile unsigned int RDADDR0:9;
    volatile unsigned int reserved_9:7;
    volatile unsigned int RDADDR1:9;
    volatile unsigned int reserved_25:7;
} Ifx_GTM_ATOM_CH_RDADDR_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMB_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int TB12_SEL:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB_1_0:2;
    volatile unsigned int ACB_4_3_2:3;
    volatile unsigned int CMP_CTRL:1;
    volatile unsigned int EUPM:1;
    volatile unsigned int SL:1;
    volatile unsigned int reserved_12:3;
    volatile unsigned int reserved_15:1;
    volatile unsigned int WR_REQ:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:2;
    volatile unsigned int EXTTRIGOUT:1;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int ABM:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int SOMB:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_ATOM_CH_SOMB_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMC_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int TB12_SEL:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB_1_0:2;
    volatile unsigned int ACB_4_3_2:3;
    volatile unsigned int CMP_CTRL:1;
    volatile unsigned int EUPM:1;
    volatile unsigned int SL:1;
    volatile unsigned int reserved_12:3;
    volatile unsigned int reserved_15:1;
    volatile unsigned int WR_REQ:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:2;
    volatile unsigned int EXTTRIGOUT:1;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int SLA:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int ABM:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_ATOM_CH_SOMC_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMI_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int reserved_2:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB0:1;
    volatile unsigned int reserved_5:4;
    volatile unsigned int reserved_9:1;
    volatile unsigned int reserved_10:1;
    volatile unsigned int SL:1;
    volatile unsigned int reserved_12:3;
    volatile unsigned int reserved_15:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:3;
    volatile unsigned int reserved_24:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_ATOM_CH_SOMI_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMP_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int reserved_2:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ADL:2;
    volatile unsigned int BITREV:1;
    volatile unsigned int SR0_TRIG:1;
    volatile unsigned int reserved_8:1;
    volatile unsigned int reserved_9:1;
    volatile unsigned int reserved_10:1;
    volatile unsigned int SL:1;
    volatile unsigned int CLK_SRC_SR:3;
    volatile unsigned int ECLK_SRC:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int TRIG_PULSE:1;
    volatile unsigned int UDMODE:2;
    volatile unsigned int RST_CCU0:1;
    volatile unsigned int OSM_TRIG:1;
    volatile unsigned int EXT_TRIG:1;
    volatile unsigned int EXTTRIGOUT:1;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int OSM:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int EXT_FUPD:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_ATOM_CH_SOMP_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SOMS_Bits
{
    volatile unsigned int MODE:2;
    volatile unsigned int reserved_2:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int ACB0:1;
    volatile unsigned int reserved_5:2;
    volatile unsigned int DSO:1;
    volatile unsigned int reserved_8:1;
    volatile unsigned int reserved_9:1;
    volatile unsigned int reserved_10:1;
    volatile unsigned int SL:1;
    volatile unsigned int CLK_SRC_SR:3;
    volatile unsigned int ECLK_SRC:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int reserved_17:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int reserved_20:1;
    volatile unsigned int reserved_21:3;
    volatile unsigned int reserved_24:1;
    volatile unsigned int reserved_25:1;
    volatile unsigned int OSM:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int EXT_FUPD:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_ATOM_CH_SOMS_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SR0_Bits
{
    volatile unsigned int SR0:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_SR0_Bits;


typedef struct _Ifx_GTM_ATOM_CH_SR1_Bits
{
    volatile unsigned int SR1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ATOM_CH_SR1_Bits;


typedef struct _Ifx_GTM_ATOM_CH_STAT_Bits
{
    volatile unsigned int OL:1;
    volatile unsigned int reserved_1:15;
    volatile unsigned int ACBI:5;
    volatile unsigned int DV:1;
    volatile unsigned int WRF:1;
    volatile unsigned int DR:1;
    volatile unsigned int ACBO:5;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_ATOM_CH_STAT_Bits;


typedef struct _Ifx_GTM_AUX_IN_SRC_TIM_Bits
{
    volatile unsigned int SRC_CH0:1;
    volatile unsigned int SRC_CH1:1;
    volatile unsigned int SRC_CH2:1;
    volatile unsigned int SRC_CH3:1;
    volatile unsigned int SRC_CH4:1;
    volatile unsigned int SRC_CH5:1;
    volatile unsigned int SRC_CH6:1;
    volatile unsigned int SRC_CH7:1;
    volatile unsigned int reserved_8:8;
    volatile unsigned int SEL_OUT_N_CH0:1;
    volatile unsigned int SEL_OUT_N_CH1:1;
    volatile unsigned int SEL_OUT_N_CH2:1;
    volatile unsigned int SEL_OUT_N_CH3:1;
    volatile unsigned int SEL_OUT_N_CH4:1;
    volatile unsigned int SEL_OUT_N_CH5:1;
    volatile unsigned int SEL_OUT_N_CH6:1;
    volatile unsigned int SEL_OUT_N_CH7:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_AUX_IN_SRC_TIM_Bits;


typedef struct _Ifx_GTM_BRC_EIRQ_EN_Bits
{
    volatile unsigned int DEST_ERR_EIRQ_EN:1;
    volatile unsigned int DID_EIRQ_EN0:1;
    volatile unsigned int DID_EIRQ_EN1:1;
    volatile unsigned int DID_EIRQ_EN2:1;
    volatile unsigned int DID_EIRQ_EN3:1;
    volatile unsigned int DID_EIRQ_EN4:1;
    volatile unsigned int DID_EIRQ_EN5:1;
    volatile unsigned int DID_EIRQ_EN6:1;
    volatile unsigned int DID_EIRQ_EN7:1;
    volatile unsigned int DID_EIRQ_EN8:1;
    volatile unsigned int DID_EIRQ_EN9:1;
    volatile unsigned int DID_EIRQ_EN10:1;
    volatile unsigned int DID_EIRQ_EN11:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_EN_Bits
{
    volatile unsigned int DEST_ERR_IRQ_EN:1;
    volatile unsigned int DID_IRQ_EN0:1;
    volatile unsigned int DID_IRQ_EN1:1;
    volatile unsigned int DID_IRQ_EN2:1;
    volatile unsigned int DID_IRQ_EN3:1;
    volatile unsigned int DID_IRQ_EN4:1;
    volatile unsigned int DID_IRQ_EN5:1;
    volatile unsigned int DID_IRQ_EN6:1;
    volatile unsigned int DID_IRQ_EN7:1;
    volatile unsigned int DID_IRQ_EN8:1;
    volatile unsigned int DID_IRQ_EN9:1;
    volatile unsigned int DID_IRQ_EN10:1;
    volatile unsigned int DID_IRQ_EN11:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_IRQ_EN_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_DEST_ERR:1;
    volatile unsigned int TRG_DID0:1;
    volatile unsigned int TRG_DID1:1;
    volatile unsigned int TRG_DID2:1;
    volatile unsigned int TRG_DID3:1;
    volatile unsigned int TRG_DID4:1;
    volatile unsigned int TRG_DID5:1;
    volatile unsigned int TRG_DID6:1;
    volatile unsigned int TRG_DID7:1;
    volatile unsigned int TRG_DID8:1;
    volatile unsigned int TRG_DID9:1;
    volatile unsigned int TRG_DID10:1;
    volatile unsigned int TRG_DID11:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_BRC_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_BRC_IRQ_NOTIFY_Bits
{
    volatile unsigned int DEST_ERR:1;
    volatile unsigned int DID0:1;
    volatile unsigned int DID1:1;
    volatile unsigned int DID2:1;
    volatile unsigned int DID3:1;
    volatile unsigned int DID4:1;
    volatile unsigned int DID5:1;
    volatile unsigned int DID6:1;
    volatile unsigned int DID7:1;
    volatile unsigned int DID8:1;
    volatile unsigned int DID9:1;
    volatile unsigned int DID10:1;
    volatile unsigned int DID11:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_BRC_RST_Bits
{
    volatile unsigned int RST:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_BRC_RST_Bits;


typedef struct _Ifx_GTM_BRC_SRC_ADDR_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:3;
    volatile unsigned int BRC_MODE:1;
    volatile unsigned int reserved_13:19;
} Ifx_GTM_BRC_SRC_ADDR_Bits;


typedef struct _Ifx_GTM_BRC_SRC_DEST_Bits
{
    volatile unsigned int EN_DEST0:1;
    volatile unsigned int EN_DEST1:1;
    volatile unsigned int EN_DEST2:1;
    volatile unsigned int EN_DEST3:1;
    volatile unsigned int EN_DEST4:1;
    volatile unsigned int EN_DEST5:1;
    volatile unsigned int EN_DEST6:1;
    volatile unsigned int EN_DEST7:1;
    volatile unsigned int EN_DEST8:1;
    volatile unsigned int EN_DEST9:1;
    volatile unsigned int EN_DEST10:1;
    volatile unsigned int EN_DEST11:1;
    volatile unsigned int EN_DEST12:1;
    volatile unsigned int EN_DEST13:1;
    volatile unsigned int EN_DEST14:1;
    volatile unsigned int EN_DEST15:1;
    volatile unsigned int EN_DEST16:1;
    volatile unsigned int EN_DEST17:1;
    volatile unsigned int EN_DEST18:1;
    volatile unsigned int EN_DEST19:1;
    volatile unsigned int EN_DEST20:1;
    volatile unsigned int EN_DEST21:1;
    volatile unsigned int EN_TRASHBIN:1;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_BRC_SRC_DEST_Bits;


typedef struct _Ifx_GTM_BRIDGE_MODE_Bits
{
    volatile unsigned int BRG_MODE:1;
    volatile unsigned int MSK_WR_RSP:1;
    volatile unsigned int BYPASS_SYNC:1;
    volatile unsigned int reserved_3:5;
    volatile unsigned int MODE_UP_PGR:1;
    volatile unsigned int BUFF_OVL:1;
    volatile unsigned int reserved_10:2;
    volatile unsigned int SYNC_INPUT_REG:1;
    volatile unsigned int reserved_13:3;
    volatile unsigned int BRG_RST:1;
    volatile unsigned int reserved_17:7;
    volatile unsigned int BUFF_DPT:8;
} Ifx_GTM_BRIDGE_MODE_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR1_Bits
{
    volatile unsigned int NEW_TRAN_PTR:5;
    volatile unsigned int FIRST_RSP_PTR:5;
    volatile unsigned int TRAN_IN_PGR:5;
    volatile unsigned int ABT_TRAN_PGR:5;
    volatile unsigned int FBC:6;
    volatile unsigned int RSP_TRAN_RDY:6;
} Ifx_GTM_BRIDGE_PTR1_Bits;


typedef struct _Ifx_GTM_BRIDGE_PTR2_Bits
{
    volatile unsigned int TRAN_IN_PGR2:5;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_BRIDGE_PTR2_Bits;


typedef struct _Ifx_GTM_CANOUTSEL0_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit SEL4:4;
    Ifx_UReg_32Bit SEL5:4;
    Ifx_UReg_32Bit SEL6:4;
    Ifx_UReg_32Bit SEL7:4;
} Ifx_GTM_CANOUTSEL0_Bits;


typedef struct _Ifx_GTM_CANOUTSEL1_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GTM_CANOUTSEL1_Bits;


typedef struct _Ifx_GTM_CCM_AEIM_STA_Bits
{
    volatile unsigned int AEIM_XPT_ADDR:16;
    volatile unsigned int reserved_16:8;
    volatile unsigned int AEIM_XPT_STA:2;
    volatile unsigned int reserved_26:6;
} Ifx_GTM_CCM_AEIM_STA_Bits;


typedef struct _Ifx_GTM_CCM_ARP_CTRL_Bits
{
    volatile unsigned int ADDR:16;
    volatile unsigned int SIZE:4;
    volatile unsigned int reserved_20:4;
    volatile unsigned int DIS_PROT:1;
    volatile unsigned int reserved_25:6;
    volatile unsigned int WPROT_AEI:1;
} Ifx_GTM_CCM_ARP_CTRL_Bits;


typedef struct _Ifx_GTM_CCM_ARP_PROT_Bits
{
    volatile unsigned int WPROT0:1;
    volatile unsigned int WPROT1:1;
    volatile unsigned int WPROT2:1;
    volatile unsigned int WPROT3:1;
    volatile unsigned int WPROT4:1;
    volatile unsigned int WPROT5:1;
    volatile unsigned int WPROT6:1;
    volatile unsigned int WPROT7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_CCM_ARP_PROT_Bits;


typedef struct _Ifx_GTM_CCM_ATOM_OUT_Bits
{
    volatile unsigned int ATOM_I_OUT:8;
    volatile unsigned int ATOM_I_OUT_N:8;
    volatile unsigned int ATOM_IP1_OUT:8;
    volatile unsigned int ATOM_IP1_OUT_N:8;
} Ifx_GTM_CCM_ATOM_OUT_Bits;


typedef struct _Ifx_GTM_CCM_CFG_Bits
{
    volatile unsigned int EN_TIM:1;
    volatile unsigned int EN_TOM_SPE_TDTM:1;
    volatile unsigned int EN_ATOM_ADTM:1;
    volatile unsigned int EN_MCS:1;
    volatile unsigned int EN_DPLL_MAP:1;
    volatile unsigned int EN_BRC:1;
    volatile unsigned int EN_PSM:1;
    volatile unsigned int EN_CMP_MON:1;
    volatile unsigned int reserved_8:8;
    volatile unsigned int CLS_CLK_DIV:2;
    volatile unsigned int reserved_18:12;
    volatile unsigned int TBU_DIR1:1;
    volatile unsigned int TBU_DIR2:1;
} Ifx_GTM_CCM_CFG_Bits;


typedef struct _Ifx_GTM_CCM_CMU_CLK_CFG_Bits
{
    volatile unsigned int CLK0_SRC:2;
    volatile unsigned int reserved_2:2;
    volatile unsigned int CLK1_SRC:2;
    volatile unsigned int reserved_6:2;
    volatile unsigned int CLK2_SRC:2;
    volatile unsigned int reserved_10:2;
    volatile unsigned int CLK3_SRC:2;
    volatile unsigned int reserved_14:2;
    volatile unsigned int CLK4_SRC:2;
    volatile unsigned int reserved_18:2;
    volatile unsigned int CLK5_SRC:2;
    volatile unsigned int reserved_22:2;
    volatile unsigned int CLK6_SRC:2;
    volatile unsigned int reserved_26:2;
    volatile unsigned int CLK7_SRC:2;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_CCM_CMU_CLK_CFG_Bits;


typedef struct _Ifx_GTM_CCM_CMU_FXCLK_CFG_Bits
{
    volatile unsigned int FXCLK0_SRC:4;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_CCM_CMU_FXCLK_CFG_Bits;


typedef struct _Ifx_GTM_CCM_EXT_CAP_EN_Bits
{
    volatile unsigned int TIM_I_EXT_CAP_EN:8;
    volatile unsigned int TIM_IP1_EXT_CAP_EN:8;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_CCM_EXT_CAP_EN_Bits;


typedef struct _Ifx_GTM_CCM_HW_CONF_Bits
{
    volatile unsigned int GRSTEN:1;
    volatile unsigned int BRIDGE_MODE_RST:1;
    volatile unsigned int SYNC_INPUT_REG:1;
    volatile unsigned int CFG_CLOCK_RATE:1;
    volatile unsigned int ATOM_OUT_RST:1;
    volatile unsigned int ATOM_TRIG_CHAIN:3;
    volatile unsigned int TOM_OUT_RST:1;
    volatile unsigned int TOM_TRIG_CHAIN:3;
    volatile unsigned int RAM_INIT_RST:1;
    volatile unsigned int ERM:1;
    volatile unsigned int ARU_CONNECT_CONFIG:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int IRQ_MODE_LEVEL:1;
    volatile unsigned int IRQ_MODE_PULSE:1;
    volatile unsigned int IRQ_MODE_PULSE_NOTIFY:1;
    volatile unsigned int IRQ_MODE_SINGLE_PULSE:1;
    volatile unsigned int ATOM_TRIG_INTCHAIN:4;
    volatile unsigned int TOM_TRIG_INTCHAIN:5;
    volatile unsigned int INT_CLK_EN_GEN:1;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_CCM_HW_CONF_Bits;


typedef struct _Ifx_GTM_CCM_PROT_Bits
{
    volatile unsigned int CLS_PROT:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_CCM_PROT_Bits;


typedef struct _Ifx_GTM_CCM_TIM_AUX_IN_SRC_Bits
{
    volatile unsigned int SRC_CH0:1;
    volatile unsigned int SRC_CH1:1;
    volatile unsigned int SRC_CH2:1;
    volatile unsigned int SRC_CH3:1;
    volatile unsigned int SRC_CH4:1;
    volatile unsigned int SRC_CH5:1;
    volatile unsigned int SRC_CH6:1;
    volatile unsigned int SRC_CH7:1;
    volatile unsigned int reserved_8:8;
    volatile unsigned int SEL_OUT_N_CH0:1;
    volatile unsigned int SEL_OUT_N_CH1:1;
    volatile unsigned int SEL_OUT_N_CH2:1;
    volatile unsigned int SEL_OUT_N_CH3:1;
    volatile unsigned int SEL_OUT_N_CH4:1;
    volatile unsigned int SEL_OUT_N_CH5:1;
    volatile unsigned int SEL_OUT_N_CH6:1;
    volatile unsigned int SEL_OUT_N_CH7:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CCM_TIM_AUX_IN_SRC_Bits;


typedef struct _Ifx_GTM_CCM_TOM_OUT_Bits
{
    volatile unsigned int TOM_OUT:16;
    volatile unsigned int TOM_OUT_N:16;
} Ifx_GTM_CCM_TOM_OUT_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CH_CTRL1_Bits
{
    volatile unsigned int O1SEL_0:1;
    volatile unsigned int I1SEL_0:1;
    volatile unsigned int reserved_2:1;
    volatile unsigned int SWAP_0:1;
    volatile unsigned int O1F_0:2;
    volatile unsigned int XDT_EN_0_1:1;
    volatile unsigned int reserved_7:1;
    volatile unsigned int O1SEL_1:1;
    volatile unsigned int I1SEL_1:1;
    volatile unsigned int SH_EN_1:1;
    volatile unsigned int SWAP_1:1;
    volatile unsigned int O1F_1:2;
    volatile unsigned int reserved_14:2;
    volatile unsigned int O1SEL_2:1;
    volatile unsigned int I1SEL_2:1;
    volatile unsigned int SH_EN_2:1;
    volatile unsigned int SWAP_2:1;
    volatile unsigned int O1F_2:2;
    volatile unsigned int XDT_EN_2_3:1;
    volatile unsigned int reserved_23:1;
    volatile unsigned int O1SEL_3:1;
    volatile unsigned int I1SEL_3:1;
    volatile unsigned int SH_EN_3:1;
    volatile unsigned int SWAP_3:1;
    volatile unsigned int O1F_3:2;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_CDTM_DTM_CH_CTRL1_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CH_CTRL2_Bits
{
    volatile unsigned int POL0_0:1;
    volatile unsigned int OC0_0:1;
    volatile unsigned int SL0_0:1;
    volatile unsigned int DT0_0:1;
    volatile unsigned int POL1_0:1;
    volatile unsigned int OC1_0:1;
    volatile unsigned int SL1_0:1;
    volatile unsigned int DT1_0:1;
    volatile unsigned int POL0_1:1;
    volatile unsigned int OC0_1:1;
    volatile unsigned int SL0_1:1;
    volatile unsigned int DT0_1:1;
    volatile unsigned int POL1_1:1;
    volatile unsigned int OC1_1:1;
    volatile unsigned int SL1_1:1;
    volatile unsigned int DT1_1:1;
    volatile unsigned int POL0_2:1;
    volatile unsigned int OC0_2:1;
    volatile unsigned int SL0_2:1;
    volatile unsigned int DT0_2:1;
    volatile unsigned int POL1_2:1;
    volatile unsigned int OC1_2:1;
    volatile unsigned int SL1_2:1;
    volatile unsigned int DT1_2:1;
    volatile unsigned int POL0_3:1;
    volatile unsigned int OC0_3:1;
    volatile unsigned int SL0_3:1;
    volatile unsigned int DT0_3:1;
    volatile unsigned int POL1_3:1;
    volatile unsigned int OC1_3:1;
    volatile unsigned int SL1_3:1;
    volatile unsigned int DT1_3:1;
} Ifx_GTM_CDTM_DTM_CH_CTRL2_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CH_CTRL2_SR_Bits
{
    volatile unsigned int POL0_0_SR:1;
    volatile unsigned int OC0_0_SR:1;
    volatile unsigned int SL0_0_SR:1;
    volatile unsigned int DT0_0_SR:1;
    volatile unsigned int POL1_0_SR:1;
    volatile unsigned int OC1_0_SR:1;
    volatile unsigned int SL1_0_SR:1;
    volatile unsigned int DT1_0_SR:1;
    volatile unsigned int POL0_1_SR:1;
    volatile unsigned int OC0_1_SR:1;
    volatile unsigned int SL0_1_SR:1;
    volatile unsigned int DT0_1_SR:1;
    volatile unsigned int POL1_1_SR:1;
    volatile unsigned int OC1_1_SR:1;
    volatile unsigned int SL1_1_SR:1;
    volatile unsigned int DT1_1_SR:1;
    volatile unsigned int POL0_2_SR:1;
    volatile unsigned int OC0_2_SR:1;
    volatile unsigned int SL0_2_SR:1;
    volatile unsigned int DT0_2_SR:1;
    volatile unsigned int POL1_2_SR:1;
    volatile unsigned int OC1_2_SR:1;
    volatile unsigned int SL1_2_SR:1;
    volatile unsigned int DT1_2_SR:1;
    volatile unsigned int POL0_3_SR:1;
    volatile unsigned int OC0_3_SR:1;
    volatile unsigned int SL0_3_SR:1;
    volatile unsigned int DT0_3_SR:1;
    volatile unsigned int POL1_3_SR:1;
    volatile unsigned int OC1_3_SR:1;
    volatile unsigned int SL1_3_SR:1;
    volatile unsigned int DT1_3_SR:1;
} Ifx_GTM_CDTM_DTM_CH_CTRL2_SR_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CH_CTRL3_Bits
{
    volatile unsigned int CII0:1;
    volatile unsigned int CIS0:1;
    volatile unsigned int TSEL0_0:1;
    volatile unsigned int TSEL1_0:1;
    volatile unsigned int reserved_4:4;
    volatile unsigned int CII1:1;
    volatile unsigned int CIS1:1;
    volatile unsigned int TSEL0_1:1;
    volatile unsigned int TSEL1_1:1;
    volatile unsigned int reserved_12:4;
    volatile unsigned int CII2:1;
    volatile unsigned int CIS2:1;
    volatile unsigned int TSEL0_2:1;
    volatile unsigned int TSEL1_2:1;
    volatile unsigned int reserved_20:4;
    volatile unsigned int CII3:1;
    volatile unsigned int CIS3:1;
    volatile unsigned int TSEL0_3:1;
    volatile unsigned int TSEL1_3:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_CDTM_DTM_CH_CTRL3_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CH_DTV_Bits
{
    volatile unsigned int RELRISE:10;
    volatile unsigned int reserved_10:6;
    volatile unsigned int RELFALL:10;
    volatile unsigned int reserved_26:6;
} Ifx_GTM_CDTM_DTM_CH_DTV_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CH_SR_Bits
{
    volatile unsigned int SL0_0_SR_SR:1;
    volatile unsigned int SL1_0_SR_SR:1;
    volatile unsigned int SL0_1_SR_SR:1;
    volatile unsigned int SL1_1_SR_SR:1;
    volatile unsigned int SL0_2_SR_SR:1;
    volatile unsigned int SL1_2_SR_SR:1;
    volatile unsigned int SL0_3_SR_SR:1;
    volatile unsigned int SL1_3_SR_SR:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_CDTM_DTM_CH_SR_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_CTRL_Bits
{
    volatile unsigned int CLK_SEL:2;
    volatile unsigned int DTM_SEL:2;
    volatile unsigned int UPD_MODE:3;
    volatile unsigned int reserved_7:1;
    volatile unsigned int SR_UPD_EN:1;
    volatile unsigned int reserved_9:7;
    volatile unsigned int SHUT_OFF_RST:1;
    volatile unsigned int reserved_17:15;
} Ifx_GTM_CDTM_DTM_CTRL_Bits;


typedef struct _Ifx_GTM_CDTM_DTM_PS_CTRL_Bits
{
    volatile unsigned int RELBLK:10;
    volatile unsigned int reserved_10:6;
    volatile unsigned int PSU_IN_SEL:1;
    volatile unsigned int IN_POL:1;
    volatile unsigned int TIM_SEL:1;
    volatile unsigned int reserved_19:1;
    volatile unsigned int SHIFT_SEL:2;
    volatile unsigned int reserved_22:10;
} Ifx_GTM_CDTM_DTM_PS_CTRL_Bits;


typedef struct _Ifx_GTM_CFG_Bits
{
    volatile unsigned int SRC_IN_MUX:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_CFG_Bits;


typedef struct _Ifx_GTM_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_GTM_CLC_Bits;


typedef struct _Ifx_GTM_CLS_CLK_CFG_Bits
{
    volatile unsigned int CLS0_CLK_DIV:2;
    volatile unsigned int CLS1_CLK_DIV:2;
    volatile unsigned int CLS2_CLK_DIV:2;
    volatile unsigned int CLS3_CLK_DIV:2;
    volatile unsigned int CLS4_CLK_DIV:2;
    volatile unsigned int CLS5_CLK_DIV:2;
    volatile unsigned int CLS6_CLK_DIV:2;
    volatile unsigned int CLS7_CLK_DIV:2;
    volatile unsigned int CLS8_CLK_DIV:2;
    volatile unsigned int reserved_18:2;
    volatile unsigned int reserved_20:2;
    volatile unsigned int reserved_22:2;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CLS_CLK_CFG_Bits;


typedef struct _Ifx_GTM_CMP_EIRQ_EN_Bits
{
    volatile unsigned int ABWC0_EN_EIRQ:1;
    volatile unsigned int ABWC1_EN_EIRQ:1;
    volatile unsigned int ABWC2_EN_EIRQ:1;
    volatile unsigned int ABWC3_EN_EIRQ:1;
    volatile unsigned int ABWC4_EN_EIRQ:1;
    volatile unsigned int ABWC5_EN_EIRQ:1;
    volatile unsigned int ABWC6_EN_EIRQ:1;
    volatile unsigned int ABWC7_EN_EIRQ:1;
    volatile unsigned int ABWC8_EN_EIRQ:1;
    volatile unsigned int ABWC9_EN_EIRQ:1;
    volatile unsigned int ABWC10_EN_EIRQ:1;
    volatile unsigned int ABWC11_EN_EIRQ:1;
    volatile unsigned int TBWC0_EN_EIRQ:1;
    volatile unsigned int TBWC1_EN_EIRQ:1;
    volatile unsigned int TBWC2_EN_EIRQ:1;
    volatile unsigned int TBWC3_EN_EIRQ:1;
    volatile unsigned int TBWC4_EN_EIRQ:1;
    volatile unsigned int TBWC5_EN_EIRQ:1;
    volatile unsigned int TBWC6_EN_EIRQ:1;
    volatile unsigned int TBWC7_EN_EIRQ:1;
    volatile unsigned int TBWC8_EN_EIRQ:1;
    volatile unsigned int TBWC9_EN_EIRQ:1;
    volatile unsigned int TBWC10_EN_EIRQ:1;
    volatile unsigned int TBWC11_EN_EIRQ:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_CMP_EN_Bits
{
    volatile unsigned int ABWC0_EN:1;
    volatile unsigned int ABWC1_EN:1;
    volatile unsigned int ABWC2_EN:1;
    volatile unsigned int ABWC3_EN:1;
    volatile unsigned int ABWC4_EN:1;
    volatile unsigned int ABWC5_EN:1;
    volatile unsigned int ABWC6_EN:1;
    volatile unsigned int ABWC7_EN:1;
    volatile unsigned int ABWC8_EN:1;
    volatile unsigned int ABWC9_EN:1;
    volatile unsigned int ABWC10_EN:1;
    volatile unsigned int ABWC11_EN:1;
    volatile unsigned int TBWC0_EN:1;
    volatile unsigned int TBWC1_EN:1;
    volatile unsigned int TBWC2_EN:1;
    volatile unsigned int TBWC3_EN:1;
    volatile unsigned int TBWC4_EN:1;
    volatile unsigned int TBWC5_EN:1;
    volatile unsigned int TBWC6_EN:1;
    volatile unsigned int TBWC7_EN:1;
    volatile unsigned int TBWC8_EN:1;
    volatile unsigned int TBWC9_EN:1;
    volatile unsigned int TBWC10_EN:1;
    volatile unsigned int TBWC11_EN:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_EN_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_EN_Bits
{
    volatile unsigned int ABWC0_EN_IRQ:1;
    volatile unsigned int ABWC1_EN_IRQ:1;
    volatile unsigned int ABWC2_EN_IRQ:1;
    volatile unsigned int ABWC3_EN_IRQ:1;
    volatile unsigned int ABWC4_EN_IRQ:1;
    volatile unsigned int ABWC5_EN_IRQ:1;
    volatile unsigned int ABWC6_EN_IRQ:1;
    volatile unsigned int ABWC7_EN_IRQ:1;
    volatile unsigned int ABWC8_EN_IRQ:1;
    volatile unsigned int ABWC9_EN_IRQ:1;
    volatile unsigned int ABWC10_EN_IRQ:1;
    volatile unsigned int ABWC11_EN_IRQ:1;
    volatile unsigned int TBWC0_EN_IRQ:1;
    volatile unsigned int TBWC1_EN_IRQ:1;
    volatile unsigned int TBWC2_EN_IRQ:1;
    volatile unsigned int TBWC3_EN_IRQ:1;
    volatile unsigned int TBWC4_EN_IRQ:1;
    volatile unsigned int TBWC5_EN_IRQ:1;
    volatile unsigned int TBWC6_EN_IRQ:1;
    volatile unsigned int TBWC7_EN_IRQ:1;
    volatile unsigned int TBWC8_EN_IRQ:1;
    volatile unsigned int TBWC9_EN_IRQ:1;
    volatile unsigned int TBWC10_EN_IRQ:1;
    volatile unsigned int TBWC11_EN_IRQ:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_IRQ_EN_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_ABWC0:1;
    volatile unsigned int TRG_ABWC1:1;
    volatile unsigned int TRG_ABWC2:1;
    volatile unsigned int TRG_ABWC3:1;
    volatile unsigned int TRG_ABWC4:1;
    volatile unsigned int TRG_ABWC5:1;
    volatile unsigned int TRG_ABWC6:1;
    volatile unsigned int TRG_ABWC7:1;
    volatile unsigned int TRG_ABWC8:1;
    volatile unsigned int TRG_ABWC9:1;
    volatile unsigned int TRG_ABWC10:1;
    volatile unsigned int TRG_ABWC11:1;
    volatile unsigned int TRG_TBWC0:1;
    volatile unsigned int TRG_TBWC1:1;
    volatile unsigned int TRG_TBWC2:1;
    volatile unsigned int TRG_TBWC3:1;
    volatile unsigned int TRG_TBWC4:1;
    volatile unsigned int TRG_TBWC5:1;
    volatile unsigned int TRG_TBWC6:1;
    volatile unsigned int TRG_TBWC7:1;
    volatile unsigned int TRG_TBWC8:1;
    volatile unsigned int TRG_TBWC9:1;
    volatile unsigned int TRG_TBWC10:1;
    volatile unsigned int TRG_TBWC11:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_CMP_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_CMP_IRQ_NOTIFY_Bits
{
    volatile unsigned int ABWC0:1;
    volatile unsigned int ABWC1:1;
    volatile unsigned int ABWC2:1;
    volatile unsigned int ABWC3:1;
    volatile unsigned int ABWC4:1;
    volatile unsigned int ABWC5:1;
    volatile unsigned int ABWC6:1;
    volatile unsigned int ABWC7:1;
    volatile unsigned int ABWC8:1;
    volatile unsigned int ABWC9:1;
    volatile unsigned int ABWC10:1;
    volatile unsigned int ABWC11:1;
    volatile unsigned int TBWC0:1;
    volatile unsigned int TBWC1:1;
    volatile unsigned int TBWC2:1;
    volatile unsigned int TBWC3:1;
    volatile unsigned int TBWC4:1;
    volatile unsigned int TBWC5:1;
    volatile unsigned int TBWC6:1;
    volatile unsigned int TBWC7:1;
    volatile unsigned int TBWC8:1;
    volatile unsigned int TBWC9:1;
    volatile unsigned int TBWC10:1;
    volatile unsigned int TBWC11:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMP_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_CMU_CLK_CTRL_Bits
{
    volatile unsigned int CLK0_EXT_DIVIDER:1;
    volatile unsigned int CLK1_EXT_DIVIDER:1;
    volatile unsigned int CLK2_EXT_DIVIDER:1;
    volatile unsigned int CLK3_EXT_DIVIDER:1;
    volatile unsigned int CLK4_EXT_DIVIDER:1;
    volatile unsigned int CLK5_EXT_DIVIDER:1;
    volatile unsigned int CLK6_EXT_DIVIDER:1;
    volatile unsigned int CLK7_EXT_DIVIDER:1;
    volatile unsigned int CLK8_EXT_DIVIDER:1;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_CMU_CLK_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_CLK_EN_Bits
{
    volatile unsigned int EN_CLK0:2;
    volatile unsigned int EN_CLK1:2;
    volatile unsigned int EN_CLK2:2;
    volatile unsigned int EN_CLK3:2;
    volatile unsigned int EN_CLK4:2;
    volatile unsigned int EN_CLK5:2;
    volatile unsigned int EN_CLK6:2;
    volatile unsigned int EN_CLK7:2;
    volatile unsigned int EN_ECLK0:2;
    volatile unsigned int EN_ECLK1:2;
    volatile unsigned int EN_ECLK2:2;
    volatile unsigned int EN_FXCLK:2;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_CLK_EN_Bits;


typedef struct _Ifx_GTM_CMU_CLK__CTRL_Bits
{
    volatile unsigned int CLK_CNT:24;
    volatile unsigned int CLK_SEL:2;
    volatile unsigned int reserved_26:6;
} Ifx_GTM_CMU_CLK__CTRL_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_DEN_Bits
{
    volatile unsigned int ECLK_DEN:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_ECLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_ECLK_NUM_Bits
{
    volatile unsigned int ECLK_NUM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_ECLK_NUM_Bits;


typedef struct _Ifx_GTM_CMU_FXCLK_CTRL_Bits
{
    volatile unsigned int FXCLK_SEL:4;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_CMU_FXCLK_CTRL_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_DEN_Bits
{
    volatile unsigned int GCLK_DEN:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_GCLK_DEN_Bits;


typedef struct _Ifx_GTM_CMU_GCLK_NUM_Bits
{
    volatile unsigned int GCLK_NUM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_CMU_GCLK_NUM_Bits;


typedef struct _Ifx_GTM_CMU_GLB_CTRL_Bits
{
    volatile unsigned int ARU_ADDR_RSTGLB:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_CMU_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_CTRL_Bits
{
    volatile unsigned int RF_PROT:1;
    volatile unsigned int TO_MODE:1;
    volatile unsigned int reserved_2:2;
    volatile unsigned int TO_VAL:5;
    volatile unsigned int reserved_9:3;
    volatile unsigned int AEIM_CLUSTER:4;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_CTRL_Bits;


typedef struct _Ifx_GTM_DATAIN_Bits
{
    Ifx_UReg_32Bit DATA:32;
} Ifx_GTM_DATAIN_Bits;


typedef struct _Ifx_GTM_DPLL_ACB_Bits
{
    volatile unsigned int ACB_0:5;
    volatile unsigned int reserved_5:3;
    volatile unsigned int ACB_1:5;
    volatile unsigned int reserved_13:3;
    volatile unsigned int ACB_2:5;
    volatile unsigned int reserved_21:3;
    volatile unsigned int ACB_3:5;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_DPLL_ACB_Bits;


typedef struct _Ifx_GTM_DPLL_ACT_STA_Bits
{
    volatile unsigned int ACT_N:32;
} Ifx_GTM_DPLL_ACT_STA_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_CAL1_Bits
{
    volatile unsigned int ADD_IN_CAL1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADD_IN_CAL1_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_CAL2_Bits
{
    volatile unsigned int ADD_IN_CAL2:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADD_IN_CAL2_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_LD1_Bits
{
    volatile unsigned int ADD_IN_LD1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADD_IN_LD1_Bits;


typedef struct _Ifx_GTM_DPLL_ADD_IN_LD2_Bits
{
    volatile unsigned int ADD_IN_LD2:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADD_IN_LD2_Bits;


typedef struct _Ifx_GTM_DPLL_ADT_S_Bits
{
    volatile unsigned int PD_S:16;
    volatile unsigned int NS:6;
    volatile unsigned int reserved_22:2;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADT_S_Bits;


typedef struct _Ifx_GTM_DPLL_ADT_TI_Bits
{
    volatile unsigned int PD:13;
    volatile unsigned int TINT:3;
    volatile unsigned int NT:3;
    volatile unsigned int reserved_19:5;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_ADT_TI_Bits;


typedef struct _Ifx_GTM_DPLL_AOSV_2_Bits
{
    volatile unsigned int AOSV_2A:8;
    volatile unsigned int AOSV_2B:8;
    volatile unsigned int AOSV_2C:8;
    volatile unsigned int AOSV_2D:8;
} Ifx_GTM_DPLL_AOSV_2_Bits;


typedef struct _Ifx_GTM_DPLL_APS_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int WAPS:1;
    volatile unsigned int APS:6;
    volatile unsigned int reserved_8:5;
    volatile unsigned int WAPS_1C2:1;
    volatile unsigned int APS_1C2:6;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_DPLL_APS_Bits;


typedef struct _Ifx_GTM_DPLL_APS_1C3_Bits
{
    volatile unsigned int reserved_0:2;
    volatile unsigned int APS_1C3:6;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_DPLL_APS_1C3_Bits;


typedef struct _Ifx_GTM_DPLL_APS_1C3_EXT_Bits
{
    volatile unsigned int reserved_0:2;
    volatile unsigned int APS_1C3:7;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_DPLL_APS_1C3_EXT_Bits;


typedef struct _Ifx_GTM_DPLL_APS_EXT_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int WAPS:1;
    volatile unsigned int APS:7;
    volatile unsigned int reserved_9:4;
    volatile unsigned int WAPS_1C2:1;
    volatile unsigned int APS_1C2:7;
    volatile unsigned int reserved_21:11;
} Ifx_GTM_DPLL_APS_EXT_Bits;


typedef struct _Ifx_GTM_DPLL_APS_SYNC_Bits
{
    volatile unsigned int APS_1C2_EXT:6;
    volatile unsigned int APS_1C2_STATUS:1;
    volatile unsigned int reserved_7:7;
    volatile unsigned int APS_1C2_OLD:6;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_DPLL_APS_SYNC_Bits;


typedef struct _Ifx_GTM_DPLL_APS_SYNC_EXT_Bits
{
    volatile unsigned int APS_1C2_EXT:7;
    volatile unsigned int reserved_7:8;
    volatile unsigned int APS_1C2_STATUS:1;
    volatile unsigned int APS_1C2_OLD:7;
    volatile unsigned int reserved_23:9;
} Ifx_GTM_DPLL_APS_SYNC_EXT_Bits;


typedef struct _Ifx_GTM_DPLL_APT_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int WAPT:1;
    volatile unsigned int APT:10;
    volatile unsigned int reserved_12:1;
    volatile unsigned int WAPT_2B:1;
    volatile unsigned int APT_2B:10;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_APT_Bits;


typedef struct _Ifx_GTM_DPLL_APT_2C_Bits
{
    volatile unsigned int reserved_0:2;
    volatile unsigned int APT_2C:10;
    volatile unsigned int reserved_12:20;
} Ifx_GTM_DPLL_APT_2C_Bits;


typedef struct _Ifx_GTM_DPLL_APT_SYNC_Bits
{
    volatile unsigned int APT_2B_EXT:6;
    volatile unsigned int APT_2B_STATUS:1;
    volatile unsigned int reserved_7:7;
    volatile unsigned int APT_2B_OLD:10;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_APT_SYNC_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_SX_Bits
{
    volatile unsigned int CDT_SX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CDT_SX_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_SX_NOM_Bits
{
    volatile unsigned int CDT_SX_NOM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CDT_SX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_TX_Bits
{
    volatile unsigned int CDT_TX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CDT_TX_Bits;


typedef struct _Ifx_GTM_DPLL_CDT_TX_NOM_Bits
{
    volatile unsigned int CDT_TX_NOM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CDT_TX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_CNT_NUM_1_Bits
{
    volatile unsigned int CNT_NUM_1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CNT_NUM_1_Bits;


typedef struct _Ifx_GTM_DPLL_CNT_NUM_2_Bits
{
    volatile unsigned int CNT_NUM_2:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CNT_NUM_2_Bits;


typedef struct _Ifx_GTM_DPLL_CSN_MAX_Bits
{
    volatile unsigned int CSN_MAX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CSN_MAX_Bits;


typedef struct _Ifx_GTM_DPLL_CSN_MIN_Bits
{
    volatile unsigned int CSN_MIN:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CSN_MIN_Bits;


typedef struct _Ifx_GTM_DPLL_CTN_MAX_Bits
{
    volatile unsigned int CTN_MAX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTN_MAX_Bits;


typedef struct _Ifx_GTM_DPLL_CTN_MIN_Bits
{
    volatile unsigned int CTN_MIN:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTN_MIN_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_0_Bits
{
    volatile unsigned int MLT:10;
    volatile unsigned int IFP:1;
    volatile unsigned int SNU:5;
    volatile unsigned int TNU:9;
    volatile unsigned int AMS:1;
    volatile unsigned int AMT:1;
    volatile unsigned int IDS:1;
    volatile unsigned int IDT:1;
    volatile unsigned int SEN:1;
    volatile unsigned int TEN:1;
    volatile unsigned int RMO:1;
} Ifx_GTM_DPLL_CTRL_0_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE_Bits
{
    volatile unsigned int reserved_0:10;
    volatile unsigned int IFP:1;
    volatile unsigned int reserved_11:14;
    volatile unsigned int AMS:1;
    volatile unsigned int reserved_26:1;
    volatile unsigned int IDS:1;
    volatile unsigned int reserved_28:3;
    volatile unsigned int RMO:1;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER_Bits
{
    volatile unsigned int MLT:10;
    volatile unsigned int IFP:1;
    volatile unsigned int reserved_11:15;
    volatile unsigned int AMT:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int IDT:1;
    volatile unsigned int reserved_29:2;
    volatile unsigned int RMO:1;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_1_Bits
{
    volatile unsigned int DMO:1;
    volatile unsigned int DEN:1;
    volatile unsigned int IDDS:1;
    volatile unsigned int COA:1;
    volatile unsigned int PIT:1;
    volatile unsigned int SGE1:1;
    volatile unsigned int DLM1:1;
    volatile unsigned int PCM1:1;
    volatile unsigned int SGE2:1;
    volatile unsigned int DLM2:1;
    volatile unsigned int PCM2:1;
    volatile unsigned int SYN_NS:5;
    volatile unsigned int SYN_NT:6;
    volatile unsigned int LCD:1;
    volatile unsigned int SWR:1;
    volatile unsigned int SYSF:1;
    volatile unsigned int TS0_HRS:1;
    volatile unsigned int TS0_HRT:1;
    volatile unsigned int SMC:1;
    volatile unsigned int SSL:2;
    volatile unsigned int TSL:2;
} Ifx_GTM_DPLL_CTRL_1_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_11_Bits
{
    volatile unsigned int SIP1:1;
    volatile unsigned int ERZ1:1;
    volatile unsigned int PCMF1:1;
    volatile unsigned int FSYL1:1;
    volatile unsigned int INCF1:1;
    volatile unsigned int PCMF1_INCCNT_B:1;
    volatile unsigned int ADT:1;
    volatile unsigned int ADS:1;
    volatile unsigned int SIP2:1;
    volatile unsigned int ERZ2:1;
    volatile unsigned int PCMF2:1;
    volatile unsigned int FSYL2:1;
    volatile unsigned int INCF2:1;
    volatile unsigned int PCMF2_INCCNT_B:1;
    volatile unsigned int STATE_EXT:1;
    volatile unsigned int ACBU:1;
    volatile unsigned int WSIP1:1;
    volatile unsigned int WERZ1:1;
    volatile unsigned int WPCMF1:1;
    volatile unsigned int WFSYL1:1;
    volatile unsigned int WINCF1:1;
    volatile unsigned int WPCMF1_INCCNT_B:1;
    volatile unsigned int WADT:1;
    volatile unsigned int WADS:1;
    volatile unsigned int WSIP2:1;
    volatile unsigned int WERZ2:1;
    volatile unsigned int WPCMF2:1;
    volatile unsigned int WFSYL2:1;
    volatile unsigned int WINCF2:1;
    volatile unsigned int WPCMF2_INCCNT_B:1;
    volatile unsigned int WSTATE_EXT:1;
    volatile unsigned int WACBU:1;
} Ifx_GTM_DPLL_CTRL_11_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_1_SHADOW_STATE_Bits
{
    volatile unsigned int DMO:1;
    volatile unsigned int reserved_1:2;
    volatile unsigned int COA:1;
    volatile unsigned int reserved_4:1;
    volatile unsigned int SGE1:1;
    volatile unsigned int DLM1:1;
    volatile unsigned int PCM1:1;
    volatile unsigned int SGE2:1;
    volatile unsigned int DLM2:1;
    volatile unsigned int PCM2:1;
    volatile unsigned int reserved_11:21;
} Ifx_GTM_DPLL_CTRL_1_SHADOW_STATE_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER_Bits
{
    volatile unsigned int DMO:1;
    volatile unsigned int reserved_1:2;
    volatile unsigned int COA:1;
    volatile unsigned int PIT:1;
    volatile unsigned int SGE1:1;
    volatile unsigned int DLM1:1;
    volatile unsigned int PCM1:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_2_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int AEN0:1;
    volatile unsigned int AEN1:1;
    volatile unsigned int AEN2:1;
    volatile unsigned int AEN3:1;
    volatile unsigned int AEN4:1;
    volatile unsigned int AEN5:1;
    volatile unsigned int AEN6:1;
    volatile unsigned int AEN7:1;
    volatile unsigned int WAD0:1;
    volatile unsigned int WAD1:1;
    volatile unsigned int WAD2:1;
    volatile unsigned int WAD3:1;
    volatile unsigned int WAD4:1;
    volatile unsigned int WAD5:1;
    volatile unsigned int WAD6:1;
    volatile unsigned int WAD7:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTRL_2_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_3_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int AEN8:1;
    volatile unsigned int AEN9:1;
    volatile unsigned int AEN10:1;
    volatile unsigned int AEN11:1;
    volatile unsigned int AEN12:1;
    volatile unsigned int AEN13:1;
    volatile unsigned int AEN14:1;
    volatile unsigned int AEN15:1;
    volatile unsigned int WAD8:1;
    volatile unsigned int WAD9:1;
    volatile unsigned int WAD10:1;
    volatile unsigned int WAD11:1;
    volatile unsigned int WAD12:1;
    volatile unsigned int WAD13:1;
    volatile unsigned int WAD14:1;
    volatile unsigned int WAD15:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTRL_3_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_4_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int AEN16:1;
    volatile unsigned int AEN17:1;
    volatile unsigned int AEN18:1;
    volatile unsigned int AEN19:1;
    volatile unsigned int AEN20:1;
    volatile unsigned int AEN21:1;
    volatile unsigned int AEN22:1;
    volatile unsigned int AEN23:1;
    volatile unsigned int WAD16:1;
    volatile unsigned int WAD17:1;
    volatile unsigned int WAD18:1;
    volatile unsigned int WAD19:1;
    volatile unsigned int WAD20:1;
    volatile unsigned int WAD21:1;
    volatile unsigned int WAD22:1;
    volatile unsigned int WAD23:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTRL_4_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_5_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int AEN24:1;
    volatile unsigned int AEN25:1;
    volatile unsigned int AEN26:1;
    volatile unsigned int AEN27:1;
    volatile unsigned int AEN28:1;
    volatile unsigned int AEN29:1;
    volatile unsigned int AEN30:1;
    volatile unsigned int AEN31:1;
    volatile unsigned int WAD24:1;
    volatile unsigned int WAD25:1;
    volatile unsigned int WAD26:1;
    volatile unsigned int WAD27:1;
    volatile unsigned int WAD28:1;
    volatile unsigned int WAD29:1;
    volatile unsigned int WAD30:1;
    volatile unsigned int WAD31:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_CTRL_5_Bits;


typedef struct _Ifx_GTM_DPLL_CTRL_EXT_Bits
{
    volatile unsigned int SNU:6;
    volatile unsigned int reserved_6:10;
    volatile unsigned int SYN_NS:6;
    volatile unsigned int reserved_22:10;
} Ifx_GTM_DPLL_CTRL_EXT_Bits;


typedef struct _Ifx_GTM_DPLL_DLA_Bits
{
    volatile unsigned int DLA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DLA_Bits;


typedef struct _Ifx_GTM_DPLL_DTA_Bits
{
    volatile unsigned int DTA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DTA_Bits;


typedef struct _Ifx_GTM_DPLL_DT_S_Bits
{
    volatile unsigned int DT_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_S_Bits;


typedef struct _Ifx_GTM_DPLL_DT_S_ACT_Bits
{
    volatile unsigned int DT_S_ACT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_S_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_DT_S_START_Bits
{
    volatile unsigned int DPLL_DT_S_START:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_S_START_Bits;


typedef struct _Ifx_GTM_DPLL_DT_TI_Bits
{
    volatile unsigned int DT_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_TI_Bits;


typedef struct _Ifx_GTM_DPLL_DT_T_ACT_Bits
{
    volatile unsigned int DT_T_ACT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_T_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_DT_T_START_Bits
{
    volatile unsigned int DPLL_DT_T_START:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_DT_T_START_Bits;


typedef struct _Ifx_GTM_DPLL_EDT_S_Bits
{
    volatile unsigned int EDT_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_EDT_S_Bits;


typedef struct _Ifx_GTM_DPLL_EDT_T_Bits
{
    volatile unsigned int EDT_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_EDT_T_Bits;


typedef struct _Ifx_GTM_DPLL_EIRQ_EN_Bits
{
    volatile unsigned int PDI_EIRQ_EN:1;
    volatile unsigned int PEI_EIRQ_EN:1;
    volatile unsigned int TINI_EIRQ_EN:1;
    volatile unsigned int TAXI_EIRQ_EN:1;
    volatile unsigned int SISI_EIRQ_EN:1;
    volatile unsigned int TISI_EIRQ_EN:1;
    volatile unsigned int MSI_EIRQ_EN:1;
    volatile unsigned int MTI_EIRQ_EN:1;
    volatile unsigned int SASI_EIRQ_EN:1;
    volatile unsigned int TASI_EIRQ_EN:1;
    volatile unsigned int PWI_EIRQ_EN:1;
    volatile unsigned int W2I_EIRQ_EN:1;
    volatile unsigned int W1I_EIRQ_EN:1;
    volatile unsigned int GL1I_EIRQ_EN:1;
    volatile unsigned int LL1I_EIRQ_EN:1;
    volatile unsigned int EI_EIRQ_EN:1;
    volatile unsigned int GL2I_EIRQ_EN:1;
    volatile unsigned int LL2I_EIRQ_EN:1;
    volatile unsigned int TE0I_EIRQ_EN:1;
    volatile unsigned int TE1I_EIRQ_EN:1;
    volatile unsigned int TE2I_EIRQ_EN:1;
    volatile unsigned int TE3I_EIRQ_EN:1;
    volatile unsigned int TE4I_EIRQ_EN:1;
    volatile unsigned int CDTI_EIRQ_EN:1;
    volatile unsigned int CDSI_EIRQ_EN:1;
    volatile unsigned int TORI_EIRQ_EN:1;
    volatile unsigned int SORI_EIRQ_EN:1;
    volatile unsigned int DCGI_EIRQ_EN:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_DPLL_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_DPLL_FTV_S_Bits
{
    volatile unsigned int STATE_FT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_FTV_S_Bits;


typedef struct _Ifx_GTM_DPLL_FTV_T_Bits
{
    volatile unsigned int TRIGGER_FT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_FTV_T_Bits;


typedef struct _Ifx_GTM_DPLL_ID_PMTR_Bits
{
    volatile unsigned int ID_PMTR_X:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_DPLL_ID_PMTR_Bits;


typedef struct _Ifx_GTM_DPLL_INCF1_OFFSET_Bits
{
    volatile unsigned int DPLL_INCF1_OFFSET:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INCF1_OFFSET_Bits;


typedef struct _Ifx_GTM_DPLL_INCF2_OFFSET_Bits
{
    volatile unsigned int DPLL_INCF2_OFFSET:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INCF2_OFFSET_Bits;


typedef struct _Ifx_GTM_DPLL_INC_CNT1_Bits
{
    volatile unsigned int INC_CNT1:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INC_CNT1_Bits;


typedef struct _Ifx_GTM_DPLL_INC_CNT1_MASK_Bits
{
    volatile unsigned int INC_CNT1_NOTIFY:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INC_CNT1_MASK_Bits;


typedef struct _Ifx_GTM_DPLL_INC_CNT2_Bits
{
    volatile unsigned int INC_CNT2:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INC_CNT2_Bits;


typedef struct _Ifx_GTM_DPLL_INC_CNT2_MASK_Bits
{
    volatile unsigned int INC_CNT2_NOTIFY:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_INC_CNT2_MASK_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_EN_Bits
{
    volatile unsigned int PDI_IRQ_EN:1;
    volatile unsigned int PEI_IRQ_EN:1;
    volatile unsigned int TINI_IRQ_EN:1;
    volatile unsigned int TAXI_IRQ_EN:1;
    volatile unsigned int SISI_IRQ_EN:1;
    volatile unsigned int TISI_IRQ_EN:1;
    volatile unsigned int MSI_IRQ_EN:1;
    volatile unsigned int MTI_IRQ_EN:1;
    volatile unsigned int SASI_IRQ_EN:1;
    volatile unsigned int TASI_IRQ_EN:1;
    volatile unsigned int PWI_IRQ_EN:1;
    volatile unsigned int W2I_IRQ_EN:1;
    volatile unsigned int W1I_IRQ_EN:1;
    volatile unsigned int GL1I_IRQ_EN:1;
    volatile unsigned int LL1I_IRQ_EN:1;
    volatile unsigned int EI_IRQ_EN:1;
    volatile unsigned int GL2I_IRQ_EN:1;
    volatile unsigned int LL2I_IRQ_EN:1;
    volatile unsigned int TE0I_IRQ_EN:1;
    volatile unsigned int TE1I_IRQ_EN:1;
    volatile unsigned int TE2I_IRQ_EN:1;
    volatile unsigned int TE3I_IRQ_EN:1;
    volatile unsigned int TE4I_IRQ_EN:1;
    volatile unsigned int CDTI_IRQ_EN:1;
    volatile unsigned int CDSI_IRQ_EN:1;
    volatile unsigned int TORI_IRQ_EN:1;
    volatile unsigned int SORI_IRQ_EN:1;
    volatile unsigned int DCGI_IRQ_EN:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_DPLL_IRQ_EN_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_PDI:1;
    volatile unsigned int TRG_PEI:1;
    volatile unsigned int TRG_TINI:1;
    volatile unsigned int TRG_TAXI:1;
    volatile unsigned int TRG_SISI:1;
    volatile unsigned int TRG_TISI:1;
    volatile unsigned int TRG_MSI:1;
    volatile unsigned int TRG_MTI:1;
    volatile unsigned int TRG_SASI:1;
    volatile unsigned int TRG_TASI:1;
    volatile unsigned int TRG_PWI:1;
    volatile unsigned int TRG_W2I:1;
    volatile unsigned int TRG_W1I:1;
    volatile unsigned int TRG_GL1I:1;
    volatile unsigned int TRG_LL1I:1;
    volatile unsigned int TRG_EI:1;
    volatile unsigned int TRG_GL2I:1;
    volatile unsigned int TRG_LL2I:1;
    volatile unsigned int TRG_TE0I:1;
    volatile unsigned int TRG_TE1I:1;
    volatile unsigned int TRG_TE2I:1;
    volatile unsigned int TRG_TE3I:1;
    volatile unsigned int TRG_TE4I:1;
    volatile unsigned int TRG_CDTI:1;
    volatile unsigned int TRG_CDSI:1;
    volatile unsigned int TRG_TORI:1;
    volatile unsigned int TRG_SORI:1;
    volatile unsigned int TRG_DCGI:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_DPLL_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_DPLL_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_DPLL_IRQ_NOTIFY_Bits
{
    volatile unsigned int PDI:1;
    volatile unsigned int PEI:1;
    volatile unsigned int TINI:1;
    volatile unsigned int TAXI:1;
    volatile unsigned int SISI:1;
    volatile unsigned int TISI:1;
    volatile unsigned int MSI:1;
    volatile unsigned int MTI:1;
    volatile unsigned int SASI:1;
    volatile unsigned int TASI:1;
    volatile unsigned int PWI:1;
    volatile unsigned int W2I:1;
    volatile unsigned int W1I:1;
    volatile unsigned int GL1I:1;
    volatile unsigned int LL1I:1;
    volatile unsigned int EI:1;
    volatile unsigned int GL2I:1;
    volatile unsigned int LL2I:1;
    volatile unsigned int TE0I:1;
    volatile unsigned int TE1I:1;
    volatile unsigned int TE2I:1;
    volatile unsigned int TE3I:1;
    volatile unsigned int TE4I:1;
    volatile unsigned int CDTI:1;
    volatile unsigned int CDSI:1;
    volatile unsigned int TORI:1;
    volatile unsigned int SORI:1;
    volatile unsigned int DCGI:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_DPLL_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_DPLL_MEDT_S_Bits
{
    volatile unsigned int MEDT_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MEDT_S_Bits;


typedef struct _Ifx_GTM_DPLL_MEDT_T_Bits
{
    volatile unsigned int MEDT_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MEDT_T_Bits;


typedef struct _Ifx_GTM_DPLL_MLS1_Bits
{
    volatile unsigned int MLS1:18;
    volatile unsigned int reserved_18:6;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MLS1_Bits;


typedef struct _Ifx_GTM_DPLL_MLS2_Bits
{
    volatile unsigned int MLS2:18;
    volatile unsigned int reserved_18:6;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MLS2_Bits;


typedef struct _Ifx_GTM_DPLL_MPVAL1_Bits
{
    volatile unsigned int MPVAL1:16;
    volatile unsigned int SIX1:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MPVAL1_Bits;


typedef struct _Ifx_GTM_DPLL_MPVAL2_Bits
{
    volatile unsigned int MPVAL2:16;
    volatile unsigned int SIX2:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_MPVAL2_Bits;


typedef struct _Ifx_GTM_DPLL_NA_Bits
{
    volatile unsigned int DB:10;
    volatile unsigned int DW:10;
    volatile unsigned int reserved_20:4;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NA_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_S_Bits
{
    volatile unsigned int NMB_S:20;
    volatile unsigned int reserved_20:4;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NMB_S_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_S_TAR_Bits
{
    volatile unsigned int NMB_S_TAR:20;
    volatile unsigned int reserved_20:4;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NMB_S_TAR_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_S_TAR_OLD_Bits
{
    volatile unsigned int NMB_S_TAR_OLD:20;
    volatile unsigned int reserved_20:4;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NMB_S_TAR_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_T_Bits
{
    volatile unsigned int NMB_T:16;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NMB_T_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_T_TAR_Bits
{
    volatile unsigned int NMB_T_TAR:16;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NMB_T_TAR_Bits;


typedef struct _Ifx_GTM_DPLL_NMB_T_TAR_OLD_Bits
{
    volatile unsigned int NMB_T_TAR_OLD:16;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_NMB_T_TAR_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_NTI_CNT_Bits
{
    volatile unsigned int NTI_CNT:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_DPLL_NTI_CNT_Bits;


typedef struct _Ifx_GTM_DPLL_NUSC_Bits
{
    volatile unsigned int NUSE:6;
    volatile unsigned int FSS:1;
    volatile unsigned int SYN_S:6;
    volatile unsigned int SYN_S_OLD:6;
    volatile unsigned int VSN:6;
    volatile unsigned int reserved_25:4;
    volatile unsigned int WNUS:1;
    volatile unsigned int WSYN:1;
    volatile unsigned int WVSN:1;
} Ifx_GTM_DPLL_NUSC_Bits;


typedef struct _Ifx_GTM_DPLL_NUSC_EXT1_Bits
{
    volatile unsigned int SYN_S:7;
    volatile unsigned int reserved_7:9;
    volatile unsigned int SYN_S_OLD:7;
    volatile unsigned int reserved_23:7;
    volatile unsigned int WSYN:1;
    volatile unsigned int reserved_31:1;
} Ifx_GTM_DPLL_NUSC_EXT1_Bits;


typedef struct _Ifx_GTM_DPLL_NUSC_EXT2_Bits
{
    volatile unsigned int NUSE:7;
    volatile unsigned int reserved_7:8;
    volatile unsigned int FSS:1;
    volatile unsigned int VSN:7;
    volatile unsigned int reserved_23:6;
    volatile unsigned int WNUS:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int WVSN:1;
} Ifx_GTM_DPLL_NUSC_EXT2_Bits;


typedef struct _Ifx_GTM_DPLL_NUTC_Bits
{
    volatile unsigned int NUTE:10;
    volatile unsigned int FST:1;
    volatile unsigned int reserved_11:2;
    volatile unsigned int SYN_T:3;
    volatile unsigned int SYN_T_OLD:3;
    volatile unsigned int VTN:6;
    volatile unsigned int reserved_25:4;
    volatile unsigned int WNUT:1;
    volatile unsigned int WSYN:1;
    volatile unsigned int WVTN:1;
} Ifx_GTM_DPLL_NUTC_Bits;


typedef struct _Ifx_GTM_DPLL_OSW_Bits
{
    volatile unsigned int SWON_S:1;
    volatile unsigned int SWON_T:1;
    volatile unsigned int reserved_2:6;
    volatile unsigned int OSS:2;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_DPLL_OSW_Bits;


typedef struct _Ifx_GTM_DPLL_PDT_Bits
{
    volatile unsigned int DB:14;
    volatile unsigned int DW:10;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PDT_Bits;


typedef struct _Ifx_GTM_DPLL_PSA_Bits
{
    volatile unsigned int PSA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSA_Bits;


typedef struct _Ifx_GTM_DPLL_PSAC_Bits
{
    volatile unsigned int PSAC:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSAC_Bits;


typedef struct _Ifx_GTM_DPLL_PSSC_Bits
{
    volatile unsigned int PSSC:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSSC_Bits;


typedef struct _Ifx_GTM_DPLL_PSSM_Bits
{
    volatile unsigned int PSSM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSSM_Bits;


typedef struct _Ifx_GTM_DPLL_PSSM_OLD_Bits
{
    volatile unsigned int PSSM_OLD:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSSM_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_PSTC_Bits
{
    volatile unsigned int PSTC:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSTC_Bits;


typedef struct _Ifx_GTM_DPLL_PSTM_Bits
{
    volatile unsigned int PSTM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSTM_Bits;


typedef struct _Ifx_GTM_DPLL_PSTM_OLD_Bits
{
    volatile unsigned int PSTM_OLD:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PSTM_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_PVT_Bits
{
    volatile unsigned int PVT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_PVT_Bits;


typedef struct _Ifx_GTM_DPLL_RAM_INI_Bits
{
    volatile unsigned int INIT_1A:1;
    volatile unsigned int INIT_1BC:1;
    volatile unsigned int INIT_2:1;
    volatile unsigned int reserved_3:1;
    volatile unsigned int INIT_RAM:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_DPLL_RAM_INI_Bits;


typedef struct _Ifx_GTM_DPLL_RCDT_SX_Bits
{
    volatile unsigned int RCDT_SX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RCDT_SX_Bits;


typedef struct _Ifx_GTM_DPLL_RCDT_SX_NOM_Bits
{
    volatile unsigned int RCDT_SX_NOM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RCDT_SX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_RCDT_TX_Bits
{
    volatile unsigned int RCDT_TX:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RCDT_TX_Bits;


typedef struct _Ifx_GTM_DPLL_RCDT_TX_NOM_Bits
{
    volatile unsigned int RCDT_TX_NOM:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RCDT_TX_NOM_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_S_Bits
{
    volatile unsigned int RDT_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RDT_S_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_S_ACT_Bits
{
    volatile unsigned int RDT_S_ACT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RDT_S_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_TI_Bits
{
    volatile unsigned int RDT_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RDT_TI_Bits;


typedef struct _Ifx_GTM_DPLL_RDT_T_ACT_Bits
{
    volatile unsigned int RDT_T_ACT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_RDT_T_ACT_Bits;


typedef struct _Ifx_GTM_DPLL_SIDEL_Bits
{
    volatile unsigned int SIDEL:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_SIDEL_Bits;


typedef struct _Ifx_GTM_DPLL_SLR_Bits
{
    volatile unsigned int SLR:8;
    volatile unsigned int reserved_8:16;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_SLR_Bits;


typedef struct _Ifx_GTM_DPLL_STA_Bits
{
    volatile unsigned int STA_T:8;
    volatile unsigned int reserved_8:1;
    volatile unsigned int CNT_T:3;
    volatile unsigned int STA_S:8;
    volatile unsigned int reserved_20:1;
    volatile unsigned int CNT_S:3;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_STA_Bits;


typedef struct _Ifx_GTM_DPLL_STATUS_Bits
{
    volatile unsigned int FPCE:1;
    volatile unsigned int CSO:1;
    volatile unsigned int reserved_2:1;
    volatile unsigned int CTO:1;
    volatile unsigned int CRO:1;
    volatile unsigned int RCS:1;
    volatile unsigned int RCT:1;
    volatile unsigned int PSE:1;
    volatile unsigned int SOR:1;
    volatile unsigned int MS:1;
    volatile unsigned int TOR:1;
    volatile unsigned int MT:1;
    volatile unsigned int RAM2_ERR:1;
    volatile unsigned int reserved_13:2;
    volatile unsigned int LOW_RES:1;
    volatile unsigned int CSVS:1;
    volatile unsigned int CSVT:1;
    volatile unsigned int CAIP2:1;
    volatile unsigned int CAIP1:1;
    volatile unsigned int ISN:1;
    volatile unsigned int ITN:1;
    volatile unsigned int BWD2:1;
    volatile unsigned int BWD1:1;
    volatile unsigned int reserved_24:1;
    volatile unsigned int LOCK2:1;
    volatile unsigned int SYS:1;
    volatile unsigned int SYT:1;
    volatile unsigned int FSD:1;
    volatile unsigned int FTD:1;
    volatile unsigned int LOCK1:1;
    volatile unsigned int ERR:1;
} Ifx_GTM_DPLL_STATUS_Bits;


typedef struct _Ifx_GTM_DPLL_STA_FLAG_Bits
{
    volatile unsigned int STA_FLAG_T:1;
    volatile unsigned int reserved_1:7;
    volatile unsigned int STA_FLAG_S:1;
    volatile unsigned int INC_CNT1_FLAG:1;
    volatile unsigned int INC_CNT2_FLAG:1;
    volatile unsigned int reserved_11:21;
} Ifx_GTM_DPLL_STA_FLAG_Bits;


typedef struct _Ifx_GTM_DPLL_STA_MASK_Bits
{
    volatile unsigned int STA_NOTIFY_T:8;
    volatile unsigned int STA_NOTIFY_S:8;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_DPLL_STA_MASK_Bits;


typedef struct _Ifx_GTM_DPLL_TBU_TS0_S_Bits
{
    volatile unsigned int TBU_TS0_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TBU_TS0_S_Bits;


typedef struct _Ifx_GTM_DPLL_TBU_TS0_T_Bits
{
    volatile unsigned int TBU_TS0_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TBU_TS0_T_Bits;


typedef struct _Ifx_GTM_DPLL_THMA_Bits
{
    volatile unsigned int THMA:16;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_THMA_Bits;


typedef struct _Ifx_GTM_DPLL_THMI_Bits
{
    volatile unsigned int THMI:16;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_THMI_Bits;


typedef struct _Ifx_GTM_DPLL_THVAL_Bits
{
    volatile unsigned int THVAL:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_THVAL_Bits;


typedef struct _Ifx_GTM_DPLL_THVAL2_Bits
{
    volatile unsigned int THVAL:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_THVAL2_Bits;


typedef struct _Ifx_GTM_DPLL_TIDEL_Bits
{
    volatile unsigned int TIDEL:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TIDEL_Bits;


typedef struct _Ifx_GTM_DPLL_TLR_Bits
{
    volatile unsigned int TLR:8;
    volatile unsigned int reserved_8:16;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TLR_Bits;


typedef struct _Ifx_GTM_DPLL_TOV_Bits
{
    volatile unsigned int TOV_DB:10;
    volatile unsigned int TOV_DW:6;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TOV_Bits;


typedef struct _Ifx_GTM_DPLL_TOV_S_Bits
{
    volatile unsigned int DB:10;
    volatile unsigned int DW:6;
    volatile unsigned int reserved_16:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TOV_S_Bits;


typedef struct _Ifx_GTM_DPLL_TSAC_Bits
{
    volatile unsigned int TSAC:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TSAC_Bits;


typedef struct _Ifx_GTM_DPLL_TSF_S_Bits
{
    volatile unsigned int TSF_S:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TSF_S_Bits;


typedef struct _Ifx_GTM_DPLL_TSF_TI_Bits
{
    volatile unsigned int TSF_T:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TSF_TI_Bits;


typedef struct _Ifx_GTM_DPLL_TS_S_Bits
{
    volatile unsigned int STATE_TS:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_S_Bits;


typedef struct _Ifx_GTM_DPLL_TS_S_OLD_Bits
{
    volatile unsigned int STATE_TS_OLD:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_S_OLD_Bits;


typedef struct _Ifx_GTM_DPLL_TS_T_Bits
{
    volatile unsigned int TRIGGER_TS:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_T_Bits;


typedef struct _Ifx_GTM_DPLL_TS_T_OLD_Bits
{
    volatile unsigned int TRIGGER_TS_OLD:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_DPLL_TS_T_OLD_Bits;


typedef struct _Ifx_GTM_DSADCINSEL_Bits
{
    Ifx_UReg_32Bit INSEL0:4;
    Ifx_UReg_32Bit INSEL1:4;
    Ifx_UReg_32Bit INSEL2:4;
    Ifx_UReg_32Bit INSEL3:4;
    Ifx_UReg_32Bit INSEL4:4;
    Ifx_UReg_32Bit INSEL5:4;
    Ifx_UReg_32Bit INSEL6:4;
    Ifx_UReg_32Bit INSEL7:4;
} Ifx_GTM_DSADCINSEL_Bits;


typedef struct _Ifx_GTM_DSADC_OUTSEL0_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit SEL4:4;
    Ifx_UReg_32Bit SEL5:4;
    Ifx_UReg_32Bit SEL6:4;
    Ifx_UReg_32Bit SEL7:4;
} Ifx_GTM_DSADC_OUTSEL0_Bits;


typedef struct _Ifx_GTM_DSADC_OUTSEL1_Bits
{
    Ifx_UReg_32Bit SEL8:4;
    Ifx_UReg_32Bit SEL9:4;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_GTM_DSADC_OUTSEL1_Bits;


typedef struct _Ifx_GTM_DTMAUXINSEL_Bits
{
    Ifx_UReg_32Bit ASEL0:2;
    Ifx_UReg_32Bit ASEL1:2;
    Ifx_UReg_32Bit ASEL2:2;
    Ifx_UReg_32Bit ASEL3:2;
    Ifx_UReg_32Bit ASEL4:2;
    Ifx_UReg_32Bit ASEL5:2;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit TSEL0:2;
    Ifx_UReg_32Bit TSEL1:2;
    Ifx_UReg_32Bit TSEL2:2;
    Ifx_UReg_32Bit TSEL3:2;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_GTM_DTMAUXINSEL_Bits;


typedef struct _Ifx_GTM_DXINCON_Bits
{
    Ifx_UReg_32Bit IN0:1;
    Ifx_UReg_32Bit IN1:1;
    Ifx_UReg_32Bit IN2:1;
    Ifx_UReg_32Bit IN3:1;
    Ifx_UReg_32Bit IN4:1;
    Ifx_UReg_32Bit IN5:1;
    Ifx_UReg_32Bit IN6:1;
    Ifx_UReg_32Bit reserved_7:9;
    Ifx_UReg_32Bit DSS0:1;
    Ifx_UReg_32Bit DSS1:1;
    Ifx_UReg_32Bit DSS2:1;
    Ifx_UReg_32Bit DSS3:1;
    Ifx_UReg_32Bit DSS4:1;
    Ifx_UReg_32Bit DSS5:1;
    Ifx_UReg_32Bit DSS6:1;
    Ifx_UReg_32Bit reserved_23:9;
} Ifx_GTM_DXINCON_Bits;


typedef struct _Ifx_GTM_DXOUTCON_Bits
{
    Ifx_UReg_32Bit OUT0:1;
    Ifx_UReg_32Bit OUT1:1;
    Ifx_UReg_32Bit OUT2:1;
    Ifx_UReg_32Bit OUT3:1;
    Ifx_UReg_32Bit OUT4:1;
    Ifx_UReg_32Bit OUT5:1;
    Ifx_UReg_32Bit OUT6:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_GTM_DXOUTCON_Bits;


typedef struct _Ifx_GTM_EIRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_EIRQ_EN:1;
    volatile unsigned int AEI_USP_ADDR_EIRQ_EN:1;
    volatile unsigned int AEI_IM_ADDR_EIRQ_EN:1;
    volatile unsigned int AEI_USP_BE_EIRQ_EN:1;
    volatile unsigned int AEIM_USP_ADDR_EIRQ_EN:1;
    volatile unsigned int AEIM_IM_ADDR_EIRQ_EN:1;
    volatile unsigned int AEIM_USP_BE_EIRQ_EN:1;
    volatile unsigned int CLK_EN_ERR_EIRQ_EN:1;
    volatile unsigned int CLK_PER_ERR_EIRQ_EN:1;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_EXT_CAP_EN_Bits
{
    volatile unsigned int TIM_I_EXT_CAP_EN:8;
    volatile unsigned int TIM_IP1_EXT_CAP_EN:8;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_EXT_CAP_EN_Bits;


typedef struct _Ifx_GTM_HW_CONF_Bits
{
    volatile unsigned int GRSTEN:1;
    volatile unsigned int BRIDGE_MODE_RST:1;
    volatile unsigned int SYNC_INPUT_REG:1;
    volatile unsigned int CFG_CLOCK_RATE:1;
    volatile unsigned int ATOM_OUT_RST:1;
    volatile unsigned int ATOM_TRIG_CHAIN:3;
    volatile unsigned int TOM_OUT_RST:1;
    volatile unsigned int TOM_TRIG_CHAIN:3;
    volatile unsigned int RAM_INIT_RST:1;
    volatile unsigned int ERM:1;
    volatile unsigned int ARU_CONNECT_CONFIG:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int IRQ_MODE_LEVEL:1;
    volatile unsigned int IRQ_MODE_PULSE:1;
    volatile unsigned int IRQ_MODE_PULSE_NOTIFY:1;
    volatile unsigned int IRQ_MODE_SINGLE_PULSE:1;
    volatile unsigned int ATOM_TRIG_INTCHAIN:4;
    volatile unsigned int TOM_TRIG_INTCHAIN:5;
    volatile unsigned int INT_CLK_EN_GEN:1;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_HW_CONF_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI0_Bits
{
    volatile unsigned int FIFO0_CH0_EIRQ:1;
    volatile unsigned int FIFO0_CH1_EIRQ:1;
    volatile unsigned int FIFO0_CH2_EIRQ:1;
    volatile unsigned int FIFO0_CH3_EIRQ:1;
    volatile unsigned int FIFO0_CH4_EIRQ:1;
    volatile unsigned int FIFO0_CH5_EIRQ:1;
    volatile unsigned int FIFO0_CH6_EIRQ:1;
    volatile unsigned int FIFO0_CH7_EIRQ:1;
    volatile unsigned int FIFO1_CH0_EIRQ:1;
    volatile unsigned int FIFO1_CH1_EIRQ:1;
    volatile unsigned int FIFO1_CH2_EIRQ:1;
    volatile unsigned int FIFO1_CH3_EIRQ:1;
    volatile unsigned int FIFO1_CH4_EIRQ:1;
    volatile unsigned int FIFO1_CH5_EIRQ:1;
    volatile unsigned int FIFO1_CH6_EIRQ:1;
    volatile unsigned int FIFO1_CH7_EIRQ:1;
    volatile unsigned int FIFO2_CH0_EIRQ:1;
    volatile unsigned int FIFO2_CH1_EIRQ:1;
    volatile unsigned int FIFO2_CH2_EIRQ:1;
    volatile unsigned int FIFO2_CH3_EIRQ:1;
    volatile unsigned int FIFO2_CH4_EIRQ:1;
    volatile unsigned int FIFO2_CH5_EIRQ:1;
    volatile unsigned int FIFO2_CH6_EIRQ:1;
    volatile unsigned int FIFO2_CH7_EIRQ:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ICM_IRQG_CEI0_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI1_Bits
{
    volatile unsigned int TIM0_CH0_EIRQ:1;
    volatile unsigned int TIM0_CH1_EIRQ:1;
    volatile unsigned int TIM0_CH2_EIRQ:1;
    volatile unsigned int TIM0_CH3_EIRQ:1;
    volatile unsigned int TIM0_CH4_EIRQ:1;
    volatile unsigned int TIM0_CH5_EIRQ:1;
    volatile unsigned int TIM0_CH6_EIRQ:1;
    volatile unsigned int TIM0_CH7_EIRQ:1;
    volatile unsigned int TIM1_CH0_EIRQ:1;
    volatile unsigned int TIM1_CH1_EIRQ:1;
    volatile unsigned int TIM1_CH2_EIRQ:1;
    volatile unsigned int TIM1_CH3_EIRQ:1;
    volatile unsigned int TIM1_CH4_EIRQ:1;
    volatile unsigned int TIM1_CH5_EIRQ:1;
    volatile unsigned int TIM1_CH6_EIRQ:1;
    volatile unsigned int TIM1_CH7_EIRQ:1;
    volatile unsigned int TIM2_CH0_EIRQ:1;
    volatile unsigned int TIM2_CH1_EIRQ:1;
    volatile unsigned int TIM2_CH2_EIRQ:1;
    volatile unsigned int TIM2_CH3_EIRQ:1;
    volatile unsigned int TIM2_CH4_EIRQ:1;
    volatile unsigned int TIM2_CH5_EIRQ:1;
    volatile unsigned int TIM2_CH6_EIRQ:1;
    volatile unsigned int TIM2_CH7_EIRQ:1;
    volatile unsigned int TIM3_CH0_EIRQ:1;
    volatile unsigned int TIM3_CH1_EIRQ:1;
    volatile unsigned int TIM3_CH2_EIRQ:1;
    volatile unsigned int TIM3_CH3_EIRQ:1;
    volatile unsigned int TIM3_CH4_EIRQ:1;
    volatile unsigned int TIM3_CH5_EIRQ:1;
    volatile unsigned int TIM3_CH6_EIRQ:1;
    volatile unsigned int TIM3_CH7_EIRQ:1;
} Ifx_GTM_ICM_IRQG_CEI1_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI2_Bits
{
    volatile unsigned int TIM4_CH0_EIRQ:1;
    volatile unsigned int TIM4_CH1_EIRQ:1;
    volatile unsigned int TIM4_CH2_EIRQ:1;
    volatile unsigned int TIM4_CH3_EIRQ:1;
    volatile unsigned int TIM4_CH4_EIRQ:1;
    volatile unsigned int TIM4_CH5_EIRQ:1;
    volatile unsigned int TIM4_CH6_EIRQ:1;
    volatile unsigned int TIM4_CH7_EIRQ:1;
    volatile unsigned int TIM5_CH0_EIRQ:1;
    volatile unsigned int TIM5_CH1_EIRQ:1;
    volatile unsigned int TIM5_CH2_EIRQ:1;
    volatile unsigned int TIM5_CH3_EIRQ:1;
    volatile unsigned int TIM5_CH4_EIRQ:1;
    volatile unsigned int TIM5_CH5_EIRQ:1;
    volatile unsigned int TIM5_CH6_EIRQ:1;
    volatile unsigned int TIM5_CH7_EIRQ:1;
    volatile unsigned int TIM6_CH0_EIRQ:1;
    volatile unsigned int TIM6_CH1_EIRQ:1;
    volatile unsigned int TIM6_CH2_EIRQ:1;
    volatile unsigned int TIM6_CH3_EIRQ:1;
    volatile unsigned int TIM6_CH4_EIRQ:1;
    volatile unsigned int TIM6_CH5_EIRQ:1;
    volatile unsigned int TIM6_CH6_EIRQ:1;
    volatile unsigned int TIM6_CH7_EIRQ:1;
    volatile unsigned int TIM7_CH0_EIRQ:1;
    volatile unsigned int TIM7_CH1_EIRQ:1;
    volatile unsigned int TIM7_CH2_EIRQ:1;
    volatile unsigned int TIM7_CH3_EIRQ:1;
    volatile unsigned int TIM7_CH4_EIRQ:1;
    volatile unsigned int TIM7_CH5_EIRQ:1;
    volatile unsigned int TIM7_CH6_EIRQ:1;
    volatile unsigned int TIM7_CH7_EIRQ:1;
} Ifx_GTM_ICM_IRQG_CEI2_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI3_Bits
{
    volatile unsigned int MCS0_CH0_EIRQ:1;
    volatile unsigned int MCS0_CH1_EIRQ:1;
    volatile unsigned int MCS0_CH2_EIRQ:1;
    volatile unsigned int MCS0_CH3_EIRQ:1;
    volatile unsigned int MCS0_CH4_EIRQ:1;
    volatile unsigned int MCS0_CH5_EIRQ:1;
    volatile unsigned int MCS0_CH6_EIRQ:1;
    volatile unsigned int MCS0_CH7_EIRQ:1;
    volatile unsigned int MCS1_CH0_EIRQ:1;
    volatile unsigned int MCS1_CH1_EIRQ:1;
    volatile unsigned int MCS1_CH2_EIRQ:1;
    volatile unsigned int MCS1_CH3_EIRQ:1;
    volatile unsigned int MCS1_CH4_EIRQ:1;
    volatile unsigned int MCS1_CH5_EIRQ:1;
    volatile unsigned int MCS1_CH6_EIRQ:1;
    volatile unsigned int MCS1_CH7_EIRQ:1;
    volatile unsigned int MCS2_CH0_EIRQ:1;
    volatile unsigned int MCS2_CH1_EIRQ:1;
    volatile unsigned int MCS2_CH2_EIRQ:1;
    volatile unsigned int MCS2_CH3_EIRQ:1;
    volatile unsigned int MCS2_CH4_EIRQ:1;
    volatile unsigned int MCS2_CH5_EIRQ:1;
    volatile unsigned int MCS2_CH6_EIRQ:1;
    volatile unsigned int MCS2_CH7_EIRQ:1;
    volatile unsigned int MCS3_CH0_EIRQ:1;
    volatile unsigned int MCS3_CH1_EIRQ:1;
    volatile unsigned int MCS3_CH2_EIRQ:1;
    volatile unsigned int MCS3_CH3_EIRQ:1;
    volatile unsigned int MCS3_CH4_EIRQ:1;
    volatile unsigned int MCS3_CH5_EIRQ:1;
    volatile unsigned int MCS3_CH6_EIRQ:1;
    volatile unsigned int MCS3_CH7_EIRQ:1;
} Ifx_GTM_ICM_IRQG_CEI3_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI4_Bits
{
    volatile unsigned int MCS4_CH0_EIRQ:1;
    volatile unsigned int MCS4_CH1_EIRQ:1;
    volatile unsigned int MCS4_CH2_EIRQ:1;
    volatile unsigned int MCS4_CH3_EIRQ:1;
    volatile unsigned int MCS4_CH4_EIRQ:1;
    volatile unsigned int MCS4_CH5_EIRQ:1;
    volatile unsigned int MCS4_CH6_EIRQ:1;
    volatile unsigned int MCS4_CH7_EIRQ:1;
    volatile unsigned int MCS5_CH0_EIRQ:1;
    volatile unsigned int MCS5_CH1_EIRQ:1;
    volatile unsigned int MCS5_CH2_EIRQ:1;
    volatile unsigned int MCS5_CH3_EIRQ:1;
    volatile unsigned int MCS5_CH4_EIRQ:1;
    volatile unsigned int MCS5_CH5_EIRQ:1;
    volatile unsigned int MCS5_CH6_EIRQ:1;
    volatile unsigned int MCS5_CH7_EIRQ:1;
    volatile unsigned int MCS6_CH0_EIRQ:1;
    volatile unsigned int MCS6_CH1_EIRQ:1;
    volatile unsigned int MCS6_CH2_EIRQ:1;
    volatile unsigned int MCS6_CH3_EIRQ:1;
    volatile unsigned int MCS6_CH4_EIRQ:1;
    volatile unsigned int MCS6_CH5_EIRQ:1;
    volatile unsigned int MCS6_CH6_EIRQ:1;
    volatile unsigned int MCS6_CH7_EIRQ:1;
    volatile unsigned int MCS7_CH0_EIRQ:1;
    volatile unsigned int MCS7_CH1_EIRQ:1;
    volatile unsigned int MCS7_CH2_EIRQ:1;
    volatile unsigned int MCS7_CH3_EIRQ:1;
    volatile unsigned int MCS7_CH4_EIRQ:1;
    volatile unsigned int MCS7_CH5_EIRQ:1;
    volatile unsigned int MCS7_CH6_EIRQ:1;
    volatile unsigned int MCS7_CH7_EIRQ:1;
} Ifx_GTM_ICM_IRQG_CEI4_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI_MCS_Bits
{
    volatile unsigned int MCS_CH0_EIRQ:1;
    volatile unsigned int MCS_CH1_EIRQ:1;
    volatile unsigned int MCS_CH2_EIRQ:1;
    volatile unsigned int MCS_CH3_EIRQ:1;
    volatile unsigned int MCS_CH4_EIRQ:1;
    volatile unsigned int MCS_CH5_EIRQ:1;
    volatile unsigned int MCS_CH6_EIRQ:1;
    volatile unsigned int MCS_CH7_EIRQ:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_ICM_IRQG_CEI_MCS_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI_PSM_Bits
{
    volatile unsigned int PSM_M0_CH0_EIRQ:1;
    volatile unsigned int PSM_M0_CH1_EIRQ:1;
    volatile unsigned int PSM_M0_CH2_EIRQ:1;
    volatile unsigned int PSM_M0_CH3_EIRQ:1;
    volatile unsigned int PSM_M0_CH4_EIRQ:1;
    volatile unsigned int PSM_M0_CH5_EIRQ:1;
    volatile unsigned int PSM_M0_CH6_EIRQ:1;
    volatile unsigned int PSM_M0_CH7_EIRQ:1;
    volatile unsigned int PSM_M1_CH0_EIRQ:1;
    volatile unsigned int PSM_M1_CH1_EIRQ:1;
    volatile unsigned int PSM_M1_CH2_EIRQ:1;
    volatile unsigned int PSM_M1_CH3_EIRQ:1;
    volatile unsigned int PSM_M1_CH4_EIRQ:1;
    volatile unsigned int PSM_M1_CH5_EIRQ:1;
    volatile unsigned int PSM_M1_CH6_EIRQ:1;
    volatile unsigned int PSM_M1_CH7_EIRQ:1;
    volatile unsigned int PSM_M2_CH0_EIRQ:1;
    volatile unsigned int PSM_M2_CH1_EIRQ:1;
    volatile unsigned int PSM_M2_CH2_EIRQ:1;
    volatile unsigned int PSM_M2_CH3_EIRQ:1;
    volatile unsigned int PSM_M2_CH4_EIRQ:1;
    volatile unsigned int PSM_M2_CH5_EIRQ:1;
    volatile unsigned int PSM_M2_CH6_EIRQ:1;
    volatile unsigned int PSM_M2_CH7_EIRQ:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ICM_IRQG_CEI_PSM_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CEI_SPE_Bits
{
    volatile unsigned int SPE0_EIRQ:1;
    volatile unsigned int SPE1_EIRQ:1;
    volatile unsigned int SPE2_EIRQ:1;
    volatile unsigned int SPE3_EIRQ:1;
    volatile unsigned int SPE4_EIRQ:1;
    volatile unsigned int SPE5_EIRQ:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_ICM_IRQG_CEI_SPE_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CI_ATOM_Bits
{
    volatile unsigned int ATOM_M0_CH0_IRQ:1;
    volatile unsigned int ATOM_M0_CH1_IRQ:1;
    volatile unsigned int ATOM_M0_CH2_IRQ:1;
    volatile unsigned int ATOM_M0_CH3_IRQ:1;
    volatile unsigned int ATOM_M0_CH4_IRQ:1;
    volatile unsigned int ATOM_M0_CH5_IRQ:1;
    volatile unsigned int ATOM_M0_CH6_IRQ:1;
    volatile unsigned int ATOM_M0_CH7_IRQ:1;
    volatile unsigned int ATOM_M1_CH0_IRQ:1;
    volatile unsigned int ATOM_M1_CH1_IRQ:1;
    volatile unsigned int ATOM_M1_CH2_IRQ:1;
    volatile unsigned int ATOM_M1_CH3_IRQ:1;
    volatile unsigned int ATOM_M1_CH4_IRQ:1;
    volatile unsigned int ATOM_M1_CH5_IRQ:1;
    volatile unsigned int ATOM_M1_CH6_IRQ:1;
    volatile unsigned int ATOM_M1_CH7_IRQ:1;
    volatile unsigned int ATOM_M2_CH0_IRQ:1;
    volatile unsigned int ATOM_M2_CH1_IRQ:1;
    volatile unsigned int ATOM_M2_CH2_IRQ:1;
    volatile unsigned int ATOM_M2_CH3_IRQ:1;
    volatile unsigned int ATOM_M2_CH4_IRQ:1;
    volatile unsigned int ATOM_M2_CH5_IRQ:1;
    volatile unsigned int ATOM_M2_CH6_IRQ:1;
    volatile unsigned int ATOM_M2_CH7_IRQ:1;
    volatile unsigned int ATOM_M3_CH0_IRQ:1;
    volatile unsigned int ATOM_M3_CH1_IRQ:1;
    volatile unsigned int ATOM_M3_CH2_IRQ:1;
    volatile unsigned int ATOM_M3_CH3_IRQ:1;
    volatile unsigned int ATOM_M3_CH4_IRQ:1;
    volatile unsigned int ATOM_M3_CH5_IRQ:1;
    volatile unsigned int ATOM_M3_CH6_IRQ:1;
    volatile unsigned int ATOM_M3_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_CI_ATOM_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CI_MCS_Bits
{
    volatile unsigned int MCS_CH0_IRQ:1;
    volatile unsigned int MCS_CH1_IRQ:1;
    volatile unsigned int MCS_CH2_IRQ:1;
    volatile unsigned int MCS_CH3_IRQ:1;
    volatile unsigned int MCS_CH4_IRQ:1;
    volatile unsigned int MCS_CH5_IRQ:1;
    volatile unsigned int MCS_CH6_IRQ:1;
    volatile unsigned int MCS_CH7_IRQ:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_ICM_IRQG_CI_MCS_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CI_PSM_Bits
{
    volatile unsigned int PSM_M0_CH0_IRQ:1;
    volatile unsigned int PSM_M0_CH1_IRQ:1;
    volatile unsigned int PSM_M0_CH2_IRQ:1;
    volatile unsigned int PSM_M0_CH3_IRQ:1;
    volatile unsigned int PSM_M0_CH4_IRQ:1;
    volatile unsigned int PSM_M0_CH5_IRQ:1;
    volatile unsigned int PSM_M0_CH6_IRQ:1;
    volatile unsigned int PSM_M0_CH7_IRQ:1;
    volatile unsigned int PSM_M1_CH0_IRQ:1;
    volatile unsigned int PSM_M1_CH1_IRQ:1;
    volatile unsigned int PSM_M1_CH2_IRQ:1;
    volatile unsigned int PSM_M1_CH3_IRQ:1;
    volatile unsigned int PSM_M1_CH4_IRQ:1;
    volatile unsigned int PSM_M1_CH5_IRQ:1;
    volatile unsigned int PSM_M1_CH6_IRQ:1;
    volatile unsigned int PSM_M1_CH7_IRQ:1;
    volatile unsigned int PSM_M2_CH0_IRQ:1;
    volatile unsigned int PSM_M2_CH1_IRQ:1;
    volatile unsigned int PSM_M2_CH2_IRQ:1;
    volatile unsigned int PSM_M2_CH3_IRQ:1;
    volatile unsigned int PSM_M2_CH4_IRQ:1;
    volatile unsigned int PSM_M2_CH5_IRQ:1;
    volatile unsigned int PSM_M2_CH6_IRQ:1;
    volatile unsigned int PSM_M2_CH7_IRQ:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_ICM_IRQG_CI_PSM_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CI_SPE_Bits
{
    volatile unsigned int SPE0_IRQ:1;
    volatile unsigned int SPE1_IRQ:1;
    volatile unsigned int SPE2_IRQ:1;
    volatile unsigned int SPE3_IRQ:1;
    volatile unsigned int SPE4_IRQ:1;
    volatile unsigned int SPE5_IRQ:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_ICM_IRQG_CI_SPE_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_CI_TOM_Bits
{
    volatile unsigned int TOM_M0_CH0_IRQ:1;
    volatile unsigned int TOM_M0_CH1_IRQ:1;
    volatile unsigned int TOM_M0_CH2_IRQ:1;
    volatile unsigned int TOM_M0_CH3_IRQ:1;
    volatile unsigned int TOM_M0_CH4_IRQ:1;
    volatile unsigned int TOM_M0_CH5_IRQ:1;
    volatile unsigned int TOM_M0_CH6_IRQ:1;
    volatile unsigned int TOM_M0_CH7_IRQ:1;
    volatile unsigned int TOM_M0_CH8_IRQ:1;
    volatile unsigned int TOM_M0_CH9_IRQ:1;
    volatile unsigned int TOM_M0_CH10_IRQ:1;
    volatile unsigned int TOM_M0_CH11_IRQ:1;
    volatile unsigned int TOM_M0_CH12_IRQ:1;
    volatile unsigned int TOM_M0_CH13_IRQ:1;
    volatile unsigned int TOM_M0_CH14_IRQ:1;
    volatile unsigned int TOM_M0_CH15_IRQ:1;
    volatile unsigned int TOM_M1_CH0_IRQ:1;
    volatile unsigned int TOM_M1_CH1_IRQ:1;
    volatile unsigned int TOM_M1_CH2_IRQ:1;
    volatile unsigned int TOM_M1_CH3_IRQ:1;
    volatile unsigned int TOM_M1_CH4_IRQ:1;
    volatile unsigned int TOM_M1_CH5_IRQ:1;
    volatile unsigned int TOM_M1_CH6_IRQ:1;
    volatile unsigned int TOM_M1_CH7_IRQ:1;
    volatile unsigned int TOM_M1_CH8_IRQ:1;
    volatile unsigned int TOM_M1_CH9_IRQ:1;
    volatile unsigned int TOM_M1_CH10_IRQ:1;
    volatile unsigned int TOM_M1_CH11_IRQ:1;
    volatile unsigned int TOM_M1_CH12_IRQ:1;
    volatile unsigned int TOM_M1_CH13_IRQ:1;
    volatile unsigned int TOM_M1_CH14_IRQ:1;
    volatile unsigned int TOM_M1_CH15_IRQ:1;
} Ifx_GTM_ICM_IRQG_CI_TOM_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_MEI_Bits
{
    volatile unsigned int GTM_EIRQ:1;
    volatile unsigned int BRC_EIRQ:1;
    volatile unsigned int FIFO0_EIRQ:1;
    volatile unsigned int FIFO1_EIRQ:1;
    volatile unsigned int TIM0_EIRQ:1;
    volatile unsigned int TIM1_EIRQ:1;
    volatile unsigned int TIM2_EIRQ:1;
    volatile unsigned int TIM3_EIRQ:1;
    volatile unsigned int TIM4_EIRQ:1;
    volatile unsigned int TIM5_EIRQ:1;
    volatile unsigned int TIM6_EIRQ:1;
    volatile unsigned int TIM7_EIRQ:1;
    volatile unsigned int MCS0_EIRQ:1;
    volatile unsigned int MCS1_EIRQ:1;
    volatile unsigned int MCS2_EIRQ:1;
    volatile unsigned int MCS3_EIRQ:1;
    volatile unsigned int MCS4_EIRQ:1;
    volatile unsigned int MCS5_EIRQ:1;
    volatile unsigned int MCS6_EIRQ:1;
    volatile unsigned int MCS7_EIRQ:1;
    volatile unsigned int SPE0_EIRQ:1;
    volatile unsigned int SPE1_EIRQ:1;
    volatile unsigned int SPE2_EIRQ:1;
    volatile unsigned int SPE3_EIRQ:1;
    volatile unsigned int CMP_EIRQ:1;
    volatile unsigned int DPLL_EIRQ:1;
    volatile unsigned int reserved_26:6;
} Ifx_GTM_ICM_IRQG_MEI_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_MEI_CLS_Bits
{
    volatile unsigned int TIM_M0_EIRQ:1;
    volatile unsigned int MCS_M0_EIRQ:1;
    volatile unsigned int SPE_M0_EIRQ:1;
    volatile unsigned int FIFO_M0_EIRQ:1;
    volatile unsigned int reserved_4:4;
    volatile unsigned int TIM_M1_EIRQ:1;
    volatile unsigned int MCS_M1_EIRQ:1;
    volatile unsigned int SPE_M1_EIRQ:1;
    volatile unsigned int FIFO_M1_EIRQ:1;
    volatile unsigned int reserved_12:4;
    volatile unsigned int TIM_M2_EIRQ:1;
    volatile unsigned int MCS_M2_EIRQ:1;
    volatile unsigned int SPE_M2_EIRQ:1;
    volatile unsigned int reserved_19:1;
    volatile unsigned int reserved_20:4;
    volatile unsigned int TIM_M3_EIRQ:1;
    volatile unsigned int MCS_M3_EIRQ:1;
    volatile unsigned int SPE_M3_EIRQ:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_ICM_IRQG_MEI_CLS_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R0_Bits
{
    volatile unsigned int ARU_NEW_DATA0_IRQ:1;
    volatile unsigned int ARU_NEW_DATA1_IRQ:1;
    volatile unsigned int ARU_ACC_ACK_IRQ:1;
    volatile unsigned int BRC_IRQ:1;
    volatile unsigned int AEI_IRQ:1;
    volatile unsigned int CMP_IRQ:1;
    volatile unsigned int SPE0_IRQ:1;
    volatile unsigned int SPE1_IRQ:1;
    volatile unsigned int SPE2_IRQ:1;
    volatile unsigned int SPE3_IRQ:1;
    volatile unsigned int SPE4_IRQ:1;
    volatile unsigned int SPE5_IRQ:1;
    volatile unsigned int reserved_12:4;
    volatile unsigned int PSM0_CH0_IRQ:1;
    volatile unsigned int PSM0_CH1_IRQ:1;
    volatile unsigned int PSM0_CH2_IRQ:1;
    volatile unsigned int PSM0_CH3_IRQ:1;
    volatile unsigned int PSM0_CH4_IRQ:1;
    volatile unsigned int PSM0_CH5_IRQ:1;
    volatile unsigned int PSM0_CH6_IRQ:1;
    volatile unsigned int PSM0_CH7_IRQ:1;
    volatile unsigned int PSM1_CH0_IRQ:1;
    volatile unsigned int PSM1_CH1_IRQ:1;
    volatile unsigned int PSM1_CH2_IRQ:1;
    volatile unsigned int PSM1_CH3_IRQ:1;
    volatile unsigned int PSM1_CH4_IRQ:1;
    volatile unsigned int PSM1_CH5_IRQ:1;
    volatile unsigned int PSM1_CH6_IRQ:1;
    volatile unsigned int PSM1_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R0_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R1_Bits
{
    volatile unsigned int DPLL_DCGI_IRQ:1;
    volatile unsigned int DPLL_EDI_IRQ:1;
    volatile unsigned int DPLL_TINI_IRQ:1;
    volatile unsigned int DPLL_TAXI_IRQ:1;
    volatile unsigned int DPLL_SISI_IRQ:1;
    volatile unsigned int DPLL_TISI_IRQ:1;
    volatile unsigned int DPLL_MSI_IRQ:1;
    volatile unsigned int DPLL_MTI_IRQ:1;
    volatile unsigned int DPLL_SASI_IRQ:1;
    volatile unsigned int DPLL_TASI_IRQ:1;
    volatile unsigned int DPLL_PWI_IRQ:1;
    volatile unsigned int DPLL_W2I_IRQ:1;
    volatile unsigned int DPLL_W1I_IRQ:1;
    volatile unsigned int DPLL_GL1I_IRQ:1;
    volatile unsigned int DPLL_LL1I_IRQ:1;
    volatile unsigned int DPLL_EI_IRQ:1;
    volatile unsigned int DPLL_GL2I_IRQ:1;
    volatile unsigned int DPLL_LL2I_IRQ:1;
    volatile unsigned int DPLL_TE0I_IRQ:1;
    volatile unsigned int DPLL_TE1I_IRQ:1;
    volatile unsigned int DPLL_TE2I_IRQ:1;
    volatile unsigned int DPLL_TE3I_IRQ:1;
    volatile unsigned int DPLL_TE4I_IRQ:1;
    volatile unsigned int DPLL_CDTI_IRQ:1;
    volatile unsigned int DPLL_CDSI_IRQ:1;
    volatile unsigned int DPLL_TORI_IRQ:1;
    volatile unsigned int DPLL_SORI_IRQ:1;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_ICM_IRQG_R1_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R10_Bits
{
    volatile unsigned int ATOM4_CH0_IRQ:1;
    volatile unsigned int ATOM4_CH1_IRQ:1;
    volatile unsigned int ATOM4_CH2_IRQ:1;
    volatile unsigned int ATOM4_CH3_IRQ:1;
    volatile unsigned int ATOM4_CH4_IRQ:1;
    volatile unsigned int ATOM4_CH5_IRQ:1;
    volatile unsigned int ATOM4_CH6_IRQ:1;
    volatile unsigned int ATOM4_CH7_IRQ:1;
    volatile unsigned int ATOM5_CH0_IRQ:1;
    volatile unsigned int ATOM5_CH1_IRQ:1;
    volatile unsigned int ATOM5_CH2_IRQ:1;
    volatile unsigned int ATOM5_CH3_IRQ:1;
    volatile unsigned int ATOM5_CH4_IRQ:1;
    volatile unsigned int ATOM5_CH5_IRQ:1;
    volatile unsigned int ATOM5_CH6_IRQ:1;
    volatile unsigned int ATOM5_CH7_IRQ:1;
    volatile unsigned int ATOM6_CH0_IRQ:1;
    volatile unsigned int ATOM6_CH1_IRQ:1;
    volatile unsigned int ATOM6_CH2_IRQ:1;
    volatile unsigned int ATOM6_CH3_IRQ:1;
    volatile unsigned int ATOM6_CH4_IRQ:1;
    volatile unsigned int ATOM6_CH5_IRQ:1;
    volatile unsigned int ATOM6_CH6_IRQ:1;
    volatile unsigned int ATOM6_CH7_IRQ:1;
    volatile unsigned int ATOM7_CH0_IRQ:1;
    volatile unsigned int ATOM7_CH1_IRQ:1;
    volatile unsigned int ATOM7_CH2_IRQ:1;
    volatile unsigned int ATOM7_CH3_IRQ:1;
    volatile unsigned int ATOM7_CH4_IRQ:1;
    volatile unsigned int ATOM7_CH5_IRQ:1;
    volatile unsigned int ATOM7_CH6_IRQ:1;
    volatile unsigned int ATOM7_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R10_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R11_Bits
{
    volatile unsigned int ATOM8_CH0_IRQ:1;
    volatile unsigned int ATOM8_CH1_IRQ:1;
    volatile unsigned int ATOM8_CH2_IRQ:1;
    volatile unsigned int ATOM8_CH3_IRQ:1;
    volatile unsigned int ATOM8_CH4_IRQ:1;
    volatile unsigned int ATOM8_CH5_IRQ:1;
    volatile unsigned int ATOM8_CH6_IRQ:1;
    volatile unsigned int ATOM8_CH7_IRQ:1;
    volatile unsigned int ATOM9_CH0_IRQ:1;
    volatile unsigned int ATOM9_CH1_IRQ:1;
    volatile unsigned int ATOM9_CH2_IRQ:1;
    volatile unsigned int ATOM9_CH3_IRQ:1;
    volatile unsigned int ATOM9_CH4_IRQ:1;
    volatile unsigned int ATOM9_CH5_IRQ:1;
    volatile unsigned int ATOM9_CH6_IRQ:1;
    volatile unsigned int ATOM9_CH7_IRQ:1;
    volatile unsigned int ATOM10_CH0_IRQ:1;
    volatile unsigned int ATOM10_CH1_IRQ:1;
    volatile unsigned int ATOM10_CH2_IRQ:1;
    volatile unsigned int ATOM10_CH3_IRQ:1;
    volatile unsigned int ATOM10_CH4_IRQ:1;
    volatile unsigned int ATOM10_CH5_IRQ:1;
    volatile unsigned int ATOM10_CH6_IRQ:1;
    volatile unsigned int ATOM10_CH7_IRQ:1;
    volatile unsigned int ATOM11_CH0_IRQ:1;
    volatile unsigned int ATOM11_CH1_IRQ:1;
    volatile unsigned int ATOM11_CH2_IRQ:1;
    volatile unsigned int ATOM11_CH3_IRQ:1;
    volatile unsigned int ATOM11_CH4_IRQ:1;
    volatile unsigned int ATOM11_CH5_IRQ:1;
    volatile unsigned int ATOM11_CH6_IRQ:1;
    volatile unsigned int ATOM11_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R11_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R2_Bits
{
    volatile unsigned int TIM0_CH0_IRQ:1;
    volatile unsigned int TIM0_CH1_IRQ:1;
    volatile unsigned int TIM0_CH2_IRQ:1;
    volatile unsigned int TIM0_CH3_IRQ:1;
    volatile unsigned int TIM0_CH4_IRQ:1;
    volatile unsigned int TIM0_CH5_IRQ:1;
    volatile unsigned int TIM0_CH6_IRQ:1;
    volatile unsigned int TIM0_CH7_IRQ:1;
    volatile unsigned int TIM1_CH0_IRQ:1;
    volatile unsigned int TIM1_CH1_IRQ:1;
    volatile unsigned int TIM1_CH2_IRQ:1;
    volatile unsigned int TIM1_CH3_IRQ:1;
    volatile unsigned int TIM1_CH4_IRQ:1;
    volatile unsigned int TIM1_CH5_IRQ:1;
    volatile unsigned int TIM1_CH6_IRQ:1;
    volatile unsigned int TIM1_CH7_IRQ:1;
    volatile unsigned int TIM2_CH0_IRQ:1;
    volatile unsigned int TIM2_CH1_IRQ:1;
    volatile unsigned int TIM2_CH2_IRQ:1;
    volatile unsigned int TIM2_CH3_IRQ:1;
    volatile unsigned int TIM2_CH4_IRQ:1;
    volatile unsigned int TIM2_CH5_IRQ:1;
    volatile unsigned int TIM2_CH6_IRQ:1;
    volatile unsigned int TIM2_CH7_IRQ:1;
    volatile unsigned int TIM3_CH0_IRQ:1;
    volatile unsigned int TIM3_CH1_IRQ:1;
    volatile unsigned int TIM3_CH2_IRQ:1;
    volatile unsigned int TIM3_CH3_IRQ:1;
    volatile unsigned int TIM3_CH4_IRQ:1;
    volatile unsigned int TIM3_CH5_IRQ:1;
    volatile unsigned int TIM3_CH6_IRQ:1;
    volatile unsigned int TIM3_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R2_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R3_Bits
{
    volatile unsigned int TIM4_CH0_IRQ:1;
    volatile unsigned int TIM4_CH1_IRQ:1;
    volatile unsigned int TIM4_CH2_IRQ:1;
    volatile unsigned int TIM4_CH3_IRQ:1;
    volatile unsigned int TIM4_CH4_IRQ:1;
    volatile unsigned int TIM4_CH5_IRQ:1;
    volatile unsigned int TIM4_CH6_IRQ:1;
    volatile unsigned int TIM4_CH7_IRQ:1;
    volatile unsigned int TIM5_CH0_IRQ:1;
    volatile unsigned int TIM5_CH1_IRQ:1;
    volatile unsigned int TIM5_CH2_IRQ:1;
    volatile unsigned int TIM5_CH3_IRQ:1;
    volatile unsigned int TIM5_CH4_IRQ:1;
    volatile unsigned int TIM5_CH5_IRQ:1;
    volatile unsigned int TIM5_CH6_IRQ:1;
    volatile unsigned int TIM5_CH7_IRQ:1;
    volatile unsigned int TIM6_CH0_IRQ:1;
    volatile unsigned int TIM6_CH1_IRQ:1;
    volatile unsigned int TIM6_CH2_IRQ:1;
    volatile unsigned int TIM6_CH3_IRQ:1;
    volatile unsigned int TIM6_CH4_IRQ:1;
    volatile unsigned int TIM6_CH5_IRQ:1;
    volatile unsigned int TIM6_CH6_IRQ:1;
    volatile unsigned int TIM6_CH7_IRQ:1;
    volatile unsigned int TIM7_CH0_IRQ:1;
    volatile unsigned int TIM7_CH1_IRQ:1;
    volatile unsigned int TIM7_CH2_IRQ:1;
    volatile unsigned int TIM7_CH3_IRQ:1;
    volatile unsigned int TIM7_CH4_IRQ:1;
    volatile unsigned int TIM7_CH5_IRQ:1;
    volatile unsigned int TIM7_CH6_IRQ:1;
    volatile unsigned int TIM7_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R3_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R4_Bits
{
    volatile unsigned int MCS0_CH0_IRQ:1;
    volatile unsigned int MCS0_CH1_IRQ:1;
    volatile unsigned int MCS0_CH2_IRQ:1;
    volatile unsigned int MCS0_CH3_IRQ:1;
    volatile unsigned int MCS0_CH4_IRQ:1;
    volatile unsigned int MCS0_CH5_IRQ:1;
    volatile unsigned int MCS0_CH6_IRQ:1;
    volatile unsigned int MCS0_CH7_IRQ:1;
    volatile unsigned int MCS1_CH0_IRQ:1;
    volatile unsigned int MCS1_CH1_IRQ:1;
    volatile unsigned int MCS1_CH2_IRQ:1;
    volatile unsigned int MCS1_CH3_IRQ:1;
    volatile unsigned int MCS1_CH4_IRQ:1;
    volatile unsigned int MCS1_CH5_IRQ:1;
    volatile unsigned int MCS1_CH6_IRQ:1;
    volatile unsigned int MCS1_CH7_IRQ:1;
    volatile unsigned int MCS2_CH0_IRQ:1;
    volatile unsigned int MCS2_CH1_IRQ:1;
    volatile unsigned int MCS2_CH2_IRQ:1;
    volatile unsigned int MCS2_CH3_IRQ:1;
    volatile unsigned int MCS2_CH4_IRQ:1;
    volatile unsigned int MCS2_CH5_IRQ:1;
    volatile unsigned int MCS2_CH6_IRQ:1;
    volatile unsigned int MCS2_CH7_IRQ:1;
    volatile unsigned int MCS3_CH0_IRQ:1;
    volatile unsigned int MCS3_CH1_IRQ:1;
    volatile unsigned int MCS3_CH2_IRQ:1;
    volatile unsigned int MCS3_CH3_IRQ:1;
    volatile unsigned int MCS3_CH4_IRQ:1;
    volatile unsigned int MCS3_CH5_IRQ:1;
    volatile unsigned int MCS3_CH6_IRQ:1;
    volatile unsigned int MCS3_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R4_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R5_Bits
{
    volatile unsigned int MCS4_CH0_IRQ:1;
    volatile unsigned int MCS4_CH1_IRQ:1;
    volatile unsigned int MCS4_CH2_IRQ:1;
    volatile unsigned int MCS4_CH3_IRQ:1;
    volatile unsigned int MCS4_CH4_IRQ:1;
    volatile unsigned int MCS4_CH5_IRQ:1;
    volatile unsigned int MCS4_CH6_IRQ:1;
    volatile unsigned int MCS4_CH7_IRQ:1;
    volatile unsigned int MCS5_CH0_IRQ:1;
    volatile unsigned int MCS5_CH1_IRQ:1;
    volatile unsigned int MCS5_CH2_IRQ:1;
    volatile unsigned int MCS5_CH3_IRQ:1;
    volatile unsigned int MCS5_CH4_IRQ:1;
    volatile unsigned int MCS5_CH5_IRQ:1;
    volatile unsigned int MCS5_CH6_IRQ:1;
    volatile unsigned int MCS5_CH7_IRQ:1;
    volatile unsigned int MCS6_CH0_IRQ:1;
    volatile unsigned int MCS6_CH1_IRQ:1;
    volatile unsigned int MCS6_CH2_IRQ:1;
    volatile unsigned int MCS6_CH3_IRQ:1;
    volatile unsigned int MCS6_CH4_IRQ:1;
    volatile unsigned int MCS6_CH5_IRQ:1;
    volatile unsigned int MCS6_CH6_IRQ:1;
    volatile unsigned int MCS6_CH7_IRQ:1;
    volatile unsigned int MCS7_CH0_IRQ:1;
    volatile unsigned int MCS7_CH1_IRQ:1;
    volatile unsigned int MCS7_CH2_IRQ:1;
    volatile unsigned int MCS7_CH3_IRQ:1;
    volatile unsigned int MCS7_CH4_IRQ:1;
    volatile unsigned int MCS7_CH5_IRQ:1;
    volatile unsigned int MCS7_CH6_IRQ:1;
    volatile unsigned int MCS7_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R5_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R6_Bits
{
    volatile unsigned int TOM0_CH0_IRQ:1;
    volatile unsigned int TOM0_CH1_IRQ:1;
    volatile unsigned int TOM0_CH2_IRQ:1;
    volatile unsigned int TOM0_CH3_IRQ:1;
    volatile unsigned int TOM0_CH4_IRQ:1;
    volatile unsigned int TOM0_CH5_IRQ:1;
    volatile unsigned int TOM0_CH6_IRQ:1;
    volatile unsigned int TOM0_CH7_IRQ:1;
    volatile unsigned int TOM0_CH8_IRQ:1;
    volatile unsigned int TOM0_CH9_IRQ:1;
    volatile unsigned int TOM0_CH10_IRQ:1;
    volatile unsigned int TOM0_CH11_IRQ:1;
    volatile unsigned int TOM0_CH12_IRQ:1;
    volatile unsigned int TOM0_CH13_IRQ:1;
    volatile unsigned int TOM0_CH14_IRQ:1;
    volatile unsigned int TOM0_CH15_IRQ:1;
    volatile unsigned int TOM1_CH0_IRQ:1;
    volatile unsigned int TOM1_CH1_IRQ:1;
    volatile unsigned int TOM1_CH2_IRQ:1;
    volatile unsigned int TOM1_CH3_IRQ:1;
    volatile unsigned int TOM1_CH4_IRQ:1;
    volatile unsigned int TOM1_CH5_IRQ:1;
    volatile unsigned int TOM1_CH6_IRQ:1;
    volatile unsigned int TOM1_CH7_IRQ:1;
    volatile unsigned int TOM1_CH8_IRQ:1;
    volatile unsigned int TOM1_CH9_IRQ:1;
    volatile unsigned int TOM1_CH10_IRQ:1;
    volatile unsigned int TOM1_CH11_IRQ:1;
    volatile unsigned int TOM1_CH12_IRQ:1;
    volatile unsigned int TOM1_CH13_IRQ:1;
    volatile unsigned int TOM1_CH14_IRQ:1;
    volatile unsigned int TOM1_CH15_IRQ:1;
} Ifx_GTM_ICM_IRQG_R6_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R7_Bits
{
    volatile unsigned int TOM2_CH0_IRQ:1;
    volatile unsigned int TOM2_CH1_IRQ:1;
    volatile unsigned int TOM2_CH2_IRQ:1;
    volatile unsigned int TOM2_CH3_IRQ:1;
    volatile unsigned int TOM2_CH4_IRQ:1;
    volatile unsigned int TOM2_CH5_IRQ:1;
    volatile unsigned int TOM2_CH6_IRQ:1;
    volatile unsigned int TOM2_CH7_IRQ:1;
    volatile unsigned int TOM2_CH8_IRQ:1;
    volatile unsigned int TOM2_CH9_IRQ:1;
    volatile unsigned int TOM2_CH10_IRQ:1;
    volatile unsigned int TOM2_CH11_IRQ:1;
    volatile unsigned int TOM2_CH12_IRQ:1;
    volatile unsigned int TOM2_CH13_IRQ:1;
    volatile unsigned int TOM2_CH14_IRQ:1;
    volatile unsigned int TOM2_CH15_IRQ:1;
    volatile unsigned int TOM3_CH0_IRQ:1;
    volatile unsigned int TOM3_CH1_IRQ:1;
    volatile unsigned int TOM3_CH2_IRQ:1;
    volatile unsigned int TOM3_CH3_IRQ:1;
    volatile unsigned int TOM3_CH4_IRQ:1;
    volatile unsigned int TOM3_CH5_IRQ:1;
    volatile unsigned int TOM3_CH6_IRQ:1;
    volatile unsigned int TOM3_CH7_IRQ:1;
    volatile unsigned int TOM3_CH8_IRQ:1;
    volatile unsigned int TOM3_CH9_IRQ:1;
    volatile unsigned int TOM3_CH10_IRQ:1;
    volatile unsigned int TOM3_CH11_IRQ:1;
    volatile unsigned int TOM3_CH12_IRQ:1;
    volatile unsigned int TOM3_CH13_IRQ:1;
    volatile unsigned int TOM3_CH14_IRQ:1;
    volatile unsigned int TOM3_CH15_IRQ:1;
} Ifx_GTM_ICM_IRQG_R7_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R8_Bits
{
    volatile unsigned int TOM4_CH0_IRQ:1;
    volatile unsigned int TOM4_CH1_IRQ:1;
    volatile unsigned int TOM4_CH2_IRQ:1;
    volatile unsigned int TOM4_CH3_IRQ:1;
    volatile unsigned int TOM4_CH4_IRQ:1;
    volatile unsigned int TOM4_CH5_IRQ:1;
    volatile unsigned int TOM4_CH6_IRQ:1;
    volatile unsigned int TOM4_CH7_IRQ:1;
    volatile unsigned int TOM4_CH8_IRQ:1;
    volatile unsigned int TOM4_CH9_IRQ:1;
    volatile unsigned int TOM4_CH10_IRQ:1;
    volatile unsigned int TOM4_CH11_IRQ:1;
    volatile unsigned int TOM4_CH12_IRQ:1;
    volatile unsigned int TOM4_CH13_IRQ:1;
    volatile unsigned int TOM4_CH14_IRQ:1;
    volatile unsigned int TOM4_CH15_IRQ:1;
    volatile unsigned int TOM5_CH0_IRQ:1;
    volatile unsigned int TOM5_CH1_IRQ:1;
    volatile unsigned int TOM5_CH2_IRQ:1;
    volatile unsigned int TOM5_CH3_IRQ:1;
    volatile unsigned int TOM5_CH4_IRQ:1;
    volatile unsigned int TOM5_CH5_IRQ:1;
    volatile unsigned int TOM5_CH6_IRQ:1;
    volatile unsigned int TOM5_CH7_IRQ:1;
    volatile unsigned int TOM5_CH8_IRQ:1;
    volatile unsigned int TOM5_CH9_IRQ:1;
    volatile unsigned int TOM5_CH10_IRQ:1;
    volatile unsigned int TOM5_CH11_IRQ:1;
    volatile unsigned int TOM5_CH12_IRQ:1;
    volatile unsigned int TOM5_CH13_IRQ:1;
    volatile unsigned int TOM5_CH14_IRQ:1;
    volatile unsigned int TOM5_CH15_IRQ:1;
} Ifx_GTM_ICM_IRQG_R8_Bits;


typedef struct _Ifx_GTM_ICM_IRQG_R9_Bits
{
    volatile unsigned int ATOM0_CH0_IRQ:1;
    volatile unsigned int ATOM0_CH1_IRQ:1;
    volatile unsigned int ATOM0_CH2_IRQ:1;
    volatile unsigned int ATOM0_CH3_IRQ:1;
    volatile unsigned int ATOM0_CH4_IRQ:1;
    volatile unsigned int ATOM0_CH5_IRQ:1;
    volatile unsigned int ATOM0_CH6_IRQ:1;
    volatile unsigned int ATOM0_CH7_IRQ:1;
    volatile unsigned int ATOM1_CH0_IRQ:1;
    volatile unsigned int ATOM1_CH1_IRQ:1;
    volatile unsigned int ATOM1_CH2_IRQ:1;
    volatile unsigned int ATOM1_CH3_IRQ:1;
    volatile unsigned int ATOM1_CH4_IRQ:1;
    volatile unsigned int ATOM1_CH5_IRQ:1;
    volatile unsigned int ATOM1_CH6_IRQ:1;
    volatile unsigned int ATOM1_CH7_IRQ:1;
    volatile unsigned int ATOM2_CH0_IRQ:1;
    volatile unsigned int ATOM2_CH1_IRQ:1;
    volatile unsigned int ATOM2_CH2_IRQ:1;
    volatile unsigned int ATOM2_CH3_IRQ:1;
    volatile unsigned int ATOM2_CH4_IRQ:1;
    volatile unsigned int ATOM2_CH5_IRQ:1;
    volatile unsigned int ATOM2_CH6_IRQ:1;
    volatile unsigned int ATOM2_CH7_IRQ:1;
    volatile unsigned int ATOM3_CH0_IRQ:1;
    volatile unsigned int ATOM3_CH1_IRQ:1;
    volatile unsigned int ATOM3_CH2_IRQ:1;
    volatile unsigned int ATOM3_CH3_IRQ:1;
    volatile unsigned int ATOM3_CH4_IRQ:1;
    volatile unsigned int ATOM3_CH5_IRQ:1;
    volatile unsigned int ATOM3_CH6_IRQ:1;
    volatile unsigned int ATOM3_CH7_IRQ:1;
} Ifx_GTM_ICM_IRQG_R9_Bits;


typedef struct _Ifx_GTM_INTOUT_Bits
{
    Ifx_UReg_32Bit INT0:2;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_GTM_INTOUT_Bits;


typedef struct _Ifx_GTM_IRQ_EN_Bits
{
    volatile unsigned int AEI_TO_XPT_IRQ_EN:1;
    volatile unsigned int AEI_USP_ADDR_IRQ_EN:1;
    volatile unsigned int AEI_IM_ADDR_IRQ_EN:1;
    volatile unsigned int AEI_USP_BE_IRQ_EN:1;
    volatile unsigned int AEIM_USP_ADDR_IRQ_EN:1;
    volatile unsigned int AEIM_IM_ADDR_IRQ_EN:1;
    volatile unsigned int AEIM_USP_BE_IRQ_EN:1;
    volatile unsigned int CLK_EN_ERR_IRQ_EN:1;
    volatile unsigned int CLK_PER_ERR_IRQ_EN:1;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_IRQ_EN_Bits;


typedef struct _Ifx_GTM_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_AEI_TO_XPT:1;
    volatile unsigned int TRG_AEI_USP_ADDR:1;
    volatile unsigned int TRG_AEI_IM_ADDR:1;
    volatile unsigned int TRG_AEI_USP_BE:1;
    volatile unsigned int TRG_AEIM_USP_ADDR:1;
    volatile unsigned int TRG_AEIM_IM_ADDR:1;
    volatile unsigned int TRG_AEIM_USP_BE:1;
    volatile unsigned int TRG_CLK_EN_ERR:1;
    volatile unsigned int TRG_CLK_PER_ERR:1;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_IRQ_NOTIFY_Bits
{
    volatile unsigned int AEI_TO_XPT:1;
    volatile unsigned int AEI_USP_ADDR:1;
    volatile unsigned int AEI_IM_ADDR:1;
    volatile unsigned int AEI_USP_BE:1;
    volatile unsigned int AEIM_USP_ADDR:1;
    volatile unsigned int AEIM_IM_ADDR:1;
    volatile unsigned int AEIM_USP_BE:1;
    volatile unsigned int CLK_EN_ERR:1;
    volatile unsigned int CLK_PER_ERR:1;
    volatile unsigned int reserved_9:15;
    volatile unsigned int CLK_EN_ERR_STATE0:1;
    volatile unsigned int CLK_EN_ERR_STATE1:1;
    volatile unsigned int reserved_26:2;
    volatile unsigned int CLK_EN_EXP_STATE0:1;
    volatile unsigned int CLK_EN_EXP_STATE1:1;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_LCDCDCOUTSEL_Bits
{
    Ifx_UReg_32Bit SEL:4;
    Ifx_UReg_32Bit reserved_4:28;
} Ifx_GTM_LCDCDCOUTSEL_Bits;


typedef struct _Ifx_GTM_MAP_CTRL_Bits
{
    volatile unsigned int TSEL:1;
    volatile unsigned int SSL:3;
    volatile unsigned int LSEL:1;
    volatile unsigned int reserved_5:11;
    volatile unsigned int TSPP0_EN:1;
    volatile unsigned int TSPP0_DLD:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int TSPP0_I0V:1;
    volatile unsigned int TSPP0_I1V:1;
    volatile unsigned int TSPP0_I2V:1;
    volatile unsigned int reserved_23:1;
    volatile unsigned int TSPP1_EN:1;
    volatile unsigned int TSPP1_DLD:1;
    volatile unsigned int reserved_26:2;
    volatile unsigned int TSPP1_I0V:1;
    volatile unsigned int TSPP1_I1V:1;
    volatile unsigned int TSPP1_I2V:1;
    volatile unsigned int reserved_31:1;
} Ifx_GTM_MAP_CTRL_Bits;


typedef struct _Ifx_GTM_MCFG_CTRL_Bits
{
    volatile unsigned int MEM0:2;
    volatile unsigned int MEM1:2;
    volatile unsigned int MEM2:2;
    volatile unsigned int MEM3:2;
    volatile unsigned int MEM4:2;
    volatile unsigned int MEM5:2;
    volatile unsigned int MEM6:2;
    volatile unsigned int reserved_14:2;
    volatile unsigned int reserved_16:2;
    volatile unsigned int reserved_18:2;
    volatile unsigned int reserved_20:12;
} Ifx_GTM_MCFG_CTRL_Bits;


typedef struct _Ifx_GTM_MCSINTCLR_Bits
{
    Ifx_UReg_32Bit MCS0:1;
    Ifx_UReg_32Bit MCS1:1;
    Ifx_UReg_32Bit MCS2:1;
    Ifx_UReg_32Bit MCS3:1;
    Ifx_UReg_32Bit MCS4:1;
    Ifx_UReg_32Bit MCS5:1;
    Ifx_UReg_32Bit MCS6:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_GTM_MCSINTCLR_Bits;


typedef struct _Ifx_GTM_MCSINTSTAT_Bits
{
    Ifx_UReg_32Bit MCS00:1;
    Ifx_UReg_32Bit MCS10:1;
    Ifx_UReg_32Bit MCS20:1;
    Ifx_UReg_32Bit MCS30:1;
    Ifx_UReg_32Bit MCS40:1;
    Ifx_UReg_32Bit MCS50:1;
    Ifx_UReg_32Bit MCS60:1;
    Ifx_UReg_32Bit reserved_7:25;
} Ifx_GTM_MCSINTSTAT_Bits;


typedef struct _Ifx_GTM_MCSTRIGOUTSEL_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit reserved_16:4;
    Ifx_UReg_32Bit reserved_20:4;
    Ifx_UReg_32Bit reserved_24:4;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_GTM_MCSTRIGOUTSEL_Bits;


typedef struct _Ifx_GTM_MCS_AEM_DIS_Bits
{
    volatile unsigned int DIS_CLS0:2;
    volatile unsigned int DIS_CLS1:2;
    volatile unsigned int DIS_CLS2:2;
    volatile unsigned int DIS_CLS3:2;
    volatile unsigned int DIS_CLS4:2;
    volatile unsigned int DIS_CLS5:2;
    volatile unsigned int DIS_CLS6:2;
    volatile unsigned int DIS_CLS7:2;
    volatile unsigned int DIS_CLS8:2;
    volatile unsigned int DIS_CLS9:2;
    volatile unsigned int DIS_CLS10:2;
    volatile unsigned int DIS_CLS11:2;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_AEM_DIS_Bits;


typedef struct _Ifx_GTM_MCS_CAT_Bits
{
    volatile unsigned int CAT0:1;
    volatile unsigned int CAT1:1;
    volatile unsigned int CAT2:1;
    volatile unsigned int CAT3:1;
    volatile unsigned int CAT4:1;
    volatile unsigned int CAT5:1;
    volatile unsigned int CAT6:1;
    volatile unsigned int CAT7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MCS_CAT_Bits;


typedef struct _Ifx_GTM_MCS_CH_ACB_Bits
{
    volatile unsigned int ACB0:1;
    volatile unsigned int ACB1:1;
    volatile unsigned int ACB2:1;
    volatile unsigned int ACB3:1;
    volatile unsigned int ACB4:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_MCS_CH_ACB_Bits;


typedef struct _Ifx_GTM_MCS_CH_CTRG_Bits
{
    volatile unsigned int TRG0:1;
    volatile unsigned int TRG1:1;
    volatile unsigned int TRG2:1;
    volatile unsigned int TRG3:1;
    volatile unsigned int TRG4:1;
    volatile unsigned int TRG5:1;
    volatile unsigned int TRG6:1;
    volatile unsigned int TRG7:1;
    volatile unsigned int TRG8:1;
    volatile unsigned int TRG9:1;
    volatile unsigned int TRG10:1;
    volatile unsigned int TRG11:1;
    volatile unsigned int TRG12:1;
    volatile unsigned int TRG13:1;
    volatile unsigned int TRG14:1;
    volatile unsigned int TRG15:1;
    volatile unsigned int TRG16:1;
    volatile unsigned int TRG17:1;
    volatile unsigned int TRG18:1;
    volatile unsigned int TRG19:1;
    volatile unsigned int TRG20:1;
    volatile unsigned int TRG21:1;
    volatile unsigned int TRG22:1;
    volatile unsigned int TRG23:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_CTRG_Bits;


typedef struct _Ifx_GTM_MCS_CH_CTRL_Bits
{
    volatile unsigned int EN:1;
    volatile unsigned int IRQ:1;
    volatile unsigned int ERR:1;
    volatile unsigned int reserved_3:1;
    volatile unsigned int CY:1;
    volatile unsigned int Z:1;
    volatile unsigned int V:1;
    volatile unsigned int N:1;
    volatile unsigned int CAT:1;
    volatile unsigned int CWT:1;
    volatile unsigned int SAT:1;
    volatile unsigned int reserved_11:5;
    volatile unsigned int SP_CNT:3;
    volatile unsigned int reserved_19:13;
} Ifx_GTM_MCS_CH_CTRL_Bits;


typedef struct _Ifx_GTM_MCS_CH_EIRQ_EN_Bits
{
    volatile unsigned int MCS_EIRQ_EN0:1;
    volatile unsigned int STK_ERR_EIRQ_EN:1;
    volatile unsigned int ERR_EIRQ_EN:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_MCS_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_EN_Bits
{
    volatile unsigned int MCS_IRQ_EN:1;
    volatile unsigned int STK_ERR_IRQ_EN:1;
    volatile unsigned int ERR_IRQ_EN:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_MCS_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_MCS_IRQ:1;
    volatile unsigned int TRG_STK_ERR_IRQ:1;
    volatile unsigned int TRG_ERR_IRQ:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_MCS_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_MCS_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_MCS_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int MCS_IRQ:1;
    volatile unsigned int STK_ERR_IRQ:1;
    volatile unsigned int ERR_IRQ:1;
    volatile unsigned int reserved_3:29;
} Ifx_GTM_MCS_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_MCS_CH_MHB_Bits
{
    volatile unsigned int DATA:8;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MCS_CH_MHB_Bits;


typedef struct _Ifx_GTM_MCS_CH_PC_Bits
{
    volatile unsigned int PC:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_MCS_CH_PC_Bits;


typedef struct _Ifx_GTM_MCS_CH_R_Bits
{
    volatile unsigned int DATA:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_R_Bits;


typedef struct _Ifx_GTM_MCS_CH_STRG_Bits
{
    volatile unsigned int TRG0:1;
    volatile unsigned int TRG1:1;
    volatile unsigned int TRG2:1;
    volatile unsigned int TRG3:1;
    volatile unsigned int TRG4:1;
    volatile unsigned int TRG5:1;
    volatile unsigned int TRG6:1;
    volatile unsigned int TRG7:1;
    volatile unsigned int TRG8:1;
    volatile unsigned int TRG9:1;
    volatile unsigned int TRG10:1;
    volatile unsigned int TRG11:1;
    volatile unsigned int TRG12:1;
    volatile unsigned int TRG13:1;
    volatile unsigned int TRG14:1;
    volatile unsigned int TRG15:1;
    volatile unsigned int TRG16:1;
    volatile unsigned int TRG17:1;
    volatile unsigned int TRG18:1;
    volatile unsigned int TRG19:1;
    volatile unsigned int TRG20:1;
    volatile unsigned int TRG21:1;
    volatile unsigned int TRG22:1;
    volatile unsigned int TRG23:1;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_MCS_CH_STRG_Bits;


typedef struct _Ifx_GTM_MCS_CTRL_STAT_Bits
{
    volatile unsigned int SCD_MODE:2;
    volatile unsigned int reserved_2:6;
    volatile unsigned int SCD_CH:4;
    volatile unsigned int reserved_12:4;
    volatile unsigned int RAM_RST:1;
    volatile unsigned int HLT_SP_OFL:1;
    volatile unsigned int reserved_18:2;
    volatile unsigned int ERR_SRC_ID:3;
    volatile unsigned int reserved_23:1;
    volatile unsigned int EN_TIM_FOUT:1;
    volatile unsigned int EN_XOREG:1;
    volatile unsigned int HLT_AEIM_ERR:1;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_MCS_CTRL_STAT_Bits;


typedef struct _Ifx_GTM_MCS_CWT_Bits
{
    volatile unsigned int CWT0:1;
    volatile unsigned int CWT1:1;
    volatile unsigned int CWT2:1;
    volatile unsigned int CWT3:1;
    volatile unsigned int CWT4:1;
    volatile unsigned int CWT5:1;
    volatile unsigned int CWT6:1;
    volatile unsigned int CWT7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MCS_CWT_Bits;


typedef struct _Ifx_GTM_MCS_ERR_Bits
{
    volatile unsigned int ERR0:1;
    volatile unsigned int ERR1:1;
    volatile unsigned int ERR2:1;
    volatile unsigned int ERR3:1;
    volatile unsigned int ERR4:1;
    volatile unsigned int ERR5:1;
    volatile unsigned int ERR6:1;
    volatile unsigned int ERR7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MCS_ERR_Bits;


typedef struct _Ifx_GTM_MCS_REG_PROT_Bits
{
    volatile unsigned int WPROT0:2;
    volatile unsigned int WPROT1:2;
    volatile unsigned int WPROT2:2;
    volatile unsigned int WPROT3:2;
    volatile unsigned int WPROT4:2;
    volatile unsigned int WPROT5:2;
    volatile unsigned int WPROT6:2;
    volatile unsigned int WPROT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_MCS_REG_PROT_Bits;


typedef struct _Ifx_GTM_MCS_RESET_Bits
{
    volatile unsigned int RST0:1;
    volatile unsigned int RST1:1;
    volatile unsigned int RST2:1;
    volatile unsigned int RST3:1;
    volatile unsigned int RST4:1;
    volatile unsigned int RST5:1;
    volatile unsigned int RST6:1;
    volatile unsigned int RST7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MCS_RESET_Bits;


typedef struct _Ifx_GTM_MON_ACTIVITY_MCS_Bits
{
    volatile unsigned int MCA_0:1;
    volatile unsigned int MCA_1:1;
    volatile unsigned int MCA_2:1;
    volatile unsigned int MCA_3:1;
    volatile unsigned int MCA_4:1;
    volatile unsigned int MCA_5:1;
    volatile unsigned int MCA_6:1;
    volatile unsigned int MCA_7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_MON_ACTIVITY_MCS_Bits;


typedef struct _Ifx_GTM_MON_ACTIVITY_R0_Bits
{
    volatile unsigned int MCA_0_0:1;
    volatile unsigned int MCA_0_1:1;
    volatile unsigned int MCA_0_2:1;
    volatile unsigned int MCA_0_3:1;
    volatile unsigned int MCA_0_4:1;
    volatile unsigned int MCA_0_5:1;
    volatile unsigned int MCA_0_6:1;
    volatile unsigned int MCA_0_7:1;
    volatile unsigned int MCA_1_0:1;
    volatile unsigned int MCA_1_1:1;
    volatile unsigned int MCA_1_2:1;
    volatile unsigned int MCA_1_3:1;
    volatile unsigned int MCA_1_4:1;
    volatile unsigned int MCA_1_5:1;
    volatile unsigned int MCA_1_6:1;
    volatile unsigned int MCA_1_7:1;
    volatile unsigned int MCA_2_0:1;
    volatile unsigned int MCA_2_1:1;
    volatile unsigned int MCA_2_2:1;
    volatile unsigned int MCA_2_3:1;
    volatile unsigned int MCA_2_4:1;
    volatile unsigned int MCA_2_5:1;
    volatile unsigned int MCA_2_6:1;
    volatile unsigned int MCA_2_7:1;
    volatile unsigned int MCA_3_0:1;
    volatile unsigned int MCA_3_1:1;
    volatile unsigned int MCA_3_2:1;
    volatile unsigned int MCA_3_3:1;
    volatile unsigned int MCA_3_4:1;
    volatile unsigned int MCA_3_5:1;
    volatile unsigned int MCA_3_6:1;
    volatile unsigned int MCA_3_7:1;
} Ifx_GTM_MON_ACTIVITY_R0_Bits;


typedef struct _Ifx_GTM_MON_ACTIVITY_R1_Bits
{
    volatile unsigned int MCA_4_0:1;
    volatile unsigned int MCA_4_1:1;
    volatile unsigned int MCA_4_2:1;
    volatile unsigned int MCA_4_3:1;
    volatile unsigned int MCA_4_4:1;
    volatile unsigned int MCA_4_5:1;
    volatile unsigned int MCA_4_6:1;
    volatile unsigned int MCA_4_7:1;
    volatile unsigned int MCA_5_0:1;
    volatile unsigned int MCA_5_1:1;
    volatile unsigned int MCA_5_2:1;
    volatile unsigned int MCA_5_3:1;
    volatile unsigned int MCA_5_4:1;
    volatile unsigned int MCA_5_5:1;
    volatile unsigned int MCA_5_6:1;
    volatile unsigned int MCA_5_7:1;
    volatile unsigned int MCA_6_0:1;
    volatile unsigned int MCA_6_1:1;
    volatile unsigned int MCA_6_2:1;
    volatile unsigned int MCA_6_3:1;
    volatile unsigned int MCA_6_4:1;
    volatile unsigned int MCA_6_5:1;
    volatile unsigned int MCA_6_6:1;
    volatile unsigned int MCA_6_7:1;
    volatile unsigned int MCA_7_0:1;
    volatile unsigned int MCA_7_1:1;
    volatile unsigned int MCA_7_2:1;
    volatile unsigned int MCA_7_3:1;
    volatile unsigned int MCA_7_4:1;
    volatile unsigned int MCA_7_5:1;
    volatile unsigned int MCA_7_6:1;
    volatile unsigned int MCA_7_7:1;
} Ifx_GTM_MON_ACTIVITY_R1_Bits;


typedef struct _Ifx_GTM_MON_STATUS_Bits
{
    volatile unsigned int ACT_CMU0:1;
    volatile unsigned int ACT_CMU1:1;
    volatile unsigned int ACT_CMU2:1;
    volatile unsigned int ACT_CMU3:1;
    volatile unsigned int ACT_CMU4:1;
    volatile unsigned int ACT_CMU5:1;
    volatile unsigned int ACT_CMU6:1;
    volatile unsigned int ACT_CMU7:1;
    volatile unsigned int ACT_CMUFX0:1;
    volatile unsigned int ACT_CMUFX1:1;
    volatile unsigned int ACT_CMUFX2:1;
    volatile unsigned int ACT_CMUFX3:1;
    volatile unsigned int ACT_CMUFX4:1;
    volatile unsigned int reserved_13:1;
    volatile unsigned int ACT_CMU8:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int CMP_ERR:1;
    volatile unsigned int reserved_17:3;
    volatile unsigned int MCS0_ERR:1;
    volatile unsigned int MCS1_ERR:1;
    volatile unsigned int MCS2_ERR:1;
    volatile unsigned int MCS3_ERR:1;
    volatile unsigned int MCS4_ERR:1;
    volatile unsigned int MCS5_ERR:1;
    volatile unsigned int MCS6_ERR:1;
    volatile unsigned int reserved_27:1;
    volatile unsigned int reserved_28:1;
    volatile unsigned int reserved_29:1;
    volatile unsigned int reserved_30:2;
} Ifx_GTM_MON_STATUS_Bits;


typedef struct _Ifx_GTM_MSC_MSCQ_INHCON_Bits
{
    Ifx_UReg_32Bit SEL0:2;
    Ifx_UReg_32Bit SEL1:2;
    Ifx_UReg_32Bit SEL2:2;
    Ifx_UReg_32Bit SEL3:2;
    Ifx_UReg_32Bit SEL4:2;
    Ifx_UReg_32Bit SEL5:2;
    Ifx_UReg_32Bit SEL6:2;
    Ifx_UReg_32Bit SEL7:2;
    Ifx_UReg_32Bit SEL8:2;
    Ifx_UReg_32Bit SEL9:2;
    Ifx_UReg_32Bit SEL10:2;
    Ifx_UReg_32Bit SEL11:2;
    Ifx_UReg_32Bit SEL12:2;
    Ifx_UReg_32Bit SEL13:2;
    Ifx_UReg_32Bit SEL14:2;
    Ifx_UReg_32Bit SEL15:2;
} Ifx_GTM_MSC_MSCQ_INHCON_Bits;


typedef struct _Ifx_GTM_MSC_MSCQ_INLCON_Bits
{
    Ifx_UReg_32Bit SEL0:2;
    Ifx_UReg_32Bit SEL1:2;
    Ifx_UReg_32Bit SEL2:2;
    Ifx_UReg_32Bit SEL3:2;
    Ifx_UReg_32Bit SEL4:2;
    Ifx_UReg_32Bit SEL5:2;
    Ifx_UReg_32Bit SEL6:2;
    Ifx_UReg_32Bit SEL7:2;
    Ifx_UReg_32Bit SEL8:2;
    Ifx_UReg_32Bit SEL9:2;
    Ifx_UReg_32Bit SEL10:2;
    Ifx_UReg_32Bit SEL11:2;
    Ifx_UReg_32Bit SEL12:2;
    Ifx_UReg_32Bit SEL13:2;
    Ifx_UReg_32Bit SEL14:2;
    Ifx_UReg_32Bit SEL15:2;
} Ifx_GTM_MSC_MSCQ_INLCON_Bits;


typedef struct _Ifx_GTM_MSC_MSCQ_INLEXTCON_Bits
{
    Ifx_UReg_32Bit SEL0:2;
    Ifx_UReg_32Bit SEL1:2;
    Ifx_UReg_32Bit SEL2:2;
    Ifx_UReg_32Bit SEL3:2;
    Ifx_UReg_32Bit SEL4:2;
    Ifx_UReg_32Bit SEL5:2;
    Ifx_UReg_32Bit SEL6:2;
    Ifx_UReg_32Bit SEL7:2;
    Ifx_UReg_32Bit SEL8:2;
    Ifx_UReg_32Bit SEL9:2;
    Ifx_UReg_32Bit SEL10:2;
    Ifx_UReg_32Bit SEL11:2;
    Ifx_UReg_32Bit SEL12:2;
    Ifx_UReg_32Bit SEL13:2;
    Ifx_UReg_32Bit SEL14:2;
    Ifx_UReg_32Bit SEL15:2;
} Ifx_GTM_MSC_MSCQ_INLEXTCON_Bits;


typedef struct _Ifx_GTM_MSC_SET_CON0_Bits
{
    Ifx_UReg_32Bit SEL0:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit SEL1:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit SEL2:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SEL3:5;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_MSC_SET_CON0_Bits;


typedef struct _Ifx_GTM_MSC_SET_CON1_Bits
{
    Ifx_UReg_32Bit SEL4:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit SEL5:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit SEL6:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SEL7:5;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_MSC_SET_CON1_Bits;


typedef struct _Ifx_GTM_MSC_SET_CON2_Bits
{
    Ifx_UReg_32Bit SEL8:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit SEL9:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit SEL10:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SEL11:5;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_MSC_SET_CON2_Bits;


typedef struct _Ifx_GTM_MSC_SET_CON3_Bits
{
    Ifx_UReg_32Bit SEL12:5;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit SEL13:5;
    Ifx_UReg_32Bit reserved_13:3;
    Ifx_UReg_32Bit SEL14:5;
    Ifx_UReg_32Bit reserved_21:3;
    Ifx_UReg_32Bit SEL15:5;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_MSC_SET_CON3_Bits;


typedef struct _Ifx_GTM_OCDS_OCS_Bits
{
    Ifx_UReg_32Bit reserved_0:24;
    Ifx_UReg_32Bit SUS:4;
    Ifx_UReg_32Bit SUS_P:1;
    Ifx_UReg_32Bit SUSSTA:1;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_GTM_OCDS_OCS_Bits;


typedef struct _Ifx_GTM_OCDS_ODA_Bits
{
    Ifx_UReg_32Bit DRAC:2;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_GTM_OCDS_ODA_Bits;


typedef struct _Ifx_GTM_OCDS_OTBU0T_Bits
{
    Ifx_UReg_32Bit CV:27;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit CM:2;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_GTM_OCDS_OTBU0T_Bits;


typedef struct _Ifx_GTM_OCDS_OTBU1T_Bits
{
    Ifx_UReg_32Bit CV:24;
    Ifx_UReg_32Bit reserved_24:4;
    Ifx_UReg_32Bit EN:1;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_OCDS_OTBU1T_Bits;


typedef struct _Ifx_GTM_OCDS_OTBU2T_Bits
{
    Ifx_UReg_32Bit CV:24;
    Ifx_UReg_32Bit reserved_24:4;
    Ifx_UReg_32Bit EN:1;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_OCDS_OTBU2T_Bits;


typedef struct _Ifx_GTM_OCDS_OTBU3T_Bits
{
    Ifx_UReg_32Bit CV:24;
    Ifx_UReg_32Bit reserved_24:4;
    Ifx_UReg_32Bit EN:1;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_GTM_OCDS_OTBU3T_Bits;


typedef struct _Ifx_GTM_OCDS_OTSC0_Bits
{
    Ifx_UReg_32Bit B0LMT:3;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit B0LMI:4;
    Ifx_UReg_32Bit B0HMT:3;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit B0HMI:4;
    Ifx_UReg_32Bit B1LMT:3;
    Ifx_UReg_32Bit reserved_19:1;
    Ifx_UReg_32Bit B1LMI:4;
    Ifx_UReg_32Bit B1HMT:3;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit B1HMI:4;
} Ifx_GTM_OCDS_OTSC0_Bits;


typedef struct _Ifx_GTM_OCDS_OTSC1_Bits
{
    Ifx_UReg_32Bit MCS:4;
    Ifx_UReg_32Bit MI:4;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit MOE:1;
    Ifx_UReg_32Bit reserved_10:22;
} Ifx_GTM_OCDS_OTSC1_Bits;


typedef struct _Ifx_GTM_OCDS_OTSS_Bits
{
    Ifx_UReg_32Bit OTGB0:4;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit OTGB1:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit OTGBM0:4;
    Ifx_UReg_32Bit reserved_20:4;
    Ifx_UReg_32Bit OTGBM1:4;
    Ifx_UReg_32Bit reserved_28:4;
} Ifx_GTM_OCDS_OTSS_Bits;


typedef struct _Ifx_GTM_OUT_ATOM_Bits
{
    volatile unsigned int ATOM_I_OUT:8;
    volatile unsigned int ATOM_I_OUT_N:8;
    volatile unsigned int ATOM_IP1_OUT:8;
    volatile unsigned int ATOM_IP1_OUT_N:8;
} Ifx_GTM_OUT_ATOM_Bits;


typedef struct _Ifx_GTM_OUT_TOM_Bits
{
    volatile unsigned int TOM_OUT:16;
    volatile unsigned int TOM_OUT_N:16;
} Ifx_GTM_OUT_TOM_Bits;


typedef struct _Ifx_GTM_PSI5OUTSEL_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit SEL4:4;
    Ifx_UReg_32Bit SEL5:4;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_GTM_PSI5OUTSEL_Bits;


typedef struct _Ifx_GTM_PSI5SOUTSEL_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit SEL4:4;
    Ifx_UReg_32Bit SEL5:4;
    Ifx_UReg_32Bit SEL6:4;
    Ifx_UReg_32Bit SEL7:4;
} Ifx_GTM_PSI5SOUTSEL_Bits;


typedef struct _Ifx_GTM_PSM_AFD_CH_BUF_ACC_Bits
{
    volatile unsigned int DATA:29;
    volatile unsigned int reserved_29:3;
} Ifx_GTM_PSM_AFD_CH_BUF_ACC_Bits;


typedef struct _Ifx_GTM_PSM_F2A_ENABLE_Bits
{
    volatile unsigned int STR0_EN:2;
    volatile unsigned int STR1_EN:2;
    volatile unsigned int STR2_EN:2;
    volatile unsigned int STR3_EN:2;
    volatile unsigned int STR4_EN:2;
    volatile unsigned int STR5_EN:2;
    volatile unsigned int STR6_EN:2;
    volatile unsigned int STR7_EN:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_PSM_F2A_ENABLE_Bits;


typedef struct _Ifx_GTM_PSM_F2A_F2A_CTRL_Bits
{
    volatile unsigned int STR4_CONF:2;
    volatile unsigned int STR5_CONF:2;
    volatile unsigned int STR6_CONF:2;
    volatile unsigned int STR7_CONF:2;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_PSM_F2A_F2A_CTRL_Bits;


typedef struct _Ifx_GTM_PSM_F2A_RD_CH_ARU_RD_FIFO_Bits
{
    volatile unsigned int ADDR:9;
    volatile unsigned int reserved_9:23;
} Ifx_GTM_PSM_F2A_RD_CH_ARU_RD_FIFO_Bits;


typedef struct _Ifx_GTM_PSM_F2A_STR_CH_STR_CFG_Bits
{
    volatile unsigned int reserved_0:16;
    volatile unsigned int TMODE:2;
    volatile unsigned int DIR:1;
    volatile unsigned int reserved_19:13;
} Ifx_GTM_PSM_F2A_STR_CH_STR_CFG_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_CTRL_Bits
{
    volatile unsigned int RBM:1;
    volatile unsigned int RAP:1;
    volatile unsigned int FLUSH:1;
    volatile unsigned int WULOCK:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_CTRL_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_EIRQ_EN_Bits
{
    volatile unsigned int FIFO_EMPTY_EIRQ_EN:1;
    volatile unsigned int FIFO_FULL_EIRQ_EN:1;
    volatile unsigned int FIFO_LWM_EIRQ_EN:1;
    volatile unsigned int FIFO_UWM_EIRQ_EN:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_END_ADDR_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_PSM_FIFO_CH_END_ADDR_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_FILL_LEVEL_Bits
{
    volatile unsigned int LEVEL:11;
    volatile unsigned int reserved_11:21;
} Ifx_GTM_PSM_FIFO_CH_FILL_LEVEL_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_IRQ_EN_Bits
{
    volatile unsigned int FIFO_EMPTY_IRQ_EN:1;
    volatile unsigned int FIFO_FULL_IRQ_EN:1;
    volatile unsigned int FIFO_LWM_IRQ_EN:1;
    volatile unsigned int FIFO_UWM_IRQ_EN:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_FIFO_EMPTY:1;
    volatile unsigned int TRG_FIFO_FULL:1;
    volatile unsigned int TRG_FIFO_LWM:1;
    volatile unsigned int TRG_FIFO_UWM:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int DMA_HYSTERESIS:1;
    volatile unsigned int DMA_HYST_DIR:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int FIFO_EMPTY:1;
    volatile unsigned int FIFO_FULL:1;
    volatile unsigned int FIFO_LWM:1;
    volatile unsigned int FIFO_UWM:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_LOWER_WM_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_PSM_FIFO_CH_LOWER_WM_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_RD_PTR_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_PSM_FIFO_CH_RD_PTR_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_START_ADDR_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_PSM_FIFO_CH_START_ADDR_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_STATUS_Bits
{
    volatile unsigned int EMPTY:1;
    volatile unsigned int FULL:1;
    volatile unsigned int LOW_WM:1;
    volatile unsigned int UP_WM:1;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_PSM_FIFO_CH_STATUS_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_UPPER_WM_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_PSM_FIFO_CH_UPPER_WM_Bits;


typedef struct _Ifx_GTM_PSM_FIFO_CH_WR_PTR_Bits
{
    volatile unsigned int ADDR:10;
    volatile unsigned int reserved_10:22;
} Ifx_GTM_PSM_FIFO_CH_WR_PTR_Bits;


typedef struct _Ifx_GTM_RESET1_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit RSTSTAT:1;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_GTM_RESET1_Bits;


typedef struct _Ifx_GTM_RESET2_Bits
{
    Ifx_UReg_32Bit RST:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_GTM_RESET2_Bits;


typedef struct _Ifx_GTM_RESET_CLR_Bits
{
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_1:31;
} Ifx_GTM_RESET_CLR_Bits;


typedef struct _Ifx_GTM_REV_Bits
{
    volatile unsigned int STEP:8;
    volatile unsigned int NO:4;
    volatile unsigned int MINOR:4;
    volatile unsigned int MAJOR:4;
    volatile unsigned int DEV_CODE0:4;
    volatile unsigned int DEV_CODE1:4;
    volatile unsigned int DEV_CODE2:4;
} Ifx_GTM_REV_Bits;


typedef struct _Ifx_GTM_RST_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int reserved_1:26;
    volatile unsigned int BRIDGE_MODE_WRDIS:1;
    volatile unsigned int reserved_28:4;
} Ifx_GTM_RST_Bits;


typedef struct _Ifx_GTM_SPE_CMD_Bits
{
    volatile unsigned int SPE_CTRL_CMD:2;
    volatile unsigned int reserved_2:14;
    volatile unsigned int SPE_UPD_TRIG:1;
    volatile unsigned int reserved_17:15;
} Ifx_GTM_SPE_CMD_Bits;


typedef struct _Ifx_GTM_SPE_CTRL_STAT_Bits
{
    volatile unsigned int EN:1;
    volatile unsigned int SIE0:1;
    volatile unsigned int SIE1:1;
    volatile unsigned int SIE2:1;
    volatile unsigned int TRIG_SEL:2;
    volatile unsigned int TIM_SEL:1;
    volatile unsigned int FSOM:1;
    volatile unsigned int SPE_PAT_PTR:3;
    volatile unsigned int reserved_11:1;
    volatile unsigned int AIP:3;
    volatile unsigned int ADIR:1;
    volatile unsigned int PIP:3;
    volatile unsigned int PDIR:1;
    volatile unsigned int NIP:3;
    volatile unsigned int ETRIG_SEL:1;
    volatile unsigned int FSOL:8;
} Ifx_GTM_SPE_CTRL_STAT_Bits;


typedef struct _Ifx_GTM_SPE_CTRL_STAT2_Bits
{
    volatile unsigned int reserved_0:8;
    volatile unsigned int SPE_PAT_PTR_BWD:3;
    volatile unsigned int reserved_11:21;
} Ifx_GTM_SPE_CTRL_STAT2_Bits;


typedef struct _Ifx_GTM_SPE_EIRQ_EN_Bits
{
    volatile unsigned int SPE_NIPD_EIRQ_EN:1;
    volatile unsigned int SPE_DCHG_EIRQ_EN:1;
    volatile unsigned int SPE_PERR_EIRQ_EN:1;
    volatile unsigned int SPE_BIS_EIRQ_EN:1;
    volatile unsigned int SPE_RCMP_EIRQ_EN:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_SPE_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_EN_Bits
{
    volatile unsigned int SPE_NIPD_IRQ_EN:1;
    volatile unsigned int SPE_DCHG_IRQ_EN:1;
    volatile unsigned int SPE_PERR_IRQ_EN:1;
    volatile unsigned int SPE_BIS_IRQ_EN:1;
    volatile unsigned int SPE_RCMP_IRQ_EN:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_SPE_IRQ_EN_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_SPE_NIPD:1;
    volatile unsigned int TRG_SPE_DCHG:1;
    volatile unsigned int TRG_SPE_PERR:1;
    volatile unsigned int TRG_SPE_BIS:1;
    volatile unsigned int TRG_SPE_RCMP:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_SPE_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_SPE_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_SPE_IRQ_NOTIFY_Bits
{
    volatile unsigned int SPE_NIPD:1;
    volatile unsigned int SPE_DCHG:1;
    volatile unsigned int SPE_PERR:1;
    volatile unsigned int SPE_BIS:1;
    volatile unsigned int SPE_RCMP:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_SPE_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_SPE_OUT_CTRL_Bits
{
    volatile unsigned int SPE_OUT_CTRL:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_SPE_OUT_CTRL_Bits;


typedef struct _Ifx_GTM_SPE_OUT_PAT_Bits
{
    volatile unsigned int SPE_OUT_PAT:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_SPE_OUT_PAT_Bits;


typedef struct _Ifx_GTM_SPE_PAT_Bits
{
    volatile unsigned int IP0_VAL:1;
    volatile unsigned int IP0_PAT:3;
    volatile unsigned int IP1_VAL:1;
    volatile unsigned int IP1_PAT:3;
    volatile unsigned int IP2_VAL:1;
    volatile unsigned int IP2_PAT:3;
    volatile unsigned int IP3_VAL:1;
    volatile unsigned int IP3_PAT:3;
    volatile unsigned int IP4_VAL:1;
    volatile unsigned int IP4_PAT:3;
    volatile unsigned int IP5_VAL:1;
    volatile unsigned int IP5_PAT:3;
    volatile unsigned int IP6_VAL:1;
    volatile unsigned int IP6_PAT:3;
    volatile unsigned int IP7_VAL:1;
    volatile unsigned int IP7_PAT:3;
} Ifx_GTM_SPE_PAT_Bits;


typedef struct _Ifx_GTM_SPE_REV_CMP_Bits
{
    volatile unsigned int REV_CMP:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_SPE_REV_CMP_Bits;


typedef struct _Ifx_GTM_SPE_REV_CNT_Bits
{
    volatile unsigned int REV_CNT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_SPE_REV_CNT_Bits;


typedef struct _Ifx_GTM_TBU_CH0_BASE_Bits
{
    volatile unsigned int BASE:27;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_TBU_CH0_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH0_CTRL_Bits
{
    volatile unsigned int LOW_RES:1;
    volatile unsigned int CH_CLK_SRC:3;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_TBU_CH0_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH1_BASE_Bits
{
    volatile unsigned int BASE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TBU_CH1_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH1_CTRL_Bits
{
    volatile unsigned int CH_MODE:1;
    volatile unsigned int CH_CLK_SRC:3;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_TBU_CH1_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH2_BASE_Bits
{
    volatile unsigned int BASE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TBU_CH2_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH2_CTRL_Bits
{
    volatile unsigned int CH_MODE:1;
    volatile unsigned int CH_CLK_SRC:3;
    volatile unsigned int reserved_4:28;
} Ifx_GTM_TBU_CH2_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CH3_BASE_Bits
{
    volatile unsigned int BASE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TBU_CH3_BASE_Bits;


typedef struct _Ifx_GTM_TBU_CH3_BASE_CAPTURE_Bits
{
    volatile unsigned int BASE_CAPTURE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TBU_CH3_BASE_CAPTURE_Bits;


typedef struct _Ifx_GTM_TBU_CH3_BASE_MARK_Bits
{
    volatile unsigned int BASE_MARK:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TBU_CH3_BASE_MARK_Bits;


typedef struct _Ifx_GTM_TBU_CH3_CTRL_Bits
{
    volatile unsigned int CH_MODE:1;
    volatile unsigned int reserved_1:3;
    volatile unsigned int USE_CH2:1;
    volatile unsigned int reserved_5:27;
} Ifx_GTM_TBU_CH3_CTRL_Bits;


typedef struct _Ifx_GTM_TBU_CHEN_Bits
{
    volatile unsigned int ENDIS_CH0:2;
    volatile unsigned int ENDIS_CH1:2;
    volatile unsigned int ENDIS_CH2:2;
    volatile unsigned int ENDIS_CH3:2;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_TBU_CHEN_Bits;


typedef struct _Ifx_GTM_TIMINSEL_Bits
{
    Ifx_UReg_32Bit CH0SEL:4;
    Ifx_UReg_32Bit CH1SEL:4;
    Ifx_UReg_32Bit CH2SEL:4;
    Ifx_UReg_32Bit CH3SEL:4;
    Ifx_UReg_32Bit CH4SEL:4;
    Ifx_UReg_32Bit CH5SEL:4;
    Ifx_UReg_32Bit CH6SEL:4;
    Ifx_UReg_32Bit CH7SEL:4;
} Ifx_GTM_TIMINSEL_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNT_Bits
{
    volatile unsigned int CNT:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_CH_CNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_CNTS_Bits
{
    volatile unsigned int CNTS:24;
    volatile unsigned int ECNT:8;
} Ifx_GTM_TIM_CH_CNTS_Bits;


typedef struct _Ifx_GTM_TIM_CH_CTRL_Bits
{
    volatile unsigned int TIM_EN:1;
    volatile unsigned int TIM_MODE:3;
    volatile unsigned int OSM:1;
    volatile unsigned int ARU_EN:1;
    volatile unsigned int CICTRL:1;
    volatile unsigned int TBU0_SEL:1;
    volatile unsigned int GPR0_SEL:2;
    volatile unsigned int GPR1_SEL:2;
    volatile unsigned int CNTS_SEL:1;
    volatile unsigned int DSL:1;
    volatile unsigned int ISL:1;
    volatile unsigned int ECNT_RESET:1;
    volatile unsigned int FLT_EN:1;
    volatile unsigned int FLT_CNT_FRQ:2;
    volatile unsigned int EXT_CAP_EN:1;
    volatile unsigned int FLT_MODE_RE:1;
    volatile unsigned int FLT_CTR_RE:1;
    volatile unsigned int FLT_MODE_FE:1;
    volatile unsigned int FLT_CTR_FE:1;
    volatile unsigned int CLK_SEL:3;
    volatile unsigned int FR_ECNT_OFL:1;
    volatile unsigned int EGPR0_SEL:1;
    volatile unsigned int EGPR1_SEL:1;
    volatile unsigned int TOCTRL:2;
} Ifx_GTM_TIM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECNT_Bits
{
    volatile unsigned int ECNT:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TIM_CH_ECNT_Bits;


typedef struct _Ifx_GTM_TIM_CH_ECTRL_Bits
{
    volatile unsigned int EXT_CAP_SRC:4;
    volatile unsigned int reserved_4:1;
    volatile unsigned int USE_PREV_TDU_IN:1;
    volatile unsigned int TODET_IRQ_SRC:2;
    volatile unsigned int TDU_START:3;
    volatile unsigned int reserved_11:1;
    volatile unsigned int TDU_STOP:3;
    volatile unsigned int reserved_15:1;
    volatile unsigned int TDU_RESYNC:4;
    volatile unsigned int reserved_20:2;
    volatile unsigned int USE_LUT:2;
    volatile unsigned int EFLT_CTR_RE:1;
    volatile unsigned int EFLT_CTR_FE:1;
    volatile unsigned int reserved_26:2;
    volatile unsigned int SWAP_CAPTURE:1;
    volatile unsigned int IMM_START:1;
    volatile unsigned int ECLK_SEL:1;
    volatile unsigned int USE_PREV_CH_IN:1;
} Ifx_GTM_TIM_CH_ECTRL_Bits;


typedef struct _Ifx_GTM_TIM_CH_EIRQ_EN_Bits
{
    volatile unsigned int NEWVAL_EIRQ_EN:1;
    volatile unsigned int ECNTOFL_EIRQ_EN:1;
    volatile unsigned int CNTOFL_EIRQ_EN:1;
    volatile unsigned int GPROFL_EIRQ_EN:1;
    volatile unsigned int TODET_EIRQ_EN:1;
    volatile unsigned int GLITCHDET_EIRQ_EN:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TIM_CH_EIRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_FE_Bits
{
    volatile unsigned int FLT_FE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_CH_FLT_FE_Bits;


typedef struct _Ifx_GTM_TIM_CH_FLT_RE_Bits
{
    volatile unsigned int FLT_RE:24;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_CH_FLT_RE_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR0_Bits
{
    volatile unsigned int GPR0:24;
    volatile unsigned int ECNT:8;
} Ifx_GTM_TIM_CH_GPR0_Bits;


typedef struct _Ifx_GTM_TIM_CH_GPR1_Bits
{
    volatile unsigned int GPR1:24;
    volatile unsigned int ECNT:8;
} Ifx_GTM_TIM_CH_GPR1_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_EN_Bits
{
    volatile unsigned int NEWVAL_IRQ_EN:1;
    volatile unsigned int ECNTOFL_IRQ_EN:1;
    volatile unsigned int CNTOFL_IRQ_EN:1;
    volatile unsigned int GPROFL_IRQ_EN:1;
    volatile unsigned int TODET_IRQ_EN:1;
    volatile unsigned int GLITCHDET_IRQ_EN:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TIM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_NEWVAL:1;
    volatile unsigned int TRG_ECNTOFL:1;
    volatile unsigned int TRG_CNTOFL:1;
    volatile unsigned int TRG_GPROFL:1;
    volatile unsigned int TRG_TODET:1;
    volatile unsigned int TRG_GLITCHDET:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TIM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int NEWVAL:1;
    volatile unsigned int ECNTOFL:1;
    volatile unsigned int CNTOFL:1;
    volatile unsigned int GPROFL:1;
    volatile unsigned int TODET:1;
    volatile unsigned int GLITCHDET:1;
    volatile unsigned int reserved_6:26;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUC_Bits
{
    volatile unsigned int TO_CNT:8;
    volatile unsigned int TO_CNT1:8;
    volatile unsigned int TO_CNT2:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_CH_TDUC_Bits;


typedef struct _Ifx_GTM_TIM_CH_TDUV_Bits
{
    volatile unsigned int TOV:8;
    volatile unsigned int TOV1:8;
    volatile unsigned int TOV2:8;
    volatile unsigned int SLICING:2;
    volatile unsigned int TCS_USE_SAMPLE_EVT:1;
    volatile unsigned int TDU_SAME_CNT_CLK:1;
    volatile unsigned int TCS:3;
    volatile unsigned int reserved_31:1;
} Ifx_GTM_TIM_CH_TDUV_Bits;


typedef struct _Ifx_GTM_TIM_INP_VAL_Bits
{
    volatile unsigned int F_OUT:8;
    volatile unsigned int F_IN:8;
    volatile unsigned int TIM_IN:8;
    volatile unsigned int reserved_24:8;
} Ifx_GTM_TIM_INP_VAL_Bits;


typedef struct _Ifx_GTM_TIM_IN_SRC_Bits
{
    volatile unsigned int VAL_0:2;
    volatile unsigned int MODE_0:2;
    volatile unsigned int VAL_1:2;
    volatile unsigned int MODE_1:2;
    volatile unsigned int VAL_2:2;
    volatile unsigned int MODE_2:2;
    volatile unsigned int VAL_3:2;
    volatile unsigned int MODE_3:2;
    volatile unsigned int VAL_4:2;
    volatile unsigned int MODE_4:2;
    volatile unsigned int VAL_5:2;
    volatile unsigned int MODE_5:2;
    volatile unsigned int VAL_6:2;
    volatile unsigned int MODE_6:2;
    volatile unsigned int VAL_7:2;
    volatile unsigned int MODE_7:2;
} Ifx_GTM_TIM_IN_SRC_Bits;


typedef struct _Ifx_GTM_TIM_RST_Bits
{
    volatile unsigned int RST_CH0:1;
    volatile unsigned int RST_CH1:1;
    volatile unsigned int RST_CH2:1;
    volatile unsigned int RST_CH3:1;
    volatile unsigned int RST_CH4:1;
    volatile unsigned int RST_CH5:1;
    volatile unsigned int RST_CH6:1;
    volatile unsigned int RST_CH7:1;
    volatile unsigned int reserved_8:24;
} Ifx_GTM_TIM_RST_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM0_Bits
{
    volatile unsigned int CM0:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_CM0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CM1_Bits
{
    volatile unsigned int CM1:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_CM1_Bits;


typedef struct _Ifx_GTM_TOM_CH_CN0_Bits
{
    volatile unsigned int CN0:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_CN0_Bits;


typedef struct _Ifx_GTM_TOM_CH_CTRL_Bits
{
    volatile unsigned int reserved_0:7;
    volatile unsigned int SR0_TRIG:1;
    volatile unsigned int reserved_8:3;
    volatile unsigned int SL:1;
    volatile unsigned int CLK_SRC_SR:3;
    volatile unsigned int ECLK_SRC:1;
    volatile unsigned int reserved_16:1;
    volatile unsigned int TRIG_PULSE:1;
    volatile unsigned int UDMODE:2;
    volatile unsigned int RST_CCU0:1;
    volatile unsigned int OSM_TRIG:1;
    volatile unsigned int EXT_TRIG:1;
    volatile unsigned int EXTTRIGOUT:1;
    volatile unsigned int TRIGOUT:1;
    volatile unsigned int SPE_TRIG:1;
    volatile unsigned int OSM:1;
    volatile unsigned int BITREV:1;
    volatile unsigned int SPEM:1;
    volatile unsigned int GCM:1;
    volatile unsigned int reserved_30:1;
    volatile unsigned int FREEZE:1;
} Ifx_GTM_TOM_CH_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_EN_Bits
{
    volatile unsigned int CCU0TC_IRQ_EN:1;
    volatile unsigned int CCU1TC_IRQ_EN:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TOM_CH_IRQ_EN_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits
{
    volatile unsigned int TRG_CCU0TC0:1;
    volatile unsigned int TRG_CCU1TC0:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_MODE_Bits
{
    volatile unsigned int IRQ_MODE:2;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TOM_CH_IRQ_MODE_Bits;


typedef struct _Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits
{
    volatile unsigned int CCU0TC:1;
    volatile unsigned int CCU1TC:1;
    volatile unsigned int reserved_2:30;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR0_Bits
{
    volatile unsigned int SR0:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_SR0_Bits;


typedef struct _Ifx_GTM_TOM_CH_SR1_Bits
{
    volatile unsigned int SR1:16;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_CH_SR1_Bits;


typedef struct _Ifx_GTM_TOM_CH_STAT_Bits
{
    volatile unsigned int OL:1;
    volatile unsigned int reserved_1:31;
} Ifx_GTM_TOM_CH_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC_ACT_TB_Bits
{
    volatile unsigned int ACT_TB:24;
    volatile unsigned int TB_TRIG:1;
    volatile unsigned int TBU_SEL:2;
    volatile unsigned int reserved_27:5;
} Ifx_GTM_TOM_TGC_ACT_TB_Bits;


typedef struct _Ifx_GTM_TOM_TGC_ENDIS_CTRL_Bits
{
    volatile unsigned int ENDIS_CTRL0:2;
    volatile unsigned int ENDIS_CTRL1:2;
    volatile unsigned int ENDIS_CTRL2:2;
    volatile unsigned int ENDIS_CTRL3:2;
    volatile unsigned int ENDIS_CTRL4:2;
    volatile unsigned int ENDIS_CTRL5:2;
    volatile unsigned int ENDIS_CTRL6:2;
    volatile unsigned int ENDIS_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC_ENDIS_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC_ENDIS_STAT_Bits
{
    volatile unsigned int ENDIS_STAT0:2;
    volatile unsigned int ENDIS_STAT1:2;
    volatile unsigned int ENDIS_STAT2:2;
    volatile unsigned int ENDIS_STAT3:2;
    volatile unsigned int ENDIS_STAT4:2;
    volatile unsigned int ENDIS_STAT5:2;
    volatile unsigned int ENDIS_STAT6:2;
    volatile unsigned int ENDIS_STAT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC_ENDIS_STAT_Bits;


typedef struct _Ifx_GTM_TOM_TGC_FUPD_CTRL_Bits
{
    volatile unsigned int FUPD_CTRL0:2;
    volatile unsigned int FUPD_CTRL1:2;
    volatile unsigned int FUPD_CTRL2:2;
    volatile unsigned int FUPD_CTRL3:2;
    volatile unsigned int FUPD_CTRL4:2;
    volatile unsigned int FUPD_CTRL5:2;
    volatile unsigned int FUPD_CTRL6:2;
    volatile unsigned int FUPD_CTRL7:2;
    volatile unsigned int RSTCN0_CH0:2;
    volatile unsigned int RSTCN0_CH1:2;
    volatile unsigned int RSTCN0_CH2:2;
    volatile unsigned int RSTCN0_CH3:2;
    volatile unsigned int RSTCN0_CH4:2;
    volatile unsigned int RSTCN0_CH5:2;
    volatile unsigned int RSTCN0_CH6:2;
    volatile unsigned int RSTCN0_CH7:2;
} Ifx_GTM_TOM_TGC_FUPD_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC_GLB_CTRL_Bits
{
    volatile unsigned int HOST_TRIG:1;
    volatile unsigned int reserved_1:7;
    volatile unsigned int RST_CH0:1;
    volatile unsigned int RST_CH1:1;
    volatile unsigned int RST_CH2:1;
    volatile unsigned int RST_CH3:1;
    volatile unsigned int RST_CH4:1;
    volatile unsigned int RST_CH5:1;
    volatile unsigned int RST_CH6:1;
    volatile unsigned int RST_CH7:1;
    volatile unsigned int UPEN_CTRL0:2;
    volatile unsigned int UPEN_CTRL1:2;
    volatile unsigned int UPEN_CTRL2:2;
    volatile unsigned int UPEN_CTRL3:2;
    volatile unsigned int UPEN_CTRL4:2;
    volatile unsigned int UPEN_CTRL5:2;
    volatile unsigned int UPEN_CTRL6:2;
    volatile unsigned int UPEN_CTRL7:2;
} Ifx_GTM_TOM_TGC_GLB_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC_INT_TRIG_Bits
{
    volatile unsigned int INT_TRIG0:2;
    volatile unsigned int INT_TRIG1:2;
    volatile unsigned int INT_TRIG2:2;
    volatile unsigned int INT_TRIG3:2;
    volatile unsigned int INT_TRIG4:2;
    volatile unsigned int INT_TRIG5:2;
    volatile unsigned int INT_TRIG6:2;
    volatile unsigned int INT_TRIG7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC_INT_TRIG_Bits;


typedef struct _Ifx_GTM_TOM_TGC_OUTEN_CTRL_Bits
{
    volatile unsigned int OUTEN_CTRL0:2;
    volatile unsigned int OUTEN_CTRL1:2;
    volatile unsigned int OUTEN_CTRL2:2;
    volatile unsigned int OUTEN_CTRL3:2;
    volatile unsigned int OUTEN_CTRL4:2;
    volatile unsigned int OUTEN_CTRL5:2;
    volatile unsigned int OUTEN_CTRL6:2;
    volatile unsigned int OUTEN_CTRL7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC_OUTEN_CTRL_Bits;


typedef struct _Ifx_GTM_TOM_TGC_OUTEN_STAT_Bits
{
    volatile unsigned int OUTEN_STAT0:2;
    volatile unsigned int OUTEN_STAT1:2;
    volatile unsigned int OUTEN_STAT2:2;
    volatile unsigned int OUTEN_STAT3:2;
    volatile unsigned int OUTEN_STAT4:2;
    volatile unsigned int OUTEN_STAT5:2;
    volatile unsigned int OUTEN_STAT6:2;
    volatile unsigned int OUTEN_STAT7:2;
    volatile unsigned int reserved_16:16;
} Ifx_GTM_TOM_TGC_OUTEN_STAT_Bits;


typedef struct _Ifx_GTM_TOUTSEL_Bits
{
    Ifx_UReg_32Bit SEL0:4;
    Ifx_UReg_32Bit SEL1:4;
    Ifx_UReg_32Bit SEL2:4;
    Ifx_UReg_32Bit SEL3:4;
    Ifx_UReg_32Bit SEL4:4;
    Ifx_UReg_32Bit SEL5:4;
    Ifx_UReg_32Bit SEL6:4;
    Ifx_UReg_32Bit SEL7:4;
} Ifx_GTM_TOUTSEL_Bits;


typedef struct _Ifx_GTM_TRIGOUT_Bits
{
    Ifx_UReg_32Bit TRIG0:2;
    Ifx_UReg_32Bit TRIG1:2;
    Ifx_UReg_32Bit TRIG2:2;
    Ifx_UReg_32Bit TRIG3:2;
    Ifx_UReg_32Bit TRIG4:2;
    Ifx_UReg_32Bit TRIG5:2;
    Ifx_UReg_32Bit TRIG6:2;
    Ifx_UReg_32Bit TRIG7:2;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_GTM_TRIGOUT_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ACCEN0_Bits B;
} Ifx_GTM_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ACCEN1_Bits B;
} Ifx_GTM_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ADCTRIG_OUT0_Bits B;
} Ifx_GTM_ADCTRIG_OUT0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ADCTRIG_OUT1_Bits B;
} Ifx_GTM_ADCTRIG_OUT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_AEI_ADDR_XPT_Bits B;
} Ifx_GTM_AEI_ADDR_XPT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_AEI_STA_XPT_Bits B;
} Ifx_GTM_AEI_STA_XPT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_ACCESS_Bits B;
} Ifx_GTM_ARU_ACCESS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_CADDR_Bits B;
} Ifx_GTM_ARU_CADDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_CADDR_END_Bits B;
} Ifx_GTM_ARU_CADDR_END;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_CTRL_Bits B;
} Ifx_GTM_ARU_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DATA_H_Bits B;
} Ifx_GTM_ARU_DATA_H;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DATA_L_Bits B;
} Ifx_GTM_ARU_DATA_L;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DBG_ACCESS0_Bits B;
} Ifx_GTM_ARU_DBG_ACCESS0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DBG_ACCESS1_Bits B;
} Ifx_GTM_ARU_DBG_ACCESS1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DBG_DATA0_H_Bits B;
} Ifx_GTM_ARU_DBG_DATA0_H;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DBG_DATA0_L_Bits B;
} Ifx_GTM_ARU_DBG_DATA0_L;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DBG_DATA1_H_Bits B;
} Ifx_GTM_ARU_DBG_DATA1_H;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DBG_DATA1_L_Bits B;
} Ifx_GTM_ARU_DBG_DATA1_L;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DYN_CTRL_Bits B;
} Ifx_GTM_ARU_DYN_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DYN_RDADDR_Bits B;
} Ifx_GTM_ARU_DYN_RDADDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DYN_ROUTE_HIGH_Bits B;
} Ifx_GTM_ARU_DYN_ROUTE_HIGH;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DYN_ROUTE_LOW_Bits B;
} Ifx_GTM_ARU_DYN_ROUTE_LOW;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DYN_ROUTE_SR_HIGH_Bits B;
} Ifx_GTM_ARU_DYN_ROUTE_SR_HIGH;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_DYN_ROUTE_SR_LOW_Bits B;
} Ifx_GTM_ARU_DYN_ROUTE_SR_LOW;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_IRQ_EN_Bits B;
} Ifx_GTM_ARU_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_IRQ_FORCINT_Bits B;
} Ifx_GTM_ARU_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_IRQ_MODE_Bits B;
} Ifx_GTM_ARU_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ARU_IRQ_NOTIFY_Bits B;
} Ifx_GTM_ARU_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_ACT_TB_Bits B;
} Ifx_GTM_ATOM_AGC_ACT_TB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_ENDIS_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_ENDIS_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_ENDIS_STAT_Bits B;
} Ifx_GTM_ATOM_AGC_ENDIS_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_FUPD_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_FUPD_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_GLB_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_GLB_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_INT_TRIG_Bits B;
} Ifx_GTM_ATOM_AGC_INT_TRIG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_OUTEN_CTRL_Bits B;
} Ifx_GTM_ATOM_AGC_OUTEN_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_AGC_OUTEN_STAT_Bits B;
} Ifx_GTM_ATOM_AGC_OUTEN_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_CM0_Bits B;
} Ifx_GTM_ATOM_CH_CM0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_CM1_Bits B;
} Ifx_GTM_ATOM_CH_CM1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_CN0_Bits B;
} Ifx_GTM_ATOM_CH_CN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_CTRL_Bits B;
} Ifx_GTM_ATOM_CH_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_IRQ_EN_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_ATOM_CH_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_RDADDR_Bits B;
} Ifx_GTM_ATOM_CH_RDADDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SOMB_Bits B;
} Ifx_GTM_ATOM_CH_SOMB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SOMC_Bits B;
} Ifx_GTM_ATOM_CH_SOMC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SOMI_Bits B;
} Ifx_GTM_ATOM_CH_SOMI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SOMP_Bits B;
} Ifx_GTM_ATOM_CH_SOMP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SOMS_Bits B;
} Ifx_GTM_ATOM_CH_SOMS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SR0_Bits B;
} Ifx_GTM_ATOM_CH_SR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_SR1_Bits B;
} Ifx_GTM_ATOM_CH_SR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ATOM_CH_STAT_Bits B;
} Ifx_GTM_ATOM_CH_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_AUX_IN_SRC_TIM_Bits B;
} Ifx_GTM_AUX_IN_SRC_TIM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_EIRQ_EN_Bits B;
} Ifx_GTM_BRC_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_IRQ_EN_Bits B;
} Ifx_GTM_BRC_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_IRQ_FORCINT_Bits B;
} Ifx_GTM_BRC_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_IRQ_MODE_Bits B;
} Ifx_GTM_BRC_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_IRQ_NOTIFY_Bits B;
} Ifx_GTM_BRC_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_RST_Bits B;
} Ifx_GTM_BRC_RST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_SRC_ADDR_Bits B;
} Ifx_GTM_BRC_SRC_ADDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRC_SRC_DEST_Bits B;
} Ifx_GTM_BRC_SRC_DEST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRIDGE_MODE_Bits B;
} Ifx_GTM_BRIDGE_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRIDGE_PTR1_Bits B;
} Ifx_GTM_BRIDGE_PTR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_BRIDGE_PTR2_Bits B;
} Ifx_GTM_BRIDGE_PTR2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CANOUTSEL0_Bits B;
} Ifx_GTM_CANOUTSEL0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CANOUTSEL1_Bits B;
} Ifx_GTM_CANOUTSEL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_AEIM_STA_Bits B;
} Ifx_GTM_CCM_AEIM_STA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_ARP_CTRL_Bits B;
} Ifx_GTM_CCM_ARP_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_ARP_PROT_Bits B;
} Ifx_GTM_CCM_ARP_PROT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_ATOM_OUT_Bits B;
} Ifx_GTM_CCM_ATOM_OUT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_CFG_Bits B;
} Ifx_GTM_CCM_CFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_CMU_CLK_CFG_Bits B;
} Ifx_GTM_CCM_CMU_CLK_CFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_CMU_FXCLK_CFG_Bits B;
} Ifx_GTM_CCM_CMU_FXCLK_CFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_EXT_CAP_EN_Bits B;
} Ifx_GTM_CCM_EXT_CAP_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_HW_CONF_Bits B;
} Ifx_GTM_CCM_HW_CONF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_PROT_Bits B;
} Ifx_GTM_CCM_PROT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_TIM_AUX_IN_SRC_Bits B;
} Ifx_GTM_CCM_TIM_AUX_IN_SRC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CCM_TOM_OUT_Bits B;
} Ifx_GTM_CCM_TOM_OUT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CH_CTRL1_Bits B;
} Ifx_GTM_CDTM_DTM_CH_CTRL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CH_CTRL2_Bits B;
} Ifx_GTM_CDTM_DTM_CH_CTRL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CH_CTRL2_SR_Bits B;
} Ifx_GTM_CDTM_DTM_CH_CTRL2_SR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CH_CTRL3_Bits B;
} Ifx_GTM_CDTM_DTM_CH_CTRL3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CH_DTV_Bits B;
} Ifx_GTM_CDTM_DTM_CH_DTV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CH_SR_Bits B;
} Ifx_GTM_CDTM_DTM_CH_SR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_CTRL_Bits B;
} Ifx_GTM_CDTM_DTM_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CDTM_DTM_PS_CTRL_Bits B;
} Ifx_GTM_CDTM_DTM_PS_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CFG_Bits B;
} Ifx_GTM_CFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CLC_Bits B;
} Ifx_GTM_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CLS_CLK_CFG_Bits B;
} Ifx_GTM_CLS_CLK_CFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMP_EIRQ_EN_Bits B;
} Ifx_GTM_CMP_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMP_EN_Bits B;
} Ifx_GTM_CMP_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMP_IRQ_EN_Bits B;
} Ifx_GTM_CMP_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMP_IRQ_FORCINT_Bits B;
} Ifx_GTM_CMP_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMP_IRQ_MODE_Bits B;
} Ifx_GTM_CMP_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMP_IRQ_NOTIFY_Bits B;
} Ifx_GTM_CMP_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_CLK_CTRL_Bits B;
} Ifx_GTM_CMU_CLK_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_CLK_EN_Bits B;
} Ifx_GTM_CMU_CLK_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_CLK__CTRL_Bits B;
} Ifx_GTM_CMU_CLK__CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_ECLK_DEN_Bits B;
} Ifx_GTM_CMU_ECLK_DEN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_ECLK_NUM_Bits B;
} Ifx_GTM_CMU_ECLK_NUM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_FXCLK_CTRL_Bits B;
} Ifx_GTM_CMU_FXCLK_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_GCLK_DEN_Bits B;
} Ifx_GTM_CMU_GCLK_DEN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_GCLK_NUM_Bits B;
} Ifx_GTM_CMU_GCLK_NUM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CMU_GLB_CTRL_Bits B;
} Ifx_GTM_CMU_GLB_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_CTRL_Bits B;
} Ifx_GTM_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DATAIN_Bits B;
} Ifx_GTM_DATAIN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ACB_Bits B;
} Ifx_GTM_DPLL_ACB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ACT_STA_Bits B;
} Ifx_GTM_DPLL_ACT_STA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ADD_IN_CAL1_Bits B;
} Ifx_GTM_DPLL_ADD_IN_CAL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ADD_IN_CAL2_Bits B;
} Ifx_GTM_DPLL_ADD_IN_CAL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ADD_IN_LD1_Bits B;
} Ifx_GTM_DPLL_ADD_IN_LD1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ADD_IN_LD2_Bits B;
} Ifx_GTM_DPLL_ADD_IN_LD2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ADT_S_Bits B;
} Ifx_GTM_DPLL_ADT_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ADT_TI_Bits B;
} Ifx_GTM_DPLL_ADT_TI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_AOSV_2_Bits B;
} Ifx_GTM_DPLL_AOSV_2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APS_Bits B;
} Ifx_GTM_DPLL_APS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APS_1C3_Bits B;
} Ifx_GTM_DPLL_APS_1C3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APS_1C3_EXT_Bits B;
} Ifx_GTM_DPLL_APS_1C3_EXT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APS_EXT_Bits B;
} Ifx_GTM_DPLL_APS_EXT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APS_SYNC_Bits B;
} Ifx_GTM_DPLL_APS_SYNC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APS_SYNC_EXT_Bits B;
} Ifx_GTM_DPLL_APS_SYNC_EXT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APT_Bits B;
} Ifx_GTM_DPLL_APT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APT_2C_Bits B;
} Ifx_GTM_DPLL_APT_2C;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_APT_SYNC_Bits B;
} Ifx_GTM_DPLL_APT_SYNC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CDT_SX_Bits B;
} Ifx_GTM_DPLL_CDT_SX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CDT_SX_NOM_Bits B;
} Ifx_GTM_DPLL_CDT_SX_NOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CDT_TX_Bits B;
} Ifx_GTM_DPLL_CDT_TX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CDT_TX_NOM_Bits B;
} Ifx_GTM_DPLL_CDT_TX_NOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CNT_NUM_1_Bits B;
} Ifx_GTM_DPLL_CNT_NUM_1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CNT_NUM_2_Bits B;
} Ifx_GTM_DPLL_CNT_NUM_2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CSN_MAX_Bits B;
} Ifx_GTM_DPLL_CSN_MAX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CSN_MIN_Bits B;
} Ifx_GTM_DPLL_CSN_MIN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTN_MAX_Bits B;
} Ifx_GTM_DPLL_CTN_MAX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTN_MIN_Bits B;
} Ifx_GTM_DPLL_CTN_MIN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_0_Bits B;
} Ifx_GTM_DPLL_CTRL_0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE_Bits B;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER_Bits B;
} Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_1_Bits B;
} Ifx_GTM_DPLL_CTRL_1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_11_Bits B;
} Ifx_GTM_DPLL_CTRL_11;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_1_SHADOW_STATE_Bits B;
} Ifx_GTM_DPLL_CTRL_1_SHADOW_STATE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER_Bits B;
} Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_2_Bits B;
} Ifx_GTM_DPLL_CTRL_2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_3_Bits B;
} Ifx_GTM_DPLL_CTRL_3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_4_Bits B;
} Ifx_GTM_DPLL_CTRL_4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_5_Bits B;
} Ifx_GTM_DPLL_CTRL_5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_CTRL_EXT_Bits B;
} Ifx_GTM_DPLL_CTRL_EXT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DLA_Bits B;
} Ifx_GTM_DPLL_DLA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DTA_Bits B;
} Ifx_GTM_DPLL_DTA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DT_S_Bits B;
} Ifx_GTM_DPLL_DT_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DT_S_ACT_Bits B;
} Ifx_GTM_DPLL_DT_S_ACT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DT_S_START_Bits B;
} Ifx_GTM_DPLL_DT_S_START;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DT_TI_Bits B;
} Ifx_GTM_DPLL_DT_TI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DT_T_ACT_Bits B;
} Ifx_GTM_DPLL_DT_T_ACT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_DT_T_START_Bits B;
} Ifx_GTM_DPLL_DT_T_START;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_EDT_S_Bits B;
} Ifx_GTM_DPLL_EDT_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_EDT_T_Bits B;
} Ifx_GTM_DPLL_EDT_T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_EIRQ_EN_Bits B;
} Ifx_GTM_DPLL_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_FTV_S_Bits B;
} Ifx_GTM_DPLL_FTV_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_FTV_T_Bits B;
} Ifx_GTM_DPLL_FTV_T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_ID_PMTR_Bits B;
} Ifx_GTM_DPLL_ID_PMTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_INCF1_OFFSET_Bits B;
} Ifx_GTM_DPLL_INCF1_OFFSET;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_INCF2_OFFSET_Bits B;
} Ifx_GTM_DPLL_INCF2_OFFSET;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_INC_CNT1_Bits B;
} Ifx_GTM_DPLL_INC_CNT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_INC_CNT1_MASK_Bits B;
} Ifx_GTM_DPLL_INC_CNT1_MASK;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_INC_CNT2_Bits B;
} Ifx_GTM_DPLL_INC_CNT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_INC_CNT2_MASK_Bits B;
} Ifx_GTM_DPLL_INC_CNT2_MASK;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_IRQ_EN_Bits B;
} Ifx_GTM_DPLL_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_IRQ_FORCINT_Bits B;
} Ifx_GTM_DPLL_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_IRQ_MODE_Bits B;
} Ifx_GTM_DPLL_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_IRQ_NOTIFY_Bits B;
} Ifx_GTM_DPLL_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_MEDT_S_Bits B;
} Ifx_GTM_DPLL_MEDT_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_MEDT_T_Bits B;
} Ifx_GTM_DPLL_MEDT_T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_MLS1_Bits B;
} Ifx_GTM_DPLL_MLS1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_MLS2_Bits B;
} Ifx_GTM_DPLL_MLS2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_MPVAL1_Bits B;
} Ifx_GTM_DPLL_MPVAL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_MPVAL2_Bits B;
} Ifx_GTM_DPLL_MPVAL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NA_Bits B;
} Ifx_GTM_DPLL_NA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NMB_S_Bits B;
} Ifx_GTM_DPLL_NMB_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NMB_S_TAR_Bits B;
} Ifx_GTM_DPLL_NMB_S_TAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NMB_S_TAR_OLD_Bits B;
} Ifx_GTM_DPLL_NMB_S_TAR_OLD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NMB_T_Bits B;
} Ifx_GTM_DPLL_NMB_T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NMB_T_TAR_Bits B;
} Ifx_GTM_DPLL_NMB_T_TAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NMB_T_TAR_OLD_Bits B;
} Ifx_GTM_DPLL_NMB_T_TAR_OLD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NTI_CNT_Bits B;
} Ifx_GTM_DPLL_NTI_CNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NUSC_Bits B;
} Ifx_GTM_DPLL_NUSC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NUSC_EXT1_Bits B;
} Ifx_GTM_DPLL_NUSC_EXT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NUSC_EXT2_Bits B;
} Ifx_GTM_DPLL_NUSC_EXT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_NUTC_Bits B;
} Ifx_GTM_DPLL_NUTC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_OSW_Bits B;
} Ifx_GTM_DPLL_OSW;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PDT_Bits B;
} Ifx_GTM_DPLL_PDT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSA_Bits B;
} Ifx_GTM_DPLL_PSA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSAC_Bits B;
} Ifx_GTM_DPLL_PSAC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSSC_Bits B;
} Ifx_GTM_DPLL_PSSC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSSM_Bits B;
} Ifx_GTM_DPLL_PSSM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSSM_OLD_Bits B;
} Ifx_GTM_DPLL_PSSM_OLD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSTC_Bits B;
} Ifx_GTM_DPLL_PSTC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSTM_Bits B;
} Ifx_GTM_DPLL_PSTM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PSTM_OLD_Bits B;
} Ifx_GTM_DPLL_PSTM_OLD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_PVT_Bits B;
} Ifx_GTM_DPLL_PVT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RAM_INI_Bits B;
} Ifx_GTM_DPLL_RAM_INI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RCDT_SX_Bits B;
} Ifx_GTM_DPLL_RCDT_SX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RCDT_SX_NOM_Bits B;
} Ifx_GTM_DPLL_RCDT_SX_NOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RCDT_TX_Bits B;
} Ifx_GTM_DPLL_RCDT_TX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RCDT_TX_NOM_Bits B;
} Ifx_GTM_DPLL_RCDT_TX_NOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RDT_S_Bits B;
} Ifx_GTM_DPLL_RDT_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RDT_S_ACT_Bits B;
} Ifx_GTM_DPLL_RDT_S_ACT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RDT_TI_Bits B;
} Ifx_GTM_DPLL_RDT_TI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_RDT_T_ACT_Bits B;
} Ifx_GTM_DPLL_RDT_T_ACT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_SIDEL_Bits B;
} Ifx_GTM_DPLL_SIDEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_SLR_Bits B;
} Ifx_GTM_DPLL_SLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_STA_Bits B;
} Ifx_GTM_DPLL_STA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_STATUS_Bits B;
} Ifx_GTM_DPLL_STATUS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_STA_FLAG_Bits B;
} Ifx_GTM_DPLL_STA_FLAG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_STA_MASK_Bits B;
} Ifx_GTM_DPLL_STA_MASK;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TBU_TS0_S_Bits B;
} Ifx_GTM_DPLL_TBU_TS0_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TBU_TS0_T_Bits B;
} Ifx_GTM_DPLL_TBU_TS0_T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_THMA_Bits B;
} Ifx_GTM_DPLL_THMA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_THMI_Bits B;
} Ifx_GTM_DPLL_THMI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_THVAL_Bits B;
} Ifx_GTM_DPLL_THVAL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_THVAL2_Bits B;
} Ifx_GTM_DPLL_THVAL2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TIDEL_Bits B;
} Ifx_GTM_DPLL_TIDEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TLR_Bits B;
} Ifx_GTM_DPLL_TLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TOV_Bits B;
} Ifx_GTM_DPLL_TOV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TOV_S_Bits B;
} Ifx_GTM_DPLL_TOV_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TSAC_Bits B;
} Ifx_GTM_DPLL_TSAC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TSF_S_Bits B;
} Ifx_GTM_DPLL_TSF_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TSF_TI_Bits B;
} Ifx_GTM_DPLL_TSF_TI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TS_S_Bits B;
} Ifx_GTM_DPLL_TS_S;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TS_S_OLD_Bits B;
} Ifx_GTM_DPLL_TS_S_OLD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TS_T_Bits B;
} Ifx_GTM_DPLL_TS_T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DPLL_TS_T_OLD_Bits B;
} Ifx_GTM_DPLL_TS_T_OLD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DSADCINSEL_Bits B;
} Ifx_GTM_DSADCINSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DSADC_OUTSEL0_Bits B;
} Ifx_GTM_DSADC_OUTSEL0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DSADC_OUTSEL1_Bits B;
} Ifx_GTM_DSADC_OUTSEL1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DTMAUXINSEL_Bits B;
} Ifx_GTM_DTMAUXINSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DXINCON_Bits B;
} Ifx_GTM_DXINCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_DXOUTCON_Bits B;
} Ifx_GTM_DXOUTCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_EIRQ_EN_Bits B;
} Ifx_GTM_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_EXT_CAP_EN_Bits B;
} Ifx_GTM_EXT_CAP_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_HW_CONF_Bits B;
} Ifx_GTM_HW_CONF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI0_Bits B;
} Ifx_GTM_ICM_IRQG_CEI0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI1_Bits B;
} Ifx_GTM_ICM_IRQG_CEI1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI2_Bits B;
} Ifx_GTM_ICM_IRQG_CEI2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI3_Bits B;
} Ifx_GTM_ICM_IRQG_CEI3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI4_Bits B;
} Ifx_GTM_ICM_IRQG_CEI4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI_MCS_Bits B;
} Ifx_GTM_ICM_IRQG_CEI_MCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI_PSM_Bits B;
} Ifx_GTM_ICM_IRQG_CEI_PSM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CEI_SPE_Bits B;
} Ifx_GTM_ICM_IRQG_CEI_SPE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CI_ATOM_Bits B;
} Ifx_GTM_ICM_IRQG_CI_ATOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CI_MCS_Bits B;
} Ifx_GTM_ICM_IRQG_CI_MCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CI_PSM_Bits B;
} Ifx_GTM_ICM_IRQG_CI_PSM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CI_SPE_Bits B;
} Ifx_GTM_ICM_IRQG_CI_SPE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_CI_TOM_Bits B;
} Ifx_GTM_ICM_IRQG_CI_TOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_MEI_Bits B;
} Ifx_GTM_ICM_IRQG_MEI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_MEI_CLS_Bits B;
} Ifx_GTM_ICM_IRQG_MEI_CLS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R0_Bits B;
} Ifx_GTM_ICM_IRQG_R0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R1_Bits B;
} Ifx_GTM_ICM_IRQG_R1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R10_Bits B;
} Ifx_GTM_ICM_IRQG_R10;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R11_Bits B;
} Ifx_GTM_ICM_IRQG_R11;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R2_Bits B;
} Ifx_GTM_ICM_IRQG_R2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R3_Bits B;
} Ifx_GTM_ICM_IRQG_R3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R4_Bits B;
} Ifx_GTM_ICM_IRQG_R4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R5_Bits B;
} Ifx_GTM_ICM_IRQG_R5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R6_Bits B;
} Ifx_GTM_ICM_IRQG_R6;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R7_Bits B;
} Ifx_GTM_ICM_IRQG_R7;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R8_Bits B;
} Ifx_GTM_ICM_IRQG_R8;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_ICM_IRQG_R9_Bits B;
} Ifx_GTM_ICM_IRQG_R9;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_INTOUT_Bits B;
} Ifx_GTM_INTOUT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_IRQ_EN_Bits B;
} Ifx_GTM_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_IRQ_FORCINT_Bits B;
} Ifx_GTM_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_IRQ_MODE_Bits B;
} Ifx_GTM_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_IRQ_NOTIFY_Bits B;
} Ifx_GTM_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_LCDCDCOUTSEL_Bits B;
} Ifx_GTM_LCDCDCOUTSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MAP_CTRL_Bits B;
} Ifx_GTM_MAP_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCFG_CTRL_Bits B;
} Ifx_GTM_MCFG_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCSINTCLR_Bits B;
} Ifx_GTM_MCSINTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCSINTSTAT_Bits B;
} Ifx_GTM_MCSINTSTAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCSTRIGOUTSEL_Bits B;
} Ifx_GTM_MCSTRIGOUTSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_AEM_DIS_Bits B;
} Ifx_GTM_MCS_AEM_DIS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CAT_Bits B;
} Ifx_GTM_MCS_CAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_ACB_Bits B;
} Ifx_GTM_MCS_CH_ACB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_CTRG_Bits B;
} Ifx_GTM_MCS_CH_CTRG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_CTRL_Bits B;
} Ifx_GTM_MCS_CH_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_EIRQ_EN_Bits B;
} Ifx_GTM_MCS_CH_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_IRQ_EN_Bits B;
} Ifx_GTM_MCS_CH_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_MCS_CH_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_IRQ_MODE_Bits B;
} Ifx_GTM_MCS_CH_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_MCS_CH_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_MHB_Bits B;
} Ifx_GTM_MCS_CH_MHB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_PC_Bits B;
} Ifx_GTM_MCS_CH_PC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_R_Bits B;
} Ifx_GTM_MCS_CH_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CH_STRG_Bits B;
} Ifx_GTM_MCS_CH_STRG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CTRL_STAT_Bits B;
} Ifx_GTM_MCS_CTRL_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_CWT_Bits B;
} Ifx_GTM_MCS_CWT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_ERR_Bits B;
} Ifx_GTM_MCS_ERR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_REG_PROT_Bits B;
} Ifx_GTM_MCS_REG_PROT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MCS_RESET_Bits B;
} Ifx_GTM_MCS_RESET;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MON_ACTIVITY_MCS_Bits B;
} Ifx_GTM_MON_ACTIVITY_MCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MON_ACTIVITY_R0_Bits B;
} Ifx_GTM_MON_ACTIVITY_R0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MON_ACTIVITY_R1_Bits B;
} Ifx_GTM_MON_ACTIVITY_R1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MON_STATUS_Bits B;
} Ifx_GTM_MON_STATUS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_MSCQ_INHCON_Bits B;
} Ifx_GTM_MSC_MSCQ_INHCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_MSCQ_INLCON_Bits B;
} Ifx_GTM_MSC_MSCQ_INLCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_MSCQ_INLEXTCON_Bits B;
} Ifx_GTM_MSC_MSCQ_INLEXTCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_SET_CON0_Bits B;
} Ifx_GTM_MSC_SET_CON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_SET_CON1_Bits B;
} Ifx_GTM_MSC_SET_CON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_SET_CON2_Bits B;
} Ifx_GTM_MSC_SET_CON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_MSC_SET_CON3_Bits B;
} Ifx_GTM_MSC_SET_CON3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OCS_Bits B;
} Ifx_GTM_OCDS_OCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_ODA_Bits B;
} Ifx_GTM_OCDS_ODA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTBU0T_Bits B;
} Ifx_GTM_OCDS_OTBU0T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTBU1T_Bits B;
} Ifx_GTM_OCDS_OTBU1T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTBU2T_Bits B;
} Ifx_GTM_OCDS_OTBU2T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTBU3T_Bits B;
} Ifx_GTM_OCDS_OTBU3T;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTSC0_Bits B;
} Ifx_GTM_OCDS_OTSC0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTSC1_Bits B;
} Ifx_GTM_OCDS_OTSC1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OCDS_OTSS_Bits B;
} Ifx_GTM_OCDS_OTSS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OUT_ATOM_Bits B;
} Ifx_GTM_OUT_ATOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_OUT_TOM_Bits B;
} Ifx_GTM_OUT_TOM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSI5OUTSEL_Bits B;
} Ifx_GTM_PSI5OUTSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSI5SOUTSEL_Bits B;
} Ifx_GTM_PSI5SOUTSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_AFD_CH_BUF_ACC_Bits B;
} Ifx_GTM_PSM_AFD_CH_BUF_ACC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_F2A_ENABLE_Bits B;
} Ifx_GTM_PSM_F2A_ENABLE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_F2A_F2A_CTRL_Bits B;
} Ifx_GTM_PSM_F2A_F2A_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_F2A_RD_CH_ARU_RD_FIFO_Bits B;
} Ifx_GTM_PSM_F2A_RD_CH_ARU_RD_FIFO;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_F2A_STR_CH_STR_CFG_Bits B;
} Ifx_GTM_PSM_F2A_STR_CH_STR_CFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_CTRL_Bits B;
} Ifx_GTM_PSM_FIFO_CH_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_EIRQ_EN_Bits B;
} Ifx_GTM_PSM_FIFO_CH_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_END_ADDR_Bits B;
} Ifx_GTM_PSM_FIFO_CH_END_ADDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_FILL_LEVEL_Bits B;
} Ifx_GTM_PSM_FIFO_CH_FILL_LEVEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_IRQ_EN_Bits B;
} Ifx_GTM_PSM_FIFO_CH_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_PSM_FIFO_CH_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_IRQ_MODE_Bits B;
} Ifx_GTM_PSM_FIFO_CH_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_PSM_FIFO_CH_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_LOWER_WM_Bits B;
} Ifx_GTM_PSM_FIFO_CH_LOWER_WM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_RD_PTR_Bits B;
} Ifx_GTM_PSM_FIFO_CH_RD_PTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_START_ADDR_Bits B;
} Ifx_GTM_PSM_FIFO_CH_START_ADDR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_STATUS_Bits B;
} Ifx_GTM_PSM_FIFO_CH_STATUS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_UPPER_WM_Bits B;
} Ifx_GTM_PSM_FIFO_CH_UPPER_WM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_PSM_FIFO_CH_WR_PTR_Bits B;
} Ifx_GTM_PSM_FIFO_CH_WR_PTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_RESET1_Bits B;
} Ifx_GTM_RESET1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_RESET2_Bits B;
} Ifx_GTM_RESET2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_RESET_CLR_Bits B;
} Ifx_GTM_RESET_CLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_REV_Bits B;
} Ifx_GTM_REV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_RST_Bits B;
} Ifx_GTM_RST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_CMD_Bits B;
} Ifx_GTM_SPE_CMD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_CTRL_STAT_Bits B;
} Ifx_GTM_SPE_CTRL_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_CTRL_STAT2_Bits B;
} Ifx_GTM_SPE_CTRL_STAT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_EIRQ_EN_Bits B;
} Ifx_GTM_SPE_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_IRQ_EN_Bits B;
} Ifx_GTM_SPE_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_IRQ_FORCINT_Bits B;
} Ifx_GTM_SPE_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_IRQ_MODE_Bits B;
} Ifx_GTM_SPE_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_IRQ_NOTIFY_Bits B;
} Ifx_GTM_SPE_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_OUT_CTRL_Bits B;
} Ifx_GTM_SPE_OUT_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_OUT_PAT_Bits B;
} Ifx_GTM_SPE_OUT_PAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_PAT_Bits B;
} Ifx_GTM_SPE_PAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_REV_CMP_Bits B;
} Ifx_GTM_SPE_REV_CMP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_SPE_REV_CNT_Bits B;
} Ifx_GTM_SPE_REV_CNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH0_BASE_Bits B;
} Ifx_GTM_TBU_CH0_BASE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH0_CTRL_Bits B;
} Ifx_GTM_TBU_CH0_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH1_BASE_Bits B;
} Ifx_GTM_TBU_CH1_BASE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH1_CTRL_Bits B;
} Ifx_GTM_TBU_CH1_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH2_BASE_Bits B;
} Ifx_GTM_TBU_CH2_BASE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH2_CTRL_Bits B;
} Ifx_GTM_TBU_CH2_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH3_BASE_Bits B;
} Ifx_GTM_TBU_CH3_BASE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH3_BASE_CAPTURE_Bits B;
} Ifx_GTM_TBU_CH3_BASE_CAPTURE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH3_BASE_MARK_Bits B;
} Ifx_GTM_TBU_CH3_BASE_MARK;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CH3_CTRL_Bits B;
} Ifx_GTM_TBU_CH3_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TBU_CHEN_Bits B;
} Ifx_GTM_TBU_CHEN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIMINSEL_Bits B;
} Ifx_GTM_TIMINSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_CNT_Bits B;
} Ifx_GTM_TIM_CH_CNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_CNTS_Bits B;
} Ifx_GTM_TIM_CH_CNTS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_CTRL_Bits B;
} Ifx_GTM_TIM_CH_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_ECNT_Bits B;
} Ifx_GTM_TIM_CH_ECNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_ECTRL_Bits B;
} Ifx_GTM_TIM_CH_ECTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_EIRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_EIRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_FLT_FE_Bits B;
} Ifx_GTM_TIM_CH_FLT_FE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_FLT_RE_Bits B;
} Ifx_GTM_TIM_CH_FLT_RE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_GPR0_Bits B;
} Ifx_GTM_TIM_CH_GPR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_GPR1_Bits B;
} Ifx_GTM_TIM_CH_GPR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TIM_CH_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TIM_CH_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TIM_CH_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TIM_CH_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_TDUC_Bits B;
} Ifx_GTM_TIM_CH_TDUC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_CH_TDUV_Bits B;
} Ifx_GTM_TIM_CH_TDUV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_INP_VAL_Bits B;
} Ifx_GTM_TIM_INP_VAL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_IN_SRC_Bits B;
} Ifx_GTM_TIM_IN_SRC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TIM_RST_Bits B;
} Ifx_GTM_TIM_RST;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_CM0_Bits B;
} Ifx_GTM_TOM_CH_CM0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_CM1_Bits B;
} Ifx_GTM_TOM_CH_CM1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_CN0_Bits B;
} Ifx_GTM_TOM_CH_CN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_CTRL_Bits B;
} Ifx_GTM_TOM_CH_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_IRQ_EN_Bits B;
} Ifx_GTM_TOM_CH_IRQ_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_IRQ_FORCINT_Bits B;
} Ifx_GTM_TOM_CH_IRQ_FORCINT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_IRQ_MODE_Bits B;
} Ifx_GTM_TOM_CH_IRQ_MODE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_IRQ_NOTIFY_Bits B;
} Ifx_GTM_TOM_CH_IRQ_NOTIFY;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_SR0_Bits B;
} Ifx_GTM_TOM_CH_SR0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_SR1_Bits B;
} Ifx_GTM_TOM_CH_SR1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_CH_STAT_Bits B;
} Ifx_GTM_TOM_CH_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_ACT_TB_Bits B;
} Ifx_GTM_TOM_TGC_ACT_TB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_ENDIS_CTRL_Bits B;
} Ifx_GTM_TOM_TGC_ENDIS_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_ENDIS_STAT_Bits B;
} Ifx_GTM_TOM_TGC_ENDIS_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_FUPD_CTRL_Bits B;
} Ifx_GTM_TOM_TGC_FUPD_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_GLB_CTRL_Bits B;
} Ifx_GTM_TOM_TGC_GLB_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_INT_TRIG_Bits B;
} Ifx_GTM_TOM_TGC_INT_TRIG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_OUTEN_CTRL_Bits B;
} Ifx_GTM_TOM_TGC_OUTEN_CTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOM_TGC_OUTEN_STAT_Bits B;
} Ifx_GTM_TOM_TGC_OUTEN_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TOUTSEL_Bits B;
} Ifx_GTM_TOUTSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_GTM_TRIGOUT_Bits B;
} Ifx_GTM_TRIGOUT;
# 8816 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_IRQ
{
       Ifx_GTM_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_IRQ_EN EN;
       Ifx_GTM_IRQ_FORCINT FORCINT;
       Ifx_GTM_IRQ_MODE MODE;
} Ifx_GTM_IRQ;
# 8837 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_BRIDGE
{
       Ifx_GTM_BRIDGE_MODE MODE;
       Ifx_GTM_BRIDGE_PTR1 PTR1;
       Ifx_GTM_BRIDGE_PTR2 PTR2;
} Ifx_GTM_BRIDGE;
# 8857 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_AUX_IN_SRC
{
       Ifx_GTM_AUX_IN_SRC_TIM TIM[7];
} Ifx_GTM_AUX_IN_SRC;
# 8875 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_OUT
{
       Ifx_GTM_OUT_TOM TOM[5];
       Ifx_UReg_8Bit reserved_14[4];
       Ifx_GTM_OUT_ATOM ATOM0;
       Ifx_GTM_OUT_ATOM ATOM2;
       Ifx_GTM_OUT_ATOM ATOM4;
       Ifx_GTM_OUT_ATOM ATOM6;
       Ifx_GTM_OUT_ATOM ATOM8;
       Ifx_UReg_8Bit reserved_2C[4];
} Ifx_GTM_OUT;
# 8900 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TBU
{
       Ifx_GTM_TBU_CHEN CHEN;
       Ifx_GTM_TBU_CH0_CTRL CH0_CTRL;
       Ifx_GTM_TBU_CH0_BASE CH0_BASE;
       Ifx_GTM_TBU_CH1_CTRL CH1_CTRL;
       Ifx_GTM_TBU_CH1_BASE CH1_BASE;
       Ifx_GTM_TBU_CH2_CTRL CH2_CTRL;
       Ifx_GTM_TBU_CH2_BASE CH2_BASE;
       Ifx_GTM_TBU_CH3_CTRL CH3_CTRL;
       Ifx_GTM_TBU_CH3_BASE CH3_BASE;
       Ifx_GTM_TBU_CH3_BASE_MARK CH3_BASE_MARK;
       Ifx_GTM_TBU_CH3_BASE_CAPTURE CH3_BASE_CAPTURE;
} Ifx_GTM_TBU;
# 8928 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MON_ACTIVITY
{
       Ifx_GTM_MON_ACTIVITY_R0 R0;
       Ifx_GTM_MON_ACTIVITY_R1 R1;
       Ifx_GTM_MON_ACTIVITY_MCS MCS[7];
} Ifx_GTM_MON_ACTIVITY;
# 8948 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MON
{
       Ifx_GTM_MON_STATUS STATUS;
       Ifx_GTM_MON_ACTIVITY ACTIVITY;
       Ifx_UReg_8Bit reserved_28[12];
} Ifx_GTM_MON;
# 8968 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMP_IRQ
{
       Ifx_GTM_CMP_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_CMP_IRQ_EN EN;
       Ifx_GTM_CMP_IRQ_FORCINT FORCINT;
       Ifx_GTM_CMP_IRQ_MODE MODE;
} Ifx_GTM_CMP_IRQ;
# 8989 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMP
{
       Ifx_GTM_CMP_EN EN;
       Ifx_GTM_CMP_IRQ IRQ;
       Ifx_GTM_CMP_EIRQ_EN EIRQ_EN;
} Ifx_GTM_CMP;
# 9009 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ARU_DBG
{
       Ifx_GTM_ARU_DBG_ACCESS0 ACCESS0;
       Ifx_GTM_ARU_DBG_DATA0_H DATA0_H;
       Ifx_GTM_ARU_DBG_DATA0_L DATA0_L;
       Ifx_GTM_ARU_DBG_ACCESS1 ACCESS1;
       Ifx_GTM_ARU_DBG_DATA1_H DATA1_H;
       Ifx_GTM_ARU_DBG_DATA1_L DATA1_L;
} Ifx_GTM_ARU_DBG;
# 9032 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ARU_IRQ
{
       Ifx_GTM_ARU_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_ARU_IRQ_EN EN;
       Ifx_GTM_ARU_IRQ_FORCINT FORCINT;
       Ifx_GTM_ARU_IRQ_MODE MODE;
} Ifx_GTM_ARU_IRQ;
# 9053 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ARU
{
       Ifx_GTM_ARU_ACCESS ACCESS;
       Ifx_GTM_ARU_DATA_H DATA_H;
       Ifx_GTM_ARU_DATA_L DATA_L;
       Ifx_GTM_ARU_DBG DBG;
       Ifx_GTM_ARU_IRQ IRQ;
       Ifx_GTM_ARU_CADDR_END CADDR_END;
       Ifx_UReg_8Bit reserved_38[4];
       Ifx_GTM_ARU_CTRL CTRL;
       Ifx_GTM_ARU_DYN_CTRL DYN_CTRL[2];
       Ifx_GTM_ARU_DYN_ROUTE_LOW DYN_ROUTE_LOW[2];
       Ifx_GTM_ARU_DYN_ROUTE_HIGH DYN_ROUTE_HIGH[2];
       Ifx_GTM_ARU_DYN_ROUTE_SR_LOW DYN_ROUTE_SR_LOW[2];
       Ifx_GTM_ARU_DYN_ROUTE_SR_HIGH DYN_ROUTE_SR_HIGH[2];
       Ifx_GTM_ARU_DYN_RDADDR DYN_RDADDR[2];
       Ifx_UReg_8Bit reserved_70[12];
       Ifx_GTM_ARU_CADDR CADDR;
} Ifx_GTM_ARU;
# 9086 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMU_CLK
{
       Ifx_GTM_CMU_CLK__CTRL CTRL;
} Ifx_GTM_CMU_CLK;
# 9104 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMU_ECLK
{
       Ifx_GTM_CMU_ECLK_NUM NUM;
       Ifx_GTM_CMU_ECLK_DEN DEN;
} Ifx_GTM_CMU_ECLK;
# 9123 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMU_FXCLK
{
       Ifx_GTM_CMU_FXCLK_CTRL CTRL;
} Ifx_GTM_CMU_FXCLK;
# 9141 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CMU
{
       Ifx_GTM_CMU_CLK_EN CLK_EN;
       Ifx_GTM_CMU_GCLK_NUM GCLK_NUM;
       Ifx_GTM_CMU_GCLK_DEN GCLK_DEN;
       Ifx_GTM_CMU_CLK CLK[8];
       Ifx_GTM_CMU_ECLK ECLK[3];
       Ifx_GTM_CMU_FXCLK FXCLK;
       Ifx_GTM_CMU_GLB_CTRL GLB_CTRL;
       Ifx_GTM_CMU_CLK_CTRL CLK_CTRL;
} Ifx_GTM_CMU;
# 9166 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_BRC_SRC
{
       Ifx_GTM_BRC_SRC_ADDR ADDR;
       Ifx_GTM_BRC_SRC_DEST DEST;
} Ifx_GTM_BRC_SRC;
# 9185 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_BRC_IRQ
{
       Ifx_GTM_BRC_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_BRC_IRQ_EN EN;
       Ifx_GTM_BRC_IRQ_FORCINT FORCINT;
       Ifx_GTM_BRC_IRQ_MODE MODE;
} Ifx_GTM_BRC_IRQ;
# 9206 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_BRC
{
       Ifx_GTM_BRC_SRC SRC[12];
       Ifx_GTM_BRC_IRQ IRQ;
       Ifx_GTM_BRC_RST RST;
       Ifx_GTM_BRC_EIRQ_EN EIRQ_EN;
} Ifx_GTM_BRC;
# 9227 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ICM_IRQG
{
       Ifx_GTM_ICM_IRQG_R0 R0;
       Ifx_GTM_ICM_IRQG_R1 R1;
       Ifx_GTM_ICM_IRQG_R2 R2;
       Ifx_GTM_ICM_IRQG_R3 R3;
       Ifx_GTM_ICM_IRQG_R4 R4;
       Ifx_GTM_ICM_IRQG_R5 R5;
       Ifx_GTM_ICM_IRQG_R6 R6;
       Ifx_GTM_ICM_IRQG_R7 R7;
       Ifx_GTM_ICM_IRQG_R8 R8;
       Ifx_GTM_ICM_IRQG_R9 R9;
       Ifx_GTM_ICM_IRQG_R10 R10;
       Ifx_GTM_ICM_IRQG_R11 R11;
       Ifx_GTM_ICM_IRQG_MEI MEI;
       Ifx_GTM_ICM_IRQG_CEI0 CEI0;
       Ifx_GTM_ICM_IRQG_CEI1 CEI1;
       Ifx_GTM_ICM_IRQG_CEI2 CEI2;
       Ifx_GTM_ICM_IRQG_CEI3 CEI3;
       Ifx_GTM_ICM_IRQG_CEI4 CEI4;
       Ifx_UReg_8Bit reserved_48[28];
       Ifx_GTM_ICM_IRQG_CEI_MCS CEI_MCS[7];
       Ifx_UReg_8Bit reserved_80[36];
       Ifx_GTM_ICM_IRQG_CEI_PSM CEI_PSM[1];
       Ifx_UReg_8Bit reserved_A8[12];
       Ifx_GTM_ICM_IRQG_CEI_SPE CEI_SPE;
       Ifx_UReg_8Bit reserved_B8[88];
       Ifx_GTM_ICM_IRQG_MEI_CLS MEI_CLS[2];
       Ifx_UReg_8Bit reserved_118[8];
       Ifx_GTM_ICM_IRQG_CI_MCS CI_MCS[7];
       Ifx_UReg_8Bit reserved_13C[36];
       Ifx_GTM_ICM_IRQG_CI_PSM CI_PSM[1];
       Ifx_UReg_8Bit reserved_164[12];
       Ifx_GTM_ICM_IRQG_CI_SPE CI_SPE;
       Ifx_UReg_8Bit reserved_174[28];
       Ifx_GTM_ICM_IRQG_CI_ATOM CI_ATOM[3];
       Ifx_UReg_8Bit reserved_19C[4];
       Ifx_GTM_ICM_IRQG_CI_TOM CI_TOM[3];
} Ifx_GTM_ICM_IRQG;
# 9280 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ICM
{
       Ifx_GTM_ICM_IRQG IRQG;
} Ifx_GTM_ICM;
# 9298 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_SPE_IRQ
{
       Ifx_GTM_SPE_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_SPE_IRQ_EN EN;
       Ifx_GTM_SPE_IRQ_FORCINT FORCINT;
       Ifx_GTM_SPE_IRQ_MODE MODE;
} Ifx_GTM_SPE_IRQ;
# 9319 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_SPE
{
       Ifx_GTM_SPE_CTRL_STAT CTRL_STAT;
       Ifx_GTM_SPE_PAT PAT;
       Ifx_GTM_SPE_OUT_PAT OUT_PAT[8];
       Ifx_GTM_SPE_OUT_CTRL OUT_CTRL;
       Ifx_GTM_SPE_IRQ IRQ;
       Ifx_GTM_SPE_EIRQ_EN EIRQ_EN;
       Ifx_GTM_SPE_REV_CNT REV_CNT;
       Ifx_GTM_SPE_REV_CMP REV_CMP;
       Ifx_GTM_SPE_CTRL_STAT2 CTRL_STAT2;
       Ifx_GTM_SPE_CMD CMD;
       Ifx_UReg_8Bit reserved_50[48];
} Ifx_GTM_SPE;
# 9347 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TIM_CH_IRQ
{
       Ifx_GTM_TIM_CH_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_TIM_CH_IRQ_EN EN;
       Ifx_GTM_TIM_CH_IRQ_FORCINT FORCINT;
       Ifx_GTM_TIM_CH_IRQ_MODE MODE;
} Ifx_GTM_TIM_CH_IRQ;
# 9368 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TIM_CH
{
       Ifx_GTM_TIM_CH_GPR0 GPR0;
       Ifx_GTM_TIM_CH_GPR1 GPR1;
       Ifx_GTM_TIM_CH_CNT CNT;
       Ifx_GTM_TIM_CH_ECNT ECNT;
       Ifx_GTM_TIM_CH_CNTS CNTS;
       Ifx_GTM_TIM_CH_TDUC TDUC;
       Ifx_GTM_TIM_CH_TDUV TDUV;
       Ifx_GTM_TIM_CH_FLT_RE FLT_RE;
       Ifx_GTM_TIM_CH_FLT_FE FLT_FE;
       Ifx_GTM_TIM_CH_CTRL CTRL;
       Ifx_GTM_TIM_CH_ECTRL ECTRL;
       Ifx_GTM_TIM_CH_IRQ IRQ;
       Ifx_GTM_TIM_CH_EIRQ_EN EIRQ_EN;
} Ifx_GTM_TIM_CH;
# 9398 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TIM
{
       Ifx_GTM_TIM_CH CH0;
       Ifx_UReg_8Bit reserved_40[52];
       Ifx_GTM_TIM_INP_VAL INP_VAL;
       Ifx_GTM_TIM_IN_SRC IN_SRC;
       Ifx_GTM_TIM_RST RST;
       Ifx_GTM_TIM_CH CH1;
       Ifx_UReg_8Bit reserved_C0[64];
       Ifx_GTM_TIM_CH CH2;
       Ifx_UReg_8Bit reserved_140[64];
       Ifx_GTM_TIM_CH CH3;
       Ifx_UReg_8Bit reserved_1C0[64];
       Ifx_GTM_TIM_CH CH4;
       Ifx_UReg_8Bit reserved_240[64];
       Ifx_GTM_TIM_CH CH5;
       Ifx_UReg_8Bit reserved_2C0[64];
       Ifx_GTM_TIM_CH CH6;
       Ifx_UReg_8Bit reserved_340[64];
       Ifx_GTM_TIM_CH CH7;
       Ifx_UReg_8Bit reserved_3C0[1088];
} Ifx_GTM_TIM;
# 9434 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TOM_CH_IRQ
{
       Ifx_GTM_TOM_CH_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_TOM_CH_IRQ_EN EN;
       Ifx_GTM_TOM_CH_IRQ_FORCINT FORCINT;
       Ifx_GTM_TOM_CH_IRQ_MODE MODE;
} Ifx_GTM_TOM_CH_IRQ;
# 9455 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TOM_CH
{
       Ifx_GTM_TOM_CH_CTRL CTRL;
       Ifx_GTM_TOM_CH_SR0 SR0;
       Ifx_GTM_TOM_CH_SR1 SR1;
       Ifx_GTM_TOM_CH_CM0 CM0;
       Ifx_GTM_TOM_CH_CM1 CM1;
       Ifx_GTM_TOM_CH_CN0 CN0;
       Ifx_GTM_TOM_CH_STAT STAT;
       Ifx_GTM_TOM_CH_IRQ IRQ;
} Ifx_GTM_TOM_CH;
# 9480 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_TOM
{
       Ifx_GTM_TOM_CH CH0;
       Ifx_UReg_8Bit reserved_2C[4];
       Ifx_GTM_TOM_TGC_GLB_CTRL TGC0_GLB_CTRL;
       Ifx_GTM_TOM_TGC_ACT_TB TGC0_ACT_TB;
       Ifx_GTM_TOM_TGC_FUPD_CTRL TGC0_FUPD_CTRL;
       Ifx_GTM_TOM_TGC_INT_TRIG TGC0_INT_TRIG;
       Ifx_GTM_TOM_CH CH1;
       Ifx_UReg_8Bit reserved_6C[4];
       Ifx_GTM_TOM_TGC_ENDIS_CTRL TGC0_ENDIS_CTRL;
       Ifx_GTM_TOM_TGC_ENDIS_STAT TGC0_ENDIS_STAT;
       Ifx_GTM_TOM_TGC_OUTEN_CTRL TGC0_OUTEN_CTRL;
       Ifx_GTM_TOM_TGC_OUTEN_STAT TGC0_OUTEN_STAT;
       Ifx_GTM_TOM_CH CH2;
       Ifx_UReg_8Bit reserved_AC[20];
       Ifx_GTM_TOM_CH CH3;
       Ifx_UReg_8Bit reserved_EC[20];
       Ifx_GTM_TOM_CH CH4;
       Ifx_UReg_8Bit reserved_12C[20];
       Ifx_GTM_TOM_CH CH5;
       Ifx_UReg_8Bit reserved_16C[20];
       Ifx_GTM_TOM_CH CH6;
       Ifx_UReg_8Bit reserved_1AC[20];
       Ifx_GTM_TOM_CH CH7;
       Ifx_UReg_8Bit reserved_1EC[20];
       Ifx_GTM_TOM_CH CH8;
       Ifx_UReg_8Bit reserved_22C[4];
       Ifx_GTM_TOM_TGC_GLB_CTRL TGC1_GLB_CTRL;
       Ifx_GTM_TOM_TGC_ACT_TB TGC1_ACT_TB;
       Ifx_GTM_TOM_TGC_FUPD_CTRL TGC1_FUPD_CTRL;
       Ifx_GTM_TOM_TGC_INT_TRIG TGC1_INT_TRIG;
       Ifx_GTM_TOM_CH CH9;
       Ifx_UReg_8Bit reserved_26C[4];
       Ifx_GTM_TOM_TGC_ENDIS_CTRL TGC1_ENDIS_CTRL;
       Ifx_GTM_TOM_TGC_ENDIS_STAT TGC1_ENDIS_STAT;
       Ifx_GTM_TOM_TGC_OUTEN_CTRL TGC1_OUTEN_CTRL;
       Ifx_GTM_TOM_TGC_OUTEN_STAT TGC1_OUTEN_STAT;
       Ifx_GTM_TOM_CH CH10;
       Ifx_UReg_8Bit reserved_2AC[20];
       Ifx_GTM_TOM_CH CH11;
       Ifx_UReg_8Bit reserved_2EC[20];
       Ifx_GTM_TOM_CH CH12;
       Ifx_UReg_8Bit reserved_32C[20];
       Ifx_GTM_TOM_CH CH13;
       Ifx_UReg_8Bit reserved_36C[20];
       Ifx_GTM_TOM_CH CH14;
       Ifx_UReg_8Bit reserved_3AC[20];
       Ifx_GTM_TOM_CH CH15;
       Ifx_UReg_8Bit reserved_3EC[1044];
} Ifx_GTM_TOM;
# 9545 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_F2A_RD_CH
{
       Ifx_GTM_PSM_F2A_RD_CH_ARU_RD_FIFO ARU_RD_FIFO;
} Ifx_GTM_PSM_F2A_RD_CH;
# 9563 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_F2A_STR_CH
{
       Ifx_GTM_PSM_F2A_STR_CH_STR_CFG STR_CFG;
} Ifx_GTM_PSM_F2A_STR_CH;
# 9581 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_F2A
{
       Ifx_GTM_PSM_F2A_RD_CH RD_CH[8];
       Ifx_GTM_PSM_F2A_STR_CH STR_CH[8];
       Ifx_GTM_PSM_F2A_ENABLE ENABLE;
       Ifx_GTM_PSM_F2A_F2A_CTRL F2A_CTRL;
} Ifx_GTM_PSM_F2A;
# 9602 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_AFD_CH
{
       Ifx_GTM_PSM_AFD_CH_BUF_ACC BUF_ACC;
       Ifx_UReg_8Bit reserved_4[12];
} Ifx_GTM_PSM_AFD_CH;
# 9621 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_AFD
{
       Ifx_GTM_PSM_AFD_CH CH[8];
} Ifx_GTM_PSM_AFD;
# 9639 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_FIFO_CH_IRQ
{
       Ifx_GTM_PSM_FIFO_CH_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_PSM_FIFO_CH_IRQ_EN EN;
       Ifx_GTM_PSM_FIFO_CH_IRQ_FORCINT FORCINT;
       Ifx_GTM_PSM_FIFO_CH_IRQ_MODE MODE;
} Ifx_GTM_PSM_FIFO_CH_IRQ;
# 9660 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_FIFO_CH
{
       Ifx_GTM_PSM_FIFO_CH_CTRL CTRL;
       Ifx_GTM_PSM_FIFO_CH_END_ADDR END_ADDR;
       Ifx_GTM_PSM_FIFO_CH_START_ADDR START_ADDR;
       Ifx_GTM_PSM_FIFO_CH_UPPER_WM UPPER_WM;
       Ifx_GTM_PSM_FIFO_CH_LOWER_WM LOWER_WM;
       Ifx_GTM_PSM_FIFO_CH_STATUS STATUS;
       Ifx_GTM_PSM_FIFO_CH_FILL_LEVEL FILL_LEVEL;
       Ifx_GTM_PSM_FIFO_CH_WR_PTR WR_PTR;
       Ifx_GTM_PSM_FIFO_CH_RD_PTR RD_PTR;
       Ifx_GTM_PSM_FIFO_CH_IRQ IRQ;
       Ifx_GTM_PSM_FIFO_CH_EIRQ_EN EIRQ_EN;
       Ifx_UReg_8Bit reserved_38[8];
} Ifx_GTM_PSM_FIFO_CH;
# 9689 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM_FIFO
{
       Ifx_GTM_PSM_FIFO_CH CH[8];
} Ifx_GTM_PSM_FIFO;
# 9707 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_PSM
{
       Ifx_GTM_PSM_F2A F2A;
       Ifx_UReg_8Bit reserved_48[56];
       Ifx_GTM_PSM_AFD AFD;
       Ifx_UReg_8Bit reserved_100[768];
       Ifx_GTM_PSM_FIFO FIFO;
       Ifx_UReg_8Bit reserved_600[14848];
} Ifx_GTM_PSM;
# 9731 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_DPLL_IRQ
{
       Ifx_GTM_DPLL_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_DPLL_IRQ_EN EN;
       Ifx_GTM_DPLL_IRQ_FORCINT FORCINT;
       Ifx_GTM_DPLL_IRQ_MODE MODE;
} Ifx_GTM_DPLL_IRQ;
# 9752 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_DPLL
{
       Ifx_GTM_DPLL_CTRL_0 CTRL_0;
       Ifx_GTM_DPLL_CTRL_1 CTRL_1;
       Ifx_GTM_DPLL_CTRL_2 CTRL_2;
       Ifx_GTM_DPLL_CTRL_3 CTRL_3;
       Ifx_GTM_DPLL_CTRL_4 CTRL_4;
       Ifx_GTM_DPLL_CTRL_5 CTRL_5;
       Ifx_GTM_DPLL_ACT_STA ACT_STA;
       Ifx_GTM_DPLL_OSW OSW;
       Ifx_GTM_DPLL_AOSV_2 AOSV_2;
       Ifx_GTM_DPLL_APT APT;
       Ifx_GTM_DPLL_APS APS;
       Ifx_GTM_DPLL_APT_2C APT_2C;
       Ifx_GTM_DPLL_APS_1C3 APS_1C3;
       Ifx_GTM_DPLL_NUTC NUTC;
       Ifx_GTM_DPLL_NUSC NUSC;
       Ifx_GTM_DPLL_NTI_CNT NTI_CNT;
       Ifx_GTM_DPLL_IRQ IRQ;
       Ifx_GTM_DPLL_EIRQ_EN EIRQ_EN;
       Ifx_UReg_8Bit reserved_54[92];
       Ifx_GTM_DPLL_INC_CNT1 INC_CNT1;
       Ifx_GTM_DPLL_INC_CNT2 INC_CNT2;
       Ifx_GTM_DPLL_APT_SYNC APT_SYNC;
       Ifx_GTM_DPLL_APS_SYNC APS_SYNC;
       Ifx_GTM_DPLL_TBU_TS0_T TBU_TS0_T;
       Ifx_GTM_DPLL_TBU_TS0_S TBU_TS0_S;
       Ifx_GTM_DPLL_ADD_IN_LD1 ADD_IN_LD1;
       Ifx_GTM_DPLL_ADD_IN_LD2 ADD_IN_LD2;
       Ifx_UReg_8Bit reserved_D0[44];
       Ifx_GTM_DPLL_STATUS STATUS;
       Ifx_GTM_DPLL_ID_PMTR ID_PMTR[32];
       Ifx_UReg_8Bit reserved_180[96];
       Ifx_GTM_DPLL_CTRL_0_SHADOW_TRIGGER CTRL_0_SHADOW_TRIGGER;
       Ifx_GTM_DPLL_CTRL_0_SHADOW_STATE CTRL_0_SHADOW_STATE;
       Ifx_GTM_DPLL_CTRL_1_SHADOW_TRIGGER CTRL_1_SHADOW_TRIGGER;
       Ifx_GTM_DPLL_CTRL_1_SHADOW_STATE CTRL_1_SHADOW_STATE;
       Ifx_UReg_8Bit reserved_1F0[12];
       Ifx_GTM_DPLL_RAM_INI RAM_INI;
       Ifx_GTM_DPLL_PSA PSA[32];
       Ifx_GTM_DPLL_DLA DLA[32];
       Ifx_GTM_DPLL_NA NA[32];
       Ifx_GTM_DPLL_DTA DTA[32];
       Ifx_GTM_DPLL_TS_T TS_T;
       Ifx_GTM_DPLL_TS_T_OLD TS_T_OLD;
       Ifx_GTM_DPLL_FTV_T FTV_T;
       Ifx_UReg_8Bit reserved_40C[4];
       Ifx_GTM_DPLL_TS_S TS_S;
       Ifx_GTM_DPLL_TS_S_OLD TS_S_OLD;
       Ifx_GTM_DPLL_FTV_S FTV_S;
       Ifx_UReg_8Bit reserved_41C[4];
       Ifx_GTM_DPLL_THMI THMI;
       Ifx_GTM_DPLL_THMA THMA;
       Ifx_GTM_DPLL_THVAL THVAL;
       Ifx_UReg_8Bit reserved_42C[4];
       Ifx_GTM_DPLL_TOV TOV;
       Ifx_GTM_DPLL_TOV_S TOV_S;
       Ifx_GTM_DPLL_ADD_IN_CAL1 ADD_IN_CAL1;
       Ifx_GTM_DPLL_ADD_IN_CAL2 ADD_IN_CAL2;
       Ifx_GTM_DPLL_MPVAL1 MPVAL1;
       Ifx_GTM_DPLL_MPVAL2 MPVAL2;
       Ifx_GTM_DPLL_NMB_T_TAR NMB_T_TAR;
       Ifx_GTM_DPLL_NMB_T_TAR_OLD NMB_T_TAR_OLD;
       Ifx_GTM_DPLL_NMB_S_TAR NMB_S_TAR;
       Ifx_GTM_DPLL_NMB_S_TAR_OLD NMB_S_TAR_OLD;
       Ifx_UReg_8Bit reserved_458[8];
       Ifx_GTM_DPLL_RCDT_TX RCDT_TX;
       Ifx_GTM_DPLL_RCDT_SX RCDT_SX;
       Ifx_GTM_DPLL_RCDT_TX_NOM RCDT_TX_NOM;
       Ifx_GTM_DPLL_RCDT_SX_NOM RCDT_SX_NOM;
       Ifx_GTM_DPLL_RDT_T_ACT RDT_T_ACT;
       Ifx_GTM_DPLL_RDT_S_ACT RDT_S_ACT;
       Ifx_GTM_DPLL_DT_T_ACT DT_T_ACT;
       Ifx_GTM_DPLL_DT_S_ACT DT_S_ACT;
       Ifx_GTM_DPLL_EDT_T EDT_T;
       Ifx_GTM_DPLL_MEDT_T MEDT_T;
       Ifx_GTM_DPLL_EDT_S EDT_S;
       Ifx_GTM_DPLL_MEDT_S MEDT_S;
       Ifx_GTM_DPLL_CDT_TX CDT_TX;
       Ifx_GTM_DPLL_CDT_SX CDT_SX;
       Ifx_GTM_DPLL_CDT_TX_NOM CDT_TX_NOM;
       Ifx_GTM_DPLL_CDT_SX_NOM CDT_SX_NOM;
       Ifx_GTM_DPLL_TLR TLR;
       Ifx_GTM_DPLL_SLR SLR;
       Ifx_UReg_8Bit reserved_4A8[88];
       Ifx_GTM_DPLL_PDT PDT[32];
       Ifx_UReg_8Bit reserved_580[64];
       Ifx_GTM_DPLL_MLS1 MLS1;
       Ifx_GTM_DPLL_MLS2 MLS2;
       Ifx_GTM_DPLL_CNT_NUM_1 CNT_NUM_1;
       Ifx_GTM_DPLL_CNT_NUM_2 CNT_NUM_2;
       Ifx_GTM_DPLL_PVT PVT;
       Ifx_UReg_8Bit reserved_5D4[12];
       Ifx_GTM_DPLL_PSTC PSTC;
       Ifx_GTM_DPLL_PSSC PSSC;
       Ifx_GTM_DPLL_PSTM PSTM;
       Ifx_GTM_DPLL_PSTM_OLD PSTM_OLD;
       Ifx_GTM_DPLL_PSSM PSSM;
       Ifx_GTM_DPLL_PSSM_OLD PSSM_OLD;
       Ifx_GTM_DPLL_NMB_T NMB_T;
       Ifx_GTM_DPLL_NMB_S NMB_S;
       Ifx_GTM_DPLL_RDT_S RDT_S[64];
       Ifx_GTM_DPLL_TSF_S TSF_S[64];
       Ifx_GTM_DPLL_ADT_S ADT_S[64];
       Ifx_GTM_DPLL_DT_S DT_S[64];
       Ifx_UReg_8Bit reserved_A00[1024];
       Ifx_GTM_DPLL_TSAC TSAC[32];
       Ifx_GTM_DPLL_PSAC PSAC[32];
       Ifx_GTM_DPLL_ACB ACB[8];
       Ifx_GTM_DPLL_CTRL_11 CTRL_11;
       Ifx_GTM_DPLL_THVAL2 THVAL2;
       Ifx_GTM_DPLL_TIDEL TIDEL;
       Ifx_GTM_DPLL_SIDEL SIDEL;
       Ifx_GTM_DPLL_APS_SYNC_EXT APS_SYNC_EXT;
       Ifx_GTM_DPLL_CTRL_EXT CTRL_EXT;
       Ifx_GTM_DPLL_APS_EXT APS_EXT;
       Ifx_GTM_DPLL_APS_1C3_EXT APS_1C3_EXT;
       Ifx_GTM_DPLL_STA STA;
       Ifx_GTM_DPLL_INCF1_OFFSET INCF1_OFFSET;
       Ifx_GTM_DPLL_INCF2_OFFSET INCF2_OFFSET;
       Ifx_GTM_DPLL_DT_T_START DT_T_START;
       Ifx_GTM_DPLL_DT_S_START DT_S_START;
       Ifx_GTM_DPLL_STA_MASK STA_MASK;
       Ifx_GTM_DPLL_STA_FLAG STA_FLAG;
       Ifx_GTM_DPLL_INC_CNT1_MASK INC_CNT1_MASK;
       Ifx_GTM_DPLL_INC_CNT2_MASK INC_CNT2_MASK;
       Ifx_GTM_DPLL_NUSC_EXT1 NUSC_EXT1;
       Ifx_GTM_DPLL_NUSC_EXT2 NUSC_EXT2;
       Ifx_GTM_DPLL_CTN_MIN CTN_MIN;
       Ifx_GTM_DPLL_CTN_MAX CTN_MAX;
       Ifx_GTM_DPLL_CSN_MIN CSN_MIN;
       Ifx_GTM_DPLL_CSN_MAX CSN_MAX;
       Ifx_UReg_8Bit reserved_F7C[12420];
       Ifx_UReg_32Bit RR2[4096];
} Ifx_GTM_DPLL;
# 9901 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MCS_RAM
{
       Ifx_UReg_32Bit MEM[2048];
       Ifx_UReg_32Bit MEM1[1024];
} Ifx_GTM_MCS_RAM;
# 9920 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_OCDS
{
       Ifx_GTM_OCDS_OTBU0T OTBU0T;
       Ifx_GTM_OCDS_OTBU1T OTBU1T;
       Ifx_GTM_OCDS_OTBU2T OTBU2T;
       Ifx_GTM_OCDS_OTBU3T OTBU3T;
       Ifx_GTM_OCDS_OTSS OTSS;
       Ifx_GTM_OCDS_OTSC0 OTSC0;
       Ifx_GTM_OCDS_OTSC1 OTSC1;
       Ifx_GTM_OCDS_ODA ODA;
       Ifx_GTM_OCDS_OCS OCS;
} Ifx_GTM_OCDS;
# 9946 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_DSADC
{
       Ifx_GTM_DSADC_OUTSEL0 OUTSEL0;
       Ifx_GTM_DSADC_OUTSEL1 OUTSEL1;
} Ifx_GTM_DSADC;
# 9965 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ADCTRIG
{
       Ifx_GTM_ADCTRIG_OUT0 OUT0;
       Ifx_GTM_ADCTRIG_OUT1 OUT1;
} Ifx_GTM_ADCTRIG;
# 9984 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MSC_SET
{
       Ifx_GTM_MSC_SET_CON0 CON0;
       Ifx_GTM_MSC_SET_CON1 CON1;
       Ifx_GTM_MSC_SET_CON2 CON2;
       Ifx_GTM_MSC_SET_CON3 CON3;
} Ifx_GTM_MSC_SET;
# 10005 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MSC_MSCQ
{
       Ifx_GTM_MSC_MSCQ_INLCON INLCON;
       Ifx_GTM_MSC_MSCQ_INHCON INHCON;
       Ifx_GTM_MSC_MSCQ_INLEXTCON INLEXTCON;
} Ifx_GTM_MSC_MSCQ;
# 10025 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MSC
{
       Ifx_GTM_MSC_SET SET[7];
       Ifx_UReg_8Bit reserved_70[32];
       Ifx_GTM_MSC_MSCQ MSCQ[3];
} Ifx_GTM_MSC;
# 10045 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CCM_ARP
{
       Ifx_GTM_CCM_ARP_CTRL CTRL;
       Ifx_GTM_CCM_ARP_PROT PROT;
} Ifx_GTM_CCM_ARP;
# 10064 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CCM
{
       Ifx_GTM_CCM_ARP ARP[10];
       Ifx_UReg_8Bit reserved_50[392];
       Ifx_GTM_CCM_AEIM_STA AEIM_STA;
       Ifx_GTM_CCM_HW_CONF HW_CONF;
       Ifx_GTM_CCM_TIM_AUX_IN_SRC TIM_AUX_IN_SRC;
       Ifx_GTM_CCM_EXT_CAP_EN EXT_CAP_EN;
       Ifx_GTM_CCM_TOM_OUT TOM_OUT;
       Ifx_GTM_CCM_ATOM_OUT ATOM_OUT;
       Ifx_GTM_CCM_CMU_CLK_CFG CMU_CLK_CFG;
       Ifx_GTM_CCM_CMU_FXCLK_CFG CMU_FXCLK_CFG;
       Ifx_GTM_CCM_CFG CFG;
       Ifx_GTM_CCM_PROT PROT;
} Ifx_GTM_CCM;
# 10093 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CDTM_DTM_CH
{
       Ifx_GTM_CDTM_DTM_CH_DTV DTV;
} Ifx_GTM_CDTM_DTM_CH;
# 10111 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CDTM_DTM
{
       Ifx_GTM_CDTM_DTM_CTRL CTRL;
       Ifx_GTM_CDTM_DTM_CH_CTRL1 CH_CTRL1;
       Ifx_GTM_CDTM_DTM_CH_CTRL2 CH_CTRL2;
       Ifx_GTM_CDTM_DTM_CH_CTRL2_SR CH_CTRL2_SR;
       Ifx_GTM_CDTM_DTM_PS_CTRL PS_CTRL;
       Ifx_GTM_CDTM_DTM_CH CH[4];
       Ifx_GTM_CDTM_DTM_CH_SR CH_SR;
       Ifx_GTM_CDTM_DTM_CH_CTRL3 CH_CTRL3;
       Ifx_UReg_8Bit reserved_2C[20];
} Ifx_GTM_CDTM_DTM;
# 10137 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_CDTM
{
       Ifx_GTM_CDTM_DTM DTM[6];
       Ifx_UReg_8Bit reserved_180[640];
} Ifx_GTM_CDTM;
# 10156 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ATOM_CH_IRQ
{
       Ifx_GTM_ATOM_CH_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_ATOM_CH_IRQ_EN EN;
       Ifx_GTM_ATOM_CH_IRQ_FORCINT FORCINT;
       Ifx_GTM_ATOM_CH_IRQ_MODE MODE;
} Ifx_GTM_ATOM_CH_IRQ;
# 10177 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ATOM_CH
{
       Ifx_GTM_ATOM_CH_RDADDR RDADDR;
       union
       {
            Ifx_GTM_ATOM_CH_CTRL CTRL;
            Ifx_GTM_ATOM_CH_SOMB SOMB;
            Ifx_GTM_ATOM_CH_SOMC SOMC;
            Ifx_GTM_ATOM_CH_SOMI SOMI;
            Ifx_GTM_ATOM_CH_SOMP SOMP;
            Ifx_GTM_ATOM_CH_SOMS SOMS;
       };
       Ifx_GTM_ATOM_CH_SR0 SR0;
       Ifx_GTM_ATOM_CH_SR1 SR1;
       Ifx_GTM_ATOM_CH_CM0 CM0;
       Ifx_GTM_ATOM_CH_CM1 CM1;
       Ifx_GTM_ATOM_CH_CN0 CN0;
       Ifx_GTM_ATOM_CH_STAT STAT;
       Ifx_GTM_ATOM_CH_IRQ IRQ;
} Ifx_GTM_ATOM_CH;
# 10211 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ATOM_AGC
{
       Ifx_GTM_ATOM_AGC_GLB_CTRL GLB_CTRL;
       Ifx_GTM_ATOM_AGC_ENDIS_CTRL ENDIS_CTRL;
       Ifx_GTM_ATOM_AGC_ENDIS_STAT ENDIS_STAT;
       Ifx_GTM_ATOM_AGC_ACT_TB ACT_TB;
       Ifx_GTM_ATOM_AGC_OUTEN_CTRL OUTEN_CTRL;
       Ifx_GTM_ATOM_AGC_OUTEN_STAT OUTEN_STAT;
       Ifx_GTM_ATOM_AGC_FUPD_CTRL FUPD_CTRL;
       Ifx_GTM_ATOM_AGC_INT_TRIG INT_TRIG;
       Ifx_UReg_8Bit reserved_20[32];
} Ifx_GTM_ATOM_AGC;
# 10237 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_ATOM
{
       Ifx_GTM_ATOM_CH CH0;
       Ifx_UReg_8Bit reserved_30[16];
       Ifx_GTM_ATOM_AGC AGC;
       Ifx_GTM_ATOM_CH CH1;
       Ifx_UReg_8Bit reserved_B0[80];
       Ifx_GTM_ATOM_CH CH2;
       Ifx_UReg_8Bit reserved_130[80];
       Ifx_GTM_ATOM_CH CH3;
       Ifx_UReg_8Bit reserved_1B0[80];
       Ifx_GTM_ATOM_CH CH4;
       Ifx_UReg_8Bit reserved_230[80];
       Ifx_GTM_ATOM_CH CH5;
       Ifx_UReg_8Bit reserved_2B0[80];
       Ifx_GTM_ATOM_CH CH6;
       Ifx_UReg_8Bit reserved_330[80];
       Ifx_GTM_ATOM_CH CH7;
       Ifx_UReg_8Bit reserved_3B0[1104];
} Ifx_GTM_ATOM;
# 10271 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MCS_CH_IRQ
{
       Ifx_GTM_MCS_CH_IRQ_NOTIFY NOTIFY;
       Ifx_GTM_MCS_CH_IRQ_EN EN;
       Ifx_GTM_MCS_CH_IRQ_FORCINT FORCINT;
       Ifx_GTM_MCS_CH_IRQ_MODE MODE;
} Ifx_GTM_MCS_CH_IRQ;
# 10292 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MCS_CH
{
       Ifx_GTM_MCS_CH_R R[8];
       Ifx_GTM_MCS_CH_CTRL CTRL;
       Ifx_GTM_MCS_CH_ACB ACB;
       Ifx_GTM_MCS_CH_CTRG CTRG;
       Ifx_GTM_MCS_CH_STRG STRG;
       Ifx_UReg_8Bit reserved_30[12];
       Ifx_GTM_MCS_CH_MHB MHB;
       Ifx_GTM_MCS_CH_PC PC;
       Ifx_GTM_MCS_CH_IRQ IRQ;
       Ifx_GTM_MCS_CH_EIRQ_EN EIRQ_EN;
} Ifx_GTM_MCS_CH;
# 10319 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM_MCS
{
       Ifx_GTM_MCS_CH CH0;
       Ifx_UReg_8Bit reserved_58[8];
       Ifx_GTM_MCS_REG_PROT REG_PROT;
       Ifx_GTM_MCS_CTRL_STAT CTRL_STAT;
       Ifx_GTM_MCS_RESET RESET;
       Ifx_GTM_MCS_CAT CAT;
       Ifx_GTM_MCS_CWT CWT;
       Ifx_UReg_8Bit reserved_74[8];
       Ifx_GTM_MCS_ERR ERR;
       Ifx_GTM_MCS_CH CH1;
       Ifx_UReg_8Bit reserved_D8[40];
       Ifx_GTM_MCS_CH CH2;
       Ifx_UReg_8Bit reserved_158[40];
       Ifx_GTM_MCS_CH CH3;
       Ifx_UReg_8Bit reserved_1D8[40];
       Ifx_GTM_MCS_CH CH4;
       Ifx_UReg_8Bit reserved_258[40];
       Ifx_GTM_MCS_CH CH5;
       Ifx_UReg_8Bit reserved_2D8[40];
       Ifx_GTM_MCS_CH CH6;
       Ifx_UReg_8Bit reserved_358[40];
       Ifx_GTM_MCS_CH CH7;
       Ifx_UReg_8Bit reserved_3D8[3112];
} Ifx_GTM_MCS;
# 10359 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_regdef.h"
typedef volatile struct _Ifx_GTM
{
       Ifx_GTM_REV REV;
       Ifx_GTM_RST RST;
       Ifx_GTM_CTRL CTRL;
       Ifx_GTM_AEI_ADDR_XPT AEI_ADDR_XPT;
       Ifx_GTM_IRQ IRQ;
       Ifx_GTM_EIRQ_EN EIRQ_EN;
       Ifx_GTM_HW_CONF HW_CONF;
       Ifx_GTM_CFG CFG;
       Ifx_GTM_AEI_STA_XPT AEI_STA_XPT;
       Ifx_GTM_BRIDGE BRIDGE;
       Ifx_GTM_MCS_AEM_DIS MCS_AEM_DIS;
       Ifx_GTM_AUX_IN_SRC AUX_IN_SRC;
       Ifx_GTM_EXT_CAP_EN EXT_CAP_EN[7];
       Ifx_UReg_8Bit reserved_78[8];
       Ifx_GTM_OUT OUT;
       Ifx_GTM_CLS_CLK_CFG CLS_CLK_CFG;
       Ifx_UReg_8Bit reserved_B4[76];
       Ifx_GTM_TBU TBU;
       Ifx_UReg_8Bit reserved_12C[84];
       Ifx_GTM_MON MON;
       Ifx_UReg_8Bit reserved_1B4[76];
       Ifx_GTM_CMP CMP;
       Ifx_UReg_8Bit reserved_218[104];
       Ifx_GTM_ARU ARU;
       Ifx_GTM_CMU CMU;
       Ifx_UReg_8Bit reserved_350[176];
       Ifx_GTM_BRC BRC;
       Ifx_UReg_8Bit reserved_478[392];
       Ifx_GTM_ICM ICM;
       Ifx_UReg_8Bit reserved_7AC[84];
       Ifx_GTM_SPE SPE[4];
       Ifx_UReg_8Bit reserved_A00[1280];
       Ifx_GTM_MAP_CTRL MAP_CTRL;
       Ifx_UReg_8Bit reserved_F04[60];
       Ifx_GTM_MCFG_CTRL MCFG_CTRL;
       Ifx_UReg_8Bit reserved_F44[188];
       Ifx_GTM_TIM TIM[7];
       Ifx_UReg_8Bit reserved_4800[14336];
       Ifx_GTM_TOM TOM[5];
       Ifx_UReg_8Bit reserved_A800[55296];
       Ifx_GTM_PSM PSM[2];
       Ifx_UReg_8Bit reserved_20000[32768];
       Ifx_GTM_DPLL DPLL;
       Ifx_UReg_8Bit reserved_30000[457984];
       Ifx_GTM_CLC CLC;
       Ifx_GTM_RESET_CLR RESET_CLR;
       Ifx_GTM_RESET1 RESET1;
       Ifx_GTM_RESET2 RESET2;
       Ifx_GTM_ACCEN0 ACCEN0;
       Ifx_GTM_ACCEN1 ACCEN1;
       Ifx_GTM_OCDS OCDS;
       Ifx_UReg_8Bit reserved_9FD3C[4];
       Ifx_GTM_TIMINSEL TIMINSEL[7];
       Ifx_UReg_8Bit reserved_9FD5C[4];
       Ifx_GTM_TOUTSEL TOUTSEL[34];
       Ifx_UReg_8Bit reserved_9FDE8[24];
       Ifx_GTM_DSADCINSEL DSADCINSEL[6];
       Ifx_UReg_8Bit reserved_9FE18[8];
       Ifx_GTM_DSADC DSADC[4];
       Ifx_GTM_ADCTRIG ADCTRIG[5];
       Ifx_UReg_8Bit reserved_9FE68[8];
       Ifx_GTM_DXOUTCON DXOUTCON;
       Ifx_GTM_TRIGOUT TRIGOUT[7];
       Ifx_UReg_8Bit reserved_9FE90[12];
       Ifx_GTM_INTOUT INTOUT[7];
       Ifx_UReg_8Bit reserved_9FEB8[12];
       Ifx_GTM_MCSTRIGOUTSEL MCSTRIGOUTSEL;
       Ifx_GTM_MCSINTSTAT MCSINTSTAT;
       Ifx_GTM_MCSINTCLR MCSINTCLR;
       Ifx_GTM_DXINCON DXINCON;
       Ifx_GTM_DATAIN DATAIN[7];
       Ifx_UReg_8Bit reserved_9FEF0[16];
       Ifx_GTM_MSC MSC;
       Ifx_UReg_8Bit reserved_9FFB4[24];
       Ifx_GTM_PSI5OUTSEL PSI5OUTSEL;
       Ifx_GTM_PSI5SOUTSEL PSI5SOUTSEL;
       Ifx_GTM_LCDCDCOUTSEL LCDCDCOUTSEL;
       Ifx_GTM_DTMAUXINSEL DTMAUXINSEL;
       Ifx_GTM_CANOUTSEL0 CANOUTSEL0;
       Ifx_GTM_CANOUTSEL1 CANOUTSEL1;
       Ifx_UReg_8Bit reserved_9FFE4[270364];
       Ifx_GTM_CCM CCM[9];
       Ifx_UReg_8Bit reserved_E3200[3584];
       Ifx_GTM_CDTM CDTM[6];
       Ifx_UReg_8Bit reserved_E5800[10240];
       Ifx_GTM_ATOM ATOM[9];
       Ifx_UReg_8Bit reserved_EC800[14336];
       Ifx_GTM_MCS MCS[7];
       Ifx_UReg_8Bit reserved_F7000[36864];
} Ifx_GTM;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxGtm_reg.h" 2
# 2 ".\\output\\inc/IfxGtm_reg.h" 2
# 30 "bswcdd\\MCS\\MCS.h" 2
# 44 "bswcdd\\MCS\\MCS.h"
# 1 "bswcdd\\MCS\\MCS_MemMap.h" 1
# 45 "bswcdd\\MCS\\MCS.h" 2

extern uint32* MCS_pu32VsiGtmTcalcValue;
extern uint32* MCS_pu32VsiGtmPosSampleTime;
extern uint32* MCS_pu32VsiGtmPosSampleTime2;
extern uint32* MCS_pu32ResGtmSyncPosDelay;
extern uint32* MCS_pu32ResGtmSyncPosDuty;
extern uint32* MCS_pu32ResGtmSyncPosDelay2;
extern uint32* MCS_pu32ResGtmSyncPosDuty2;
extern uint32* MCS_pu32ResGtmPwmExciteDelay;
extern uint32* MCS_pu32ResGtmPwmExciteDuty;


# 1 "bswcdd\\MCS\\MCS_MemMap.h" 1
# 58 "bswcdd\\MCS\\MCS.h" 2


# 1 "bswcdd\\MCS\\MCS_MemMap.h" 1
# 120 "bswcdd\\MCS\\MCS_MemMap.h"
#pragma section ".const" a
# 61 "bswcdd\\MCS\\MCS.h" 2

extern const unsigned int MCS0_CH_INIT_RAM[];


# 1 "bswcdd\\MCS\\MCS_MemMap.h" 1
# 175 "bswcdd\\MCS\\MCS_MemMap.h"
#pragma section
# 66 "bswcdd\\MCS\\MCS.h" 2
# 157 "bswcdd\\MCS\\MCS.h"
# 1 "bswcdd\\MCS\\MCS_MemMap.h" 1
# 90 "bswcdd\\MCS\\MCS_MemMap.h"
#pragma section ".text" ax
# 158 "bswcdd\\MCS\\MCS.h" 2

void MCS_vidVsiGtmMcs0Init(void);
void MCS_vidVsiGtmMcs0LoadCode(void);


# 1 "bswcdd\\MCS\\MCS_MemMap.h" 1
# 137 "bswcdd\\MCS\\MCS_MemMap.h"
#pragma section
# 164 "bswcdd\\MCS\\MCS.h" 2
# 29 "bswcdd\\MCS\\MCS.c" 2


# 1 ".\\output\\inc/IfxGtm_reg.h" 1
# 32 "bswcdd\\MCS\\MCS.c" 2





# 1 "bswcdd\\MCS\\MCS_MemMap.h" 1
# 38 "bswcdd\\MCS\\MCS.c" 2

uint32* MCS_pu32VsiGtmTcalcValue;
uint32* MCS_pu32VsiGtmPosSampleTime;
uint32* MCS_pu32VsiGtmPosSampleTime2;
uint32* MCS_pu32ResGtmPwmExciteDelay;
uint32* MCS_pu32ResGtmPwmExciteDuty;
uint32* MCS_pu32ResGtmSyncPosDelay;
uint32* MCS_pu32ResGtmSyncPosDuty;
uint32* MCS_pu32ResGtmSyncPosDelay2;
uint32* MCS_pu32ResGtmSyncPosDuty2;


# 1 "bswcdd\\MCS\\MCS_MemMap.h" 1
# 51 "bswcdd\\MCS\\MCS.c" 2





# 1 "bswcdd\\MCS\\MCS_MemMap.h" 1
# 90 "bswcdd\\MCS\\MCS_MemMap.h"
#pragma section ".text" ax
# 57 "bswcdd\\MCS\\MCS.c" 2



extern void GtmM_vidInitExcitionInternalLink(void);
# 70 "bswcdd\\MCS\\MCS.c"
void MCS_vidVsiGtmMcs0Init(void)
{
   uint32 *u32LocalPmem = (uint32 *)&(*(unsigned int *)(((uint8 *)&((*(Ifx_GTM*)0xF0100000u))) + (0x38000)));



   MCS_vidVsiGtmMcs0LoadCode();


   MCS_pu32VsiGtmTcalcValue = &u32LocalPmem[0x20 / 4U];
   MCS_pu32ResGtmSyncPosDelay2 = &u32LocalPmem[0x24 / 4U];
   MCS_pu32ResGtmSyncPosDuty2 = &u32LocalPmem[0x28 / 4U];
   MCS_pu32ResGtmSyncPosDelay = &u32LocalPmem[0x2c / 4U];
   MCS_pu32ResGtmSyncPosDuty = &u32LocalPmem[0x30 / 4U];
   MCS_pu32VsiGtmPosSampleTime2 = &u32LocalPmem[0x34 / 4U];
   MCS_pu32VsiGtmPosSampleTime = &u32LocalPmem[0x38 / 4U];

   *MCS_pu32VsiGtmTcalcValue = 410;

   ((*(Ifx_GTM*)0xF0100000u)).TBU.CHEN.U = 0x0000000A;
   ((*(Ifx_GTM*)0xF0100000u)).TIM[1].CH6.CTRL.B.ARU_EN = 0x01;
   ((*(Ifx_GTM*)0xF0100000u)).TIM[1].CH6.CTRL.B.ECNT_RESET = 0x01;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[0].CH5.RDADDR.U = 0x01FE0078;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[0].CH5.CM0.U = 0x00;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[0].CH5.CM1.U = 0x00;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[0].CH5.SR0.U = 0x00;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[0].CH5.SR1.U = 0x00;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[0].AGC.ENDIS_STAT.U = 0x2<<10;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[0].AGC.OUTEN_STAT.U = 0x2<<10;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[0].AGC.GLB_CTRL.U = 0x2<<26;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[0].CH5.CTRL.U = 0x010008E9;

   ((*(Ifx_GTM*)0xF0100000u)).TIM[0].CH4.CTRL.B.ARU_EN = 0x01;
   ((*(Ifx_GTM*)0xF0100000u)).TIM[0].CH4.CTRL.B.ECNT_RESET = 0x01;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[1].CH5.RDADDR.U = 0x01FE0079;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[1].CH5.CM0.U = 0x00;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[1].CH5.CM1.U = 0x00;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[1].CH5.SR0.U = 0x00;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[1].CH5.SR1.U = 0x00;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[1].AGC.ENDIS_STAT.U = 0x2<<10;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[1].AGC.OUTEN_STAT.U = 0x2<<10;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[1].AGC.GLB_CTRL.U = 0x2<<26;
   ((*(Ifx_GTM*)0xF0100000u)).ATOM[1].CH5.CTRL.U = 0x010008E9;

   GtmM_vidInitExcitionInternalLink();
}
# 126 "bswcdd\\MCS\\MCS.c"
void MCS_vidVsiGtmMcs0LoadCode(void)
{
   uint16 u16LocalCount;
   uint32 *u32LocalPmem = (uint32 *)(&(*(unsigned int *)(((uint8 *)&((*(Ifx_GTM*)0xF0100000u))) + (0x38000))));


   for (u16LocalCount = (uint16)0;
        u16LocalCount < (uint16)(100);
        u16LocalCount += 1)
   {
      u32LocalPmem[u16LocalCount] = MCS0_CH_INIT_RAM[u16LocalCount];
   }
}


# 1 "bswcdd\\MCS\\MCS_MemMap.h" 1
# 137 "bswcdd\\MCS\\MCS_MemMap.h"
#pragma section
# 142 "bswcdd\\MCS\\MCS.c" 2
