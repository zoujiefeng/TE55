	.file	"MAIN_RunTime.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	__udivdi3
.section .text.MAIN_vidGetSystemRunTime,"ax",@progbits
	.align 1
	.global	MAIN_vidGetSystemRunTime
	.type	MAIN_vidGetSystemRunTime, @function
MAIN_vidGetSystemRunTime:
.LFB31:
	.file 1 "main\\_MainModule\\RunTime\\MAIN_RunTime.c"
	.loc 1 45 0
.LVL0:
	.loc 1 48 0
	ld.w	%d8, 0xf0001010
	.loc 1 49 0
	ld.w	%d15, 0xf000102c
	.loc 1 48 0
	mul.u	%e2, %d8, 1
.LVL1:
	.loc 1 51 0
	movh	%d6, 1526
	.loc 1 49 0
	or	%d8, %d8, 0
	or	%d15, %d3
.LVL2:
	.loc 1 51 0
	mov	%e4, %d15, %d8
	mov	%d7, 0
	addi	%d6, %d6, -7936
	call	__udivdi3
.LVL3:
	movh.a	%a15, hi:MAIN_u64RunTime_s
	lea	%a15, [%a15] lo:MAIN_u64RunTime_s
	.loc 1 52 0
	movh	%d6, 2
	.loc 1 51 0
	st.d	[%a15]0, %e2
	.loc 1 52 0
	mov	%e4, %d15, %d8
	mov	%d7, 0
	addi	%d6, %d6, -31072
	call	__udivdi3
.LVL4:
	movh.a	%a15, hi:MAIN_u64RunTime_ms
	lea	%a15, [%a15] lo:MAIN_u64RunTime_ms
	st.d	[%a15]0, %e2
	ret
.LFE31:
	.size	MAIN_vidGetSystemRunTime, .-MAIN_vidGetSystemRunTime
.section .text.MAIN_vidUpdateSystemRunTime,"ax",@progbits
	.align 1
	.global	MAIN_vidUpdateSystemRunTime
	.type	MAIN_vidUpdateSystemRunTime, @function
MAIN_vidUpdateSystemRunTime:
.LFB32:
	.loc 1 56 0
	.loc 1 57 0
	movh.a	%a15, hi:MAIN_u64RunTime_NVM
	movh.a	%a2, hi:MAIN_u64RunTime_s
	lea	%a15, [%a15] lo:MAIN_u64RunTime_NVM
	lea	%a2, [%a2] lo:MAIN_u64RunTime_s
	ld.w	%d4, [%a15]0
	ld.w	%d2, [%a2]0
	ld.w	%d3, [%a15] 4
	ld.w	%d15, [%a2] 4
	addx	%d2, %d2, %d4
	addc	%d15, %d15, %d3
	st.w	[%a15]0, %d2
	st.w	[%a15] 4, %d15
	ret
.LFE32:
	.size	MAIN_vidUpdateSystemRunTime, .-MAIN_vidUpdateSystemRunTime
.section .text.MAIN_u32GetRunTime_ms,"ax",@progbits
	.align 1
	.global	MAIN_u32GetRunTime_ms
	.type	MAIN_u32GetRunTime_ms, @function
MAIN_u32GetRunTime_ms:
.LFB33:
	.loc 1 61 0
	.loc 1 63 0
	movh.a	%a15, hi:MAIN_u64RunTime_ms
	ld.w	%d2, [%a15] lo:MAIN_u64RunTime_ms
	ret
.LFE33:
	.size	MAIN_u32GetRunTime_ms, .-MAIN_u32GetRunTime_ms
.section .text.MAIN_u32GetRunTime_s,"ax",@progbits
	.align 1
	.global	MAIN_u32GetRunTime_s
	.type	MAIN_u32GetRunTime_s, @function
MAIN_u32GetRunTime_s:
.LFB34:
	.loc 1 66 0
	.loc 1 68 0
	movh.a	%a15, hi:MAIN_u64RunTime_s
	ld.w	%d2, [%a15] lo:MAIN_u64RunTime_s
	ret
.LFE34:
	.size	MAIN_u32GetRunTime_s, .-MAIN_u32GetRunTime_s
.section .text.MAIN_u32GetFactoryRunTime_s,"ax",@progbits
	.align 1
	.global	MAIN_u32GetFactoryRunTime_s
	.type	MAIN_u32GetFactoryRunTime_s, @function
MAIN_u32GetFactoryRunTime_s:
.LFB35:
	.loc 1 71 0
.LVL5:
	.loc 1 74 0
	movh.a	%a15, hi:MAIN_u64RunTime_s
	ld.w	%d2, [%a15] lo:MAIN_u64RunTime_s
	movh.a	%a15, hi:MAIN_u64RunTime_NVM
	ld.w	%d15, [%a15] lo:MAIN_u64RunTime_NVM
	.loc 1 77 0
	add	%d2, %d15
.LVL6:
	ret
.LFE35:
	.size	MAIN_u32GetFactoryRunTime_s, .-MAIN_u32GetFactoryRunTime_s
	.global	MAIN_u64RunTime_ms
.section .bss.a4.MAIN_u64RunTime_ms,"aw",@nobits
	.align 2
	.type	MAIN_u64RunTime_ms, @object
	.size	MAIN_u64RunTime_ms, 8
MAIN_u64RunTime_ms:
	.zero	8
	.global	MAIN_u64RunTime_s
