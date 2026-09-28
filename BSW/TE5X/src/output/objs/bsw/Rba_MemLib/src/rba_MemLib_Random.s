	.file	"rba_MemLib_Random.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.rba_MemLib_GetRandom_u32,"ax",@progbits
	.align 1
	.global	rba_MemLib_GetRandom_u32
	.type	rba_MemLib_GetRandom_u32, @function
rba_MemLib_GetRandom_u32:
.LFB28:
	.file 1 "bsw\\Rba_MemLib\\src\\rba_MemLib_Random.c"
	.loc 1 57 0
.LVL0:
	.loc 1 60 0
	movh.a	%a3, hi:rba_MemLib_idxRandom
	ld.bu	%d5, [%a3] lo:rba_MemLib_idxRandom
	movh.a	%a15, hi:rba_MemLib_nrRandom
	.loc 1 61 0
	addi	%d2, %d5, 13
	.loc 1 60 0
	lea	%a15, [%a15] lo:rba_MemLib_nrRandom
	.loc 1 61 0
	and	%d2, %d2, 15
	.loc 1 60 0
	addsc.a	%a2, %a15, %d5, 2
	.loc 1 61 0
	addsc.a	%a4, %a15, %d2, 2
	.loc 1 63 0
	addi	%d2, %d5, 9
	and	%d2, %d2, 15
	.loc 1 60 0
	ld.w	%d6, [%a2]0
.LVL1:
	.loc 1 61 0
	ld.w	%d3, [%a4]0
.LVL2:
	.loc 1 63 0
	addsc.a	%a4, %a15, %d2, 2
	.loc 1 62 0
	sh	%d15, %d6, 16
	.loc 1 63 0
	ld.w	%d2, [%a4]0
	xor	%d15, %d6
	.loc 1 62 0
	xor	%d15, %d3
	.loc 1 64 0
	sh	%d6, %d2, -11
.LVL3:
	.loc 1 62 0
	sh	%d3, %d3, 15
.LVL4:
	.loc 1 70 0
	addi	%d5, %d5, 15
.LVL5:
	.loc 1 62 0
	xor	%d15, %d3
.LVL6:
	.loc 1 64 0
	xor	%d6, %d2
.LVL7:
	.loc 1 70 0
	and	%d5, %d5, 15
	.loc 1 65 0
	xor	%d3, %d6, %d15
.LVL8:
	.loc 1 71 0
	addsc.a	%a15, %a15, %d5, 2
	.loc 1 66 0
	st.w	[%a2]0, %d3
	.loc 1 68 0
	movh	%d7, 55876
	.loc 1 70 0
	st.b	[%a3] lo:rba_MemLib_idxRandom, %d5
	.loc 1 71 0
	ld.w	%d5, [%a15]0
	.loc 1 68 0
	sh	%d2, %d3, 5
	addi	%d7, %d7, 11556
	and	%d7, %d2
.LVL9:
	.loc 1 72 0
	sh	%d2, %d5, 2
	xor	%d2, %d5
	xor	%d2, %d15
	xor	%d2, %d3
	sh	%d15, %d15, 18
.LVL10:
	xor	%d2, %d15
	sh	%d6, %d6, 28
.LVL11:
	xor	%d2, %d6
	xor	%d2, %d7
	st.w	[%a15]0, %d2
.LVL12:
	.loc 1 78 0
	jz	%d4, .L2
.LVL13:
	.loc 1 81 0
	sh	%d2, %d2, -16
.LVL14:
	.loc 1 82 0
	mul	%d2, %d4
.LVL15:
	sh	%d2, %d2, -16
.LVL16:
.L2:
	.loc 1 86 0
	ret
.LFE28:
	.size	rba_MemLib_GetRandom_u32, .-rba_MemLib_GetRandom_u32
.section .text.rba_MemLib_SetRandomSeed,"ax",@progbits
	.align 1
	.global	rba_MemLib_SetRandomSeed
	.type	rba_MemLib_SetRandomSeed, @function
