	.file	"IfxCpu_Irq.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata.a1,"a",@progbits
.LC0:
	.byte	0
	.byte	2
	.byte	3
	.byte	4
.section .text.IfxCpu_Irq_getTos,"ax",@progbits
	.align 1
	.global	IfxCpu_Irq_getTos
	.type	IfxCpu_Irq_getTos, @function
IfxCpu_Irq_getTos:
.LFB246:
	.file 1 "Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Irq\\IfxCpu_Irq.c"
	.loc 1 199 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 200 0
	lea	%a15, [%SP] 4
	movh.a	%a2, hi:.LC0
	mov.aa	%a3, %a15
	lea	%a2, [%a2] lo:.LC0
	.loc 1 205 0
	addsc.a	%a15, %a15, %d4, 0
	.loc 1 200 0
		# #chunks=4, chunksize=1, remains=0
	lea	%a4, 4-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a3+]1, %d15
	loop	%a4, 0b
	.loc 1 206 0
	ld.bu	%d2, [%a15]0
	ret
.LFE246:
	.size	IfxCpu_Irq_getTos, .-IfxCpu_Irq_getTos
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
	.uaword	.LFB246
	.uaword	.LFE246-.LFB246
	.byte	0x4
	.uaword	.LCFI0-.LFB246
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxSrc_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x48d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Irq\\IfxCpu_Irq.c"
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
	.uaword	0x217
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2a0
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x2
	.byte	0x8c
	.uaword	0x2cb
	.uleb128 0x7
	.string	"module"
	.byte	0x2
	.byte	0x8e
	.uaword	0x29a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"index"
	.byte	0x2
	.byte	0x8f
	.uaword	0x279
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x2
	.byte	0x90
	.uaword	0x2a1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x9e
	.uaword	0x370
	.uleb128 0x9
	.string	"IfxCpu_ResourceCpu_0"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxCpu_ResourceCpu_1"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxCpu_ResourceCpu_2"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxCpu_ResourceCpu_3"
	.sleb128 3
	.uleb128 0x9
	.string	"IfxCpu_ResourceCpu_none"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu"
	.byte	0x4
	.byte	0xa4
	.uaword	0x2f1
	.uleb128 0x8
	.byte	0x1
	.byte	0x5
	.byte	0x43
	.uaword	0x3ec
	.uleb128 0x9
	.string	"IfxSrc_Tos_cpu0"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxSrc_Tos_dma"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxSrc_Tos_cpu1"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxSrc_Tos_cpu2"
	.sleb128 3
	.uleb128 0x9
	.string	"IfxSrc_Tos_cpu3"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"IfxSrc_Tos"
	.byte	0x5
	.byte	0x49
	.uaword	0x38a
	.uleb128 0xa
	.byte	0x1
	.string	"IfxCpu_Irq_getTos"
	.byte	0x1
	.byte	0xc6
	.byte	0x1
	.uaword	0x3ec
	.uaword	.LFB246
	.uaword	.LFE246
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x449
	.uleb128 0xb
	.string	"coreId"
	.byte	0x1
	.byte	0xc6
	.uaword	0x370
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.string	"tos"
	.byte	0x1
	.byte	0xc8
	.uaword	0x459
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.uleb128 0xd
	.uaword	0x3ec
	.uaword	0x459
	.uleb128 0xe
	.uaword	0x2e5
	.byte	0x3
	.byte	0
	.uleb128 0xf
	.uaword	0x449
	.uleb128 0xd
	.uaword	0x2cb
	.uaword	0x46e
	.uleb128 0xe
	.uaword	0x2e5
	.byte	0x3
	.byte	0
	.uleb128 0x10
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x4
	.byte	0xaa
	.uaword	0x48b
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.uaword	0x45e
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB246
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE246
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB246
	.uaword	.LFE246-.LFB246
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB246
	.uaword	.LFE246
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
