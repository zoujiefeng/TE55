	.file	"MAIN_RollErrCode.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MAIN_REC_vidClrErrCode,"ax",@progbits
	.align 1
	.global	MAIN_REC_vidClrErrCode
	.type	MAIN_REC_vidClrErrCode, @function
MAIN_REC_vidClrErrCode:
.LFB0:
	.file 1 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.c"
	.loc 1 91 0
.LVL0:
	.loc 1 94 0
	mul	%d4, %d4, 12
.LVL1:
	movh.a	%a15, hi:MAIN_aktRECBufCfg
	lea	%a3, [%a15] lo:MAIN_aktRECBufCfg
	addsc.a	%a15, %a3, %d4, 0
	ld.bu	%d2, [%a15]0
	jz	%d2, .L12
	ld.a	%a15, [%a15] 4
	mov.d	%d15, %a15
	rsub	%d15
	and	%d15, %d15, 3
	min.u	%d15, %d15, %d2
	jge.u	%d2, 7, .L30
	mov	%d15, %d2
.L3:
	.loc 1 96 0
	mov	%d3, 0
	st.b	[%a15]0, %d3
.LVL2:
	.loc 1 94 0
	mov	%d5, 1
	jeq	%d15, 1, .L5
	.loc 1 96 0
	st.b	[%a15] 1, %d3
.LVL3:
	.loc 1 94 0
	mov	%d5, 2
	jeq	%d15, 2, .L5
	.loc 1 96 0
	st.b	[%a15] 2, %d3
.LVL4:
	.loc 1 94 0
	mov	%d5, 3
	jeq	%d15, 3, .L5
	.loc 1 96 0
	st.b	[%a15] 3, %d3
.LVL5:
	.loc 1 94 0
	mov	%d5, 4
	jeq	%d15, 4, .L5
	.loc 1 96 0
	st.b	[%a15] 4, %d3
.LVL6:
	.loc 1 94 0
	mov	%d5, 5
	jne	%d15, 6, .L5
	.loc 1 96 0
	st.b	[%a15] 5, %d3
.LVL7:
	.loc 1 94 0
	mov	%d5, 6
.LVL8:
.L5:
	jeq	%d2, %d15, .L12
.L4:
	sub	%d0, %d2, %d15
	and	%d0, %d0, 255
	addi	%d3, %d0, -4
	extr.u	%d3, %d3, 2, 6
	add	%d3, 1
	sh	%d6, %d3, 2
	and	%d1, %d6, 255
	addi	%d6, %d2, -1
	sub	%d6, %d15
	and	%d6, %d6, 255
	jlt.u	%d6, 3, .L7
	addsc.a	%a2, %a15, %d15, 0
	.loc 1 96 0
	mov	%d7, 0
	.loc 1 94 0
	mov	%d15, 0
.L8:
	add	%d15, 1
	.loc 1 96 0 discriminator 3
	st.w	[%a2+]4, %d7
	and	%d6, %d15, 255
	jlt.u	%d6, %d3, .L8
	add	%d5, %d1
	and	%d5, %d5, 255
	jeq	%d0, %d1, .L12
.L7:
.LVL9:
	.loc 1 96 0 is_stmt 0
	addsc.a	%a2, %a15, %d5, 0
	mov	%d15, 0
	.loc 1 94 0 is_stmt 1
	addi	%d3, %d5, 1
	.loc 1 96 0
	st.b	[%a2]0, %d15
	.loc 1 94 0
	and	%d3, %d3, 255
.LVL10:
	jge.u	%d3, %d2, .L12
	.loc 1 96 0
	addsc.a	%a2, %a15, %d3, 0
	.loc 1 94 0
	add	%d5, 2
	.loc 1 96 0
	st.b	[%a2]0, %d15
	.loc 1 94 0
	and	%d5, %d5, 255
