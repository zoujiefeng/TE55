	.file	"rba_FeeFs1_Srv.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_SrvBinarySearchInBlockProp,"ax",@progbits
	.align 1
	.global	Fee_SrvBinarySearchInBlockProp
	.type	Fee_SrvBinarySearchInBlockProp, @function
Fee_SrvBinarySearchInBlockProp:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Srv.c"
	.loc 1 46 0
.LVL0:
	movh	%d6, hi:Fee_BlockProperties_st
	.loc 1 50 0
	mov	%d5, 57
	.loc 1 49 0
	mov	%d2, 0
	addi	%d6, %d6, lo:Fee_BlockProperties_st
.LVL1:
.L6:
	.loc 1 56 0
	sub	%d15, %d5, %d2
	sh	%d3, %d15, -31
	add	%d15, %d3
	sha	%d15, -1
	add	%d15, %d2
	extr.u	%d15, %d15, 0, 16
.LVL2:
	.loc 1 59 0
	madd	%d3, %d6, %d15, 16
	mov.a	%a15, %d3
	ld.hu	%d3, [%a15]0
	jeq	%d3, %d4, .L10
	.loc 1 72 0
	jge.u	%d4, %d3, .L4
	.loc 1 75 0
	jz	%d15, .L7
	.loc 1 78 0
	add	%d15, -1
.LVL3:
	extr.u	%d5, %d15, 0, 16
.LVL4:
	.loc 1 93 0
	jge.u	%d5, %d2, .L6
.LVL5:
.L7:
	.loc 1 83 0
	mov	%d2, 0
	.loc 1 96 0
	ret
.LVL6:
.L4:
	.loc 1 90 0
	add	%d15, 1
.LVL7:
	extr.u	%d2, %d15, 0, 16
.LVL8:
	.loc 1 93 0
	jge.u	%d5, %d2, .L6
	j	.L7
.LVL9:
.L10:
	.loc 1 62 0
	st.h	[%a4]0, %d15
.LVL10:
	.loc 1 68 0
	mov	%d2, 1
.LVL11:
	ret
.LFE24:
	.size	Fee_SrvBinarySearchInBlockProp, .-Fee_SrvBinarySearchInBlockProp
.section .text.Fee_Rb_GetSectChngCnt,"ax",@progbits
	.align 1
	.global	Fee_Rb_GetSectChngCnt
	.type	Fee_Rb_GetSectChngCnt, @function
Fee_Rb_GetSectChngCnt:
.LFB25:
	.loc 1 114 0
	.loc 1 118 0
	movh.a	%a15, hi:Fee_NumFlashBanksUsed_u8
	ld.bu	%d15, [%a15] lo:Fee_NumFlashBanksUsed_u8
	movh.a	%a15, hi:Fee_SecChngCnt_u32
	ld.w	%d3, [%a15] lo:Fee_SecChngCnt_u32
	.loc 1 121 0
	sub	%d2, %d3, %d15
	ge.u	%d15, %d3, %d15
.LVL12:
	.loc 1 130 0
	cmovn	%d2, %d15, %d15
.LVL13:
	ret
.LFE25:
	.size	Fee_Rb_GetSectChngCnt, .-Fee_Rb_GetSectChngCnt
.section .text.Fee_Rb_GetWorkingState,"ax",@progbits
	.align 1
	.global	Fee_Rb_GetWorkingState
	.type	Fee_Rb_GetWorkingState, @function
Fee_Rb_GetWorkingState:
.LFB26:
	.loc 1 143 0
	.loc 1 145 0
	movh.a	%a15, hi:Fee_Rb_WorkingState_en
	ld.bu	%d2, [%a15] lo:Fee_Rb_WorkingState_en
	ret
.LFE26:
	.size	Fee_Rb_GetWorkingState, .-Fee_Rb_GetWorkingState
.section .text.Fee_Rb_DisableBackgroundOperation,"ax",@progbits
	.align 1
	.global	Fee_Rb_DisableBackgroundOperation
	.type	Fee_Rb_DisableBackgroundOperation, @function
Fee_Rb_DisableBackgroundOperation:
.LFB27:
	.loc 1 172 0
	.loc 1 174 0
	mov	%d15, 0
	movh.a	%a15, hi:Fee_Prv_stInit_u8
	st.b	[%a15] lo:Fee_Prv_stInit_u8, %d15
	ret
.LFE27:
	.size	Fee_Rb_DisableBackgroundOperation, .-Fee_Rb_DisableBackgroundOperation
