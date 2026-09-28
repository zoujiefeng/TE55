# 1 "Integration\\TC38x\\IFX_Os.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Integration\\TC38x\\IFX_Os.c"
# 35 "Integration\\TC38x\\IFX_Os.c"
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
# 36 "Integration\\TC38x\\IFX_Os.c" 2


# 1 ".\\output\\inc/IfxCpu_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_reg.h" 1
# 65 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h" 2
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef struct _Ifx_CPU_A_Bits
{
    volatile unsigned int ADDR:32;
} Ifx_CPU_A_Bits;


typedef struct _Ifx_CPU_BIV_Bits
{
    volatile unsigned int VSS:1;
    volatile unsigned int BIV:31;
} Ifx_CPU_BIV_Bits;


typedef struct _Ifx_CPU_BLK_OMASK_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int OMASK:12;
    volatile unsigned int ONE:11;
    volatile unsigned int reserved_28:4;
} Ifx_CPU_BLK_OMASK_Bits;


typedef struct _Ifx_CPU_BLK_OTAR_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int TBASE:23;
    volatile unsigned int reserved_28:4;
} Ifx_CPU_BLK_OTAR_Bits;


typedef struct _Ifx_CPU_BLK_RABR_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int OBASE:17;
    volatile unsigned int reserved_22:2;
    volatile unsigned int OMEM:4;
    volatile unsigned int reserved_28:3;
    volatile unsigned int OVEN:1;
} Ifx_CPU_BLK_RABR_Bits;


typedef struct _Ifx_CPU_BTV_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int BTV:31;
} Ifx_CPU_BTV_Bits;


typedef struct _Ifx_CPU_CCNT_Bits
{
    volatile unsigned int COUNTVALUE:31;
    volatile unsigned int SOVF:1;
} Ifx_CPU_CCNT_Bits;


typedef struct _Ifx_CPU_CCTRL_Bits
{
    volatile unsigned int CM:1;
    volatile unsigned int CE:1;
    volatile unsigned int M1:3;
    volatile unsigned int M2:3;
    volatile unsigned int M3:3;
    volatile unsigned int reserved_11:21;
} Ifx_CPU_CCTRL_Bits;


typedef struct _Ifx_CPU_COMPAT_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int RM:1;
    volatile unsigned int SP:1;
    volatile unsigned int reserved_5:27;
} Ifx_CPU_COMPAT_Bits;


typedef struct _Ifx_CPU_CORE_ID_Bits
{
    volatile unsigned int CORE_ID:3;
    volatile unsigned int reserved_3:29;
} Ifx_CPU_CORE_ID_Bits;


typedef struct _Ifx_CPU_CPR_L_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int LOWBND:27;
} Ifx_CPU_CPR_L_Bits;


typedef struct _Ifx_CPU_CPR_U_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int UPPBND:27;
} Ifx_CPU_CPR_U_Bits;


typedef struct _Ifx_CPU_CPU_ID_Bits
{
    volatile unsigned int MOD_REV:8;
    volatile unsigned int MOD_32B:8;
    volatile unsigned int MOD:16;
} Ifx_CPU_CPU_ID_Bits;


typedef struct _Ifx_CPU_CPXE_Bits
{
    volatile unsigned int XE_N:10;
    volatile unsigned int reserved_10:22;
} Ifx_CPU_CPXE_Bits;


typedef struct _Ifx_CPU_CREVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_CREVT_Bits;


typedef struct _Ifx_CPU_CUS_ID_Bits
{
    volatile unsigned int CID:3;
    volatile unsigned int reserved_3:29;
} Ifx_CPU_CUS_ID_Bits;


typedef struct _Ifx_CPU_D_Bits
{
    volatile unsigned int DATA:32;
} Ifx_CPU_D_Bits;


typedef struct _Ifx_CPU_DATR_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int SBE:1;
    volatile unsigned int reserved_4:5;
    volatile unsigned int CWE:1;
    volatile unsigned int CFE:1;
    volatile unsigned int reserved_11:3;
    volatile unsigned int SOE:1;
    volatile unsigned int reserved_15:1;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_DATR_Bits;


typedef struct _Ifx_CPU_DBGSR_Bits
{
    volatile unsigned int DE:1;
    volatile unsigned int HALT:2;
    volatile unsigned int SIH:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int reserved_5:1;
    volatile unsigned int PREVSUSP:1;
    volatile unsigned int PEVT:1;
    volatile unsigned int EVTSRC:5;
    volatile unsigned int reserved_13:19;
} Ifx_CPU_DBGSR_Bits;


typedef struct _Ifx_CPU_DBGTCR_Bits
{
    volatile unsigned int DTA:1;
    volatile unsigned int reserved_1:31;
} Ifx_CPU_DBGTCR_Bits;


typedef struct _Ifx_CPU_DCON0_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int DCBYP:1;
    volatile unsigned int reserved_2:30;
} Ifx_CPU_DCON0_Bits;


typedef struct _Ifx_CPU_DCON2_Bits
{
    volatile unsigned int DCACHE_SZE:16;
    volatile unsigned int DSCRATCH_SZE:16;
} Ifx_CPU_DCON2_Bits;


typedef struct _Ifx_CPU_DCX_Bits
{
    volatile unsigned int reserved_0:6;
    volatile unsigned int DCXVALUE:26;
} Ifx_CPU_DCX_Bits;


typedef struct _Ifx_CPU_DEADD_Bits
{
    volatile unsigned int ERROR_ADDRESS:32;
} Ifx_CPU_DEADD_Bits;


typedef struct _Ifx_CPU_DIEAR_Bits
{
    volatile unsigned int TA:32;
} Ifx_CPU_DIEAR_Bits;


typedef struct _Ifx_CPU_DIETR_Bits
{
    volatile unsigned int IED:1;
    volatile unsigned int IE_T:1;
    volatile unsigned int IE_C:1;
    volatile unsigned int IE_S:1;
    volatile unsigned int IE_BI:1;
    volatile unsigned int E_INFO:6;
    volatile unsigned int IE_UNC:1;
    volatile unsigned int IE_SP:1;
    volatile unsigned int IE_BS:1;
    volatile unsigned int IE_DLMU:1;
    volatile unsigned int IE_LPB:1;
    volatile unsigned int IE_MTMV:1;
    volatile unsigned int reserved_17:15;
} Ifx_CPU_DIETR_Bits;


typedef struct _Ifx_CPU_DLMU_SPROT_RGNACCENA_R_Bits
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
} Ifx_CPU_DLMU_SPROT_RGNACCENA_R_Bits;


typedef struct _Ifx_CPU_DLMU_SPROT_RGNACCENA_W_Bits
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
} Ifx_CPU_DLMU_SPROT_RGNACCENA_W_Bits;


