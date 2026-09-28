	.file	"Com_UnpackSignal.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_Prv_UnpackSignal,"ax",@progbits
	.align 1
	.global	Com_Prv_UnpackSignal
	.type	Com_Prv_UnpackSignal, @function
Com_Prv_UnpackSignal:
.LFB149:
	.file 1 "bsw\\Com\\src\\Com_UnpackSignal.c"
	.loc 1 66 0
.LVL0:
	.loc 1 83 0
	sh	%d15, %d5, -3
.LVL1:
	.loc 1 86 0
	addsc.a	%a15, %a4, %d15, 0
	.loc 1 84 0
	and	%d5, %d5, 7
.LVL2:
	.loc 1 86 0
	ld.bu	%d2, [%a15]0
	rsub	%d0, %d5, 0
	shas	%d0, %d2, %d0
	.loc 1 88 0
	rsub	%d5, %d5, 8
.LVL3:
	.loc 1 86 0
	mov	%d2, %d0
.LVL4:
	.loc 1 88 0
	jge.u	%d6, %d5, .L2
	.loc 1 97 0
	mov	%d15, 255
.LVL5:
	sh	%d15, %d15, %d6
	not	%d15
	and	%d15, 255
	and	%d2, %d15
.LVL6:
.L3:
	.loc 1 132 0
	jz	%d7, .L9
	.loc 1 132 0 is_stmt 0 discriminator 1
	add	%d6, -1
.LVL7:
	rsub	%d15, %d6, 0
	sh	%d15, %d2, %d15
	jz	%d15, .L9
	.loc 1 134 0 is_stmt 1
	mov	%d15, -1
	sh	%d6, %d15, %d6
	or	%d2, %d6
.LVL8:
.L9:
	.loc 1 138 0
	ret
.LVL9:
.L2:
	.loc 1 101 0
	jge.u	%d5, %d6, .L3
	.loc 1 83 0
	extr.u	%d15, %d15, 0, 16
.LVL10:
	sub	%d3, %d6, %d5
	add	%d1, %d15, 1
	sh	%d8, %d3, -3
	mov	%d0, 0
.LVL11:
	extr.u	%d1, %d1, 0, 16
	mov.a	%a15, %d8
	jeq	%d4, 1, .L22
.L14:
.LVL12:
	add	%d15, %d1, %d0
	extr.u	%d15, %d15, 0, 16
.LVL13:
	loop	%a15, .L18
.LVL14:
.L5:
	.loc 1 125 0
	addsc.a	%a4, %a4, %d15, 0
.LVL15:
	rsub	%d3, %d3, 8
.LVL16:
	mov	%d4, 255
	rsub	%d0, %d3, 0
	ld.bu	%d15, [%a4]0
	sh	%d0, %d4, %d0
	and	%d15, %d0
	sh	%d5, %d15, %d5
.LVL17:
	.loc 1 124 0
	or	%d2, %d5
.LVL18:
	j	.L3
.LVL19:
.L18:
	.loc 1 117 0
	addsc.a	%a2, %a4, %d15, 0
	add	%d0, 1
.LVL20:
	ld.bu	%d15, [%a2]0
	add	%d3, -8
.LVL21:
	sh	%d15, %d15, %d5
	.loc 1 119 0
	addi	%d5, %d5, 8
.LVL22:
	.loc 1 117 0
	or	%d2, %d15
.LVL23:
	.loc 1 101 0
	jlt.u	%d5, %d6, .L14
	j	.L3
.LVL24:
.L22:
	add	%d15, -1
	extr.u	%d0, %d15, 0, 16
	.loc 1 83 0
	mov	%d4, 0
.LVL25:
.L6:
	sub	%d15, %d0, %d4
	extr.u	%d15, %d15, 0, 16
.LVL26:
	loop	%a15, .L17
	j	.L5
.L17:
	.loc 1 117 0
	addsc.a	%a2, %a4, %d15, 0
	add	%d4, 1
.LVL27:
	ld.bu	%d15, [%a2]0
	add	%d3, -8
.LVL28:
	sh	%d15, %d15, %d5
	.loc 1 119 0
	addi	%d5, %d5, 8
.LVL29:
	.loc 1 117 0
	or	%d2, %d15
.LVL30:
	.loc 1 101 0
	jlt.u	%d5, %d6, .L6
	j	.L3
.LFE149:
	.size	Com_Prv_UnpackSignal, .-Com_Prv_UnpackSignal
.section .text.Com_Prv_UnpackOpaqueSignal,"ax",@progbits
	.align 1
	.global	Com_Prv_UnpackOpaqueSignal
	.type	Com_Prv_UnpackOpaqueSignal, @function
Com_Prv_UnpackOpaqueSignal:
.LFB150:
	.loc 1 154 0
.LVL31:
	.loc 1 161 0
	sh	%d4, -3
.LVL32:
	.loc 1 158 0
	mov	%d2, 0
	.loc 1 163 0
	jz	%d5, .L24
	addsc.a	%a4, %a4, %d4, 0
.LVL33:
	mov	%d15, 0
.LVL34:
.L25:
	.loc 1 165 0
	addsc.a	%a15, %a4, %d15, 0
	sh	%d2, %d2, 8
