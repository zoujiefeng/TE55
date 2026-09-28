# 1 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c"
# 45 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c"
# 1 ".\\output\\inc/IfxMtu_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxMtu_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxMtu_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxMtu_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxMtu_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxMtu_regdef.h" 2
# 68 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxMtu_regdef.h"
typedef struct _Ifx_MTU_ACCEN0_Bits
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
} Ifx_MTU_ACCEN0_Bits;


typedef struct _Ifx_MTU_ACCEN1_Bits
{
    Ifx_UReg_32Bit reserved_0:32;
} Ifx_MTU_ACCEN1_Bits;


typedef struct _Ifx_MTU_CLC_Bits
{
    Ifx_UReg_32Bit DISR:1;
    Ifx_UReg_32Bit DISS:1;
    Ifx_UReg_32Bit RESVD:1;
    Ifx_UReg_32Bit EDIS:1;
    Ifx_UReg_32Bit reserved_4:4;
    Ifx_UReg_32Bit reserved_8:8;
    Ifx_UReg_32Bit reserved_16:16;
} Ifx_MTU_CLC_Bits;


typedef struct _Ifx_MTU_ID_Bits
{
    Ifx_UReg_32Bit MODREV:8;
    Ifx_UReg_32Bit MODTYPE:8;
    Ifx_UReg_32Bit MODNUMBER:16;
} Ifx_MTU_ID_Bits;


typedef struct _Ifx_MTU_MC_ALMSRCS_Bits
{
    volatile unsigned short SBE:1;
    volatile unsigned short DBE:1;
    volatile unsigned short ADDRE:1;
    volatile unsigned short OVFE:1;
    volatile unsigned short OPENE:1;
    volatile unsigned short MISCE:1;
    volatile unsigned short reserved_6:10;
} Ifx_MTU_MC_ALMSRCS_Bits;


typedef struct _Ifx_MTU_MC_CONFIG0_Bits
{
    volatile unsigned short ACCSTYPE:8;
    volatile unsigned short reserved_8:4;
    volatile unsigned short NUMACCS:4;
} Ifx_MTU_MC_CONFIG0_Bits;


typedef struct _Ifx_MTU_MC_CONFIG1_Bits
{
    volatile unsigned short ACCSPAT:8;
    volatile unsigned short SELFASTB:4;
    volatile unsigned short AG_MOD:4;
} Ifx_MTU_MC_CONFIG1_Bits;


typedef struct _Ifx_MTU_MC_ECCD_Bits
{
    volatile unsigned short SERR:1;
    volatile unsigned short CERR:1;
    volatile unsigned short UCERR:1;
    volatile unsigned short MERR:1;
    volatile unsigned short TRC:1;
    volatile unsigned short VAL:5;
    volatile unsigned short PERMERR:5;
    volatile unsigned short EOV:1;
} Ifx_MTU_MC_ECCD_Bits;


typedef struct _Ifx_MTU_MC_ECCS_Bits
{
    volatile unsigned short CENE:1;
    volatile unsigned short UCENE:1;
    volatile unsigned short MENE:1;
    volatile unsigned short ECE:1;
    volatile unsigned short TRE:1;
    volatile unsigned short BFLE:1;
    volatile unsigned short SFLE:1;
    volatile unsigned short reserved_7:1;
    volatile unsigned short ECCMAP:2;
    volatile unsigned short TC_TWR_SEL:1;
    volatile unsigned short SFFD:1;
    volatile unsigned short reserved_12:4;
} Ifx_MTU_MC_ECCS_Bits;


typedef struct _Ifx_MTU_MC_ERRINFO_Bits
{
    volatile unsigned short SBERR:1;
    volatile unsigned short DBERR:1;
    volatile unsigned short ADDRERR:1;
    volatile unsigned short reserved_3:13;
} Ifx_MTU_MC_ERRINFO_Bits;


typedef struct _Ifx_MTU_MC_ETRR_Bits
{
    volatile unsigned short ADDR:13;
    volatile unsigned short MBI:3;
} Ifx_MTU_MC_ETRR_Bits;


typedef struct _Ifx_MTU_MC_FAULTSTS_Bits
{
    volatile unsigned short OPERR:6;
    volatile unsigned short reserved_6:2;
    volatile unsigned short MISCERR:6;
    volatile unsigned short reserved_14:2;
} Ifx_MTU_MC_FAULTSTS_Bits;


