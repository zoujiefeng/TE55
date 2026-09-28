# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
# 44 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
# 1 ".\\output\\inc/IfxDmu_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDmu_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDmu_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDmu_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDmu_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDmu_regdef.h" 2
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDmu_regdef.h"
typedef struct _Ifx_DMU_HF_ACCEN0_Bits
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
} Ifx_DMU_HF_ACCEN0_Bits;


typedef struct _Ifx_DMU_HF_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_DMU_HF_ACCEN1_Bits;


typedef struct _Ifx_DMU_HF_CCONTROL_Bits
{
    Ifx_UReg_32Bit CRANKING:2;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_DMU_HF_CCONTROL_Bits;


typedef struct _Ifx_DMU_HF_CLRE_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit CSQER:1;
    Ifx_UReg_32Bit CPROER:1;
    Ifx_UReg_32Bit CPVER:1;
    Ifx_UReg_32Bit CEVER:1;
    Ifx_UReg_32Bit CADER:1;
    Ifx_UReg_32Bit reserved_6:26;
} Ifx_DMU_HF_CLRE_Bits;


typedef struct _Ifx_DMU_HF_CONFIRM0_Bits
{
    Ifx_UReg_32Bit PROINBMHD0O:2;
    Ifx_UReg_32Bit PROINBMHD1O:2;
    Ifx_UReg_32Bit PROINBMHD2O:2;
    Ifx_UReg_32Bit PROINBMHD3O:2;
    Ifx_UReg_32Bit PROINSSW:2;
    Ifx_UReg_32Bit PROINUSER:2;
    Ifx_UReg_32Bit PROINTEST:2;
    Ifx_UReg_32Bit PROINHSMCFG:2;
    Ifx_UReg_32Bit PROINBMHD0C:2;
    Ifx_UReg_32Bit PROINBMHD1C:2;
    Ifx_UReg_32Bit PROINBMHD2C:2;
    Ifx_UReg_32Bit PROINBMHD3C:2;
    Ifx_UReg_32Bit PROINREDSEC:2;
    Ifx_UReg_32Bit reserved_26:4;
    Ifx_UReg_32Bit PROINSRT:2;
} Ifx_DMU_HF_CONFIRM0_Bits;


