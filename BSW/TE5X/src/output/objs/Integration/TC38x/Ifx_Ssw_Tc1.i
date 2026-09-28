# 1 "Integration\\TC38x\\Ifx_Ssw_Tc1.c"
# 1 "D:\\1_OutProjest\\dongfeng\\90080-05101\\trunk\\BSW\\20Proj\\BSW\\TE5X\\src//"
# 1 "<built-in>"
# 1 "<command-line>"
# 1 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\stdc-predef.h" 1 3
# 1 "<command-line>" 2
# 1 "Integration\\TC38x\\Ifx_Ssw_Tc1.c"
# 28 "Integration\\TC38x\\Ifx_Ssw_Tc1.c"
# 1 "Integration\\TC38x\\Ifx_Cfg.h" 1
# 29 "Integration\\TC38x\\Ifx_Ssw_Tc1.c" 2
# 1 "Integration\\TC38x\\Ifx_Ssw.h" 1
# 31 "Integration\\TC38x\\Ifx_Ssw.h"
# 1 "Integration\\TC38x\\Ifx_Ssw_Compilers.h" 1
# 38 "Integration\\TC38x\\Ifx_Ssw_Compilers.h"
# 1 "Integration\\TC38x\\Ifx_Ssw_CompilersGnuc.h" 1
# 33 "Integration\\TC38x\\Ifx_Ssw_CompilersGnuc.h"
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
# 34 "Integration\\TC38x\\Ifx_Ssw_CompilersGnuc.h" 2
# 94 "Integration\\TC38x\\Ifx_Ssw_CompilersGnuc.h"
typedef volatile union
{
    unsigned char *ucPtr;
    unsigned short *usPtr;
    unsigned int *uiPtr;
    unsigned long long *ullPtr;
} Ifx_Ssw_CTablePtr;
# 110 "Integration\\TC38x\\Ifx_Ssw_CompilersGnuc.h"
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
# 143 "Integration\\TC38x\\Ifx_Ssw_CompilersGnuc.h"
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
# 39 "Integration\\TC38x\\Ifx_Ssw_Compilers.h" 2
# 32 "Integration\\TC38x\\Ifx_Ssw.h" 2
# 1 "Integration\\TC38x\\Ifx_Ssw_LegacySwCfg.h" 1
# 33 "Integration\\TC38x\\Ifx_Ssw.h" 2
# 80 "Integration\\TC38x\\Ifx_Ssw.h"
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
# 30 "Integration\\TC38x\\Ifx_Ssw_Tc1.c" 2
# 1 "Integration\\TC38x\\Ifx_Ssw_Infra.h" 1
# 29 "Integration\\TC38x\\Ifx_Ssw_Infra.h"
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
# 30 "Integration\\TC38x\\Ifx_Ssw_Infra.h" 2
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
# 31 "Integration\\TC38x\\Ifx_Ssw_Infra.h" 2
# 1 ".\\output\\inc/IfxScu_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_bf.h" 1
# 2 ".\\output\\inc/IfxScu_bf.h" 2
# 32 "Integration\\TC38x\\Ifx_Ssw_Infra.h" 2
# 1 ".\\output\\inc/IfxCpu_bf.h" 1
# 1 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_bf.h" 1
# 2 ".\\output\\inc/IfxCpu_bf.h" 2
# 33 "Integration\\TC38x\\Ifx_Ssw_Infra.h" 2
# 138 "Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern unsigned short Ifx_Ssw_getCpuWatchdogPassword(Ifx_SCU_WDTCPU *watchdog);







extern unsigned short Ifx_Ssw_getSafetyWatchdogPassword(void);
# 158 "Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_clearCpuEndinit(Ifx_SCU_WDTCPU *watchdog, unsigned short password);
# 168 "Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_setCpuEndinit(Ifx_SCU_WDTCPU *watchdog, unsigned short password);
# 179 "Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_clearSafetyEndinit(unsigned short password);
# 188 "Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_setSafetyEndinit(unsigned short password);
# 198 "Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_disableCpuWatchdog(Ifx_SCU_WDTCPU *watchdog, unsigned short password);
# 208 "Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_enableCpuWatchdog(Ifx_SCU_WDTCPU *watchdog, unsigned short password);
# 217 "Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_disableSafetyWatchdog(unsigned short password);
# 226 "Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_enableSafetyWatchdog(unsigned short password);





extern void Ifx_Ssw_startCore(Ifx_CPU *cpu, unsigned int programCounter);


extern void Ifx_Ssw_setCpu0Idle(void);


extern void Ifx_Ssw_C_Init(void);




