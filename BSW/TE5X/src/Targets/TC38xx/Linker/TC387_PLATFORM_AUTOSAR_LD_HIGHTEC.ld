/* Default linker script, for normal executables */
OUTPUT_FORMAT("elf32-tricore")
OUTPUT_ARCH(tricore)
ENTRY(cstart)

__TRICORE_DERIVATE_MEMORY_MAP__ = 0x380;

LCF_CSA0_SIZE = 16k;
LCF_USTACK0_SIZE = 4k;
LCF_ISTACK0_SIZE = 2k;

LCF_CSA1_SIZE = 16k;
LCF_USTACK1_SIZE = 4k;
LCF_ISTACK1_SIZE = 2k;

LCF_CSA2_SIZE = 16k;
LCF_USTACK2_SIZE = 4k;
LCF_ISTACK2_SIZE = 2k;

LCF_CSA3_SIZE = 16k;
LCF_USTACK3_SIZE = 4k;
LCF_ISTACK3_SIZE = 2k;

LCF_HEAP_SIZE = 8k;

LCF_DSPR3_START = 0x40000000;
LCF_DSPR3_SIZE = 96k;

LCF_DSPR2_START = 0x50000000;
LCF_DSPR2_SIZE = 96k;

LCF_DSPR1_START = 0x60000000;
LCF_DSPR1_SIZE = 240k;

LCF_DSPR0_START = 0x70000000;
LCF_DSPR0_SIZE = 240k;

LCF_PSPR3_START = 0x40100000;
LCF_PSPR3_SIZE = 64k;

LCF_PSPR2_START = 0x50100000;
LCF_PSPR2_SIZE = 64k;

LCF_PSPR1_START = 0x60100000;
LCF_PSPR1_SIZE = 64k;

LCF_PSPR0_START = 0x70100000;
LCF_PSPR0_SIZE = 64k;

LCF_ERROR_INFO_SIZE   = 50K;
LCF_ERROR_INFO_OFFSET = (LCF_PSPR1_SIZE - LCF_ERROR_INFO_SIZE);

LCF_CSA3_OFFSET =    (LCF_DSPR3_SIZE - 1k - LCF_CSA3_SIZE);
LCF_ISTACK3_OFFSET = (LCF_CSA3_OFFSET - 256 - LCF_ISTACK3_SIZE);
LCF_USTACK3_OFFSET = (LCF_ISTACK3_OFFSET - 256 - LCF_USTACK3_SIZE);

LCF_CSA2_OFFSET =    (LCF_DSPR2_SIZE - 1k - LCF_CSA2_SIZE);
LCF_ISTACK2_OFFSET = (LCF_CSA2_OFFSET - 256 - LCF_ISTACK2_SIZE);
LCF_USTACK2_OFFSET = (LCF_ISTACK2_OFFSET - 256 - LCF_USTACK2_SIZE);

LCF_CSA1_OFFSET =    (LCF_DSPR1_SIZE - 1k - LCF_CSA1_SIZE);
LCF_ISTACK1_OFFSET = (LCF_CSA1_OFFSET - 256 - LCF_ISTACK1_SIZE);
LCF_USTACK1_OFFSET = (LCF_ISTACK1_OFFSET - 256 - LCF_USTACK1_SIZE);

LCF_CSA0_OFFSET =    (LCF_DSPR0_SIZE - 1k - LCF_CSA0_SIZE);
LCF_ISTACK0_OFFSET = (LCF_CSA0_OFFSET - 256 - LCF_ISTACK0_SIZE);
LCF_USTACK0_OFFSET = (LCF_ISTACK0_OFFSET - 256 - LCF_USTACK0_SIZE);

LCF_HEAP0_OFFSET =   (LCF_USTACK0_OFFSET - LCF_HEAP_SIZE);
LCF_HEAP1_OFFSET =   (LCF_USTACK1_OFFSET - LCF_HEAP_SIZE);
LCF_HEAP2_OFFSET =   (LCF_USTACK2_OFFSET - LCF_HEAP_SIZE);
LCF_HEAP3_OFFSET =   (LCF_USTACK3_OFFSET - LCF_HEAP_SIZE);

/* Fix RAM BLOCK */
APP_BT_SHRAED_START  = 0x7010FC00;
APP_BT_SHRAED_SIZE   = 1k;

/* Fix ROM BLOCK */
BOOT_FIX_CONST_START = 0x80026A00;
BOOT_FIX_CONST_SIZE  = 4k;

LCF_APPLVECT_START = 0x80068000;  /* APP Start Address */
LCF_CSTART_SIZE = 0x300;

LCF_TRAPVEC_START = 0x80068300;
LCF_TRAPVEC_SIZE  = 0x500;

BSW_FIX_CONST_START  = 0x801F9000;
BSW_FIX_CONST_SIZE   = 4k;

FR_FIX_CFG_START  = 0x8006B000;
FR_FIX_CFG_SIZE   = 1k;

LCF_INTVEC_START = 0x8006C000;
LCF_INTVEC_SIZE  = 8k;
LCF_INTVEC_CPU0_START = LCF_INTVEC_START;
LCF_INTVEC_CPU1_START = LCF_INTVEC_CPU0_START + LCF_INTVEC_SIZE;
LCF_INTVEC_CPU2_START = LCF_INTVEC_CPU1_START + LCF_INTVEC_SIZE;
LCF_INTVEC_CPU3_START = LCF_INTVEC_CPU2_START + LCF_INTVEC_SIZE;

FR_FIX_CFG_START  = LCF_INTVEC_CPU3_START + LCF_INTVEC_SIZE;
FR_FIX_CFG_SIZE   = 1k;

/*LCF_INTVEC1_START = 0x805FC000;*/
/*LCF_INTVEC2_START = 0x805FE000;*/

/*__INTTAB_CPU0 = LCF_INTVEC0_START;*/
/*__INTTAB_CPU1 = LCF_INTVEC0_START;*/
/*__INTTAB_CPU2 = LCF_INTVEC0_START;*/


/*LCF_TRAPVEC1_START = 0x80300000;*/
/*LCF_TRAPVEC2_START = 0x80300100;*/

LCF_STARTPTR_CPU0 = 0x80068200;
LCF_STARTPTR_CPU1 = 0x801FF100;
LCF_STARTPTR_CPU2 = 0x801FF500;
LCF_STARTPTR_CPU3 = 0x801FF900;

RESET = 0xA0000000;

Calibration_debut =__RODATA_CALIB_START;
Calibration_fin   =__RODATA_CALIB_END;

MEMORY
{
    dsram3_local (w!xp): org = 0xd0000000, len = 96K
    dsram3 (w!xp): org = 0x40000000, len = 96K
    psram3 (w!xp): org = 0x40100000, len = 64K
	
    dsram2_local (w!xp): org = 0xd0000000, len = 96K
    dsram2 (w!xp): org = 0x50000000, len = 96K
    psram2 (w!xp): org = 0x50100000, len = 64K
    
    dsram1_local (w!xp): org = 0xd0000000, len = 240K
    dsram1 (w!xp): org = 0x60000000, len = 240K
    psram1 (w!xp): org = 0x60100000, len = 64K
    
    dsram0_local (w!xp): org = 0xd0000000, len = 240K
    dsram0 (w!xp): org = 0x70000000, len = (240K-16K)
    psram0 (w!xp): org = 0x70100000, len = 64K
    
    calib_ram (w!xp): org = 0x60018000, len = 32K
    calib_user_ram (w!xp): org = 0x60020000, len = 32K
    psram_local (w!xp): org = 0xc0000000, len = 64K
    
    pfls0 (rx!p): org = 0x80000000, len = 3M
    pfls0_nc (rx!p): org = 0xa0000000, len = 3M
    calib_mem (rx!p): org = 0x80058000, len = 64K
    application_mem (rx!p): org = 0x80068000, len = 2655K
	
    pfls1 (rx!p): org = 0x80300000, len = 3M
    pfls1_nc (rx!p): org = 0xa0300000, len = 3M
    
    dfls0 (rx!p): org = 0xaf000000, len = 256K
    
    ucb (rx!p): org = 0xaf400000, len = 24K
    
    cpu0_dlmu (w!xp): org = 0x90000000, len = 64K
    cpu0_dlmu_nc (w!xp): org = 0xb0000000, len = 64K
    
    cpu1_dlmu (w!xp): org = 0x90010000, len = 64K
    cpu1_dlmu_nc (w!xp): org = 0xb0010000, len = 64K
    
    cpu2_dlmu (w!xp): org = 0x90020000, len = 64K
    cpu2_dlmu_nc (w!xp): org = 0xb0020000, len = 64K
	
    cpu3_dlmu (w!xp): org = 0x90030000, len = 64K
    cpu3_dlmu_nc (w!xp): org = 0xb0030000, len = 64K
}

