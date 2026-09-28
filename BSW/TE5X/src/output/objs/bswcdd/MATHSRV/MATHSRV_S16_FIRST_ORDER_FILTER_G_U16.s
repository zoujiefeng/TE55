	.file	"MATHSRV_S16_FIRST_ORDER_FILTER_G_U16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MATHSRV_s16FirstOrderFilterGu16,"ax",@progbits
	.align 1
	.global	MATHSRV_s16FirstOrderFilterGu16
	.type	MATHSRV_s16FirstOrderFilterGu16, @function
MATHSRV_s16FirstOrderFilterGu16:
.LFB0:
	.file 1 "bswcdd\\MATHSRV\\MATHSRV_S16_FIRST_ORDER_FILTER_G_U16.c"
	.loc 1 46 0
.LVL0:
	.loc 1 58 0
	ld.w	%d15, [%a4]0
	.loc 1 60 0
	addi	%d5, %d5, -32768
.LVL1:
	.loc 1 58 0
	addih	%d3, %d15, 32768
.LVL2:
	.loc 1 63 0
	addi	%d15, %d3, 32767
.LVL3:
	.loc 1 66 0
	extr.u	%d5, %d5, 0, 16
	.loc 1 64 0
	sh	%d15, %d15, -16
.LVL4:
	.loc 1 66 0
	jge.u	%d5, %d15, .L6
	.loc 1 77 0
	sub	%d5, %d15, %d5
.LVL5:
	.loc 1 79 0
	mul	%d4, %d5
.LVL6:
	mov	%d2, -32768
	movh	%d6, 32768
	.loc 1 86 0
	jge.u	%d4, %d3, .L3
	.loc 1 86 0 is_stmt 0 discriminator 1
	sub	%d2, %d3, %d4
	addih	%d6, %d2, 32768
	addi	%d2, %d2, 32767
	sh	%d2, %d2, -16
	addi	%d2, %d2, -32768
	extr	%d2, %d2, 0, 16
.L3:
.LVL7:
	.loc 1 92 0 is_stmt 1
	st.w	[%a4]0, %d6
	.loc 1 100 0
	ret
.LVL8:
.L6:
	.loc 1 68 0
	sub	%d5, %d15
.LVL9:
	.loc 1 72 0
	madd	%d3, %d3, %d5, %d4
.LVL10:
	addi	%d2, %d3, 32767
	sh	%d2, %d2, -16
	addih	%d6, %d3, 32768
	addi	%d2, %d2, -32768
	extr	%d2, %d2, 0, 16
.LVL11:
	.loc 1 92 0
	st.w	[%a4]0, %d6
	.loc 1 100 0
	ret
.LFE0:
	.size	MATHSRV_s16FirstOrderFilterGu16, .-MATHSRV_s16FirstOrderFilterGu16
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x41e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\MATHSRV\\MATHSRV_S16_FIRST_ORDER_FILTER_G_U16.c"
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
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x56
	.uaword	0x1f2
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x20d
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x231
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
	.uaword	0x257
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
	.uleb128 0x4
	.byte	0x1
	.string	"MATHSRV_s16FirstOrderFilterGu16"
	.byte	0x1
	.byte	0x28
	.byte	0x1
	.uaword	0x1e4
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x41b
	.uleb128 0x5
	.string	"u16FilterGain"
	.byte	0x1
	.byte	0x2a
	.uaword	0x1ff
	.uaword	.LLST0
	.uleb128 0x6
	.string	"ps32AccuracyFilterValue"
	.byte	0x1
	.byte	0x2b
	.uaword	0x41b
	.byte	0x1
	.byte	0x64
	.uleb128 0x5
	.string	"s16MeasuredValue"
	.byte	0x1
	.byte	0x2c
	.uaword	0x1e4
	.uaword	.LLST1
	.uleb128 0x7
	.string	"u32LocalPreviousFilterValue"
	.byte	0x1
	.byte	0x2f
	.uaword	0x249
	.byte	0x1
	.byte	0x5f
	.uleb128 0x8
	.string	"u32LocalNewFilterValue"
	.byte	0x1
	.byte	0x30
	.uaword	0x249
	.uleb128 0x9
	.string	"u32LocalAccuracyNewFilterValue"
	.byte	0x1
	.byte	0x31
	.uaword	0x249
	.uaword	.LLST2
	.uleb128 0x8
	.string	"u16LocalNewFilterValue"
	.byte	0x1
	.byte	0x32
	.uaword	0x1ff
	.uleb128 0x8
	.string	"u16LocalMeasuredValueScalled"
	.byte	0x1
	.byte	0x33
	.uaword	0x1ff
	.uleb128 0x9
	.string	"u32LocalAccuracyFilterValue"
	.byte	0x1
	.byte	0x34
	.uaword	0x249
	.uaword	.LLST3
	.byte	0
	.uleb128 0xa
	.byte	0x4
	.uaword	0x223
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LFE0
	.uahalf	0xa
	.byte	0x74
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x53
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
