# 1 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
# 53 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
# 1 ".\\output\\inc/Support_EndInit.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\Support\\inc\\Support_EndInit.h" 1

# 1 ".\\output\\inc/Ifx_Ssw_Infra.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h" 1
# 28 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h"
# 1 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Compilers.h" 1
# 38 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Compilers.h"
# 1 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_CompilersGnuc.h" 1
# 33 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_CompilersGnuc.h"
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
# 34 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_CompilersGnuc.h" 2
# 94 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_CompilersGnuc.h"
typedef volatile union
{
    unsigned char *ucPtr;
    unsigned short *usPtr;
    unsigned int *uiPtr;
    unsigned long long *ullPtr;
} Ifx_Ssw_CTablePtr;
# 110 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_CompilersGnuc.h"
static inline __attribute__ ((always_inline)) void Ifx_Ssw_NOP(void)
{
    __asm__ volatile ("nop" : : : "memory");
}


static inline __attribute__ ((always_inline)) void Ifx_Ssw_DSYNC(void)
{
    __asm__ volatile ("dsync" : : : "memory");
}


static inline __attribute__ ((always_inline)) void Ifx_Ssw_ISYNC(void)
{
    __asm__ volatile ("isync" : : : "memory");
}


static inline __attribute__ ((always_inline)) unsigned int Ifx_Ssw_MINU(unsigned int a, unsigned int b)
{
    unsigned int res;
    __asm__ volatile ("min.u %0, %1, %2" : "=d" (res) : "d" (a), "d" (b));
    return res;
}
# 143 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_CompilersGnuc.h"
static inline __attribute__ ((always_inline)) void Ifx_Ssw_moveToDataParam0(unsigned int var)
{
    __asm__ volatile ("mov\t %%d2, %0" ::"d" (var));
}


static inline __attribute__ ((always_inline)) unsigned int Ifx_Ssw_getDataParam0(void)
{
    unsigned int var;
    __asm__ volatile (" mov\t %0, %%d2" : "=d" (var));
    return var;
}


static inline __attribute__ ((always_inline)) void Ifx_Ssw_jumpToFunction(void (*fun)(void))
{
    __asm__ volatile ("ji %0" ::"a" (fun));
}


static inline __attribute__ ((always_inline)) void Ifx_Ssw_jumpToFunctionWithLink(void *fun)
{
    __asm__ volatile ("jli %0" ::"a" (fun));
}


static inline __attribute__ ((always_inline)) void Ifx_Ssw_jumpBackToLink(void)
{
    __asm__ volatile ("ji %a11");
}


extern unsigned int __clear_table[];
extern unsigned int __copy_table[];

static inline __attribute__ ((always_inline)) void Ifx_Ssw_C_InitInline(void)
{
    Ifx_Ssw_CTablePtr pBlockDest, pBlockSrc;
    unsigned int uiLength, uiCnt;
    unsigned int *pTable;

    pTable = (unsigned int *)&__clear_table;

    while (pTable)
    {
        pBlockDest.uiPtr = (unsigned int *)*pTable++;
        uiLength = *pTable++;


        if (uiLength == 0xFFFFFFFF)
        {
            break;
        }

        uiCnt = uiLength / 8;

        while (uiCnt--)
        {
            *pBlockDest.ullPtr++ = 0;
        }

        if (uiLength & 0x4)
        {
            *pBlockDest.uiPtr++ = 0;
        }

        if (uiLength & 0x2)
        {
            *pBlockDest.usPtr++ = 0;
        }

        if (uiLength & 0x1)
        {
            *pBlockDest.ucPtr = 0;
        }
    }


    pTable = (unsigned int *)&__copy_table;

    while (pTable)
    {
        pBlockSrc.uiPtr = (unsigned int *)*pTable++;
        pBlockDest.uiPtr = (unsigned int *)*pTable++;
        uiLength = *pTable++;


        if (uiLength == 0xFFFFFFFF)
        {
            break;
        }

        uiCnt = uiLength / 8;

        while (uiCnt--)
        {
            *pBlockDest.ullPtr++ = *pBlockSrc.ullPtr++;
        }

        if (uiLength & 0x4)
        {
            *pBlockDest.uiPtr++ = *pBlockSrc.uiPtr++;
        }

        if (uiLength & 0x2)
        {
            *pBlockDest.usPtr++ = *pBlockSrc.usPtr++;
        }

        if (uiLength & 0x1)
        {
            *pBlockDest.ucPtr = *pBlockSrc.ucPtr;
        }
    }
}
# 39 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Compilers.h" 2
# 29 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h" 2
# 1 ".\\output\\inc/IfxScu_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h" 1
# 57 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h" 1
# 96 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
typedef unsigned char Ifx_UReg_8Bit;
typedef unsigned short Ifx_UReg_16Bit;
typedef unsigned int Ifx_UReg_32Bit;
typedef signed char Ifx_SReg_8Bit;
typedef signed short Ifx_SReg_16Bit;
typedef signed int Ifx_SReg_32Bit;
# 58 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h" 2
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
# 30 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h" 2
# 1 ".\\output\\inc/IfxCpu_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_reg.h" 1
# 65 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h" 1
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
# 31 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h" 2
# 1 ".\\output\\inc/IfxScu_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_bf.h" 1
# 2 ".\\output\\inc/IfxScu_bf.h" 2
# 32 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h" 2
# 1 ".\\output\\inc/IfxCpu_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_bf.h" 1
# 2 ".\\output\\inc/IfxCpu_bf.h" 2
# 33 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h" 2
# 138 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern unsigned short Ifx_Ssw_getCpuWatchdogPassword(Ifx_SCU_WDTCPU *watchdog);







extern unsigned short Ifx_Ssw_getSafetyWatchdogPassword(void);
# 158 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_clearCpuEndinit(Ifx_SCU_WDTCPU *watchdog, unsigned short password);
# 168 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_setCpuEndinit(Ifx_SCU_WDTCPU *watchdog, unsigned short password);
# 179 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_clearSafetyEndinit(unsigned short password);
# 188 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_setSafetyEndinit(unsigned short password);
# 198 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_disableCpuWatchdog(Ifx_SCU_WDTCPU *watchdog, unsigned short password);
# 208 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_enableCpuWatchdog(Ifx_SCU_WDTCPU *watchdog, unsigned short password);
# 217 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_disableSafetyWatchdog(unsigned short password);
# 226 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_enableSafetyWatchdog(unsigned short password);





extern void Ifx_Ssw_startCore(Ifx_CPU *cpu, unsigned int programCounter);


extern void Ifx_Ssw_setCpu0Idle(void);


extern void Ifx_Ssw_C_Init(void);




extern float Ifx_Ssw_getStmFrequency(void);
# 253 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_serviceCpuWatchdog(Ifx_SCU_WDTCPU *watchdog, unsigned short password);
# 263 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_serviceSafetyWatchdog(unsigned short password);


static inline __attribute__ ((always_inline)) unsigned short Ifx_Ssw_getGlobalSafetyEndinitPasswordInline(void)
{




    unsigned short password = (unsigned short)((*(Ifx_SCU*)0xF0036000u)).SEICON0.B.EPW ^ (0x003FU);
    return password;
}


static inline __attribute__ ((always_inline)) void Ifx_Ssw_clearGlobalSafetyEndinitInline(unsigned short password)
{

    ((*(Ifx_SCU*)0xF0036000u)).SEICON0.U = (unsigned short)(0xFFFCU << (16u)) | ((unsigned int)password << (2u));


    ((*(Ifx_SCU*)0xF0036000u)).SEICON0.U;
}


