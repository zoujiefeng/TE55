	.file	"rba_BswSrv_MemCompare.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.rba_BswSrv_MemCompare,"ax",@progbits
	.align 1
	.global	rba_BswSrv_MemCompare
	.type	rba_BswSrv_MemCompare, @function
rba_BswSrv_MemCompare:
.LFB12:
	.file 1 "bsw\\integration\\rba_BswSrv\\src\\rba_BswSrv_MemCompare.c"
	.loc 1 42 0
.LVL0:
	sub.a	%SP, 16
.LCFI0:
	.loc 1 102 0
	jlt.u	%d4, 4, .L2
	.loc 1 102 0 is_stmt 0 discriminator 1
	mov.d	%d2, %a5
	mov.d	%d15, %a4
	or	%d15, %d2
	and	%d2, %d15, 3
	jnz	%d2, .L17
.LVL1:
	andn	%d15, %d4, ~(-4)
	add	%d15, -4
	sh	%d15, -2
	mov.a	%a15, %d15
.LVL2:
.L5:
	.loc 1 108 0 is_stmt 1
	ld.w	%d2, [%a4]0
	ld.w	%d15, [%a5]0
	jne	%d2, %d15, .L23
.LVL3:
	.loc 1 117 0
	add.a	%a4, 4
.LVL4:
	.loc 1 118 0
	add.a	%a5, 4
.LVL5:
	loop	%a15, .L5
	.loc 1 105 0
	and	%d4, %d4, 3
.LVL6:
.L2:
	.loc 1 129 0
	jlt.u	%d4, 2, .L6
	mov.d	%d15, %a5
	mov.d	%d2, %a4
	or	%d15, %d2
.LVL7:
.L17:
	.loc 1 129 0 is_stmt 0 discriminator 1
	jnz.t	%d15, 0, .L9
.L25:
.LVL8:
	andn	%d15, %d4, ~(-2)
	add	%d15, -2
	sh	%d15, -1
	mov.a	%a15, %d15
.LVL9:
.L10:
	.loc 1 135 0 is_stmt 1
	ld.hu	%d2, [%a4]0
	ld.hu	%d15, [%a5]0
	jne	%d2, %d15, .L24
.LVL10:
	.loc 1 144 0
	add.a	%a4, 2
.LVL11:
	.loc 1 145 0
	add.a	%a5, 2
.LVL12:
	loop	%a15, .L10
	.loc 1 132 0
	and	%d4, %d4, 1
.LVL13:
.L6:
	.loc 1 155 0
	jz	%d4, .L16
.LVL14:
.L9:
	.loc 1 157 0
	ld.bu	%d2, [%a4]0
	ld.bu	%d15, [%a5]0
	jne	%d2, %d15, .L12
	mov.d	%d15, %a4
	not	%d15
	addsc.a	%a2, %a4, %d15, 0
	mov.d	%d15, %a2
	add	%d15, %d4
	sel	%d15, %d4, %d15, 0
	mov.a	%a15, %d15
.LVL15:
.L14:
	.loc 1 161 0 discriminator 2
	add.a	%a4, 1
.LVL16:
	.loc 1 162 0 discriminator 2
	add.a	%a5, 1
.LVL17:
	loop	%a15, .L15
.LVL18:
.L16:
	.loc 1 164 0
	mov	%d2, 0
	ret
.LVL19:
.L15:
	.loc 1 157 0
	ld.bu	%d2, [%a4]0
	ld.bu	%d15, [%a5]0
	jeq	%d2, %d15, .L14
.LVL20:
.L12:
	.loc 1 159 0
	sub	%d2, %d15
	ret
.LVL21:
.L24:
	.loc 1 139 0
	lea	%a5, [%SP] 16
.LVL22:
	.loc 1 138 0
	st.h	[%SP] 4, %d2
	.loc 1 139 0
	st.h	[+%a5]-10, %d15
.LVL23:
	.loc 1 140 0
	lea	%a4, [%SP] 4
.LVL24:
	.loc 1 137 0
	mov	%d4, 2
	j	.L9