/* map local memory address to a global address */ 
REGION_MAP( CPU0 , ORIGIN(dsram0_local), LENGTH(dsram0_local), ORIGIN(dsram0))
REGION_MAP( CPU1 , ORIGIN(dsram1_local), LENGTH(dsram1_local), ORIGIN(dsram1))
REGION_MAP( CPU2 , ORIGIN(dsram2_local), LENGTH(dsram2_local), ORIGIN(dsram2))
REGION_MAP( CPU3 , ORIGIN(dsram3_local), LENGTH(dsram3_local), ORIGIN(dsram3))

/*Un comment one of the below statement groups to enable CpuX DMI RAM to hold global variables*/

REGION_ALIAS( default_ram , dsram0)
REGION_ALIAS( default_rom , pfls0)

/*Sections located at absolute fixed address*/
/*Fixed memory Allocations for stack memory and CSA*/
CORE_ID = CPU3;
SECTIONS
{
    CORE_SEC(.ustack) (LCF_DSPR3_START + LCF_USTACK3_OFFSET):
    {
        PROVIDE(__USTACK3_END = .);
        . = . + LCF_USTACK3_SIZE;
        PROVIDE(__USTACK3 = .);
    }
    
    CORE_SEC(.istack) (LCF_DSPR3_START + LCF_ISTACK3_OFFSET):
    {
        PROVIDE(__ISTACK3_END = .);
        . = . + LCF_ISTACK3_SIZE;
        PROVIDE(__ISTACK3 = .);
    }
    
    CORE_SEC(.csa) (LCF_DSPR3_START + LCF_CSA3_OFFSET):
    {
        PROVIDE(__CSA3_END = .);
        . = . + LCF_CSA3_SIZE;
        PROVIDE(__CSA3 = .);
    }
}

CORE_ID = CPU2;
SECTIONS
{
    CORE_SEC(.ustack) (LCF_DSPR2_START + LCF_USTACK2_OFFSET):
    {
        PROVIDE(__USTACK2_END = .);
        . = . + LCF_USTACK2_SIZE;
        PROVIDE(__USTACK2 = .);
    }
    
    CORE_SEC(.istack) (LCF_DSPR2_START + LCF_ISTACK2_OFFSET):
    {
        PROVIDE(__ISTACK2_END = .);
        . = . + LCF_ISTACK2_SIZE;
        PROVIDE(__ISTACK2 = .);
    }
    
    CORE_SEC(.csa) (LCF_DSPR2_START + LCF_CSA2_OFFSET):
    {
        PROVIDE(__CSA2_END = .);
        . = . + LCF_CSA2_SIZE;
        PROVIDE(__CSA2 = .);
    }
}
    
CORE_ID = CPU1;
SECTIONS
{
    CORE_SEC(.ustack) (LCF_DSPR1_START + LCF_USTACK1_OFFSET):
    {
        PROVIDE(__USTACK1_END = .);
        . = . + LCF_USTACK1_SIZE;
        PROVIDE(__USTACK1 = .);
    }
    
    CORE_SEC(.istack) (LCF_DSPR1_START + LCF_ISTACK1_OFFSET):
    {
        PROVIDE(__ISTACK1_END = .);
        . = . + LCF_ISTACK1_SIZE;
        PROVIDE(__ISTACK1 = .);
    }
    
    CORE_SEC(.csa) (LCF_DSPR1_START + LCF_CSA1_OFFSET):
    {
        PROVIDE(__CSA1_END = .);
        . = . + LCF_CSA1_SIZE;
        PROVIDE(__CSA1 = .);
    }
}
    
CORE_ID = CPU0;
SECTIONS
{
    CORE_SEC(.ustack) (LCF_DSPR0_START + LCF_USTACK0_OFFSET):
    {
        PROVIDE(__USTACK0_END = .);
        . = . + LCF_USTACK0_SIZE;
        PROVIDE(__USTACK0 = .);
    }
    
    CORE_SEC(.istack) (LCF_DSPR0_START + LCF_ISTACK0_OFFSET):
    {
        PROVIDE(__ISTACK0_END = .);
        . = . + LCF_ISTACK0_SIZE;
        PROVIDE(__ISTACK0 = .);
    }
    
    CORE_SEC(.csa) (LCF_DSPR0_START + LCF_CSA0_OFFSET):
    {
        PROVIDE(__CSA0_END = .);
        . = . + LCF_CSA0_SIZE;
        PROVIDE(__CSA0 = .);
    }
}
    
/*Fixed memory Allocations for cstart (_START)*/
CORE_ID = GLOBAL;
SECTIONS
{
    .appstartup (0xA0000000) : FLAGS(rxl)
    {
        KEEP (*(.appstart));
    } > pfls0_nc =0x800

    .BootVersion(BOOT_FIX_CONST_START) : FLAGS(arl)
    {
        *(.version_boot*)
    } > pfls0 =0x800

    .BswVersion(BSW_FIX_CONST_START) : FLAGS(arl)
    {
        *(.version_bsw*)
    } > pfls0

    .startup (LCF_APPLVECT_START) : FLAGS(rxl)
    {
        KEEP (*(.start));
        . = LCF_CSTART_SIZE;
    } > pfls0 =0x36

    .interface_const (0x80068020) :
    {
        __IF_CONST = .;
        KEEP (*(.interface_const));
    } > pfls0 =0x800
    
    /*Fixed memory Allocations for Start up code*/
    .startptr_tc0 (LCF_STARTPTR_CPU0) :
    {
        KEEP (*(.startptr_cpu0));
    } > pfls0
    
    .startptr_tc1 (LCF_STARTPTR_CPU1) :
    {
        KEEP (*(.startptr_cpu1));
    } > pfls0
    
    .startptr_tc2 (LCF_STARTPTR_CPU2) :
    {
        KEEP (*(.startptr_cpu2));
    } > pfls0
	
	.startptr_tc3 (LCF_STARTPTR_CPU3) :
    {
        KEEP (*(.startptr_cpu3));
    } > pfls0

    PROVIDE(__STARTPTR_CPU0 = LCF_STARTPTR_CPU0);
    PROVIDE(__STARTPTR_CPU1 = LCF_STARTPTR_CPU1);
    PROVIDE(__STARTPTR_CPU2 = LCF_STARTPTR_CPU2);
    PROVIDE(__STARTPTR_CPU3 = LCF_STARTPTR_CPU3);
    PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU0 = 0); /* Not used */
    PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU1 = 0);
    PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU2 = 0);
    PROVIDE(__ENABLE_INDIVIDUAL_C_INIT_CPU3 = 0);

    /*Fixed memory Allocations for Trap Vector Table*/
    .os_interrupt_code.ostraps (LCF_TRAPVEC_START) :
    {
        PROVIDE(__TRAPTAB_CPU0 = .);
        PROVIDE(__TRAPTAB_CPU1 = .);
        PROVIDE(__TRAPTAB_CPU2 = .);
        PROVIDE(__TRAPTAB_CPU3 = .);
        PROVIDE(__TRAPTAB_CPU4 = .);
        PROVIDE(__TRAPTAB_CPU5 = .);
        KEEP (*(.os_interrupt_code.ostraps));
        . = LCF_TRAPVEC_SIZE;
    } > pfls0 =0x55

    /*Fixed memory Allocations for Interrupt Vector Table*/
    /*CPU0 Interrupt Vector Table*/
    Os_InterruptVectorTable0 (LCF_INTVEC_CPU0_START) :
    {
        . = ALIGN(8);
        PROVIDE(__INTTAB_CPU0 = .);
        KEEP (*(.os_interrupt_code.osinterrupts));
    } > pfls0
    /*CPU1 Interrupt Vector Table*/
    Os_InterruptVectorTable1 (LCF_INTVEC_CPU1_START) :
    { 
        . = ALIGN(8);
        PROVIDE(__INTTAB_CPU1 = .);
        KEEP (*(.os_interrupt_code.osinterrupts));
    } > pfls0
    /*CPU2 Interrupt Vector Table*/
    Os_InterruptVectorTable2 (LCF_INTVEC_CPU2_START) : 
    { 
        . = ALIGN(8);  
        PROVIDE(__INTTAB_CPU2 = .); 
        KEEP (*(.os_interrupt_code.osinterrupts));
    } > pfls0
	Os_InterruptVectorTable3 (LCF_INTVEC_CPU3_START) : 
    { 
        . = ALIGN(8);  
        PROVIDE(__INTTAB_CPU3 = .); 
        KEEP (*(.os_interrupt_code.osinterrupts));
    } > pfls0	
    Fr_FixCfg (FR_FIX_CFG_START) : FLAGS(arl)
    { 
        . = ALIGN(8);  
        PROVIDE(__FR_FIX_CFG_START = .); 
        *(FRConst.FixCfg.*);
    } > pfls0
    .bmhd_0_org (0xaf400000) : FLAGS(arl) 
    { 
        KEEP (*(.bmhd_0_orig.*)); 
    } > ucb
    .bmhd_1_org (0xaf400200) : FLAGS(arl) 
    { 
        KEEP (*(.bmhd_1_orig.*)); 
    } > ucb
    .bmhd_2_org (0xaf400400) : FLAGS(arl) 
    { 
        KEEP (*(.bmhd_2_orig.*)); 
    } > ucb
    .bmhd_3_org (0xaf400600) : FLAGS(arl) 
    { 
        KEEP (*(.bmhd_3_orig.*)); 
    } > ucb
    .ucb_reserved (0xaf400800) : FLAGS(arl) 
    { 
    
    } > ucb
    .bmhd_0_copy (0xaf401000) : FLAGS(arl) 
    { 
        KEEP (*(.bmhd_0_copy.*)); 
    } > ucb
    .bmhd_1_copy (0xaf401200) : FLAGS(arl) 
    { 
        KEEP (*(.bmhd_1_copy.*)); 
    } > ucb
    .bmhd_2_copy (0xaf401400) : FLAGS(arl) 
    { 
        KEEP (*(.bmhd_2_copy.*)); 
    } > ucb
    .bmhd_3_copy (0xaf401600) : FLAGS(arl) 
    { 
        KEEP (*(.bmhd_3_copy.*)); 
    } > ucb
}
  