.section .text.Fee_Rb_EnableBackgroundOperation,"ax",@progbits
	.align 1
	.global	Fee_Rb_EnableBackgroundOperation
	.type	Fee_Rb_EnableBackgroundOperation, @function
Fee_Rb_EnableBackgroundOperation:
.LFB28:
	.loc 1 189 0
	.loc 1 191 0
	mov	%d15, 1
	movh.a	%a15, hi:Fee_Prv_stInit_u8
	st.b	[%a15] lo:Fee_Prv_stInit_u8, %d15
	ret
.LFE28:
	.size	Fee_Rb_EnableBackgroundOperation, .-Fee_Rb_EnableBackgroundOperation
.section .text.Fee_SrvMemSet8,"ax",@progbits
	.align 1
	.global	Fee_SrvMemSet8
	.type	Fee_SrvMemSet8, @function
Fee_SrvMemSet8:
.LFB29:
	.loc 1 208 0
.LVL14:
	.loc 1 211 0
	jz	%d5, .L17
	mov.d	%d15, %a4
	and	%d4, %d4, 255
.LVL15:
	rsub	%d15
	and	%d15, %d15, 3
	min.u	%d15, %d15, %d5
	jge.u	%d5, 7, .L45
	mov	%d15, %d5
.L19:
	.loc 1 213 0
	mov.aa	%a15, %a4
	st.b	[%a15+]1, %d4
.LVL16:
	.loc 1 211 0
	mov	%d6, 1
	jeq	%d15, 1, .L21
	.loc 1 213 0
	st.b	[%a4] 1, %d4
.LVL17:
	.loc 1 214 0
	lea	%a15, [%a4] 2
.LVL18:
	.loc 1 211 0
	mov	%d6, 2
	jeq	%d15, 2, .L21
	.loc 1 213 0
	st.b	[%a4] 2, %d4
.LVL19:
	.loc 1 214 0
	lea	%a15, [%a4] 3
.LVL20:
	.loc 1 211 0
	mov	%d6, 3
	jeq	%d15, 3, .L21
	.loc 1 213 0
	st.b	[%a4] 3, %d4
.LVL21:
	.loc 1 214 0
	lea	%a15, [%a4] 4
.LVL22:
	.loc 1 211 0
	mov	%d6, 4
	jeq	%d15, 4, .L21
	.loc 1 213 0
	st.b	[%a4] 4, %d4
.LVL23:
	.loc 1 214 0
	lea	%a15, [%a4] 5
.LVL24:
	.loc 1 211 0
	mov	%d6, 5
	jne	%d15, 6, .L21
	.loc 1 213 0
	st.b	[%a4] 5, %d4
.LVL25:
	.loc 1 214 0
	lea	%a15, [%a4] 6
.LVL26:
	.loc 1 211 0
	mov	%d6, 6
.LVL27:
.L21:
	jeq	%d5, %d15, .L17
.LVL28:
.L20:
	sub	%d0, %d5, %d15
	addi	%d3, %d0, -4
	sh	%d3, -2
	addi	%d2, %d5, -1
	addi	%d7, %d3, 1
	sub	%d2, %d15
	sh	%d7, 2
	jlt.u	%d2, 3, .L23
	mov	%d2, 0
	insert	%d2, %d2, %d4, 0, 8
	insert	%d2, %d2, %d4, 8, 8
	insert	%d2, %d2, %d4, 16, 8
	addsc.a	%a4, %a4, %d15, 0
	insert	%d2, %d2, %d4, 24, 8
	ne	%d15, %d3, -1
	cmovn	%d3, %d15, 0
.L24:
	.loc 1 213 0 discriminator 3
	st.w	[%a4+]4, %d2
	jned	%d3, 0, .L24
	addsc.a	%a15, %a15, %d7, 0
	add	%d6, %d7
	jeq	%d0, %d7, .L17
.L23:
	.loc 1 213 0 is_stmt 0
	st.b	[%a15]0, %d4
	.loc 1 211 0 is_stmt 1
	add	%d15, %d6, 1
	jge.u	%d15, %d5, .L17
	.loc 1 213 0
	st.b	[%a15] 1, %d4
	.loc 1 211 0
	add	%d6, 2
	jge.u	%d6, %d5, .L17
	.loc 1 213 0
	st.b	[%a15] 2, %d4
	ret
.L17:
	ret
.LVL29:
.L45:
	.loc 1 211 0
	mov.aa	%a15, %a4
	mov	%d6, 0
	jz	%d15, .L20
	j	.L19
.LFE29:
	.size	Fee_SrvMemSet8, .-Fee_SrvMemSet8
.section .text.Fee_SrvMemCopy8,"ax",@progbits
	.align 1
	.global	Fee_SrvMemCopy8
	.type	Fee_SrvMemCopy8, @function
