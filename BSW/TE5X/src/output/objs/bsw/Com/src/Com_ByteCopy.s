	.file	"Com_ByteCopy.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_ByteCopy,"ax",@progbits
	.align 1
	.global	Com_ByteCopy
	.type	Com_ByteCopy, @function
Com_ByteCopy:
.LFB149:
	.file 1 "bsw\\Com\\src\\Com_ByteCopy.c"
	.loc 1 58 0
.LVL0:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\rba_BswSrv\\api\\rba_BswSrv.h"
	.loc 2 285 0
	jz	%d4, .L1
	mov.d	%d2, %a4
	mov.d	%d5, %a5
	mov.d	%d3, %a5
	add	%d2, 4
	mov.d	%d6, %a4
	ge.u	%d15, %d5, %d2
	add	%d3, 4
	or.ge.u	%d15, %d6, %d3
	ge.u	%d2, %d4, 10
	and	%d2, %d15
	mov.d	%d15, %a4
	or	%d15, %d5
	and	%d15, %d15, 3
	eq	%d15, %d15, 0
	and	%d15, %d2
	jz	%d15, .L3
	add	%d15, %d4, -4
	sh	%d15, -2
	add	%d2, %d15, 1
	ne	%d3, %d15, -1
	sh	%d2, 2
	mov.aa	%a2, %a5
	mov.aa	%a15, %a4
	sel	%d15, %d3, %d15, 0
.LVL1:
.L4:
	.loc 2 287 0
	ld.w	%d3, [%a2+]4
	st.w	[%a15+]4, %d3
	jned	%d15, 0, .L4
	addsc.a	%a5, %a5, %d2, 0
	addsc.a	%a4, %a4, %d2, 0
	jeq	%d4, %d2, .L1
.LVL2:
	ld.bu	%d15, [%a5]0
	st.b	[%a4]0, %d15
.LVL3:
	.loc 2 285 0
	add	%d15, %d2, 1
	jge.u	%d15, %d4, .L1
	.loc 2 287 0
	ld.bu	%d15, [%a5] 1
	.loc 2 285 0
	add	%d2, 2
.LVL4:
	.loc 2 287 0
	st.b	[%a4] 1, %d15
.LVL5:
	.loc 2 285 0
	jge.u	%d2, %d4, .L17
	.loc 2 287 0
	ld.bu	%d15, [%a5] 2
	st.b	[%a4] 2, %d15
.LVL6:
	ret
.LVL7:
.L3:
	mov.d	%d15, %a5
	addsc.a	%a15, %a5, %d4, 0
	not	%d15
	addsc.a	%a15, %a15, %d15, 0
.LVL8:
.L9:
	ld.bu	%d15, [%a5+]1
.LVL9:
	st.b	[%a4+]1, %d15
.LVL10:
	.loc 2 289 0
	loop	%a15, .L9
.LVL11:
.L1:
	ret
.LVL12:
.L17:
	ret
.LBE5:
.LBE4:
.LFE149:
	.size	Com_ByteCopy, .-Com_ByteCopy
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
	.uaword	.LFB149
	.uaword	.LFE149-.LFB149
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x396
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_ByteCopy.c"
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
	.uaword	0x21f
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
	.byte	0x4
	.uaword	0x1b8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.uaword	0x1b8
	.uleb128 0x4
	.byte	0x4
	.uaword	0x28f
	.uleb128 0x6
	.string	"rba_BswSrv_MemCopy8"
	.byte	0x2
	.uahalf	0x119
	.byte	0x1
	.byte	0x3
	.uaword	0x305
	.uleb128 0x7
	.string	"xDest_pu8"
	.byte	0x2
	.uahalf	0x119
	.uaword	0x27d
	.uleb128 0x7
	.string	"xSrc_pcu8"
	.byte	0x2
	.uahalf	0x119
	.uaword	0x294
	.uleb128 0x7
	.string	"numBytes_u32"
	.byte	0x2
	.uahalf	0x119
	.uaword	0x211
	.uleb128 0x8
	.string	"ctLoop_u32"
	.byte	0x2
	.uahalf	0x11b
	.uaword	0x211
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"Com_ByteCopy"
	.byte	0x1
	.byte	0x39
	.byte	0x1
	.uaword	.LFB149
	.uaword	.LFE149
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.string	"dest_pu8"
	.byte	0x1
	.byte	0x39
	.uaword	0x27d
	.uaword	.LLST0
	.uleb128 0xa
	.string	"src_pcu8"
	.byte	0x1
	.byte	0x39
	.uaword	0x294
	.uaword	.LLST1
	.uleb128 0xb
	.string	"len_u32"
	.byte	0x1
	.byte	0x39
	.uaword	0x211
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.uaword	0x29a
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x3d
	.uleb128 0xd
	.uaword	0x2dc
	.byte	0x1
	.byte	0x54
	.uleb128 0xe
	.uaword	0x2ca
	.uaword	.LLST2
	.uleb128 0xe
	.uaword	0x2b8
	.uaword	.LLST3
	.uleb128 0xf
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x10
	.uaword	0x2f1
	.uaword	.LLST4
	.byte	0
	.byte	0
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x34
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE149
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL1
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE149
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x85
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x85
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL12
	.uaword	.LFE149
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x84
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LFE149
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LFE149
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
	.uaword	.LFB149
	.uaword	.LFE149-.LFB149
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB149
	.uaword	.LFE149
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