extern float Ifx_Ssw_getStmFrequency(void);
# 253 "Integration\\TC38x\\Ifx_Ssw_Infra.h"
extern void Ifx_Ssw_serviceCpuWatchdog(Ifx_SCU_WDTCPU *watchdog, unsigned short password);
# 263 "Integration\\TC38x\\Ifx_Ssw_Infra.h"
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
# 31 "Integration\\TC38x\\Ifx_Ssw_Tc1.c" 2

# 1 ".\\output\\inc/IfxScu_reg.h" 1
# 33 "Integration\\TC38x\\Ifx_Ssw_Tc1.c" 2
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
# 34 "Integration\\TC38x\\Ifx_Ssw_Tc1.c" 2
# 50 "Integration\\TC38x\\Ifx_Ssw_Tc1.c"
extern unsigned int __A0_MEM[]; extern unsigned int __A1_MEM[]; extern unsigned int __A8_MEM[]; extern unsigned int __A9_MEM[];;
extern unsigned int __USTACK1[]; extern unsigned int __ISTACK1[]; extern unsigned int __INTTAB_CPU1[]; extern unsigned int __TRAPTAB_CPU1[]; extern unsigned int __CSA1[]; extern unsigned int __CSA1_END[];;

extern void core1_main(void);
# 67 "Integration\\TC38x\\Ifx_Ssw_Tc1.c"
#pragma GCC optimize ("-O1")


void __Core1_start(void)
{
    unsigned int stmCount;
    unsigned int stmCountBegin = (*(volatile Ifx_STM_TIM0*)0xF0001010u).U;
    unsigned short wdtPassword = Ifx_Ssw_getCpuWatchdogPasswordInline(&((*(Ifx_SCU*)0xF0036000u)).WDTCPU[1]);


    {__asm__ volatile ("movh.a\t %""sp" ", hi:(""__USTACK1" ")\n\tlea\t %""sp" ",[%""sp" "] lo:(""__USTACK1" ")"); };
    Ifx_Ssw_DSYNC();


    do { unsigned __newval = (unsigned) ((0x00000B80u)); __asm__ volatile ("mtcr LO:" "0xFE04" ", %0" :: "d" (__newval) : "memory"); } while (0);;


    Ifx_Ssw_clearCpuEndinitInline(&((*(Ifx_SCU*)0xF0036000u)).WDTCPU[1], wdtPassword);

    {
        Ifx_CPU_PCON0 pcon0;
        pcon0.U = 0;
        pcon0.B.PCBYP = (1) ? 0 : 1;
        do { unsigned __newval = (unsigned) (pcon0.U); __asm__ volatile ("mtcr LO:" "0x920C" ", %0" :: "d" (__newval) : "memory"); } while (0);;
        Ifx_Ssw_ISYNC();
    }

    {
        Ifx_CPU_DCON0 dcon0;
        dcon0.U = 0;
        dcon0.B.DCBYP = (1) ? 0 : 1;
        do { unsigned __newval = (unsigned) (dcon0.U); __asm__ volatile ("mtcr LO:" "0x9040" ", %0" :: "d" (__newval) : "memory"); } while (0);;
        Ifx_Ssw_ISYNC();
    }
# 109 "Integration\\TC38x\\Ifx_Ssw_Tc1.c"
    do { unsigned __newval = (unsigned) ((unsigned int)__ISTACK1); __asm__ volatile ("mtcr LO:" "0xFE28" ", %0" :: "d" (__newval) : "memory"); } while (0);;

    Ifx_Ssw_setCpuEndinitInline(&((*(Ifx_SCU*)0xF0036000u)).WDTCPU[1], wdtPassword);


    {__asm__ volatile ("movh.a\t %""a0" ", hi:(""__A0_MEM" ")\n\tlea\t %""a0" ",[%""a0" "] lo:(""__A0_MEM" ")"); };
    {__asm__ volatile ("movh.a\t %""a1" ", hi:(""__A1_MEM" ")\n\tlea\t %""a1" ",[%""a1" "] lo:(""__A1_MEM" ")"); };
    {__asm__ volatile ("movh.a\t %""a8" ", hi:(""__A8_MEM" ")\n\tlea\t %""a8" ",[%""a8" "] lo:(""__A8_MEM" ")"); };
    {__asm__ volatile ("movh.a\t %""a9" ", hi:(""__A9_MEM" ")\n\tlea\t %""a9" ",[%""a9" "] lo:(""__A9_MEM" ")"); };

    Ifx_Ssw_initCSA((unsigned int *)__CSA1, (unsigned int *)__CSA1_END);


    Ifx_Ssw_ISYNC();

    stmCount = (unsigned int)(Ifx_Ssw_getStmFrequency() * (0.003));


    {






    }
# 145 "Integration\\TC38x\\Ifx_Ssw_Tc1.c"
    Ifx_Ssw_jumpToFunction(core1_main);
}




#pragma GCC reset_options