rba_MemLib_SetRandomSeed:
.LFB29:
	.loc 1 99 0
.LVL17:
	.loc 1 107 0
	movh	%d15, 4660
	addi	%d15, %d15, 22136
	sel	%d4, %d4, %d4, %d15
.LVL18:
	.loc 1 114 0
	mul	%d15, %d4, 9
.LVL19:
	.loc 1 113 0
	movh.a	%a2, hi:rba_MemLib_nrRandom
	lea	%a15, [%a2] lo:rba_MemLib_nrRandom
	st.w	[%a15] 4, %d15
	.loc 1 114 0
	mul	%d15, %d4, 81
.LVL20:
	mul	%d2, %d15, 9
.LVL21:
.LBB6:
.LBB7:
	.loc 1 60 0
	movh.a	%a4, hi:rba_MemLib_idxRandom
.LBE7:
.LBE6:
	.loc 1 113 0
	st.w	[%a15] 8, %d15
	.loc 1 114 0
	mul	%d15, %d15, 81
.LVL22:
	.loc 1 113 0
	st.w	[%a15] 12, %d2
	.loc 1 114 0
	mul	%d2, %d15, 9
.LVL23:
	.loc 1 113 0
	st.w	[%a15] 16, %d15
	.loc 1 114 0
	mul	%d15, %d15, 81
.LVL24:
	.loc 1 113 0
	st.w	[%a15] 20, %d2
	.loc 1 114 0
	mul	%d2, %d15, 9
.LVL25:
	.loc 1 113 0
	st.w	[%a15] 24, %d15
	.loc 1 114 0
	mul	%d15, %d15, 81
.LVL26:
	.loc 1 113 0
	st.w	[%a15] 28, %d2
	.loc 1 114 0
	mul	%d2, %d15, 9
.LVL27:
	.loc 1 113 0
	st.w	[%a15] 32, %d15
	.loc 1 114 0
	mul	%d15, %d15, 81
.LVL28:
	.loc 1 113 0
	st.w	[%a15] 36, %d2
	.loc 1 114 0
	mul	%d2, %d15, 9
.LVL29:
	.loc 1 113 0
	st.w	[%a15] 40, %d15
	.loc 1 114 0
	mul	%d15, %d15, 81
.LVL30:
	.loc 1 113 0
	st.w	[%a15] 44, %d2
	.loc 1 114 0
	mul	%d2, %d15, 9
.LVL31:
	.loc 1 113 0
	st.w	[%a15] 48, %d15
	.loc 1 114 0
	mul	%d15, %d15, 81
.LVL32:
	.loc 1 113 0
	st.w	[%a2] lo:rba_MemLib_nrRandom, %d4
	st.w	[%a15] 52, %d2
	st.w	[%a15] 56, %d15
.LVL33:
	.loc 1 114 0
	mul	%d15, %d15, 9
.LVL34:
	.loc 1 113 0
	st.w	[%a15] 60, %d15
.LVL35:
.LBB10:
.LBB8:
	.loc 1 60 0
	ld.bu	%d15, [%a4] lo:rba_MemLib_idxRandom
.LVL36:
	addsc.a	%a2, %a15, %d15, 2
	.loc 1 61 0
	addi	%d2, %d15, 13
	and	%d2, %d2, 15
	.loc 1 60 0
	ld.w	%d4, [%a2]0
.LVL37:
	.loc 1 61 0
	addsc.a	%a3, %a15, %d2, 2
	.loc 1 62 0
	sh	%d3, %d4, 16
	.loc 1 61 0
	ld.w	%d2, [%a3]0
.LVL38:
	xor	%d4, %d3
.LVL39:
	.loc 1 62 0
	xor	%d4, %d2
	sh	%d2, %d2, 15
.LVL40:
	xor	%d4, %d2
.LVL41:
	.loc 1 63 0
	addi	%d2, %d15, 9
	and	%d2, %d2, 15
	addsc.a	%a3, %a15, %d2, 2