typedef struct _Ifx_DMU_HF_CONFIRM1_Bits
{
    Ifx_UReg_32Bit PROINPO:2;
    Ifx_UReg_32Bit PROINDO:2;
    Ifx_UReg_32Bit PROINDBGO:2;
    Ifx_UReg_32Bit PROINHSMO:2;
    Ifx_UReg_32Bit PROINHSMCOTP0O:2;
    Ifx_UReg_32Bit PROINHSMCOTP1O:2;
    Ifx_UReg_32Bit PROINECO:2;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit PROINPC:2;
    Ifx_UReg_32Bit PROINDC:2;
    Ifx_UReg_32Bit PROINDBGC:2;
    Ifx_UReg_32Bit PROINHSMC:2;
    Ifx_UReg_32Bit PROINHSMCOTP0C:2;
    Ifx_UReg_32Bit PROINHSMCOTP1C:2;
    Ifx_UReg_32Bit PROINECC:2;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_DMU_HF_CONFIRM1_Bits;


typedef struct _Ifx_DMU_HF_CONFIRM2_Bits
{
    Ifx_UReg_32Bit PROINOTP0O:2;
    Ifx_UReg_32Bit PROINOTP1O:2;
    Ifx_UReg_32Bit PROINOTP2O:2;
    Ifx_UReg_32Bit PROINOTP3O:2;
    Ifx_UReg_32Bit PROINOTP4O:2;
    Ifx_UReg_32Bit PROINOTP5O:2;
    Ifx_UReg_32Bit PROINOTP6O:2;
    Ifx_UReg_32Bit PROINOTP7O:2;
    Ifx_UReg_32Bit PROINOTP0C:2;
    Ifx_UReg_32Bit PROINOTP1C:2;
    Ifx_UReg_32Bit PROINOTP2C:2;
    Ifx_UReg_32Bit PROINOTP3C:2;
    Ifx_UReg_32Bit PROINOTP4C:2;
    Ifx_UReg_32Bit PROINOTP5C:2;
    Ifx_UReg_32Bit PROINOTP6C:2;
    Ifx_UReg_32Bit PROINOTP7C:2;
} Ifx_DMU_HF_CONFIRM2_Bits;


typedef struct _Ifx_DMU_HF_CONTROL_Bits
{
    Ifx_UReg_32Bit reserved_0:3;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit FSIENPE:2;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit WSERRINJ:1;
    Ifx_UReg_32Bit DDFP:1;
    Ifx_UReg_32Bit DDFD:1;
    Ifx_UReg_32Bit reserved_10:6;
    Ifx_UReg_32Bit CPROG:1;
    Ifx_UReg_32Bit CERASE:1;
    Ifx_UReg_32Bit reserved_18:1;
    Ifx_UReg_32Bit reserved_19:13;
} Ifx_DMU_HF_CONTROL_Bits;


typedef struct _Ifx_DMU_HF_DWAIT_Bits
{
    Ifx_UReg_32Bit RFLASH:8;
    Ifx_UReg_32Bit reserved_8:8;
    Ifx_UReg_32Bit RECC:3;
    Ifx_UReg_32Bit reserved_19:13;
} Ifx_DMU_HF_DWAIT_Bits;


typedef struct _Ifx_DMU_HF_ECCC_Bits
{
    Ifx_UReg_32Bit CLR:2;
    Ifx_UReg_32Bit reserved_2:26;
    Ifx_UReg_32Bit ECCCORDIS:2;
    Ifx_UReg_32Bit TRAPDIS:2;
} Ifx_DMU_HF_ECCC_Bits;


typedef struct _Ifx_DMU_HF_ECCR_Bits
{
    Ifx_UReg_32Bit RCODE:22;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_DMU_HF_ECCR_Bits;


typedef struct _Ifx_DMU_HF_ECCS_Bits
{
    Ifx_UReg_32Bit ERR1:1;
    Ifx_UReg_32Bit ERR2:1;
    Ifx_UReg_32Bit ERR3:1;
    Ifx_UReg_32Bit ERRM:1;
    Ifx_UReg_32Bit reserved_4:3;
    Ifx_UReg_32Bit ERRANY:1;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit BLANKA:1;
    Ifx_UReg_32Bit reserved_10:6;
    Ifx_UReg_32Bit AER1:1;
    Ifx_UReg_32Bit AER2:1;
    Ifx_UReg_32Bit AER3:1;
    Ifx_UReg_32Bit AERM:1;
    Ifx_UReg_32Bit reserved_20:3;
    Ifx_UReg_32Bit AERANY:1;
    Ifx_UReg_32Bit reserved_24:1;
    Ifx_UReg_32Bit ABLANKA:1;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_DMU_HF_ECCS_Bits;


typedef struct _Ifx_DMU_HF_ECCW_Bits
{
    Ifx_UReg_32Bit WCODE:22;
    Ifx_UReg_32Bit reserved_22:6;
    Ifx_UReg_32Bit PECENCDIS:2;
    Ifx_UReg_32Bit DECENCDIS:2;
} Ifx_DMU_HF_ECCW_Bits;


typedef struct _Ifx_DMU_HF_EER_Bits
{
    Ifx_UReg_32Bit OPERM:1;
    Ifx_UReg_32Bit SQERM:1;
    Ifx_UReg_32Bit PROERM:1;
    Ifx_UReg_32Bit PVERM:1;
    Ifx_UReg_32Bit EVERM:1;
    Ifx_UReg_32Bit reserved_5:26;
    Ifx_UReg_32Bit EOBM:1;
} Ifx_DMU_HF_EER_Bits;


typedef struct _Ifx_DMU_HF_ERRSR_Bits
{
    Ifx_UReg_32Bit OPER:1;
    Ifx_UReg_32Bit SQER:1;
    Ifx_UReg_32Bit PROER:1;
    Ifx_UReg_32Bit PVER:1;
    Ifx_UReg_32Bit EVER:1;
    Ifx_UReg_32Bit ADER:1;
    Ifx_UReg_32Bit ORIER:1;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_DMU_HF_ERRSR_Bits;


typedef struct _Ifx_DMU_HF_ID_Bits
{
    Ifx_UReg_32Bit MOD_REV:8;
    Ifx_UReg_32Bit MOD_TYPE:8;
    Ifx_UReg_32Bit MOD_NUMBER:8;
    Ifx_UReg_32Bit FLASH_REV:8;
} Ifx_DMU_HF_ID_Bits;


typedef struct _Ifx_DMU_HF_MARGIN_Bits
{
    Ifx_UReg_32Bit SELD0:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit HMARGIN:1;
    Ifx_UReg_32Bit reserved_9:23;
} Ifx_DMU_HF_MARGIN_Bits;


typedef struct _Ifx_DMU_HF_OPERATION_Bits
{
    Ifx_UReg_32Bit PROG:1;
    Ifx_UReg_32Bit ERASE:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit reserved_3:5;
    Ifx_UReg_32Bit reserved_8:3;
    Ifx_UReg_32Bit reserved_11:21;
} Ifx_DMU_HF_OPERATION_Bits;


typedef struct _Ifx_DMU_HF_PCONTROL_Bits
{
    Ifx_UReg_32Bit SLEEP:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit IDLE:2;
    Ifx_UReg_32Bit DEMAND:2;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit ESLDIS:2;
    Ifx_UReg_32Bit reserved_18:12;
    Ifx_UReg_32Bit PR5V:2;
} Ifx_DMU_HF_PCONTROL_Bits;


typedef struct _Ifx_DMU_HF_PROCONDBG_Bits
{
    Ifx_UReg_32Bit OCDSDIS:1;
    Ifx_UReg_32Bit DBGIFLCK:1;
    Ifx_UReg_32Bit EDM:2;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit TIC:4;
    Ifx_UReg_32Bit reserved_12:4;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_DMU_HF_PROCONDBG_Bits;


typedef struct _Ifx_DMU_HF_PROCONDF_Bits
{
    Ifx_UReg_32Bit L:1;
    Ifx_UReg_32Bit reserved_1:2;
    Ifx_UReg_32Bit HYSEN:1;
    Ifx_UReg_32Bit HYSCTL:2;
    Ifx_UReg_32Bit AMPCTL:2;
    Ifx_UReg_32Bit OSCCFG:1;
    Ifx_UReg_32Bit MODE:2;
    Ifx_UReg_32Bit APREN:1;
    Ifx_UReg_32Bit CAP0EN:1;
    Ifx_UReg_32Bit CAP1EN:1;
    Ifx_UReg_32Bit CAP2EN:1;
    Ifx_UReg_32Bit CAP3EN:1;
    Ifx_UReg_32Bit ESR0CNT:12;
    Ifx_UReg_32Bit reserved_28:3;
    Ifx_UReg_32Bit RPRO:1;
} Ifx_DMU_HF_PROCONDF_Bits;


typedef struct _Ifx_DMU_HF_PROCONPF_Bits
{
    Ifx_UReg_32Bit reserved_0:31;
    Ifx_UReg_32Bit RPRO:1;
} Ifx_DMU_HF_PROCONPF_Bits;


typedef struct _Ifx_DMU_HF_PROCONRAM_Bits
{
    Ifx_UReg_32Bit RAMIN:2;
    Ifx_UReg_32Bit reserved_2:14;
    Ifx_UReg_32Bit RAMINSEL:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit LMUINSEL:7;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_DMU_HF_PROCONRAM_Bits;


typedef struct _Ifx_DMU_HF_PROCONTP_Bits
{
    Ifx_UReg_32Bit TP:1;
    Ifx_UReg_32Bit reserved_1:7;
    Ifx_UReg_32Bit BML:2;
    Ifx_UReg_32Bit reserved_10:6;
    Ifx_UReg_32Bit SWAPEN:2;
    Ifx_UReg_32Bit CPU0DDIS:1;
    Ifx_UReg_32Bit CPU1DDIS:1;
    Ifx_UReg_32Bit CPU2DDIS:1;
    Ifx_UReg_32Bit CPU3DDIS:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_DMU_HF_PROCONTP_Bits;


typedef struct _Ifx_DMU_HF_PROCONUSR_Bits
{
    Ifx_UReg_32Bit MODE:2;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_DMU_HF_PROCONUSR_Bits;


typedef struct _Ifx_DMU_HF_PROTECT_Bits
{
    Ifx_UReg_32Bit PRODISP:1;
    Ifx_UReg_32Bit PRODISD:1;
    Ifx_UReg_32Bit PRODISDBG:1;
    Ifx_UReg_32Bit PRODISEC:1;
    Ifx_UReg_32Bit PRODISBMHD:1;
    Ifx_UReg_32Bit PRODISSWAP:1;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit PRODISP0:1;
    Ifx_UReg_32Bit PRODISP1:1;
    Ifx_UReg_32Bit PRODISP2:1;
    Ifx_UReg_32Bit PRODISP3:1;
    Ifx_UReg_32Bit reserved_12:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:10;
    Ifx_UReg_32Bit SRT:1;
    Ifx_UReg_32Bit reserved_25:7;
} Ifx_DMU_HF_PROTECT_Bits;


typedef struct _Ifx_DMU_HF_PSTATUS_Bits
{
    Ifx_UReg_32Bit SLEEP:1;
    Ifx_UReg_32Bit IDLE:1;
    Ifx_UReg_32Bit DEMAND:1;
    Ifx_UReg_32Bit reserved_3:29;
} Ifx_DMU_HF_PSTATUS_Bits;


typedef struct _Ifx_DMU_HF_PWAIT_Bits
{
    Ifx_UReg_32Bit RFLASH:6;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit RECC:3;
    Ifx_UReg_32Bit reserved_11:5;
    Ifx_UReg_32Bit CFLASH:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit CECC:3;
    Ifx_UReg_32Bit reserved_27:5;
} Ifx_DMU_HF_PWAIT_Bits;


typedef struct _Ifx_DMU_HF_STATUS_Bits
{
    Ifx_UReg_32Bit D0BUSY:1;
    Ifx_UReg_32Bit D1BUSY:1;
    Ifx_UReg_32Bit P0BUSY:1;
    Ifx_UReg_32Bit P1BUSY:1;
    Ifx_UReg_32Bit P2BUSY:1;
    Ifx_UReg_32Bit P3BUSY:1;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit reserved_8:8;
    Ifx_UReg_32Bit reserved_16:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit reserved_18:1;
    Ifx_UReg_32Bit reserved_19:1;
    Ifx_UReg_32Bit DFPAGE:1;
    Ifx_UReg_32Bit PFPAGE:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit reserved_24:2;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_DMU_HF_STATUS_Bits;


typedef struct _Ifx_DMU_HF_SUSPEND_Bits
{
    Ifx_UReg_32Bit REQ:1;
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_2:14;
    Ifx_UReg_32Bit SPND:1;
    Ifx_UReg_32Bit ERR:1;
    Ifx_UReg_32Bit reserved_18:14;
} Ifx_DMU_HF_SUSPEND_Bits;


typedef struct _Ifx_DMU_HP_ECPRIO_P0_Bits
{
    Ifx_UReg_32Bit S0L:1;
    Ifx_UReg_32Bit S1L:1;
    Ifx_UReg_32Bit S2L:1;
    Ifx_UReg_32Bit S3L:1;
    Ifx_UReg_32Bit S4L:1;
    Ifx_UReg_32Bit S5L:1;
    Ifx_UReg_32Bit S6L:1;
    Ifx_UReg_32Bit S7L:1;
    Ifx_UReg_32Bit S8L:1;
    Ifx_UReg_32Bit S9L:1;
    Ifx_UReg_32Bit S10L:1;
    Ifx_UReg_32Bit S11L:1;
    Ifx_UReg_32Bit S12L:1;
    Ifx_UReg_32Bit S13L:1;
    Ifx_UReg_32Bit S14L:1;
    Ifx_UReg_32Bit S15L:1;
    Ifx_UReg_32Bit S16L:1;
    Ifx_UReg_32Bit S17L:1;
    Ifx_UReg_32Bit S18L:1;
    Ifx_UReg_32Bit S19L:1;
    Ifx_UReg_32Bit S20L:1;
    Ifx_UReg_32Bit S21L:1;
    Ifx_UReg_32Bit S22L:1;
    Ifx_UReg_32Bit S23L:1;
    Ifx_UReg_32Bit S24L:1;
    Ifx_UReg_32Bit S25L:1;
    Ifx_UReg_32Bit S26L:1;
    Ifx_UReg_32Bit S27L:1;
    Ifx_UReg_32Bit S28L:1;
    Ifx_UReg_32Bit S29L:1;
    Ifx_UReg_32Bit S30L:1;
    Ifx_UReg_32Bit S31L:1;
} Ifx_DMU_HP_ECPRIO_P0_Bits;


typedef struct _Ifx_DMU_HP_ECPRIO_P1_Bits
{
    Ifx_UReg_32Bit S32L:1;
    Ifx_UReg_32Bit S33L:1;
    Ifx_UReg_32Bit S34L:1;
    Ifx_UReg_32Bit S35L:1;
    Ifx_UReg_32Bit S36L:1;
    Ifx_UReg_32Bit S37L:1;
    Ifx_UReg_32Bit S38L:1;
    Ifx_UReg_32Bit S39L:1;
    Ifx_UReg_32Bit S40L:1;
    Ifx_UReg_32Bit S41L:1;
    Ifx_UReg_32Bit S42L:1;
    Ifx_UReg_32Bit S43L:1;
    Ifx_UReg_32Bit S44L:1;
    Ifx_UReg_32Bit S45L:1;
    Ifx_UReg_32Bit S46L:1;
    Ifx_UReg_32Bit S47L:1;
    Ifx_UReg_32Bit S48L:1;
    Ifx_UReg_32Bit S49L:1;
    Ifx_UReg_32Bit S50L:1;
    Ifx_UReg_32Bit S51L:1;
    Ifx_UReg_32Bit S52L:1;
    Ifx_UReg_32Bit S53L:1;
    Ifx_UReg_32Bit S54L:1;
    Ifx_UReg_32Bit S55L:1;
    Ifx_UReg_32Bit S56L:1;
    Ifx_UReg_32Bit S57L:1;
    Ifx_UReg_32Bit S58L:1;
    Ifx_UReg_32Bit S59L:1;
    Ifx_UReg_32Bit S60L:1;
    Ifx_UReg_32Bit S61L:1;
    Ifx_UReg_32Bit S62L:1;
    Ifx_UReg_32Bit S63L:1;
} Ifx_DMU_HP_ECPRIO_P1_Bits;


typedef struct _Ifx_DMU_HP_ECPRIO_P2_Bits
{
    Ifx_UReg_32Bit S64L:1;
    Ifx_UReg_32Bit S65L:1;
    Ifx_UReg_32Bit S66L:1;
    Ifx_UReg_32Bit S67L:1;
    Ifx_UReg_32Bit S68L:1;
    Ifx_UReg_32Bit S69L:1;
    Ifx_UReg_32Bit S70L:1;
    Ifx_UReg_32Bit S71L:1;
    Ifx_UReg_32Bit S72L:1;
    Ifx_UReg_32Bit S73L:1;
    Ifx_UReg_32Bit S74L:1;
    Ifx_UReg_32Bit S75L:1;
    Ifx_UReg_32Bit S76L:1;
    Ifx_UReg_32Bit S77L:1;
    Ifx_UReg_32Bit S78L:1;
    Ifx_UReg_32Bit S79L:1;
    Ifx_UReg_32Bit S80L:1;
    Ifx_UReg_32Bit S81L:1;
    Ifx_UReg_32Bit S82L:1;
    Ifx_UReg_32Bit S83L:1;
    Ifx_UReg_32Bit S84L:1;
    Ifx_UReg_32Bit S85L:1;
    Ifx_UReg_32Bit S86L:1;
    Ifx_UReg_32Bit S87L:1;
    Ifx_UReg_32Bit S88L:1;
    Ifx_UReg_32Bit S89L:1;
    Ifx_UReg_32Bit S90L:1;
    Ifx_UReg_32Bit S91L:1;
    Ifx_UReg_32Bit S92L:1;
    Ifx_UReg_32Bit S93L:1;
    Ifx_UReg_32Bit S94L:1;
    Ifx_UReg_32Bit S95L:1;
} Ifx_DMU_HP_ECPRIO_P2_Bits;


typedef struct _Ifx_DMU_HP_ECPRIO_P3_Bits
{
    Ifx_UReg_32Bit S96L:1;
    Ifx_UReg_32Bit S97L:1;
    Ifx_UReg_32Bit S98L:1;
    Ifx_UReg_32Bit S99L:1;
    Ifx_UReg_32Bit S100L:1;
    Ifx_UReg_32Bit S101L:1;
    Ifx_UReg_32Bit S102L:1;
    Ifx_UReg_32Bit S103L:1;
    Ifx_UReg_32Bit S104L:1;
    Ifx_UReg_32Bit S105L:1;
    Ifx_UReg_32Bit S106L:1;
    Ifx_UReg_32Bit S107L:1;
    Ifx_UReg_32Bit S108L:1;
    Ifx_UReg_32Bit S109L:1;
    Ifx_UReg_32Bit S110L:1;
    Ifx_UReg_32Bit S111L:1;
    Ifx_UReg_32Bit S112L:1;
    Ifx_UReg_32Bit S113L:1;
    Ifx_UReg_32Bit S114L:1;
    Ifx_UReg_32Bit S115L:1;
    Ifx_UReg_32Bit S116L:1;
    Ifx_UReg_32Bit S117L:1;
    Ifx_UReg_32Bit S118L:1;
    Ifx_UReg_32Bit S119L:1;
    Ifx_UReg_32Bit S120L:1;
    Ifx_UReg_32Bit S121L:1;
    Ifx_UReg_32Bit S122L:1;
    Ifx_UReg_32Bit S123L:1;
    Ifx_UReg_32Bit S124L:1;
    Ifx_UReg_32Bit S125L:1;
    Ifx_UReg_32Bit S126L:1;
    Ifx_UReg_32Bit S127L:1;
} Ifx_DMU_HP_ECPRIO_P3_Bits;


typedef struct _Ifx_DMU_HP_ECPRIO_P4_Bits
{
    Ifx_UReg_32Bit S128L:1;
    Ifx_UReg_32Bit S129L:1;
    Ifx_UReg_32Bit S130L:1;
    Ifx_UReg_32Bit S131L:1;
    Ifx_UReg_32Bit S132L:1;
    Ifx_UReg_32Bit S133L:1;
    Ifx_UReg_32Bit S134L:1;
    Ifx_UReg_32Bit S135L:1;
    Ifx_UReg_32Bit S136L:1;
    Ifx_UReg_32Bit S137L:1;
    Ifx_UReg_32Bit S138L:1;
    Ifx_UReg_32Bit S139L:1;
    Ifx_UReg_32Bit S140L:1;
    Ifx_UReg_32Bit S141L:1;
    Ifx_UReg_32Bit S142L:1;
    Ifx_UReg_32Bit S143L:1;
    Ifx_UReg_32Bit S144L:1;
    Ifx_UReg_32Bit S145L:1;
    Ifx_UReg_32Bit S146L:1;
    Ifx_UReg_32Bit S147L:1;
    Ifx_UReg_32Bit S148L:1;
    Ifx_UReg_32Bit S149L:1;
    Ifx_UReg_32Bit S150L:1;
    Ifx_UReg_32Bit S151L:1;
    Ifx_UReg_32Bit S152L:1;
    Ifx_UReg_32Bit S153L:1;
    Ifx_UReg_32Bit S154L:1;
    Ifx_UReg_32Bit S155L:1;
    Ifx_UReg_32Bit S156L:1;
    Ifx_UReg_32Bit S157L:1;
    Ifx_UReg_32Bit S158L:1;
    Ifx_UReg_32Bit S159L:1;
} Ifx_DMU_HP_ECPRIO_P4_Bits;


typedef struct _Ifx_DMU_HP_ECPRIO_P5_Bits
{
    Ifx_UReg_32Bit S160L:1;
    Ifx_UReg_32Bit S161L:1;
    Ifx_UReg_32Bit S162L:1;
    Ifx_UReg_32Bit S163L:1;
    Ifx_UReg_32Bit S164L:1;
    Ifx_UReg_32Bit S165L:1;
    Ifx_UReg_32Bit S166L:1;
    Ifx_UReg_32Bit S167L:1;
    Ifx_UReg_32Bit S168L:1;
    Ifx_UReg_32Bit S169L:1;
    Ifx_UReg_32Bit S170L:1;
    Ifx_UReg_32Bit S171L:1;
    Ifx_UReg_32Bit S172L:1;
    Ifx_UReg_32Bit S173L:1;
    Ifx_UReg_32Bit S174L:1;
    Ifx_UReg_32Bit S175L:1;
    Ifx_UReg_32Bit S176L:1;
    Ifx_UReg_32Bit S177L:1;
    Ifx_UReg_32Bit S178L:1;
    Ifx_UReg_32Bit S179L:1;
    Ifx_UReg_32Bit S180L:1;
    Ifx_UReg_32Bit S181L:1;
    Ifx_UReg_32Bit S182L:1;
    Ifx_UReg_32Bit S183L:1;
    Ifx_UReg_32Bit S184L:1;
    Ifx_UReg_32Bit S185L:1;
    Ifx_UReg_32Bit S186L:1;
    Ifx_UReg_32Bit S187L:1;
    Ifx_UReg_32Bit S188L:1;
    Ifx_UReg_32Bit S189L:1;
    Ifx_UReg_32Bit S190L:1;
    Ifx_UReg_32Bit S191L:1;
} Ifx_DMU_HP_ECPRIO_P5_Bits;


typedef struct _Ifx_DMU_HP_PROCON_OTP0_Bits
{
    Ifx_UReg_32Bit S0ROM:1;
    Ifx_UReg_32Bit S1ROM:1;
    Ifx_UReg_32Bit S2ROM:1;
    Ifx_UReg_32Bit S3ROM:1;
    Ifx_UReg_32Bit S4ROM:1;
    Ifx_UReg_32Bit S5ROM:1;
    Ifx_UReg_32Bit S6ROM:1;
    Ifx_UReg_32Bit S7ROM:1;
    Ifx_UReg_32Bit S8ROM:1;
    Ifx_UReg_32Bit S9ROM:1;
    Ifx_UReg_32Bit S10ROM:1;
    Ifx_UReg_32Bit S11ROM:1;
    Ifx_UReg_32Bit S12ROM:1;
    Ifx_UReg_32Bit S13ROM:1;
    Ifx_UReg_32Bit S14ROM:1;
    Ifx_UReg_32Bit S15ROM:1;
    Ifx_UReg_32Bit S16ROM:1;
    Ifx_UReg_32Bit S17ROM:1;
    Ifx_UReg_32Bit S18ROM:1;
    Ifx_UReg_32Bit S19ROM:1;
    Ifx_UReg_32Bit S20ROM:1;
    Ifx_UReg_32Bit S21ROM:1;
    Ifx_UReg_32Bit S22ROM:1;
    Ifx_UReg_32Bit S23ROM:1;
    Ifx_UReg_32Bit S24ROM:1;
    Ifx_UReg_32Bit S25ROM:1;
    Ifx_UReg_32Bit S26ROM:1;
    Ifx_UReg_32Bit S27ROM:1;
    Ifx_UReg_32Bit S28ROM:1;
    Ifx_UReg_32Bit S29ROM:1;
    Ifx_UReg_32Bit S30ROM:1;
    Ifx_UReg_32Bit S31ROM:1;
} Ifx_DMU_HP_PROCON_OTP0_Bits;


typedef struct _Ifx_DMU_HP_PROCON_OTP1_Bits
{
    Ifx_UReg_32Bit S32ROM:1;
    Ifx_UReg_32Bit S33ROM:1;
    Ifx_UReg_32Bit S34ROM:1;
    Ifx_UReg_32Bit S35ROM:1;
    Ifx_UReg_32Bit S36ROM:1;
    Ifx_UReg_32Bit S37ROM:1;
    Ifx_UReg_32Bit S38ROM:1;
    Ifx_UReg_32Bit S39ROM:1;
    Ifx_UReg_32Bit S40ROM:1;
    Ifx_UReg_32Bit S41ROM:1;
    Ifx_UReg_32Bit S42ROM:1;
    Ifx_UReg_32Bit S43ROM:1;
    Ifx_UReg_32Bit S44ROM:1;
    Ifx_UReg_32Bit S45ROM:1;
    Ifx_UReg_32Bit S46ROM:1;
    Ifx_UReg_32Bit S47ROM:1;
    Ifx_UReg_32Bit S48ROM:1;
    Ifx_UReg_32Bit S49ROM:1;
    Ifx_UReg_32Bit S50ROM:1;
    Ifx_UReg_32Bit S51ROM:1;
    Ifx_UReg_32Bit S52ROM:1;
    Ifx_UReg_32Bit S53ROM:1;
    Ifx_UReg_32Bit S54ROM:1;
    Ifx_UReg_32Bit S55ROM:1;
    Ifx_UReg_32Bit S56ROM:1;
    Ifx_UReg_32Bit S57ROM:1;
    Ifx_UReg_32Bit S58ROM:1;
    Ifx_UReg_32Bit S59ROM:1;
    Ifx_UReg_32Bit S60ROM:1;
    Ifx_UReg_32Bit S61ROM:1;
    Ifx_UReg_32Bit S62ROM:1;
    Ifx_UReg_32Bit S63ROM:1;
} Ifx_DMU_HP_PROCON_OTP1_Bits;


typedef struct _Ifx_DMU_HP_PROCON_OTP2_Bits
{
    Ifx_UReg_32Bit S64ROM:1;
    Ifx_UReg_32Bit S65ROM:1;
    Ifx_UReg_32Bit S66ROM:1;
    Ifx_UReg_32Bit S67ROM:1;
    Ifx_UReg_32Bit S68ROM:1;
    Ifx_UReg_32Bit S69ROM:1;
    Ifx_UReg_32Bit S70ROM:1;
    Ifx_UReg_32Bit S71ROM:1;
    Ifx_UReg_32Bit S72ROM:1;
    Ifx_UReg_32Bit S73ROM:1;
    Ifx_UReg_32Bit S74ROM:1;
    Ifx_UReg_32Bit S75ROM:1;
    Ifx_UReg_32Bit S76ROM:1;
    Ifx_UReg_32Bit S77ROM:1;
    Ifx_UReg_32Bit S78ROM:1;
    Ifx_UReg_32Bit S79ROM:1;
    Ifx_UReg_32Bit S80ROM:1;
    Ifx_UReg_32Bit S81ROM:1;
    Ifx_UReg_32Bit S82ROM:1;
    Ifx_UReg_32Bit S83ROM:1;
    Ifx_UReg_32Bit S84ROM:1;
    Ifx_UReg_32Bit S85ROM:1;
    Ifx_UReg_32Bit S86ROM:1;
    Ifx_UReg_32Bit S87ROM:1;
    Ifx_UReg_32Bit S88ROM:1;
    Ifx_UReg_32Bit S89ROM:1;
    Ifx_UReg_32Bit S90ROM:1;
    Ifx_UReg_32Bit S91ROM:1;
    Ifx_UReg_32Bit S92ROM:1;
    Ifx_UReg_32Bit S93ROM:1;
    Ifx_UReg_32Bit S94ROM:1;
    Ifx_UReg_32Bit S95ROM:1;
} Ifx_DMU_HP_PROCON_OTP2_Bits;


typedef struct _Ifx_DMU_HP_PROCON_OTP3_Bits
{
    Ifx_UReg_32Bit S96ROM:1;
    Ifx_UReg_32Bit S97ROM:1;
    Ifx_UReg_32Bit S98ROM:1;
    Ifx_UReg_32Bit S99ROM:1;
    Ifx_UReg_32Bit S100ROM:1;
    Ifx_UReg_32Bit S101ROM:1;
    Ifx_UReg_32Bit S102ROM:1;
    Ifx_UReg_32Bit S103ROM:1;
    Ifx_UReg_32Bit S104ROM:1;
    Ifx_UReg_32Bit S105ROM:1;
    Ifx_UReg_32Bit S106ROM:1;
    Ifx_UReg_32Bit S107ROM:1;
    Ifx_UReg_32Bit S108ROM:1;
    Ifx_UReg_32Bit S109ROM:1;
    Ifx_UReg_32Bit S110ROM:1;
    Ifx_UReg_32Bit S111ROM:1;
    Ifx_UReg_32Bit S112ROM:1;
    Ifx_UReg_32Bit S113ROM:1;
    Ifx_UReg_32Bit S114ROM:1;
    Ifx_UReg_32Bit S115ROM:1;
    Ifx_UReg_32Bit S116ROM:1;
    Ifx_UReg_32Bit S117ROM:1;
    Ifx_UReg_32Bit S118ROM:1;
    Ifx_UReg_32Bit S119ROM:1;
    Ifx_UReg_32Bit S120ROM:1;
    Ifx_UReg_32Bit S121ROM:1;
    Ifx_UReg_32Bit S122ROM:1;
    Ifx_UReg_32Bit S123ROM:1;
    Ifx_UReg_32Bit S124ROM:1;
    Ifx_UReg_32Bit S125ROM:1;
    Ifx_UReg_32Bit S126ROM:1;
    Ifx_UReg_32Bit S127ROM:1;
} Ifx_DMU_HP_PROCON_OTP3_Bits;


typedef struct _Ifx_DMU_HP_PROCON_OTP4_Bits
{
    Ifx_UReg_32Bit S128ROM:1;
    Ifx_UReg_32Bit S129ROM:1;
    Ifx_UReg_32Bit S130ROM:1;
    Ifx_UReg_32Bit S131ROM:1;
    Ifx_UReg_32Bit S132ROM:1;
    Ifx_UReg_32Bit S133ROM:1;
    Ifx_UReg_32Bit S134ROM:1;
    Ifx_UReg_32Bit S135ROM:1;
    Ifx_UReg_32Bit S136ROM:1;
    Ifx_UReg_32Bit S137ROM:1;
    Ifx_UReg_32Bit S138ROM:1;
    Ifx_UReg_32Bit S139ROM:1;
    Ifx_UReg_32Bit S140ROM:1;
    Ifx_UReg_32Bit S141ROM:1;
    Ifx_UReg_32Bit S142ROM:1;
    Ifx_UReg_32Bit S143ROM:1;
    Ifx_UReg_32Bit S144ROM:1;
    Ifx_UReg_32Bit S145ROM:1;
    Ifx_UReg_32Bit S146ROM:1;
    Ifx_UReg_32Bit S147ROM:1;
    Ifx_UReg_32Bit S148ROM:1;
    Ifx_UReg_32Bit S149ROM:1;
    Ifx_UReg_32Bit S150ROM:1;
    Ifx_UReg_32Bit S151ROM:1;
    Ifx_UReg_32Bit S152ROM:1;
    Ifx_UReg_32Bit S153ROM:1;
    Ifx_UReg_32Bit S154ROM:1;
    Ifx_UReg_32Bit S155ROM:1;
    Ifx_UReg_32Bit S156ROM:1;
    Ifx_UReg_32Bit S157ROM:1;
    Ifx_UReg_32Bit S158ROM:1;
    Ifx_UReg_32Bit S159ROM:1;
} Ifx_DMU_HP_PROCON_OTP4_Bits;


typedef struct _Ifx_DMU_HP_PROCON_OTP5_Bits
{
    Ifx_UReg_32Bit S160ROM:1;
    Ifx_UReg_32Bit S161ROM:1;
    Ifx_UReg_32Bit S162ROM:1;
    Ifx_UReg_32Bit S163ROM:1;
    Ifx_UReg_32Bit S164ROM:1;
    Ifx_UReg_32Bit S165ROM:1;
    Ifx_UReg_32Bit S166ROM:1;
    Ifx_UReg_32Bit S167ROM:1;
    Ifx_UReg_32Bit S168ROM:1;
    Ifx_UReg_32Bit S169ROM:1;
    Ifx_UReg_32Bit S170ROM:1;
    Ifx_UReg_32Bit S171ROM:1;
    Ifx_UReg_32Bit S172ROM:1;
    Ifx_UReg_32Bit S173ROM:1;
    Ifx_UReg_32Bit S174ROM:1;
    Ifx_UReg_32Bit S175ROM:1;
    Ifx_UReg_32Bit S176ROM:1;
    Ifx_UReg_32Bit S177ROM:1;
    Ifx_UReg_32Bit S178ROM:1;
    Ifx_UReg_32Bit S179ROM:1;
    Ifx_UReg_32Bit S180ROM:1;
    Ifx_UReg_32Bit S181ROM:1;
    Ifx_UReg_32Bit S182ROM:1;
    Ifx_UReg_32Bit S183ROM:1;
    Ifx_UReg_32Bit S184ROM:1;
    Ifx_UReg_32Bit S185ROM:1;
    Ifx_UReg_32Bit S186ROM:1;
    Ifx_UReg_32Bit S187ROM:1;
    Ifx_UReg_32Bit S188ROM:1;
    Ifx_UReg_32Bit S189ROM:1;
    Ifx_UReg_32Bit S190ROM:1;
    Ifx_UReg_32Bit S191ROM:1;
} Ifx_DMU_HP_PROCON_OTP5_Bits;


typedef struct _Ifx_DMU_HP_PROCON_P0_Bits
{
    Ifx_UReg_32Bit S0L:1;
    Ifx_UReg_32Bit S1L:1;
    Ifx_UReg_32Bit S2L:1;
    Ifx_UReg_32Bit S3L:1;
    Ifx_UReg_32Bit S4L:1;
    Ifx_UReg_32Bit S5L:1;
    Ifx_UReg_32Bit S6L:1;
    Ifx_UReg_32Bit S7L:1;
    Ifx_UReg_32Bit S8L:1;
    Ifx_UReg_32Bit S9L:1;
    Ifx_UReg_32Bit S10L:1;
    Ifx_UReg_32Bit S11L:1;
    Ifx_UReg_32Bit S12L:1;
    Ifx_UReg_32Bit S13L:1;
    Ifx_UReg_32Bit S14L:1;
    Ifx_UReg_32Bit S15L:1;
    Ifx_UReg_32Bit S16L:1;
    Ifx_UReg_32Bit S17L:1;
    Ifx_UReg_32Bit S18L:1;
    Ifx_UReg_32Bit S19L:1;
    Ifx_UReg_32Bit S20L:1;
    Ifx_UReg_32Bit S21L:1;
    Ifx_UReg_32Bit S22L:1;
    Ifx_UReg_32Bit S23L:1;
    Ifx_UReg_32Bit S24L:1;
    Ifx_UReg_32Bit S25L:1;
    Ifx_UReg_32Bit S26L:1;
    Ifx_UReg_32Bit S27L:1;
    Ifx_UReg_32Bit S28L:1;
    Ifx_UReg_32Bit S29L:1;
    Ifx_UReg_32Bit S30L:1;
    Ifx_UReg_32Bit S31L:1;
} Ifx_DMU_HP_PROCON_P0_Bits;


typedef struct _Ifx_DMU_HP_PROCON_P1_Bits
{
    Ifx_UReg_32Bit S32L:1;
    Ifx_UReg_32Bit S33L:1;
    Ifx_UReg_32Bit S34L:1;
    Ifx_UReg_32Bit S35L:1;
    Ifx_UReg_32Bit S36L:1;
    Ifx_UReg_32Bit S37L:1;
    Ifx_UReg_32Bit S38L:1;
    Ifx_UReg_32Bit S39L:1;
    Ifx_UReg_32Bit S40L:1;
    Ifx_UReg_32Bit S41L:1;
    Ifx_UReg_32Bit S42L:1;
    Ifx_UReg_32Bit S43L:1;
    Ifx_UReg_32Bit S44L:1;
    Ifx_UReg_32Bit S45L:1;
    Ifx_UReg_32Bit S46L:1;
    Ifx_UReg_32Bit S47L:1;
    Ifx_UReg_32Bit S48L:1;
    Ifx_UReg_32Bit S49L:1;
    Ifx_UReg_32Bit S50L:1;
    Ifx_UReg_32Bit S51L:1;
    Ifx_UReg_32Bit S52L:1;
    Ifx_UReg_32Bit S53L:1;
    Ifx_UReg_32Bit S54L:1;
    Ifx_UReg_32Bit S55L:1;
    Ifx_UReg_32Bit S56L:1;
    Ifx_UReg_32Bit S57L:1;
    Ifx_UReg_32Bit S58L:1;
    Ifx_UReg_32Bit S59L:1;
    Ifx_UReg_32Bit S60L:1;
    Ifx_UReg_32Bit S61L:1;
    Ifx_UReg_32Bit S62L:1;
    Ifx_UReg_32Bit S63L:1;
} Ifx_DMU_HP_PROCON_P1_Bits;


typedef struct _Ifx_DMU_HP_PROCON_P2_Bits
{
    Ifx_UReg_32Bit S64L:1;
    Ifx_UReg_32Bit S65L:1;
    Ifx_UReg_32Bit S66L:1;
    Ifx_UReg_32Bit S67L:1;
    Ifx_UReg_32Bit S68L:1;
    Ifx_UReg_32Bit S69L:1;
    Ifx_UReg_32Bit S70L:1;
    Ifx_UReg_32Bit S71L:1;
    Ifx_UReg_32Bit S72L:1;
    Ifx_UReg_32Bit S73L:1;
    Ifx_UReg_32Bit S74L:1;
    Ifx_UReg_32Bit S75L:1;
    Ifx_UReg_32Bit S76L:1;
    Ifx_UReg_32Bit S77L:1;
    Ifx_UReg_32Bit S78L:1;
    Ifx_UReg_32Bit S79L:1;
    Ifx_UReg_32Bit S80L:1;
    Ifx_UReg_32Bit S81L:1;
    Ifx_UReg_32Bit S82L:1;
    Ifx_UReg_32Bit S83L:1;
    Ifx_UReg_32Bit S84L:1;
    Ifx_UReg_32Bit S85L:1;
    Ifx_UReg_32Bit S86L:1;
    Ifx_UReg_32Bit S87L:1;
    Ifx_UReg_32Bit S88L:1;
    Ifx_UReg_32Bit S89L:1;
    Ifx_UReg_32Bit S90L:1;
    Ifx_UReg_32Bit S91L:1;
    Ifx_UReg_32Bit S92L:1;
    Ifx_UReg_32Bit S93L:1;
    Ifx_UReg_32Bit S94L:1;
    Ifx_UReg_32Bit S95L:1;
} Ifx_DMU_HP_PROCON_P2_Bits;


typedef struct _Ifx_DMU_HP_PROCON_P3_Bits
{
    Ifx_UReg_32Bit S96L:1;
    Ifx_UReg_32Bit S97L:1;
    Ifx_UReg_32Bit S98L:1;
    Ifx_UReg_32Bit S99L:1;
    Ifx_UReg_32Bit S100L:1;
    Ifx_UReg_32Bit S101L:1;
    Ifx_UReg_32Bit S102L:1;
    Ifx_UReg_32Bit S103L:1;
    Ifx_UReg_32Bit S104L:1;
    Ifx_UReg_32Bit S105L:1;
    Ifx_UReg_32Bit S106L:1;
    Ifx_UReg_32Bit S107L:1;
    Ifx_UReg_32Bit S108L:1;
    Ifx_UReg_32Bit S109L:1;
    Ifx_UReg_32Bit S110L:1;
    Ifx_UReg_32Bit S111L:1;
    Ifx_UReg_32Bit S112L:1;
    Ifx_UReg_32Bit S113L:1;
    Ifx_UReg_32Bit S114L:1;
    Ifx_UReg_32Bit S115L:1;
    Ifx_UReg_32Bit S116L:1;
    Ifx_UReg_32Bit S117L:1;
    Ifx_UReg_32Bit S118L:1;
    Ifx_UReg_32Bit S119L:1;
    Ifx_UReg_32Bit S120L:1;
    Ifx_UReg_32Bit S121L:1;
    Ifx_UReg_32Bit S122L:1;
    Ifx_UReg_32Bit S123L:1;
    Ifx_UReg_32Bit S124L:1;
    Ifx_UReg_32Bit S125L:1;
    Ifx_UReg_32Bit S126L:1;
    Ifx_UReg_32Bit S127L:1;
} Ifx_DMU_HP_PROCON_P3_Bits;


typedef struct _Ifx_DMU_HP_PROCON_P4_Bits
{
    Ifx_UReg_32Bit S128L:1;
    Ifx_UReg_32Bit S129L:1;
    Ifx_UReg_32Bit S130L:1;
    Ifx_UReg_32Bit S131L:1;
    Ifx_UReg_32Bit S132L:1;
    Ifx_UReg_32Bit S133L:1;
    Ifx_UReg_32Bit S134L:1;
    Ifx_UReg_32Bit S135L:1;
    Ifx_UReg_32Bit S136L:1;
    Ifx_UReg_32Bit S137L:1;
    Ifx_UReg_32Bit S138L:1;
    Ifx_UReg_32Bit S139L:1;
    Ifx_UReg_32Bit S140L:1;
    Ifx_UReg_32Bit S141L:1;
    Ifx_UReg_32Bit S142L:1;
    Ifx_UReg_32Bit S143L:1;
    Ifx_UReg_32Bit S144L:1;
    Ifx_UReg_32Bit S145L:1;
    Ifx_UReg_32Bit S146L:1;
    Ifx_UReg_32Bit S147L:1;
    Ifx_UReg_32Bit S148L:1;
    Ifx_UReg_32Bit S149L:1;
    Ifx_UReg_32Bit S150L:1;
    Ifx_UReg_32Bit S151L:1;
    Ifx_UReg_32Bit S152L:1;
    Ifx_UReg_32Bit S153L:1;
    Ifx_UReg_32Bit S154L:1;
    Ifx_UReg_32Bit S155L:1;
    Ifx_UReg_32Bit S156L:1;
    Ifx_UReg_32Bit S157L:1;
    Ifx_UReg_32Bit S158L:1;
    Ifx_UReg_32Bit S159L:1;
} Ifx_DMU_HP_PROCON_P4_Bits;


typedef struct _Ifx_DMU_HP_PROCON_P5_Bits
{
    Ifx_UReg_32Bit S160L:1;
    Ifx_UReg_32Bit S161L:1;
    Ifx_UReg_32Bit S162L:1;
    Ifx_UReg_32Bit S163L:1;
    Ifx_UReg_32Bit S164L:1;
    Ifx_UReg_32Bit S165L:1;
    Ifx_UReg_32Bit S166L:1;
    Ifx_UReg_32Bit S167L:1;
    Ifx_UReg_32Bit S168L:1;
    Ifx_UReg_32Bit S169L:1;
    Ifx_UReg_32Bit S170L:1;
    Ifx_UReg_32Bit S171L:1;
    Ifx_UReg_32Bit S172L:1;
    Ifx_UReg_32Bit S173L:1;
    Ifx_UReg_32Bit S174L:1;
    Ifx_UReg_32Bit S175L:1;
    Ifx_UReg_32Bit S176L:1;
    Ifx_UReg_32Bit S177L:1;
    Ifx_UReg_32Bit S178L:1;
    Ifx_UReg_32Bit S179L:1;
    Ifx_UReg_32Bit S180L:1;
    Ifx_UReg_32Bit S181L:1;
    Ifx_UReg_32Bit S182L:1;
    Ifx_UReg_32Bit S183L:1;
    Ifx_UReg_32Bit S184L:1;
    Ifx_UReg_32Bit S185L:1;
    Ifx_UReg_32Bit S186L:1;
    Ifx_UReg_32Bit S187L:1;
    Ifx_UReg_32Bit S188L:1;
    Ifx_UReg_32Bit S189L:1;
    Ifx_UReg_32Bit S190L:1;
    Ifx_UReg_32Bit S191L:1;
} Ifx_DMU_HP_PROCON_P5_Bits;


typedef struct _Ifx_DMU_HP_PROCON_WOP0_Bits
{
    Ifx_UReg_32Bit S0WOP:1;
    Ifx_UReg_32Bit S1WOP:1;
    Ifx_UReg_32Bit S2WOP:1;
    Ifx_UReg_32Bit S3WOP:1;
    Ifx_UReg_32Bit S4WOP:1;
    Ifx_UReg_32Bit S5WOP:1;
    Ifx_UReg_32Bit S6WOP:1;
    Ifx_UReg_32Bit S7WOP:1;
    Ifx_UReg_32Bit S8WOP:1;
    Ifx_UReg_32Bit S9WOP:1;
    Ifx_UReg_32Bit S10WOP:1;
    Ifx_UReg_32Bit S11WOP:1;
    Ifx_UReg_32Bit S12WOP:1;
    Ifx_UReg_32Bit S13WOP:1;
    Ifx_UReg_32Bit S14WOP:1;
    Ifx_UReg_32Bit S15WOP:1;
    Ifx_UReg_32Bit S16WOP:1;
    Ifx_UReg_32Bit S17WOP:1;
    Ifx_UReg_32Bit S18WOP:1;
    Ifx_UReg_32Bit S19WOP:1;
    Ifx_UReg_32Bit S20WOP:1;
    Ifx_UReg_32Bit S21WOP:1;
    Ifx_UReg_32Bit S22WOP:1;
    Ifx_UReg_32Bit S23WOP:1;
    Ifx_UReg_32Bit S24WOP:1;
    Ifx_UReg_32Bit S25WOP:1;
    Ifx_UReg_32Bit S26WOP:1;
    Ifx_UReg_32Bit S27WOP:1;
    Ifx_UReg_32Bit S28WOP:1;
    Ifx_UReg_32Bit S29WOP:1;
    Ifx_UReg_32Bit S30WOP:1;
    Ifx_UReg_32Bit S31WOP:1;
} Ifx_DMU_HP_PROCON_WOP0_Bits;


typedef struct _Ifx_DMU_HP_PROCON_WOP1_Bits
{
    Ifx_UReg_32Bit S32WOP:1;
    Ifx_UReg_32Bit S33WOP:1;
    Ifx_UReg_32Bit S34WOP:1;
    Ifx_UReg_32Bit S35WOP:1;
    Ifx_UReg_32Bit S36WOP:1;
    Ifx_UReg_32Bit S37WOP:1;
    Ifx_UReg_32Bit S38WOP:1;
    Ifx_UReg_32Bit S39WOP:1;
    Ifx_UReg_32Bit S40WOP:1;
    Ifx_UReg_32Bit S41WOP:1;
    Ifx_UReg_32Bit S42WOP:1;
    Ifx_UReg_32Bit S43WOP:1;
    Ifx_UReg_32Bit S44WOP:1;
    Ifx_UReg_32Bit S45WOP:1;
    Ifx_UReg_32Bit S46WOP:1;
    Ifx_UReg_32Bit S47WOP:1;
    Ifx_UReg_32Bit S48WOP:1;
    Ifx_UReg_32Bit S49WOP:1;
    Ifx_UReg_32Bit S50WOP:1;
    Ifx_UReg_32Bit S51WOP:1;
    Ifx_UReg_32Bit S52WOP:1;
    Ifx_UReg_32Bit S53WOP:1;
    Ifx_UReg_32Bit S54WOP:1;
    Ifx_UReg_32Bit S55WOP:1;
    Ifx_UReg_32Bit S56WOP:1;
    Ifx_UReg_32Bit S57WOP:1;
    Ifx_UReg_32Bit S58WOP:1;
    Ifx_UReg_32Bit S59WOP:1;
    Ifx_UReg_32Bit S60WOP:1;
    Ifx_UReg_32Bit S61WOP:1;
    Ifx_UReg_32Bit S62WOP:1;
    Ifx_UReg_32Bit S63WOP:1;
} Ifx_DMU_HP_PROCON_WOP1_Bits;


typedef struct _Ifx_DMU_HP_PROCON_WOP2_Bits
{
    Ifx_UReg_32Bit S64WOP:1;
    Ifx_UReg_32Bit S65WOP:1;
    Ifx_UReg_32Bit S66WOP:1;
    Ifx_UReg_32Bit S67WOP:1;
    Ifx_UReg_32Bit S68WOP:1;
    Ifx_UReg_32Bit S69WOP:1;
    Ifx_UReg_32Bit S70WOP:1;
    Ifx_UReg_32Bit S71WOP:1;
    Ifx_UReg_32Bit S72WOP:1;
    Ifx_UReg_32Bit S73WOP:1;
    Ifx_UReg_32Bit S74WOP:1;
    Ifx_UReg_32Bit S75WOP:1;
    Ifx_UReg_32Bit S76WOP:1;
    Ifx_UReg_32Bit S77WOP:1;
    Ifx_UReg_32Bit S78WOP:1;
    Ifx_UReg_32Bit S79WOP:1;
    Ifx_UReg_32Bit S80WOP:1;
    Ifx_UReg_32Bit S81WOP:1;
    Ifx_UReg_32Bit S82WOP:1;
    Ifx_UReg_32Bit S83WOP:1;
    Ifx_UReg_32Bit S84WOP:1;
    Ifx_UReg_32Bit S85WOP:1;
    Ifx_UReg_32Bit S86WOP:1;
    Ifx_UReg_32Bit S87WOP:1;
    Ifx_UReg_32Bit S88WOP:1;
    Ifx_UReg_32Bit S89WOP:1;
    Ifx_UReg_32Bit S90WOP:1;
    Ifx_UReg_32Bit S91WOP:1;
    Ifx_UReg_32Bit S92WOP:1;
    Ifx_UReg_32Bit S93WOP:1;
    Ifx_UReg_32Bit S94WOP:1;
    Ifx_UReg_32Bit S95WOP:1;
} Ifx_DMU_HP_PROCON_WOP2_Bits;


typedef struct _Ifx_DMU_HP_PROCON_WOP3_Bits
{
    Ifx_UReg_32Bit S96WOP:1;
    Ifx_UReg_32Bit S97WOP:1;
    Ifx_UReg_32Bit S98WOP:1;
    Ifx_UReg_32Bit S99WOP:1;
    Ifx_UReg_32Bit S100WOP:1;
    Ifx_UReg_32Bit S101WOP:1;
    Ifx_UReg_32Bit S102WOP:1;
    Ifx_UReg_32Bit S103WOP:1;
    Ifx_UReg_32Bit S104WOP:1;
    Ifx_UReg_32Bit S105WOP:1;
    Ifx_UReg_32Bit S106WOP:1;
    Ifx_UReg_32Bit S107WOP:1;
    Ifx_UReg_32Bit S108WOP:1;
    Ifx_UReg_32Bit S109WOP:1;
    Ifx_UReg_32Bit S110WOP:1;
    Ifx_UReg_32Bit S111WOP:1;
    Ifx_UReg_32Bit S112WOP:1;
    Ifx_UReg_32Bit S113WOP:1;
    Ifx_UReg_32Bit S114WOP:1;
    Ifx_UReg_32Bit S115WOP:1;
    Ifx_UReg_32Bit S116WOP:1;
    Ifx_UReg_32Bit S117WOP:1;
    Ifx_UReg_32Bit S118WOP:1;
    Ifx_UReg_32Bit S119WOP:1;
    Ifx_UReg_32Bit S120WOP:1;
    Ifx_UReg_32Bit S121WOP:1;
    Ifx_UReg_32Bit S122WOP:1;
    Ifx_UReg_32Bit S123WOP:1;
    Ifx_UReg_32Bit S124WOP:1;
    Ifx_UReg_32Bit S125WOP:1;
    Ifx_UReg_32Bit S126WOP:1;
    Ifx_UReg_32Bit S127WOP:1;
} Ifx_DMU_HP_PROCON_WOP3_Bits;


typedef struct _Ifx_DMU_HP_PROCON_WOP4_Bits
{
    Ifx_UReg_32Bit S128WOP:1;
    Ifx_UReg_32Bit S129WOP:1;
    Ifx_UReg_32Bit S130WOP:1;
    Ifx_UReg_32Bit S131WOP:1;
    Ifx_UReg_32Bit S132WOP:1;
    Ifx_UReg_32Bit S133WOP:1;
    Ifx_UReg_32Bit S134WOP:1;
    Ifx_UReg_32Bit S135WOP:1;
    Ifx_UReg_32Bit S136WOP:1;
    Ifx_UReg_32Bit S137WOP:1;
    Ifx_UReg_32Bit S138WOP:1;
    Ifx_UReg_32Bit S139WOP:1;
    Ifx_UReg_32Bit S140WOP:1;
    Ifx_UReg_32Bit S141WOP:1;
    Ifx_UReg_32Bit S142WOP:1;
    Ifx_UReg_32Bit S143WOP:1;
    Ifx_UReg_32Bit S144WOP:1;
    Ifx_UReg_32Bit S145WOP:1;
    Ifx_UReg_32Bit S146WOP:1;
    Ifx_UReg_32Bit S147WOP:1;
    Ifx_UReg_32Bit S148WOP:1;
    Ifx_UReg_32Bit S149WOP:1;
    Ifx_UReg_32Bit S150WOP:1;
    Ifx_UReg_32Bit S151WOP:1;
    Ifx_UReg_32Bit S152WOP:1;
    Ifx_UReg_32Bit S153WOP:1;
    Ifx_UReg_32Bit S154WOP:1;
    Ifx_UReg_32Bit S155WOP:1;
    Ifx_UReg_32Bit S156WOP:1;
    Ifx_UReg_32Bit S157WOP:1;
    Ifx_UReg_32Bit S158WOP:1;
    Ifx_UReg_32Bit S159WOP:1;
} Ifx_DMU_HP_PROCON_WOP4_Bits;


typedef struct _Ifx_DMU_HP_PROCON_WOP5_Bits
{
    Ifx_UReg_32Bit S160WOP:1;
    Ifx_UReg_32Bit S161WOP:1;
    Ifx_UReg_32Bit S162WOP:1;
    Ifx_UReg_32Bit S163WOP:1;
    Ifx_UReg_32Bit S164WOP:1;
    Ifx_UReg_32Bit S165WOP:1;
    Ifx_UReg_32Bit S166WOP:1;
    Ifx_UReg_32Bit S167WOP:1;
    Ifx_UReg_32Bit S168WOP:1;
    Ifx_UReg_32Bit S169WOP:1;
    Ifx_UReg_32Bit S170WOP:1;
    Ifx_UReg_32Bit S171WOP:1;
    Ifx_UReg_32Bit S172WOP:1;
    Ifx_UReg_32Bit S173WOP:1;
    Ifx_UReg_32Bit S174WOP:1;
    Ifx_UReg_32Bit S175WOP:1;
    Ifx_UReg_32Bit S176WOP:1;
    Ifx_UReg_32Bit S177WOP:1;
    Ifx_UReg_32Bit S178WOP:1;
    Ifx_UReg_32Bit S179WOP:1;
    Ifx_UReg_32Bit S180WOP:1;
    Ifx_UReg_32Bit S181WOP:1;
    Ifx_UReg_32Bit S182WOP:1;
    Ifx_UReg_32Bit S183WOP:1;
    Ifx_UReg_32Bit S184WOP:1;
    Ifx_UReg_32Bit S185WOP:1;
    Ifx_UReg_32Bit S186WOP:1;
    Ifx_UReg_32Bit S187WOP:1;
    Ifx_UReg_32Bit S188WOP:1;
    Ifx_UReg_32Bit S189WOP:1;
    Ifx_UReg_32Bit S190WOP:1;
    Ifx_UReg_32Bit S191WOP:1;
} Ifx_DMU_HP_PROCON_WOP5_Bits;


typedef struct _Ifx_DMU_SF_CLRE_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit CSQER:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit CPVER:1;
    Ifx_UReg_32Bit CEVER:1;
    Ifx_UReg_32Bit reserved_5:27;
} Ifx_DMU_SF_CLRE_Bits;


typedef struct _Ifx_DMU_SF_CONTROL_Bits
{
    Ifx_UReg_32Bit LCKHSMUCB:2;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit reserved_4:12;
    Ifx_UReg_32Bit CPROG:1;
    Ifx_UReg_32Bit CERASE:1;
    Ifx_UReg_32Bit reserved_18:1;
    Ifx_UReg_32Bit reserved_19:13;
} Ifx_DMU_SF_CONTROL_Bits;


typedef struct _Ifx_DMU_SF_ECCC_Bits
{
    Ifx_UReg_32Bit CLR:2;
    Ifx_UReg_32Bit reserved_2:26;
    Ifx_UReg_32Bit ECCCORDIS:2;
    Ifx_UReg_32Bit TRAPDIS:2;
} Ifx_DMU_SF_ECCC_Bits;


typedef struct _Ifx_DMU_SF_ECCR_Bits
{
    Ifx_UReg_32Bit RCODE:22;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit reserved_24:8;
} Ifx_DMU_SF_ECCR_Bits;


typedef struct _Ifx_DMU_SF_ECCS_Bits
{
    Ifx_UReg_32Bit ERR1:1;
    Ifx_UReg_32Bit ERR2:1;
    Ifx_UReg_32Bit ERR3:1;
    Ifx_UReg_32Bit ERRM:1;
    Ifx_UReg_32Bit reserved_4:3;
    Ifx_UReg_32Bit ERRANY:1;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit BLANKA:1;
    Ifx_UReg_32Bit reserved_10:6;
    Ifx_UReg_32Bit AER1:1;
    Ifx_UReg_32Bit AER2:1;
    Ifx_UReg_32Bit AER3:1;
    Ifx_UReg_32Bit AERM:1;
    Ifx_UReg_32Bit reserved_20:3;
    Ifx_UReg_32Bit AERANY:1;
    Ifx_UReg_32Bit reserved_24:1;
    Ifx_UReg_32Bit ABLANKA:1;
    Ifx_UReg_32Bit reserved_26:6;
} Ifx_DMU_SF_ECCS_Bits;


typedef struct _Ifx_DMU_SF_ECCW_Bits
{
    Ifx_UReg_32Bit WCODE:22;
    Ifx_UReg_32Bit reserved_22:8;
    Ifx_UReg_32Bit ECCENCDIS:2;
} Ifx_DMU_SF_ECCW_Bits;


typedef struct _Ifx_DMU_SF_EER_Bits
{
    Ifx_UReg_32Bit OPERM:1;
    Ifx_UReg_32Bit SQERM:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit PVERM:1;
    Ifx_UReg_32Bit EVERM:1;
    Ifx_UReg_32Bit reserved_5:26;
    Ifx_UReg_32Bit EOBM:1;
} Ifx_DMU_SF_EER_Bits;


typedef struct _Ifx_DMU_SF_ERRSR_Bits
{
    Ifx_UReg_32Bit OPER:1;
    Ifx_UReg_32Bit SQER:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit PVER:1;
    Ifx_UReg_32Bit EVER:1;
    Ifx_UReg_32Bit reserved_5:27;
} Ifx_DMU_SF_ERRSR_Bits;


typedef struct _Ifx_DMU_SF_MARGIN_Bits
{
    Ifx_UReg_32Bit SELD1:2;
    Ifx_UReg_32Bit reserved_2:6;
    Ifx_UReg_32Bit HMARGIN:1;
    Ifx_UReg_32Bit reserved_9:23;
} Ifx_DMU_SF_MARGIN_Bits;


typedef struct _Ifx_DMU_SF_OPERATION_Bits
{
    Ifx_UReg_32Bit PROG:1;
    Ifx_UReg_32Bit ERASE:1;
    Ifx_UReg_32Bit reserved_2:1;
    Ifx_UReg_32Bit reserved_3:29;
} Ifx_DMU_SF_OPERATION_Bits;


typedef struct _Ifx_DMU_SF_PROCONUSR_Bits
{
    Ifx_UReg_32Bit MODE:2;
    Ifx_UReg_32Bit reserved_2:30;
} Ifx_DMU_SF_PROCONUSR_Bits;


typedef struct _Ifx_DMU_SF_STATUS_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit D1BUSY:1;
    Ifx_UReg_32Bit reserved_2:18;
    Ifx_UReg_32Bit DFPAGE:1;
    Ifx_UReg_32Bit reserved_21:11;
} Ifx_DMU_SF_STATUS_Bits;


typedef struct _Ifx_DMU_SF_SUSPEND_Bits
{
    Ifx_UReg_32Bit REQ:1;
    Ifx_UReg_32Bit CLR:1;
    Ifx_UReg_32Bit reserved_2:14;
    Ifx_UReg_32Bit SPND:1;
    Ifx_UReg_32Bit ERR:1;
    Ifx_UReg_32Bit reserved_18:14;
} Ifx_DMU_SF_SUSPEND_Bits;


typedef struct _Ifx_DMU_SP_PROCONHSM_Bits
{
    Ifx_UReg_32Bit HSMDBGDIS:1;
    Ifx_UReg_32Bit DBGIFLCK:1;
    Ifx_UReg_32Bit TSTIFLCK:1;
    Ifx_UReg_32Bit HSMTSTDIS:1;
    Ifx_UReg_32Bit HSMTRDIS:2;
    Ifx_UReg_32Bit HSMTRTYPE:1;
    Ifx_UReg_32Bit reserved_7:9;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_DMU_SP_PROCONHSM_Bits;


typedef struct _Ifx_DMU_SP_PROCONHSMCBS_Bits
{
    Ifx_UReg_32Bit BOOTSEL0:6;
    Ifx_UReg_32Bit reserved_6:2;
    Ifx_UReg_32Bit BOOTSEL1:6;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit BOOTSEL2:6;
    Ifx_UReg_32Bit reserved_22:2;
    Ifx_UReg_32Bit BOOTSEL3:6;
    Ifx_UReg_32Bit reserved_30:2;
} Ifx_DMU_SP_PROCONHSMCBS_Bits;


typedef struct _Ifx_DMU_SP_PROCONHSMCFG_Bits
{
    Ifx_UReg_32Bit HSMBOOTEN:1;
    Ifx_UReg_32Bit SSWWAIT:1;
    Ifx_UReg_32Bit HSMDX:1;
    Ifx_UReg_32Bit reserved_3:1;
    Ifx_UReg_32Bit HSMRAMKEEP:2;
    Ifx_UReg_32Bit reserved_6:1;
    Ifx_UReg_32Bit HSMENPINS:2;
    Ifx_UReg_32Bit HSMENRES:2;
    Ifx_UReg_32Bit DESTDBG:2;
    Ifx_UReg_32Bit BLKFLAN:1;
    Ifx_UReg_32Bit reserved_14:2;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_DMU_SP_PROCONHSMCFG_Bits;


typedef struct _Ifx_DMU_SP_PROCONHSMCOTP0_Bits
{
    Ifx_UReg_32Bit HSM0ROM:1;
    Ifx_UReg_32Bit HSM1ROM:1;
    Ifx_UReg_32Bit HSM2ROM:1;
    Ifx_UReg_32Bit HSM3ROM:1;
    Ifx_UReg_32Bit HSM4ROM:1;
    Ifx_UReg_32Bit HSM5ROM:1;
    Ifx_UReg_32Bit HSM6ROM:1;
    Ifx_UReg_32Bit HSM7ROM:1;
    Ifx_UReg_32Bit HSM8ROM:1;
    Ifx_UReg_32Bit HSM9ROM:1;
    Ifx_UReg_32Bit HSM10ROM:1;
    Ifx_UReg_32Bit HSM11ROM:1;
    Ifx_UReg_32Bit HSM12ROM:1;
    Ifx_UReg_32Bit HSM13ROM:1;
    Ifx_UReg_32Bit HSM14ROM:1;
    Ifx_UReg_32Bit HSM15ROM:1;
    Ifx_UReg_32Bit HSM16ROM:1;
    Ifx_UReg_32Bit HSM17ROM:1;
    Ifx_UReg_32Bit HSM18ROM:1;
    Ifx_UReg_32Bit HSM19ROM:1;
    Ifx_UReg_32Bit HSM20ROM:1;
    Ifx_UReg_32Bit HSM21ROM:1;
    Ifx_UReg_32Bit HSM22ROM:1;
    Ifx_UReg_32Bit HSM23ROM:1;
    Ifx_UReg_32Bit HSM24ROM:1;
    Ifx_UReg_32Bit HSM25ROM:1;
    Ifx_UReg_32Bit HSM26ROM:1;
    Ifx_UReg_32Bit HSM27ROM:1;
    Ifx_UReg_32Bit HSM28ROM:1;
    Ifx_UReg_32Bit HSM29ROM:1;
    Ifx_UReg_32Bit HSM30ROM:1;
    Ifx_UReg_32Bit HSM31ROM:1;
} Ifx_DMU_SP_PROCONHSMCOTP0_Bits;


typedef struct _Ifx_DMU_SP_PROCONHSMCOTP1_Bits
{
    Ifx_UReg_32Bit HSM32ROM:1;
    Ifx_UReg_32Bit HSM33ROM:1;
    Ifx_UReg_32Bit HSM34ROM:1;
    Ifx_UReg_32Bit HSM35ROM:1;
    Ifx_UReg_32Bit HSM36ROM:1;
    Ifx_UReg_32Bit HSM37ROM:1;
    Ifx_UReg_32Bit HSM38ROM:1;
    Ifx_UReg_32Bit HSM39ROM:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_DMU_SP_PROCONHSMCOTP1_Bits;


typedef struct _Ifx_DMU_SP_PROCONHSMCX0_Bits
{
    Ifx_UReg_32Bit HSM0X:1;
    Ifx_UReg_32Bit HSM1X:1;
    Ifx_UReg_32Bit HSM2X:1;
    Ifx_UReg_32Bit HSM3X:1;
    Ifx_UReg_32Bit HSM4X:1;
    Ifx_UReg_32Bit HSM5X:1;
    Ifx_UReg_32Bit HSM6X:1;
    Ifx_UReg_32Bit HSM7X:1;
    Ifx_UReg_32Bit HSM8X:1;
    Ifx_UReg_32Bit HSM9X:1;
    Ifx_UReg_32Bit HSM10X:1;
    Ifx_UReg_32Bit HSM11X:1;
    Ifx_UReg_32Bit HSM12X:1;
    Ifx_UReg_32Bit HSM13X:1;
    Ifx_UReg_32Bit HSM14X:1;
    Ifx_UReg_32Bit HSM15X:1;
    Ifx_UReg_32Bit HSM16X:1;
    Ifx_UReg_32Bit HSM17X:1;
    Ifx_UReg_32Bit HSM18X:1;
    Ifx_UReg_32Bit HSM19X:1;
    Ifx_UReg_32Bit HSM20X:1;
    Ifx_UReg_32Bit HSM21X:1;
    Ifx_UReg_32Bit HSM22X:1;
    Ifx_UReg_32Bit HSM23X:1;
    Ifx_UReg_32Bit HSM24X:1;
    Ifx_UReg_32Bit HSM25X:1;
    Ifx_UReg_32Bit HSM26X:1;
    Ifx_UReg_32Bit HSM27X:1;
    Ifx_UReg_32Bit HSM28X:1;
    Ifx_UReg_32Bit HSM29X:1;
    Ifx_UReg_32Bit HSM30X:1;
    Ifx_UReg_32Bit HSM31X:1;
} Ifx_DMU_SP_PROCONHSMCX0_Bits;


typedef struct _Ifx_DMU_SP_PROCONHSMCX1_Bits
{
    Ifx_UReg_32Bit HSM32X:1;
    Ifx_UReg_32Bit HSM33X:1;
    Ifx_UReg_32Bit HSM34X:1;
    Ifx_UReg_32Bit HSM35X:1;
    Ifx_UReg_32Bit HSM36X:1;
    Ifx_UReg_32Bit HSM37X:1;
    Ifx_UReg_32Bit HSM38X:1;
    Ifx_UReg_32Bit HSM39X:1;
    Ifx_UReg_32Bit reserved_8:24;
} Ifx_DMU_SP_PROCONHSMCX1_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_ACCEN0_Bits B;
} Ifx_DMU_HF_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_ACCEN1_Bits B;
} Ifx_DMU_HF_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_CCONTROL_Bits B;
} Ifx_DMU_HF_CCONTROL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_CLRE_Bits B;
} Ifx_DMU_HF_CLRE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_CONFIRM0_Bits B;
} Ifx_DMU_HF_CONFIRM0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_CONFIRM1_Bits B;
} Ifx_DMU_HF_CONFIRM1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_CONFIRM2_Bits B;
} Ifx_DMU_HF_CONFIRM2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_CONTROL_Bits B;
} Ifx_DMU_HF_CONTROL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_DWAIT_Bits B;
} Ifx_DMU_HF_DWAIT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_ECCC_Bits B;
} Ifx_DMU_HF_ECCC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_ECCR_Bits B;
} Ifx_DMU_HF_ECCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_ECCS_Bits B;
} Ifx_DMU_HF_ECCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_ECCW_Bits B;
} Ifx_DMU_HF_ECCW;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_EER_Bits B;
} Ifx_DMU_HF_EER;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_ERRSR_Bits B;
} Ifx_DMU_HF_ERRSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_ID_Bits B;
} Ifx_DMU_HF_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_MARGIN_Bits B;
} Ifx_DMU_HF_MARGIN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_OPERATION_Bits B;
} Ifx_DMU_HF_OPERATION;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_PCONTROL_Bits B;
} Ifx_DMU_HF_PCONTROL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_PROCONDBG_Bits B;
} Ifx_DMU_HF_PROCONDBG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_PROCONDF_Bits B;
} Ifx_DMU_HF_PROCONDF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_PROCONPF_Bits B;
} Ifx_DMU_HF_PROCONPF;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_PROCONRAM_Bits B;
} Ifx_DMU_HF_PROCONRAM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_PROCONTP_Bits B;
} Ifx_DMU_HF_PROCONTP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_PROCONUSR_Bits B;
} Ifx_DMU_HF_PROCONUSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_PROTECT_Bits B;
} Ifx_DMU_HF_PROTECT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_PSTATUS_Bits B;
} Ifx_DMU_HF_PSTATUS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_PWAIT_Bits B;
} Ifx_DMU_HF_PWAIT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_STATUS_Bits B;
} Ifx_DMU_HF_STATUS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HF_SUSPEND_Bits B;
} Ifx_DMU_HF_SUSPEND;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_ECPRIO_P0_Bits B;
} Ifx_DMU_HP_ECPRIO_P0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_ECPRIO_P1_Bits B;
} Ifx_DMU_HP_ECPRIO_P1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_ECPRIO_P2_Bits B;
} Ifx_DMU_HP_ECPRIO_P2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_ECPRIO_P3_Bits B;
} Ifx_DMU_HP_ECPRIO_P3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_ECPRIO_P4_Bits B;
} Ifx_DMU_HP_ECPRIO_P4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_ECPRIO_P5_Bits B;
} Ifx_DMU_HP_ECPRIO_P5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_OTP0_Bits B;
} Ifx_DMU_HP_PROCON_OTP0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_OTP1_Bits B;
} Ifx_DMU_HP_PROCON_OTP1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_OTP2_Bits B;
} Ifx_DMU_HP_PROCON_OTP2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_OTP3_Bits B;
} Ifx_DMU_HP_PROCON_OTP3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_OTP4_Bits B;
} Ifx_DMU_HP_PROCON_OTP4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_OTP5_Bits B;
} Ifx_DMU_HP_PROCON_OTP5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_P0_Bits B;
} Ifx_DMU_HP_PROCON_P0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_P1_Bits B;
} Ifx_DMU_HP_PROCON_P1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_P2_Bits B;
} Ifx_DMU_HP_PROCON_P2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_P3_Bits B;
} Ifx_DMU_HP_PROCON_P3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_P4_Bits B;
} Ifx_DMU_HP_PROCON_P4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_P5_Bits B;
} Ifx_DMU_HP_PROCON_P5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_WOP0_Bits B;
} Ifx_DMU_HP_PROCON_WOP0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_WOP1_Bits B;
} Ifx_DMU_HP_PROCON_WOP1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_WOP2_Bits B;
} Ifx_DMU_HP_PROCON_WOP2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_WOP3_Bits B;
} Ifx_DMU_HP_PROCON_WOP3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_WOP4_Bits B;
} Ifx_DMU_HP_PROCON_WOP4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_HP_PROCON_WOP5_Bits B;
} Ifx_DMU_HP_PROCON_WOP5;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_CLRE_Bits B;
} Ifx_DMU_SF_CLRE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_CONTROL_Bits B;
} Ifx_DMU_SF_CONTROL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_ECCC_Bits B;
} Ifx_DMU_SF_ECCC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_ECCR_Bits B;
} Ifx_DMU_SF_ECCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_ECCS_Bits B;
} Ifx_DMU_SF_ECCS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_ECCW_Bits B;
} Ifx_DMU_SF_ECCW;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_EER_Bits B;
} Ifx_DMU_SF_EER;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_ERRSR_Bits B;
} Ifx_DMU_SF_ERRSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_MARGIN_Bits B;
} Ifx_DMU_SF_MARGIN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_OPERATION_Bits B;
} Ifx_DMU_SF_OPERATION;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_PROCONUSR_Bits B;
} Ifx_DMU_SF_PROCONUSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_STATUS_Bits B;
} Ifx_DMU_SF_STATUS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SF_SUSPEND_Bits B;
} Ifx_DMU_SF_SUSPEND;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SP_PROCONHSM_Bits B;
} Ifx_DMU_SP_PROCONHSM;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SP_PROCONHSMCBS_Bits B;
} Ifx_DMU_SP_PROCONHSMCBS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SP_PROCONHSMCFG_Bits B;
} Ifx_DMU_SP_PROCONHSMCFG;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SP_PROCONHSMCOTP0_Bits B;
} Ifx_DMU_SP_PROCONHSMCOTP0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SP_PROCONHSMCOTP1_Bits B;
} Ifx_DMU_SP_PROCONHSMCOTP1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SP_PROCONHSMCX0_Bits B;
} Ifx_DMU_SP_PROCONHSMCX0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_DMU_SP_PROCONHSMCX1_Bits B;
} Ifx_DMU_SP_PROCONHSMCX1;
# 2267 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDmu_regdef.h"
typedef volatile struct _Ifx_DMU_HP
{
       Ifx_DMU_HP_PROCON_P0 PROCON_P0;
       Ifx_DMU_HP_PROCON_P1 PROCON_P1;
       Ifx_DMU_HP_PROCON_P2 PROCON_P2;
       Ifx_DMU_HP_PROCON_P3 PROCON_P3;
       Ifx_DMU_HP_PROCON_P4 PROCON_P4;
       Ifx_DMU_HP_PROCON_P5 PROCON_P5;
       Ifx_UReg_8Bit reserved_18[40];
       Ifx_DMU_HP_PROCON_OTP0 PROCON_OTP0;
       Ifx_DMU_HP_PROCON_OTP1 PROCON_OTP1;
       Ifx_DMU_HP_PROCON_OTP2 PROCON_OTP2;
       Ifx_DMU_HP_PROCON_OTP3 PROCON_OTP3;
       Ifx_DMU_HP_PROCON_OTP4 PROCON_OTP4;
       Ifx_DMU_HP_PROCON_OTP5 PROCON_OTP5;
       Ifx_UReg_8Bit reserved_58[40];
       Ifx_DMU_HP_PROCON_WOP0 PROCON_WOP0;
       Ifx_DMU_HP_PROCON_WOP1 PROCON_WOP1;
       Ifx_DMU_HP_PROCON_WOP2 PROCON_WOP2;
       Ifx_DMU_HP_PROCON_WOP3 PROCON_WOP3;
       Ifx_DMU_HP_PROCON_WOP4 PROCON_WOP4;
       Ifx_DMU_HP_PROCON_WOP5 PROCON_WOP5;
       Ifx_UReg_8Bit reserved_98[8];
       Ifx_DMU_HP_ECPRIO_P0 ECPRIO_P0;
       Ifx_DMU_HP_ECPRIO_P1 ECPRIO_P1;
       Ifx_DMU_HP_ECPRIO_P2 ECPRIO_P2;
       Ifx_DMU_HP_ECPRIO_P3 ECPRIO_P3;
       Ifx_DMU_HP_ECPRIO_P4 ECPRIO_P4;
       Ifx_DMU_HP_ECPRIO_P5 ECPRIO_P5;
       Ifx_UReg_8Bit reserved_B8[72];
} Ifx_DMU_HP;
# 2312 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDmu_regdef.h"
typedef volatile struct _Ifx_DMU
{
       Ifx_UReg_8Bit reserved_0[8];
       Ifx_DMU_HF_ID HF_ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_DMU_HF_STATUS HF_STATUS;
       Ifx_DMU_HF_CONTROL HF_CONTROL;
       Ifx_DMU_HF_OPERATION HF_OPERATION;
       Ifx_DMU_HF_PROTECT HF_PROTECT;
       Ifx_DMU_HF_CONFIRM0 HF_CONFIRM0;
       Ifx_DMU_HF_CONFIRM1 HF_CONFIRM1;
       Ifx_DMU_HF_CONFIRM2 HF_CONFIRM2;
       Ifx_UReg_8Bit reserved_2C[4];
       Ifx_DMU_HF_EER HF_EER;
       Ifx_DMU_HF_ERRSR HF_ERRSR;
       Ifx_DMU_HF_CLRE HF_CLRE;
       Ifx_UReg_8Bit reserved_3C[4];
       Ifx_DMU_HF_ECCR HF_ECCR;
       Ifx_DMU_HF_ECCS HF_ECCS;
       Ifx_DMU_HF_ECCC HF_ECCC;
       Ifx_DMU_HF_ECCW HF_ECCW;
       Ifx_DMU_HF_CCONTROL HF_CCONTROL;
       Ifx_UReg_8Bit reserved_54[12];
       Ifx_DMU_HF_PSTATUS HF_PSTATUS;
       Ifx_DMU_HF_PCONTROL HF_PCONTROL;
       Ifx_DMU_HF_PWAIT HF_PWAIT;
       Ifx_DMU_HF_DWAIT HF_DWAIT;
       Ifx_UReg_8Bit reserved_70[4];
       Ifx_DMU_HF_PROCONUSR HF_PROCONUSR;
       Ifx_UReg_8Bit reserved_78[8];
       Ifx_DMU_HF_PROCONPF HF_PROCONPF;
       Ifx_DMU_HF_PROCONTP HF_PROCONTP;
       Ifx_DMU_HF_PROCONDF HF_PROCONDF;
       Ifx_DMU_HF_PROCONRAM HF_PROCONRAM;
       Ifx_DMU_HF_PROCONDBG HF_PROCONDBG;
       Ifx_UReg_8Bit reserved_94[92];
       Ifx_DMU_HF_SUSPEND HF_SUSPEND;
       Ifx_DMU_HF_MARGIN HF_MARGIN;
       Ifx_DMU_HF_ACCEN1 HF_ACCEN1;
       Ifx_DMU_HF_ACCEN0 HF_ACCEN0;
       Ifx_UReg_8Bit reserved_100[65280];
       Ifx_DMU_HP HP[4];
       Ifx_UReg_8Bit reserved_10400[64528];
       Ifx_DMU_SF_STATUS SF_STATUS;
       Ifx_DMU_SF_CONTROL SF_CONTROL;
       Ifx_DMU_SF_OPERATION SF_OPERATION;
       Ifx_UReg_8Bit reserved_2001C[20];
       Ifx_DMU_SF_EER SF_EER;
       Ifx_DMU_SF_ERRSR SF_ERRSR;
       Ifx_DMU_SF_CLRE SF_CLRE;
       Ifx_UReg_8Bit reserved_2003C[4];
       Ifx_DMU_SF_ECCR SF_ECCR;
       Ifx_DMU_SF_ECCS SF_ECCS;
       Ifx_DMU_SF_ECCC SF_ECCC;
       Ifx_DMU_SF_ECCW SF_ECCW;
       Ifx_UReg_8Bit reserved_20050[36];
       Ifx_DMU_SF_PROCONUSR SF_PROCONUSR;
       Ifx_UReg_8Bit reserved_20078[112];
       Ifx_DMU_SF_SUSPEND SF_SUSPEND;
       Ifx_DMU_SF_MARGIN SF_MARGIN;
       Ifx_UReg_8Bit reserved_200F0[65296];
       Ifx_DMU_SP_PROCONHSMCFG SP_PROCONHSMCFG;
       Ifx_DMU_SP_PROCONHSMCBS SP_PROCONHSMCBS;
       Ifx_DMU_SP_PROCONHSMCX0 SP_PROCONHSMCX0;
       Ifx_DMU_SP_PROCONHSMCX1 SP_PROCONHSMCX1;
       Ifx_DMU_SP_PROCONHSMCOTP0 SP_PROCONHSMCOTP0;
       Ifx_DMU_SP_PROCONHSMCOTP1 SP_PROCONHSMCOTP1;
       Ifx_UReg_8Bit reserved_30018[40];
       Ifx_DMU_SP_PROCONHSM SP_PROCONHSM;
       Ifx_UReg_8Bit reserved_30044[65468];
} Ifx_DMU;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDmu_reg.h" 2
# 2 ".\\output\\inc/IfxDmu_reg.h" 2
# 45 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c" 2
# 1 ".\\output\\inc/IfxDmu_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxDmu_bf.h" 1
# 2 ".\\output\\inc/IfxDmu_bf.h" 2
# 46 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c" 2
# 1 ".\\output\\inc/IfxFsi_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxFsi_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxFsi_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxFsi_regdef.h" 1
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxFsi_regdef.h"
typedef struct _Ifx_FSI_COMM_1_Bits
{
    Ifx_UReg_8Bit COMM1:8;
} Ifx_FSI_COMM_1_Bits;


