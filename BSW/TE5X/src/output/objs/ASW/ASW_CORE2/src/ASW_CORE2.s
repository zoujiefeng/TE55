	.file	"ASW_CORE2.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RE_CORE2_SWC_func,"ax",@progbits
	.align 1
	.global	RE_CORE2_SWC_func
	.type	RE_CORE2_SWC_func, @function
RE_CORE2_SWC_func:
.LFB19:
	.file 1 "ASW\\ASW_CORE2\\src\\ASW_CORE2.c"
	.loc 1 47 0
	.loc 1 48 0
	movh.a	%a15, hi:CPU2_PercentUtilization
	movh.a	%a5, hi:CPU2_StatusUtiliazation
	lea	%a4, [%a15] lo:CPU2_PercentUtilization
	mov	%d4, 1000
	lea	%a5, [%a5] lo:CPU2_StatusUtiliazation
	call	CPUUtilizationCore2_func
.LVL0:
	.loc 1 49 0
	ld.w	%d15, [%a15] lo:CPU2_PercentUtilization
	movh.a	%a15, hi:CPU2_MaximumUtilization
	ld.w	%d2, [%a15] lo:CPU2_MaximumUtilization
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 2, .L2
	.loc 1 51 0
	st.w	[%a15] lo:CPU2_MaximumUtilization, %d15
.L2:
	.loc 1 54 0
	movh.a	%a4, hi:Core2_MaxUserStackUtilization
	lea	%a4, [%a4] lo:Core2_MaxUserStackUtilization
	j	GetMaxUserStackUtilization_Core2_func
.LVL1:
.LFE19:
	.size	RE_CORE2_SWC_func, .-RE_CORE2_SWC_func
.section .text.RE_Core2FaultReaction,"ax",@progbits
	.align 1
	.global	RE_Core2FaultReaction
	.type	RE_Core2FaultReaction, @function
RE_Core2FaultReaction:
.LFB20:
	.loc 1 58 0
.LVL2:
	ret
.LFE20:
	.size	RE_Core2FaultReaction, .-RE_Core2FaultReaction
	.global	Core2_MaxUserStackUtilization
.section .bss.a4.Core2_MaxUserStackUtilization,"aw",@nobits
	.align 2
	.type	Core2_MaxUserStackUtilization, @object
	.size	Core2_MaxUserStackUtilization, 4
Core2_MaxUserStackUtilization:
	.zero	4
	.global	CPU2_MaximumUtilization
.section .bss.a4.CPU2_MaximumUtilization,"aw",@nobits
	.align 2
	.type	CPU2_MaximumUtilization, @object
	.size	CPU2_MaximumUtilization, 4
CPU2_MaximumUtilization:
	.zero	4
	.global	CPU2_PercentUtilization
.section .bss.a4.CPU2_PercentUtilization,"aw",@nobits
	.align 2
	.type	CPU2_PercentUtilization, @object
	.size	CPU2_PercentUtilization, 4
CPU2_PercentUtilization:
	.zero	4
	.global	CPU2_StatusUtiliazation
.section .bss.a1.CPU2_StatusUtiliazation,"aw",@nobits
	.type	CPU2_StatusUtiliazation, @object
	.size	CPU2_StatusUtiliazation, 1
CPU2_StatusUtiliazation:
	.zero	1
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
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_ASW_CORE2.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x471
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_CORE2\\src\\ASW_CORE2.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1ac
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1d3
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.string	"float64"
	.byte	0x2
	.byte	0x78
	.uaword	0x270
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
	.uleb128 0x3
	.string	"StatusType"
	.byte	0x3
	.byte	0x48
	.uaword	0x1ac
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x212
	.uleb128 0x4
	.byte	0x4
	.uaword	0x212
	.uleb128 0x4
	.byte	0x4
	.uaword	0x261
	.uleb128 0x5
	.byte	0x1
	.string	"RE_CORE2_SWC_func"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x332
	.uleb128 0x6
	.uaword	.LVL0
	.uaword	0x40b
	.uaword	0x31d
	.uleb128 0x7
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	CPU2_StatusUtiliazation
	.uleb128 0x7
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	CPU2_PercentUtilization
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x3e8
	.byte	0
	.uleb128 0x8
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x43e
	.uleb128 0x7
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	Core2_MaxUserStackUtilization
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"RE_Core2FaultReaction"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x36d
	.uleb128 0x9
	.string	"Error"
	.byte	0x1
	.byte	0x39
	.uaword	0x29b
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xa
	.string	"CPU2_StatusUtiliazation"
	.byte	0x1
	.byte	0x1d
	.uaword	0x212
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CPU2_StatusUtiliazation
	.uleb128 0xa
	.string	"CPU2_PercentUtilization"
	.byte	0x1
	.byte	0x23
	.uaword	0x261
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CPU2_PercentUtilization
	.uleb128 0xa
	.string	"CPU2_MaximumUtilization"
	.byte	0x1
	.byte	0x24
	.uaword	0x261
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CPU2_MaximumUtilization
	.uleb128 0xa
	.string	"Core2_MaxUserStackUtilization"
	.byte	0x1
	.byte	0x25
	.uaword	0x261
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Core2_MaxUserStackUtilization
	.uleb128 0xb
	.byte	0x1
	.string	"CPUUtilizationCore2_func"
	.byte	0x4
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x43e
	.uleb128 0xc
	.uaword	0x230
	.uleb128 0xc
	.uaword	0x2c9
	.uleb128 0xc
	.uaword	0x2c3
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"GetMaxUserStackUtilization_Core2_func"
	.byte	0x4
	.byte	0x74
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uleb128 0xc
	.uaword	0x2c9
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
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
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
	.extern	GetMaxUserStackUtilization_Core2_func,STT_FUNC,0
	.extern	CPUUtilizationCore2_func,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
