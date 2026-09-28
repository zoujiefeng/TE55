	.file	"rba_BswSrv_MemCopy.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.rba_BswSrv_MemCopy,"ax",@progbits
	.align 1
	.global	rba_BswSrv_MemCopy
	.type	rba_BswSrv_MemCopy, @function
rba_BswSrv_MemCopy:
.LFB12:
	.file 1 "bsw\\integration\\rba_BswSrv\\src\\rba_BswSrv_MemCopy.c"
	.loc 1 45 0
.LVL0:
	.loc 1 45 0
	mov.aa	%a2, %a4
	.loc 1 89 0
	jlt.u	%d4, 4, .L21
	.loc 1 89 0 is_stmt 0 discriminator 1
	mov.d	%d2, %a4
	mov.d	%d0, %a5
	or	%d2, %d0
	and	%d15, %d2, 3
	jnz	%d15, .L22
	.loc 1 91 0 is_stmt 1
	sh	%d2, %d4, -2
	sh	%d2, 2
	.loc 1 55 0
	add	%d15, %d2, -4
	sh	%d15, -2
	addsc.a	%a15, %a2, %d2, 0
	mov.a	%a3, %d15
	and	%d4, %d4, 3
.LVL1:
	.loc 1 56 0
	mov.aa	%a6, %a5
.LVL2:
.L4:
	.loc 1 95 0 discriminator 1
	ld.w	%d15, [%a6+]4
.LVL3:
	st.w	[%a4+]4, %d15
.LVL4:
	.loc 1 97 0 discriminator 1
	loop	%a3, .L4
	addsc.a	%a5, %a5, %d2, 0
.LVL5:
	mov.d	%d2, %a15
	mov.d	%d15, %a5
	or	%d15, %d2
	mov	%d2, %d15
	.loc 1 108 0
	jlt.u	%d4, 2, .L5
	.loc 1 108 0 is_stmt 0 discriminator 1
	jnz.t	%d2, 0, .L12
.LVL6:
.L38:
	mov.d	%d5, %a5
	mov.d	%d6, %a15
	mov.d	%d7, %a15
	add	%d5, 4
	mov.d	%d0, %a5
	.loc 1 110 0 is_stmt 1
	sh	%d2, %d4, -1
.LVL7:
	ge.u	%d3, %d7, %d5
	add	%d6, 4
	or.ge.u	%d3, %d0, %d6
	ge.u	%d5, %d2, 13
	and	%d15, %d15, 3
	and	%d3, %d5
	eq	%d15, %d15, 0
	and	%d15, %d3
	.loc 1 111 0
	and	%d4, %d4, 1
.LVL8:
	jz	%d15, .L7
.LVL9:
	add	%d15, %d2, -2
	sh	%d15, -1
	add	%d5, %d15, 1
	ne	%d3, %d15, -1
	sh	%d5, 1
	mov.aa	%a4, %a5
	mov.aa	%a3, %a15
	sel	%d15, %d3, %d15, 0
.LVL10:
.L8:
	.loc 1 114 0 discriminator 1
	ld.w	%d3, [%a4+]4
	st.w	[%a3+]4, %d3
	jned	%d15, 0, .L8
	mov.a	%a3, %d5
	sh	%d3, %d2, 1
	add.a	%a4, %a3, %a3
	add.a	%a3, %a15, %a4
	add.a	%a4, %a5
	jeq	%d2, %d5, .L11
.LVL11:
	.loc 1 114 0 is_stmt 0
	ld.hu	%d15, [%a4]0
	st.h	[%a3]0, %d15
.LVL12:
.L11:
	addsc.a	%a15, %a15, %d3, 0
	addsc.a	%a5, %a5, %d3, 0
.LVL13:
.L5:
	mov.d	%d15, %a5
	mov.d	%d0, %a15
	or	%d15, %d0
	.loc 1 126 0 is_stmt 1
	jz	%d4, .L23
.LVL14:
.L12:
	mov.d	%d3, %a5
	mov.d	%d5, %a15
	mov.d	%d6, %a15
	add	%d3, 4
	mov.d	%d7, %a5
	ge.u	%d2, %d6, %d3
	add	%d5, 4
	or.ge.u	%d2, %d7, %d5
	ge.u	%d3, %d4, 10
	and	%d15, %d15, 3
	and	%d2, %d3
	eq	%d15, %d15, 0
	and	%d15, %d2
	jz	%d15, .L13
.LVL15:
	add	%d15, %d4, -4
	sh	%d15, -2
	add	%d2, %d15, 1
	ne	%d3, %d15, -1
	sh	%d2, 2
	mov.aa	%a4, %a5
	mov.aa	%a3, %a15
	sel	%d15, %d3, %d15, 0
.LVL16:
.L14:
	.loc 1 128 0 discriminator 3
	ld.w	%d3, [%a4+]4
	st.w	[%a3+]4, %d3
	jned	%d15, 0, .L14
	addsc.a	%a15, %a15, %d2, 0
	addsc.a	%a5, %a5, %d2, 0
	jeq	%d4, %d2, .L23
.LVL17:
	.loc 1 128 0 is_stmt 0
	ld.bu	%d15, [%a5]0
	st.b	[%a15]0, %d15