typedef struct _Ifx_FSI_COMM_2_Bits
{
    Ifx_UReg_8Bit COMM2:8;
} Ifx_FSI_COMM_2_Bits;


typedef struct _Ifx_FSI_HSMCOMM_1_Bits
{
    Ifx_UReg_8Bit HSMCOMM1:8;
} Ifx_FSI_HSMCOMM_1_Bits;


typedef struct _Ifx_FSI_HSMCOMM_2_Bits
{
    Ifx_UReg_8Bit HSMCOMM2:8;
} Ifx_FSI_HSMCOMM_2_Bits;







typedef union
{
    Ifx_UReg_8Bit U;
    Ifx_SReg_8Bit I;
    Ifx_FSI_COMM_1_Bits B;
} Ifx_FSI_COMM_1;


typedef union
{
    Ifx_UReg_8Bit U;
    Ifx_SReg_8Bit I;
    Ifx_FSI_COMM_2_Bits B;
} Ifx_FSI_COMM_2;


typedef union
{
    Ifx_UReg_8Bit U;
    Ifx_SReg_8Bit I;
    Ifx_FSI_HSMCOMM_1_Bits B;
} Ifx_FSI_HSMCOMM_1;


typedef union
{
    Ifx_UReg_8Bit U;
    Ifx_SReg_8Bit I;
    Ifx_FSI_HSMCOMM_2_Bits B;
} Ifx_FSI_HSMCOMM_2;
# 138 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxFsi_regdef.h"
typedef volatile struct _Ifx_FSI
{
       Ifx_UReg_8Bit reserved_0[4];
       Ifx_FSI_COMM_1 COMM_1;
       Ifx_FSI_COMM_2 COMM_2;
       Ifx_FSI_HSMCOMM_1 HSMCOMM_1;
       Ifx_FSI_HSMCOMM_2 HSMCOMM_2;
       Ifx_UReg_8Bit reserved_8[248];
} Ifx_FSI;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxFsi_reg.h" 2
# 2 ".\\output\\inc/IfxFsi_reg.h" 2
# 47 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c" 2