/*Near Abbsolute Addressable Data Sections*/  
/*Near Absolute Data, selectable with patterns and user defined sections*/
CORE_ID = CPU3;
SECTIONS
{  
    CORE_SEC(.zdata) (LCF_DSPR3_START): FLAGS(awzl) 
    {
        *Ifx_Ssw_Tc3.* (.zdata*)
        *Cpu3_Main.* (.zdata*)
        *(.zdata_cpu3*)
        *(.zdata_cpu3.*)
      } > dsram3 AT> pfls0
      
    CORE_SEC(.zbss) (NOLOAD): FLAGS(awz)
    {
        *Ifx_Ssw_Tc3.* (.zbss*)
        *Cpu3_Main.* (.zbss*)
        *(.zbss_cpu3*)
        *(.zbss_cpu3.*)
    } > dsram3
}

CORE_ID = CPU2;
SECTIONS
{  
    CORE_SEC(.zdata) (LCF_DSPR2_START): FLAGS(awzl) 
    {
        *Ifx_Ssw_Tc2.* (.zdata*)
        *Cpu2_Main.* (.zdata*)
        *(.zdata_cpu2*)
        *(.zdata_cpu2.*)
      } > dsram2 AT> pfls0
      
    CORE_SEC(.zbss) (NOLOAD): FLAGS(awz)
    {
        *Ifx_Ssw_Tc2.* (.zbss*)
        *Cpu2_Main.* (.zbss*)
        *(.zbss_cpu2*)
        *(.zbss_cpu2.*)
    } > dsram2
}

CORE_ID = CPU1;
SECTIONS
{  
    CORE_SEC(.zdata) (LCF_DSPR1_START): FLAGS(awzl) 
    {
        *Ifx_Ssw_Tc1.* (.zdata*)
        *Cpu1_Main.* (.zdata*)
        *(.zdata_cpu1*)
        *(.zdata_cpu1.*)
    } > dsram1 AT> pfls0
    
    CORE_SEC(.zbss) (NOLOAD): FLAGS(awz)
    {
        *Ifx_Ssw_Tc1.* (.zbss*)
        *Cpu1_Main.* (.zbss*)
        *(.zbss_cpu1*)
        *(.zbss_cpu1.*)
    } > dsram1
}

CORE_ID = CPU0;
SECTIONS
{  
    CORE_SEC(.zdata) (LCF_DSPR0_START) : FLAGS(awzl)
    {
        *Ifx_Ssw_Tc0.* (.zdata*)
        *Cpu0_Main.* (.zdata*)
        *(.zdata_cpu0*)
        *(.zdata_cpu0.*)
    } > dsram0 AT> pfls0
    
    CORE_SEC(.zbss) (NOLOAD): FLAGS(awz)
    {
        *Ifx_Ssw_Tc0.* (.zbss*)
        *Cpu0_Main.* (.zbss*)
        *(.zbss_cpu0*)
        *(.zbss_cpu0.*)
    } > dsram0
}
  
/*Near Absolute Data, selectable by toolchain*/
CORE_ID = GLOBAL;
SECTIONS
{  
    CORE_SEC(.zdata_powerOn) : FLAGS(awzl)
    {
        *(.zdata.dsprPowerOnInit.cpu0.32bit*)
        *(.zdata.dsprPowerOnInit.cpu0.16bit*)
        *(.zdata.dsprPowerOnInit.cpu0.8bit*)
    } > default_ram AT> pfls0
    
    CORE_SEC(.zdata) : FLAGS(awzl)
    {
        *(.zdata*)
        *(.zdata.*)
        *(.zdata.dsprInit.cpu0.32bit*)
        *(.zdata.dsprInit.cpu0.16bit*)
        *(.zdata.dsprInit.cpu0.8bit*)
        *(.gnu.linkonce.z.*)  
    } > default_ram AT> pfls0
    
    CORE_SEC(.zbss_powerOn) (NOLOAD) : FLAGS(awz)
    {
        *(.zbss.dsprPowerOnClear.cpu0.32bit*)
        *(.zbss.dsprPowerOnClear.cpu0.16bit*)
        *(.zbss.dsprPowerOnClear.cpu0.8bit*)  
    } > default_ram
    
    CORE_SEC(.zbss_noClear) (NOLOAD) : FLAGS(awz)
    {
        *(.zbss.dsprNoInit.cpu0.32bit*)
        *(.zbss.dsprNoInit.cpu0.16bit*)
        *(.zbss.dsprNoInit.cpu0.8bit*)
    } > default_ram
    
    CORE_SEC(.zbss) (NOLOAD) : FLAGS(awz)
    {
        *(.zbss)
        *(.zbss.dsprClearOnInit.cpu0.32bit*)
        *(.zbss.dsprClearOnInit.cpu0.16bit*)
        *(.zbss.dsprClearOnInit.cpu0.8bit*)
        *(.zbss.*)
        *(.bbss*)
        *(.bbss.*)
        *(.gnu.linkonce.zb.*)  
    } > default_ram
}

CORE_ID = GLOBAL;
SECTIONS
{  
    /*Cpu0_dlmu also is the segment start, all the near lmu data shll be located here*/
    CORE_SEC(.lmuzdata) : FLAGS(awzl)
    {
        *(.lmuzdata*)
        *(.lmuzdata.*)
    } > cpu0_dlmu AT> pfls0
    
    CORE_SEC(.zbss) (NOLOAD) : FLAGS(awz)
    {
        *(.lmuzbss*)
        *(.lmuzbss.*)
    } > cpu0_dlmu
}
  
