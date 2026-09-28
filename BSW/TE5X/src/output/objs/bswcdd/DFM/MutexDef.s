	.file	"MutexDef.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mutex_vLockInit,"ax",@progbits
	.align 1
	.global	Mutex_vLockInit
	.type	Mutex_vLockInit, @function
Mutex_vLockInit:
.LFB239:
	.file 1 "bswcdd\\DFM\\MutexDef.c"
	.loc 1 64 0
	.loc 1 66 0
	movh	%d15, hi:MAIN_mutexEsmOrDflash_Lock
	movh.a	%a2, hi:Mutex_xMutexLockSet
	addi	%d15, %d15, lo:MAIN_mutexEsmOrDflash_Lock
	st.w	[%a2] lo:Mutex_xMutexLockSet, %d15
	.loc 1 67 0
	movh	%d15, hi:MAIN_mutexNvmOrDflash_Lock
	.loc 1 66 0
	lea	%a15, [%a2] lo:Mutex_xMutexLockSet
	.loc 1 67 0
	addi	%d15, %d15, lo:MAIN_mutexNvmOrDflash_Lock
	st.w	[%a15] 4, %d15
	.loc 1 68 0
	movh	%d15, hi:MAIN_mutexMemIfOrDflash_Lock
	addi	%d15, %d15, lo:MAIN_mutexMemIfOrDflash_Lock
	st.w	[%a15] 8, %d15
	.loc 1 69 0
	movh	%d15, hi:MAIN_mutexDflashMultiCore_Lock
	addi	%d15, %d15, lo:MAIN_mutexDflashMultiCore_Lock
	st.w	[%a15] 12, %d15
	ret
.LFE239:
	.size	Mutex_vLockInit, .-Mutex_vLockInit
.section .text.Mutex_bGrabSpecifiedLock,"ax",@progbits
	.align 1
	.global	Mutex_bGrabSpecifiedLock
	.type	Mutex_bGrabSpecifiedLock, @function
Mutex_bGrabSpecifiedLock:
.LFB240:
	.loc 1 84 0
.LVL0:
	.loc 1 87 0
	jz	%d5, .L4
	jne	%d5, 1, .L10
.LVL1:
	.loc 1 96 0
	movh.a	%a15, hi:Mutex_xMutexLockSet
	lea	%a15, [%a15] lo:Mutex_xMutexLockSet
	addsc.a	%a15, %a15, %d4, 2
.LBB6:
.LBB7:
	.file 2 "bswcdd\\DFM\\MutexDef.h"
	.loc 2 95 0
	ld.a	%a4, [%a15]0
	call	IfxCpu_releaseMutex
.LVL2:
.LBE7:
.LBE6:
	.loc 1 97 0
	mov	%d2, 1
	.loc 1 98 0
	ret
.LVL3:
.L10:
	.loc 1 85 0
	mov	%d2, 0
.LVL4:
	.loc 1 107 0
	ret
.LVL5:
.L4:
	.loc 1 91 0
	movh.a	%a15, hi:Mutex_xMutexLockSet
	lea	%a15, [%a15] lo:Mutex_xMutexLockSet
	addsc.a	%a15, %a15, %d4, 2
.LBB8:
.LBB9:
	.loc 2 80 0
	ld.a	%a4, [%a15]0
	j	IfxCpu_acquireMutex
.LVL6:
.LBE9:
.LBE8:
.LFE240:
	.size	Mutex_bGrabSpecifiedLock, .-Mutex_bGrabSpecifiedLock
.section .bss.a4.Mutex_xMutexLockSet,"aw",@nobits
	.align 2
	.type	Mutex_xMutexLockSet, @object
	.size	Mutex_xMutexLockSet, 16
Mutex_xMutexLockSet:
	.zero	16
.section .bss.a4.MAIN_mutexDflashMultiCore_Lock,"aw",@nobits
	.align 2
	.type	MAIN_mutexDflashMultiCore_Lock, @object
	.size	MAIN_mutexDflashMultiCore_Lock, 4
MAIN_mutexDflashMultiCore_Lock:
	.zero	4
.section .bss.a4.MAIN_mutexMemIfOrDflash_Lock,"aw",@nobits
	.align 2
	.type	MAIN_mutexMemIfOrDflash_Lock, @object
	.size	MAIN_mutexMemIfOrDflash_Lock, 4
MAIN_mutexMemIfOrDflash_Lock:
	.zero	4
.section .bss.a4.MAIN_mutexNvmOrDflash_Lock,"aw",@nobits
	.align 2
	.type	MAIN_mutexNvmOrDflash_Lock, @object
	.size	MAIN_mutexNvmOrDflash_Lock, 4