# 1 ".\\output\\inc/Fls_17_Dmu.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 1
# 43 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
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
# 44 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 2



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
# 48 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 2


# 1 ".\\output\\inc/Fls_17_Dmu_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_Cfg.h" 1
# 49 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_Cfg.h"
# 1 ".\\output\\inc/MemIf_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h" 1
# 23 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h"
typedef enum
{
    MEMIF_UNINIT,
    MEMIF_IDLE,
    MEMIF_BUSY,
    MEMIF_BUSY_INTERNAL
}MemIf_StatusType;

typedef enum
{
    MEMIF_JOB_OK,
    MEMIF_JOB_FAILED,
    MEMIF_JOB_PENDING,
    MEMIF_JOB_CANCELED,
    MEMIF_BLOCK_INCONSISTENT,
    MEMIF_BLOCK_INVALID
}MemIf_JobResultType;

typedef enum
{
    MEMIF_MODE_SLOW,
    MEMIF_MODE_FAST
}MemIf_ModeType;

typedef enum
{
    MEMIF_RB_MIGRATION_RESULT_INIT_E = 0,
    MEMIF_RB_MIGRATION_RESULT_NOT_NECESSARY_E = 1,
    MEMIF_RB_MIGRATION_RESULT_TO_SMALLER_SIZE_E = 2,
    MEMIF_RB_MIGRATION_RESULT_TO_BIGGER_SIZE_E = 3,
    MEMIF_RB_MIGRATION_RESULT_NOT_DONE_E = 4,
    MEMIF_RB_MIGRATION_RESULT_DEACTIVATED_E = 5
}MemIf_Rb_MigrationResult_ten;
# 2 ".\\output\\inc/MemIf_Types.h" 2
# 50 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_Cfg.h" 2
# 2 ".\\output\\inc/Fls_17_Dmu_Cfg.h" 2
# 51 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 2
# 2593 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
typedef uint32 Fls_17_Dmu_AddressType;