typedef struct _Ifx_MTU_MC_MCONTROL_Bits
{
    volatile unsigned short START:1;
    volatile unsigned short RESUME:1;
    volatile unsigned short ESTF:1;
    volatile unsigned short DIR:1;
    volatile unsigned short DINIT:1;
    volatile unsigned short RCADR:1;
    volatile unsigned short ROWTOG:1;
    volatile unsigned short BITTOG:1;
    volatile unsigned short reserved_8:1;
    volatile unsigned short FAILDMP:1;
    volatile unsigned short EN_DESCR:1;
    volatile unsigned short reserved_11:1;
    volatile unsigned short reserved_12:1;
    volatile unsigned short reserved_13:1;
    volatile unsigned short reserved_14:1;
    volatile unsigned short SRAM_CLR:1;
} Ifx_MTU_MC_MCONTROL_Bits;


typedef struct _Ifx_MTU_MC_MSTATUS_Bits
{
    volatile unsigned short DONE:1;
    volatile unsigned short FAIL:1;
    volatile unsigned short FDA:1;
    volatile unsigned short SFAIL:1;
    volatile unsigned short reserved_4:1;
    volatile unsigned short reserved_5:11;
} Ifx_MTU_MC_MSTATUS_Bits;


typedef struct _Ifx_MTU_MC_RANGE_Bits
{
    volatile unsigned short ADDR:14;
    volatile unsigned short INJERR:1;
    volatile unsigned short RAEN:1;
} Ifx_MTU_MC_RANGE_Bits;


typedef struct _Ifx_MTU_MC_RDBFL_Bits
{
    volatile unsigned short WDATA:16;
} Ifx_MTU_MC_RDBFL_Bits;


typedef struct _Ifx_MTU_MC_REVID_Bits
{
    volatile unsigned short REV_ID:16;
} Ifx_MTU_MC_REVID_Bits;


typedef struct _Ifx_MTU_MEMDONE0_Bits
{
    Ifx_UReg_32Bit CPU0_DMEM_DONE:1;
    Ifx_UReg_32Bit CPU0_DTAG_DONE:1;
    Ifx_UReg_32Bit CPU0_PMEM_DONE:1;
    Ifx_UReg_32Bit CPU0_PTAG_DONE:1;
    Ifx_UReg_32Bit CPU0_DLMU_STBY_DONE:1;
    Ifx_UReg_32Bit CPU1_DMEM_DONE:1;
    Ifx_UReg_32Bit CPU1_DTAG_DONE:1;
    Ifx_UReg_32Bit CPU1_PMEM_DONE:1;
    Ifx_UReg_32Bit CPU1_PTAG_DONE:1;
    Ifx_UReg_32Bit CPU1_DLMU_STBY_DONE:1;
    Ifx_UReg_32Bit CPU2_DMEM_DONE:1;
    Ifx_UReg_32Bit CPU2_DTAG_DONE:1;
    Ifx_UReg_32Bit CPU2_PMEM_DONE:1;
    Ifx_UReg_32Bit CPU2_PTAG_DONE:1;
    Ifx_UReg_32Bit CPU2_DLMU_DONE:1;
    Ifx_UReg_32Bit CPU3_DMEM_DONE:1;
    Ifx_UReg_32Bit CPU3_DTAG_DONE:1;
    Ifx_UReg_32Bit CPU3_PMEM_DONE:1;
    Ifx_UReg_32Bit CPU3_PTAG_DONE:1;
    Ifx_UReg_32Bit CPU3_DLMU_DONE:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit reserved_24:1;
    Ifx_UReg_32Bit reserved_25:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit reserved_28:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit LMU00_DONE:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_MTU_MEMDONE0_Bits;


typedef struct _Ifx_MTU_MEMDONE1_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit CPU0_DMEM1_DONE:1;
    Ifx_UReg_32Bit CPU1_DMEM1_DONE:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit DAM0_DONE:1;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit SADMA_DONE:1;
    Ifx_UReg_32Bit MINI_MCDS_DONE:1;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit reserved_12:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit reserved_16:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit reserved_18:1;
    Ifx_UReg_32Bit reserved_19:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit GTM_FIFO_DONE:1;
    Ifx_UReg_32Bit GTM_MCS0SLOW_DONE:1;
    Ifx_UReg_32Bit GTM_MCS0FAST_DONE:1;
    Ifx_UReg_32Bit GTM_MCS1SLOW_DONE:1;
    Ifx_UReg_32Bit GTM_MCS1FAST_DONE:1;
    Ifx_UReg_32Bit GTM_DPLL1A_DONE:1;
    Ifx_UReg_32Bit GTM_DPLL1BC_DONE:1;
    Ifx_UReg_32Bit GTM_DPLL2_DONE:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit MCAN10_DONE:1;
    Ifx_UReg_32Bit MCAN20_DONE:1;
} Ifx_MTU_MEMDONE1_Bits;