static inline __attribute__ ((always_inline)) void Ifx_Ssw_setGlobalSafetyEndinitInline(unsigned short password)
{

    ((*(Ifx_SCU*)0xF0036000u)).SEICON0.U = (unsigned short)(0xFFFCU << (16u)) |
                           ((unsigned int)password << (2u)) |
                           ((unsigned int)1 << (1u));


    ((*(Ifx_SCU*)0xF0036000u)).SEICON0.U;
}


static inline __attribute__ ((always_inline)) unsigned short Ifx_Ssw_getCpuWatchdogPasswordInline(Ifx_SCU_WDTCPU *watchdog)
{
    unsigned short password;




    password = watchdog->CON0.B.PW;
    password ^= (0x003FU);

    return password;
}


static inline __attribute__ ((always_inline)) unsigned short Ifx_Ssw_getSafetyWatchdogPasswordInline(void)
{
    unsigned short password;
    Ifx_SCU_WDTS *watchdog;
    watchdog = &((*(Ifx_SCU*)0xF0036000u)).WDTS;



    password = watchdog->CON0.B.PW;
    password ^= (0x003FU);

    return password;
}


static inline __attribute__ ((always_inline)) void Ifx_Ssw_clearCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, unsigned short password)
{
    if (watchdog->CON0.B.LCK)
    {

        watchdog->CON0.U = ((unsigned int)1 << (0u)) |
                           ((unsigned int)0 << (1u)) |
                           ((unsigned int)password << (2u)) |
                           ((unsigned int)watchdog->CON0.B.REL << (16u));
    }


    watchdog->CON0.U = ((unsigned int)0 << (0u)) |
                       ((unsigned int)1 << (1u)) |
                       ((unsigned int)password << (2u)) |
                       ((unsigned int)watchdog->CON0.B.REL << (16u));


    watchdog->CON0.U;
}


static inline __attribute__ ((always_inline)) void Ifx_Ssw_clearSafetyEndinitInline(unsigned short password)
{
    if ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00362A8u).B.LCK)
    {

        (*(volatile Ifx_SCU_WDTS_CON0*)0xF00362A8u).U = ((unsigned int)1 << (0u)) |
                          ((unsigned int)0 << (1u)) |
                          ((unsigned int)password << (2u)) |
                          ((unsigned int)(*(volatile Ifx_SCU_WDTS_CON0*)0xF00362A8u).B.REL << (16u));
    }


    (*(volatile Ifx_SCU_WDTS_CON0*)0xF00362A8u).U = ((unsigned int)0 << (0u)) |
                      ((unsigned int)1 << (1u)) |
                      ((unsigned int)password << (2u)) |
                      ((unsigned int)(*(volatile Ifx_SCU_WDTS_CON0*)0xF00362A8u).B.REL << (16u));


    (*(volatile Ifx_SCU_WDTS_CON0*)0xF00362A8u).U;
}


static inline __attribute__ ((always_inline)) void Ifx_Ssw_setCpuEndinitInline(Ifx_SCU_WDTCPU *watchdog, unsigned short password)
{
    if (watchdog->CON0.B.LCK)
    {

        watchdog->CON0.U = ((unsigned int)1 << (0u)) |
                           ((unsigned int)0 << (1u)) |
                           ((unsigned int)password << (2u)) |
                           ((unsigned int)watchdog->CON0.B.REL << (16u));
    }


    watchdog->CON0.U = ((unsigned int)1 << (0u)) |
                       ((unsigned int)1 << (1u)) |
                       ((unsigned int)password << (2u)) |
                       ((unsigned int)watchdog->CON0.B.REL << (16u));


    watchdog->CON0.U;
}


static inline __attribute__ ((always_inline)) void Ifx_Ssw_setSafetyEndinitInline(unsigned short password)
{
    if ((*(volatile Ifx_SCU_WDTS_CON0*)0xF00362A8u).B.LCK)
    {

        (*(volatile Ifx_SCU_WDTS_CON0*)0xF00362A8u).U = ((unsigned int)1 << (0u)) |
                          ((unsigned int)0 << (1u)) |
                          ((unsigned int)password << (2u)) |
                          ((unsigned int)(*(volatile Ifx_SCU_WDTS_CON0*)0xF00362A8u).B.REL << (16u));
    }


    (*(volatile Ifx_SCU_WDTS_CON0*)0xF00362A8u).U = ((unsigned int)1 << (0u)) |
                      ((unsigned int)1 << (1u)) |
                      ((unsigned int)password << (2u)) |
                      ((unsigned int)(*(volatile Ifx_SCU_WDTS_CON0*)0xF00362A8u).B.REL << (16u));


    (*(volatile Ifx_SCU_WDTS_CON0*)0xF00362A8u).U;
}




#pragma GCC optimize ("-O2")


static inline __attribute__ ((always_inline)) unsigned char Ifx_Ssw_isApplicationReset(void)
{
    unsigned char returnVal;
    unsigned int tempValue = (*(volatile Ifx_SCU_RSTSTAT*)0xF0036050u).U;

    if ((tempValue & (((unsigned int)(0x1u) << (28u)) | ((unsigned int)(0x1u) << (25u)) | ((unsigned int)(0x1u) << (24u)) | ((unsigned int)(0x1u) << (23u)) | ((unsigned int)(0x1u) << (19u)) | ((unsigned int)(0x1u) << (18u)) | ((unsigned int)(0x1u) << (16u)))) > 0U)
    {
        returnVal = 0U;
    }
    else if ((tempValue & (((unsigned int)(0x1u) << (4u)) | ((unsigned int)(0x1u) << (7u)) | ((unsigned int)(0x1u) << (6u)) | ((unsigned int)(0x1u) << (5u)) | ((unsigned int)(0x1u) << (3u)) | ((unsigned int)(0x1u) << (1u)) | ((unsigned int)(0x1u) << (0u)))) > 0U)
    {

        tempValue = tempValue & (((unsigned int)(0x1u) << (4u)) | ((unsigned int)(0x1u) << (7u)) | ((unsigned int)(0x1u) << (6u)) | ((unsigned int)(0x1u) << (5u)) | ((unsigned int)(0x1u) << (3u)) | ((unsigned int)(0x1u) << (1u)) | ((unsigned int)(0x1u) << (0u)));
        tempValue = ((*(volatile Ifx_SCU_RSTCON*)0xF0036058u).U >> ((31U - __builtin_clz(tempValue)) << 1U)) & 3U;

        if (tempValue == (2U))
        {
            returnVal = 1U;
        }
        else
        {
            returnVal = 0U;
        }
    }
    else if (((unsigned int)tempValue & ((unsigned int)(0x1u) << (20u))))
    {

        returnVal = 1U;
    }
    else if ((*(volatile Ifx_CPU_KRST0*)0xF880D000u).B.RSTSTAT != 0)
    {
        returnVal = 1U;
    }
    else
    {
        returnVal = 0U;
    }

    return returnVal;
}




#pragma GCC reset_options