Fee_SrvMemCopy8:
.LFB30:
	.loc 1 235 0
.LVL30:
	.loc 1 238 0
	jz	%d4, .L46
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
	jz	%d15, .L48
	add	%d15, %d4, -4
	sh	%d15, -2
	add	%d2, %d15, 1
	ne	%d3, %d15, -1
	sh	%d2, 2
	mov.aa	%a2, %a5
	mov.aa	%a15, %a4
	sel	%d15, %d3, %d15, 0
.LVL31:
.L49:
	.loc 1 240 0 discriminator 3
	ld.w	%d3, [%a2+]4
	st.w	[%a15+]4, %d3
	jned	%d15, 0, .L49
	addsc.a	%a4, %a4, %d2, 0
	addsc.a	%a5, %a5, %d2, 0
	jeq	%d4, %d2, .L46
.LVL32:
	.loc 1 240 0 is_stmt 0
	ld.bu	%d15, [%a5]0
	st.b	[%a4]0, %d15
.LVL33:
	.loc 1 238 0 is_stmt 1
	add	%d15, %d2, 1
	jge.u	%d15, %d4, .L46
	.loc 1 240 0
	ld.bu	%d15, [%a5] 1
	.loc 1 238 0
	add	%d2, 2
.LVL34:
	.loc 1 240 0
	st.b	[%a4] 1, %d15
.LVL35:
	.loc 1 238 0
	jge.u	%d2, %d4, .L61
	.loc 1 240 0
	ld.bu	%d15, [%a5] 2
	st.b	[%a4] 2, %d15
.LVL36:
	ret
.LVL37:
.L48:
	mov.d	%d15, %a4
	addsc.a	%a15, %a4, %d4, 0
	not	%d15
	addsc.a	%a15, %a15, %d15, 0
.LVL38:
.L54:
	ld.bu	%d15, [%a5+]1
.LVL39:
	st.b	[%a4+]1, %d15
.LVL40:
	.loc 1 242 0
	loop	%a15, .L54
.LVL41:
.L46:
	ret
.LVL42:
.L61:
	ret
.LFE30:
	.size	Fee_SrvMemCopy8, .-Fee_SrvMemCopy8
.section .text.Fee_SrvSetFifoMode,"ax",@progbits
	.align 1
	.global	Fee_SrvSetFifoMode
	.type	Fee_SrvSetFifoMode, @function
Fee_SrvSetFifoMode:
.LFB31:
	.loc 1 265 0
.LVL43:
	.loc 1 267 0
	movh.a	%a15, hi:Fee_OrderFifo_st
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:Fee_OrderFifo_st
	madd	%d2, %d15, %d5, 16
	mov.a	%a15, %d2
	st.b	[%a15] 12, %d4
	ret
.LFE31:
	.size	Fee_SrvSetFifoMode, .-Fee_SrvSetFifoMode
.section .text.Fee_SrvGetFifoMode,"ax",@progbits
	.align 1
	.global	Fee_SrvGetFifoMode
	.type	Fee_SrvGetFifoMode, @function
Fee_SrvGetFifoMode:
.LFB32:
	.loc 1 289 0
.LVL44:
	.loc 1 291 0
	movh.a	%a15, hi:Fee_OrderFifo_st
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:Fee_OrderFifo_st
	madd	%d2, %d15, %d4, 16
	mov.a	%a15, %d2
	.loc 1 292 0
	ld.bu	%d2, [%a15] 12
	ret