typedef struct _Ifx_MTU_MEMDONE2_Bits
{
    Ifx_UReg_32Bit MCAN21_DONE:1;
    Ifx_UReg_32Bit PSI5_DONE:1;
    Ifx_UReg_32Bit ERAY_OBF0_DONE:1;
    Ifx_UReg_32Bit ERAY_OBF1_DONE:1;
    Ifx_UReg_32Bit ERAY_TBF_IBF0_DONE:1;
    Ifx_UReg_32Bit ERAY_TBF_IBF1_DONE:1;
    Ifx_UReg_32Bit ERAY_MBF0_DONE:1;
    Ifx_UReg_32Bit ERAY_MBF1_DONE:1;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit reserved_9:1;
    Ifx_UReg_32Bit reserved_10:1;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit reserved_12:1;
    Ifx_UReg_32Bit SCR_XRAM_DONE:1;
    Ifx_UReg_32Bit SCR_RAMINT_DONE:1;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit reserved_16:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit GIGETH_RX_DONE:1;
    Ifx_UReg_32Bit GIGETH_TX_DONE:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit reserved_24:1;
    Ifx_UReg_32Bit reserved_25:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit reserved_28:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_MTU_MEMDONE2_Bits;


typedef struct _Ifx_MTU_MEMFDA0_Bits
{
    Ifx_UReg_32Bit CPU0_DMEM_FDA:1;
    Ifx_UReg_32Bit CPU0_DTAG_FDA:1;
    Ifx_UReg_32Bit CPU0_PMEM_FDA:1;
    Ifx_UReg_32Bit CPU0_PTAG_FDA:1;
    Ifx_UReg_32Bit CPU0_DLMU_STBY_FDA:1;
    Ifx_UReg_32Bit CPU1_DMEM_FDA:1;
    Ifx_UReg_32Bit CPU1_DTAG_FDA:1;
    Ifx_UReg_32Bit CPU1_PMEM_FDA:1;
    Ifx_UReg_32Bit CPU1_PTAG_FDA:1;
    Ifx_UReg_32Bit CPU1_DLMU_STBY_FDA:1;
    Ifx_UReg_32Bit CPU2_DMEM_FDA:1;
    Ifx_UReg_32Bit CPU2_DTAG_FDA:1;
    Ifx_UReg_32Bit CPU2_PMEM_FDA:1;
    Ifx_UReg_32Bit CPU2_PTAG_FDA:1;
    Ifx_UReg_32Bit CPU2_DLMU_FDA:1;
    Ifx_UReg_32Bit CPU3_DMEM_FDA:1;
    Ifx_UReg_32Bit CPU3_DTAG_FDA:1;
    Ifx_UReg_32Bit CPU3_PMEM_FDA:1;
    Ifx_UReg_32Bit CPU3_PTAG_FDA:1;
    Ifx_UReg_32Bit CPU3_DLMU_FDA:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit reserved_24:1;
    Ifx_UReg_32Bit reserved_25:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit reserved_28:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit LMU00_FDA:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_MTU_MEMFDA0_Bits;


typedef struct _Ifx_MTU_MEMFDA1_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit CPU0_DMEM1_FDA:1;
    Ifx_UReg_32Bit CPU1_DMEM1_FDA:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit DAM0_FDA:1;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit SADMA_FDA:1;
    Ifx_UReg_32Bit MINI_MCDS_FDA:1;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit reserved_12:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit reserved_16:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit reserved_18:1;
    Ifx_UReg_32Bit reserved_19:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit GTM_FIFO_FDA:1;
    Ifx_UReg_32Bit GTM_MCS0SLOW_FDA:1;
    Ifx_UReg_32Bit GTM_MCS0FAST_FDA:1;
    Ifx_UReg_32Bit GTM_MCS1SLOW_FDA:1;
    Ifx_UReg_32Bit GTM_MCS1FAST_FDA:1;
    Ifx_UReg_32Bit GTM_DPLL1A_FDA:1;
    Ifx_UReg_32Bit GTM_DPLL1BC_FDA:1;
    Ifx_UReg_32Bit GTM_DPLL2_FDA:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit MCAN10_FDA:1;
    Ifx_UReg_32Bit MCAN20_FDA:1;
} Ifx_MTU_MEMFDA1_Bits;


typedef struct _Ifx_MTU_MEMFDA2_Bits
{
    Ifx_UReg_32Bit MCAN21_FDA:1;
    Ifx_UReg_32Bit PSI5_FDA:1;
    Ifx_UReg_32Bit ERAY_OBF0_FDA:1;
    Ifx_UReg_32Bit ERAY_OBF1_FDA:1;
    Ifx_UReg_32Bit ERAY_TBF_IBF0_FDA:1;
    Ifx_UReg_32Bit ERAY_TBF_IBF1_FDA:1;
    Ifx_UReg_32Bit ERAY_MBF0_FDA:1;
    Ifx_UReg_32Bit ERAY_MBF1_FDA:1;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit reserved_9:1;
    Ifx_UReg_32Bit reserved_10:1;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit reserved_12:1;
    Ifx_UReg_32Bit SCR_XRAM_FDA:1;
    Ifx_UReg_32Bit SCR_RAMINT_FDA:1;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit reserved_16:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit GIGETH_RX_FDA:1;
    Ifx_UReg_32Bit GIGETH_TX_FDA:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit reserved_24:1;
    Ifx_UReg_32Bit reserved_25:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit reserved_28:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_MTU_MEMFDA2_Bits;


typedef struct _Ifx_MTU_MEMMAP_Bits
{
    Ifx_UReg_32Bit CPU0_DCMAP:1;
    Ifx_UReg_32Bit CPU0_DTMAP:1;
    Ifx_UReg_32Bit CPU0_PCMAP:1;
    Ifx_UReg_32Bit CPU0_PTMAP:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit CPU1_DCMAP:1;
    Ifx_UReg_32Bit CPU1_DTMAP:1;
    Ifx_UReg_32Bit CPU1_PCMAP:1;
    Ifx_UReg_32Bit CPU1_PTMAP:1;
    Ifx_UReg_32Bit reserved_9:1;
    Ifx_UReg_32Bit CPU2_DCMAP:1;
    Ifx_UReg_32Bit CPU2_DTMAP:1;
    Ifx_UReg_32Bit CPU2_PCMAP:1;
    Ifx_UReg_32Bit CPU2_PTMAP:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit CPU3_DCMAP:1;
    Ifx_UReg_32Bit CPU3_DTMAP:1;
    Ifx_UReg_32Bit CPU3_PCMAP:1;
    Ifx_UReg_32Bit CPU3_PTMAP:1;
    Ifx_UReg_32Bit reserved_19:1;
    Ifx_UReg_32Bit MEM20MAP:1;
    Ifx_UReg_32Bit MEM21MAP:1;
    Ifx_UReg_32Bit MEM22MAP:1;
    Ifx_UReg_32Bit MEM23MAP:1;
    Ifx_UReg_32Bit reserved_24:1;
    Ifx_UReg_32Bit MEM25MAP:1;
    Ifx_UReg_32Bit MEM26MAP:1;
    Ifx_UReg_32Bit MEM27MAP:1;
    Ifx_UReg_32Bit MEM28MAP:1;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_MTU_MEMMAP_Bits;


typedef struct _Ifx_MTU_MEMSTAT0_Bits
{
    Ifx_UReg_32Bit CPU0_DMEM_AIU:1;
    Ifx_UReg_32Bit CPU0_DTAG_AIU:1;
    Ifx_UReg_32Bit CPU0_PMEM_AIU:1;
    Ifx_UReg_32Bit CPU0_PTAG_AIU:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit CPU1_DMEM_AIU:1;
    Ifx_UReg_32Bit CPU1_DTAG_AIU:1;
    Ifx_UReg_32Bit CPU1_PMEM_AIU:1;
    Ifx_UReg_32Bit CPU1_PTAG_AIU:1;
    Ifx_UReg_32Bit reserved_9:1;
    Ifx_UReg_32Bit CPU2_DMEM_AIU:1;
    Ifx_UReg_32Bit CPU2_DTAG_AIU:1;
    Ifx_UReg_32Bit CPU2_PMEM_AIU:1;
    Ifx_UReg_32Bit CPU2_PTAG_AIU:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit CPU3_DMEM_AIU:1;
    Ifx_UReg_32Bit CPU3_DTAG_AIU:1;
    Ifx_UReg_32Bit CPU3_PMEM_AIU:1;
    Ifx_UReg_32Bit CPU3_PTAG_AIU:1;
    Ifx_UReg_32Bit reserved_19:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit reserved_24:1;
    Ifx_UReg_32Bit reserved_25:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit reserved_28:1;
    Ifx_UReg_32Bit reserved_29:3;
} Ifx_MTU_MEMSTAT0_Bits;


typedef struct _Ifx_MTU_MEMSTAT1_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit CPU0_DMEM1_AIU:1;
    Ifx_UReg_32Bit CPU1_DMEM1_AIU:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit reserved_9:23;
} Ifx_MTU_MEMSTAT1_Bits;


typedef struct _Ifx_MTU_MEMSTAT2_Bits
{
    Ifx_UReg_32Bit reserved_0:2;
    Ifx_UReg_32Bit reserved_2:2;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:3;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit reserved_9:1;
    Ifx_UReg_32Bit reserved_10:1;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit reserved_12:1;
    Ifx_UReg_32Bit reserved_13:4;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit reserved_18:14;
} Ifx_MTU_MEMSTAT2_Bits;


typedef struct _Ifx_MTU_MEMTEST0_Bits
{
    Ifx_UReg_32Bit CPU0_DMEM_EN:1;
    Ifx_UReg_32Bit CPU0_DTAG_EN:1;
    Ifx_UReg_32Bit CPU0_PMEM_EN:1;
    Ifx_UReg_32Bit CPU0_PTAG_EN:1;
    Ifx_UReg_32Bit CPU0_DLMU_STBY_EN:1;
    Ifx_UReg_32Bit CPU1_DMEM_EN:1;
    Ifx_UReg_32Bit CPU1_DTAG_EN:1;
    Ifx_UReg_32Bit CPU1_PMEM_EN:1;
    Ifx_UReg_32Bit CPU1_PTAG_EN:1;
    Ifx_UReg_32Bit CPU1_DLMU_STBY_EN:1;
    Ifx_UReg_32Bit CPU2_DMEM_EN:1;
    Ifx_UReg_32Bit CPU2_DTAG_EN:1;
    Ifx_UReg_32Bit CPU2_PMEM_EN:1;
    Ifx_UReg_32Bit CPU2_PTAG_EN:1;
    Ifx_UReg_32Bit CPU2_DLMU_EN:1;
    Ifx_UReg_32Bit CPU3_DMEM_EN:1;
    Ifx_UReg_32Bit CPU3_DTAG_EN:1;
    Ifx_UReg_32Bit CPU3_PMEM_EN:1;
    Ifx_UReg_32Bit CPU3_PTAG_EN:1;
    Ifx_UReg_32Bit CPU3_DLMU_EN:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit reserved_24:1;
    Ifx_UReg_32Bit reserved_25:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit reserved_28:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit LMU00_EN:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_MTU_MEMTEST0_Bits;


typedef struct _Ifx_MTU_MEMTEST1_Bits
{
    Ifx_UReg_32Bit reserved_0:1;
    Ifx_UReg_32Bit reserved_1:1;
    Ifx_UReg_32Bit CPU0_DMEM1_EN:1;
    Ifx_UReg_32Bit CPU1_DMEM1_EN:1;
    Ifx_UReg_32Bit reserved_4:1;
    Ifx_UReg_32Bit reserved_5:1;
    Ifx_UReg_32Bit DAM0_EN:1;
    Ifx_UReg_32Bit reserved_7:1;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit SADMA_EN:1;
    Ifx_UReg_32Bit MINI_MCDS_EN:1;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit reserved_12:1;
    Ifx_UReg_32Bit reserved_13:1;
    Ifx_UReg_32Bit reserved_14:1;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit reserved_16:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit reserved_18:1;
    Ifx_UReg_32Bit reserved_19:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit GTM_FIFO_EN:1;
    Ifx_UReg_32Bit GTM_MCS0SLOW_EN:1;
    Ifx_UReg_32Bit GTM_MCS0FAST_EN:1;
    Ifx_UReg_32Bit GTM_MCS1SLOW_EN:1;
    Ifx_UReg_32Bit GTM_MCS1FAST_EN:1;
    Ifx_UReg_32Bit GTM_DPLL1A_EN:1;
    Ifx_UReg_32Bit GTM_DPLL1BC_EN:1;
    Ifx_UReg_32Bit GTM_DPLL2_EN:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit MCAN10_EN:1;
    Ifx_UReg_32Bit MCAN20_EN:1;
} Ifx_MTU_MEMTEST1_Bits;


typedef struct _Ifx_MTU_MEMTEST2_Bits
{
    Ifx_UReg_32Bit MCAN21_EN:1;
    Ifx_UReg_32Bit PSI5_EN:1;
    Ifx_UReg_32Bit ERAY_OBF0_EN:1;
    Ifx_UReg_32Bit ERAY_OBF1_EN:1;
    Ifx_UReg_32Bit ERAY_TBF_IBF0_EN:1;
    Ifx_UReg_32Bit ERAY_TBF_IBF1_EN:1;
    Ifx_UReg_32Bit ERAY_MBF0_EN:1;
    Ifx_UReg_32Bit ERAY_MBF1_EN:1;
    Ifx_UReg_32Bit reserved_8:1;
    Ifx_UReg_32Bit reserved_9:1;
    Ifx_UReg_32Bit reserved_10:1;
    Ifx_UReg_32Bit reserved_11:1;
    Ifx_UReg_32Bit reserved_12:1;
    Ifx_UReg_32Bit SCR_XRAM_EN:1;
    Ifx_UReg_32Bit SCR_RAMINT_EN:1;
    Ifx_UReg_32Bit reserved_15:1;
    Ifx_UReg_32Bit reserved_16:1;
    Ifx_UReg_32Bit reserved_17:1;
    Ifx_UReg_32Bit GIGETH_RX_EN:1;
    Ifx_UReg_32Bit GIGETH_TX_EN:1;
    Ifx_UReg_32Bit reserved_20:1;
    Ifx_UReg_32Bit reserved_21:1;
    Ifx_UReg_32Bit reserved_22:1;
    Ifx_UReg_32Bit reserved_23:1;
    Ifx_UReg_32Bit reserved_24:1;
    Ifx_UReg_32Bit reserved_25:1;
    Ifx_UReg_32Bit reserved_26:1;
    Ifx_UReg_32Bit reserved_27:1;
    Ifx_UReg_32Bit reserved_28:1;
    Ifx_UReg_32Bit reserved_29:1;
    Ifx_UReg_32Bit reserved_30:1;
    Ifx_UReg_32Bit reserved_31:1;
} Ifx_MTU_MEMTEST2_Bits;







typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_ACCEN0_Bits B;
} Ifx_MTU_ACCEN0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_ACCEN1_Bits B;
} Ifx_MTU_ACCEN1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_CLC_Bits B;
} Ifx_MTU_CLC;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_ID_Bits B;
} Ifx_MTU_ID;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_ALMSRCS_Bits B;
} Ifx_MTU_MC_ALMSRCS;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_CONFIG0_Bits B;
} Ifx_MTU_MC_CONFIG0;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_CONFIG1_Bits B;
} Ifx_MTU_MC_CONFIG1;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_ECCD_Bits B;
} Ifx_MTU_MC_ECCD;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_ECCS_Bits B;
} Ifx_MTU_MC_ECCS;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_ERRINFO_Bits B;
} Ifx_MTU_MC_ERRINFO;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_ETRR_Bits B;
} Ifx_MTU_MC_ETRR;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_FAULTSTS_Bits B;
} Ifx_MTU_MC_FAULTSTS;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_MCONTROL_Bits B;
} Ifx_MTU_MC_MCONTROL;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_MSTATUS_Bits B;
} Ifx_MTU_MC_MSTATUS;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_RANGE_Bits B;
} Ifx_MTU_MC_RANGE;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_RDBFL_Bits B;
} Ifx_MTU_MC_RDBFL;