static inline __attribute__ ((always_inline)) void Ifx_Ssw_initCSA(unsigned int *csaBegin, unsigned int *csaEnd)
{
    unsigned int k;
    unsigned int nxt_cxi_val = 0U;
    unsigned int *prvCsa = 0U;
    unsigned int *nxtCsa = csaBegin;

    for (k = 0U; k < (((unsigned int)csaBegin - (unsigned int)csaEnd) / 64U); k++)
    {
        nxt_cxi_val = ((unsigned int)((unsigned int)nxtCsa & ((unsigned int)0XFU << 28U)) >> 12U) |
                      ((unsigned int)((unsigned int)nxtCsa & ((unsigned int)0XFFFFU << 6U)) >> 6U);

        if (k == 0U)
        {
            do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE38" ", %0" :: "d" (__newval) : "memory"); } while (0);;
        }
        else
        {
            *prvCsa = nxt_cxi_val;
        }

        prvCsa = (unsigned int *)nxtCsa;
        nxtCsa -= 16U;
    }

    *prvCsa = 0U;
    do { unsigned __newval = (unsigned) (nxt_cxi_val); __asm__ volatile ("mtcr LO:" "0xFE3C" ", %0" :: "d" (__newval) : "memory"); } while (0);;

    Ifx_Ssw_DSYNC();
}
# 2 ".\\output\\inc/Ifx_Ssw_Infra.h" 2
# 3 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\Support\\inc\\Support_EndInit.h" 2
# 2 ".\\output\\inc/Support_EndInit.h" 2
# 54 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2





# 1 ".\\output\\inc/StpRefApp.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h" 1
# 43 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\StpRefApp.h"
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
# 60 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
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
# 61 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/Ifx_Ssw_Infra.h" 1
# 62 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/Ifx_Ssw.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw.h" 1
# 32 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw.h"
# 1 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_LegacySwCfg.h" 1
# 28 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_LegacySwCfg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Cfg.h" 1
# 29 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw_LegacySwCfg.h" 2
# 33 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw.h" 2
# 80 ".\\output\\inc/..\\..\\Integration\\TC38x\\Ifx_Ssw.h"
typedef struct
{
    unsigned short bmi;
    unsigned short bmhdid;
    unsigned int stad;
    unsigned int crc;
    unsigned int crcInv;
    unsigned int reserved0[60];
    unsigned int pw[8];
    unsigned int reserved1[52];
    unsigned int confirmation;
} Ifx_Ssw_Bmhd;




void __Core1_start(void);
void __Core2_start(void);
void __Core3_start(void);
# 2 ".\\output\\inc/Ifx_Ssw.h" 2
# 63 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/AppCbk.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h" 1
# 46 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h"
# 1 ".\\output\\inc/Platform_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h" 1
# 2 ".\\output\\inc/Platform_Types.h" 2
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h" 2
# 72 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h"
typedef uint32 AppCbk_ErrorIdType;
# 117 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\inc\\AppCbk.h"
extern void AppCbk_ErrorHandler(AppCbk_ErrorIdType ErrorId);
extern void AppCbk_PfmErrorHandler(uint32 ErrorType);
extern void AppCbk_PfmMonitorFaultHandler(uint32 Seid, uint32 FaultType);
# 2 ".\\output\\inc/AppCbk.h" 2
# 64 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/TstM.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h" 1
# 43 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 44 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h" 2





# 1 ".\\output\\inc/HtxTestHnd.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 1
# 45 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
# 1 ".\\output\\inc/HtxStpIf.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 1
# 56 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 57 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 1 ".\\output\\inc/Platform_Types.h" 1
# 58 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 1 ".\\output\\inc/McalLib.h" 1
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
# 69 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 1 ".\\output\\inc/AppCbk.h" 1
# 70 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxStpIf.h" 2
# 2 ".\\output\\inc/HtxStpIf.h" 2
# 46 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2





# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h" 1
# 51 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h"
# 1 ".\\output\\inc/HtxStpIf.h" 1
# 52 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h" 2
# 151 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h"
typedef uint32 HtxTestHnd_TstRsltType;
# 52 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2
# 1 ".\\output\\inc/HtxTestHnd_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxTestHnd_Cfg.h" 1
# 2 ".\\output\\inc/HtxTestHnd_Cfg.h" 2
# 53 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2
# 71 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
typedef uint32 HtxTestHnd_TstPhaseType;


typedef HtxTestHnd_TstRsltType (*HtxTestHnd_TestFptrType)
(
    const uint8 ParamSetIndex,
    const uint8 TstSeed,
    uint32* const TstSignature
);




typedef struct HtxTestHnd_StartupTestInfoType
{
    HtxTestHnd_TestFptrType TestFuncPtr;
    uint8 ParamSetIdx;
} HtxTestHnd_StartupTestInfoType;






typedef struct HtxTestHnd_RunTimeTestInfoType
{
    HtxTestHnd_TestFptrType TestFuncPtr;
    uint8 ParamSetIdx;
    uint8 SmuSoftwareAlarmIdx;
} HtxTestHnd_RunTimeTestInfoType;
# 118 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 141 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 119 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2


extern const HtxTestHnd_StartupTestInfoType HtxTestHnd_kStartupTestInfo[(8U)];







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 154 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 130 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 221 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section "Config.Cpu0.8bit" a
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 138 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2


extern const uint8 HtxTestHnd_kStartupTestGroup[(3U)][(5U)];


extern const uint8 HtxTestHnd_kStartupTestGrpCore[(3U)];







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 233 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 152 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2
# 163 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 141 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 164 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2


extern const HtxTestHnd_RunTimeTestInfoType HtxTestHnd_kRunTimeTestInfo[(8U)];







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 154 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 175 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 221 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section "Config.Cpu0.8bit" a
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 183 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2



extern const uint8 HtxTestHnd_kRunTimeTestGroup[(4U)][(4U)];


extern const uint8 HtxTestHnd_kRunTimeTestGrpCore[(4U)];







# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 233 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 198 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2
# 217 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 250 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 218 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2
# 250 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
extern Std_ReturnType HtxTestHnd_Init(void);
# 291 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
extern Std_ReturnType HtxTestHnd_ExecStartupTestGrp
(
    const uint8 TstSeed,
    const uint8 TstGroupIndex,
    uint32* const TstSignaturePtr
);
# 331 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
extern Std_ReturnType HtxTestHnd_SwitchToRunPhase(void);
# 371 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
extern Std_ReturnType HtxTestHnd_ExecRuntimeTestGrp
(
    const uint8 TstSeed,
    const uint8 TstGroupIndex,
    uint32* const TstSignaturePtr
);
# 412 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
extern void HtxTestHnd_ClearRuntimeTestData(void);
# 451 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
extern HtxTestHnd_TstRsltType HtxTestHnd_GetStartupTestResult(const uint8 TestIndex);
# 491 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
extern HtxTestHnd_TstRsltType HtxTestHnd_GetRuntimeTestResult(const uint8 TestIndex);
# 502 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h"
# 1 ".\\output\\inc/HtxTestLib_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h" 1
# 262 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTestLib_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTestLib_MemMap.h" 2
# 503 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd.h" 2
# 2 ".\\output\\inc/HtxTestHnd.h" 2
# 50 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h" 2
# 70 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h"
uint8 TstM_u8GetProgFlowStartFlag(void);
# 102 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h"
extern void TstM_Init(void);
# 135 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h"
extern void TstM_ExecStartupTestGroup(uint8 GroupIndex);
# 169 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h"
extern void TstM_SwitchToRunPhase(void);
# 203 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h"
extern void TstM_ExecRuntimeTest(void);
# 237 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h"
extern void TstM_InvalidateSeed(void);
# 270 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h"
extern void TstM_InvalidateRunTimeTestData(void);
# 303 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\TstM\\inc\\TstM.h"
extern uint32 TstM_GetConsolidatedSignature(void);
# 2 ".\\output\\inc/TstM.h" 2
# 65 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/HtxStpIf.h" 1
# 66 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/HtxTestHnd.h" 1
# 67 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 76 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
# 1 ".\\output\\inc/SafeWdgM.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h" 1
# 45 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 46 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h" 2