typedef uint32 Fls_17_Dmu_LengthType;


typedef struct
{
  unsigned_int Reserved1 : 1;

  unsigned_int Write : 1;

  unsigned_int Erase : 1;

  unsigned_int Read : 1;

  unsigned_int Compare : 1;

  unsigned_int Reserved2 : 3;
} Fls_17_Dmu_JobStartType;





typedef uint8 Fls_17_Dmu_Job_Type;

typedef uint8 Fls_17_Dmu_HardenType;
# 2633 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
typedef struct
{



  uint32 FlsReadAddress;
  uint32 FlsWriteAddress;
  uint32 FlsEraseAddress;
# 2650 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
  Fls_17_Dmu_LengthType FlsReadLength;
  Fls_17_Dmu_LengthType FlsWriteLength;



  uint8* FlsReadBufferPtr;
  const uint8* FlsWriteBufferPtr;


  MemIf_JobResultType FlsJobResult;


  MemIf_ModeType FlsMode;


  Fls_17_Dmu_Job_Type NotifCaller;


  Fls_17_Dmu_JobStartType JobStarted;


  uint16 FlsEraseNumSectors;

  uint8 FlsEraseNumSecPerCmd;

  Fls_17_Dmu_Job_Type FlsJobType;
# 2684 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
  uint8 FlsEver;


  uint8 FlsTimeoutErr;







} Fls_17_Dmu_StateType;