/*Near Absolute Const, selectable with patterns and user defined sections*/
CORE_ID = GLOBAL;
SECTIONS
{
    CORE_SEC(.zrodata) : FLAGS(arzl)
    {
        *Ifx_Ssw_Tc?.* (.zrodata*)
        *Cpu?_Main.* (.zrodata*)
        *(.zrodata_cpu?)
    } > pfls0
}

/*Near Absolute Const, selectable by toolchain*/
CORE_ID = GLOBAL;
SECTIONS
{  
    CORE_SEC(.zrodata) : FLAGS(arzl)
    {
        *(.zrodata*)
        *(.zrodata.const.cpu0.32bit*)
        *(.zrodata.const.cpu0.16bit*)
        *(.zrodata.const.cpu0.8bit*)
        *(.zrodata.config.cpu0.32bit*)
        *(.zrodata.config.cpu0.16bit*)
        *(.zrodata.config.cpu0.8bit*)
        *(.zrodata.*)
    } > pfls0
}

/*Relative A0/A1/A8/A9 Addressable Sections*/  
CORE_ID = GLOBAL;  
SECTIONS
{  
    /*Relative A0 Addressable Data, selectable with patterns and user defined sections*/
    /*Note: A0 addressable area is common, to make the functions callable in any CPU*/
    /*Relative A0 Addressable Data, selectable by toolchain*/
    CORE_SEC(.sdata) : FLAGS(awsl)
    {
        *(.sdata*)
        *(.sdata.*)
    } > default_ram AT> pfls0  
    CORE_SEC(.sbss) (NOLOAD): FLAGS(aws)
    {
        *(.sbss*)
        *(.sbss.*)
    } > default_ram
    _SMALL_DATA_ = SIZEOF(CORE_SEC(.sdata)) ? ADDR(CORE_SEC(.sdata)) + 32k : (ADDR(CORE_SEC(.sdata)) & 0xF0000000) + 32k ;
    __A0_MEM = _SMALL_DATA_;
}

CORE_ID = GLOBAL;
SECTIONS
{      
    /*Relative A1 Addressable Const, selectable with patterns and user defined sections*/
    /*Note: A1 addressable area is common, to make the functions callable in any CPU*/
    /*Relative A1 Addressable Const, selectable by toolchain*/
    CORE_SEC(.sdata2) : FLAGS(arsl)
    {
        *(.srodata*)
        *(.srodata.*)
    } > default_rom
    _SMALL_DATA2_ = SIZEOF(CORE_SEC(.sdata2)) ? ADDR(CORE_SEC(.sdata2)) + 32k : (ADDR(CORE_SEC(.sdata2)) & 0xF0000000) + 32k ;
    __A1_MEM = _SMALL_DATA2_;
}

CORE_ID = GLOBAL;
SECTIONS
{    
    /*Relative A9 Addressable Data, selectable with patterns and user defined sections*/
    CORE_SEC(.sdata4) :
    {
        *(.data_a9*)
        *(.data_a9.*)  
    } > cpu0_dlmu AT> pfls0
    
    CORE_SEC(.sbss4) :
    {
        *(.bss_a9*)
        *(.bss_a9.*)  
    } > cpu0_dlmu
    
    _SMALL_DATA4_ = SIZEOF(CORE_SEC(.sdata4)) ? ADDR(CORE_SEC(.sdata4)) + 32k : (ADDR(CORE_SEC(.sdata4)) & 0xF0000000) + 32k ;
    __A9_MEM = _SMALL_DATA4_;

    /*Relative A8 Addressable Const, selectable with patterns and user defined sections*/
    CORE_SEC(.sdata3) : FLAGS(arsl)
    {
        *(.rodata_a8*)
        *(.rodata_a8.*)
    } > default_rom
    
    _SMALL_DATA3_ = SIZEOF(CORE_SEC(.sdata3)) ? ADDR(CORE_SEC(.sdata3)) + 32k : (ADDR(CORE_SEC(.sdata3)) & 0xF0000000) + 32k ;
    __A8_MEM = _SMALL_DATA3_;
}

/*Far Data / Far Const Sections, selectable with patterns and user defined sections*/
/*Far Data Sections, selectable with patterns and user defined sections*/
CORE_ID = CPU3 ;
SECTIONS
{
    /*DSRAM3 Sections*/
    CORE_SEC(.data) : FLAGS(awl)
    {
        /* Initialized Data */
        *Ifx_Ssw_Tc3.* (.data*)
        *Cpu3_Main.* (.data*)
        *(InitData.Cpu3.8bit*)
        *(InitData.Cpu3.16bit*)
        *(InitData.Cpu3.32bit*)
        *(InitData.Cpu3.256bit*)
        *(InitData.Cpu3.Unspecified*)
        *(InitData.Fast.Cpu3.8bit*)
        *(InitData.Fast.Cpu3.16bit*)
        *(InitData.Fast.Cpu3.32bit*)
        *(InitData.Fast.Cpu3.256bit*)
        *(InitData.Fast.Cpu3.Unspecified*)	
        *(.data_cpu3*)
        *(CddInitData.Cpu3.bool*)
        *(CddInitData.Cpu3.8bit*)
        *(CddInitData.Cpu3.16bit*)
        *(CddInitData.Cpu3.32bit*)
        *(CddInitData.Cpu3.256bit*)
        *(CddInitData.Cpu3.Unspecified*)
        . = ALIGN(4);
    } > dsram3 AT> pfls0
    
    CORE_SEC(.bss) (NOLOAD): FLAGS(aw)
    {
        /* Uninitialized Data */
        *Ifx_Ssw_Tc3.* (.bss*)
        *Cpu3_Main.* (.bss*)
        *(ClearedData.Cpu3.8bit*)
        *(ClearedData.Cpu3.16bit*)
        *(ClearedData.Cpu3.32bit*)
        *(ClearedData.Cpu3.256bit*)
        *(ClearedData.Cpu3.Unspecified*)
        *(ClearedData.Fast.Cpu3.8bit*)
        *(ClearedData.Fast.Cpu3.16bit*)
        *(ClearedData.Fast.Cpu3.32bit*)
        *(ClearedData.Fast.Cpu3.256bit*)
        *(ClearedData.Fast.Cpu3.Unspecified*)	
        *(.bss_cpu3*)
        *(CddClearedData.Cpu3.bool*)
        *(CddClearedData.Cpu3.8bit*)
        *(CddClearedData.Cpu3.16bit*)
        *(CddClearedData.Cpu3.32bit*)
        *(CddClearedData.Cpu3.256bit*)
        *(CddClearedData.Cpu3.Unspecified*)
        . = ALIGN(4);
    } > dsram3
    
    /*DLMU3 Sections*/
    CORE_SEC(.lmudata) : FLAGS(awl)
    {
        *(.lmudata_cpu3*)
    } > cpu3_dlmu AT> pfls0
    
    CORE_SEC(.lmubss) : FLAGS(aw)
    {
        *(.lmubss_cpu3*)  
    } > cpu3_dlmu
}