.LVL42:
	.loc 1 70 0
	addi	%d15, %d15, 15
.LVL43:
	.loc 1 63 0
	ld.w	%d2, [%a3]0
.LVL44:
	.loc 1 70 0
	and	%d15, %d15, 15
	.loc 1 64 0
	sh	%d5, %d2, -11
	xor	%d5, %d2
.LVL45:
	.loc 1 65 0
	xor	%d3, %d5, %d4
.LVL46:
	.loc 1 71 0
	sh	%d6, %d15, 2
	.loc 1 66 0
	st.w	[%a2]0, %d3
.LVL47:
	.loc 1 71 0
	addsc.a	%a2, %a15, %d6, 0
	.loc 1 72 0
	sh	%d5, %d5, 28
.LVL48:
	.loc 1 71 0
	ld.w	%d7, [%a2]0
.LVL49:
	.loc 1 72 0
	sh	%d2, %d7, 2
.LVL50:
	xor	%d2, %d7
	xor	%d2, %d4
	xor	%d2, %d3
	sh	%d4, %d4, 18
.LVL51:
	xor	%d2, %d4
	xor	%d5, %d2
	.loc 1 68 0
	movh	%d2, 55876
	addi	%d2, %d2, 11556
	sh	%d3, 5
.LVL52:
	and	%d3, %d2
	.loc 1 72 0
	xor	%d2, %d5, %d3
	.loc 1 82 0
	sh	%d3, %d2, -28
.LBE8:
.LBE10:
.LBB11:
.LBB12:
	.loc 1 68 0
	rsub	%d3, %d3, -16
	not	%d3
.LBE12:
.LBE11:
.LBB14:
.LBB9:
	.loc 1 72 0
	st.w	[%a2]0, %d2
.LVL53:
.LBE9:
.LBE14:
.LBB15:
.LBB13:
	.loc 1 68 0
	movh	%d7, 55876
	mov.a	%a2, %d3
	addi	%d7, %d7, 11556
.LVL54:
.L9:
	.loc 1 61 0
	addi	%d3, %d15, 13
	and	%d3, %d3, 15
	.loc 1 62 0
	sh	%d4, %d2, 16
	.loc 1 61 0
	addsc.a	%a3, %a15, %d3, 2
	xor	%d4, %d2
	.loc 1 63 0
	addi	%d2, %d15, 9
.LVL55:
	and	%d2, %d2, 15
	.loc 1 61 0
	ld.w	%d3, [%a3]0
.LVL56:
	.loc 1 63 0
	addsc.a	%a3, %a15, %d2, 2
	.loc 1 62 0
	xor	%d4, %d3
	.loc 1 63 0
	ld.w	%d2, [%a3]0
	.loc 1 62 0
	sh	%d3, %d3, 15
.LVL57:
	.loc 1 64 0
	sh	%d5, %d2, -11
	.loc 1 70 0
	addi	%d15, %d15, 15
.LVL58:
	.loc 1 62 0
	xor	%d4, %d3
.LVL59:
	.loc 1 64 0
	xor	%d5, %d2
.LVL60:
	.loc 1 66 0
	addsc.a	%a3, %a15, %d6, 0
	.loc 1 70 0
	and	%d15, %d15, 15
	.loc 1 65 0
	xor	%d3, %d5, %d4
.LVL61:
	.loc 1 71 0
	sh	%d6, %d15, 2
	.loc 1 66 0
	st.w	[%a3]0, %d3
.LVL62:
	.loc 1 71 0
	addsc.a	%a3, %a15, %d6, 0
	.loc 1 72 0
	sh	%d5, %d5, 28
.LVL63:
	.loc 1 71 0
	ld.w	%d0, [%a3]0
.LVL64:
	.loc 1 72 0
	sh	%d2, %d0, 2
.LVL65:
	xor	%d2, %d0
	xor	%d2, %d4
	xor	%d2, %d3
	sh	%d4, %d4, 18
.LVL66:
	xor	%d2, %d4
	.loc 1 68 0
	sh	%d3, 5