typedef void (*Fls_17_Dmu_NotifFunctionPtrType)(void);







typedef struct
{
  Fls_17_Dmu_StateType *FlsStateVarPtr;



  Fls_17_Dmu_LengthType FlsFastRead;
  Fls_17_Dmu_LengthType FlsSlowRead;

  Fls_17_Dmu_NotifFunctionPtrType FlsJobEndNotificationPtr;


  Fls_17_Dmu_NotifFunctionPtrType FlsJobErrorNotificationPtr;


  Fls_17_Dmu_NotifFunctionPtrType FlsEraseVerifyErrNotifPtr;


  Fls_17_Dmu_NotifFunctionPtrType FlsProgVerifyErrNotifPtr;


  Fls_17_Dmu_NotifFunctionPtrType FlsIllegalStateNotificationPtr;


  uint32 FlsWaitStates;
# 2742 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
  MemIf_ModeType FlsDefaultMode;

} Fls_17_Dmu_ConfigType;


typedef void (*Fls_Init_Type)(const Fls_17_Dmu_ConfigType* ConfigPtr);
# 2776 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 2777 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 2
# 2800 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern void Fls_17_Dmu_Init(const Fls_17_Dmu_ConfigType*const ConfigPtr);
# 2826 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern void Fls_17_Dmu_GetVersionInfo
                               (Std_VersionInfoType* const VersionInfoPtr);
# 2860 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern Std_ReturnType Fls_17_Dmu_Erase(
                              const Fls_17_Dmu_AddressType TargetAddress,
                              const Fls_17_Dmu_LengthType Length
                               );
# 2891 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern Std_ReturnType Fls_17_Dmu_Write(
                                 const Fls_17_Dmu_AddressType TargetAddress,
                                 const uint8 *const SourceAddressPtr,
                                 const Fls_17_Dmu_LengthType Length
                                  );
# 2925 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern Std_ReturnType Fls_17_Dmu_Compare(
                            const Fls_17_Dmu_AddressType SourceAddress,
                            const uint8 *const TargetAddressPtr,
                            const Fls_17_Dmu_LengthType Length
                            );
# 2964 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern Std_ReturnType Fls_17_Dmu_BlankCheck(
                                    const Fls_17_Dmu_AddressType TargetAddress,
                                    const Fls_17_Dmu_LengthType Length
                                     );
# 3000 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern void Fls_17_Dmu_Cancel(void);
# 3060 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern MemIf_StatusType Fls_17_Dmu_GetStatus(void);
# 3089 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern MemIf_JobResultType Fls_17_Dmu_GetJobResult(void);
# 3117 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern void Fls_17_Dmu_MainFunction(void);
# 3145 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern void Fls_17_Dmu_SetMode(const MemIf_ModeType Mode);
# 3176 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern Std_ReturnType Fls_17_Dmu_Read(
                                const Fls_17_Dmu_AddressType SourceAddress,
                                uint8 *const TargetAddressPtr,
                                const Fls_17_Dmu_LengthType Length
                               );
# 3459 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern Std_ReturnType Fls_17_Dmu_GetOperStatus(void);
# 3479 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
extern void Fls_17_Dmu_ControlTimeoutDet(const uint8 Param);
# 3575 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 203 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 3576 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 2

# 1 ".\\output\\inc/Fls_17_Dmu_PBcfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_PBcfg.h" 1
# 60 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_PBcfg.h"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 156 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 61 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_PBcfg.h" 2

extern const Fls_17_Dmu_ConfigType Fls_17_Dmu_Config;
# 76 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_PBcfg.h"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 169 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 77 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Fls_17_Dmu_PBcfg.h" 2
# 2 ".\\output\\inc/Fls_17_Dmu_PBcfg.h" 2
# 3578 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h" 2
# 2 ".\\output\\inc/Fls_17_Dmu.h" 2
# 51 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c" 2


# 1 ".\\output\\inc/Fls_17_Dmu_ac.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu_ac.h" 1
# 43 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu_ac.h"
# 1 ".\\output\\inc/Fls_17_Dmu_Cfg.h" 1
# 44 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu_ac.h" 2
# 101 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu_ac.h"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 102 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu_ac.h" 2
void Fls_lResetReadCmdCycle(void);

void Fls_lClearStatusCmdCycle(void);

void Fls_lCallEraseCommand(uint32 PhysicalAddress);
void Fls_lCallWriteCommand(uint32 PhysicalAddress,
                          const Fls_17_Dmu_StateType *StatePtr,
                          uint8 WriteMode);
void Fls_lResumeEraseCmdCycle(uint32 EraseAddress);
void Fls_lUserContentCountCmdCycle(uint32 WordLineAddress);
# 138 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu_ac.h"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 203 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 139 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu_ac.h" 2
# 2 ".\\output\\inc/Fls_17_Dmu_ac.h" 2
# 54 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c" 2
# 384 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 385 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c" 2

static void Fls_lMainErase(void);

static void Fls_lMainWrite(void);

static void Fls_lMainRead(void);

static void Fls_lMainCompare(void);

static void Fls_lMainBlankCheck(void);

static void Fls_lErrorHandler(const uint8 JobType);
# 419 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static void Fls_lMainWriteJobStart(const uint32 PhysicalAddress);

static void Fls_lMainEraseJobStart(const uint32 PhysicalAddress);

static __inline__ boolean Fls_lPverChk(void);
# 479 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static __inline__ uint32 Fls_lChkSeqProtErrors(void);


static __inline__ uint32 Fls_lChkOperError(void);


static __inline__ uint32 Fls_lChkBitErrors(void);



static __inline__ uint32 Fls_lHWBusyCheck(void);


static __inline__ uint8 Fls_lGetWriteMode(void);


static __inline__ Fls_17_Dmu_LengthType Fls_lGetReadModeLength(void);

static __inline__ MemIf_ModeType Fls_lSetDefaultMode(void);
# 507 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 203 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 508 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c" 2
# 528 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section "ClearedData.Cpu0.32bit" aw 4
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 529 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c" 2



const Fls_17_Dmu_ConfigType *Fls_ConfigPtr;


static uint32 Fls_17_Dmu_InitStatus;
# 570 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 89 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 571 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c" 2
# 591 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 592 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c" 2
# 615 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
void Fls_17_Dmu_Init(const Fls_17_Dmu_ConfigType *const ConfigPtr)

{
  Fls_17_Dmu_StateType *StatePtr;
  uint32 DFlash0WaitState;
  uint32 BitChange;
  uint32 OperErrChk;




  if (ConfigPtr == ((void *)0))

  {
# 637 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  }
# 692 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  else
  {
# 707 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Fls_ConfigPtr = ConfigPtr;


    Fls_lResetReadCmdCycle();


    Fls_lClearStatusCmdCycle();




    DFlash0WaitState = (*(volatile Ifx_DMU_HF_DWAIT*)0xF804006Cu).U;
    DFlash0WaitState &= (0xFFF8FF00U);
    DFlash0WaitState |= ConfigPtr->FlsWaitStates;
# 731 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    ((*((volatile uint32 *)&(*(volatile Ifx_DMU_HF_EER*)0xF8040030u).U)) = (uint32)(0U))
                                                                            ;
# 743 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    BitChange = (*(volatile Ifx_DMU_HF_MARGIN*)0xF80400F4u).U & (0xFFFFFFFCU);





    ((*((volatile uint32 *)&(*(volatile Ifx_DMU_HF_MARGIN*)0xF80400F4u).U)) = (uint32)(BitChange))

                                                 ;
# 762 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Mcal_WriteCpuEndInitProtReg((volatile uint32 *)&(*(volatile Ifx_DMU_HF_DWAIT*)0xF804006Cu).U,DFlash0WaitState)

                         ;
# 788 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    BitChange = ((*(volatile Ifx_DMU_HF_ECCC*)0xF8040048u).U & (0xC0000000U));
    BitChange |= ((0xC0000000U) | (0x00000003U));
# 799 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Mcal_WriteCpuEndInitProtReg((volatile uint32 *)&(*(volatile Ifx_DMU_HF_ECCC*)0xF8040048u).U,BitChange)

                  ;


    BitChange = ((*(volatile Ifx_DMU_HF_ECCW*)0xF804004Cu).U & (0x3FFFFFFFU));



    Mcal_WriteCpuEndInitProtReg((volatile uint32 *)&(*(volatile Ifx_DMU_HF_ECCW*)0xF804004Cu).U,BitChange)
                                                     ;




    ((*((volatile uint32 *)&(*(volatile Ifx_DMU_HF_SUSPEND*)0xF80400F0u))) = (uint32)((0x2U)))
                                                                            ;





    (*(volatile Ifx_FSI_COMM_1*)0xF8030004u).U = ((uint8)0x00);
    (*(volatile Ifx_FSI_COMM_2*)0xF8030005u).U = ((uint8)0x00);
# 839 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    StatePtr = ConfigPtr->FlsStateVarPtr;
# 854 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    StatePtr->FlsJobResult = MEMIF_JOB_OK;


    StatePtr->FlsJobType = ((uint8)0);

    StatePtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)0));


    StatePtr->JobStarted.Write = 0U;
    StatePtr->JobStarted.Erase = 0U;


    StatePtr->FlsMode = Fls_lSetDefaultMode();
# 875 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    OperErrChk = Fls_lChkOperError();



    if(OperErrChk != 0U)
    {
# 890 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    }
    else
    {


      Fls_17_Dmu_InitStatus = ((uint32)1);
    }




  }
}
# 1189 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
void Fls_17_Dmu_GetVersionInfo(Std_VersionInfoType* const VersionInfoPtr)
{
# 1210 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  {




    ((Std_VersionInfoType*)(VersionInfoPtr))->moduleID = ((uint16)92);

    ((Std_VersionInfoType*)(VersionInfoPtr))->vendorID = ((uint16)17);

    ((Std_VersionInfoType*)(VersionInfoPtr))->sw_major_version =
      (uint8)(10U);

    ((Std_VersionInfoType*)(VersionInfoPtr))->sw_minor_version =
      (uint8)(40U);

    ((Std_VersionInfoType*)(VersionInfoPtr))->sw_patch_version =
      (uint8)(1U);
  }

}
# 1259 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
Std_ReturnType Fls_17_Dmu_Erase( const Fls_17_Dmu_AddressType TargetAddress,
                                 const Fls_17_Dmu_LengthType Length)