.LVL11:
	jge.u	%d5, %d2, .L12
	.loc 1 96 0
	addsc.a	%a15, %a15, %d5, 0
	st.b	[%a15]0, %d15
.L12:
	.loc 1 99 0
	addsc.a	%a15, %a3, %d4, 0
	mov	%d15, 0
	ld.a	%a15, [%a15] 8
	st.b	[%a15]0, %d15
	.loc 1 100 0
	st.b	[%a15] 2, %d15
	ret
.LVL12:
.L30:
	.loc 1 94 0
	mov	%d5, 0
	jz	%d15, .L4
	j	.L3
.LFE0:
	.size	MAIN_REC_vidClrErrCode, .-MAIN_REC_vidClrErrCode
.section .text.MAIN_REC_vidSetErrCode,"ax",@progbits
	.align 1
	.global	MAIN_REC_vidSetErrCode
	.type	MAIN_REC_vidSetErrCode, @function
MAIN_REC_vidSetErrCode:
.LFB1:
	.loc 1 112 0
.LVL13:
	.loc 1 114 0
	jz	%d5, .L31
	.loc 1 116 0
	movh.a	%a15, hi:MAIN_aktRECBufCfg
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:MAIN_aktRECBufCfg
	madd	%d2, %d15, %d4, 12
	mov.a	%a15, %d2
	ld.a	%a2, [%a15] 8
	ld.bu	%d2, [%a15]0
	ld.bu	%d15, [%a2] 2
	jge.u	%d15, %d2, .L31
.LVL14:
	.loc 1 119 0
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 120 0
	add	%d15, 1
	.loc 1 119 0
	st.b	[%a15]0, %d5
.LVL15:
	.loc 1 120 0
	and	%d15, 255
.LVL16:
	st.b	[%a2] 2, %d15
	.loc 1 121 0
	st.b	[%a2]0, %d15
.L31:
	ret
.LFE1:
	.size	MAIN_REC_vidSetErrCode, .-MAIN_REC_vidSetErrCode
.section .text.MAIN_REC_u8RdErrCode,"ax",@progbits
	.align 1
	.global	MAIN_REC_u8RdErrCode
	.type	MAIN_REC_u8RdErrCode, @function
MAIN_REC_u8RdErrCode:
.LFB2:
	.loc 1 135 0
.LVL17:
	.loc 1 138 0
	mul	%d4, %d4, 12
.LVL18:
	movh.a	%a3, hi:MAIN_aktRECBufCfg
	lea	%a3, [%a3] lo:MAIN_aktRECBufCfg
	addsc.a	%a2, %a3, %d4, 0
	ld.a	%a15, [%a2] 8
	ld.bu	%d15, [%a15] 1
	ld.bu	%d2, [%a15]0
	jge.u	%d15, %d2, .L37
	.loc 1 139 0
	ld.bu	%d2, [%a2]0
	add	%d3, %d15, 1
	and	%d3, %d3, 255
	jlt.u	%d15, %d2, .L38
.L37:
	.loc 1 141 0
	mov	%d15, 0
	st.b	[%a15] 1, %d15
	mov	%d3, 1
	mov	%d15, 0
.L38:
	.loc 1 144 0
	addsc.a	%a3, %a3, %d4, 0
	ld.a	%a2, [%a3] 4
	addsc.a	%a2, %a2, %d15, 0
	ld.bu	%d2, [%a2]0
.LVL19:
	.loc 1 146 0
	st.b	[%a15] 1, %d3
.LVL20:
	.loc 1 149 0
	ret
.LFE2:
	.size	MAIN_REC_u8RdErrCode, .-MAIN_REC_u8RdErrCode
.section .rodata.a4.MAIN_aktRECBufCfg,"a",@progbits
	.align 2
	.type	MAIN_aktRECBufCfg, @object
	.size	MAIN_aktRECBufCfg, 60
