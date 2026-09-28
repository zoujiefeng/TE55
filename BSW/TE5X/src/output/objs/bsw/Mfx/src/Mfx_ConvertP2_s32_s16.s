	.file	"Mfx_ConvertP2_s32_s16.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Mfx_ConvertP2_s32_s16,"ax",@progbits
	.align 1
	.global	Mfx_ConvertP2_s32_s16
	.type	Mfx_ConvertP2_s32_s16, @function
Mfx_ConvertP2_s32_s16:
.LFB516:
	.file 1 "bsw\\Mfx\\src\\Mfx_ConvertP2_s32_s16.c"
	.loc 1 35 0
.LVL0:
.LBB4:
.LBB5:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Mfx\\api\\Mfx_Limit_Inl.h"
	.loc 2 260 0
	sub	%d5, %d6, %d5
.LVL1:
	.loc 2 269 0
	ge	%d15, %d5, 0
	.loc 2 265 0
	jltz	%d4, .L17
	.loc 2 292 0
	mov	%d3, 32767
	ge	%d2, %d4, %d3
	and	%d15, %d2
	jz	%d15, .L18
	.loc 2 294 0
	mov	%d15, %d3
.LVL2:
.L9:
	extr	%d2, %d15, 0, 16
	ret
.LVL3:
.L18:
	.loc 2 306 0
	sh	%d15, %d4, %d5
	.loc 2 299 0
	jltz	%d5, .L19
.L5:
.LVL4:
	.loc 2 313 0
	mov.u	%d3, 32768
	mov	%d2, 32767
	jlt	%d15, %d3, .L20
.LBE5:
.LBE4:
	.loc 1 37 0
	ret
.LVL5:
.L17:
.LBB7:
.LBB6:
	.loc 2 269 0
	mov	%d3, -32767
	lt	%d2, %d4, %d3
	and	%d15, %d2
	jz	%d15, .L21
	.loc 2 271 0
	mov	%d15, -32768
	j	.L9
.L21:
	.loc 2 284 0
	rsub	%d2, %d4, 0
	.loc 2 285 0
	sh	%d15, %d4, %d5
	.loc 2 276 0
	jgez	%d5, .L5
.LVL6:
	.loc 2 278 0
	rsub	%d5
.LVL7:
	.loc 2 279 0
	rsub	%d15, %d5, 0
	sh	%d15, %d2, %d15
	.loc 2 280 0
	rsub	%d15
.LVL8:
	j	.L5
.LVL9:
.L19:
	.loc 2 301 0
	rsub	%d5
.LVL10:
	.loc 2 302 0
	rsub	%d15, %d5, 0
	sh	%d15, %d4, %d15
.LVL11:
	j	.L5
.LVL12:
.L20:
	.loc 2 317 0
	mov	%d2, -32768
	jge	%d15, %d2, .L9
.LBE6:
.LBE7:
	.loc 1 37 0
	ret
.LFE516:
	.size	Mfx_ConvertP2_s32_s16, .-Mfx_ConvertP2_s32_s16
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
	.uaword	.LFB516
	.uaword	.LFE516-.LFB516
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3a1
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Mfx\\src\\Mfx_ConvertP2_s32_s16.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
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
	.byte	0x3
	.byte	0x56
	.uaword	0x1e0
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
	.uaword	0x211
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
	.string	"Mfx_Prv_ConvertP2_s32_s16_Inl"
	.byte	0x2
	.byte	0xfd
	.byte	0x1
	.uaword	0x1d2
	.byte	0x3
	.uaword	0x30d
	.uleb128 0x5
	.string	"x"
	.byte	0x2
	.byte	0xfd
	.uaword	0x203
	.uleb128 0x5
	.string	"a"
	.byte	0x2
	.byte	0xfd
	.uaword	0x1d2
	.uleb128 0x5
	.string	"c"
	.byte	0x2
	.byte	0xfd
	.uaword	0x1d2
	.uleb128 0x6
	.string	"tmp_s32"
	.byte	0x2
	.byte	0xff
	.uaword	0x203
	.uleb128 0x7
	.string	"shift_s32"
	.byte	0x2
	.uahalf	0x100
	.uaword	0x203
	.uleb128 0x7
	.string	"tmp_u32"
	.byte	0x2
	.uahalf	0x101
	.uaword	0x229
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"Mfx_ConvertP2_s32_s16"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	0x1d2
	.uaword	.LFB516
	.uaword	.LFE516
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x9
	.string	"x"
	.byte	0x1
	.byte	0x22
	.uaword	0x203
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.string	"a"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d2
	.uaword	.LLST0
	.uleb128 0x9
	.string	"c"
	.byte	0x1
	.byte	0x22
	.uaword	0x1d2
	.byte	0x1
	.byte	0x56
	.uleb128 0xb
	.uaword	0x295
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x24
	.uleb128 0xc
	.uaword	0x2d2
	.byte	0x1
	.byte	0x56
	.uleb128 0xd
	.uaword	0x2c9
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	0x2c0
	.byte	0x1
	.byte	0x54
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0
	.uleb128 0xf
	.uaword	0x2db
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	0x2ea
	.uaword	.LLST3
	.uleb128 0xf
	.uaword	0x2fc
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.byte	0x55
	.uaword	.LVL1
	.uaword	.LFE516
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x4
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE516
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x7
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x1f
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x25
	.byte	0x9f
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
	.uaword	.LFB516
	.uaword	.LFE516-.LFB516
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB7
	.uaword	.LBE7
	.uaword	0
	.uaword	0
	.uaword	.LFB516
	.uaword	.LFE516
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