.LVL25:
.L23:
	.loc 1 112 0
	lea	%a14, [%SP] 16
	st.w	[+%a14]-4, %d15
.LVL26:
	lea	%a4, [%SP] 8
.LVL27:
	.loc 1 111 0
	st.w	[%SP] 8, %d2
	mov.d	%d15, %a14
	mov.d	%d2, %a4
	.loc 1 114 0
	mov.aa	%a5, %a14
	or	%d15, %d2
	.loc 1 110 0
	mov	%d4, 4
.LVL28:
	.loc 1 129 0
	jnz.t	%d15, 0, .L9
	j	.L25
.LFE12:
	.size	rba_BswSrv_MemCompare, .-rba_BswSrv_MemCompare
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
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.byte	0x4
	.uaword	.LCFI0-.LFB12
	.byte	0xe
	.uleb128 0x10
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x43f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\integration\\rba_BswSrv\\src\\rba_BswSrv_MemCompare.c"
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
	.byte	0x2
	.byte	0x51
	.uaword	0x1e1
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
	.string	"rba_BswSrv_MemCompare"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.uaword	0x223
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x41a
	.uleb128 0x5
	.string	"xSrc1_pcv"
	.byte	0x1
	.byte	0x29
	.uaword	0x41a
	.uaword	.LLST1
	.uleb128 0x5
	.string	"xSrc2_pcv"
	.byte	0x1
	.byte	0x29
	.uaword	0x41a
	.uaword	.LLST2
	.uleb128 0x5
	.string	"numBytes_u32"
	.byte	0x1
	.byte	0x29
	.uaword	0x249
	.uaword	.LLST3
	.uleb128 0x6
	.string	"xSrc1_pcu32"
	.byte	0x1
	.byte	0x37
	.uaword	0x421
	.uaword	.LLST4
	.uleb128 0x6
	.string	"xSrc2_pcu32"
	.byte	0x1
	.byte	0x38
	.uaword	0x421
	.uaword	.LLST5
	.uleb128 0x6
	.string	"xSrc1_pcu16"
	.byte	0x1
	.byte	0x3a
	.uaword	0x42c
	.uaword	.LLST6
	.uleb128 0x6
	.string	"xSrc2_pcu16"
	.byte	0x1
	.byte	0x3b
	.uaword	0x42c
	.uaword	.LLST7
	.uleb128 0x6
	.string	"xSrc1_pcu8"
	.byte	0x1
	.byte	0x3c
	.uaword	0x437
	.uaword	.LLST8
	.uleb128 0x6
	.string	"xSrc2_pcu8"
	.byte	0x1
	.byte	0x3d
	.uaword	0x437
	.uaword	.LLST9
	.uleb128 0x6
	.string	"ctLoop_u32"
	.byte	0x1
	.byte	0x3e
	.uaword	0x249
	.uaword	.LLST10
	.uleb128 0x7
	.string	"xTemp1_u32"
	.byte	0x1
	.byte	0x43
	.uaword	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x7
	.string	"xTemp2_u32"
	.byte	0x1
	.byte	0x44
	.uaword	0x249
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x7
	.string	"xTemp1_u16"
	.byte	0x1
	.byte	0x45
	.uaword	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x7
	.string	"xTemp2_u16"
	.byte	0x1
	.byte	0x46
	.uaword	0x1ff
	.byte	0x2
	.byte	0x91
	.sleb128 -10
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x420
	.uleb128 0x9
	.uleb128 0x8
	.byte	0x4
	.uaword	0x427
	.uleb128 0xa
	.uaword	0x249
	.uleb128 0x8
	.byte	0x4
	.uaword	0x432
	.uleb128 0xa
	.uaword	0x1ff
	.uleb128 0x8
	.byte	0x4
	.uaword	0x43d
	.uleb128 0xa
	.uaword	0x1d4
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
	.uleb128 0x6
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uaword	.LFB12
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE12
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL2
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LVL13
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x3
	.byte	0x84
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x3
	.byte	0x85
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x8e
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL0
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL26
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x3
	.byte	0x85
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL28
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL13
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x3
	.byte	0x85
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL13
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x32
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
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
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