{
  Fls_17_Dmu_StateType* StatePtr;
  uint32 PhysicalAddress;
  uint8 JobType;
  Std_ReturnType ReturnValue;
# 1311 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  {




    if(Fls_lChkOperError() == 0U)
    {



      ReturnValue = 0x00u;


      StatePtr = Fls_ConfigPtr->FlsStateVarPtr;
# 1333 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
      PhysicalAddress = (uint32) ((0xaf000000U) + TargetAddress);

      StatePtr->FlsEraseAddress = PhysicalAddress;




      if((Length & (0x0FFFU)) == 0U)
      {



        StatePtr->FlsEraseNumSectors = (uint16) (Length >> (12U));
      }
      else
      {




        StatePtr->FlsEraseNumSectors =
          (uint16)((Length >> (12U)) + (1U));
      }







      if (StatePtr->FlsEraseNumSectors > (64U))
      {


        StatePtr->FlsEraseNumSecPerCmd = (uint8)(64U);
      }
      else
      {


        StatePtr->FlsEraseNumSecPerCmd = (uint8)StatePtr->FlsEraseNumSectors;
      }
# 1429 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
      if(Fls_lHWBusyCheck() == 0U)
      {
# 1440 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
        StatePtr->FlsEver = ((uint8)0x00);





        JobType = ((uint8)2);






        StatePtr->FlsJobResult = MEMIF_JOB_PENDING;


        StatePtr->FlsJobType = JobType ;



        StatePtr->JobStarted.Erase = 1U;

        Fls_lClearStatusCmdCycle();





        Fls_lCallEraseCommand(StatePtr->FlsEraseAddress);





        if(Fls_lChkSeqProtErrors() != 0U)
        {



          ReturnValue = 0x01u;
# 1494 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
          Fls_lErrorHandler(((uint8)2));
        }




        else if (StatePtr->FlsTimeoutErr == ((uint8)2))
        {
# 1516 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
          Fls_lErrorHandler(((uint8)2));




           ReturnValue = 0x01u;
        }
        else
        {

        }
      }
      else
      {







        ReturnValue = 0x01u;
      }
    }


    else
    {
# 1557 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
      Fls_lErrorHandler(((uint8)2));

      ReturnValue = 0x01u;
    }
  }



  return(ReturnValue);
}
# 1595 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
Std_ReturnType Fls_17_Dmu_Write( const Fls_17_Dmu_AddressType TargetAddress,
                                 const uint8 *const SourceAddressPtr,
                                 const Fls_17_Dmu_LengthType Length
                               )

{
  Fls_17_Dmu_StateType *StatePtr;
  uint32 PhysicalAddress;
  uint32 *PageStartAddressPtr;
  Std_ReturnType RetVal;
  uint8 WriteMode;
  uint8 JobType;


  RetVal = 0x00u;
# 1646 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  {
    StatePtr = Fls_ConfigPtr->FlsStateVarPtr;
# 1659 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    if(Fls_lChkOperError() == 0U)
    {




      if(Fls_lHWBusyCheck() == 0U)
      {
# 1683 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
        JobType = ((uint8)1);
# 1700 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
        PageStartAddressPtr = (uint32*)((0xaf000000U)
                                        + TargetAddress);


        PhysicalAddress = (0xaf000000U);







        StatePtr->FlsJobResult = MEMIF_JOB_PENDING;
# 1725 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
        StatePtr->FlsWriteAddress = (uint32)PageStartAddressPtr;


        StatePtr->FlsWriteLength = Length;


        StatePtr->FlsWriteBufferPtr = SourceAddressPtr;


        StatePtr->FlsJobType = JobType;
# 1779 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
        {

          StatePtr->JobStarted.Write = 1U;

          WriteMode = Fls_lGetWriteMode();



          Fls_lClearStatusCmdCycle();




          Fls_lCallWriteCommand(PhysicalAddress, StatePtr, WriteMode);





          if(Fls_lChkSeqProtErrors() != 0U)
          {
# 1818 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
            Fls_lErrorHandler(((uint8)1));
            RetVal = 0x01u;



          }




          else if (StatePtr->FlsTimeoutErr == ((uint8)1))
          {
# 1844 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
            Fls_lErrorHandler(((uint8)1));

            RetVal = 0x01u;



          }
          else
          {

          }
        }
      }
      else
      {







        RetVal = 0x01u;
      }
    }
    else
    {
# 1885 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
      Fls_lErrorHandler(((uint8)1));



      RetVal = 0x01u;
    }
  }



  return(RetVal);
}
# 1930 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
Std_ReturnType Fls_17_Dmu_Compare( const Fls_17_Dmu_AddressType SourceAddress,
                                   const uint8 *const TargetAddressPtr,
                                   const Fls_17_Dmu_LengthType Length
                                 )

{
  Fls_17_Dmu_StateType *StatePtr;
  uint32 PhysicalAddress;
  uint8 JobType;
  Std_ReturnType ReturnValue;




  ReturnValue = 0x00u;
# 2057 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  {



    JobType = ((uint8)4);

    PhysicalAddress = (uint32)((0xaf000000U) + SourceAddress);
    StatePtr = Fls_ConfigPtr->FlsStateVarPtr;

    StatePtr->FlsJobResult = MEMIF_JOB_PENDING;
# 2075 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    StatePtr->FlsReadBufferPtr = (uint8 *)TargetAddressPtr;

    StatePtr->FlsReadLength = Length;
    StatePtr->FlsReadAddress = PhysicalAddress;


    StatePtr->FlsJobType = JobType;
  }



  return(ReturnValue);
}
# 2118 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
Std_ReturnType Fls_17_Dmu_BlankCheck(
  const Fls_17_Dmu_AddressType TargetAddress,
  const Fls_17_Dmu_LengthType Length
)

{
  Fls_17_Dmu_StateType *StatePtr;
  uint32 PhysicalAddress;
  uint8 JobType;
  Std_ReturnType ReturnValue;





  ReturnValue = 0x00u;
# 2227 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  {



    JobType = ((uint8)9);
    PhysicalAddress = (uint32)((0xaf000000U) + TargetAddress);
    StatePtr = Fls_ConfigPtr->FlsStateVarPtr;

    StatePtr->FlsJobResult = MEMIF_JOB_PENDING;





    StatePtr->FlsReadLength = Length;

    StatePtr->FlsReadAddress = PhysicalAddress;


    StatePtr->FlsJobType = JobType;

  }
  return(ReturnValue);
}
# 2279 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
void Fls_17_Dmu_Cancel(void)

{
  Fls_17_Dmu_StateType *StatePtr;
  uint8 JobType;
  boolean JobCanceled;
# 2300 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  {
    StatePtr = Fls_ConfigPtr->FlsStateVarPtr;

    JobType = StatePtr->FlsJobType;
    JobCanceled = (boolean)(0 != 0);





    if(((uint8)1) == JobType)
    {
# 2328 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
      StatePtr->FlsJobType = ((uint8)0);

      StatePtr->FlsJobResult = MEMIF_JOB_CANCELED;
      JobCanceled = (boolean)(1 != 0);


      StatePtr->FlsWriteAddress = (uint32)(0x80000U);
      StatePtr->FlsWriteLength = 0U;
      StatePtr->FlsWriteBufferPtr = ((void *)0);
    }





    else if(((uint8)2) == JobType)
    {
# 2359 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
      StatePtr->FlsJobType = ((uint8)0);

      StatePtr->FlsJobResult = MEMIF_JOB_CANCELED;
      JobCanceled = (boolean)(1 != 0);


      StatePtr->FlsEraseAddress = (uint32)(0x80000U);
      StatePtr->FlsEraseNumSectors = 0U;
      StatePtr->FlsEraseNumSecPerCmd = 0U;
    }



    else if((((uint8)3) == JobType) || (((uint8)4) == JobType))
    {
# 2383 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
      StatePtr->FlsJobType = ((uint8)0);

      StatePtr->FlsJobResult = MEMIF_JOB_CANCELED;
      JobCanceled = (boolean)(1 != 0);


      StatePtr->FlsReadBufferPtr = ((void *)0);
      StatePtr->FlsReadLength = 0U;
      StatePtr->FlsReadAddress = (uint32)(0x80000U);
    }




    else if(((uint8)9) == JobType)
    {






      StatePtr->FlsJobType = ((uint8)0);

      StatePtr->FlsJobResult = MEMIF_JOB_CANCELED;
      JobCanceled = (boolean)(1 != 0);


      StatePtr->FlsReadBufferPtr = ((void *)0);
      StatePtr->FlsReadLength = 0U;
      StatePtr->FlsReadAddress = (uint32)(0x80000U);
    }
    else
    {




      StatePtr->FlsJobType = ((uint8)0);
    }





    StatePtr->JobStarted.Write = 0U;
    StatePtr->JobStarted.Erase = 0U;




    if((JobCanceled == (boolean)(1 != 0)) &&
        (Fls_ConfigPtr->FlsJobErrorNotificationPtr != ((void *)0))
      )
    {



      StatePtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)6));




      (Fls_ConfigPtr->FlsJobErrorNotificationPtr)();



      StatePtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)0));
    }

  }

}
# 2604 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
void Fls_17_Dmu_SetMode(const MemIf_ModeType Mode)
{
# 2647 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    {


      Fls_ConfigPtr->FlsStateVarPtr->FlsMode = Mode;
    }





}
# 2685 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
void Fls_17_Dmu_MainFunction(void)



{
  const Fls_17_Dmu_StateType *StatePtr;
  uint8 JobType;
  uint8 ErrorUninitFlag = 0U;
  uint32 OperStatusChk;
# 2733 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  if((Fls_ConfigPtr == ((void *)0)) ||
      (((uint32)1) != Fls_17_Dmu_InitStatus))
  {



    ErrorUninitFlag = 1;
  }



  if (ErrorUninitFlag == 0U)

    {
      StatePtr = Fls_ConfigPtr->FlsStateVarPtr;
      JobType = StatePtr->FlsJobType;



      if( JobType != ((uint8)0))
      {
        OperStatusChk = ((uint32)(*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).U & (0x00000001U));






        if(( Fls_lHWBusyCheck() == 0U) || (OperStatusChk != 0U))
        {



          switch(JobType)
          {





            case ((uint8)2):
            {




              Fls_lMainErase();
            }
            break;

            case ((uint8)1):
            {




              Fls_lMainWrite();
            }
            break;



            case ((uint8)3):
            {




              Fls_lMainRead();
            }
            break;

            case ((uint8)4):
            {




              Fls_lMainCompare();
            }
            break;

            case ((uint8)9):
            {




              Fls_lMainBlankCheck();
            }
            break;
            default:
            {

            }
            break;
          }
        }
      }




  }

}
# 2868 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
Std_ReturnType Fls_17_Dmu_Read(const Fls_17_Dmu_AddressType SourceAddress,
                               uint8 *const TargetAddressPtr,
                               const Fls_17_Dmu_LengthType Length)

{
  Fls_17_Dmu_StateType *StatePtr;
  uint32 PhysicalAddress;
  Std_ReturnType ReturnValue;
  uint8 JobType;





  ReturnValue = (Std_ReturnType)0x00u;
# 2970 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  {



    if(Fls_lHWBusyCheck() == 0U)
    {






      JobType = ((uint8)3);
      PhysicalAddress = (uint32)((0xaf000000U) + SourceAddress);
      StatePtr = Fls_ConfigPtr->FlsStateVarPtr;

      StatePtr->FlsJobResult = MEMIF_JOB_PENDING;


      StatePtr->FlsReadBufferPtr = TargetAddressPtr;






      StatePtr->FlsReadLength = Length;

      StatePtr->FlsReadAddress = PhysicalAddress;


      StatePtr->FlsJobType = JobType;
    }
    else
    {
# 3014 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
      ReturnValue = 0x01u;
    }
  }



  return(ReturnValue);
}
# 3044 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
MemIf_StatusType Fls_17_Dmu_GetStatus(void)

{
  MemIf_StatusType ReturnValue;
  uint8 JobType;







  if((Fls_ConfigPtr == ((void *)0)) || (((uint32)1) != Fls_17_Dmu_InitStatus))
  {




    ReturnValue = MEMIF_UNINIT;
  }
  else
  {
    JobType = Fls_ConfigPtr->FlsStateVarPtr->FlsJobType;



    if((JobType != ((uint8)0)))
    {




      ReturnValue = MEMIF_BUSY;
    }
    else
    {




      ReturnValue = MEMIF_IDLE;
    }
  }

  return(ReturnValue);
}
# 3115 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
MemIf_JobResultType Fls_17_Dmu_GetJobResult(void)

{

  MemIf_JobResultType RetVal;
# 3142 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  {




    RetVal = Fls_ConfigPtr->FlsStateVarPtr->FlsJobResult;
  }

  return(RetVal);
}
# 4535 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
Std_ReturnType Fls_17_Dmu_GetOperStatus(void)

{
  uint32 OPER_Status;
  Std_ReturnType RetVal;

  RetVal = 0x00u;

  OPER_Status = ((uint32)(*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).U & (0x1u));



  if(0U != OPER_Status)
  {


    RetVal = 0x01u;
  }

  return (RetVal);
}
# 4578 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
void Fls_17_Dmu_ControlTimeoutDet(const uint8 Param)

{
# 4608 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  (void)(Param);

}
# 4981 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static void Fls_lMainErase(void)



{
  Fls_17_Dmu_StateType *StatePtr;
  MemIf_JobResultType LastJobResult;
  uint32 PhysicalAddress;
  uint32 EraseSizeBytesPerCmd;
  Std_ReturnType RetVal;
  uint32 BitChange;



  RetVal = 0x00u;
  StatePtr = Fls_ConfigPtr->FlsStateVarPtr;






  EraseSizeBytesPerCmd = (uint32)((uint16)(StatePtr->FlsEraseNumSecPerCmd) <<
                                  (uint8)(12U));





  if(Fls_lChkOperError() != 0U)
  {
# 5030 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Fls_lErrorHandler(((uint8)2));




    RetVal = 0x01u;
  }
# 5078 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  if((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.EVER == 0U)
  {





    if(StatePtr->FlsEver == ((uint8)(0x1)))
    {
# 5102 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
      Fls_lErrorHandler(((uint8)2));
      StatePtr->FlsEver = (uint8)0x00;



      RetVal = 0x01u;
    }

  }
  else
  {
# 5154 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    if(StatePtr->FlsEver == ((uint8)0x00))
    {



      StatePtr->FlsEver = ((uint8)(0x1));
      RetVal = 0x01u;
    }
    else
    {
# 5175 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
      Fls_lErrorHandler(((uint8)2));



      StatePtr->FlsEver = (uint8)0x00;

      RetVal = 0x01u;

    }




  }


  if(RetVal == 0x00u)
  {





    StatePtr->FlsEraseAddress += EraseSizeBytesPerCmd;

    StatePtr->FlsEraseNumSectors -= StatePtr->FlsEraseNumSecPerCmd ;







    if (StatePtr->FlsEraseNumSectors > (64U))
    {


      StatePtr->FlsEraseNumSecPerCmd = (uint8)(64U);
    }
    else
    {


      StatePtr->FlsEraseNumSecPerCmd = (uint8)StatePtr->FlsEraseNumSectors;
    }



    if(StatePtr->FlsEraseNumSectors != 0U)
    {




      PhysicalAddress = StatePtr->FlsEraseAddress;

      Fls_lMainEraseJobStart(PhysicalAddress);
    }
    else
    {






      {





        LastJobResult = MEMIF_JOB_OK;


        BitChange = (0x0000003EU);


        ((*((volatile uint32 *)&(*(volatile Ifx_DMU_HF_CLRE*)0xF8040038u).U)) = (uint32)(BitChange))

                                                  ;




        if(Fls_ConfigPtr->FlsJobEndNotificationPtr != ((void *)0))
        {



          Fls_ConfigPtr->FlsStateVarPtr->NotifCaller =
            ((Fls_17_Dmu_Job_Type)((uint8)2));




          (Fls_ConfigPtr->FlsJobEndNotificationPtr)();
          Fls_ConfigPtr->FlsStateVarPtr->NotifCaller =
            ((Fls_17_Dmu_Job_Type)((uint8)0));
        }





        StatePtr->FlsJobResult = LastJobResult;

        StatePtr->FlsJobType = ((uint8)0);

        StatePtr->JobStarted.Erase = 0U;
      }
# 5307 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    }
  }



}
# 5402 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static void Fls_lMainEraseJobStart(const uint32 PhysicalAddress)
{


  Fls_17_Dmu_StateType *StatePtr;
  uint32 SeqProtErr;

  StatePtr = Fls_ConfigPtr->FlsStateVarPtr;


  StatePtr->JobStarted.Erase = 1U;




  Fls_lClearStatusCmdCycle();

  Fls_lCallEraseCommand(PhysicalAddress);

  SeqProtErr = Fls_lChkSeqProtErrors();




  if(SeqProtErr != 0U)
  {
# 5446 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Fls_lErrorHandler(((uint8)2));
  }




  else if (StatePtr->FlsTimeoutErr == ((uint8)2))
  {
# 5464 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Fls_lErrorHandler(((uint8)2));
  }
  else
  {

  }
}
# 5492 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static void Fls_lMainRead(void)



{
  Fls_17_Dmu_StateType *StatePtr;
  Fls_17_Dmu_LengthType ReadCount;
  MemIf_JobResultType LastJobResult;
  uint8 *SourcePtr;
  Fls_17_Dmu_LengthType MaxRead;
  uint32 BitChange;

  StatePtr = Fls_ConfigPtr->FlsStateVarPtr;


  MaxRead = Fls_lGetReadModeLength();





  if(StatePtr->FlsReadLength > MaxRead)
  {





    ReadCount = MaxRead;

    StatePtr->FlsReadLength = StatePtr->FlsReadLength - ReadCount;
  }
  else
  {



    ReadCount = StatePtr->FlsReadLength;
    StatePtr->FlsReadLength = 0U;
  }







  SourcePtr = (uint8 *)(StatePtr->FlsReadAddress);




  BitChange = (*(volatile Ifx_DMU_HF_ECCC*)0xF8040048u).U | (0x00000003U);



  Mcal_WriteCpuEndInitProtReg((volatile uint32 *)&(*(volatile Ifx_DMU_HF_ECCC*)0xF8040048u).U,BitChange)

                ;


  (_nop());
  (_nop());
  (_nop());

  do
  {
# 5570 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    if( (ReadCount >= (4U)) &&
        ( (((uint32)SourcePtr & (3U)) == 0U) &&
          (((uint32)(StatePtr->FlsReadBufferPtr) & (3U)) == 0U))
      )
    {






      *((uint32*)(StatePtr->FlsReadBufferPtr)) = *((uint32*)SourcePtr);




      (StatePtr->FlsReadBufferPtr) += (4U);




      SourcePtr += (4U);
      ReadCount -= (4U);
    }
    else
    {


      *(StatePtr->FlsReadBufferPtr) = *SourcePtr;
      (StatePtr->FlsReadBufferPtr)++;
      SourcePtr++;
      ReadCount--;
    }



  } while(((ReadCount)) > 0U);
# 5615 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  StatePtr->FlsReadAddress = (uint32)SourcePtr;




  if(Fls_lChkBitErrors() != 0U)
  {
# 5636 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Fls_lErrorHandler(((uint8)3));
  }
  else
  {



    if(StatePtr->FlsReadLength == 0U)
    {





      LastJobResult = MEMIF_JOB_OK;

      StatePtr->FlsJobType = ((uint8)0);


      StatePtr->FlsJobResult = LastJobResult;



      if(Fls_ConfigPtr->FlsJobEndNotificationPtr != ((void *)0))

      {





        Fls_ConfigPtr->FlsStateVarPtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)3));

        (Fls_ConfigPtr->FlsJobEndNotificationPtr)();
        Fls_ConfigPtr->FlsStateVarPtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)0));
      }
    }
  }
}
# 5696 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static void Fls_lMainCompare(void)
{
  Fls_17_Dmu_StateType *StatePtr;
  Fls_17_Dmu_LengthType ReadCount;
  MemIf_JobResultType LastJobResult;
  uint8 *SourcePtr;
  Fls_17_Dmu_LengthType MaxRead;
  uint32 BitChange;


  StatePtr = Fls_ConfigPtr->FlsStateVarPtr;

  LastJobResult = StatePtr->FlsJobResult;


  MaxRead = Fls_lGetReadModeLength();




  if(StatePtr->FlsReadLength > MaxRead)
  {




    ReadCount = MaxRead;

    StatePtr->FlsReadLength = StatePtr->FlsReadLength - ReadCount;
  }
  else
  {


    ReadCount = StatePtr->FlsReadLength;
    StatePtr->FlsReadLength = 0U;
  }







  SourcePtr = (uint8 *)(StatePtr->FlsReadAddress);



  BitChange = (*(volatile Ifx_DMU_HF_ECCC*)0xF8040048u).U | (0x00000003U);



  Mcal_WriteCpuEndInitProtReg((volatile uint32 *)&(*(volatile Ifx_DMU_HF_ECCC*)0xF8040048u).U,BitChange)

                ;

  (_nop());
  (_nop());
  (_nop());


  do
  {
# 5770 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    if( (((uint32)SourcePtr & ((4U) - 1U)) == 0U) &&
        ((((uint32)(StatePtr->FlsReadBufferPtr) & ((4U) - 1U)) == 0U) &&
         (ReadCount >= (4U)) )
      )
    {






      if( *(uint32*)(StatePtr->FlsReadBufferPtr) != *(uint32*)SourcePtr )
      {



        LastJobResult = MEMIF_BLOCK_INCONSISTENT;

        ReadCount = 0U;
      }
      else
      {





        StatePtr->FlsReadBufferPtr += (4U);



        SourcePtr += (4U);
        ReadCount -= (4U);
      }
    }
    else
    {




      if( *(StatePtr->FlsReadBufferPtr) != *SourcePtr )
      {


        LastJobResult = MEMIF_BLOCK_INCONSISTENT;

        ReadCount = 0U;

      }
      else
      {


        StatePtr->FlsReadBufferPtr++;
        SourcePtr++;
        ReadCount--;
      }
    }


  } while(ReadCount > 0U);