typedef struct _Ifx_CPU_DLMU_SPROT_RGNACCENB_R_Bits
{
    volatile unsigned int EN32:1;
    volatile unsigned int EN33:1;
    volatile unsigned int EN34:1;
    volatile unsigned int EN35:1;
    volatile unsigned int EN36:1;
    volatile unsigned int EN37:1;
    volatile unsigned int EN38:1;
    volatile unsigned int EN39:1;
    volatile unsigned int EN40:1;
    volatile unsigned int EN41:1;
    volatile unsigned int EN42:1;
    volatile unsigned int EN43:1;
    volatile unsigned int EN44:1;
    volatile unsigned int EN45:1;
    volatile unsigned int EN46:1;
    volatile unsigned int EN47:1;
    volatile unsigned int EN48:1;
    volatile unsigned int EN49:1;
    volatile unsigned int EN50:1;
    volatile unsigned int EN51:1;
    volatile unsigned int EN52:1;
    volatile unsigned int EN53:1;
    volatile unsigned int EN54:1;
    volatile unsigned int EN55:1;
    volatile unsigned int EN56:1;
    volatile unsigned int EN57:1;
    volatile unsigned int EN58:1;
    volatile unsigned int EN59:1;
    volatile unsigned int EN60:1;
    volatile unsigned int EN61:1;
    volatile unsigned int EN62:1;
    volatile unsigned int EN63:1;
} Ifx_CPU_DLMU_SPROT_RGNACCENB_R_Bits;


typedef struct _Ifx_CPU_DLMU_SPROT_RGNACCENB_W_Bits
{
    volatile unsigned int EN32:1;
    volatile unsigned int EN33:1;
    volatile unsigned int EN34:1;
    volatile unsigned int EN35:1;
    volatile unsigned int EN36:1;
    volatile unsigned int EN37:1;
    volatile unsigned int EN38:1;
    volatile unsigned int EN39:1;
    volatile unsigned int EN40:1;
    volatile unsigned int EN41:1;
    volatile unsigned int EN42:1;
    volatile unsigned int EN43:1;
    volatile unsigned int EN44:1;
    volatile unsigned int EN45:1;
    volatile unsigned int EN46:1;
    volatile unsigned int EN47:1;
    volatile unsigned int EN48:1;
    volatile unsigned int EN49:1;
    volatile unsigned int EN50:1;
    volatile unsigned int EN51:1;
    volatile unsigned int EN52:1;
    volatile unsigned int EN53:1;
    volatile unsigned int EN54:1;
    volatile unsigned int EN55:1;
    volatile unsigned int EN56:1;
    volatile unsigned int EN57:1;
    volatile unsigned int EN58:1;
    volatile unsigned int EN59:1;
    volatile unsigned int EN60:1;
    volatile unsigned int EN61:1;
    volatile unsigned int EN62:1;
    volatile unsigned int EN63:1;
} Ifx_CPU_DLMU_SPROT_RGNACCENB_W_Bits;


typedef struct _Ifx_CPU_DLMU_SPROT_RGNLA_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int ADDR:27;
} Ifx_CPU_DLMU_SPROT_RGNLA_Bits;


typedef struct _Ifx_CPU_DLMU_SPROT_RGNUA_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int ADDR:27;
} Ifx_CPU_DLMU_SPROT_RGNUA_Bits;


typedef struct _Ifx_CPU_DMS_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int DMSVALUE:31;
} Ifx_CPU_DMS_Bits;


typedef struct _Ifx_CPU_DPRE_Bits
{
    volatile unsigned int RE_N:18;
    volatile unsigned int reserved_18:14;
} Ifx_CPU_DPRE_Bits;


typedef struct _Ifx_CPU_DPR_L_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int LOWBND:29;
} Ifx_CPU_DPR_L_Bits;


typedef struct _Ifx_CPU_DPR_U_Bits
{
    volatile unsigned int reserved_0:3;
    volatile unsigned int UPPBND:29;
} Ifx_CPU_DPR_U_Bits;


typedef struct _Ifx_CPU_DPWE_Bits
{
    volatile unsigned int WE_N:18;
    volatile unsigned int reserved_18:14;
} Ifx_CPU_DPWE_Bits;


typedef struct _Ifx_CPU_DSTR_Bits
{
    volatile unsigned int SRE:1;
    volatile unsigned int GAE:1;
    volatile unsigned int LBE:1;
    volatile unsigned int DRE:1;
    volatile unsigned int reserved_4:2;
    volatile unsigned int CRE:1;
    volatile unsigned int reserved_7:7;
    volatile unsigned int DTME:1;
    volatile unsigned int LOE:1;
    volatile unsigned int SDE:1;
    volatile unsigned int SCE:1;
    volatile unsigned int CAC:1;
    volatile unsigned int MPE:1;
    volatile unsigned int CLE:1;
    volatile unsigned int reserved_21:3;
    volatile unsigned int ALN:1;
    volatile unsigned int reserved_25:7;
} Ifx_CPU_DSTR_Bits;


typedef struct _Ifx_CPU_EXEVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_EXEVT_Bits;