# 1 ".\\output\\inc/HtxWdgIf.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 1
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
# 1 ".\\output\\inc/HtxStpIf.h" 1
# 48 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h" 1
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h"
# 1 ".\\output\\inc/HtxStpIf.h" 1
# 48 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h" 2
# 71 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h"
typedef enum HtxWdgIf_ResultType
{
    HTXWDGIF_JOB_ACCEPTED = (1U),
    HTXWDGIF_JOB_FAILED,
    HTXWDGIF_JOB_FAILED_CRC,
    HTXWDGIF_JOB_INV_PARAM,
    HTXWDGIF_JOB_COM_ERR,
    HTXWDGIF_JOB_BUSY,
    HTXWDGIF_JOB_INV_STATE,
    HTXWDGIF_JOB_READBACK_FAIL,
    HTXWDGIF_JOB_INIT_FAIL,
    HTXWDGIF_JOB_RD_DATA_FAIL,
    HTXWDGIF_JOB_FAILED_SERVICE,
    HTXWDGIF_JOB_INVALID_SEED,
    HTXWDGIF_JOB_SUCCESS
} HtxWdgIf_ResultType;


typedef enum HtxWdgIf_IntWdgStateType
{

    HTXWDGIF_INT_SWDG_UNKNOWN = (1U),
    HTXWDGIF_INT_SWDG_INIT,
    HTXWDGIF_INT_SWDG_ACTIVE,
    HTXWDGIF_INT_SWDG_FAIL
} HtxWdgIf_IntWdgStateType;

typedef enum HtxWdgIf_ExtWdgStateType
{

    HTXWDGIF_EXT_TLF_NONE = (0U),
    HTXWDGIF_EXT_TLF_INIT,
    HTXWDGIF_EXT_TLF_NORMAL,
    HTXWDGIF_EXT_TLF_SLEEP,
    HTXWDGIF_EXT_TLF_STANDBY,
    HTXWDGIF_EXT_TLF_WAKE,
    HTXWDGIF_EXT_TLF_UNDEFINED1,
    HTXWDGIF_EXT_TLF_UNDEFINED2
} HtxWdgIf_ExtWdgStateType;





typedef struct HtxWdgIf_CmdType
{
    uint8 ReqCmd;
    uint8 UserData;
} HtxWdgIf_CmdType;


typedef struct HtxWdgIf_ConfigType
{
    const void* const DriverIntConfigPtr;
    const void* const DriverExtConfigPtr;
} HtxWdgIf_ConfigType;

typedef struct HtxWdgIf_StateType
{
    HtxWdgIf_IntWdgStateType IntWdgState;
    HtxWdgIf_ExtWdgStateType ExtWdgState;
} HtxWdgIf_StateType;
# 49 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2
# 1 ".\\output\\inc/HtxWdgIf_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxWdgIf_Cfg.h" 1
# 45 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxWdgIf_Cfg.h"
# 1 ".\\output\\inc/HtxWdgIf_Types.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf_Types.h" 1
# 2 ".\\output\\inc/HtxWdgIf_Types.h" 2
# 46 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxWdgIf_Cfg.h" 2
# 1 ".\\output\\inc/HtxTLF35584.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 1
# 46 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
# 1 ".\\output\\inc/IfxPort_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_reg.h" 1
# 122 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h" 1
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
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2





# 1 ".\\output\\inc/HtxStpIf.h" 1
# 53 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 1 ".\\output\\inc/HtxTLF35584_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxTLF35584_Cfg.h" 1
# 2 ".\\output\\inc/HtxTLF35584_Cfg.h" 2
# 54 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 1 ".\\output\\inc/HtxWdgIf_Types.h" 1
# 55 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 1 ".\\output\\inc/HtxTLF35584Qspi.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 1
# 43 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
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
# 44 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
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
# 45 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2





# 1 ".\\output\\inc/HtxStpIf.h" 1
# 51 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 1 ".\\output\\inc/HtxTLF35584Qspi_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxTLF35584Qspi_Cfg.h" 1
# 2 ".\\output\\inc/HtxTLF35584Qspi_Cfg.h" 2
# 52 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 62 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
typedef void (*HtxTLF35584Qspi_UserCbkFuncType)(void);


typedef struct HtxTLF35584Qspi_ModConfigType
{
    volatile Ifx_QSPI* QspiModule;
    volatile Ifx_SRC_SRCR* SrcTxRegister;
    volatile Ifx_SRC_SRCR* SrcRxRegister;
    uint8 TxDmaChannel;
    uint8 RxDmaChannel;
    uint8 RcvInputSel;
    uint8 ModTimeQuantum;
    HtxTLF35584Qspi_UserCbkFuncType UserFunc;
} HtxTLF35584Qspi_ModConfigType;






typedef struct HtxTLF35584Qspi_ChConfigType
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

} HtxTLF35584Qspi_ChConfigType;
# 130 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 131 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 167 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern Std_ReturnType HtxTLF35584Qspi_Init
(
    const HtxTLF35584Qspi_ChConfigType* const ConfigPtr
);
# 204 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern void HtxTLF35584Qspi_DeInit(void);
# 250 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern void HtxTLF35584Qspi_TxRx
(
    uint32* TxBuf,
    uint32* RxBuf,
    uint8 Count
);
# 307 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern Std_ReturnType HtxTLF35584Qspi_CustTxRx
(
    uint32* TxBuf,
    uint32* RxBuf,
    uint32 BACONRegisterValue,
    uint8 Count
);
# 354 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
extern Std_ReturnType HtxTLF35584Qspi_RxDone(uint32* Error);
# 399 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 254 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 400 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 411 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h"
# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 412 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2

extern const HtxTLF35584Qspi_ModConfigType HtxTLF35584Qspi_ModConfigRoot;

extern const HtxTLF35584Qspi_ChConfigType HtxTLF35584Qspi_ChConfigRoot[(1U)];







# 1 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584Qspi_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584Qspi_MemMap.h" 2
# 424 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\04_HtxTLF35584Qspi\\inc\\HtxTLF35584Qspi.h" 2
# 2 ".\\output\\inc/HtxTLF35584Qspi.h" 2
# 56 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 66 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
typedef enum
{
    TLF_WM_FWD = 0,
    TLF_WM_FWD_WWD_SPI,
    TLF_WM_WWD_WDI,
    TLF_WM_WWD_SPI
} HtxTLF35584_WdgModeType;





typedef struct HtxTLF35584_ConfigType
{

    const HtxTLF35584Qspi_ChConfigType* QspiCfgPtr;

    HtxTLF35584_WdgModeType WatchdogMode;
    uint8 HeartbeatBase;
    uint8 OpenWindowHeartbeat;
    uint8 CloseWindowHeartbeat;
    uint8 FwdHeartbeat;

    uint8 WWDWdgErrorThreshold;

    uint8 FWDWdgErrorThreshold;
    volatile Ifx_P* WdiPort;
    uint8 WdiPin;

    uint32 XorResponse[(16U)];
} HtxTLF35584_ConfigType;
# 116 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
# 1 ".\\output\\inc/HtxTLF35584_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h" 1
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxTLF35584_MemMap.h" 2
# 117 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 150 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_Init(const HtxTLF35584_ConfigType* const ConfigPtr);
# 183 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_DeInit(void);
# 222 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_Activate(void);
# 270 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_Service(const uint32 Signature);
# 306 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_GetWdgInfo(void);
# 344 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_GetSeed(uint8* const NextSeedPtr);
# 381 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ExtWdgStateType HtxTLF35584_GetState(void);
# 416 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_GetJobResult(void);
# 467 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_UserRequest
(
    HtxWdgIf_CmdType* const UserCmdPtr,
    const uint8 Count
);
# 508 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern void HtxTLF35584_MainFunction(void);
# 545 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
extern HtxWdgIf_ResultType HtxTLF35584_GetErrCntr(uint8* const ErrCtrPtr);
# 554 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
# 1 ".\\output\\inc/HtxTLF35584_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h" 1
# 254 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584_MemMap.h" 2
# 555 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 566 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h"
# 1 ".\\output\\inc/HtxTLF35584_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/HtxTLF35584_MemMap.h" 2
# 567 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2