.LVL67:
	xor	%d5, %d2
	and	%d3, %d7
	.loc 1 72 0
	xor	%d2, %d5, %d3
	st.w	[%a3]0, %d2
.LVL68:
.LBE13:
.LBE15:
	.loc 1 121 0
	loop	%a2, .L9
	st.b	[%a4] lo:rba_MemLib_idxRandom, %d15
	ret
.LFE29:
	.size	rba_MemLib_SetRandomSeed, .-rba_MemLib_SetRandomSeed
.section .text.rba_MemLib_IsRandomSeeded,"ax",@progbits
	.align 1
	.global	rba_MemLib_IsRandomSeeded
	.type	rba_MemLib_IsRandomSeeded, @function
rba_MemLib_IsRandomSeeded:
.LFB30:
	.loc 1 140 0
.LVL69:
	.loc 1 143 0
	movh.a	%a15, hi:rba_MemLib_nrRandom
	ld.w	%d15, [%a15] lo:rba_MemLib_nrRandom
	lea	%a2, [%a15] lo:rba_MemLib_nrRandom
	jz	%d15, .L12
	mov	%d2, 1
	ret
.L12:
	.loc 1 144 0
	ld.w	%d2, [%a2] 12
	ne	%d2, %d2, 0
.LVL70:
	.loc 1 147 0
	ret
.LFE30:
	.size	rba_MemLib_IsRandomSeeded, .-rba_MemLib_IsRandomSeeded
.section .bss.a4.rba_MemLib_nrRandom,"aw",@nobits
	.align 2
	.type	rba_MemLib_nrRandom, @object
	.size	rba_MemLib_nrRandom, 64
rba_MemLib_nrRandom:
	.zero	64
.section .bss.a1.rba_MemLib_idxRandom,"aw",@nobits
	.type	rba_MemLib_idxRandom, @object
	.size	rba_MemLib_idxRandom, 1
