	.file	"IFX_Os.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.SuspendAllInterrupts,"ax",@progbits
	.align 1
	.global	SuspendAllInterrupts
	.type	SuspendAllInterrupts, @function
SuspendAllInterrupts:
.LFB19:
	.file 1 "Integration\\TC38x\\IFX_Os.c"
	.loc 1 118 0
	.loc 1 122 0
	call	Mcal_GetCpuIndex
.LVL0:
	.loc 1 124 0
	movh.a	%a15, hi:Os_IntSaveDisableCounter
	lea	%a15, [%a15] lo:Os_IntSaveDisableCounter
	addsc.a	%a2, %a15, %d2, 0
	ld.bu	%d15, [%a2]0
	jnz	%d15, .L2
.LBB7:
	.loc 1 126 0
#APP
	# 126 "Integration\TC38x\IFX_Os.c" 1
	mfcr %d15, LO:(0xFE2C)
	# 0 "" 2
.LVL1:
#NO_APP
.LBE7:
	movh.a	%a2, hi:Os_SavedIntLevelNested
	lea	%a2, [%a2] lo:Os_SavedIntLevelNested
	addsc.a	%a2, %a2, %d2, 2
	st.w	[%a2]0, %d15
.LBB8:
.LBB9:
	.file 2 "s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\tricore\\include\\machine\\intrinsics.h"
	.loc 2 166 0
#APP
	# 166 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	disable
	# 0 "" 2
.LVL2:
#NO_APP
.L2:
.LBE9:
.LBE8:
	.loc 1 129 0
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d15, [%a15]0
	add	%d15, 1
	and	%d15, 255
	st.b	[%a15]0, %d15
	ret
.LFE19:
	.size	SuspendAllInterrupts, .-SuspendAllInterrupts
.section .text.ResumeAllInterrupts,"ax",@progbits
	.align 1
	.global	ResumeAllInterrupts
	.type	ResumeAllInterrupts, @function
ResumeAllInterrupts:
.LFB20:
	.loc 1 152 0
	.loc 1 156 0
	call	Mcal_GetCpuIndex
.LVL3:
	.loc 1 158 0
	movh.a	%a15, hi:Os_IntSaveDisableCounter
	lea	%a2, [%a15] lo:Os_IntSaveDisableCounter
	addsc.a	%a15, %a2, %d2, 0
	ld.bu	%d15, [%a15]0
	jz	%d15, .L5
	.loc 1 160 0
	ld.bu	%d15, [%a15]0
	add	%d15, -1
	and	%d15, 255
	st.b	[%a15]0, %d15
.L5:
	.loc 1 163 0
	addsc.a	%a15, %a2, %d2, 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L4
	.loc 1 165 0
	movh.a	%a15, hi:Os_SavedIntLevelNested
	lea	%a15, [%a15] lo:Os_SavedIntLevelNested
	addsc.a	%a15, %a15, %d2, 2
	ld.w	%d15, [%a15]0
	jz.t	%d15, 15, .L4
.LBB10:
.LBB11:
	.loc 2 172 0
#APP
	# 172 "s:\hightec\toolchains\tricore\v4.9.4.1\tricore\include\machine\intrinsics.h" 1
	enable
	# 0 "" 2
#NO_APP
.L4:
	ret
.LBE11:
.LBE10:
.LFE20:
	.size	ResumeAllInterrupts, .-ResumeAllInterrupts
.section .bss.a4.Os_SavedIntLevelNested,"aw",@nobits
	.align 2
	.type	Os_SavedIntLevelNested, @object
	.size	Os_SavedIntLevelNested, 16
Os_SavedIntLevelNested:
	.zero	16
.section .bss.a1.Os_IntSaveDisableCounter,"aw",@nobits
	.type	Os_IntSaveDisableCounter, @object
	.size	Os_IntSaveDisableCounter, 4
Os_IntSaveDisableCounter:
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x403
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\TC38x\\IFX_Os.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1c5
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
	.uaword	0x207
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
	.byte	0x3
	.byte	0x6a
	.uaword	0x22d
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
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
	.string	"_disable"
	.byte	0x2
	.byte	0xa4
	.byte	0x1
	.byte	0x3
	.uleb128 0x4
	.string	"_enable"
	.byte	0x2
	.byte	0xaa
	.byte	0x1
	.byte	0x3
	.uleb128 0x5
	.byte	0x1
	.string	"SuspendAllInterrupts"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x324
	.uleb128 0x6
	.string	"CoreId"
	.byte	0x1
	.byte	0x77
	.uaword	0x21f
	.byte	0x1
	.byte	0x52
	.uleb128 0x7
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0x30b
	.uleb128 0x8
	.string	"__res"
	.byte	0x1
	.byte	0x7e
	.uaword	0x22d
	.uaword	.LLST0
	.byte	0
	.uleb128 0x9
	.uaword	0x297
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.byte	0x7f
	.uleb128 0xa
	.uaword	.LVL0
	.uaword	0x3ea
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"ResumeAllInterrupts"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x376
	.uleb128 0x6
	.string	"CoreId"
	.byte	0x1
	.byte	0x99
	.uaword	0x21f
	.byte	0x1
	.byte	0x52
	.uleb128 0x9
	.uaword	0x2a5
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x1
	.byte	0xa8
	.uleb128 0xa
	.uaword	.LVL3
	.uaword	0x3ea
	.byte	0
	.uleb128 0xb
	.uaword	0x1b8
	.uaword	0x386
	.uleb128 0xc
	.uaword	0x28b
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.string	"Os_IntSaveDisableCounter"
	.byte	0x1
	.byte	0x4f
	.uaword	0x3ac
	.byte	0x5
	.byte	0x3
	.uaword	Os_IntSaveDisableCounter
	.uleb128 0xd
	.uaword	0x376
	.uleb128 0xb
	.uaword	0x1f9
	.uaword	0x3c1
	.uleb128 0xc
	.uaword	0x28b
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.string	"Os_SavedIntLevelNested"
	.byte	0x1
	.byte	0x55
	.uaword	0x3e5
	.byte	0x5
	.byte	0x3
	.uaword	Os_SavedIntLevelNested
	.uleb128 0xd
	.uaword	0x3b1
	.uleb128 0xe
	.byte	0x1
	.string	"Mcal_GetCpuIndex"
	.byte	0x4
	.uahalf	0x335
	.byte	0x1
	.uaword	0x21f
	.byte	0x1
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
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x1d
	.byte	0
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Mcal_GetCpuIndex,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