extern const HtxTLF35584_ConfigType HtxTLF35584_ConfigRoot[(1U)];







# 1 ".\\output\\inc/HtxTLF35584_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxTLF35584_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxTLF35584_MemMap.h" 2
# 577 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\03_HtxTLF35584\\inc\\HtxTLF35584.h" 2
# 2 ".\\output\\inc/HtxTLF35584.h" 2
# 47 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxWdgIf_Cfg.h" 2
# 2 ".\\output\\inc/HtxWdgIf_Cfg.h" 2
# 50 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2
# 64 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 133 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section "Config.Cpu0.Unspecified" a 4
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 65 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2

extern const HtxWdgIf_ConfigType HtxWdgIf_ConfigRoot[(1u)];


# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 146 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 70 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2
# 85 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 86 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2
# 123 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_Init(const HtxWdgIf_ConfigType* const ConfigPtr);
# 159 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_DeInit(void);
# 200 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_Activate(void);
# 242 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_Service(const uint32 Signature);
# 281 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_GetSeed(uint8* const NextSeedPtr);
# 317 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_StateType HtxWdgIf_GetState(void);
# 356 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_GetWdgInfo(void);
# 392 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern void HtxWdgIf_MainFunction(void);
# 434 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_GetErrCntr(uint8* const ErrCtrPtr);
# 483 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_UserRequest
(
    HtxWdgIf_CmdType* const UserCmdPtr,
    uint8 Count
);
# 548 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
extern HtxWdgIf_ResultType HtxWdgIf_GetJobResult(void);
# 559 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h"
# 1 ".\\output\\inc/HtxWdgIf_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h" 1
# 254 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\02_StpIntegration\\01_HtxStpIf\\inc\\HtxWdgIf_MemMap.h"
#pragma section
# 2 ".\\output\\inc/HtxWdgIf_MemMap.h" 2
# 560 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_WD\\HtxStpSrc\\01_StpSource\\02_HtxSafeWdg\\01_HtxWdgIf\\inc\\HtxWdgIf.h" 2
# 2 ".\\output\\inc/HtxWdgIf.h" 2
# 52 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h" 2
# 105 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h"
void SafeWdgM_Init(uint8 ConfigIdx);
# 138 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h"
void SafeWdgM_DeInit(void);
# 171 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h"
void SafeWdgM_Activate(void);
# 204 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h"
void SafeWdgM_GetSeed(uint8* TestSeed);
# 237 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h"
void SafeWdgM_Service(void);
# 271 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h"
void SafeWdgM_UserRequest(HtxWdgIf_CmdType* UserCmd, uint8 Size);
# 308 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h"
HtxWdgIf_ResultType SafeWdgM_GetJobResult(void);
# 345 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h"
void SafeWdgM_GetErrCntr(uint8* const ErrCtr);
# 382 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h"
void SafeWdgM_GetWdgInfo(void);
# 417 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\SafeWdgM\\inc\\SafeWdgM.h"
HtxWdgIf_StateType SafeWdgM_GetState(void);
# 2 ".\\output\\inc/SafeWdgM.h" 2
# 77 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2



# 1 ".\\output\\inc/HtxTLF35584Qspi.h" 1
# 81 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2


# 1 ".\\output\\inc/IfxScu_reg.h" 1
# 84 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/IfxPort_reg.h" 1
# 85 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/IfxQspi_reg.h" 1
# 86 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/IfxSmu_reg.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_reg.h" 1
# 56 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_reg.h"
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h" 1
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
# 87 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
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
# 88 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/Irq.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 1
# 42 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 43 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2


# 1 ".\\output\\inc/Irq_Cfg.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Gen\\inc\\Irq_Cfg.h" 1
# 2 ".\\output\\inc/Irq_Cfg.h" 2
# 46 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2
# 1 ".\\output\\inc/Mcal_Compiler.h" 1
# 1 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h" 1
# 2 ".\\output\\inc/Mcal_Compiler.h" 2
# 47 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2
# 218 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
# 1 ".\\output\\inc/Irq_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h" 1
# 65 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h"
#pragma section "Code.Cpu0" ax
# 2 ".\\output\\inc/Irq_MemMap.h" 2
# 219 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2
# 241 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqCcu6_Init(void);
# 264 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqCan_Init(void);
# 287 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqGpt_Init(void);
# 311 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqGtm_Init(void);
# 334 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqGpsrGroup_Init(void);
# 380 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqSpi_Init(void);
# 426 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqAdc_Init(void);
# 472 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqDma_Init(void);
# 495 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqScu_Init(void);
# 518 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqDmu_Init(void);
# 610 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void Irq_ClearAllInterruptFlags(void);
# 656 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h"
extern void IrqI2c_Init(void);







# 1 ".\\output\\inc/Irq_MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h" 1
# 80 ".\\output\\inc/..\\..\\Integration\\mcal\\Irq_MemMap.h"
#pragma section
# 2 ".\\output\\inc/Irq_MemMap.h" 2
# 665 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Irq\\Irq.h" 2
# 2 ".\\output\\inc/Irq.h" 2
# 89 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/IfxSrc_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSrc_bf.h" 1
# 2 ".\\output\\inc/IfxSrc_bf.h" 2
# 90 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/SBC.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC.h" 2
# 60 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC.h"
enum{
   SBC_USER_IDLE,
   SBC_USER_CMD_GOTO_STANDBY,
   SBC_USER_CMD_CLOSE_LDO,
   SBC_USER_CMD_OPEN_LDO,
   SBC_USER_CMD_GOTO_INIT,
};
# 77 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h" 1
# 78 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC.h" 2
extern uint8 SBC_u8DebounceCount;
extern uint8 SBC_u8LDOManagerState;
extern uint8 SBC_au8StdbyModCmdBuff[( 2 )];
extern uint8 SBC_au8StdbyModDataBuff[( 2 )];
extern uint8 SBC_au8CloseLDOCmdBuff[( 2 )];
extern uint8 SBC_au8CloseLDODataBuff[( 2 )];
extern uint8 SBC_au8OpenLDOCmdBuff[( 2 )];
extern uint8 SBC_au8OpenLDODataBuff[( 2 )];
extern uint8 SBC_au8InitModCmdBuff[( 2 )];
extern uint8 SBC_au8InitModDataBuff[( 2 )];
extern uint8 SBC_u8MaxWdgErrCnt;
extern uint16 SBC_au16StatusRegsNvm[( 18 )];
extern uint32 SBC_au32WdgExtXorMask[( 16 )];
extern float32 SBC_f32BatteryVoltage;
extern float32 SBC_f32BkpVoltage;
extern float32 SBC_bOtherSttFailFlg;

# 1 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h" 1
# 96 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC.h" 2