typedef struct _Ifx_CPU_FCX_Bits
{
    volatile unsigned int FCXO:16;
    volatile unsigned int FCXS:4;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_FCX_Bits;


typedef struct _Ifx_CPU_FLASHCON0_Bits
{
    volatile unsigned int TAG1:6;
    volatile unsigned int reserved_6:2;
    volatile unsigned int TAG2:6;
    volatile unsigned int reserved_14:2;
    volatile unsigned int TAG3:6;
    volatile unsigned int reserved_22:2;
    volatile unsigned int TAG4:6;
    volatile unsigned int reserved_30:2;
} Ifx_CPU_FLASHCON0_Bits;


typedef struct _Ifx_CPU_FLASHCON1_Bits
{
    volatile unsigned int STALL:1;
    volatile unsigned int reserved_1:15;
    volatile unsigned int MASKUECC:2;
    volatile unsigned int reserved_18:6;
    volatile unsigned int reserved_24:2;
    volatile unsigned int reserved_26:6;
} Ifx_CPU_FLASHCON1_Bits;


typedef struct _Ifx_CPU_FLASHCON2_Bits
{
    volatile unsigned int RECDIS:2;
    volatile unsigned int ECCCORDIS:2;
    volatile unsigned int reserved_4:4;
    volatile unsigned int HMARGIN:2;
    volatile unsigned int MSEL:2;
    volatile unsigned int reserved_12:4;
    volatile unsigned int ECCSCLR:2;
    volatile unsigned int reserved_18:6;
    volatile unsigned int SBABCLR:2;
    volatile unsigned int DBABCLR:2;
    volatile unsigned int MBABCLR:2;
    volatile unsigned int ZBABCLR:2;
} Ifx_CPU_FLASHCON2_Bits;


typedef struct _Ifx_CPU_FLASHCON3_Bits
{
    volatile unsigned int ECCERRINJ:1;
    volatile unsigned int EDCERRINJ:1;
    volatile unsigned int SBABERRINJ:1;
    volatile unsigned int DBABERRINJ:1;
    volatile unsigned int MBABERRINJ:1;
    volatile unsigned int ZBABERRINJ:1;
    volatile unsigned int SBERERRINJ:1;
    volatile unsigned int DBERERRINJ:1;
    volatile unsigned int NVMCERRINJ:1;
    volatile unsigned int FLCONERRINJ:1;
    volatile unsigned int reserved_10:22;
} Ifx_CPU_FLASHCON3_Bits;


typedef struct _Ifx_CPU_FLASHCON4_Bits
{
    volatile unsigned int DDIS:1;
    volatile unsigned int reserved_1:31;
} Ifx_CPU_FLASHCON4_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_CON_Bits
{
    volatile unsigned int TST:1;
    volatile unsigned int TCL:1;
    volatile unsigned int reserved_2:6;
    volatile unsigned int RM:2;
    volatile unsigned int reserved_10:8;
    volatile unsigned int FXE:1;
    volatile unsigned int FUE:1;
    volatile unsigned int FZE:1;
    volatile unsigned int FVE:1;
    volatile unsigned int FIE:1;
    volatile unsigned int reserved_23:3;
    volatile unsigned int FX:1;
    volatile unsigned int FU:1;
    volatile unsigned int FZ:1;
    volatile unsigned int FV:1;
    volatile unsigned int FI:1;
    volatile unsigned int reserved_31:1;
} Ifx_CPU_FPU_TRAP_CON_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_OPC_Bits
{
    volatile unsigned int OPC:8;
    volatile unsigned int FMT:1;
    volatile unsigned int reserved_9:7;
    volatile unsigned int DREG:4;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_FPU_TRAP_OPC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_PC_Bits
{
    volatile unsigned int PC:32;
} Ifx_CPU_FPU_TRAP_PC_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC1_Bits
{
    volatile unsigned int SRC1:32;
} Ifx_CPU_FPU_TRAP_SRC1_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC2_Bits
{
    volatile unsigned int SRC2:32;
} Ifx_CPU_FPU_TRAP_SRC2_Bits;


typedef struct _Ifx_CPU_FPU_TRAP_SRC3_Bits
{
    volatile unsigned int SRC3:32;
} Ifx_CPU_FPU_TRAP_SRC3_Bits;


typedef struct _Ifx_CPU_ICNT_Bits
{
    volatile unsigned int COUNTVALUE:31;
    volatile unsigned int SOVF:1;
} Ifx_CPU_ICNT_Bits;


typedef struct _Ifx_CPU_ICR_Bits
{
    volatile unsigned int CCPN:8;
    volatile unsigned int reserved_8:7;
    volatile unsigned int IE:1;
    volatile unsigned int PIPN:8;
    volatile unsigned int reserved_24:8;
} Ifx_CPU_ICR_Bits;


typedef struct _Ifx_CPU_ISP_Bits
{
    volatile unsigned int ISP:32;
} Ifx_CPU_ISP_Bits;


typedef struct _Ifx_CPU_KRST0_Bits
{
    volatile unsigned int RST:1;
    volatile unsigned int RSTSTAT:2;
    volatile unsigned int reserved_3:29;
} Ifx_CPU_KRST0_Bits;


typedef struct _Ifx_CPU_KRST1_Bits
{
    volatile unsigned int RST:1;
    volatile unsigned int reserved_1:31;
} Ifx_CPU_KRST1_Bits;


typedef struct _Ifx_CPU_KRSTCLR_Bits
{
    volatile unsigned int CLR:1;
    volatile unsigned int reserved_1:31;
} Ifx_CPU_KRSTCLR_Bits;


typedef struct _Ifx_CPU_LCX_Bits
{
    volatile unsigned int LCXO:16;
    volatile unsigned int LCXS:4;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_LCX_Bits;


typedef struct _Ifx_CPU_LPB_SPROT_ACCENA_R_Bits
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
} Ifx_CPU_LPB_SPROT_ACCENA_R_Bits;


typedef struct _Ifx_CPU_LPB_SPROT_ACCENB_R_Bits
{
    volatile unsigned int EN32:1;
    volatile unsigned int EN33:1;
    volatile unsigned int EN34:1;
    volatile unsigned int EN35:1;
    volatile unsigned int EN36:1;
    volatile unsigned int EN37:1;
    volatile unsigned int EN38:1;
    volatile unsigned int EN39:1;
    volatile unsigned int EN40:1;
    volatile unsigned int EN41:1;
    volatile unsigned int EN42:1;
    volatile unsigned int EN43:1;
    volatile unsigned int EN44:1;
    volatile unsigned int EN45:1;
    volatile unsigned int EN46:1;
    volatile unsigned int EN47:1;
    volatile unsigned int EN48:1;
    volatile unsigned int EN49:1;
    volatile unsigned int EN50:1;
    volatile unsigned int EN51:1;
    volatile unsigned int EN52:1;
    volatile unsigned int EN53:1;
    volatile unsigned int EN54:1;
    volatile unsigned int EN55:1;
    volatile unsigned int EN56:1;
    volatile unsigned int EN57:1;
    volatile unsigned int EN58:1;
    volatile unsigned int EN59:1;
    volatile unsigned int EN60:1;
    volatile unsigned int EN61:1;
    volatile unsigned int EN62:1;
    volatile unsigned int EN63:1;
} Ifx_CPU_LPB_SPROT_ACCENB_R_Bits;


typedef struct _Ifx_CPU_M1CNT_Bits
{
    volatile unsigned int COUNTVALUE:31;
    volatile unsigned int SOVF:1;
} Ifx_CPU_M1CNT_Bits;


typedef struct _Ifx_CPU_M2CNT_Bits
{
    volatile unsigned int COUNTVALUE:31;
    volatile unsigned int SOVF:1;
} Ifx_CPU_M2CNT_Bits;


typedef struct _Ifx_CPU_M3CNT_Bits
{
    volatile unsigned int COUNTVALUE:31;
    volatile unsigned int SOVF:1;
} Ifx_CPU_M3CNT_Bits;


typedef struct _Ifx_CPU_OSEL_Bits
{
    volatile unsigned int SHOVEN_X:32;
} Ifx_CPU_OSEL_Bits;


typedef struct _Ifx_CPU_PC_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int PC:31;
} Ifx_CPU_PC_Bits;


typedef struct _Ifx_CPU_PCON0_Bits
{
    volatile unsigned int reserved_0:1;
    volatile unsigned int PCBYP:1;
    volatile unsigned int reserved_2:30;
} Ifx_CPU_PCON0_Bits;


typedef struct _Ifx_CPU_PCON1_Bits
{
    volatile unsigned int PCINV:1;
    volatile unsigned int PBINV:1;
    volatile unsigned int reserved_2:30;
} Ifx_CPU_PCON1_Bits;


typedef struct _Ifx_CPU_PCON2_Bits
{
    volatile unsigned int PCACHE_SZE:16;
    volatile unsigned int PSCRATCH_SZE:16;
} Ifx_CPU_PCON2_Bits;


typedef struct _Ifx_CPU_PCXI_Bits
{
    volatile unsigned int PCXO:16;
    volatile unsigned int PCXS:4;
    volatile unsigned int UL:1;
    volatile unsigned int PIE:1;
    volatile unsigned int PCPN:8;
    volatile unsigned int reserved_30:2;
} Ifx_CPU_PCXI_Bits;


typedef struct _Ifx_CPU_PIEAR_Bits
{
    volatile unsigned int TA:32;
} Ifx_CPU_PIEAR_Bits;


typedef struct _Ifx_CPU_PIETR_Bits
{
    volatile unsigned int IED:1;
    volatile unsigned int IE_T:1;
    volatile unsigned int IE_C:1;
    volatile unsigned int IE_S:1;
    volatile unsigned int IE_BI:1;
    volatile unsigned int E_INFO:6;
    volatile unsigned int IE_UNC:1;
    volatile unsigned int IE_SP:1;
    volatile unsigned int IE_BS:1;
    volatile unsigned int IE_ADDR:1;
    volatile unsigned int IE_LPB:1;
    volatile unsigned int IE_MTMV:1;
    volatile unsigned int reserved_17:15;
} Ifx_CPU_PIETR_Bits;


typedef struct _Ifx_CPU_PMA0_Bits
{
    volatile unsigned int DAC:16;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_PMA0_Bits;


typedef struct _Ifx_CPU_PMA1_Bits
{
    volatile unsigned int CAC:16;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_PMA1_Bits;


typedef struct _Ifx_CPU_PMA2_Bits
{
    volatile unsigned int PSI:16;
    volatile unsigned int reserved_16:16;
} Ifx_CPU_PMA2_Bits;


typedef struct _Ifx_CPU_PSTR_Bits
{
    volatile unsigned int FRE:1;
    volatile unsigned int reserved_1:1;
    volatile unsigned int FBE:1;
    volatile unsigned int reserved_3:9;
    volatile unsigned int FPE:1;
    volatile unsigned int reserved_13:1;
    volatile unsigned int FME:1;
    volatile unsigned int reserved_15:17;
} Ifx_CPU_PSTR_Bits;


typedef struct _Ifx_CPU_PSW_Bits
{
    volatile unsigned int CDC:7;
    volatile unsigned int CDE:1;
    volatile unsigned int GW:1;
    volatile unsigned int IS:1;
    volatile unsigned int IO:2;
    volatile unsigned int PRS:2;
    volatile unsigned int S:1;
    volatile unsigned int PRS2:1;
    volatile unsigned int reserved_16:8;
    volatile unsigned int USB:8;
} Ifx_CPU_PSW_Bits;


typedef struct _Ifx_CPU_RGN_ACCENA_Bits
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
} Ifx_CPU_RGN_ACCENA_Bits;


typedef struct _Ifx_CPU_RGN_ACCENB_Bits
{
    volatile unsigned int EN32:1;
    volatile unsigned int EN33:1;
    volatile unsigned int EN34:1;
    volatile unsigned int EN35:1;
    volatile unsigned int EN36:1;
    volatile unsigned int EN37:1;
    volatile unsigned int EN38:1;
    volatile unsigned int EN39:1;
    volatile unsigned int EN40:1;
    volatile unsigned int EN41:1;
    volatile unsigned int EN42:1;
    volatile unsigned int EN43:1;
    volatile unsigned int EN44:1;
    volatile unsigned int EN45:1;
    volatile unsigned int EN46:1;
    volatile unsigned int EN47:1;
    volatile unsigned int EN48:1;
    volatile unsigned int EN49:1;
    volatile unsigned int EN50:1;
    volatile unsigned int EN51:1;
    volatile unsigned int EN52:1;
    volatile unsigned int EN53:1;
    volatile unsigned int EN54:1;
    volatile unsigned int EN55:1;
    volatile unsigned int EN56:1;
    volatile unsigned int EN57:1;
    volatile unsigned int EN58:1;
    volatile unsigned int EN59:1;
    volatile unsigned int EN60:1;
    volatile unsigned int EN61:1;
    volatile unsigned int EN62:1;
    volatile unsigned int EN63:1;
} Ifx_CPU_RGN_ACCENB_Bits;


typedef struct _Ifx_CPU_RGN_LA_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int ADDR:27;
} Ifx_CPU_RGN_LA_Bits;


typedef struct _Ifx_CPU_RGN_UA_Bits
{
    volatile unsigned int reserved_0:5;
    volatile unsigned int ADDR:27;
} Ifx_CPU_RGN_UA_Bits;


typedef struct _Ifx_CPU_SEGEN_Bits
{
    volatile unsigned int ADFLIP:8;
    volatile unsigned int ADTYPE:2;
    volatile unsigned int reserved_10:21;
    volatile unsigned int AE:1;
} Ifx_CPU_SEGEN_Bits;


typedef struct _Ifx_CPU_SFR_SPROT_ACCENA_W_Bits
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
} Ifx_CPU_SFR_SPROT_ACCENA_W_Bits;