CORE_ID = CPU2 ;
SECTIONS
{
    /*DSRAM2 Sections*/
    CORE_SEC(.data) : FLAGS(awl)
    {
        /* Initialized Data */
        *Ifx_Ssw_Tc2.* (.data*)
        *Cpu2_Main.* (.data*)
        *(InitData.Cpu2.8bit*)
        *(InitData.Cpu2.16bit*)
        *(InitData.Cpu2.32bit*)
        *(InitData.Cpu2.256bit*)
        *(InitData.Cpu2.Unspecified*)
        *(InitData.Fast.Cpu2.8bit*)
        *(InitData.Fast.Cpu2.16bit*)
        *(InitData.Fast.Cpu2.32bit*)
        *(InitData.Fast.Cpu2.256bit*)
        *(InitData.Fast.Cpu2.Unspecified*)	
        *(.data_cpu2*)
        *(CddInitData.Cpu2.bool*)
        *(CddInitData.Cpu2.8bit*)
        *(CddInitData.Cpu2.16bit*)
        *(CddInitData.Cpu2.32bit*)
        *(CddInitData.Cpu2.256bit*)
        *(CddInitData.Cpu2.Unspecified*)
        . = ALIGN(4);
    } > dsram2 AT> pfls0
    
    CORE_SEC(.bss) (NOLOAD): FLAGS(aw)
    {
        /* Uninitialized Data */
        *Ifx_Ssw_Tc2.* (.bss*)
        *Cpu2_Main.* (.bss*)
        *(ClearedData.Cpu2.8bit*)
        *(ClearedData.Cpu2.16bit*)
        *(ClearedData.Cpu2.32bit*)
        *(ClearedData.Cpu2.256bit*)
        *(ClearedData.Cpu2.Unspecified*)
        *(ClearedData.Fast.Cpu2.8bit*)
        *(ClearedData.Fast.Cpu2.16bit*)
        *(ClearedData.Fast.Cpu2.32bit*)
        *(ClearedData.Fast.Cpu2.256bit*)
        *(ClearedData.Fast.Cpu2.Unspecified*)	
        *(.bss_cpu2*)
        *(CddClearedData.Cpu2.bool*)
        *(CddClearedData.Cpu2.8bit*)
        *(CddClearedData.Cpu2.16bit*)
        *(CddClearedData.Cpu2.32bit*)
        *(CddClearedData.Cpu2.256bit*)
        *(CddClearedData.Cpu2.Unspecified*)
        . = ALIGN(4);
    } > dsram2
    
    /*DLMU2 Sections*/
    CORE_SEC(.lmudata) : FLAGS(awl)
    {
        *(.lmudata_cpu2*)
    } > cpu2_dlmu AT> pfls0
    
    CORE_SEC(.lmubss) : FLAGS(aw)
    {
        *(.lmubss_cpu2*)  
    } > cpu2_dlmu
}

CORE_ID = CPU1 ;
SECTIONS
{
    /*DSRAM1 Sections*/
    CORE_SEC(.data) : FLAGS(awl)
    {
        /* Initialized Data */
        *Ifx_Ssw_Tc1.* (.data*)
        *Cpu1_Main.* (.data*)
        *(InitData.Cpu1.8bit*)
        *(InitData.Cpu1.16bit*)
        *(InitData.Cpu1.32bit*)
        *(InitData.Cpu1.256bit*)
        *(InitData.Cpu1.Unspecified*)
        *(InitData.Fast.Cpu1.8bit*)
        *(InitData.Fast.Cpu1.16bit*)
        *(InitData.Fast.Cpu1.32bit*)
        *(InitData.Fast.Cpu1.256bit*)
        *(InitData.Fast.Cpu1.Unspecified*)	
        *(.data_cpu1*)
        *(CddInitData.Cpu1.bool*)
        *(CddInitData.Cpu1.8bit*)
        *(CddInitData.Cpu1.16bit*)
        *(CddInitData.Cpu1.32bit*)
        *(CddInitData.Cpu1.256bit*)
        *(CddInitData.Cpu1.Unspecified*)
        . = ALIGN(4);
    } > dsram1 AT> pfls0
    
    CORE_SEC(.bss) (NOLOAD): FLAGS(aw)
    {
        /* Uninitialized Data */
        *Ifx_Ssw_Tc1.* (.bss*)
        *Cpu1_Main.* (.bss*)
        *(ClearedData.Cpu1.8bit*)
        *(ClearedData.Cpu1.16bit*)
        *(ClearedData.Cpu1.32bit*)
        *(ClearedData.Cpu1.256bit*)
        *(ClearedData.Cpu1.Unspecified*)
        *(ClearedData.Fast.Cpu1.8bit*)
        *(ClearedData.Fast.Cpu1.16bit*)
        *(ClearedData.Fast.Cpu1.32bit*)
        *(ClearedData.Fast.Cpu1.256bit*)
        *(ClearedData.Fast.Cpu1.Unspecified*)	
        *(.bss_cpu1*)
        *(CddClearedData.Cpu1.bool*)
        *(CddClearedData.Cpu1.8bit*)
        *(CddClearedData.Cpu1.16bit*)
        *(CddClearedData.Cpu1.32bit*)
        *(CddClearedData.Cpu1.256bit*)
        *(CddClearedData.Cpu1.Unspecified*)
        . = ALIGN(4);
    } > dsram1
    
   /* BSS section */
  .bss_one  (NOLOAD) :
  {
    BSS_START = .;
    __ram_start = .;
    *(.ramlog)
    . = ALIGN(8);
    *(.gnu.linkonce.b.*)

  } > dsram1
    /*DLMU1 Sections*/
    CORE_SEC(.lmudata) : FLAGS(awl)
    {
        *(.lmudata_cpu1*)
    } > cpu1_dlmu AT> pfls0
    
    CORE_SEC(.lmubss) : FLAGS(aw)
    {
        *(.lmubss_cpu1*)  
    } > cpu1_dlmu
}

CORE_ID = CPU0 ;
SECTIONS
{
    /*DSRAM0 Sections*/
    CORE_SEC(.data) : FLAGS(awl)
    {
        /* Initialized Data */
        *Ifx_Ssw_Tc0.* (.data*)
        *Cpu0_Main.* (.data*)
        *(InitData.Cpu0.8bit*)
        *(InitData.Cpu0.16bit*)
        *(InitData.Cpu0.32bit*)
        *(InitData.Cpu0.256bit*)
        *(InitData.Cpu0.Unspecified*)
        *(InitData.Fast.Cpu0.8bit*)
        *(InitData.Fast.Cpu0.16bit*)
        *(InitData.Fast.Cpu0.32bit*)
        *(InitData.Fast.Cpu0.256bit*)
        *(InitData.Fast.Cpu0.Unspecified*)	
        *(.data_cpu0*)
        *(CddInitData.Cpu0.bool*)
        *(CddInitData.Cpu0.8bit*)
        *(CddInitData.Cpu0.16bit*)
        *(CddInitData.Cpu0.32bit*)
        *(CddInitData.Cpu0.256bit*)
        *(CddInitData.Cpu0.Unspecified*)
        . = ALIGN(4);
    } > dsram0 AT> pfls0
    
    CORE_SEC(.bss) (NOLOAD): FLAGS(aw)
    {
        /* Uninitialized Data */
        *Ifx_Ssw_Tc0.* (.bss*)
        *Cpu0_Main.* (.bss*)
        *(ClearedData.Cpu0.8bit*)
        *(ClearedData.Cpu0.16bit*)
        *(ClearedData.Cpu0.32bit*)
        *(ClearedData.Cpu0.256bit*)
        *(ClearedData.Cpu0.Unspecified*)
        *(ClearedData.Fast.Cpu0.8bit*)
        *(ClearedData.Fast.Cpu0.16bit*)
        *(ClearedData.Fast.Cpu0.32bit*)
        *(ClearedData.Fast.Cpu0.256bit*)
        *(ClearedData.Fast.Cpu0.Unspecified*)	
        *(.bss_cpu0*)
        *(CddClearedData.Cpu0.bool*)
        *(CddClearedData.Cpu0.8bit*)
        *(CddClearedData.Cpu0.16bit*)
        *(CddClearedData.Cpu0.32bit*)
        *(CddClearedData.Cpu0.256bit*)
        *(CddClearedData.Cpu0.Unspecified*)
        . = ALIGN(4);
    } > dsram0
    
    /*DLMU0 Sections*/
    CORE_SEC(.lmudata) : FLAGS(awl)
    {
        *(.lmudata_cpu0*)
        . = ALIGN(4);
    } > cpu0_dlmu AT> pfls0
    
    CORE_SEC(.lmubss) : FLAGS(aw)
    {
        *(.lmubss_cpu0*)  
    } > cpu0_dlmu
}