MAIN_mutexNvmOrDflash_Lock:
	.zero	4
.section .bss.a4.MAIN_mutexEsmOrDflash_Lock,"aw",@nobits
	.align 2
	.type	MAIN_mutexEsmOrDflash_Lock, @object
	.size	MAIN_mutexEsmOrDflash_Lock, 4
MAIN_mutexEsmOrDflash_Lock:
	.zero	4
	.global	GMAIN_Asc0_Lock
.section .bss.a4.GMAIN_Asc0_Lock,"aw",@nobits
	.align 2
	.type	GMAIN_Asc0_Lock, @object
	.size	GMAIN_Asc0_Lock, 4
GMAIN_Asc0_Lock:
	.zero	4
	.global	MAIN_Asc0_Lock
.section .bss.a4.MAIN_Asc0_Lock,"aw",@nobits
	.align 2
	.type	MAIN_Asc0_Lock, @object
	.size	MAIN_Asc0_Lock, 4
MAIN_Asc0_Lock:
	.zero	4
.section .debug_frame,"",@progbits
.Lframe0:
	.uaword	.LECIE0-.LSCIE0
.LSCIE0:
	.uaword	0xffffffff
	.byte	0x1
	.string	""
	.uleb128 0x1
	.sleb128 1
	.byte	0x1b
	.byte	0xc
	.uleb128 0x1a
	.uleb128 0
	.align 2
.LECIE0:
.LSFDE0:
	.uaword	.LEFDE0-.LASFDE0