typedef struct _Ifx_CPU_SFR_SPROT_ACCENB_W_Bits
{
    volatile unsigned int EN32:1;
    volatile unsigned int EN33:1;
    volatile unsigned int EN34:1;
    volatile unsigned int EN35:1;
    volatile unsigned int EN36:1;
    volatile unsigned int EN37:1;
    volatile unsigned int EN38:1;
    volatile unsigned int EN39:1;
    volatile unsigned int EN40:1;
    volatile unsigned int EN41:1;
    volatile unsigned int EN42:1;
    volatile unsigned int EN43:1;
    volatile unsigned int EN44:1;
    volatile unsigned int EN45:1;
    volatile unsigned int EN46:1;
    volatile unsigned int EN47:1;
    volatile unsigned int EN48:1;
    volatile unsigned int EN49:1;
    volatile unsigned int EN50:1;
    volatile unsigned int EN51:1;
    volatile unsigned int EN52:1;
    volatile unsigned int EN53:1;
    volatile unsigned int EN54:1;
    volatile unsigned int EN55:1;
    volatile unsigned int EN56:1;
    volatile unsigned int EN57:1;
    volatile unsigned int EN58:1;
    volatile unsigned int EN59:1;
    volatile unsigned int EN60:1;
    volatile unsigned int EN61:1;
    volatile unsigned int EN62:1;
    volatile unsigned int EN63:1;
} Ifx_CPU_SFR_SPROT_ACCENB_W_Bits;


typedef struct _Ifx_CPU_SMACON_Bits
{
    volatile unsigned int reserved_0:24;
    volatile unsigned int IODT:1;
    volatile unsigned int reserved_25:7;
} Ifx_CPU_SMACON_Bits;


typedef struct _Ifx_CPU_SPR_SPROT_RGNACCENA_R_Bits
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
} Ifx_CPU_SPR_SPROT_RGNACCENA_R_Bits;


typedef struct _Ifx_CPU_SPR_SPROT_RGNACCENB_R_Bits
{
    volatile unsigned int EN32:1;
    volatile unsigned int EN33:1;
    volatile unsigned int EN34:1;
    volatile unsigned int EN35:1;
    volatile unsigned int EN36:1;
    volatile unsigned int EN37:1;
    volatile unsigned int EN38:1;
    volatile unsigned int EN39:1;
    volatile unsigned int EN40:1;
    volatile unsigned int EN41:1;
    volatile unsigned int EN42:1;
    volatile unsigned int EN43:1;
    volatile unsigned int EN44:1;
    volatile unsigned int EN45:1;
    volatile unsigned int EN46:1;
    volatile unsigned int EN47:1;
    volatile unsigned int EN48:1;
    volatile unsigned int EN49:1;
    volatile unsigned int EN50:1;
    volatile unsigned int EN51:1;
    volatile unsigned int EN52:1;
    volatile unsigned int EN53:1;
    volatile unsigned int EN54:1;
    volatile unsigned int EN55:1;
    volatile unsigned int EN56:1;
    volatile unsigned int EN57:1;
    volatile unsigned int EN58:1;
    volatile unsigned int EN59:1;
    volatile unsigned int EN60:1;
    volatile unsigned int EN61:1;
    volatile unsigned int EN62:1;
    volatile unsigned int EN63:1;
} Ifx_CPU_SPR_SPROT_RGNACCENB_R_Bits;