# 1 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h" 1
# 94 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h"
#pragma section ".text" ax
# 103 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC.h" 2
void SBC_vidInit(void);
void SBC_vidSetDeinitWdgCmd(const boolean);
void SBC_vidSetWdgActvFinshFlg(void);
uint8 SBC_u8GetUserCmdReq(void);
uint8 SBC_u8GetMaxWdgErrCnt(void);
boolean SBC_bGetDeinitWdgCmd(void);
boolean SBC_bGetFaultClearFlgs(void);
boolean SBC_bGetStdbyModReq(void);
boolean SBC_bGetWdgActvFinshFlg(void);
boolean SBC_bIsSbcFautOccr(void);
boolean SBC_bUnderVoltageManager(void);
boolean SBC_vidSetStdbyModCmd(const boolean);
boolean SBC_bSetUserCmdReq(const uint8 u8UserCmdReq);
boolean SBC_bCheckOutputStt(void);

extern uint16 SBCHal_u16GetAdVal_P5VCom(void);
extern uint16 SBCHal_u16GetAdVal_P5VGateway(void);
extern uint16 SBCHal_u16GetAdVal_P5VBt(void);
extern uint16 SBCHal_u16GetAdVal_P5VRef(void);
extern uint16 SBCHal_u16GetAdVal_P5VAD2S(void);
extern float32 SBCHal_f32GetBatteryVol(void);


# 1 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h" 1
# 135 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h"
#pragma section
# 127 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC.h" 2
# 2 ".\\output\\inc/SBC.h" 2
# 91 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 1 ".\\output\\inc/SBC_L.h" 1
# 1 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_L.h" 1
# 37 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_L.h"
# 1 ".\\output\\inc/Std_Types.h" 1
# 38 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_L.h" 2
# 53 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_L.h"
# 1 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h" 1
# 72 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 182 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section ".rodata.Calib_32" a 4
# 2 ".\\output\\inc/MemMap.h" 2
# 73 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h" 2
# 54 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_L.h" 2
extern const uint8 SBC_u8ServiceTimeC;
extern const uint16 SBC_ku16IntUnderVoltThdC;
extern const uint16 SBC_ku16IntUvTimoutC;
extern const float32 SBC_f32UnderVolHighThresholdC;
extern const float32 SBC_f32UnderVolLowThresholdC;
extern const float32 SBC_f32RecoverThresholdC;
extern const boolean SBC_bServiceDisableC;

# 1 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h" 1
# 77 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h"
# 1 ".\\output\\inc/MemMap.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h" 1
# 191 ".\\output\\inc/..\\..\\Integration\\mcal\\MemMap.h"
#pragma section
# 2 ".\\output\\inc/MemMap.h" 2
# 78 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h" 2
# 63 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_L.h" 2






# 1 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h" 1
# 70 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_L.h" 2
extern uint8 SBC_u8UserCmdReq;
extern uint16 SBC_u16P5vAD2SRaw;
extern uint16 SBC_u16GatewayRaw;
extern uint16 SBC_u16MainSupRaw;
extern uint16 SBC_u16P5vRefProtRaw;
extern uint16 SBC_u16P5vComRaw;
extern uint16 SBC_u16IntUvTimCnt;
extern uint16 SBC_u16OtherAbnormCnt;
extern boolean SBC_bDeintWdgCmd;
extern boolean SBC_bStdbyModReq;
extern boolean SBC_bWdgActvFlg;
extern boolean SBC_bSpiOperateFlag;
extern boolean SBC_bUserCmdSendFlag;

# 1 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_MemMap.h" 1
# 85 ".\\output\\inc/..\\..\\bswcdd\\SBC\\SBC_L.h" 2
# 2 ".\\output\\inc/SBC_L.h" 2
# 92 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c" 2
# 159 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
static uint8 StpRefApp_JobFailedCnt;
static uint8 StpRefApp_ActivateCalled;

uint8 GetActiveCall(void)
{
   return StpRefApp_ActivateCalled;
}

void SetActiveCall(uint8 u8Called)
{
   StpRefApp_ActivateCalled = u8Called;
}




static uint8 StpRefApp_DiagTestSlice;
static uint32 StpRefApp_LedCntr;
volatile static uint8 StpRefApp_TaskActive, StpRefApp_TimerFlag[6];


volatile static uint8 StpRefApp_Core1Ready;
volatile static uint8 StpRefApp_Core2Ready;
volatile static uint8 StpRefApp_Core3Ready;


volatile static uint8 StpRefApp_StartupTestDone;
volatile static uint8 StpRefApp_Core0StartupTestDone;
volatile static uint8 StpRefApp_Core1StartupTestDone;


HtxWdgIf_CmdType StpRefApp_UserCmd[3U];
uint8 StpRefApp_TLFUserdataBackup[3U];






static void StpRefApp_lSetCoreMode(uint8 CoreId, uint8 CoreMode);


static void StpRefApp_lConfigureTlfSpiPins(void);







static void StpRefApp_lConfigLedPins(void);