.LVL35:
	ld.bu	%d3, [%a15]0
	add	%d15, 1
.LVL36:
	or	%d2, %d3
.LVL37:
	.loc 1 163 0
	and	%d3, %d15, 255
	jne	%d5, %d3, .L25
.LVL38:
.L24:
	.loc 1 173 0
	ret
.LFE150:
	.size	Com_Prv_UnpackOpaqueSignal, .-Com_Prv_UnpackOpaqueSignal
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
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB150
	.uaword	.LFE150-.LFB150
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4df
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_UnpackSignal.c"
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
	.uaword	0x1c9
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
	.uaword	0x1f5
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
	.uaword	0x231
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1c9
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.string	"uint8_least"
	.byte	0x2
	.byte	0x8a
	.uaword	0x29c
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint16_least"
	.byte	0x2
	.byte	0x94
	.uaword	0x29c
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x3
	.byte	0x30
	.uaword	0x1e7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"Com_Bitsize_tuo"
	.byte	0x4
	.uahalf	0x1db
	.uaword	0x1bc
	.uleb128 0x4
	.string	"Com_Bitposition_tuo"
	.byte	0x4
	.uahalf	0x1dc
	.uaword	0x1bc
	.uleb128 0x4
	.string	"Com_SigMax_tuo"
	.byte	0x4
	.uahalf	0x206
	.uaword	0x223
	.uleb128 0x5
	.uaword	0x1bc
	.uleb128 0x6
	.byte	0x4
	.uaword	0x331
	.uleb128 0x7
	.byte	0x1
	.string	"Com_Prv_UnpackSignal"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	0x31a
	.uaword	.LFB149
	.uaword	.LFE149
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x44c
	.uleb128 0x8
	.string	"endianess_u8"
	.byte	0x1
	.byte	0x3c
	.uaword	0x1bc
	.uaword	.LLST0
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3d
	.uaword	0x2fe
	.uaword	.LLST1
	.uleb128 0x8
	.string	"bitSize_uo"
	.byte	0x1
	.byte	0x3e
	.uaword	0x2e6
	.uaword	.LLST2
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x3f
	.uaword	0x336
	.uaword	.LLST3
	.uleb128 0xa
	.string	"isSigned_b"
	.byte	0x1
	.byte	0x40
	.uaword	0x26e
	.byte	0x1
	.byte	0x57
	.uleb128 0xb
	.string	"aData_uo"
	.byte	0x1
	.byte	0x4c
	.uaword	0x31a
	.uaword	.LLST4
	.uleb128 0xb
	.string	"byteNo_uo"
	.byte	0x1
	.byte	0x4d
	.uaword	0x2c5
	.uaword	.LLST5
	.uleb128 0xb
	.string	"bitsLeft_qu16"
	.byte	0x1
	.byte	0x4e
	.uaword	0x2b1
	.uaword	.LLST6
	.uleb128 0xb
	.string	"totalBitsCopied_qu16"
	.byte	0x1
	.byte	0x4f
	.uaword	0x2b1
	.uaword	.LLST7
	.uleb128 0xb
	.string	"bitOffsetInByte_qu8"
	.byte	0x1
	.byte	0x50
	.uaword	0x289
	.uaword	.LLST8
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Com_Prv_UnpackOpaqueSignal"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.uaword	0x223
	.uaword	.LFB150
	.uaword	.LFE150
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0x99
	.uaword	0x2fe
	.uaword	.LLST9
	.uleb128 0x8
	.string	"signalLength_uo"
	.byte	0x1
	.byte	0x99
	.uaword	0x2e6
	.uaword	.LLST10
	.uleb128 0x9
	.uaword	.LASF1
	.byte	0x1
	.byte	0x99
	.uaword	0x336
	.uaword	.LLST11
	.uleb128 0xb
	.string	"byteNo_qu16"
	.byte	0x1
	.byte	0x9b
	.uaword	0x2b1
	.uaword	.LLST12
	.uleb128 0xb
	.string	"aData_u32"
	.byte	0x1
	.byte	0x9c
	.uaword	0x223
	.uaword	.LLST13
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
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
	.uaword	.LFE149
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
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
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE149
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LFE149
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL11
	.uaword	.LFE149
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x6
	.byte	0x71
	.sleb128 0
	.byte	0x70
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE149
	.uahalf	0x8
	.byte	0x70
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL12
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL28
	.uaword	.LFE149
	.uahalf	0x3
	.byte	0x73
	.sleb128 8
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL9
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x75
	.sleb128 -8
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x3
	.byte	0x75
	.sleb128 -8
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LFE149
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32
	.uaword	.LFE150
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x7f
	.sleb128 -1
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33
	.uaword	.LFE150
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0xc
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x33
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0xe
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x33
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.byte	0x31
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LFB149
	.uaword	.LFE149-.LFB149
	.uaword	.LFB150
	.uaword	.LFE150-.LFB150
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB149
	.uaword	.LFE149
	.uaword	.LFB150
	.uaword	.LFE150
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"bitPos_uo"
.LASF1:
	.string	"srcBuf_pcu8"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