typedef struct _Ifx_CPU_SWEVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_SWEVT_Bits;


typedef struct _Ifx_CPU_SYSCON_Bits
{
    volatile unsigned int FCDSF:1;
    volatile unsigned int PROTEN:1;
    volatile unsigned int TPROTEN:1;
    volatile unsigned int IS:1;
    volatile unsigned int TS:1;
    volatile unsigned int reserved_5:3;
    volatile unsigned int ESDIS:1;
    volatile unsigned int reserved_9:7;
    volatile unsigned int U1_IED:1;
    volatile unsigned int U1_IOS:1;
    volatile unsigned int reserved_18:6;
    volatile unsigned int BHALT:1;
    volatile unsigned int reserved_25:7;
} Ifx_CPU_SYSCON_Bits;


typedef struct _Ifx_CPU_TASK_ASI_Bits
{
    volatile unsigned int ASI:5;
    volatile unsigned int reserved_5:27;
} Ifx_CPU_TASK_ASI_Bits;


typedef struct _Ifx_CPU_TPS_CON_Bits
{
    volatile unsigned int TEXP0:1;
    volatile unsigned int TEXP1:1;
    volatile unsigned int TEXP2:1;
    volatile unsigned int reserved_3:13;
    volatile unsigned int TTRAP:1;
    volatile unsigned int reserved_17:15;
} Ifx_CPU_TPS_CON_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_CLASS_EN_Bits
{
    volatile unsigned int EXTIM_CLASS_EN:8;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_TPS_EXTIM_CLASS_EN_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_ENTRY_CVAL_Bits
{
    volatile unsigned int ENTRY_CVAL:12;
    volatile unsigned int reserved_12:20;
} Ifx_CPU_TPS_EXTIM_ENTRY_CVAL_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_ENTRY_LVAL_Bits
{
    volatile unsigned int reserved_0:4;
    volatile unsigned int ENTRY_LVAL:8;
    volatile unsigned int reserved_12:20;
} Ifx_CPU_TPS_EXTIM_ENTRY_LVAL_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_EXIT_CVAL_Bits
{
    volatile unsigned int EXIT_CVAL:24;
    volatile unsigned int reserved_24:8;
} Ifx_CPU_TPS_EXTIM_EXIT_CVAL_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_EXIT_LVAL_Bits
{
    volatile unsigned int reserved_0:4;
    volatile unsigned int EXIT_LVAL:20;
    volatile unsigned int reserved_24:8;
} Ifx_CPU_TPS_EXTIM_EXIT_LVAL_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_FCX_Bits
{
    volatile unsigned int EXIT_FCX:20;
    volatile unsigned int reserved_20:12;
} Ifx_CPU_TPS_EXTIM_FCX_Bits;


typedef struct _Ifx_CPU_TPS_EXTIM_STAT_Bits
{
    volatile unsigned int EXIT_TIN:8;
    volatile unsigned int EXIT_CLASS:3;
    volatile unsigned int reserved_11:4;
    volatile unsigned int EXIT_AT:1;
    volatile unsigned int ENTRY_TIN:8;
    volatile unsigned int ENTRY_CLASS:3;
    volatile unsigned int reserved_27:4;
    volatile unsigned int ENTRY_AT:1;
} Ifx_CPU_TPS_EXTIM_STAT_Bits;


typedef struct _Ifx_CPU_TPS_TIMER_Bits
{
    volatile unsigned int TIMER:32;
} Ifx_CPU_TPS_TIMER_Bits;


typedef struct _Ifx_CPU_TRIG_ACC_Bits
{
    volatile unsigned int T0:1;
    volatile unsigned int T1:1;
    volatile unsigned int T2:1;
    volatile unsigned int T3:1;
    volatile unsigned int T4:1;
    volatile unsigned int T5:1;
    volatile unsigned int T6:1;
    volatile unsigned int T7:1;
    volatile unsigned int reserved_8:24;
} Ifx_CPU_TRIG_ACC_Bits;


typedef struct _Ifx_CPU_TR_ADR_Bits
{
    volatile unsigned int ADDR:32;
} Ifx_CPU_TR_ADR_Bits;


typedef struct _Ifx_CPU_TR_EVT_Bits
{
    volatile unsigned int EVTA:3;
    volatile unsigned int BBM:1;
    volatile unsigned int BOD:1;
    volatile unsigned int SUSP:1;
    volatile unsigned int CNT:2;
    volatile unsigned int reserved_8:4;
    volatile unsigned int TYP:1;
    volatile unsigned int RNG:1;
    volatile unsigned int reserved_14:1;
    volatile unsigned int ASI_EN:1;
    volatile unsigned int ASI:5;
    volatile unsigned int reserved_21:6;
    volatile unsigned int AST:1;
    volatile unsigned int ALD:1;
    volatile unsigned int reserved_29:3;
} Ifx_CPU_TR_EVT_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_A_Bits B;
} Ifx_CPU_A;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_BIV_Bits B;
} Ifx_CPU_BIV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_BLK_OMASK_Bits B;
} Ifx_CPU_BLK_OMASK;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_BLK_OTAR_Bits B;
} Ifx_CPU_BLK_OTAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_BLK_RABR_Bits B;
} Ifx_CPU_BLK_RABR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_BTV_Bits B;
} Ifx_CPU_BTV;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CCNT_Bits B;
} Ifx_CPU_CCNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CCTRL_Bits B;
} Ifx_CPU_CCTRL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_COMPAT_Bits B;
} Ifx_CPU_COMPAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CORE_ID_Bits B;
} Ifx_CPU_CORE_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CPR_L_Bits B;
} Ifx_CPU_CPR_L;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CPR_U_Bits B;
} Ifx_CPU_CPR_U;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CPU_ID_Bits B;
} Ifx_CPU_CPU_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CPXE_Bits B;
} Ifx_CPU_CPXE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CREVT_Bits B;
} Ifx_CPU_CREVT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_CUS_ID_Bits B;
} Ifx_CPU_CUS_ID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_D_Bits B;
} Ifx_CPU_D;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DATR_Bits B;
} Ifx_CPU_DATR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DBGSR_Bits B;
} Ifx_CPU_DBGSR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DBGTCR_Bits B;
} Ifx_CPU_DBGTCR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DCON0_Bits B;
} Ifx_CPU_DCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DCON2_Bits B;
} Ifx_CPU_DCON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DCX_Bits B;
} Ifx_CPU_DCX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DEADD_Bits B;
} Ifx_CPU_DEADD;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DIEAR_Bits B;
} Ifx_CPU_DIEAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DIETR_Bits B;
} Ifx_CPU_DIETR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DLMU_SPROT_RGNACCENA_R_Bits B;
} Ifx_CPU_DLMU_SPROT_RGNACCENA_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DLMU_SPROT_RGNACCENA_W_Bits B;
} Ifx_CPU_DLMU_SPROT_RGNACCENA_W;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DLMU_SPROT_RGNACCENB_R_Bits B;
} Ifx_CPU_DLMU_SPROT_RGNACCENB_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DLMU_SPROT_RGNACCENB_W_Bits B;
} Ifx_CPU_DLMU_SPROT_RGNACCENB_W;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DLMU_SPROT_RGNLA_Bits B;
} Ifx_CPU_DLMU_SPROT_RGNLA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DLMU_SPROT_RGNUA_Bits B;
} Ifx_CPU_DLMU_SPROT_RGNUA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DMS_Bits B;
} Ifx_CPU_DMS;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DPRE_Bits B;
} Ifx_CPU_DPRE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DPR_L_Bits B;
} Ifx_CPU_DPR_L;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DPR_U_Bits B;
} Ifx_CPU_DPR_U;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DPWE_Bits B;
} Ifx_CPU_DPWE;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_DSTR_Bits B;
} Ifx_CPU_DSTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_EXEVT_Bits B;
} Ifx_CPU_EXEVT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FCX_Bits B;
} Ifx_CPU_FCX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FLASHCON0_Bits B;
} Ifx_CPU_FLASHCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FLASHCON1_Bits B;
} Ifx_CPU_FLASHCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FLASHCON2_Bits B;
} Ifx_CPU_FLASHCON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FLASHCON3_Bits B;
} Ifx_CPU_FLASHCON3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FLASHCON4_Bits B;
} Ifx_CPU_FLASHCON4;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FPU_TRAP_CON_Bits B;
} Ifx_CPU_FPU_TRAP_CON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FPU_TRAP_OPC_Bits B;
} Ifx_CPU_FPU_TRAP_OPC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FPU_TRAP_PC_Bits B;
} Ifx_CPU_FPU_TRAP_PC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FPU_TRAP_SRC1_Bits B;
} Ifx_CPU_FPU_TRAP_SRC1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FPU_TRAP_SRC2_Bits B;
} Ifx_CPU_FPU_TRAP_SRC2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_FPU_TRAP_SRC3_Bits B;
} Ifx_CPU_FPU_TRAP_SRC3;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_ICNT_Bits B;
} Ifx_CPU_ICNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_ICR_Bits B;
} Ifx_CPU_ICR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_ISP_Bits B;
} Ifx_CPU_ISP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_KRST0_Bits B;
} Ifx_CPU_KRST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_KRST1_Bits B;
} Ifx_CPU_KRST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_KRSTCLR_Bits B;
} Ifx_CPU_KRSTCLR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_LCX_Bits B;
} Ifx_CPU_LCX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_LPB_SPROT_ACCENA_R_Bits B;
} Ifx_CPU_LPB_SPROT_ACCENA_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_LPB_SPROT_ACCENB_R_Bits B;
} Ifx_CPU_LPB_SPROT_ACCENB_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_M1CNT_Bits B;
} Ifx_CPU_M1CNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_M2CNT_Bits B;
} Ifx_CPU_M2CNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_M3CNT_Bits B;
} Ifx_CPU_M3CNT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_OSEL_Bits B;
} Ifx_CPU_OSEL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PC_Bits B;
} Ifx_CPU_PC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PCON0_Bits B;
} Ifx_CPU_PCON0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PCON1_Bits B;
} Ifx_CPU_PCON1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PCON2_Bits B;
} Ifx_CPU_PCON2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PCXI_Bits B;
} Ifx_CPU_PCXI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PIEAR_Bits B;
} Ifx_CPU_PIEAR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PIETR_Bits B;
} Ifx_CPU_PIETR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PMA0_Bits B;
} Ifx_CPU_PMA0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PMA1_Bits B;
} Ifx_CPU_PMA1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PMA2_Bits B;
} Ifx_CPU_PMA2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PSTR_Bits B;
} Ifx_CPU_PSTR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_PSW_Bits B;
} Ifx_CPU_PSW;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_RGN_ACCENA_Bits B;
} Ifx_CPU_RGN_ACCENA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_RGN_ACCENB_Bits B;
} Ifx_CPU_RGN_ACCENB;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_RGN_LA_Bits B;
} Ifx_CPU_RGN_LA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_RGN_UA_Bits B;
} Ifx_CPU_RGN_UA;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SEGEN_Bits B;
} Ifx_CPU_SEGEN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SFR_SPROT_ACCENA_W_Bits B;
} Ifx_CPU_SFR_SPROT_ACCENA_W;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SFR_SPROT_ACCENB_W_Bits B;
} Ifx_CPU_SFR_SPROT_ACCENB_W;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SMACON_Bits B;
} Ifx_CPU_SMACON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SPR_SPROT_RGNACCENA_R_Bits B;
} Ifx_CPU_SPR_SPROT_RGNACCENA_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SPR_SPROT_RGNACCENB_R_Bits B;
} Ifx_CPU_SPR_SPROT_RGNACCENB_R;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SWEVT_Bits B;
} Ifx_CPU_SWEVT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_SYSCON_Bits B;
} Ifx_CPU_SYSCON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TASK_ASI_Bits B;
} Ifx_CPU_TASK_ASI;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_CON_Bits B;
} Ifx_CPU_TPS_CON;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_CLASS_EN_Bits B;
} Ifx_CPU_TPS_EXTIM_CLASS_EN;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_ENTRY_CVAL_Bits B;
} Ifx_CPU_TPS_EXTIM_ENTRY_CVAL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_ENTRY_LVAL_Bits B;
} Ifx_CPU_TPS_EXTIM_ENTRY_LVAL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_EXIT_CVAL_Bits B;
} Ifx_CPU_TPS_EXTIM_EXIT_CVAL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_EXIT_LVAL_Bits B;
} Ifx_CPU_TPS_EXTIM_EXIT_LVAL;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_FCX_Bits B;
} Ifx_CPU_TPS_EXTIM_FCX;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_EXTIM_STAT_Bits B;
} Ifx_CPU_TPS_EXTIM_STAT;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TPS_TIMER_Bits B;
} Ifx_CPU_TPS_TIMER;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TRIG_ACC_Bits B;
} Ifx_CPU_TRIG_ACC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TR_ADR_Bits B;
} Ifx_CPU_TR_ADR;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_CPU_TR_EVT_Bits B;
} Ifx_CPU_TR_EVT;
# 2141 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_RGN
{
       Ifx_CPU_RGN_LA LA;
       Ifx_CPU_RGN_UA UA;
       Ifx_CPU_RGN_ACCENA ACCENA;
       Ifx_CPU_RGN_ACCENB ACCENB;
} Ifx_CPU_RGN;
# 2162 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_BLK
{
       Ifx_CPU_BLK_RABR RABR;
       Ifx_CPU_BLK_OTAR OTAR;
       Ifx_CPU_BLK_OMASK OMASK;
} Ifx_CPU_BLK;
# 2182 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_FPU_TRAP
{
       Ifx_CPU_FPU_TRAP_CON CON;
       Ifx_CPU_FPU_TRAP_PC PC;
       Ifx_CPU_FPU_TRAP_OPC OPC;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_CPU_FPU_TRAP_SRC1 SRC1;
       Ifx_CPU_FPU_TRAP_SRC2 SRC2;
       Ifx_CPU_FPU_TRAP_SRC3 SRC3;
} Ifx_CPU_FPU_TRAP;
# 2206 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_DPR
{
       Ifx_CPU_DPR_L L;
       Ifx_CPU_DPR_U U;
} Ifx_CPU_DPR;
# 2225 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_CPR
{
       Ifx_CPU_CPR_L L;
       Ifx_CPU_CPR_U U;
} Ifx_CPU_CPR;
# 2244 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_TPS
{
       Ifx_CPU_TPS_CON CON;
       Ifx_CPU_TPS_TIMER TIMER[3];
} Ifx_CPU_TPS;
# 2263 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_TPS_EXTIM
{
       Ifx_CPU_TPS_EXTIM_ENTRY_LVAL ENTRY_LVAL;
       Ifx_CPU_TPS_EXTIM_ENTRY_CVAL ENTRY_CVAL;
       Ifx_CPU_TPS_EXTIM_EXIT_LVAL EXIT_LVAL;
       Ifx_CPU_TPS_EXTIM_EXIT_CVAL EXIT_CVAL;
       Ifx_CPU_TPS_EXTIM_CLASS_EN CLASS_EN;
       Ifx_CPU_TPS_EXTIM_STAT STAT;
       Ifx_CPU_TPS_EXTIM_FCX FCX;
} Ifx_CPU_TPS_EXTIM;
# 2287 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU_TR
{
       Ifx_CPU_TR_EVT EVT;
       Ifx_CPU_TR_ADR ADR;
} Ifx_CPU_TR;
# 2306 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
typedef volatile struct _Ifx_CPU
{
       Ifx_UReg_8Bit reserved_0[4352];
       Ifx_CPU_FLASHCON0 FLASHCON0;
       Ifx_CPU_FLASHCON1 FLASHCON1;
       Ifx_CPU_FLASHCON2 FLASHCON2;
       Ifx_CPU_FLASHCON3 FLASHCON3;
       Ifx_CPU_FLASHCON4 FLASHCON4;
       Ifx_UReg_8Bit reserved_1114[48876];
       Ifx_CPU_KRST0 KRST0;
       Ifx_CPU_KRST1 KRST1;
       Ifx_CPU_KRSTCLR KRSTCLR;
       Ifx_UReg_8Bit reserved_D00C[4084];
       Ifx_CPU_RGN RGN[8];
       Ifx_UReg_8Bit reserved_E080[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R0;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R0;
       Ifx_UReg_8Bit reserved_E090[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R1;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R1;
       Ifx_UReg_8Bit reserved_E0A0[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R2;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R2;
       Ifx_UReg_8Bit reserved_E0B0[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R3;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R3;
       Ifx_UReg_8Bit reserved_E0C0[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R4;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R4;
       Ifx_UReg_8Bit reserved_E0D0[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R5;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R5;
       Ifx_UReg_8Bit reserved_E0E0[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R6;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R6;
       Ifx_UReg_8Bit reserved_E0F0[8];
       Ifx_CPU_SPR_SPROT_RGNACCENA_R SPR_SPROT_RGNACCENA_R7;
       Ifx_CPU_SPR_SPROT_RGNACCENB_R SPR_SPROT_RGNACCENB_R7;
       Ifx_CPU_SFR_SPROT_ACCENA_W SFR_SPROT_ACCENA_W;
       Ifx_CPU_SFR_SPROT_ACCENB_W SFR_SPROT_ACCENB_W;
       Ifx_UReg_8Bit reserved_E108[8];
       Ifx_CPU_LPB_SPROT_ACCENA_R LPB_SPROT_ACCENA_R;
       Ifx_CPU_LPB_SPROT_ACCENB_R LPB_SPROT_ACCENB_R;
       Ifx_UReg_8Bit reserved_E118[232];
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA0;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA0;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W0;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W0;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA1;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA1;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W1;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W1;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA2;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA2;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W2;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W2;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA3;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA3;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W3;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W3;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA4;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA4;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W4;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W4;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA5;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA5;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W5;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W5;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA6;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA6;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W6;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W6;
       Ifx_CPU_DLMU_SPROT_RGNLA DLMU_SPROT_RGNLA7;
       Ifx_CPU_DLMU_SPROT_RGNUA DLMU_SPROT_RGNUA7;
       Ifx_CPU_DLMU_SPROT_RGNACCENA_W DLMU_SPROT_RGNACCENA_W7;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_W DLMU_SPROT_RGNACCENB_W7;
       Ifx_UReg_8Bit reserved_E280[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R0;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R0;
       Ifx_UReg_8Bit reserved_E290[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R1;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R1;
       Ifx_UReg_8Bit reserved_E2A0[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R2;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R2;
       Ifx_UReg_8Bit reserved_E2B0[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R3;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R3;
       Ifx_UReg_8Bit reserved_E2C0[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R4;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R4;
       Ifx_UReg_8Bit reserved_E2D0[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R5;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R5;
       Ifx_UReg_8Bit reserved_E2E0[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R6;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R6;
       Ifx_UReg_8Bit reserved_E2F0[8];
       Ifx_CPU_DLMU_SPROT_RGNACCENA_R DLMU_SPROT_RGNACCENA_R7;
       Ifx_CPU_DLMU_SPROT_RGNACCENB_R DLMU_SPROT_RGNACCENB_R7;
       Ifx_UReg_8Bit reserved_E300[6144];
       Ifx_CPU_OSEL OSEL;
       Ifx_UReg_8Bit reserved_FB04[12];
       Ifx_CPU_BLK BLK[32];
       Ifx_UReg_8Bit reserved_FC90[5024];
       Ifx_CPU_SEGEN SEGEN;
       Ifx_UReg_8Bit reserved_11034[28624];
       Ifx_CPU_TASK_ASI TASK_ASI;
       Ifx_UReg_8Bit reserved_18008[248];
       Ifx_CPU_PMA0 PMA0;
       Ifx_CPU_PMA1 PMA1;
       Ifx_CPU_PMA2 PMA2;
       Ifx_UReg_8Bit reserved_1810C[3828];
       Ifx_CPU_DCON2 DCON2;
       Ifx_UReg_8Bit reserved_19004[8];
       Ifx_CPU_SMACON SMACON;
       Ifx_CPU_DSTR DSTR;
       Ifx_UReg_8Bit reserved_19014[4];
       Ifx_CPU_DATR DATR;
       Ifx_CPU_DEADD DEADD;
       Ifx_CPU_DIEAR DIEAR;
       Ifx_CPU_DIETR DIETR;
       Ifx_UReg_8Bit reserved_19028[24];
       Ifx_CPU_DCON0 DCON0;
       Ifx_UReg_8Bit reserved_19044[444];
       Ifx_CPU_PSTR PSTR;
       Ifx_CPU_PCON1 PCON1;
       Ifx_CPU_PCON2 PCON2;
       Ifx_CPU_PCON0 PCON0;
       Ifx_CPU_PIEAR PIEAR;
       Ifx_CPU_PIETR PIETR;
       Ifx_UReg_8Bit reserved_19218[488];
       Ifx_CPU_COMPAT COMPAT;
       Ifx_UReg_8Bit reserved_19404[3068];
       Ifx_CPU_FPU_TRAP FPU_TRAP;
       Ifx_UReg_8Bit reserved_1A01C[8164];
       Ifx_CPU_DPR DPR[18];
       Ifx_UReg_8Bit reserved_1C090[3952];
       Ifx_CPU_CPR CPR[10];
       Ifx_UReg_8Bit reserved_1D050[4016];
       Ifx_CPU_CPXE CPXE_0;
       Ifx_CPU_CPXE CPXE_1;
       Ifx_CPU_CPXE CPXE_2;
       Ifx_CPU_CPXE CPXE_3;
       Ifx_CPU_DPRE DPRE_0;
       Ifx_CPU_DPRE DPRE_1;
       Ifx_CPU_DPRE DPRE_2;
       Ifx_CPU_DPRE DPRE_3;
       Ifx_CPU_DPWE DPWE_0;
       Ifx_CPU_DPWE DPWE_1;
       Ifx_CPU_DPWE DPWE_2;
       Ifx_CPU_DPWE DPWE_3;
       Ifx_UReg_8Bit reserved_1E030[16];
       Ifx_CPU_CPXE CPXE_4;
       Ifx_CPU_CPXE CPXE_5;
       Ifx_UReg_8Bit reserved_1E048[8];
       Ifx_CPU_DPRE DPRE_4;
       Ifx_CPU_DPRE DPRE_5;
       Ifx_UReg_8Bit reserved_1E058[8];
       Ifx_CPU_DPWE DPWE_4;
       Ifx_CPU_DPWE DPWE_5;
       Ifx_UReg_8Bit reserved_1E068[920];
       Ifx_CPU_TPS TPS;
       Ifx_UReg_8Bit reserved_1E410[48];
       Ifx_CPU_TPS_EXTIM TPS_EXTIM;
       Ifx_UReg_8Bit reserved_1E45C[2980];
       Ifx_CPU_TR TR[8];
       Ifx_UReg_8Bit reserved_1F040[3008];
       Ifx_CPU_CCTRL CCTRL;
       Ifx_CPU_CCNT CCNT;
       Ifx_CPU_ICNT ICNT;
       Ifx_CPU_M1CNT M1CNT;
       Ifx_CPU_M2CNT M2CNT;
       Ifx_CPU_M3CNT M3CNT;
       Ifx_UReg_8Bit reserved_1FC18[232];
       Ifx_CPU_DBGSR DBGSR;
       Ifx_UReg_8Bit reserved_1FD04[4];
       Ifx_CPU_EXEVT EXEVT;
       Ifx_CPU_CREVT CREVT;
       Ifx_CPU_SWEVT SWEVT;
       Ifx_UReg_8Bit reserved_1FD14[28];
       Ifx_CPU_TRIG_ACC TRIG_ACC;
       Ifx_UReg_8Bit reserved_1FD34[12];
       Ifx_CPU_DMS DMS;
       Ifx_CPU_DCX DCX;
       Ifx_CPU_DBGTCR DBGTCR;
       Ifx_UReg_8Bit reserved_1FD4C[180];
       Ifx_CPU_PCXI PCXI;
       Ifx_CPU_PSW PSW;
       Ifx_CPU_PC PC;
       Ifx_UReg_8Bit reserved_1FE0C[8];
       Ifx_CPU_SYSCON SYSCON;
       Ifx_CPU_CPU_ID CPU_ID;
       Ifx_CPU_CORE_ID CORE_ID;
       Ifx_CPU_BIV BIV;
       Ifx_CPU_BTV BTV;
       Ifx_CPU_ISP ISP;
       Ifx_CPU_ICR ICR;
       Ifx_UReg_8Bit reserved_1FE30[8];
       Ifx_CPU_FCX FCX;
       Ifx_CPU_LCX LCX;
       Ifx_UReg_8Bit reserved_1FE40[16];
       Ifx_CPU_CUS_ID CUS_ID;
       Ifx_UReg_8Bit reserved_1FE54[172];
       Ifx_CPU_D D[16];
       Ifx_UReg_8Bit reserved_1FF40[64];
       Ifx_CPU_A A[16];
       Ifx_UReg_8Bit reserved_1FFC0[64];
} Ifx_CPU;
# 66 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_reg.h" 2
# 2 ".\\output\\inc/IfxCpu_reg.h" 2
# 39 "Integration\\TC38x\\IFX_Os.c" 2


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
# 42 "Integration\\TC38x\\IFX_Os.c" 2


# 1 "Integration\\TC38x\\IFX_Os.h" 1
# 40 "Integration\\TC38x\\IFX_Os.h"
# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 1
# 2 ".\\output\\inc/Mcal_Compiler.h" 2
# 41 "Integration\\TC38x\\IFX_Os.h" 2
# 49 "Integration\\TC38x\\IFX_Os.h"
void SuspendAllInterrupts(void);
void ResumeAllInterrupts(void);
# 45 "Integration\\TC38x\\IFX_Os.c" 2
# 78 "Integration\\TC38x\\IFX_Os.c"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 79 "Integration\\TC38x\\IFX_Os.c" 2
static volatile uint8 Os_IntSaveDisableCounter[(0x4U)] = {0};

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 82 "Integration\\TC38x\\IFX_Os.c" 2


# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 85 "Integration\\TC38x\\IFX_Os.c" 2
static volatile sint32 Os_SavedIntLevelNested[(0x4U)] = {0};

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 88 "Integration\\TC38x\\IFX_Os.c" 2
# 98 "Integration\\TC38x\\IFX_Os.c"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 99 "Integration\\TC38x\\IFX_Os.c" 2
# 117 "Integration\\TC38x\\IFX_Os.c"
void SuspendAllInterrupts(void)
{
  uint32 CoreId;


  CoreId = Mcal_GetCpuIndex();

  if(Os_IntSaveDisableCounter[CoreId] == 0)
  {
    Os_SavedIntLevelNested[CoreId] = ((__extension__({ unsigned __res; __asm__ volatile ("mfcr %0, LO:" "(0xFE2C)" : "=d" (__res) :: "memory"); __res; })));
    _disable();
  }
  Os_IntSaveDisableCounter[CoreId]++;
}
# 151 "Integration\\TC38x\\IFX_Os.c"
void ResumeAllInterrupts(void)
{
  uint32 CoreId;


  CoreId = Mcal_GetCpuIndex();

  if (Os_IntSaveDisableCounter[CoreId] > 0)
  {
    Os_IntSaveDisableCounter[CoreId]--;
  }

  if (Os_IntSaveDisableCounter[CoreId] == 0)
  {
    if (Os_SavedIntLevelNested[CoreId] & (0x00000001U << 15))
    {

      _enable();
    }
  }
}

# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 2 ".\\output\\inc/MemMap.h" 2
# 174 "Integration\\TC38x\\IFX_Os.c" 2