static void StpRefApp_lToggleLED(void);
# 254 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
void StpRefApp_SafeTpackMain(void)
{
    Ifx_PMS_PMSWSTATCLR lPmsWstatClrRegVal;



    uint8 lCoreId;


    lCoreId = (uint8)Mcal_GetCpuIndex();


    if (lCoreId == (0U))
    {
        StpRefApp_StartupTestDone = 0U;
        StpRefApp_Core0StartupTestDone = 0U;





        TstM_Init();



        TstM_ExecStartupTestGroup(0U);






        if((*(volatile Ifx_PMS_PMSWSTAT2*)0xF02480D8u).B.PINBWKP == 1U)
        {
            lPmsWstatClrRegVal.U = (*(volatile Ifx_PMS_PMSWSTATCLR*)0xF02480E8u).U;

            lPmsWstatClrRegVal.B.PINBWKPCLR = 1U;

            Mcal_WriteSafetyEndInitProtReg(&(*(volatile Ifx_PMS_PMSWSTATCLR*)0xF02480E8u).U,lPmsWstatClrRegVal.U);
        }


        Mcal_WriteCpuEndInitProtReg(&(*(volatile Ifx_SCU_RSTCON2*)0xF0036064u).U,(uint32)2U);
# 365 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
        (*(volatile Ifx_SCU_DTSCLIM*)0xF0036108u).B.EN = 0x1U;


        while((*(volatile Ifx_SCU_DTSCSTAT*)0xF0036104u).B.RESULT < (*(volatile Ifx_SCU_DTSCLIM*)0xF0036108u).B.LOWER)
        {

        }



        TstM_ExecStartupTestGroup(1U);





        StpRefApp_Core0StartupTestDone = 1U;


        Ifx_Ssw_startCore(&((*(Ifx_CPU*)0xF8820000u)), (unsigned int)&__Core1_start);


        while(StpRefApp_Core1StartupTestDone == 0U);


        Ifx_Ssw_startCore(&((*(Ifx_CPU*)0xF8840000u)), (unsigned int)&__Core2_start);

        while (StpRefApp_Core2Ready == 0U);


        Ifx_Ssw_startCore(&((*(Ifx_CPU*)0xF8860000u)), (unsigned int)&__Core3_start);

        while (StpRefApp_Core3Ready == 0U);


        TstM_SwitchToRunPhase();


        StpRefApp_StartupTestDone = 1U;
    }
    else if (lCoreId == (1U))
    {

        StpRefApp_Core1Ready = 1U;


        while(StpRefApp_Core0StartupTestDone == 0U);


        StpRefApp_lSetCoreMode((0U), (1U));



        TstM_ExecStartupTestGroup(2U);



        StpRefApp_lSetCoreMode((0U), (0U));


        StpRefApp_Core1StartupTestDone = 1U;


        while(StpRefApp_StartupTestDone == 0U);
    }
    else if (lCoreId == (2U))
    {

        StpRefApp_Core2Ready = 1U;


        while(StpRefApp_StartupTestDone == 0U);
    }
    else if (lCoreId == (3U))
    {

        StpRefApp_Core3Ready = 1U;


        while(StpRefApp_StartupTestDone == 0U);
    }
    else
    {

    }

}
# 484 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
void StpRefApp_Tick(void)
{
    uint8 i;


    if (StpRefApp_TaskActive == 1U)
    {

        AppCbk_ErrorHandler(((AppCbk_ErrorIdType)0x02U));
    }


    for(i=0U; i < (0x4U); i++)
    {
        StpRefApp_TimerFlag[i] = 1U;
    }

}
# 534 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
void StpRefApp_WaitForTick(void)
{
    uint8 lCoreId;

    lCoreId = (uint8)Mcal_GetCpuIndex();

    while (StpRefApp_TimerFlag[lCoreId] == 0U)
    {
        ;
    }

    StpRefApp_TimerFlag[lCoreId] = 0U;

}
# 580 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
void StpRefApp_SafeWdgInit(void)
{
    uint8 i;



    SafeWdgM_Init(0U);


    StpRefApp_ActivateCalled = 0U;




    StpRefApp_LedCntr = 0U;
    StpRefApp_TaskActive = 0U;
    StpRefApp_DiagTestSlice = 0U;


    for(i=0U; i < (0x4U); i++)
    {
        StpRefApp_TimerFlag[i] = 0U;
    }
}
# 612 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
void StpRefApp_vidUserCmdHandle(void)
{
   uint8 u8LocUserCmdReq = SBC_USER_IDLE;
   uint8 u8LocIdx = 0;
   uint8 u8LocCmdSize = 0;

   u8LocUserCmdReq = SBC_u8GetUserCmdReq();
   SBC_bSetUserCmdReq(SBC_USER_IDLE);
   switch(u8LocUserCmdReq)
   {
      case SBC_USER_IDLE:
      {
         break;
      }
      case SBC_USER_CMD_GOTO_STANDBY:
      {
         u8LocCmdSize = sizeof(SBC_au8StdbyModCmdBuff);
         for (u8LocIdx = 0; u8LocIdx < u8LocCmdSize; u8LocIdx++)
         {
            StpRefApp_UserCmd[u8LocIdx].ReqCmd = SBC_au8StdbyModCmdBuff[u8LocIdx];
            StpRefApp_UserCmd[u8LocIdx].UserData = SBC_au8StdbyModDataBuff[u8LocIdx];
         }
         SafeWdgM_UserRequest(&StpRefApp_UserCmd[0], u8LocCmdSize);
         break;
      }
      case SBC_USER_CMD_CLOSE_LDO:
      {
         u8LocCmdSize = sizeof(SBC_au8CloseLDOCmdBuff);
         for (u8LocIdx = 0; u8LocIdx < u8LocCmdSize; u8LocIdx++)
         {
            StpRefApp_UserCmd[u8LocIdx].ReqCmd = SBC_au8CloseLDOCmdBuff[u8LocIdx];
            StpRefApp_UserCmd[u8LocIdx].UserData = SBC_au8CloseLDODataBuff[u8LocIdx];
         }
         SafeWdgM_UserRequest(&StpRefApp_UserCmd[0], u8LocCmdSize);
         break;
      }
      case SBC_USER_CMD_OPEN_LDO:
      {
         u8LocCmdSize = sizeof(SBC_au8OpenLDOCmdBuff);
         for (u8LocIdx = 0; u8LocIdx < u8LocCmdSize; u8LocIdx++)
         {
            StpRefApp_UserCmd[u8LocIdx].ReqCmd = SBC_au8OpenLDOCmdBuff[u8LocIdx];
            StpRefApp_UserCmd[u8LocIdx].UserData = SBC_au8OpenLDODataBuff[u8LocIdx];
         }
         SafeWdgM_UserRequest(&StpRefApp_UserCmd[0], u8LocCmdSize);
         break;
      }
      case SBC_USER_CMD_GOTO_INIT:
      {
         u8LocCmdSize = sizeof(SBC_au8InitModCmdBuff);
         for (u8LocIdx = 0; u8LocIdx < u8LocCmdSize; u8LocIdx++)
         {
            StpRefApp_UserCmd[u8LocIdx].ReqCmd = SBC_au8InitModCmdBuff[u8LocIdx];
            StpRefApp_UserCmd[u8LocIdx].UserData = SBC_au8InitModDataBuff[u8LocIdx];
         }
         SafeWdgM_UserRequest(&StpRefApp_UserCmd[0], u8LocCmdSize);
         break;
      }
      default:
      {
         break;
      }
   }
}
# 707 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
HtxWdgIf_ResultType JobStatus;
HtxWdgIf_StateType WdgState;
volatile uint8 StpRefApp_u8SwAlarmTest = 0;