/*Far Data Sections, selectable by toolchain*/
CORE_ID = GLOBAL;
SECTIONS
{
    CORE_SEC(.bss_noClear) (NOLOAD) : FLAGS(aw)
    {
        *(.bss.farDsprNoInit.cpu0.32bit*)
        *(.bss.farDsprNoInit.cpu0.16bit*)
        *(.bss.farDsprNoInit.cpu0.8bit*)
    } > default_ram
    
    CORE_SEC(.data) : FLAGS(awl)
    {
        *(.data)
        *(.data.farDsprInit.cpu0.32bit*)
        *(.data.farDsprInit.cpu0.16bit*)
        *(.data.farDsprInit.cpu0.8bit*)
        *(.data.*)
        *(.gnu.linkonce.d.*)  
    } > default_ram AT> pfls0
    
    CORE_SEC(.bss) (NOLOAD) : FLAGS(aw)
    {
        *(.bss)
        *(.bss.farDsprClearOnInit.cpu0.32bit*)
        *(.bss.farDsprClearOnInit.cpu0.16bit*)
        *(.bss.farDsprClearOnInit.cpu0.8bit*)
        *(.bss.*)
        *(.gnu.linkonce.b.*)  
    } > default_ram
    
    .heap  : FLAGS(aw)
    {
        . = ALIGN(4);
        __HEAP = .;
        . += LCF_HEAP_SIZE;
        __HEAP_END = .;
    } > default_ram
    
    CORE_SEC(.lmudata) : ALIGN(4) FLAGS(awl)
    {
        /* Initialized Data */
        *(.lmudata*)
        *(.lmudata.*)  
        *(InitData.LmuNC.8bit*);
        *(InitData.LmuNC.16bit*);
        *(InitData.LmuNC.32bit*);
        *(InitData.LmuNC.256bit*);
        *(InitData.LmuNC.Unspecified*);
        *(InitData.Fast.LmuNC.8bit*);
        *(InitData.Fast.LmuNC.16bit*);
        *(InitData.Fast.LmuNC.32bit*);
        *(InitData.Fast.LmuNC.256bit*);
        *(InitData.Fast.LmuNC.Unspecified*);
    } > cpu0_dlmu_nc AT> pfls0
    
    CORE_SEC(.lmubss) : FLAGS(aw)
    {
        /* UnInitialized Data */
        *(.lmubss*)
        *(.lmubss.*)  
        *(ClearedData.LmuNC.8bit*);
        *(ClearedData.LmuNC.16bit*);
        *(ClearedData.LmuNC.32bit*);
        *(ClearedData.LmuNC.256bit*);
        *(ClearedData.LmuNC.Unspecified*);
        *(ClearedData.Fast.LmuNC.8bit*);
        *(ClearedData.Fast.LmuNC.16bit*);
        *(ClearedData.Fast.LmuNC.32bit*);
        *(ClearedData.Fast.LmuNC.256bit*);
        *(ClearedData.Fast.LmuNC.Unspecified*);	
    } > cpu0_dlmu_nc
}
/*Far Const Sections, selectable with patterns and user defined sections*/
CORE_ID = CPU0;
SECTIONS
{
    .OVERLAY_RAM_USER_DATA : 
    {
        PROVIDE(__OVERLAY_RAM_USER_START = .);
    } > calib_user_ram
}

SECTIONS
{
    .CALIB_DATA : ALIGN(4)
    {
         PROVIDE(__RODATA_CALIB_START = .);
         __teststart = . + 0x8000;
        PROVIDE(__RODATA_CALIB_USER_START = __teststart);
        *(.rodata.Calib_bool*)
        *(.rodata.Calib_8*)
        *(.rodata.Calib_16*)
        *(.rodata.Calib_32*)
        *(.rodata.Calib_unspec*)
        PROVIDE(__RODATA_CALIB_END = .);
        FILL(0x36);
        . = __RODATA_CALIB_START + 0x10000; 
    } > calib_mem
}
SECTIONS
{
    .OVERLAY_RAM_DATA : 
    {
        PROVIDE(__OVERLAY_RAM_START = .);
    } > calib_ram
}

SECTIONS
{  
    CORE_SEC(.rodata) : FLAGS(arl)
    {
        . = ALIGN(8);
        *Ifx_Ssw_Tc0.* (.rodata*)
        *Cpu0_Main.* (.rodata*)
        /* Const Data */
        *(Const.Cpu0.8bit*);
        *(Const.Cpu0.16bit*);
        *(Const.Cpu0.32bit*);
        *(Const.Cpu0.Unspecified*);
        *(Const.Cpu0.256bit*);
        /* Config Data */
        *(Config.Cpu0.8bit*);
        *(Config.Cpu0.16bit*);
        *(Config.Cpu0.32bit*);
        *(Config.Cpu0.Unspecified*);
        *(Config.Cpu0.256bit*);
        /* Default */
        *(.rodata_cpu0*)
        /* Const Data */
        *(CddConst.Cpu0.bool*);
        *(CddConst.Cpu0.8bit*);
        *(CddConst.Cpu0.16bit*);
        *(CddConst.Cpu0.32bit*);
        *(CddConst.Cpu0.Unspecified*);
        /* Config Data */
        *(CddConfig.Cpu0.bool*);
        *(CddConfig.Cpu0.8bit*);
        *(CddConfig.Cpu0.16bit*);
        *(CddConfig.Cpu0.32bit*);
        *(CddConfig.Cpu0.Unspecified*);
        . = ALIGN(8);
    } > pfls0
}

CORE_ID = CPU1;
SECTIONS
{  
    CORE_SEC(.rodata) : FLAGS(arl)
    {
        *Ifx_Ssw_Tc1.* (.rodata*)
        *Cpu1_Main.* (.rodata*)
        /* Const Data */
        *(Const.Cpu1.8bit*);
        *(Const.Cpu1.16bit*);
        *(Const.Cpu1.32bit*);
        *(Const.Cpu1.Unspecified*);
        *(Const.Cpu1.256bit*);
        /* Config Data */
        *(Config.Cpu1.8bit*);
        *(Config.Cpu1.16bit*);
        *(Config.Cpu1.32bit*);
        *(Config.Cpu1.Unspecified*);
        *(Config.Cpu1.256bit*);
        /* Default */
        *(.rodata_cpu1*)
        /* Const Data */
        *(CddConst.Cpu1.bool*);
        *(CddConst.Cpu1.8bit*);
        *(CddConst.Cpu1.16bit*);
        *(CddConst.Cpu1.32bit*);
        *(CddConst.Cpu1.Unspecified*);
        /* Config Data */
        *(CddConfig.Cpu1.bool*);
        *(CddConfig.Cpu1.8bit*);
        *(CddConfig.Cpu1.16bit*);
        *(CddConfig.Cpu1.32bit*);
        *(CddConfig.Cpu1.Unspecified*);
        . = ALIGN(4);
    } > pfls0
}

CORE_ID = CPU2;
SECTIONS
{  
    CORE_SEC(.rodata) : FLAGS(arl)
    {
        *Ifx_Ssw_Tc2.* (.rodata*)
        *Cpu2_Main.* (.rodata*)
        /* Const Data */
        *(Const.Cpu2.8bit*);
        *(Const.Cpu2.16bit*);
        *(Const.Cpu2.32bit*);
        *(Const.Cpu2.Unspecified*);
        *(Const.Cpu2.256bit*);
        /* Config Data */
        *(Config.Cpu2.8bit*);
        *(Config.Cpu2.16bit*);
        *(Config.Cpu2.32bit*);
        *(Config.Cpu2.Unspecified*);
        *(Config.Cpu2.256bit*);
        /* Default */
        *(.rodata_cpu2*)
        /* Const Data */
        *(CddConst.Cpu2.bool*);
        *(CddConst.Cpu2.8bit*);
        *(CddConst.Cpu2.16bit*);
        *(CddConst.Cpu2.32bit*);
        *(CddConst.Cpu2.Unspecified*);
        /* Config Data */
        *(CddConfig.Cpu2.bool*);
        *(CddConfig.Cpu2.8bit*);
        *(CddConfig.Cpu2.16bit*);
        *(CddConfig.Cpu2.32bit*);
        *(CddConfig.Cpu2.Unspecified*);
        . = ALIGN(4);
    } > pfls0
}