.LVL18:
	.loc 1 126 0 is_stmt 1
	add	%d15, %d2, 1
	jge.u	%d15, %d4, .L23
	.loc 1 128 0
	ld.bu	%d15, [%a5] 1
	.loc 1 126 0
	add	%d2, 2
.LVL19:
	.loc 1 128 0
	st.b	[%a15] 1, %d15
.LVL20:
	.loc 1 126 0
	jge.u	%d2, %d4, .L37
	.loc 1 128 0
	ld.bu	%d15, [%a5] 2
	st.b	[%a15] 2, %d15
.LVL21:
	ret
.LVL22:
.L21:
	.loc 1 55 0
	mov.aa	%a15, %a4
.LVL23:
	mov.d	%d2, %a15
	mov.d	%d15, %a5
	or	%d15, %d2
	mov	%d2, %d15
	.loc 1 108 0
	jlt.u	%d4, 2, .L5
.LVL24:
	jnz.t	%d2, 0, .L12
	j	.L38
.LVL25:
.L13:
	mov.d	%d15, %a15
	addsc.a	%a3, %a15, %d4, 0
	not	%d15
	addsc.a	%a3, %a3, %d15, 0
.LVL26:
.L19:
	.loc 1 128 0
	ld.bu	%d15, [%a5+]1
.LVL27:
	st.b	[%a15+]1, %d15
.LVL28:
	.loc 1 130 0
	loop	%a3, .L19
.LVL29:
.L23:
	.loc 1 133 0
	ret
.LVL30:
.L22:
	.loc 1 55 0
	mov.aa	%a15, %a4
	mov	%d15, %d2
.LVL31:
	.loc 1 108 0
	jnz.t	%d2, 0, .L12
.LVL32:
	j	.L38
.LVL33:
.L37:
	ret
.LVL34:
.L7:
	sh	%d3, %d2, 1
	.loc 1 111 0
	add	%d15, %d3, -2
	sh	%d15, -1
	mov.a	%a3, %d15
	mov.aa	%a6, %a5
	mov.aa	%a4, %a15
.LVL35:
.L10:
	.loc 1 114 0
	ld.hu	%d15, [%a6+]2
.LVL36:
	st.h	[%a4+]2, %d15
.LVL37:
	.loc 1 116 0
	loop	%a3, .L10
	j	.L11
.LFE12:
	.size	rba_BswSrv_MemCopy, .-rba_BswSrv_MemCopy
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
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3e2
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\integration\\rba_BswSrv\\src\\rba_BswSrv_MemCopy.c"
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
	.uaword	0x1de
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
	.uaword	0x20a
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
	.uaword	0x246
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
	.string	"rba_BswSrv_MemCopy"
	.byte	0x1
	.byte	0x2c
	.byte	0x1
	.uaword	0x3a9
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3a9
	.uleb128 0x5
	.string	"xDest_pv"
	.byte	0x1
	.byte	0x2c
	.uaword	0x3a9
	.uaword	.LLST0
	.uleb128 0x5
	.string	"xSrc_pcv"
	.byte	0x1
	.byte	0x2c
	.uaword	0x3ab
	.uaword	.LLST1
	.uleb128 0x5
	.string	"numBytes_u32"
	.byte	0x1
	.byte	0x2c
	.uaword	0x238
	.uaword	.LLST2
	.uleb128 0x6
	.string	"xDest_pu32"
	.byte	0x1
	.byte	0x37
	.uaword	0x3b2
	.uaword	.LLST3
	.uleb128 0x6
	.string	"xSrc_pcu32"
	.byte	0x1
	.byte	0x38
	.uaword	0x3b8
	.uaword	.LLST4
	.uleb128 0x6
	.string	"xDest_pu16"
	.byte	0x1
	.byte	0x3a
	.uaword	0x3c3
	.uaword	.LLST5
	.uleb128 0x6
	.string	"xSrc_pcu16"
	.byte	0x1
	.byte	0x3b
	.uaword	0x3c9
	.uaword	.LLST6
	.uleb128 0x6
	.string	"xDest_pu8"
	.byte	0x1
	.byte	0x3c
	.uaword	0x3d4
	.uaword	.LLST7
	.uleb128 0x6
	.string	"xSrc_pcu8"
	.byte	0x1
	.byte	0x3d
	.uaword	0x3da
	.uaword	.LLST8
	.uleb128 0x6
	.string	"ctLoop_u32"
	.byte	0x1
	.byte	0x3e
	.uaword	0x238
	.uaword	.LLST9
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x8
	.byte	0x4
	.uaword	0x3b1
	.uleb128 0x9
	.uleb128 0x8
	.byte	0x4
	.uaword	0x238
	.uleb128 0x8
	.byte	0x4
	.uaword	0x3be
	.uleb128 0xa
	.uaword	0x238
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1fc
	.uleb128 0x8
	.byte	0x4
	.uaword	0x3cf
	.uleb128 0xa
	.uaword	0x1fc
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1d1
	.uleb128 0x8
	.byte	0x4
	.uaword	0x3e0
	.uleb128 0xa
	.uaword	0x1d1
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL6
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL33
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL34
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x3
	.byte	0x86
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL34
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL15
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL35
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL15
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x3
	.byte	0x86
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE12
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x8f
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x85
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x85
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
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