typedef union
{
    Ifx_UReg_16Bit U;
    Ifx_SReg_16Bit I;
    Ifx_MTU_MC_REVID_Bits B;
} Ifx_MTU_MC_REVID;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMDONE0_Bits B;
} Ifx_MTU_MEMDONE0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMDONE1_Bits B;
} Ifx_MTU_MEMDONE1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMDONE2_Bits B;
} Ifx_MTU_MEMDONE2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMFDA0_Bits B;
} Ifx_MTU_MEMFDA0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMFDA1_Bits B;
} Ifx_MTU_MEMFDA1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMFDA2_Bits B;
} Ifx_MTU_MEMFDA2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMMAP_Bits B;
} Ifx_MTU_MEMMAP;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMSTAT0_Bits B;
} Ifx_MTU_MEMSTAT0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMSTAT1_Bits B;
} Ifx_MTU_MEMSTAT1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMSTAT2_Bits B;
} Ifx_MTU_MEMSTAT2;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMTEST0_Bits B;
} Ifx_MTU_MEMTEST0;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMTEST1_Bits B;
} Ifx_MTU_MEMTEST1;


typedef union
{
    Ifx_UReg_32Bit U;
    Ifx_SReg_32Bit I;
    Ifx_MTU_MEMTEST2_Bits B;
} Ifx_MTU_MEMTEST2;
# 952 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxMtu_regdef.h"
typedef volatile struct _Ifx_MTU_MC
{
       Ifx_MTU_MC_CONFIG0 CONFIG0;
       Ifx_MTU_MC_CONFIG1 CONFIG1;
       Ifx_MTU_MC_MCONTROL MCONTROL;
       Ifx_MTU_MC_MSTATUS MSTATUS;
       Ifx_MTU_MC_RANGE RANGE;
       Ifx_UReg_8Bit reserved_A[2];
       Ifx_MTU_MC_REVID REVID;
       Ifx_MTU_MC_ECCS ECCS;
       Ifx_MTU_MC_ECCD ECCD;
       Ifx_MTU_MC_ETRR ETRR[5];
       Ifx_UReg_8Bit reserved_1C[68];
       Ifx_MTU_MC_RDBFL RDBFL[67];
       Ifx_UReg_8Bit reserved_E6[8];
       Ifx_MTU_MC_ALMSRCS ALMSRCS;
       Ifx_MTU_MC_FAULTSTS FAULTSTS;
       Ifx_MTU_MC_ERRINFO ERRINFO[5];
       Ifx_UReg_8Bit reserved_FC[4];
} Ifx_MTU_MC;
# 986 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxMtu_regdef.h"
typedef volatile struct _Ifx_MTU
{
       Ifx_MTU_CLC CLC;
       Ifx_UReg_8Bit reserved_4[4];
       Ifx_MTU_ID ID;
       Ifx_UReg_8Bit reserved_C[4];
       Ifx_MTU_MEMTEST0 MEMTEST0;
       Ifx_MTU_MEMTEST1 MEMTEST1;
       Ifx_MTU_MEMTEST2 MEMTEST2;
       Ifx_MTU_MEMMAP MEMMAP;
       Ifx_UReg_8Bit reserved_20[24];
       Ifx_MTU_MEMSTAT0 MEMSTAT0;
       Ifx_MTU_MEMSTAT1 MEMSTAT1;
       Ifx_MTU_MEMSTAT2 MEMSTAT2;
       Ifx_UReg_8Bit reserved_44[12];
       Ifx_MTU_MEMDONE0 MEMDONE0;
       Ifx_MTU_MEMDONE1 MEMDONE1;
       Ifx_MTU_MEMDONE2 MEMDONE2;
       Ifx_UReg_8Bit reserved_5C[4];
       Ifx_MTU_MEMFDA0 MEMFDA0;
       Ifx_MTU_MEMFDA1 MEMFDA1;
       Ifx_MTU_MEMFDA2 MEMFDA2;
       Ifx_UReg_8Bit reserved_6C[140];
       Ifx_MTU_ACCEN1 ACCEN1;
       Ifx_MTU_ACCEN0 ACCEN0;
       Ifx_UReg_8Bit reserved_100[3840];
       Ifx_MTU_MC MC[96];
       Ifx_UReg_8Bit reserved_7000[36864];
} Ifx_MTU;
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxMtu_reg.h" 2
# 2 ".\\output\\inc/IfxMtu_reg.h" 2
# 46 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c" 2
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
# 47 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c" 2
# 1 ".\\output\\inc/IfxPms_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_bf.h" 1
# 2 ".\\output\\inc/IfxPms_bf.h" 2
# 48 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c" 2
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
# 49 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c" 2
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
# 50 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c" 2