# 5840 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  StatePtr->FlsReadAddress = (uint32)SourcePtr;






  if(Fls_lChkBitErrors() != 0U)
  {
# 5861 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Fls_lErrorHandler(((uint8)4));
  }





  else if(LastJobResult == MEMIF_BLOCK_INCONSISTENT)
  {

    StatePtr->FlsJobResult = LastJobResult;







    StatePtr->FlsJobType = ((uint8)0);


    BitChange = (0x0000003EU);


    ((*((volatile uint32 *)&(*(volatile Ifx_DMU_HF_CLRE*)0xF8040038u).U)) = (uint32)(BitChange))

                                              ;




    if(Fls_ConfigPtr->FlsJobErrorNotificationPtr != ((void *)0))
    {
      Fls_ConfigPtr->FlsStateVarPtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)4));




      (Fls_ConfigPtr->FlsJobErrorNotificationPtr)();
      Fls_ConfigPtr->FlsStateVarPtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)0));
    }
  }

  else
  {




    if ( StatePtr->FlsReadLength == 0U)
    {







      LastJobResult = MEMIF_JOB_OK;


      StatePtr->FlsJobResult = LastJobResult;

      StatePtr->FlsJobType = ((uint8)0);




      if(Fls_ConfigPtr->FlsJobEndNotificationPtr != ((void *)0))
      {
        Fls_ConfigPtr->FlsStateVarPtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)4));




        (Fls_ConfigPtr->FlsJobEndNotificationPtr)();
        Fls_ConfigPtr->FlsStateVarPtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)0));
      }

    }

    else
    {

    }
  }
}
# 5969 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static void Fls_lMainBlankCheck(void)



{
  Fls_17_Dmu_StateType *StatePtr;
  Fls_17_Dmu_LengthType ReadCount;
  MemIf_JobResultType LastJobResult;
  uint8 *SourcePtr;
  Fls_17_Dmu_LengthType MaxRead;
  uint32 BitChange;


  StatePtr = Fls_ConfigPtr->FlsStateVarPtr;

  LastJobResult = StatePtr->FlsJobResult;


  MaxRead = Fls_lGetReadModeLength();





  if(StatePtr->FlsReadLength > MaxRead)
  {




    ReadCount = MaxRead;

    StatePtr->FlsReadLength = StatePtr->FlsReadLength - ReadCount;
  }
  else
  {


    ReadCount = StatePtr->FlsReadLength;
    StatePtr->FlsReadLength = 0U;
  }







  SourcePtr = (uint8 *)(StatePtr->FlsReadAddress);




  BitChange = (*(volatile Ifx_DMU_HF_ECCC*)0xF8040048u).U | (0x00000003U);





  Mcal_WriteCpuEndInitProtReg((volatile uint32 *)&(*(volatile Ifx_DMU_HF_ECCC*)0xF8040048u).U,BitChange)

                ;

  (_nop());
  (_nop());
  (_nop());
  do
  {
# 6047 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    if((((uint32)SourcePtr & ((4U) - 1U)) == 0U) &&
        (ReadCount >= (4U)))
    {





      if((0U) != *(uint32*)SourcePtr )
      {



        LastJobResult = MEMIF_BLOCK_INCONSISTENT;

        ReadCount = 0U;
      }
      else
      {
# 6076 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
        SourcePtr += (4U);
        ReadCount -= (4U);
      }
    }
    else
    {




      if( (0U) != *SourcePtr )
      {
        LastJobResult = MEMIF_BLOCK_INCONSISTENT;

        ReadCount = 0U;

      }
      else
      {



        SourcePtr++;
        ReadCount--;
      }
    }



  } while(ReadCount > 0U);
# 6114 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  StatePtr->FlsReadAddress = (uint32)SourcePtr;






  if(Fls_lChkBitErrors() != 0U)
  {
# 6134 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Fls_lErrorHandler(((uint8)9));
  }





  else if(LastJobResult == MEMIF_BLOCK_INCONSISTENT)
  {







    StatePtr->FlsJobResult = LastJobResult;


    StatePtr->FlsJobType = ((uint8)0);


    BitChange = (0x0000003EU);


    ((*((volatile uint32 *)&(*(volatile Ifx_DMU_HF_CLRE*)0xF8040038u).U)) = (uint32)(BitChange))

                                              ;




    if(Fls_ConfigPtr->FlsJobErrorNotificationPtr != ((void *)0))
    {
      Fls_ConfigPtr->FlsStateVarPtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)9));




      (Fls_ConfigPtr->FlsJobErrorNotificationPtr)();
      Fls_ConfigPtr->FlsStateVarPtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)0));
    }

  }

  else
  {




    if ( StatePtr->FlsReadLength == 0U)
    {






      LastJobResult = MEMIF_JOB_OK;


      StatePtr->FlsJobResult = LastJobResult;


      StatePtr->FlsJobType = ((uint8)0);





      if(Fls_ConfigPtr->FlsJobEndNotificationPtr != ((void *)0))

      {
        Fls_ConfigPtr->FlsStateVarPtr->NotifCaller =
          ((Fls_17_Dmu_Job_Type)((uint8)9));



        (Fls_ConfigPtr->FlsJobEndNotificationPtr)();
        Fls_ConfigPtr->FlsStateVarPtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)0));
      }

    }

    else
    {

    }
  }
}
# 6245 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static void Fls_lMainWrite(void)



{
  Fls_17_Dmu_StateType *StatePtr;
  MemIf_JobResultType LastJobResult;
  uint32 PhysicalAddress;
  boolean Error;
  uint8 PageLength;
  uint32 BitChange;


  StatePtr = Fls_ConfigPtr->FlsStateVarPtr;






  PhysicalAddress = (0xaf000000U);





  if(Fls_lChkOperError() != 0U)
  {
# 6288 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Error = (boolean)(1 != 0);
  }
# 6301 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  else if((boolean)(1 != 0) == Fls_lPverChk())
  {
    Error = (boolean)(1 != 0);
# 6317 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
  }


  else
  {



    if( Fls_lGetWriteMode() == (0U))
    {


      PageLength = (8U);
    }
    else
    {


      PageLength = (32U);
    }
# 6349 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Error = (boolean)(0 != 0);






    StatePtr->FlsWriteAddress += PageLength;

    StatePtr->FlsWriteLength -= PageLength;




    StatePtr->FlsWriteBufferPtr = (StatePtr->FlsWriteBufferPtr +
                                   PageLength);

  }



  if(Error == (boolean)(0 != 0))
  {
# 6395 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    if(StatePtr->FlsWriteLength == 0U)
    {






      {







        LastJobResult = MEMIF_JOB_OK;

        StatePtr->FlsJobResult = LastJobResult;

        StatePtr->FlsJobType = ((uint8)0);

        StatePtr->JobStarted.Write = 0U;




        BitChange = (0x0000003EU);


        ((*((volatile uint32 *)&(*(volatile Ifx_DMU_HF_CLRE*)0xF8040038u).U)) = (uint32)(BitChange))

                                                  ;



        if(Fls_ConfigPtr->FlsJobEndNotificationPtr != ((void *)0))
        {



          Fls_ConfigPtr->FlsStateVarPtr->NotifCaller =
            ((Fls_17_Dmu_Job_Type)((uint8)1));




          (Fls_ConfigPtr->FlsJobEndNotificationPtr)();
          Fls_ConfigPtr->FlsStateVarPtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)0));
        }
      }
# 6487 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    }
    else
    {
# 6519 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
      {



        Fls_lMainWriteJobStart(PhysicalAddress);
      }
    }
  }
  else
  {


    Fls_lErrorHandler(((uint8)1));
  }

}
# 6556 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static void Fls_lMainWriteJobStart(const uint32 PhysicalAddress)
{
  Fls_17_Dmu_StateType *StatePtr;
  uint32 SeqProtErr;
  uint8 WriteMode;

  StatePtr = Fls_ConfigPtr->FlsStateVarPtr;


  StatePtr->JobStarted.Write = 1U;

  WriteMode = Fls_lGetWriteMode();




  Fls_lClearStatusCmdCycle();


  Fls_lCallWriteCommand(PhysicalAddress, StatePtr, WriteMode);

  SeqProtErr = Fls_lChkSeqProtErrors();





  if(SeqProtErr != 0U)
  {
# 6600 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Fls_lErrorHandler(((uint8)1));
  }




  else if (StatePtr->FlsTimeoutErr == ((uint8)1))
  {
# 6617 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
    Fls_lErrorHandler(((uint8)1));
  }
  else
  {

  }
}
# 6817 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static void Fls_lErrorHandler(const uint8 JobType)
{
  Fls_17_Dmu_StateType *StatePtr;
  uint32 BitChange;

  StatePtr = Fls_ConfigPtr->FlsStateVarPtr;




  if(JobType == ((uint8)2))
  {



    StatePtr->JobStarted.Erase = 0U;
  }



  else if(JobType == ((uint8)1))
  {



    StatePtr->JobStarted.Write = 0U;
  }
  else
  {

  }





  if(StatePtr->FlsJobType == JobType)
  {



    StatePtr->FlsJobType = ((uint8)0);
  }







  StatePtr->FlsJobResult = MEMIF_JOB_FAILED;


  BitChange = (0x0000003EU);


  ((*((volatile uint32 *)&(*(volatile Ifx_DMU_HF_CLRE*)0xF8040038u).U)) = (uint32)(BitChange))

                                            ;




  if(Fls_ConfigPtr->FlsJobErrorNotificationPtr != ((void *)0))
  {


    Fls_ConfigPtr->FlsStateVarPtr->NotifCaller = JobType;

    (Fls_ConfigPtr->FlsJobErrorNotificationPtr)();
    Fls_ConfigPtr->FlsStateVarPtr->NotifCaller = ((Fls_17_Dmu_Job_Type)((uint8)0));
  }
}
# 6981 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static __inline__ boolean Fls_lPverChk(void)
{
  uint32 TempFSR;
  boolean RetVal;

  TempFSR = (uint32)(*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).U;




  if ((((TempFSR >> (3u))) &
       (0x1u)) == 1U)
  {


    RetVal = (boolean)(1 != 0);
  }
  else
  {


    RetVal = (boolean)(0 != 0);
  }
  return (RetVal);
}
# 7977 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static __inline__ uint8 Fls_lGetWriteMode(void)
{
  const Fls_17_Dmu_StateType *StatePtr;
  uint8 RetVal;

  RetVal = (1U);
  StatePtr = Fls_ConfigPtr->FlsStateVarPtr;



  if((StatePtr->FlsWriteLength <=
      ((32U) - (8U)))
      || ((StatePtr->FlsWriteAddress
           & ((32U) - 1U)) != 0U))
  {


    RetVal = (0U);
  }

  return RetVal;
}
# 8019 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static __inline__ Fls_17_Dmu_LengthType Fls_lGetReadModeLength(void)
{
  const Fls_17_Dmu_StateType *StatePtr;
  Fls_17_Dmu_LengthType MaxRead;

  StatePtr = Fls_ConfigPtr->FlsStateVarPtr;
  MaxRead = Fls_ConfigPtr->FlsFastRead;




  if(StatePtr->FlsMode == MEMIF_MODE_SLOW)
  {



    MaxRead = Fls_ConfigPtr->FlsSlowRead;
  }

  return MaxRead;
}
# 8060 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static __inline__ uint32 Fls_lChkSeqProtErrors(void)
{
  uint32 RetVal;

  RetVal = ((uint32)(*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).U & (0x00000006U));

  return RetVal;
}
# 8088 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static __inline__ uint32 Fls_lChkOperError(void)
{
  uint32 RetVal;


  RetVal = ((uint32)(*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).U & (0x00000001U));



  if(RetVal != 0U)
  {
    RetVal = (0x00000001U);




    if(Fls_ConfigPtr->FlsIllegalStateNotificationPtr != ((void *)0))
    {




      (Fls_ConfigPtr->FlsIllegalStateNotificationPtr)();
    }
  }

  return (RetVal);
}
# 8136 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static __inline__ uint32 Fls_lChkBitErrors(void)
{
  uint32 RetVal;
  uint32 BitChange;




  RetVal = ((uint32)(*(volatile Ifx_DMU_HF_ECCS*)0xF8040044u).U & (0x00080000U));



  if(RetVal != 0U)
  {



    BitChange = (*(volatile Ifx_DMU_HF_ECCC*)0xF8040048u).U | (0x00000003U);


    Mcal_WriteCpuEndInitProtReg((volatile uint32 *)&(*(volatile Ifx_DMU_HF_ECCC*)0xF8040048u).U,BitChange)

                  ;
  }
  return RetVal;
}
# 8182 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static __inline__ uint32 Fls_lHWBusyCheck(void)
{
  uint32 RetVal;

  RetVal = ((uint32)(*(volatile Ifx_DMU_HF_STATUS*)0xF8040010u).U & (0x00000001U));

  return RetVal;
}
# 8210 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
static __inline__ MemIf_ModeType Fls_lSetDefaultMode(void)
{
  return (Fls_ConfigPtr->FlsDefaultMode);
}
# 8262 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 203 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 8263 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu.c" 2