CORE_ID = CPU3;
SECTIONS
{  
    CORE_SEC(.rodata) : FLAGS(arl)
    {
        *Ifx_Ssw_Tc3.* (.rodata*)
        *Cpu3_Main.* (.rodata*)
        /* Const Data */
        *(Const.Cpu3.8bit*);
        *(Const.Cpu3.16bit*);
        *(Const.Cpu3.32bit*);
        *(Const.Cpu3.Unspecified*);
        *(Const.Cpu3.256bit*);
        /* Config Data */
        *(Config.Cpu3.8bit*);
        *(Config.Cpu3.16bit*);
        *(Config.Cpu3.32bit*);
        *(Config.Cpu3.Unspecified*);
        *(Config.Cpu3.256bit*);
        /* Default */
        *(.rodata_cpu3*)
        /* Const Data */
        *(CddConst.Cpu3.bool*);
        *(CddConst.Cpu3.8bit*);
        *(CddConst.Cpu3.16bit*);
        *(CddConst.Cpu3.32bit*);
        *(CddConst.Cpu3.Unspecified*);
        /* Config Data */
        *(CddConfig.Cpu3.bool*);
        *(CddConfig.Cpu3.8bit*);
        *(CddConfig.Cpu3.16bit*);
        *(CddConfig.Cpu3.32bit*);
        *(CddConfig.Cpu3.Unspecified*);
        . = ALIGN(4);
    } > pfls0
}

/*Far Const Sections, selectable by toolchain*/
CORE_ID = GLOBAL;
SECTIONS
{
    CORE_SEC(.rodata) : FLAGS(arl)
    {
        PROVIDE(__const_begin = .);
        *(.rodata*)
        *(.rodata.farConst.cpu0.32bit*)
        *(.rodata.farConst.cpu0.16bit*)
        *(.rodata.farConst.cpu0.8bit*)
        *(.rodata.*)
        *(.const*)
        PROVIDE(__const_end = .);
        *(.gnu.linkonce.r.*)  

        /*
        * Create the clear and copy tables that tell the startup code
        * which memory areas to clear and to copy, respectively.
        */
        . = ALIGN(8) ;
        PROVIDE(__clear_table = .) ;
        LONG(0 + ADDR(.CPU3.zbss));     LONG(SIZEOF(.CPU3.zbss));
        LONG(0 + ADDR(.CPU3.bss));    LONG(SIZEOF(.CPU3.bss));
        LONG(0 + ADDR(.CPU3.lmubss));    LONG(SIZEOF(.CPU3.lmubss));
        LONG(0 + ADDR(.CPU2.zbss));     LONG(SIZEOF(.CPU2.zbss));
        LONG(0 + ADDR(.CPU2.bss));    LONG(SIZEOF(.CPU2.bss));
        LONG(0 + ADDR(.CPU2.lmubss));    LONG(SIZEOF(.CPU2.lmubss));
        LONG(0 + ADDR(.CPU1.zbss));     LONG(SIZEOF(.CPU1.zbss));
        LONG(0 + ADDR(.CPU1.bss));    LONG(SIZEOF(.CPU1.bss));
        LONG(0 + ADDR(.CPU1.lmubss));    LONG(SIZEOF(.CPU1.lmubss));
        LONG(0 + ADDR(.CPU0.zbss));     LONG(SIZEOF(.CPU0.zbss));
        LONG(0 + ADDR(.CPU0.bss));    LONG(SIZEOF(.CPU0.bss));
        LONG(0 + ADDR(.CPU0.lmubss));    LONG(SIZEOF(.CPU0.lmubss));
        LONG(0 + ADDR(.zbss));     LONG(SIZEOF(.zbss));
        LONG(0 + ADDR(.sbss));     LONG(SIZEOF(.sbss));
        LONG(0 + ADDR(.bss));    LONG(SIZEOF(.bss));
        LONG(0 + ADDR(.lmubss));    LONG(SIZEOF(.lmubss));
        LONG(0 + ADDR(.sbss4));    LONG(SIZEOF(.sbss4));
        LONG(-1);                 LONG(-1);
        PROVIDE(__clear_table_powerOn = .) ;
        LONG(0 + ADDR(.zbss_powerOn));     LONG(SIZEOF(.zbss_powerOn));
        LONG(-1);                 LONG(-1);
        . = ALIGN(8) ; 
        PROVIDE(__copy_table = .) ;
        LONG(LOADADDR(.CPU3.zdata));    LONG(0 + ADDR(.CPU3.zdata));    LONG(SIZEOF(.CPU3.zdata));
        LONG(LOADADDR(.CPU3.data));    LONG(0 + ADDR(.CPU3.data));    LONG(SIZEOF(.CPU3.data));
        LONG(LOADADDR(.CPU3.lmudata));    LONG(0 + ADDR(.CPU3.lmudata));    LONG(SIZEOF(.CPU3.lmudata));
        LONG(LOADADDR(.CPU2.zdata));    LONG(0 + ADDR(.CPU2.zdata));    LONG(SIZEOF(.CPU2.zdata));
        LONG(LOADADDR(.CPU2.data));    LONG(0 + ADDR(.CPU2.data));    LONG(SIZEOF(.CPU2.data));
        LONG(LOADADDR(.CPU2.lmudata));    LONG(0 + ADDR(.CPU2.lmudata));    LONG(SIZEOF(.CPU2.lmudata));
        LONG(LOADADDR(.CPU1.zdata));    LONG(0 + ADDR(.CPU1.zdata));    LONG(SIZEOF(.CPU1.zdata));
        LONG(LOADADDR(.CPU1.data));    LONG(0 + ADDR(.CPU1.data));    LONG(SIZEOF(.CPU1.data));
        LONG(LOADADDR(.CPU1.lmudata));    LONG(0 + ADDR(.CPU1.lmudata));    LONG(SIZEOF(.CPU1.lmudata));
        LONG(LOADADDR(.CPU0.zdata));    LONG(0 + ADDR(.CPU0.zdata));    LONG(SIZEOF(.CPU0.zdata));
        LONG(LOADADDR(.CPU0.data));    LONG(0 + ADDR(.CPU0.data));    LONG(SIZEOF(.CPU0.data));
        LONG(LOADADDR(.CPU0.lmudata));    LONG(0 + ADDR(.CPU0.lmudata));    LONG(SIZEOF(.CPU0.lmudata));
        LONG(LOADADDR(.zdata));    LONG(0 + ADDR(.zdata));    LONG(SIZEOF(.zdata));
        LONG(LOADADDR(.sdata));    LONG(0 + ADDR(.sdata));    LONG(SIZEOF(.sdata));
        LONG(LOADADDR(.data));    LONG(0 + ADDR(.data));    LONG(SIZEOF(.data));
        LONG(LOADADDR(.lmudata));    LONG(0 + ADDR(.lmudata));    LONG(SIZEOF(.lmudata));
        LONG(LOADADDR(.sdata4));    LONG(0 + ADDR(.sdata4));    LONG(SIZEOF(.sdata4));
        LONG(LOADADDR(.CPU0.psram_text));    LONG(0 + ADDR(.CPU0.psram_text));    LONG(SIZEOF(.CPU0.psram_text));
        LONG(LOADADDR(.CPU1.psram_text));    LONG(0 + ADDR(.CPU1.psram_text));    LONG(SIZEOF(.CPU1.psram_text));
        LONG(LOADADDR(.CPU2.psram_text));    LONG(0 + ADDR(.CPU2.psram_text));    LONG(SIZEOF(.CPU2.psram_text));
        LONG(LOADADDR(.CPU3.psram_text));    LONG(0 + ADDR(.CPU3.psram_text));    LONG(SIZEOF(.CPU3.psram_text));        
        LONG(-1);                 LONG(-1);                 LONG(-1);
        PROVIDE(__copy_table_powerOn = .) ;
        LONG(LOADADDR(.zdata_powerOn));    LONG(0 + ADDR(.zdata_powerOn));    LONG(SIZEOF(.zdata_powerOn));
        LONG(-1);                 LONG(-1);                 LONG(-1);
        . = ALIGN(8);
    } > default_rom
}

