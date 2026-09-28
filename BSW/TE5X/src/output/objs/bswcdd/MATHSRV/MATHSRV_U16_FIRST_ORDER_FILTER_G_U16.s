	.file	"MATHSRV_U16_FIRST_ORDER_FILTER_G_U16.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	MATHSRV_u16FirstOrderFilterGu16
	.type	MATHSRV_u16FirstOrderFilterGu16, @function
MATHSRV_u16FirstOrderFilterGu16:
.LFB0:
	.file 1 "bswcdd\\MATHSRV\\MATHSRV_U16_FIRST_ORDER_FILTER_G_U16.c"
	.loc 1 47 0
.LVL0:
	.loc 1 54 0
	ld.w	%d3, [%a4]0
	addi	%d15, %d3, 32767
.LVL1:
	.loc 1 55 0
	sh	%d15, %d15, -16
.LVL2:
	.loc 1 57 0
	jge.u	%d5, %d15, .L7
	.loc 1 71 0
	sub	%d5, %d15, %d5
.LVL3:
	.loc 1 73 0
	mul	%d4, %d5
.LVL4:
	mov	%d2, 0
	.loc 1 80 0
	mov	%d6, 0
	jge.u	%d4, %d3, .L4
	.loc 1 80 0 is_stmt 0 discriminator 1
	sub	%d6, %d3, %d4
	addi	%d2, %d6, 32767
	sh	%d2, %d2, -16
.L4:
	.loc 1 76 0 is_stmt 1
	st.w	[%a4]0, %d6
.LVL5:
	.loc 1 87 0
	ret
.LVL6:
.L7:
	.loc 1 59 0
	sub	%d5, %d15
.LVL7:
	.loc 1 64 0
	madd	%d3, %d3, %d5, %d4
	.loc 1 63 0
	st.w	[%a4]0, %d3
.LVL8:
	.loc 1 66 0
	addi	%d3, %d3, 32767
.LVL9:
	.loc 1 67 0
	sh	%d2, %d3, -16
.LVL10:
	ret
.LFE0:
	.size	MATHSRV_u16FirstOrderFilterGu16, .-MATHSRV_u16FirstOrderFilterGu16
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
	.uaword	0x3bb
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\MATHSRV\\MATHSRV_U16_FIRST_ORDER_FILTER_G_U16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
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
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1fb
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
	.uaword	0x237
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
	.string	"MATHSRV_u16FirstOrderFilterGu16"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.uaword	0x1ed
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3b8
	.uleb128 0x5
	.string	"u16FilterGain"
	.byte	0x1
	.byte	0x2b
	.uaword	0x1ed
	.uaword	.LLST0
	.uleb128 0x6
	.string	"pu32AccuracyFilterValue"
	.byte	0x1
	.byte	0x2c
	.uaword	0x3b8
	.byte	0x1
	.byte	0x64
	.uleb128 0x5
	.string	"u16MeasuredValue"
	.byte	0x1
	.byte	0x2d
	.uaword	0x1ed
	.uaword	.LLST1
	.uleb128 0x7
	.string	"u32LocalPreviousFilterValue"
	.byte	0x1
	.byte	0x30
	.uaword	0x229
	.byte	0x1
	.byte	0x5f
	.uleb128 0x8
	.string	"u32LocalNewFilterValue"
	.byte	0x1
	.byte	0x31
	.uaword	0x229
	.uaword	.LLST2
	.uleb128 0x8
	.string	"u32LocalAccuracyNewFilterValue"
	.byte	0x1
	.byte	0x32
	.uaword	0x229
	.uaword	.LLST3
	.uleb128 0x8
	.string	"u16LocalNewFilterValue"
	.byte	0x1
	.byte	0x33
	.uaword	0x1ed
	.uaword	.LLST4
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x229
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uaword	.LVL0-.text
	.uaword	.LVL4-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-.text
	.uaword	.LVL6-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL6-.text
	.uaword	.LFE0-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.text
	.uaword	.LVL3-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3-.text
	.uaword	.LVL6-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL6-.text
	.uaword	.LVL7-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7-.text
	.uaword	.LFE0-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8-.text
	.uaword	.LVL9-.text
	.uahalf	0x5
	.byte	0x73
	.sleb128 32767
	.byte	0x9f
	.uaword	.LVL9-.text
	.uaword	.LFE0-.text
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3-.text
	.uaword	.LVL4-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4-.text
	.uaword	.LVL6-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7-.text
	.uaword	.LFE0-.text
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
.LLST4:
	.uaword	.LVL5-.text
	.uaword	.LVL6-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10-.text
	.uaword	.LFE0-.text
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