void StpRefApp_Runtime_Cpu0(void)
{
    boolean bLocDeinitWdg = (0 != 0);
# 722 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
    HtxWdgIf_MainFunction();


    WdgState = SafeWdgM_GetState();



    if((WdgState.ExtWdgState == HTXWDGIF_EXT_TLF_INIT) && (StpRefApp_ActivateCalled == 0U))
# 741 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
    {
        SafeWdgM_Activate();

        StpRefApp_ActivateCalled = 1U;

    }


    JobStatus = SafeWdgM_GetJobResult();

    if (JobStatus == HTXWDGIF_JOB_SUCCESS)
    {

        if (StpRefApp_JobFailedCnt > 0U)
        {

            StpRefApp_JobFailedCnt--;
        }
    }
    else if (JobStatus != HTXWDGIF_JOB_ACCEPTED)
    {

        StpRefApp_JobFailedCnt++;
        if (StpRefApp_JobFailedCnt > 5U)
        {

            AppCbk_ErrorHandler(((AppCbk_ErrorIdType)0x01U));
        }
    }


    if (WdgState.ExtWdgState == HTXWDGIF_EXT_TLF_NORMAL)
    {
        StpRefApp_TaskActive = 1U;

        StpRefApp_DiagTestSlice = (StpRefApp_DiagTestSlice + 1) % 30U;
    }
    else
    {
        StpRefApp_DiagTestSlice = 30U - 1;
    }

    if (JobStatus != HTXWDGIF_JOB_ACCEPTED)


    {




        switch (StpRefApp_DiagTestSlice)
        {
            case 0U:
            {



                TstM_ExecRuntimeTest();

            }
            break;

            case 9U:
            {

                WdgState = SafeWdgM_GetState();


                if(WdgState.ExtWdgState == HTXWDGIF_EXT_TLF_NORMAL)
# 818 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
                {
                   StpRefApp_LedCntr++;
                }



                bLocDeinitWdg = SBC_bGetDeinitWdgCmd();
                if ((0 != 0) == bLocDeinitWdg)
                {
                   if((0 != 0) == SBC_bServiceDisableC)
                   {
                      SafeWdgM_Service();
                   }
                }
                else
                {
                   SafeWdgM_DeInit();

                   SBC_vidSetDeinitWdgCmd((0 != 0));


                }




            }
            break;

            case 19U:
            {


                SafeWdgM_GetWdgInfo();
                SBC_vidSetWdgActvFinshFlg();


            }
            break;

            case 29U:
            {
# 881 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
                StpRefApp_vidUserCmdHandle();



            }
            break;

            case 4:
            {

                if(1 == StpRefApp_u8SwAlarmTest)
                {
                    (void)Smu_SetAlarmStatus((Smu_AlarmGroupId)10,(Smu_AlarmIdType)0);
                }
            }
            break;

            default:
            {

            }
            break;
        }
    }
    StpRefApp_TaskActive = 0U;
}
# 939 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
void StpRefApp_Runtime_Cpu1(void)
{
    switch (StpRefApp_DiagTestSlice % 30U)
    {
        case 1:
        {



            TstM_ExecRuntimeTest();

        }
        break;

        case 2:
        {

        }
        break;

        case 3:
        {

        }
        break;

        case 4:
        {

        }
        break;

        case 5:
        {

        }
        break;

        default:
        {

        }
        break;
    }
}
# 1015 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
void StpRefApp_Runtime_Cpu2(void)
{
    switch (StpRefApp_DiagTestSlice % 30U)
    {
        case 1:
        {




            TstM_ExecRuntimeTest();


        }
        break;

        case 2:
        {

        }
        break;

        case 3:
        {

        }
        break;

        case 4:
        {

        }
        break;

        case 5:
        {

        }
        break;

        default:
        {

        }
        break;
    }
}
# 1093 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
void StpRefApp_Runtime_Cpu3(void)
{
    switch (StpRefApp_DiagTestSlice % 30U)
    {
        case 1:
        {




            TstM_ExecRuntimeTest();


        }
        break;

        case 2:
        {

        }
        break;

        case 3:
        {

        }
        break;

        case 4:
        {

        }
        break;

        case 5:
        {

        }
        break;

        default:
        {

        }
        break;
    }
}
# 1174 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
static void StpRefApp_lSetCoreMode(uint8 lCoreId, uint8 CoreMode)
{
    Mcal_WriteSafetyEndInitProtRegMask(&(&(*(volatile Ifx_SCU_PMCSR0*)0xF00360C8u))[lCoreId].U,(uint32)CoreMode,3U);

}
# 1210 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
static void StpRefApp_lConfigureTlfSpiPins(void)
{
# 1224 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
}
# 1363 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
uint8 TLF35584Demo_IsSsspActive(void)
{
    uint8 RetVal;

    RetVal = 0U;


    if((*(volatile Ifx_P_IN*)0xF003C124u).B.P9 == 0)
    {
        RetVal = 1U;
    }

    return RetVal;

}
# 1409 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
void TLF35584Demo_InterruptHandler(void)
{
    (_nop());

}
# 1444 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
static void StpRefApp_lConfigLedPins(void)
{

    (*(volatile Ifx_P_IOCR12*)0xF003C11Cu).B.PC14 = 0x13U;


    (*(volatile Ifx_P_IOCR4*)0xF003C114u).B.PC4 = 0x10U;
    (*(volatile Ifx_P_IOCR4*)0xF003C114u).B.PC5 = 0x10U;
    (*(volatile Ifx_P_IOCR4*)0xF003C114u).B.PC6 = 0x10U;
    (*(volatile Ifx_P_IOCR4*)0xF003C114u).B.PC7 = 0x10U;

    (*(volatile Ifx_P_OMR*)0xF003C104u).U = ((1U<<20U) | (1U<<4U));
    (*(volatile Ifx_P_OMR*)0xF003C104u).U = ((1U<<22U) | (1U<<6U));
}
# 1488 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
static void StpRefApp_lToggleLED(void)
{
    (*(volatile Ifx_P_OMR*)0xF003C104u).U = ((1U<<20U) | (1U<<4U));
    (*(volatile Ifx_P_OMR*)0xF003C104u).U = ((1U<<21U) | (1U<<5U));
    (*(volatile Ifx_P_OMR*)0xF003C104u).U = ((1U<<22U) | (1U<<6U));
    (*(volatile Ifx_P_OMR*)0xF003C104u).U = ((1U<<23U) | (1U<<7U));

}
# 1619 "bswcdd\\SafeTPack\\Stp_Basic\\AppSw\\DemoHtxStp\\StpRefApp\\src\\StpRefApp.c"
void StpRefApp_TlfDisable(void)
{

    const unsigned short wdtdiscmd[10] =
        {0x8756U, 0x87deU, 0x86adU, 0x8625U, 0x8d27U,0x8A01U, 0x87beU, 0x8668U, 0x877dU, 0x8795U};
    uint8 i;

    ( Ifx_Ssw_clearCpuEndinit(&((*(Ifx_SCU*)0xF0036000u)).WDTCPU[0], Ifx_Ssw_getCpuWatchdogPassword(&((*(Ifx_SCU*)0xF0036000u)).WDTCPU[0]) ) );

    (*(volatile Ifx_QSPI_CLC*)0xF0001E00u).U = 0x8U;
    (void) (*(volatile Ifx_QSPI_CLC*)0xF0001E00u).U;


    (*(volatile Ifx_P_PDR0*)0xF003AE40u).B.PD2 = 0U;
    (*(volatile Ifx_P_PDR0*)0xF003AF40u).B.PD3 = 0U;
    (*(volatile Ifx_P_PDR0*)0xF003AF40u).B.PD6 = 0U;
    (*(volatile Ifx_P_PDR0*)0xF003AF40u).B.PD7 = 0U;

    (*(volatile Ifx_QSPI_PISEL*)0xF0001E04u).B.MRIS = 1U;

    ( Ifx_Ssw_setCpuEndinit(&((*(Ifx_SCU*)0xF0036000u)).WDTCPU[0], Ifx_Ssw_getCpuWatchdogPassword(&((*(Ifx_SCU*)0xF0036000u)).WDTCPU[0]) ) );

    (*(volatile Ifx_QSPI_GLOBALCON*)0xF0001E10u).U = 0x20003C04U;
    (*(volatile Ifx_QSPI_GLOBALCON1*)0xF0001E14u).U = 0x14000000U;
    (*(volatile Ifx_QSPI_ECON*)0xF0001E24u).U = 0x501U;
    (*(volatile Ifx_QSPI_SSOC*)0xF0001E48u).U = 0x00020000U;

    while (((*(volatile Ifx_QSPI_STATUS*)0xF0001E40u).U & (uint32)0xFFFU) != 0U)
    {
        (*(volatile Ifx_QSPI_FLAGSCLEAR*)0xF0001E54u).U = 0xFFFU;
    }

    (*(volatile Ifx_QSPI_BACONENTRY*)0xF0001E60u).U = 0x17A10001U;

    (*(volatile Ifx_QSPI_GLOBALCON*)0xF0001E10u).B.EN = 1U;

    for (i=0U; i<10U; i++)
    {

        (*(volatile Ifx_QSPI_DATAENTRY*)0xF0001E64u).U = (uint32) wdtdiscmd[i];
        while (!(*(volatile Ifx_QSPI_STATUS*)0xF0001E40u).B.TXF);
        (*(volatile Ifx_QSPI_FLAGSCLEAR*)0xF0001E54u).U = (uint32)(((uint32)1U) << 9U);
        while (!(*(volatile Ifx_QSPI_STATUS*)0xF0001E40u).B.RXF);
        (*(volatile Ifx_QSPI_FLAGSCLEAR*)0xF0001E54u).U = (uint32)(((uint32)1U) << 10U);
        (void) (*(volatile Ifx_QSPI_RXEXIT*)0xF0001E90u).U;
    }
}