/*Code selections*/
/*Code Sections, selectable with patterns and user defined sections*/
CORE_ID = CPU0;
SECTIONS
{    
    /*
    * Code executed before calling main extra section for C++ constructor init 
    *  -------------------------End-----------------------------------------
    */
    CORE_SEC(.psram_text)  : FLAGS(awx)
    {
        . = ALIGN(8);
        *(.psram_text_cpu0*)
        *(.cpu0_psram*)
        *(.FTramCode.fast*)      
        *(FTramCode.fast*)      
        *(.code_cached_cpu1)
        *(.code_cached_cpu1.*)
        *(.text.atan2f)
        *(.text.floorf)
        *(.text.fmodf)
        *(.text.fabs)
        *(.text.sincosf)
        *(.text.sinf)
        *(.text.cosf)
        *(.text.sqrtf)
        . = ALIGN(8);
    } > psram0 AT> pfls0

    .APP_BT_SHRAED (APP_BT_SHRAED_START)  : FLAGS(aw)
    {
        *(.APP_BT_SHRAED*)
        . = APP_BT_SHRAED_SIZE;
    } > psram0 AT> pfls0 =0x36

    CORE_SEC(.text) : FLAGS(axl)
    {
        . = ALIGN(8);
        *Code.Cpu0 (.text*)
        *Code.Fast.Cpu0(.text*)
        *Ifx_Ssw_Tc0.* (.text*)
        *Cpu0_Main.* (.text*)
        *(.text*)
        *(.text_cpu0*)
        . = ALIGN(8);
    } > pfls0

    /*
    * Code executed before calling main extra section for C++ constructor init 
    *  -------------------------Start-----------------------------------------
    */
    .init :
    {
        PROVIDE(__init_start = .);
        KEEP(*(.init))
        KEEP(*(.init*))
        PROVIDE(__init_end = .);
        . = ALIGN(8);
    } > pfls0
    
    .fini :
    {
        PROVIDE(__fini_start = .);
        KEEP(*(.fini))
        KEEP(*(.fini*))
        PROVIDE(__fini_end = .);
        . = ALIGN(8);
    } > pfls0
}

CORE_ID = CPU1;
SECTIONS
{
    CORE_SEC(.text) : FLAGS(axl)
    {
        . = ALIGN(4);
        *Code.Cpu1 (.text*)
        *Code.Fast.Cpu1(.text*)
        *Ifx_Ssw_Tc1.*(.text*)
        *Cpu1_Main.*(.text*)
        *(.text_cpu1*)
    } > pfls0

    CORE_SEC(.psram_text)  : FLAGS(awx)
    {
        . = ALIGN(4);
        *(.psram_text_cpu1*)
        *(.cpu1_psram*)
    } > psram1 AT> pfls0
}
SECTIONS
{
    CORE_SEC(.psram_ErrInfo) (LCF_PSPR1_START + LCF_ERROR_INFO_OFFSET) :
    {
        . = ALIGN(4);
        *(.psram_ErrorInfo*)
    } > psram1
}

CORE_ID = CPU2;
SECTIONS
{
    CORE_SEC(.text) : FLAGS(axl)
    {
        . = ALIGN(4);
        *Code.Cpu2 (.text*)
        *Code.Fast.Cpu2(.text*)
        *Ifx_Ssw_Tc2.* (.text*)
        *Cpu2_Main.* (.text*)
        *(.text_cpu2*)
    } > pfls0

    CORE_SEC(.psram_text)  : FLAGS(awx)
    {
        . = ALIGN(4);
        *(.psram_text_cpu2*)
        *(.cpu2_psram*)
    } > psram2 AT> pfls0
}

CORE_ID = CPU3;
SECTIONS
{
    CORE_SEC(.text) : FLAGS(axl)
    {
        . = ALIGN(4);
        *Code.Cpu3 (.text*)
        *Code.Fast.Cpu3(.text*)
        *Ifx_Ssw_Tc3.* (.text*)
        *Cpu3_Main.* (.text*)
        *(.text_cpu3*)
    } > pfls0

    CORE_SEC(.psram_text)  : FLAGS(awx)
    {
        . = ALIGN(4);
        *(.psram_text_cpu3*)
        *(.cpu3_psram*)
    } > psram3 AT> pfls0
}

/*Code Sections, selectable by toolchain*/
CORE_ID = GLOBAL;
SECTIONS
{
    CORE_SEC(.text) : FLAGS(axl)
    {
        *(.text.fast.pfls.cpu0)
        *(.text.slow.pfls.cpu0)
        *(.text.5ms.pfls.cpu0)
        *(.text.10ms.pfls.cpu0)
        *(.text.callout.pfls.cpu0)
        *(.gnu.linkonce.t.*)
        *(.gnu.warning)        /* .gnu.warning sections are handled specially by elf32.em. */
        . = ALIGN(4);
    } > default_rom

    /*
    * C++ exception handling tables.  NOTE: gcc emits .eh_frame
    * sections when compiling C sources with debugging enabled (-g).
    * If you can be sure that your final application consists
    * exclusively of C objects (i.e., no C++ objects), you may use
    * the -R option of the "strip" and "objcopy" utilities to remove
    * the .eh_frame section from the executable.
    */
    .eh_frame  :
    {
        *(.gcc_except_table)
        __EH_FRAME_BEGIN__ = . ;
        KEEP (*(.eh_frame))
        __EH_FRAME_END__ = . ;
        . = ALIGN(8);
    } > default_rom

    /*
    * Constructors and destructors.
    */
    .ctors : FLAGS(ar)
    {
        __CTOR_LIST__ = . ;
        LONG((__CTOR_END__ - __CTOR_LIST__) / 4 - 2);
        /*
        * Code executed before calling main extra section for C++ constructor init 
        *  -------------------------Start-----------------------------------------
        */  
        KEEP (*crtbegin.o(.ctors))
        KEEP (*(EXCLUDE_FILE (*crtend.o ) .ctors))
        KEEP (*(SORT(.ctors.*)))
        KEEP (*(.ctors))
        /*
        * Code executed before calling main extra section for C++ constructor init 
        *  -------------------------End-----------------------------------------
        */
        LONG(0) ;
        __CTOR_END__ = . ;
        . = ALIGN(8);
    } > default_rom

    .dtors : FLAGS(ar)
    {
        __DTOR_LIST__ = . ;
        LONG((__DTOR_END__ - __DTOR_LIST__) / 4 - 2);
        /*
        * Code executed before calling main extra section for C++ distructor init 
        *  -------------------------Start-----------------------------------------
        */  
        KEEP (*crtbegin.o(.dtors))
        KEEP (*(EXCLUDE_FILE (*crtend.o ) .dtors))
        KEEP (*(SORT(.dtors.*)))
        KEEP (*(.dtors))
        /*
        * Code executed before calling main extra section for C++ distructor init 
        *  -------------------------End-----------------------------------------
        */  
        LONG(0) ;
        __DTOR_END__ = . ;
        . = ALIGN(8);
    } > default_rom 

    /*
    * DWARF debug sections.
    * Symbols in the DWARF debugging sections are relative to the
    * beginning of the section, so we begin them at 0.
    */
    /*
    * DWARF 1
    */
    .comment         0 : { *(.comment) }
    .debug           0 : { *(.debug) }
    .line            0 : { *(.line) }
    /*
    * GNU DWARF 1 extensions
    */
    .debug_srcinfo   0 : { *(.debug_srcinfo) }
    .debug_sfnames   0 : { *(.debug_sfnames) }
    /*
    * DWARF 1.1 and DWARF 2
    */
    .debug_aranges   0 : { *(.debug_aranges) }
    .debug_pubnames  0 : { *(.debug_pubnames) }
    /*
    * DWARF 2
    */
    .debug_info      0 : { *(.debug_info) }
    .debug_abbrev    0 : { *(.debug_abbrev) }
    .debug_line      0 : { *(.debug_line) }
    .debug_frame     0 : { *(.debug_frame) }
    .debug_str       0 : { *(.debug_str) }
    .debug_loc       0 : { *(.debug_loc) }
    .debug_macinfo   0 : { *(.debug_macinfo) }
    .debug_ranges    0 : { *(.debug_ranges) }
    /*
    * SGI/MIPS DWARF 2 extensions
    */
    .debug_weaknames 0 : { *(.debug_weaknames) }
    .debug_funcnames 0 : { *(.debug_funcnames) }
    .debug_typenames 0 : { *(.debug_typenames) }
    .debug_varnames  0 : { *(.debug_varnames) }
    /*
    * Optional sections that may only appear when relocating.
    */
    /*
    * Optional sections that may appear regardless of relocating.
    */
    .version_info    0 : { *(.version_info) }
    .boffs           0 : { KEEP (*(.boffs)) }
}