# 1 ".\\output\\inc/HtxMonbist.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\inc\\HtxMonbist.h" 1
# 45 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\inc\\HtxMonbist.h"
# 1 ".\\output\\inc/HtxStpIf.h" 1
# 46 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\inc\\HtxMonbist.h" 2





# 1 ".\\output\\inc/HtxTestHnd_ErrorCodes.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h" 1
# 51 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h"
# 1 ".\\output\\inc/HtxStpIf.h" 1
# 52 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h" 2
# 151 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h"
typedef uint32 HtxTestHnd_TstRsltType;
# 2 ".\\output\\inc/HtxTestHnd_ErrorCodes.h" 2
# 52 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\inc\\HtxMonbist.h" 2
# 79 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\inc\\HtxMonbist.h"
# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 1400 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 80 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\inc\\HtxMonbist.h" 2
# 137 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\inc\\HtxMonbist.h"
extern HtxTestHnd_TstRsltType HtxMonbist_Test
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
);







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 1412 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 151 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\inc\\HtxMonbist.h" 2
# 2 ".\\output\\inc/HtxMonbist.h" 2
# 56 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c" 2
# 96 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c"
typedef struct HtxMonbist_BackupType
{
    Ifx_PMS_MONFILT PmsMonFiltReg;
    Ifx_PMS_PMSIEN PmsIenReg;
} HtxMonbist_BackupType;
# 116 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c"
# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 1206 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section "ClearedData.LmuNC.32bit" aw 4
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 117 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c" 2