.LFE32:
	.size	Fee_SrvGetFifoMode, .-Fee_SrvGetFifoMode
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
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE16:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\Fee\\api\\Fee_Rb_Types.h"
	.file 4 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x9f1
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Srv.c"
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
	.uaword	0x1ce
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
	.uaword	0x1fa
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
	.uaword	0x236
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
	.uaword	0x1ce
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
	.byte	0x43
	.uaword	0x38b
	.uleb128 0x5
	.string	"FEE_RB_IDLE_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_RB_WRITE_MODE_E"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_RB_READ_MODE_E"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_RB_INVALIDATE_MODE_E"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_RB_MAINTAIN_MODE_E"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_RB_SOFT_SECTOR_REORG_MODE_E"
	.sleb128 5
	.uleb128 0x5
	.string	"FEE_RB_HARD_SECTOR_REORG_MODE_E"
	.sleb128 6
	.uleb128 0x5
	.string	"FEE_RB_SECTOR_ERASE_E"
	.sleb128 7
	.uleb128 0x5
	.string	"FEE_RB_STOPMODE_E"
	.sleb128 8
	.byte	0
	.uleb128 0x3
	.string	"Fee_Rb_WorkingStateType_ten"
	.byte	0x3
	.byte	0x4d
	.uaword	0x2a3
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x52
	.uaword	0x42d
	.uleb128 0x5
	.string	"FEE_NO_ORDER"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_READ_ORDER"
	.sleb128 1
	.uleb128 0x5
	.string	"FEE_WRITE_ORDER"
	.sleb128 2
	.uleb128 0x5
	.string	"FEE_INVALIDATE_ORDER"
	.sleb128 3
	.uleb128 0x5
	.string	"FEE_MAINTAIN_ORDER"
	.sleb128 4
	.uleb128 0x5
	.string	"FEE_FORCED_READ_ORDER"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"Fee_HlMode_ten"
	.byte	0x3
	.byte	0x59
	.uaword	0x3ae
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1c1
	.uleb128 0x6
	.byte	0x4
	.uaword	0x44f
	.uleb128 0x7
	.uaword	0x1c1
	.uleb128 0x6
	.byte	0x4
	.uaword	0x45a
	.uleb128 0x8
	.byte	0x1
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x9f
	.uaword	0x48b
	.uleb128 0x5
	.string	"FEE_NORMAL_PRIO_E"
	.sleb128 0
	.uleb128 0x5
	.string	"FEE_HIGH_PRIO_E"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Fee_HlPriority_ten"
	.byte	0x4
	.byte	0xa2
	.uaword	0x45c
	.uleb128 0x9
	.byte	0x10
	.byte	0x4
	.byte	0xb0
	.uaword	0x550
	.uleb128 0xa
	.string	"DataBufferPtr_pu8"
	.byte	0x4
	.byte	0xb2
	.uaword	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.byte	0xb3
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"BlockPropIdx_u16"
	.byte	0x4
	.byte	0xb4
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"Offset_u16"
	.byte	0x4
	.byte	0xb5
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x4
	.byte	0xb6
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"Mode_en"
	.byte	0x4
	.byte	0xb7
	.uaword	0x42d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"Prio_en"
	.byte	0x4
	.byte	0xb8
	.uaword	0x48b
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"SecLevel_u8"
	.byte	0x4
	.byte	0xb9
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.byte	0
	.uleb128 0x3
	.string	"Fee_OrderFifo_tst"
	.byte	0x4
	.byte	0xba
	.uaword	0x4a5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xc
	.byte	0x10
	.byte	0x4
	.uahalf	0x14c
	.uaword	0x60a
	.uleb128 0xd
	.string	"BlockPersistentId_u16"
	.byte	0x4
	.uahalf	0x14e
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"Flags_u16"
	.byte	0x4
	.uahalf	0x14f
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x150
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"JobEndNotification_pfn"
	.byte	0x4
	.uahalf	0x151
	.uaword	0x60a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"JobErrorNotification_pfn"
	.byte	0x4
	.uahalf	0x152
	.uaword	0x60a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.uaword	0x454
	.uleb128 0xf
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x4
	.uahalf	0x153
	.uaword	0x575
	.uleb128 0x10
	.byte	0x1
	.string	"Fee_SrvBinarySearchInBlockProp"
	.byte	0x1
	.byte	0x2d
	.byte	0x1
	.uaword	0x273
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6e5
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2d
	.uaword	0x1ec
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.string	"CacheIdx_pu16"
	.byte	0x1
	.byte	0x2d
	.uaword	0x6e5
	.byte	0x1
	.byte	0x64
	.uleb128 0x13
	.string	"xFuncRet_b"
	.byte	0x1
	.byte	0x2f
	.uaword	0x273
	.uaword	.LLST0
	.uleb128 0x13
	.string	"xMid_u16"
	.byte	0x1
	.byte	0x30
	.uaword	0x1ec
	.uaword	.LLST1
	.uleb128 0x13
	.string	"xLeft_u16"
	.byte	0x1
	.byte	0x31
	.uaword	0x1ec
	.uaword	.LLST2
	.uleb128 0x13
	.string	"xRight_u16"
	.byte	0x1
	.byte	0x32
	.uaword	0x1ec
	.uaword	.LLST3
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1ec
	.uleb128 0x10
	.byte	0x1
	.string	"Fee_Rb_GetSectChngCnt"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	0x228
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x736
	.uleb128 0x13
	.string	"xSecChngCnt_u32"
	.byte	0x1
	.byte	0x73
	.uaword	0x228
	.uaword	.LLST4
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"Fee_Rb_GetWorkingState"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uaword	0x38b
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"Fee_Rb_DisableBackgroundOperation"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"Fee_Rb_EnableBackgroundOperation"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"Fee_SrvMemSet8"
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x82f
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.byte	0xcf
	.uaword	0x443
	.uaword	.LLST5
	.uleb128 0x18
	.string	"xPattern_u32"
	.byte	0x1
	.byte	0xcf
	.uaword	0x228
	.uaword	.LLST6
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x1
	.byte	0xcf
	.uaword	0x228
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x1
	.byte	0xd1
	.uaword	0x228
	.uaword	.LLST7
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"Fee_SrvMemCopy8"
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.uaword	.LFB30
	.uaword	.LFE30
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x895
	.uleb128 0x17
	.uaword	.LASF2
	.byte	0x1
	.byte	0xea
	.uaword	0x443
	.uaword	.LLST8
	.uleb128 0x18
	.string	"xSrc_pcu8"
	.byte	0x1
	.byte	0xea
	.uaword	0x449
	.uaword	.LLST9
	.uleb128 0x11
	.uaword	.LASF3
	.byte	0x1
	.byte	0xea
	.uaword	0x228
	.byte	0x1
	.byte	0x54
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x1
	.byte	0xec
	.uaword	0x228
	.uaword	.LLST10
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Fee_SrvSetFifoMode"
	.byte	0x1
	.uahalf	0x108
	.byte	0x1
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8df
	.uleb128 0x1b
	.string	"Mode_en"
	.byte	0x1
	.uahalf	0x108
	.uaword	0x42d
	.byte	0x1
	.byte	0x54
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x108
	.uaword	0x1ec
	.byte	0x1
	.byte	0x55
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Fee_SrvGetFifoMode"
	.byte	0x1
	.uahalf	0x120
	.byte	0x1
	.uaword	0x42d
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x91b
	.uleb128 0x1c
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x120
	.uaword	0x1ec
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x1e
	.uaword	0x550
	.uaword	0x92b
	.uleb128 0x1f
	.uaword	0x569
	.byte	0x2
	.byte	0
	.uleb128 0x20
	.string	"Fee_OrderFifo_st"
	.byte	0x4
	.uahalf	0x409
	.uaword	0x91b
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"Fee_Prv_stInit_u8"
	.byte	0x4
	.uahalf	0x41a
	.uaword	0x1c1
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"Fee_NumFlashBanksUsed_u8"
	.byte	0x4
	.uahalf	0x41c
	.uaword	0x1c1
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.uaword	0x60f
	.uaword	0x995
	.uleb128 0x1f
	.uaword	0x569
	.byte	0x39
	.byte	0
	.uleb128 0x20
	.string	"Fee_BlockProperties_st"
	.byte	0x4
	.uahalf	0x464
	.uaword	0x985
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"Fee_Rb_WorkingState_en"
	.byte	0x4
	.uahalf	0x497
	.uaword	0x38b
	.byte	0x1
	.byte	0x1
	.uleb128 0x20
	.string	"Fee_SecChngCnt_u32"
	.byte	0x4
	.uahalf	0x49d
	.uaword	0x228
	.byte	0x1
	.byte	0x1
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0xc
	.uleb128 0x13
	.byte	0x1
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x12
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x15
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x34
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1b
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0x1e
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x3
	.byte	0x8
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LFE24
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x30
	.byte	0x7f
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x84
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x3
	.byte	0x84
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x3
	.byte	0x84
	.sleb128 5
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x84
	.sleb128 6
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL29
	.uaword	.LFE29
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LFE29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LFE29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x3
	.byte	0x84
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL38
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL42
	.uaword	.LFE30
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x85
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x3
	.byte	0x85
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x3
	.byte	0x85
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL42
	.uaword	.LFE30
	.uahalf	0x3
	.byte	0x85
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x72
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x3
	.byte	0x72
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LFE30
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x5c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"xDest_pu8"
.LASF0:
	.string	"FeeIdx_u16"
.LASF3:
	.string	"numBytes_u32"
.LASF1:
	.string	"Length_u16"
.LASF4:
	.string	"ctLoop_u32"
.LASF5:
	.string	"xJobType_u16"
	.extern	Fee_OrderFifo_st,STT_OBJECT,48
	.extern	Fee_Prv_stInit_u8,STT_OBJECT,1
	.extern	Fee_Rb_WorkingState_en,STT_OBJECT,1
	.extern	Fee_SecChngCnt_u32,STT_OBJECT,4
	.extern	Fee_NumFlashBanksUsed_u8,STT_OBJECT,1
	.extern	Fee_BlockProperties_st,STT_OBJECT,928
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