MAIN_aktRECBufCfg:
	.byte	20
	.zero	3
	.word	MAIN_au8Mcu1RollCodeBuf
	.word	MAIN_atRECBufAttr
	.byte	20
	.zero	3
	.word	MAIN_au8Mcu2RollCodeBuf
	.word	MAIN_atRECBufAttr+4
	.byte	20
	.zero	3
	.word	MAIN_au8ACMRollCodeBuf
	.word	MAIN_atRECBufAttr+8
	.byte	20
	.zero	3
	.word	MAIN_au8EPSRollCodeBuf
	.word	MAIN_atRECBufAttr+12
	.byte	20
	.zero	3
	.word	MAIN_au8PDURollCodeBuf
	.word	MAIN_atRECBufAttr+16
.section .bss.a2.MAIN_atRECBufAttr,"aw",@nobits
	.align 1
	.type	MAIN_atRECBufAttr, @object
	.size	MAIN_atRECBufAttr, 20
MAIN_atRECBufAttr:
	.zero	20
.section .bss.a1.MAIN_au8PDURollCodeBuf,"aw",@nobits
	.type	MAIN_au8PDURollCodeBuf, @object
	.size	MAIN_au8PDURollCodeBuf, 20
MAIN_au8PDURollCodeBuf:
	.zero	20
.section .bss.a1.MAIN_au8EPSRollCodeBuf,"aw",@nobits
	.type	MAIN_au8EPSRollCodeBuf, @object
	.size	MAIN_au8EPSRollCodeBuf, 20
MAIN_au8EPSRollCodeBuf:
	.zero	20
.section .bss.a1.MAIN_au8ACMRollCodeBuf,"aw",@nobits
	.type	MAIN_au8ACMRollCodeBuf, @object
	.size	MAIN_au8ACMRollCodeBuf, 20
MAIN_au8ACMRollCodeBuf:
	.zero	20
.section .bss.a1.MAIN_au8Mcu2RollCodeBuf,"aw",@nobits
	.type	MAIN_au8Mcu2RollCodeBuf, @object
	.size	MAIN_au8Mcu2RollCodeBuf, 20
MAIN_au8Mcu2RollCodeBuf:
	.zero	20
.section .bss.a1.MAIN_au8Mcu1RollCodeBuf,"aw",@nobits
	.type	MAIN_au8Mcu1RollCodeBuf, @object
	.size	MAIN_au8Mcu1RollCodeBuf, 20
