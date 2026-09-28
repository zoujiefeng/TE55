	.file	"Com_PackSignal.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_Prv_PackSignal,"ax",@progbits
	.align 1
	.global	Com_Prv_PackSignal
	.type	Com_Prv_PackSignal, @function
Com_Prv_PackSignal:
.LFB149:
	.file 1 "bsw\\Com\\src\\Com_PackSignal.c"
	.loc 1 66 0
.LVL0:
	.loc 1 84 0
	eq	%d15, %d6, 32
	jnz	%d15, .L2
	.loc 1 86 0
	mov	%d15, -1
	sh	%d15, %d15, %d6
	andn	%d7, %d7, %d15
.LVL1:
.L2:
	.loc 1 89 0
	sh	%d3, %d5, -3
.LVL2:
	.loc 1 90 0
	and	%d5, %d5, 7
.LVL3:
	.loc 1 94 0
	rsub	%d15, %d5, 8
	.loc 1 92 0
	sh	%d2, %d7, %d5
.LVL4:
	.loc 1 94 0
	jlt.u	%d6, %d15, .L3
.LVL5:
	.loc 1 107 0
	addsc.a	%a15, %a4, %d3, 0
	.loc 1 97 0
	mov	%d0, 255
	sh	%d5, %d0, %d5
.LVL6:
	.loc 1 107 0
	ld.bu	%d0, [%a15]0
	andn	%d5, %d0, %d5
	or	%d2, %d5
.LVL7:
	st.b	[%a15]0, %d2
	.loc 1 109 0
	jge.u	%d15, %d6, .L20
	.loc 1 89 0
	extr.u	%d3, %d3, 0, 16
.LVL8:
	sub	%d5, %d6, %d15
	addi	%d1, %d3, 1
	sh	%d2, %d5, -3
	mov	%d0, 0
	extr.u	%d1, %d1, 0, 16
	mov.a	%a15, %d2
	jeq	%d4, 1, .L21
.L13:
.LVL9:
	add	%d3, %d1, %d0
	.loc 1 122 0
	rsub	%d2, %d15, 0
	extr.u	%d3, %d3, 0, 16
.LVL10:
	sh	%d2, %d7, %d2
.LVL11:
	loop	%a15, .L17
.LVL12:
.L7:
	.loc 1 132 0
	addsc.a	%a4, %a4, %d3, 0
.LVL13:
	.loc 1 131 0
	mov	%d15, 255
.LVL14:
	sh	%d5, %d15, %d5
.LVL15:
	.loc 1 132 0
	ld.bu	%d15, [%a4]0
	and	%d5, %d15
	.loc 1 133 0
	or	%d2, %d5
.LVL16:
	st.b	[%a4]0, %d2
.LVL17:
	ret
.LVL18:
.L17:
	.loc 1 126 0
	addsc.a	%a2, %a4, %d3, 0
	.loc 1 127 0
	addi	%d15, %d15, 8
.LVL19:
	.loc 1 126 0
	st.b	[%a2]0, %d2
	add	%d0, 1
.LVL20:
	add	%d5, -8
.LVL21:
	.loc 1 109 0
	jlt.u	%d15, %d6, .L13
	ret
.LVL22:
.L3:
	.loc 1 103 0
	mov	%d15, 1
	.loc 1 107 0
	addsc.a	%a4, %a4, %d3, 0
.LVL23:
	.loc 1 103 0
	sh	%d15, %d15, %d6
	add	%d15, -1
	sh	%d5, %d15, %d5
.LVL24:
	.loc 1 107 0
	ld.bu	%d15, [%a4]0
	andn	%d5, %d15, %d5
	or	%d2, %d5
.LVL25:
	st.b	[%a4]0, %d2
	ret
.LVL26:
.L21:
	add	%d3, -1
	extr.u	%d0, %d3, 0, 16
	.loc 1 89 0
	mov	%d4, 0
.LVL27:
.L8:
	sub	%d3, %d0, %d4
	.loc 1 122 0
	rsub	%d2, %d15, 0
	extr.u	%d3, %d3, 0, 16