static HtxMonbist_BackupType HtxMonbist_Backup;







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 1219 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 127 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c" 2
# 138 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c"
# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 1400 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 139 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c" 2

static void HtxMonBist_lBackupReg(void);

static void HtxMonBist_lRestoreReg(void);







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 1412 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 151 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c" 2
# 162 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c"
# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 1400 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 163 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c" 2
# 222 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c"
HtxTestHnd_TstRsltType HtxMonbist_Test
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
)
{
    HtxTestHnd_TstRsltType ReturnValue;
    uint32 TimeoutFlag;
    uint32 StartTime;




    Ifx_PMS_MONBISTSTAT MonbistStatReg;
    uint8 lSmuEnFlag;





    *TstSignature = (uint32)(__crc32bw((unsigned int)((uint32)(((uint16)0x0005))),(unsigned int)((uint32)(TstSeed))));


    *TstSignature = (uint32)(__crc32bw((unsigned int)((uint32)(*TstSignature)),(unsigned int)((uint32)(ParamSetIndex))));


    HtxMonBist_lBackupReg();

    lSmuEnFlag = 0U;
    if((*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).B.SMUEN != 1U)
    {
        lSmuEnFlag = 1U;

        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U,(0x40000001U));
    }



    Mcal_WriteSafetyEndInitProtRegMask(&(*(volatile Ifx_PMS_MONBISTCTRL*)0xF0248198u).U,1U,(uint32)((uint32)(0x1u) << (1u)))
                                                                                                                        ;


    if(((*(volatile Ifx_PMS_MONFILT*)0xF0248070u)).B.SLCK != 1U)
    {

        Mcal_WriteSafetyEndInitProtReg(&((*(volatile Ifx_PMS_MONFILT*)0xF0248070u)).U,(0x20000000U));


        Mcal_WriteSafetyEndInitProtReg(&((*(volatile Ifx_PMS_MONCTRL*)0xF0248068u)).U,(0x00a5a5a5U));





        Mcal_WriteSafetyEndInitProtRegMask(&(*(volatile Ifx_PMS_PMSIEN*)0xF0248074u).U,0U,(0x00000FFFU));


        Mcal_WriteSafetyEndInitProtReg(&((*(volatile Ifx_PMS_AGFSP_STDBY0*)0xF02481A4u)).U,(0x40000000U));
        Mcal_WriteSafetyEndInitProtReg(&((*(volatile Ifx_PMS_AGFSP_STDBY1*)0xF02481A8u)).U,(0x40000000U));




        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U,(0x40000009U));
        Mcal_WriteSafetyEndInitProtReg(&((*(volatile Ifx_PMS_AG_STDBY0*)0xF0248188u)).U,(0x0000FFF0U));
        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U,(0x40000009U));
        Mcal_WriteSafetyEndInitProtReg(&((*(volatile Ifx_PMS_AG_STDBY1*)0xF024818Cu)).U,(0x0001FFBFU));


        Mcal_WriteSafetyEndInitProtReg(&((*(volatile Ifx_PMS_MONFILT*)0xF0248070u)).U,0U);


        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_MONBISTCTRL*)0xF0248198u).U,(0x40000001U));



        TimeoutFlag = 0U;
        StartTime = (*(volatile Ifx_STM_TIM0*)0xF0001010u).U;
        while((((*(volatile Ifx_PMS_MONBISTSTAT*)0xF0248190u).U & (0x0000000CU)) != (0x00000008U))
                && (TimeoutFlag != (0x2000U)))
        {
            if (((*(volatile Ifx_STM_TIM0*)0xF0001010u).U - StartTime) >= (0x2000U))
            {

                TimeoutFlag = (0x2000U);
            }
        }


        if(TimeoutFlag != (0x2000U))
        {



            MonbistStatReg.U = (*(volatile Ifx_PMS_MONBISTSTAT*)0xF0248190u).U;
            if((MonbistStatReg.B.TSTOK) == 1U)
            {
                ReturnValue = (0x000501FFU);
            }
            else
            {
                if(((MonbistStatReg.B.PMSERR) == 1U) && ((MonbistStatReg.B.SMUERR) == 1U))
                {
                    ReturnValue = (0x00050002U);
                }
                else if((MonbistStatReg.B.PMSERR) == 1U)
                {
                    ReturnValue = (0x00050001U);
                }
                else if((MonbistStatReg.B.SMUERR) == 1U)
                {
                    ReturnValue = (0x00050000U);
                }
                else
                {
                    ReturnValue = (0x00050004U);
                }
            }
        }
        else
        {

            ReturnValue = (0x00050003U);
        }


        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U,(0x40000009U));
        Mcal_WriteSafetyEndInitProtReg(&((*(volatile Ifx_PMS_AG_STDBY0*)0xF0248188u)).U,(0x0000FFF0U));
        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U,(0x40000009U));
        Mcal_WriteSafetyEndInitProtReg(&((*(volatile Ifx_PMS_AG_STDBY1*)0xF024818Cu)).U,(0x0001FFBFU));
    }
    else
    {

        ReturnValue = (0x00050005U);
    }

    if(lSmuEnFlag == 1U)
    {

        Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_CMD_STDBY*)0xF024819Cu).U,(0x40000000U));
    }

    *TstSignature = (uint32)(__crc32bw((unsigned int)((uint32)(*TstSignature)),(unsigned int)((uint32)(ReturnValue))));


    HtxMonBist_lRestoreReg();

    return ReturnValue;
}
# 406 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c"
static void HtxMonBist_lBackupReg(void)
{
    HtxMonbist_Backup.PmsMonFiltReg.U = ((*(volatile Ifx_PMS_MONFILT*)0xF0248070u)).U;
    HtxMonbist_Backup.PmsIenReg.U = (*(volatile Ifx_PMS_PMSIEN*)0xF0248074u).U;
}
# 441 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c"
static void HtxMonBist_lRestoreReg(void)
{
    Mcal_WriteSafetyEndInitProtReg(&((*(volatile Ifx_PMS_MONFILT*)0xF0248070u)).U,(uint32)HtxMonbist_Backup.PmsMonFiltReg.U);
    Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_PMSIEN*)0xF0248074u).U,(uint32)HtxMonbist_Backup.PmsIenReg.U);
}







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 1412 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 454 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\04_HtxMonbist\\src\\HtxMonbist.c" 2