MAIN_au8Mcu1RollCodeBuf:
	.zero	20
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
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x621
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\_MainModule\\RollErrCode\\MAIN_RollErrCode.c"
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
	.uaword	0x1da
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
	.byte	0x3
	.byte	0xc
	.uaword	0x31b
	.uleb128 0x5
	.string	"eMAIN_REC_BUF_IDX_MCU1"
	.sleb128 0
	.uleb128 0x5
	.string	"eMAIN_REC_BUF_IDX_MCU2"
	.sleb128 1
	.uleb128 0x5
	.string	"eMAIN_REC_BUF_IDX_ACM"
	.sleb128 2
	.uleb128 0x5
	.string	"eMAIN_REC_BUF_IDX_EPS"
	.sleb128 3
	.uleb128 0x5
	.string	"eMAIN_REC_BUF_IDX_PDU"
	.sleb128 4
	.uleb128 0x5
	.string	"eMAIN_REC_BUF_NUM"
	.sleb128 5
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb
	.uaword	0x326
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.uaword	0x375
	.uleb128 0x8
	.string	"u8ErrorNum"
	.byte	0x1
	.byte	0xf
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u8ReadIndex"
	.byte	0x1
	.byte	0x10
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"u8WriteIndex"
	.byte	0x1
	.byte	0x11
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x1
	.byte	0xc
	.uaword	0x380
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0xc
	.byte	0x1
	.byte	0x14
	.uaword	0x3ce
	.uleb128 0x8
	.string	"u8BufSize"
	.byte	0x1
	.byte	0x15
	.uaword	0x1cd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"pau8ErrCodeBuf"
	.byte	0x1
	.byte	0x16
	.uaword	0x3ce
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"ptBufAttr"
	.byte	0x1
	.byte	0x17
	.uaword	0x3d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1cd
	.uleb128 0x9
	.byte	0x4
	.uaword	0x31b
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xa
	.byte	0x1
	.string	"MAIN_REC_vidClrErrCode"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x43e
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.byte	0x5a
	.uaword	0x43e
	.uaword	.LLST0
	.uleb128 0xc
	.string	"u8LocIdx"
	.byte	0x1
	.byte	0x5c
	.uaword	0x1cd
	.uaword	.LLST1
	.byte	0
	.uleb128 0xd
	.uaword	0x1cd
	.uleb128 0xa
	.byte	0x1
	.string	"MAIN_REC_vidSetErrCode"
	.byte	0x1
	.byte	0x6f
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4a6
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0x6f
	.uaword	0x43e
	.byte	0x1
	.byte	0x54
	.uleb128 0xf
	.string	"u8ErrCod"
	.byte	0x1
	.byte	0x6f
	.uaword	0x43e
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.string	"u8TempIndex"
	.byte	0x1
	.byte	0x71
	.uaword	0x1cd
	.uaword	.LLST2
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"MAIN_REC_u8RdErrCode"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.uaword	0x1cd
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4fb
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x1
	.byte	0x86
	.uaword	0x43e
	.uaword	.LLST3
	.uleb128 0xc
	.string	"u8LocErrCod"
	.byte	0x1
	.byte	0x88
	.uaword	0x1cd
	.uaword	.LLST4
	.byte	0
	.uleb128 0x11
	.uaword	0x1cd
	.uaword	0x50b
	.uleb128 0x12
	.uaword	0x3da
	.byte	0x13
	.byte	0
	.uleb128 0x13
	.string	"MAIN_au8Mcu1RollCodeBuf"
	.byte	0x1
	.byte	0x26
	.uaword	0x4fb
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_au8Mcu1RollCodeBuf
	.uleb128 0x13
	.string	"MAIN_au8Mcu2RollCodeBuf"
	.byte	0x1
	.byte	0x27
	.uaword	0x4fb
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_au8Mcu2RollCodeBuf
	.uleb128 0x13
	.string	"MAIN_au8ACMRollCodeBuf"
	.byte	0x1
	.byte	0x28
	.uaword	0x4fb
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_au8ACMRollCodeBuf
	.uleb128 0x13
	.string	"MAIN_au8EPSRollCodeBuf"
	.byte	0x1
	.byte	0x29
	.uaword	0x4fb
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_au8EPSRollCodeBuf
	.uleb128 0x13
	.string	"MAIN_au8PDURollCodeBuf"
	.byte	0x1
	.byte	0x2a
	.uaword	0x4fb
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_au8PDURollCodeBuf
	.uleb128 0x11
	.uaword	0x31b
	.uaword	0x5d1
	.uleb128 0x12
	.uaword	0x3da
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.string	"MAIN_atRECBufAttr"
	.byte	0x1
	.byte	0x2c
	.uaword	0x5c1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_atRECBufAttr
	.uleb128 0x11
	.uaword	0x375
	.uaword	0x600
	.uleb128 0x12
	.uaword	0x3da
	.byte	0x4
	.byte	0
	.uleb128 0x13
	.string	"MAIN_aktRECBufCfg"
	.byte	0x1
	.byte	0x31
	.uaword	0x61f
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_aktRECBufCfg
	.uleb128 0xd
	.uaword	0x5f0
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x16
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xb
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE0
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
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL12
	.uaword	.LFE0
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x82
	.sleb128 2
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL20
	.uaword	.LFE2
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"MAIN_RECBufAttr"
.LASF1:
	.string	"MAIN_RECBufCfg"
.LASF2:
	.string	"ku8BufNum"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