.LVL28:
	sh	%d2, %d7, %d2
.LVL29:
	loop	%a15, .L16
	j	.L7
.L16:
	.loc 1 126 0
	addsc.a	%a2, %a4, %d3, 0
	.loc 1 127 0
	addi	%d15, %d15, 8
.LVL30:
	.loc 1 126 0
	st.b	[%a2]0, %d2
	add	%d4, 1
.LVL31:
	add	%d5, -8
.LVL32:
	.loc 1 109 0
	jlt.u	%d15, %d6, .L8
	ret
.LVL33:
.L20:
	ret
.LFE149:
	.size	Com_Prv_PackSignal, .-Com_Prv_PackSignal
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
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x44a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_PackSignal.c"
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
	.uaword	0x1c7
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
	.uaword	0x1f3
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
	.uaword	0x22f
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
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x28b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint16_least"
	.byte	0x2
	.byte	0x94
	.uaword	0x28b
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x3
	.byte	0x30
	.uaword	0x1e5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1ba
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.string	"Com_Bitsize_tuo"
	.byte	0x4
	.uahalf	0x1db
	.uaword	0x1ba
	.uleb128 0x5
	.string	"Com_Bitposition_tuo"
	.byte	0x4
	.uahalf	0x1dc
	.uaword	0x1ba
	.uleb128 0x5
	.string	"Com_SigMax_tuo"
	.byte	0x4
	.uahalf	0x206
	.uaword	0x221
	.uleb128 0x6
	.byte	0x1
	.string	"Com_Prv_PackSignal"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	.LFB149
	.uaword	.LFE149
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x7
	.string	"endianess_u8"
	.byte	0x1
	.byte	0x3c
	.uaword	0x1ba
	.uaword	.LLST0
	.uleb128 0x7
	.string	"bitPos_uo"
	.byte	0x1
	.byte	0x3d
	.uaword	0x2f3
	.uaword	.LLST1
	.uleb128 0x8
	.string	"bitSize_uo"
	.byte	0x1
	.byte	0x3e
	.uaword	0x2db
	.byte	0x1
	.byte	0x56
	.uleb128 0x7
	.string	"srcBuf_uo"
	.byte	0x1
	.byte	0x3f
	.uaword	0x30f
	.uaword	.LLST2
	.uleb128 0x7
	.string	"destBuf_pu8"
	.byte	0x1
	.byte	0x40
	.uaword	0x2c9
	.uaword	.LLST3
	.uleb128 0x9
	.string	"byteNo_uo"
	.byte	0x1
	.byte	0x4c
	.uaword	0x2b4
	.uaword	.LLST4
	.uleb128 0x9
	.string	"totalBitsCopied_qu16"
	.byte	0x1
	.byte	0x4d
	.uaword	0x2a0
	.uaword	.LLST5
	.uleb128 0x9
	.string	"bitsLeft_qu16"
	.byte	0x1
	.byte	0x4e
	.uaword	0x2a0
	.uaword	.LLST6
	.uleb128 0x9
	.string	"bitOffsetInByte_qu8"
	.byte	0x1
	.byte	0x4f
	.uaword	0x278
	.uaword	.LLST7
	.uleb128 0x9
	.string	"aData_qu8"
	.byte	0x1
	.byte	0x50
	.uaword	0x278
	.uaword	.LLST8
	.uleb128 0x9
	.string	"mask_u8"
	.byte	0x1
	.byte	0x51
	.uaword	0x1ba
	.uaword	.LLST9
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
	.uaword	.LVL33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LFE149
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LFE149
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL1
	.uaword	.LFE149
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL13
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LFE149
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2
	.uaword	.LVL8
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LFE149
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL18
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL26
	.uaword	.LFE149
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL9
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x75
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL11
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0xe
	.byte	0x31
	.byte	0x76
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x24
	.byte	0x31
	.byte	0x1c
	.byte	0x75
	.sleb128 0
	.byte	0x24
	.byte	0x20
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