rba_MemLib_idxRandom:
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
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x4de
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_MemLib\\src\\rba_MemLib_Random.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x38
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
	.uaword	0x1d1
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
	.uaword	0x1fd
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
	.uaword	0x239
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
	.uaword	0x1d1
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
	.string	"rba_MemLib_GetRandom_u32"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	0x22b
	.byte	0x1
	.uaword	0x315
	.uleb128 0x5
	.string	"nrRange_u16"
	.byte	0x1
	.byte	0x38
	.uaword	0x1ef
	.uleb128 0x6
	.string	"Loc_a"
	.byte	0x1
	.byte	0x3a
	.uaword	0x22b
	.uleb128 0x6
	.string	"Loc_b"
	.byte	0x1
	.byte	0x3a
	.uaword	0x22b
	.uleb128 0x6
	.string	"Loc_c"
	.byte	0x1
	.byte	0x3a
	.uaword	0x22b
	.uleb128 0x6
	.string	"Loc_d"
	.byte	0x1
	.byte	0x3a
	.uaword	0x22b
	.byte	0
	.uleb128 0x7
	.uaword	0x2a6
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x359
	.uleb128 0x8
	.uaword	0x2cd
	.byte	0x1
	.byte	0x54
	.uleb128 0x9
	.uaword	0x2e0
	.uaword	.LLST0
	.uleb128 0x9
	.uaword	0x2ed
	.uaword	.LLST1
	.uleb128 0x9
	.uaword	0x2fa
	.uaword	.LLST2
	.uleb128 0xa
	.uaword	0x307
	.byte	0x6
	.byte	0x77
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"rba_MemLib_SetRandomSeed"
	.byte	0x1
	.byte	0x62
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x43e
	.uleb128 0xc
	.string	"nrSeed_u32"
	.byte	0x1
	.byte	0x62
	.uaword	0x22b
	.uaword	.LLST3
	.uleb128 0xd
	.string	"idx"
	.byte	0x1
	.byte	0x64
	.uaword	0x22b
	.uaword	.LLST4
	.uleb128 0x6
	.string	"Loc_a"
	.byte	0x1
	.byte	0x65
	.uaword	0x22b
	.uleb128 0xe
	.uaword	0x2a6
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x76
	.uaword	0x3fd
	.uleb128 0xf
	.uaword	0x2cd
	.byte	0x10
	.uleb128 0x10
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x9
	.uaword	0x2e0
	.uaword	.LLST5
	.uleb128 0x9
	.uaword	0x2ed
	.uaword	.LLST6
	.uleb128 0x9
	.uaword	0x2fa
	.uaword	.LLST7
	.uleb128 0x9
	.uaword	0x307
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x11
	.uaword	0x2a6
	.uaword	.LBB11
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x7b
	.uleb128 0xf
	.uaword	0x2cd
	.byte	0
	.uleb128 0x10
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x9
	.uaword	0x2e0
	.uaword	.LLST9
	.uleb128 0x9
	.uaword	0x2ed
	.uaword	.LLST10
	.uleb128 0x9
	.uaword	0x2fa
	.uaword	.LLST11
	.uleb128 0x9
	.uaword	0x307
	.uaword	.LLST12
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"rba_MemLib_IsRandomSeeded"
	.byte	0x1
	.byte	0x8b
	.byte	0x1
	.uaword	0x276
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x482
	.uleb128 0xd
	.string	"flag"
	.byte	0x1
	.byte	0x8d
	.uaword	0x276
	.uaword	.LLST13
	.byte	0
	.uleb128 0x13
	.string	"rba_MemLib_idxRandom"
	.byte	0x1
	.byte	0xf
	.uaword	0x1c4
	.byte	0x5
	.byte	0x3
	.uaword	rba_MemLib_idxRandom
	.uleb128 0x14
	.uaword	0x22b
	.uaword	0x4b4
	.uleb128 0x15
	.uaword	0x4b4
	.byte	0xf
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x13
	.string	"rba_MemLib_nrRandom"
	.byte	0x1
	.byte	0x1a
	.uaword	0x4a4
	.byte	0x5
	.byte	0x3
	.uaword	rba_MemLib_nrRandom
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL9
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL16
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x9
	.byte	0x75
	.sleb128 13
	.byte	0x3f
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x9
	.byte	0x75
	.sleb128 -2
	.byte	0x3f
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x39
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x39
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL47
	.uahalf	0x9
	.byte	0x3
	.uaword	rba_MemLib_nrRandom+60
	.byte	0x6
	.byte	0x39
	.byte	0x1e
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LFE29
	.uahalf	0x1a
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0xc
	.uaword	0x12345678
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x11
	.sleb128 -501334399
	.byte	0x1e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL39
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL49
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x9
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x34
	.byte	0x24
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL41
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x83
	.sleb128 0
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x9
	.byte	0x7f
	.sleb128 13
	.byte	0x3f
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x9
	.byte	0x7f
	.sleb128 -2
	.byte	0x3f
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL45
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3b
	.byte	0x25
	.byte	0x72
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL47
	.uaword	.LVL52
	.uahalf	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x11
	.sleb128 -633066204
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2b
	.byte	0x3
	.uaword	rba_MemLib_idxRandom
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x35
	.byte	0x24
	.byte	0x11
	.sleb128 -633066204
	.byte	0x1a
	.byte	0x3
	.uaword	rba_MemLib_idxRandom
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL61
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL64
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL68
	.uaword	.LFE29
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL59
	.uaword	.LVL66
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x9
	.byte	0x7f
	.sleb128 13
	.byte	0x3f
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x9
	.byte	0x7f
	.sleb128 -2
	.byte	0x3f
	.byte	0x1a
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x3b
	.byte	0x25
	.byte	0x72
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL62
	.uaword	.LVL67
	.uahalf	0xf
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x11
	.sleb128 -633066204
	.byte	0x1a
	.byte	0x73
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LFE30
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	0
	.uaword	0
	.uaword	.LBB11
	.uaword	.LBE11
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	0
	.uaword	0
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
