# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
# 41 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
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
# 42 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c" 2


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
# 45 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c" 2


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
# 48 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c" 2
# 75 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 76 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c" 2
static void Fls_lWriteCmdCycles(const uint32 StartAddress,
                        const uint32 PageAddress,
                        const Fls_17_Dmu_AddressType* const ProgramDataPtr,
                        const uint8 WriteMode);






static void Fls_lEraseCmdCycles(const uint32 EraseAddress);
# 100 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 203 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 101 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c" 2

static __inline__ boolean Fls_lCmdCycleTimeout(const uint32 InnerCount);

static __inline__ void Fls_lCycle5554(const uint32 Address, const uint32 Data);

static __inline__ void Fls_lCycleAAA8(const uint32 Address, const uint32 Data);

static __inline__ void Fls_lCycleAA50(const uint32 Address, const uint32 Data);

static __inline__ void Fls_lCycleAA58(const uint32 Address, const uint32 Data);

static __inline__ void Fls_lEnterPageMode(const uint32 Address, const uint32 Data);

static __inline__ void Fls_lLoadPage(const uint32 Address,
                                     const Fls_17_Dmu_AddressType* DataPtr);
# 137 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 76 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section "ClearedData.Cpu0.32bit" aw 4
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 138 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c" 2
extern const Fls_17_Dmu_ConfigType *Fls_ConfigPtr;
# 153 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 89 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 154 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c" 2
# 196 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 197 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c" 2
static void Fls_lWriteCmdCycles(const uint32 StartAddress,
                         const uint32 PageAddress,
                         const Fls_17_Dmu_AddressType* const ProgramDataPtr,
                         const uint8 WriteMode
                       )
{
  uint32 InnerCount;
  const Fls_17_Dmu_AddressType* pdata;
  Fls_17_Dmu_StateType* StatePtr;
  uint8 FlsSqerProtErr;
  StatePtr = Fls_ConfigPtr->FlsStateVarPtr;
  StatePtr->FlsTimeoutErr = 0U;
  FlsSqerProtErr = 0U;
  pdata = ProgramDataPtr;
  uint32 TimeOutCount;
  uint32 TimeOutCountInitial;
  uint32 TimeOutResolution;
  uint32 MeasuredTicks;


  Fls_lEnterPageMode(StartAddress, ((uint32)(0x0000005DU)));

  InnerCount = 0U;
# 229 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
  while(((*(volatile Ifx_DMU_HF_STATUS*)0xF8040010u).B.DFPAGE != 1U) &&
        (InnerCount < (25U)) &&
        (((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.SQER != 1U) && ((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.PROER != 1U)))
  {
    InnerCount++;
  }






  if(((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.SQER != 0U) || ((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.PROER != 0U))
  {



    FlsSqerProtErr = (uint8)1;
  }




  if ((boolean)(1 != 0) == Fls_lCmdCycleTimeout(InnerCount))
  {
    StatePtr->FlsTimeoutErr = ((uint8)1);
  }



  else if (FlsSqerProtErr == (uint8)0)

  {



    if(WriteMode == (1U))
    {
      InnerCount = ((32U) / (8U));
    }
    else
    {
      InnerCount = ((8U) / (8U));
    }



    while(InnerCount != 0U)
    {

      Fls_lLoadPage(StartAddress, pdata);





      pdata += (2U);
      InnerCount--;
    }


    Fls_lCycleAA50(StartAddress, PageAddress);

    Fls_lCycleAA58(StartAddress, ((uint32)(0x00000000U)));


    Fls_lCycleAAA8(StartAddress, ((uint32)(0x000000A0U)));





    if(WriteMode == (1U))
    {
      Fls_lCycleAAA8(StartAddress, ((uint32)(0x000000A6U)));
    }
    else
    {
      Fls_lCycleAAA8(StartAddress, ((uint32)(0x000000AAU)));
    }

    InnerCount = 0U;
# 320 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
    while(((*(volatile Ifx_DMU_HF_OPERATION*)0xF8040018u).B.PROG != 1U) &&
          (InnerCount < (25U)) &&
          (((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.SQER != 1U) && ((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.PROER != 1U)))
    {



      InnerCount++;
    }




    if ((boolean)(1 != 0) == Fls_lCmdCycleTimeout(InnerCount))
    {
      StatePtr->FlsTimeoutErr = ((uint8)1);
    }




    else if(((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.SQER != 1U) && ((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.PROER != 1U))
    {



      TimeOutResolution = Mcal_DelayTickResolution();
      TimeOutCount = (uint32)(100U) / TimeOutResolution;
      TimeOutCountInitial = Mcal_DelayGetTick();

      do
      {
        MeasuredTicks = Mcal_DelayGetTick() - TimeOutCountInitial;

      } while (TimeOutCount > MeasuredTicks);
    }
    else
    {

    }
  }

  else
  {

  }
}
# 395 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
static void Fls_lEraseCmdCycles(const uint32 EraseAddress)
{
  uint32 InnerCount;
  uint32 StartAddress;
  uint8 EraseNumSec;
  uint32 TimeOutCount;
  uint32 TimeOutCountInitial;
  uint32 TimeOutResolution;
  uint32 MeasuredTicks;
  Fls_17_Dmu_StateType* StatePtr;

  StatePtr = Fls_ConfigPtr->FlsStateVarPtr;
  StatePtr->FlsTimeoutErr = 0U;
  EraseNumSec = StatePtr->FlsEraseNumSecPerCmd;
  StartAddress = (0xaf000000U);

  Fls_lCycleAA50(StartAddress, EraseAddress);

  Fls_lCycleAA58(StartAddress, EraseNumSec);

  Fls_lCycleAAA8(StartAddress, ((uint32)(0x00000080U)));

  Fls_lCycleAAA8(StartAddress, ((uint32)(0x00000050U)));

  InnerCount = 0U;
# 429 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
  while(((*(volatile Ifx_DMU_HF_OPERATION*)0xF8040018u).B.ERASE != 1U) &&
        (InnerCount < (25U)) &&
        (((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.SQER != 1U) && ((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.PROER != 1U)))
  {
    InnerCount++;
  }





  if ((boolean)(1 != 0) == Fls_lCmdCycleTimeout(InnerCount))
  {
    StatePtr->FlsTimeoutErr = ((uint8)2);
  }





  else if(((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.SQER != 1U) && ((*(volatile Ifx_DMU_HF_ERRSR*)0xF8040034u).B.PROER != 1U))
  {

    TimeOutResolution = Mcal_DelayTickResolution();
    TimeOutCount = (uint32)(100U) / TimeOutResolution;
    TimeOutCountInitial = Mcal_DelayGetTick();

    do
    {
      MeasuredTicks = Mcal_DelayGetTick() - TimeOutCountInitial;

    } while (TimeOutCount > MeasuredTicks);
  }
  else
  {

  }
}
# 494 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
void Fls_lCallEraseCommand(const uint32 PhysicalAddress)
{

  Fls_lEraseCmdCycles(PhysicalAddress);

}
# 521 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
void Fls_lCallWriteCommand(const uint32 PhysicalAddress,
                          const Fls_17_Dmu_StateType *const StatePtr,
                          const uint8 WriteMode)
{
    Fls_lWriteCmdCycles(PhysicalAddress,
                StatePtr->FlsWriteAddress,




                (const Fls_17_Dmu_AddressType*)StatePtr->FlsWriteBufferPtr,
                WriteMode);
}
# 553 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
void Fls_lResetReadCmdCycle(void)
{
  Fls_lCycle5554((0xaf000000U), ((uint32)(0x000000F0U)));
}
# 576 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
void Fls_lClearStatusCmdCycle(void)
{

  Fls_lCycle5554((0xaf000000U), ((uint32)(0x000000FAU)));

}
# 640 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
void Fls_lUserContentCountCmdCycle(const uint32 WordLineAddress)
{
  uint32 TimeOutCount;
  uint32 TimeOutCountInitial;
  uint32 TimeOutResolution;
  uint32 MeasuredTicks;

  uint32 StartAddress;
  StartAddress = (0xaf000000U);

  Fls_lCycleAA50(StartAddress, WordLineAddress);

  Fls_lCycleAA58(StartAddress, ((uint32)(0x00000000U)));

  Fls_lCycleAAA8(StartAddress, ((uint32)(0x00000060U)));

  Fls_lCycleAAA8(StartAddress, ((uint32)(0x00000014U)));


  TimeOutResolution = Mcal_DelayTickResolution();
  TimeOutCount = (uint32)(100U) / TimeOutResolution;
  TimeOutCountInitial = Mcal_DelayGetTick();

  do
  {
    MeasuredTicks = Mcal_DelayGetTick() - TimeOutCountInitial;

  } while (TimeOutCount > MeasuredTicks);

}
# 693 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
static __inline__ boolean Fls_lCmdCycleTimeout(const uint32 InnerCount)
{
  boolean RetVal;




  if (InnerCount >= (uint32)(25U))
  {


    RetVal = (boolean)(1 != 0);
  }
  else
  {


    RetVal = (boolean)(0 != 0);
  }
  return (RetVal);
}
# 734 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
static __inline__ void Fls_lCycle5554(const uint32 Address, const uint32 Data)
{
  uint32 StartAddress;
  StartAddress = ((Address) & ((uint32)0xFFFF0000U)) + ((uint32)(0x00005554U));






  *((uint32*)StartAddress) = Data;
  _dsync();
  return;
}
# 768 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
static __inline__ void Fls_lCycleAAA8(const uint32 Address, const uint32 Data)
{
  uint32 StartAddress;
  StartAddress = ((Address) & ((uint32)0xFFFF0000U)) + ((uint32)(0x0000AAA8U));






  *((uint32*)StartAddress) = Data;
  _dsync();
  return;
}
# 801 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
static __inline__ void Fls_lCycleAA50(const uint32 Address, const uint32 Data)
{

  uint32 StartAddress;
  StartAddress = ((Address) & ((uint32)0xFFFF0000U)) + ((uint32)(0x0000AA50U));






  *((uint32*)StartAddress) = Data;
  _dsync();
  return;
}
# 835 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
static __inline__ void Fls_lCycleAA58(const uint32 Address, const uint32 Data)
{
  uint32 StartAddress;
  StartAddress = ((Address) & ((uint32)0xFFFF0000U)) + ((uint32)(0x0000AA58U));






  *((uint32*)StartAddress) = Data;
  _dsync();
  return;
}
# 870 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
static __inline__ void Fls_lEnterPageMode(const uint32 Address, const uint32 Data)
{
  uint32 StartAddress;

  StartAddress = ((Address) & ((uint32)0xFFFF0000U)) + ((uint32)(0x00005554U));






  *((uint32*)StartAddress) = Data;
  _dsync();

  return;
}
# 906 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
static __inline__ void Fls_lLoadPage(const uint32 Address,
                                const Fls_17_Dmu_AddressType* DataPtr)
{
  Fls_17_Dmu_AddressType* StartAddress;
  StartAddress = (Fls_17_Dmu_AddressType *)
# 920 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
               (((Address) & ((uint32)0xFFFF0000U)) + ((uint32)(0x000055F0U)));

  *StartAddress = *DataPtr;
  _dsync();




  *(StartAddress + 1) = *(DataPtr + 1U);
  _dsync();
  return;
}
# 953 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c"
# 1 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h" 1
# 203 ".\\output\\inc/..\\..\\Integration\\mcal\\Fls_17_Dmu_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Fls_17_Dmu_MemMap.h" 2
# 954 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\src\\Fls_17_Dmu_ac.c" 2