.section .bss.a4.MAIN_u64RunTime_s,"aw",@nobits
	.align 2
	.type	MAIN_u64RunTime_s, @object
	.size	MAIN_u64RunTime_s, 8
MAIN_u64RunTime_s:
	.zero	8
	.global	MAIN_u64RunTimeRom_NVM
.section .rodata.a4.MAIN_u64RunTimeRom_NVM,"a",@progbits
	.align 2
	.type	MAIN_u64RunTimeRom_NVM, @object
	.size	MAIN_u64RunTimeRom_NVM, 8
MAIN_u64RunTimeRom_NVM:
	.zero	8
	.global	MAIN_u64RunTime_NVM
.section .bss.a4.MAIN_u64RunTime_NVM,"aw",@nobits
	.align 2
	.type	MAIN_u64RunTime_NVM, @object
	.size	MAIN_u64RunTime_NVM, 8
MAIN_u64RunTime_NVM:
	.zero	8
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8d7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\_MainModule\\RunTime\\MAIN_RunTime.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x21f
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.string	"uint64"
	.byte	0x2
	.byte	0x6f
	.uaword	0x23d
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x3
	.byte	0x15
	.uaword	0x352
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.byte	0x3
	.byte	0x1f
	.uaword	0x3ca
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0x4
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x3
	.byte	0x27
	.uaword	0x607
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0x5
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0x3
	.string	"Ifx_UReg_32Bit"
	.byte	0x4
	.byte	0x62
	.uaword	0x21f
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x4
	.byte	0x65
	.uaword	0x1f9
	.uleb128 0x7
	.string	"_Ifx_STM_CAP_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0x6f
	.uaword	0x668
	.uleb128 0x8
	.string	"STMCAP_63_32"
	.byte	0x5
	.byte	0x71
	.uaword	0x607
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_CAP_Bits"
	.byte	0x5
	.byte	0x72
	.uaword	0x633
	.uleb128 0x7
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xd8
	.uaword	0x6b2
	.uleb128 0x8
	.string	"STM_31_0"
	.byte	0x5
	.byte	0xda
	.uaword	0x607
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0x5
	.byte	0xdb
	.uaword	0x680
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.uahalf	0x11d
	.uaword	0x6f3
	.uleb128 0xa
	.string	"U"
	.byte	0x5
	.uahalf	0x11f
	.uaword	0x607
	.uleb128 0xa
	.string	"I"
	.byte	0x5
	.uahalf	0x120
	.uaword	0x61d
	.uleb128 0xa
	.string	"B"
	.byte	0x5
	.uahalf	0x121
	.uaword	0x668
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_CAP"
	.byte	0x5
	.uahalf	0x122
	.uaword	0x6cb
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.uahalf	0x17d
	.uaword	0x72f
	.uleb128 0xa
	.string	"U"
	.byte	0x5
	.uahalf	0x17f
	.uaword	0x607
	.uleb128 0xa
	.string	"I"
	.byte	0x5
	.uahalf	0x180
	.uaword	0x61d
	.uleb128 0xa
	.string	"B"
	.byte	0x5
	.uahalf	0x181
	.uaword	0x6b2
	.byte	0
	.uleb128 0xb
	.string	"Ifx_STM_TIM0"
	.byte	0x5
	.uahalf	0x182
	.uaword	0x707
	.uleb128 0xc
	.byte	0x1
	.string	"MAIN_vidGetSystemRunTime"
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x783
	.uleb128 0xd
	.string	"tick"
	.byte	0x1
	.byte	0x2e
	.uaword	0x22f
	.uaword	.LLST0
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"MAIN_vidUpdateSystemRunTime"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"MAIN_u32GetRunTime_ms"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	0x211
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"MAIN_u32GetRunTime_s"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.uaword	0x211
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"MAIN_u32GetFactoryRunTime_s"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	0x211
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x84d
	.uleb128 0xd
	.string	"u32Ret"
	.byte	0x1
	.byte	0x48
	.uaword	0x211
	.uaword	.LLST1
	.byte	0
	.uleb128 0x11
	.string	"MAIN_u64RunTime_NVM"
	.byte	0x1
	.byte	0x20
	.uaword	0x22f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u64RunTime_NVM
	.uleb128 0x11
	.string	"MAIN_u64RunTimeRom_NVM"
	.byte	0x1
	.byte	0x21
	.uaword	0x894
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u64RunTimeRom_NVM
	.uleb128 0x12
	.uaword	0x22f
	.uleb128 0x11
	.string	"MAIN_u64RunTime_s"
	.byte	0x1
	.byte	0x22
	.uaword	0x22f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u64RunTime_s
	.uleb128 0x11
	.string	"MAIN_u64RunTime_ms"
	.byte	0x1
	.byte	0x23
	.uaword	0x22f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u64RunTime_ms
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0x8
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x17
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
	.uleb128 0xa
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x40
	.uleb128 0xa
	.uleb128 0x2116
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0xa
	.byte	0x9e
	.uleb128 0x8
	.uaxword	0
	.uaword	.LVL2
	.uaword	.LFE31
	.uahalf	0x6
	.byte	0x58
	.byte	0x93
	.uleb128 0x4
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0xe
	.byte	0x3
	.uaword	MAIN_u64RunTime_s
	.byte	0x6
	.byte	0x3
	.uaword	MAIN_u64RunTime_NVM
	.byte	0x6
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE35
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