.LASFDE0:
	.uaword	.Lframe0
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\IfxCpu.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x801
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\DFM\\MutexDef.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x3
	.byte	0x60
	.uaword	0x1f0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x3
	.byte	0x80
	.uaword	0x21e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x288
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0x8c
	.uaword	0x2b3
	.uleb128 0x7
	.string	"module"
	.byte	0x4
	.byte	0x8e
	.uaword	0x282
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"index"
	.byte	0x4
	.byte	0x8f
	.uaword	0x252
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x4
	.byte	0x90
	.uaword	0x289
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x88
	.uaword	0x33a
	.uleb128 0x9
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0x9
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x6
	.uahalf	0x160
	.uaword	0x443
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"IfxCpu_mutexLock"
	.byte	0x7
	.byte	0x75
	.uaword	0x1f7
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2
	.byte	0x1c
	.uaword	0x48e
	.uleb128 0x9
	.string	"MUTEX_GET_LOCK"
	.sleb128 0
	.uleb128 0x9
	.string	"MUTEX_RELEASE_LOCK"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x2
	.byte	0x1f
	.uaword	0x45b
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x1
	.byte	0x2
	.byte	0x21
	.uaword	0x534
	.uleb128 0x9
	.string	"MUTEX_ESM_AND_DFLASH_INDEX"
	.sleb128 0
	.uleb128 0x9
	.string	"MUTEX_NVM_AND_DFLASH_INDEX"
	.sleb128 1
	.uleb128 0x9
	.string	"MUTEX_MEMIF_AND_DFLASH_INDEX"
	.sleb128 2
	.uleb128 0x9
	.string	"MUTEX_DFLASH_MULTI_CORE_INDEX"
	.sleb128 3
	.uleb128 0x9
	.string	"MUTEX_MAX_LOCK_NUM"
	.sleb128 4
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x2
	.byte	0x27
	.uaword	0x499
	.uleb128 0xd
	.string	"Mutex_bGetLock"
	.byte	0x2
	.byte	0x4e
	.byte	0x1
	.uaword	0x273
	.byte	0x3
	.uaword	0x568
	.uleb128 0xe
	.string	"lock"
	.byte	0x2
	.byte	0x4e
	.uaword	0x568
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x443
	.uleb128 0xf
	.string	"Mutex_vReleaseLock"
	.byte	0x2
	.byte	0x5d
	.byte	0x1
	.byte	0x3
	.uaword	0x597
	.uleb128 0xe
	.string	"lock"
	.byte	0x2
	.byte	0x5d
	.uaword	0x568
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"Mutex_vLockInit"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	.LFB239
	.uaword	.LFE239
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"Mutex_bGrabSpecifiedLock"
	.byte	0x1
	.byte	0x53
	.byte	0x1
	.uaword	0x273
	.uaword	.LFB240
	.uaword	.LFE240
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x676
	.uleb128 0x12
	.string	"eLockIndex"
	.byte	0x1
	.byte	0x53
	.uaword	0x534
	.uaword	.LLST0
	.uleb128 0x12
	.string	"eOperation"
	.byte	0x1
	.byte	0x53
	.uaword	0x48e
	.uaword	.LLST1
	.uleb128 0x13
	.string	"bReturnVal"
	.byte	0x1
	.byte	0x55
	.uaword	0x273
	.uaword	.LLST2
	.uleb128 0x14
	.uaword	0x56e
	.uaword	.LBB6
	.uaword	.LBE6
	.byte	0x1
	.byte	0x60
	.uaword	0x652
	.uleb128 0x15
	.uaword	0x58a
	.uaword	.LLST3
	.uleb128 0x16
	.uaword	.LVL2
	.uaword	0x7ba
	.byte	0
	.uleb128 0x17
	.uaword	0x53f
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.byte	0x5b
	.uleb128 0x15
	.uaword	0x55b
	.uaword	.LLST4
	.uleb128 0x18
	.uaword	.LVL6
	.byte	0x1
	.uaword	0x7df
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"MAIN_mutexEsmOrDflash_Lock"
	.byte	0x1
	.byte	0x22
	.uaword	0x443
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_mutexEsmOrDflash_Lock
	.uleb128 0x19
	.string	"MAIN_mutexNvmOrDflash_Lock"
	.byte	0x1
	.byte	0x23
	.uaword	0x443
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_mutexNvmOrDflash_Lock
	.uleb128 0x19
	.string	"MAIN_mutexMemIfOrDflash_Lock"
	.byte	0x1
	.byte	0x24
	.uaword	0x443
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_mutexMemIfOrDflash_Lock
	.uleb128 0x19
	.string	"MAIN_mutexDflashMultiCore_Lock"
	.byte	0x1
	.byte	0x25
	.uaword	0x443
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_mutexDflashMultiCore_Lock
	.uleb128 0x1a
	.uaword	0x568
	.uaword	0x72c
	.uleb128 0x1b
	.uaword	0x2cd
	.byte	0x3
	.byte	0
	.uleb128 0x19
	.string	"Mutex_xMutexLockSet"
	.byte	0x1
	.byte	0x27
	.uaword	0x71c
	.byte	0x5
	.byte	0x3
	.uaword	Mutex_xMutexLockSet
	.uleb128 0x1a
	.uaword	0x2b3
	.uaword	0x75d
	.uleb128 0x1b
	.uaword	0x2cd
	.byte	0x3
	.byte	0
	.uleb128 0x1c
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x5
	.byte	0xaa
	.uaword	0x77a
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.uaword	0x74d
	.uleb128 0x1e
	.string	"MAIN_Asc0_Lock"
	.byte	0x1
	.byte	0x1b
	.uaword	0x443
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_Asc0_Lock
	.uleb128 0x1e
	.string	"GMAIN_Asc0_Lock"
	.byte	0x1
	.byte	0x1c
	.uaword	0x443
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	GMAIN_Asc0_Lock
	.uleb128 0x1f
	.byte	0x1
	.string	"IfxCpu_releaseMutex"
	.byte	0x7
	.uahalf	0x24a
	.byte	0x1
	.byte	0x1
	.uaword	0x7df
	.uleb128 0x20
	.uaword	0x568
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"IfxCpu_acquireMutex"
	.byte	0x7
	.uahalf	0x238
	.byte	0x1
	.uaword	0x273
	.byte	0x1
	.uleb128 0x20
	.uaword	0x568
	.byte	0
	.byte	0
.section .debug_abbrev,"",@progbits
.Ldebug_abbrev0:
	.uleb128 0x1
	.uleb128 0x11
	.byte	0x1
	.uleb128 0x25
	.uleb128 0x8
	.uleb128 0x13
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1b
	.uleb128 0x8
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x10
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2
	.uleb128 0x24
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3e
	.uleb128 0xb
	.uleb128 0x3
	.uleb128 0x8
	.byte	0
	.byte	0
	.uleb128 0x3
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x4
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x4
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2-1
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6-1
	.uaword	.LFE240
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2-1
	.uaword	.LVL3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6-1
	.uaword	.LFE240
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LFE240
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL2-1
	.uahalf	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Mutex_xMutexLockSet
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Mutex_xMutexLockSet
	.byte	0x22
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB239
	.uaword	.LFE239
	.uaword	.LFB240
	.uaword	.LFE240
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"MUTEX_LOCK_INDEX"
.LASF0:
	.string	"MUTEX_LOCK_OPERATION_TYPE"
	.extern	IfxCpu_acquireMutex,STT_FUNC,0
	.extern	IfxCpu_releaseMutex,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
