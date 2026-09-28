	.file	"rba_FeeFs1_Cbk.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Fee_SwitchJobEndNotification,"ax",@progbits
	.align 1
	.global	Fee_SwitchJobEndNotification
	.type	Fee_SwitchJobEndNotification, @function
Fee_SwitchJobEndNotification:
.LFB24:
	.file 1 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Cbk.c"
	.loc 1 72 0
	.loc 1 74 0
	movh.a	%a15, hi:Fee_RdWrOrder_st
	lea	%a15, [%a15] lo:Fee_RdWrOrder_st
	ld.bu	%d15, [%a15] 53
	jeq	%d15, 4, .L42
	.loc 1 84 0
	jeq	%d15, 2, .L43
	.loc 1 91 0
	ne	%d15, %d15, 8
	jz	%d15, .L44
.L5:
	.loc 1 98 0
	ld.bu	%d15, [%a15] 54
	jeq	%d15, 2, .L45
.L6:
	.loc 1 114 0
	ld.bu	%d15, [%a15] 52
	jeq	%d15, 2, .L46
.L7:
	.loc 1 121 0
	jeq	%d15, 5, .L47
	.loc 1 128 0
	ne	%d15, %d15, 8
	jnz	%d15, .L8
	.loc 1 131 0
	mov	%d15, 9
	st.b	[%a15] 52, %d15
.L8:
	.loc 1 204 0
	ld.bu	%d15, [%a15] 45
	jeq	%d15, 3, .L48
.L10:
	.loc 1 211 0
	jeq	%d15, 5, .L49
	.loc 1 218 0
	ne	%d2, %d15, 8
	jnz	%d2, .L13
.L14:
	.loc 1 221 0
	mov	%d15, 14
	st.b	[%a15] 45, %d15
.L11:
	.loc 1 235 0
	ld.bu	%d15, [%a15] 44
	jeq	%d15, 2, .L50
.L15:
	.loc 1 243 0
	ld.bu	%d15, [%a15] 49
	jeq	%d15, 2, .L51
.L16:
	.loc 1 258 0
	jeq	%d15, 5, .L52
.L18:
	.loc 1 274 0
	ld.bu	%d15, [%a15] 51
	jeq	%d15, 7, .L53
.L20:
	.loc 1 282 0
	jne	%d15, 6, .L21
	.loc 1 285 0
	mov	%d15, 5
	st.b	[%a15] 51, %d15
.L21:
	.loc 1 290 0
	movh.a	%a2, hi:Fee_LLEraseOrder_st
	ld.bu	%d15, [%a2] lo:Fee_LLEraseOrder_st
	jeq	%d15, 4, .L54
.L22:
	.loc 1 309 0
	movh.a	%a2, hi:Fee_LLWrEraseStartFlag_st
	ld.bu	%d15, [%a2] lo:Fee_LLWrEraseStartFlag_st
	jeq	%d15, 2, .L55
.L23:
	.loc 1 316 0
	jne	%d15, 5, .L24
	.loc 1 319 0
	mov	%d15, 7
	st.b	[%a2] lo:Fee_LLWrEraseStartFlag_st, %d15
.L24:
	.loc 1 323 0
	ld.bu	%d15, [%a15] 50
	jeq	%d15, 3, .L56
.L25:
	.loc 1 330 0
	ld.bu	%d15, [%a15] 42
	jeq	%d15, 2, .L57
.L26:
	.loc 1 350 0
	jeq	%d15, 5, .L58
	.loc 1 358 0
	ne	%d2, %d15, 11
	jnz	%d2, .L31
	.loc 1 361 0
	mov	%d15, 13
	st.b	[%a15] 42, %d15
.L36:
	.loc 1 478 0
	ld.bu	%d15, [%a15] 41
	jeq	%d15, 1, .L59
	ret
.L59:
	.loc 1 480 0
	mov	%d15, 2
	st.b	[%a15] 41, %d15
	ret
.L47:
	.loc 1 124 0
	mov	%d15, 7
	st.b	[%a15] 52, %d15
	.loc 1 204 0
	ld.bu	%d15, [%a15] 45
	jne	%d15, 3, .L10
.L48:
	.loc 1 207 0
	mov	%d15, 4
	st.b	[%a15] 45, %d15
	.loc 1 235 0
	ld.bu	%d15, [%a15] 44
	jne	%d15, 2, .L15
.L50:
	.loc 1 238 0
	mov	%d15, 3
	st.b	[%a15] 44, %d15
	.loc 1 243 0
	ld.bu	%d15, [%a15] 49
	jne	%d15, 2, .L16
.L51:
	.loc 1 248 0
	movh.a	%a2, hi:Fee_GlobInfoWrBlock_st
	lea	%a2, [%a2] lo:Fee_GlobInfoWrBlock_st
	ld.bu	%d15, [%a2] 6
	ne	%d15, %d15, 255
	jz	%d15, .L60
.L17:
	.loc 1 255 0
	mov	%d15, 3
	st.b	[%a15] 49, %d15
	.loc 1 274 0
	ld.bu	%d15, [%a15] 51
	jne	%d15, 7, .L20
.L53:
	.loc 1 277 0
	mov	%d15, 3
	.loc 1 290 0
	movh.a	%a2, hi:Fee_LLEraseOrder_st
	.loc 1 277 0
	st.b	[%a15] 51, %d15
	.loc 1 290 0
	ld.bu	%d15, [%a2] lo:Fee_LLEraseOrder_st
	jne	%d15, 4, .L22
.L54:
	.loc 1 304 0
	mov	%d15, 5
	st.b	[%a2] lo:Fee_LLEraseOrder_st, %d15
	.loc 1 309 0
	movh.a	%a2, hi:Fee_LLWrEraseStartFlag_st
	ld.bu	%d15, [%a2] lo:Fee_LLWrEraseStartFlag_st
	jne	%d15, 2, .L23
.L55:
	.loc 1 312 0
	mov	%d15, 4
	st.b	[%a2] lo:Fee_LLWrEraseStartFlag_st, %d15
	.loc 1 323 0
	ld.bu	%d15, [%a15] 50
	jne	%d15, 3, .L25
.L56:
	.loc 1 326 0
	mov	%d15, 5
	st.b	[%a15] 50, %d15
	.loc 1 330 0
	ld.bu	%d15, [%a15] 42
	jne	%d15, 2, .L26
.L57:
	.loc 1 335 0
	ld.w	%d15, [%a15] 28
	jnz	%d15, .L40
	.loc 1 338 0
	mov	%d15, 4
	st.b	[%a15] 42, %d15
	j	.L36
.L44:
	.loc 1 94 0
	mov	%d15, 9
	st.b	[%a15] 53, %d15
	.loc 1 98 0
	ld.bu	%d15, [%a15] 54
	jne	%d15, 2, .L6
.L45:
	.loc 1 101 0
	mov	%d15, 4
	st.b	[%a15] 54, %d15
	.loc 1 114 0
	ld.bu	%d15, [%a15] 52
	jne	%d15, 2, .L7
.L46:
	.loc 1 117 0
	mov	%d15, 4
	st.b	[%a15] 52, %d15
	j	.L8
.L31:
	.loc 1 367 0
	ne	%d2, %d15, 17
	jnz	%d2, .L33
	.loc 1 370 0
	mov	%d15, 19
	st.b	[%a15] 42, %d15
	j	.L36
.L58:
	.loc 1 353 0
	mov	%d15, 7
	st.b	[%a15] 42, %d15
	j	.L36
.L49:
	.loc 1 214 0
	mov	%d15, 7
	st.b	[%a15] 45, %d15
	j	.L11
.L43:
	.loc 1 87 0
	mov	%d15, 1
	st.b	[%a15] 53, %d15
	j	.L5
.L40:
	.loc 1 381 0
	mov	%d15, 10
	st.b	[%a15] 42, %d15
	j	.L36
.L52:
	.loc 1 263 0
	movh.a	%a2, hi:Fee_GlobInfoWrBlock_st
	lea	%a2, [%a2] lo:Fee_GlobInfoWrBlock_st
	ld.bu	%d15, [%a2] 6
	ne	%d15, %d15, 255
	jz	%d15, .L61
.L19:
	.loc 1 270 0
	mov	%d15, 6
	st.b	[%a15] 49, %d15
	j	.L18
.L60:
	.loc 1 251 0
	st.b	[%a2] 6, %d15
	j	.L17
.L61:
	.loc 1 266 0
	st.b	[%a2] 6, %d15
	j	.L19
.L42:
	.loc 1 77 0
	mov	%d15, 6
	st.b	[%a15] 53, %d15
	ret
.L33:
	.loc 1 374 0
	ne	%d2, %d15, 8
	jnz	%d2, .L30
	.loc 1 378 0
	movh.a	%a2, hi:Fee_LLSecReorgStruct_st
	lea	%a2, [%a2] lo:Fee_LLSecReorgStruct_st
	ld.hu	%d15, [%a2] 6
	jnz	%d15, .L40
	.loc 1 386 0
	mov	%d15, 22
	st.b	[%a15] 42, %d15
	.loc 1 388 0
	mov	%d15, 1
	st.b	[%a2] 9, %d15
	j	.L36
.L30:
	.loc 1 394 0
	ne	%d2, %d15, 14
	jnz	%d2, .L32
	.loc 1 398 0
	mov	%d15, 22
	st.b	[%a15] 42, %d15
	j	.L36
.L32:
	.loc 1 403 0
	ne	%d15, %d15, 20
	jnz	%d15, .L36
	.loc 1 407 0
	mov	%d15, 1
	st.b	[%a15] 42, %d15
	j	.L36
.L13:
	.loc 1 226 0
	eq	%d15, %d15, 16
	jnz	%d15, .L14
	j	.L11
.LFE24:
	.size	Fee_SwitchJobEndNotification, .-Fee_SwitchJobEndNotification
.section .text.Fee_SwitchJobErrorNotification,"ax",@progbits
	.align 1
	.global	Fee_SwitchJobErrorNotification
	.type	Fee_SwitchJobErrorNotification, @function
Fee_SwitchJobErrorNotification:
.LFB25:
	.loc 1 534 0
	.loc 1 536 0
	movh.a	%a15, hi:Fee_RdWrOrder_st
	lea	%a15, [%a15] lo:Fee_RdWrOrder_st
	ld.bu	%d15, [%a15] 53
	jeq	%d15, 4, .L95
	.loc 1 543 0
	jeq	%d15, 2, .L96
	.loc 1 550 0
	ne	%d15, %d15, 8
	jnz	%d15, .L64
	.loc 1 553 0
	mov	%d15, 10
	st.b	[%a15] 53, %d15
.L64:
	.loc 1 566 0
	ld.bu	%d15, [%a15] 54
	jeq	%d15, 2, .L97
.L66:
	.loc 1 573 0
	ld.bu	%d15, [%a15] 52
	jeq	%d15, 2, .L98
.L67:
	.loc 1 580 0
	jeq	%d15, 5, .L70
	.loc 1 587 0
	eq	%d15, %d15, 8
	jz	%d15, .L68
.L70:
	.loc 1 583 0
	mov	%d15, 6
	st.b	[%a15] 52, %d15
.L68:
	.loc 1 653 0
	ld.bu	%d15, [%a15] 45
	jeq	%d15, 5, .L99
.L71:
	.loc 1 661 0
	ld.bu	%d15, [%a15] 44
	jeq	%d15, 2, .L100
.L72:
	.loc 1 669 0
	ld.bu	%d15, [%a15] 49
	jeq	%d15, 2, .L101
.L73:
	.loc 1 679 0
	jne	%d15, 5, .L74
	.loc 1 682 0
	movh.a	%a2, hi:Fee_GlobInfoWrBlock_st
	mov	%d15, 1
	lea	%a2, [%a2] lo:Fee_GlobInfoWrBlock_st
	st.b	[%a2] 6, %d15
	.loc 1 685 0
	mov	%d15, 6
	st.b	[%a15] 49, %d15
.L74:
	.loc 1 697 0
	ld.bu	%d15, [%a15] 51
	add	%d15, -6
	and	%d15, 255
	jge.u	%d15, 2, .L90
	.loc 1 692 0
	mov	%d15, 8
	st.b	[%a15] 51, %d15
.L90:
	.loc 1 705 0
	movh.a	%a2, hi:Fee_LLEraseOrder_st
	ld.bu	%d15, [%a2] lo:Fee_LLEraseOrder_st
	jeq	%d15, 4, .L102
.L75:
	.loc 1 724 0
	movh.a	%a2, hi:Fee_LLWrEraseStartFlag_st
	ld.bu	%d15, [%a2] lo:Fee_LLWrEraseStartFlag_st
	jeq	%d15, 2, .L103
	.loc 1 731 0
	jne	%d15, 5, .L77
	.loc 1 734 0
	mov	%d15, 6
	st.b	[%a2] lo:Fee_LLWrEraseStartFlag_st, %d15
.L77:
	.loc 1 738 0
	ld.bu	%d15, [%a15] 50
	jeq	%d15, 3, .L104
.L78:
	.loc 1 745 0
	ld.bu	%d15, [%a15] 42
	jeq	%d15, 2, .L105
	.loc 1 754 0
	jeq	%d15, 5, .L106
	.loc 1 763 0
	ne	%d2, %d15, 11
	jnz	%d2, .L83
	.loc 1 766 0
	mov	%d15, 12
	st.b	[%a15] 42, %d15
.L85:
	.loc 1 846 0
	ld.bu	%d3, [%a15] 45
	addi	%d2, %d3, -8
	and	%d2, %d2, 247
	eq	%d15, %d2, 0
	or.eq	%d15, %d3, 3
	jz	%d15, .L87
	.loc 1 849 0
	mov	%d15, 9
	st.b	[%a15] 45, %d15
.L87:
	.loc 1 881 0
	ld.bu	%d15, [%a15] 41
	jeq	%d15, 1, .L107
	.loc 1 898 0
	j	Fee_SwitchJobEndNotification
.LVL0:
.L107:
	.loc 1 883 0
	mov	%d15, 3
	st.b	[%a15] 41, %d15
	.loc 1 898 0
	j	Fee_SwitchJobEndNotification
.LVL1:
.L96:
	.loc 1 546 0
	mov	%d15, 3
	st.b	[%a15] 53, %d15
	.loc 1 566 0
	ld.bu	%d15, [%a15] 54
	jne	%d15, 2, .L66
.L97:
	.loc 1 569 0
	mov	%d15, 3
	st.b	[%a15] 54, %d15
	.loc 1 573 0
	ld.bu	%d15, [%a15] 52
	jne	%d15, 2, .L67
.L98:
	.loc 1 576 0
	mov	%d15, 3
	st.b	[%a15] 52, %d15
	.loc 1 653 0
	ld.bu	%d15, [%a15] 45
	jne	%d15, 5, .L71
.L99:
	.loc 1 656 0
	mov	%d15, 6
	st.b	[%a15] 45, %d15
	.loc 1 661 0
	ld.bu	%d15, [%a15] 44
	jne	%d15, 2, .L72
.L100:
	.loc 1 664 0
	mov	%d15, 8
	st.b	[%a15] 44, %d15
	.loc 1 669 0
	ld.bu	%d15, [%a15] 49
	jne	%d15, 2, .L73
.L101:
	.loc 1 672 0
	movh.a	%a2, hi:Fee_GlobInfoWrBlock_st
	mov	%d15, 1
	lea	%a2, [%a2] lo:Fee_GlobInfoWrBlock_st
	st.b	[%a2] 6, %d15
	.loc 1 675 0
	mov	%d15, 3
	st.b	[%a15] 49, %d15
	j	.L74
.L95:
	.loc 1 539 0
	mov	%d15, 5
	st.b	[%a15] 53, %d15
	j	.L64
.L106:
	.loc 1 757 0
	mov	%d15, 6
	st.b	[%a15] 42, %d15
	j	.L85
.L105:
	.loc 1 748 0
	mov	%d15, 3
	st.b	[%a15] 42, %d15
	j	.L85
.L104:
	.loc 1 741 0
	mov	%d15, 4
	st.b	[%a15] 50, %d15
	j	.L78
.L103:
	.loc 1 727 0
	mov	%d15, 3
	st.b	[%a2] lo:Fee_LLWrEraseStartFlag_st, %d15
	j	.L77
.L102:
	.loc 1 719 0
	mov	%d15, 6
	st.b	[%a2] lo:Fee_LLEraseOrder_st, %d15
	j	.L75
.L83:
	.loc 1 771 0
	ne	%d2, %d15, 17
	jnz	%d2, .L80
	.loc 1 774 0
	mov	%d15, 18
	st.b	[%a15] 42, %d15
	j	.L85
.L80:
	.loc 1 778 0
	ne	%d2, %d15, 8
	jnz	%d2, .L82
	.loc 1 782 0
	mov	%d15, 9
	st.b	[%a15] 42, %d15
	j	.L85
.L82:
	.loc 1 787 0
	ne	%d2, %d15, 14
	jnz	%d2, .L84
	.loc 1 791 0
	mov	%d15, 15
	st.b	[%a15] 42, %d15
	j	.L85
.L84:
	.loc 1 796 0
	ne	%d15, %d15, 20
	jnz	%d15, .L85
	.loc 1 800 0
	mov	%d15, 21
	st.b	[%a15] 42, %d15
	j	.L85
.LFE25:
	.size	Fee_SwitchJobErrorNotification, .-Fee_SwitchJobErrorNotification
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1e85
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Cbk.c"
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
	.uaword	0x29a
	.uleb128 0x5
	.byte	0x1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x6
	.byte	0x10
	.byte	0x3
	.uahalf	0x14c
	.uaword	0x344
	.uleb128 0x7
	.string	"BlockPersistentId_u16"
	.byte	0x3
	.uahalf	0x14e
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"Flags_u16"
	.byte	0x3
	.uahalf	0x14f
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"Length_u16"
	.byte	0x3
	.uahalf	0x150
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"JobEndNotification_pfn"
	.byte	0x3
	.uahalf	0x151
	.uaword	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"JobErrorNotification_pfn"
	.byte	0x3
	.uahalf	0x152
	.uaword	0x344
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.uaword	0x294
	.uleb128 0x9
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x3
	.uahalf	0x153
	.uaword	0x2a8
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x15f
	.uaword	0x49e
	.uleb128 0xb
	.string	"FEE_LL_MARKER_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_MARKER_BLK_CHK_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_LL_MARKER_BLK_CHK_WAIT_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_LL_MARKER_BLK_CHK_ERROR_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_LL_MARKER_BLK_CHK_FINISHED_E"
	.sleb128 4
	.uleb128 0xb
	.string	"FEE_LL_MARKER_WRITE_WAIT_E"
	.sleb128 5
	.uleb128 0xb
	.string	"FEE_LL_MARKER_WRITE_ERROR_E"
	.sleb128 6
	.uleb128 0xb
	.string	"FEE_LL_MARKER_VERIFY_E"
	.sleb128 7
	.uleb128 0xb
	.string	"FEE_LL_MARKER_VERIFY_WAIT_E"
	.sleb128 8
	.uleb128 0xb
	.string	"FEE_LL_MARKER_VERIFY_FINISHED_E"
	.sleb128 9
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLWrMarkerType_ten"
	.byte	0x3
	.uahalf	0x16a
	.uaword	0x36d
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x16e
	.uaword	0x5a1
	.uleb128 0xb
	.string	"FEE_HL_RDWR_BLK_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_HL_SEARCH_BLK_HDR_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_HL_READ_BLK_HDR_WAIT_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_HL_CHECK_BLK_HDR_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_HL_CALC_BLK_CS_E"
	.sleb128 4
	.uleb128 0xb
	.string	"FEE_HL_CHECK_BLK_CS_E"
	.sleb128 5
	.uleb128 0xb
	.string	"FEE_HL_RD_DATA_FROM_BLK_E"
	.sleb128 6
	.uleb128 0xb
	.string	"FEE_HL_COMP_BLK_E"
	.sleb128 7
	.uleb128 0xb
	.string	"FEE_HL_WR_BLK_E"
	.sleb128 8
	.byte	0
	.uleb128 0x9
	.string	"Fee_HLRdWrBlockType_ten"
	.byte	0x3
	.uahalf	0x17f
	.uaword	0x4bd
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x183
	.uaword	0x7bc
	.uleb128 0xb
	.string	"FEE_LL_WR_BLK_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_WR_WRITEHEADER_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_LL_WR_SIZECHECK_HSR_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_LL_WR_WRITEHEADER_WAIT_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_LL_WR_VERIFYHEADER_E"
	.sleb128 4
	.uleb128 0xb
	.string	"FEE_LL_WR_VERIFYHEADER_WAIT_E"
	.sleb128 5
	.uleb128 0xb
	.string	"FEE_LL_WR_VERIFYHEADER_ERROR_E"
	.sleb128 6
	.uleb128 0xb
	.string	"FEE_LL_WR_WRITEDATA_SEC_A_E"
	.sleb128 7
	.uleb128 0xb
	.string	"FEE_LL_WR_WAIT_WRITEDATA_SEC_A_E"
	.sleb128 8
	.uleb128 0xb
	.string	"FEE_LL_WR_WRITE_ERROR_E"
	.sleb128 9
	.uleb128 0xb
	.string	"FEE_LL_WR_WRITE_FULL_MARKER_E"
	.sleb128 10
	.uleb128 0xb
	.string	"FEE_LL_WR_ERASE_SECTOR_E"
	.sleb128 11
	.uleb128 0xb
	.string	"FEE_LL_WR_WRITE_USED_MARKER_E"
	.sleb128 12
	.uleb128 0xb
	.string	"FEE_LL_WR_WRITE_START_MARKER_E"
	.sleb128 13
	.uleb128 0xb
	.string	"FEE_LL_WR_VERIFY_BLK_E"
	.sleb128 14
	.uleb128 0xb
	.string	"FEE_LL_WR_WRITEHDRPG2_E"
	.sleb128 15
	.uleb128 0xb
	.string	"FEE_LL_WR_WAIT_WRITEHDRPG2_E"
	.sleb128 16
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLWrBlockType_ten"
	.byte	0x3
	.uahalf	0x1ae
	.uaword	0x5c1
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x1b2
	.uaword	0x89b
	.uleb128 0xb
	.string	"FEE_LL_CMP_BLK_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_CMP_HEADER_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_LL_CMP_WAIT_HEADER_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_LL_CMP_CHECK_OVERLAP_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_LL_CMP_DATA_SEC_A_E"
	.sleb128 4
	.uleb128 0xb
	.string	"FEE_LL_CMP_WAIT_DATA_SEC_A_E"
	.sleb128 5
	.uleb128 0xb
	.string	"FEE_LL_CMP_FINISHED_E"
	.sleb128 6
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLCmpBlkType_ten"
	.byte	0x3
	.uahalf	0x1ba
	.uaword	0x7da
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x1be
	.uaword	0x96b
	.uleb128 0xb
	.string	"FEE_LL_CPY_BLK_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_CPY_BLOCK_DATA_FROM_HDR_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_LL_CPY_BLOCK_START_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_LL_CPY_BLOCK_WAIT_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_LL_CPY_BLOCK_ERROR_E"
	.sleb128 4
	.uleb128 0xb
	.string	"FEE_LL_CPY_BLOCK_FINISHED_E"
	.sleb128 5
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLCpyBlkType_ten"
	.byte	0x3
	.uahalf	0x1c5
	.uaword	0x8b8
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x1c9
	.uaword	0xa88
	.uleb128 0xb
	.string	"FEE_LL_CRC_BLK_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_CRC_RD_HD_PAGE_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_LL_CRC_RD_PAGE_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_LL_CRC_CHECK_OVERLAP_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_LL_CRC_RD_ROB_PAGE_E"
	.sleb128 4
	.uleb128 0xb
	.string	"FEE_LL_CRC_CHECK_OVERLAP_ROB_E"
	.sleb128 5
	.uleb128 0xb
	.string	"FEE_LL_CRC_RD_ROB_PAGE_WAIT_E"
	.sleb128 6
	.uleb128 0xb
	.string	"FEE_LL_CRC_RD_PAGE_WAIT_E"
	.sleb128 7
	.uleb128 0xb
	.string	"FEE_LL_CRC_RD_ERROR_E"
	.sleb128 8
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLCalcCrcBlkType_ten"
	.byte	0x3
	.uahalf	0x1d5
	.uaword	0x988
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x1d9
	.uaword	0xbfa
	.uleb128 0xb
	.string	"FEE_LL_INIT_READ_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_BLANK_CHECK_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_LL_BLANK_CHECK_WAIT_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_LL_READ_PAGE_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_LL_WAIT_READ_PAGE_E"
	.sleb128 4
	.uleb128 0xb
	.string	"FEE_LL_READ_ERROR_E"
	.sleb128 5
	.uleb128 0xb
	.string	"FEE_LL_READ_FINISHED_E"
	.sleb128 6
	.uleb128 0xb
	.string	"FEE_LL_BLANK_CHECK_ERASE_START_FLAG_E"
	.sleb128 7
	.uleb128 0xb
	.string	"FEE_LL_BLANK_CHECK_ERASE_START_FLAG_WAIT_E"
	.sleb128 8
	.uleb128 0xb
	.string	"FEE_LL_ERASE_START_FLAG_NOT_PRESENT_E"
	.sleb128 9
	.uleb128 0xb
	.string	"FEE_LL_ERASE_START_FLAG_PRESENT_E"
	.sleb128 10
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLRdStateType_ten"
	.byte	0x3
	.uahalf	0x1f3
	.uaword	0xaa9
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x1f7
	.uaword	0xcbe
	.uleb128 0xb
	.string	"FEE_LL_INIT_BLANK_CHECK_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_PERFORM_BLANK_CHECK_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_LL_WAIT_PERFORM_BLANK_CHECK_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_LL_BLANK_CHECK_ERROR_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_LL_BLANK_CHECK_FINISHED_E"
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLBlankCheckType_ten"
	.byte	0x3
	.uahalf	0x1fd
	.uaword	0xc18
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x201
	.uaword	0xd38
	.uleb128 0xb
	.string	"FEE_LL_FIND_CURRENT_SECTOR_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_FIND_LAST_HEADER_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_LL_FINISHED_E"
	.sleb128 2
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLFndEmptyPgeType_ten"
	.byte	0x3
	.uahalf	0x20d
	.uaword	0xcdf
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x211
	.uaword	0xd9e
	.uleb128 0xb
	.string	"FEE_LL_SEARCHBLK_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_SEARCHBLK_BLK_HEADER_E"
	.sleb128 1
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLSearchBlkHdrType_ten"
	.byte	0x3
	.uahalf	0x214
	.uaword	0xd5a
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x219
	.uaword	0xe05
	.uleb128 0xb
	.string	"FEE_LL_BLD_UP_CACHE_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_BLD_UP_CACHE_READ_E"
	.sleb128 1
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLBuildUpCache_ten"
	.byte	0x3
	.uahalf	0x21c
	.uaword	0xdc1
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x220
	.uaword	0xe78
	.uleb128 0xb
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_BLD_UP_CACHE_ALL_SECT_DO_E"
	.sleb128 1
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLBuildUpCacheAllSect_ten"
	.byte	0x3
	.uahalf	0x223
	.uaword	0xe24
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x23d
	.uaword	0xf75
	.uleb128 0xb
	.string	"FEE_LL_REORG_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_REORG_PREP_SEARCH_BLK_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_LL_REORG_SEARCH_BLK_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_LL_REORG_CHECK_BLOCK_CS_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_LL_REORG_REDUNDANT_BLK_CHK_E"
	.sleb128 4
	.uleb128 0xb
	.string	"FEE_LL_REORG_WRITE_BLOCK_E"
	.sleb128 5
	.uleb128 0xb
	.string	"FEE_LL_REORG_FINISHED_E"
	.sleb128 6
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLSecReorgType_ten"
	.byte	0x3
	.uahalf	0x255
	.uaword	0xe9e
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x259
	.uaword	0x10b8
	.uleb128 0xb
	.string	"FEE_LL_REDUNDANT_CPY_CHK_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_WAIT_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_SUC_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_LL_REDUNDANT_CPY_CHK_FLS_READ_ERR_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_INIT_E"
	.sleb128 4
	.uleb128 0xb
	.string	"FEE_LL_REDUNDANT_CPY_CHK_SEARCH_HDR_E"
	.sleb128 5
	.uleb128 0xb
	.string	"FEE_LL_REDUNDANT_CPY_CHK_BLK_CS_E"
	.sleb128 6
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLRedundantCpyChk_ten"
	.byte	0x3
	.uahalf	0x265
	.uaword	0xf94
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x269
	.uaword	0x14d2
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_READ_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_READ_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_READ_ERROR_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG1_WRITE_E"
	.sleb128 4
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_HDRPG1_WRITE_E"
	.sleb128 5
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG1_WRITE_ERROR_E"
	.sleb128 6
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG1_VERIFY_E"
	.sleb128 7
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_HDRPG1_VERIFY_E"
	.sleb128 8
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG1_VERIFY_ERROR_E"
	.sleb128 9
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_E"
	.sleb128 10
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_WRITE_E"
	.sleb128 11
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_ERROR_E"
	.sleb128 12
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_VERIFY_E"
	.sleb128 13
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_VERIFY_E"
	.sleb128 14
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_VERIFY_ERROR_E"
	.sleb128 15
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG2_WRITE_E"
	.sleb128 16
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_HDRPG2_WRITE_E"
	.sleb128 17
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG2_WRITE_ERROR_E"
	.sleb128 18
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG2_VERIFY_E"
	.sleb128 19
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_WAIT_HDRPG2_VERIFY_E"
	.sleb128 20
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_HDRPG2_VERIFY_ERROR_E"
	.sleb128 21
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_CHECK_ADR_OVERFLOW_E"
	.sleb128 22
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_FULL_MARKER_E"
	.sleb128 23
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_ERASE_SECTOR_E"
	.sleb128 24
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_USED_MARKER_E"
	.sleb128 25
	.uleb128 0xb
	.string	"FEE_LL_CPY_FLS2FLS_WRITE_START_MARKER_E"
	.sleb128 26
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLCpyBlkFls2Fls_ten"
	.byte	0x3
	.uahalf	0x2a3
	.uaword	0x10da
	.uleb128 0x6
	.byte	0x3c
	.byte	0x3
	.uahalf	0x2c1
	.uaword	0x186d
	.uleb128 0x7
	.string	"xRdAddress"
	.byte	0x3
	.uahalf	0x2c3
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"xWrAddress"
	.byte	0x3
	.uahalf	0x2c4
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"xCmpAddress"
	.byte	0x3
	.uahalf	0x2c5
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"xCrcAddress"
	.byte	0x3
	.uahalf	0x2c6
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"xCpyAddress"
	.byte	0x3
	.uahalf	0x2c7
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"AdrHdSearchStart_u32"
	.byte	0x3
	.uahalf	0x2c8
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"xStartAddrNextSector_u32"
	.byte	0x3
	.uahalf	0x2c9
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"xHdPg2Address"
	.byte	0x3
	.uahalf	0x2cd
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"LastProgrammedAddress_u32"
	.byte	0x3
	.uahalf	0x2d1
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"LastValidHdrAddress_u32"
	.byte	0x3
	.uahalf	0x2d2
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x7
	.string	"Fee_LLSecReorg_en"
	.byte	0x3
	.uahalf	0x2d5
	.uaword	0xf75
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"Fee_LLRedundantCpyChk_en"
	.byte	0x3
	.uahalf	0x2d6
	.uaword	0x10b8
	.byte	0x2
	.byte	0x23
	.uleb128 0x29
	.uleb128 0x7
	.string	"Fee_LLCpyBlkFls2Fls_en"
	.byte	0x3
	.uahalf	0x2d7
	.uaword	0x14d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0x7
	.string	"Fee_HLWrBlock_en"
	.byte	0x3
	.uahalf	0x2dd
	.uaword	0x5a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2b
	.uleb128 0x7
	.string	"Fee_HLMtBlock_en"
	.byte	0x3
	.uahalf	0x2e0
	.uaword	0x5a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x7
	.string	"Fee_LLWrBlock_en"
	.byte	0x3
	.uahalf	0x2e3
	.uaword	0x7bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x7
	.string	"Fee_HLRdBlock"
	.byte	0x3
	.uahalf	0x2e4
	.uaword	0x5a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2e
	.uleb128 0x7
	.string	"Fee_LLNextUsedWrBlock_en"
	.byte	0x3
	.uahalf	0x2e5
	.uaword	0x7bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x2f
	.uleb128 0x7
	.string	"Fee_LLNextEraseWrBlock_en"
	.byte	0x3
	.uahalf	0x2e6
	.uaword	0x7bc
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x7
	.string	"Fee_LLCompBlk"
	.byte	0x3
	.uahalf	0x2e7
	.uaword	0x89b
	.byte	0x2
	.byte	0x23
	.uleb128 0x31
	.uleb128 0x7
	.string	"Fee_LLCopyBlk_en"
	.byte	0x3
	.uahalf	0x2e8
	.uaword	0x96b
	.byte	0x2
	.byte	0x23
	.uleb128 0x32
	.uleb128 0x7
	.string	"Fee_LLCalcCrcBlk_en"
	.byte	0x3
	.uahalf	0x2e9
	.uaword	0xa88
	.byte	0x2
	.byte	0x23
	.uleb128 0x33
	.uleb128 0x7
	.string	"Fee_LLWrMarker_en"
	.byte	0x3
	.uahalf	0x2ea
	.uaword	0x49e
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x7
	.string	"Fee_LLRdState_en"
	.byte	0x3
	.uahalf	0x2eb
	.uaword	0xbfa
	.byte	0x2
	.byte	0x23
	.uleb128 0x35
	.uleb128 0x7
	.string	"Fee_LLBlankCheckState_en"
	.byte	0x3
	.uahalf	0x2ec
	.uaword	0xcbe
	.byte	0x2
	.byte	0x23
	.uleb128 0x36
	.uleb128 0x7
	.string	"Fee_LLFindEmptyPageState_en"
	.byte	0x3
	.uahalf	0x2ed
	.uaword	0xd38
	.byte	0x2
	.byte	0x23
	.uleb128 0x37
	.uleb128 0x7
	.string	"Fee_LLSearchBlkHdr_en"
	.byte	0x3
	.uahalf	0x2ee
	.uaword	0xd9e
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x7
	.string	"Fee_LLBuildUpCache_en"
	.byte	0x3
	.uahalf	0x2fb
	.uaword	0xe05
	.byte	0x2
	.byte	0x23
	.uleb128 0x39
	.uleb128 0x7
	.string	"Fee_LLBuildUpCacheAllSect_en"
	.byte	0x3
	.uahalf	0x2fc
	.uaword	0xe78
	.byte	0x2
	.byte	0x23
	.uleb128 0x3a
	.byte	0
	.uleb128 0x9
	.string	"Fee_RdWrOrder_tst"
	.byte	0x3
	.uahalf	0x2fe
	.uaword	0x14f2
	.uleb128 0x6
	.byte	0xa
	.byte	0x3
	.uahalf	0x30d
	.uaword	0x193d
	.uleb128 0x7
	.string	"BytesAlrdyConsid_u16"
	.byte	0x3
	.uahalf	0x30f
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BytesAlrdyCompared_u16"
	.byte	0x3
	.uahalf	0x310
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x7
	.string	"Bytes2Read_u16"
	.byte	0x3
	.uahalf	0x311
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"CompareResult_u8"
	.byte	0x3
	.uahalf	0x312
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"cntWriteRetry_u8"
	.byte	0x3
	.uahalf	0x313
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x7
	.string	"cntCopies_u8"
	.byte	0x3
	.uahalf	0x314
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"Fee_GlobInfoWrBlock_tst"
	.byte	0x3
	.uahalf	0x315
	.uaword	0x1887
	.uleb128 0x6
	.byte	0xc
	.byte	0x3
	.uahalf	0x318
	.uaword	0x19ff
	.uleb128 0x7
	.string	"xRdAddress_u32"
	.byte	0x3
	.uahalf	0x31a
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"xNumBytesAlrdyCopied_u16"
	.byte	0x3
	.uahalf	0x31b
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"xNumBytesLeftToRdWr_u16"
	.byte	0x3
	.uahalf	0x31c
	.uaword	0x1ec
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"xCntCopies_u8"
	.byte	0x3
	.uahalf	0x31d
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"xFirstDataPgPgm_u8"
	.byte	0x3
	.uahalf	0x31f
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLSecReorgStruct_tst"
	.byte	0x3
	.uahalf	0x321
	.uaword	0x195d
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x325
	.uaword	0x1ae3
	.uleb128 0xb
	.string	"FEE_ERASESEC_IDLE_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_ERASESEC_CHECK_CACHE_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_ERASESEC_WRITE_ERASESTARTFLAG_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_ERASESEC_START_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_ERASESEC_DO_E"
	.sleb128 4
	.uleb128 0xb
	.string	"FEE_ERASESEC_WRITE_MARKER_E"
	.sleb128 5
	.uleb128 0xb
	.string	"FEE_ERASESEC_ERROR_E"
	.sleb128 6
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLEraseStateType_ten"
	.byte	0x3
	.uahalf	0x32d
	.uaword	0x1a20
	.uleb128 0x6
	.byte	0x2
	.byte	0x3
	.uahalf	0x330
	.uaword	0x1b43
	.uleb128 0x7
	.string	"EraseState_en"
	.byte	0x3
	.uahalf	0x332
	.uaword	0x1ae3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"xPhySectorIdx_u8"
	.byte	0x3
	.uahalf	0x333
	.uaword	0x1c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLEraseOrderType_tst"
	.byte	0x3
	.uahalf	0x334
	.uaword	0x1b04
	.uleb128 0xa
	.byte	0x1
	.byte	0x3
	.uahalf	0x338
	.uaword	0x1ca7
	.uleb128 0xb
	.string	"FEE_LLWR_ERASESTARTFLAG_INIT_E"
	.sleb128 0
	.uleb128 0xb
	.string	"FEE_LLWR_ERASESTARTFLAG_BLK_CHK_E"
	.sleb128 1
	.uleb128 0xb
	.string	"FEE_LLWR_ERASESTARTFLAG_BLK_CHK_WAIT_E"
	.sleb128 2
	.uleb128 0xb
	.string	"FEE_LLWR_ERASESTARTFLAG_ALREADY_PROGRAMMED_E"
	.sleb128 3
	.uleb128 0xb
	.string	"FEE_LLWR_ERASESTARTFLAG_WRITE_E"
	.sleb128 4
	.uleb128 0xb
	.string	"FEE_LLWR_ERASESTARTFLAG_WRITE_WAIT_E"
	.sleb128 5
	.uleb128 0xb
	.string	"FEE_LLWR_ERASESTARTFLAG_WRITE_ERROR_E"
	.sleb128 6
	.uleb128 0xb
	.string	"FEE_LLWR_ERASESTARTFLAG_WRITE_FINISHED_E"
	.sleb128 7
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLWrEraseStartFlagStateType_ten"
	.byte	0x3
	.uahalf	0x341
	.uaword	0x1b64
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.uahalf	0x344
	.uaword	0x1d13
	.uleb128 0x7
	.string	"state_en"
	.byte	0x3
	.uahalf	0x346
	.uaword	0x1ca7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"eraseStartFlagAddr_u32"
	.byte	0x3
	.uahalf	0x347
	.uaword	0x228
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Fee_LLWrEraseStartFlagOrderType_tst"
	.byte	0x3
	.uahalf	0x348
	.uaword	0x1cd3
	.uleb128 0xc
	.byte	0x1
	.string	"Fee_SwitchJobEndNotification"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xd
	.byte	0x1
	.string	"Fee_SwitchJobErrorNotification"
	.byte	0x1
	.uahalf	0x214
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1db7
	.uleb128 0xe
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x1d3f
	.uleb128 0xe
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x1d3f
	.byte	0
	.uleb128 0xf
	.string	"Fee_RdWrOrder_st"
	.byte	0x3
	.uahalf	0x405
	.uaword	0x186d
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Fee_LLEraseOrder_st"
	.byte	0x3
	.uahalf	0x407
	.uaword	0x1b43
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Fee_LLWrEraseStartFlag_st"
	.byte	0x3
	.uahalf	0x408
	.uaword	0x1d13
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Fee_GlobInfoWrBlock_st"
	.byte	0x3
	.uahalf	0x40b
	.uaword	0x193d
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"Fee_LLSecReorgStruct_st"
	.byte	0x3
	.uahalf	0x40c
	.uaword	0x19ff
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.uaword	0x349
	.uaword	0x1e67
	.uleb128 0x11
	.uaword	0x29c
	.byte	0x39
	.byte	0
	.uleb128 0xf
	.string	"Fee_BlockProperties_st"
	.byte	0x3
	.uahalf	0x464
	.uaword	0x1e57
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4
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
	.uleb128 0xb
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Fee_LLSecReorgStruct_st,STT_OBJECT,12
	.extern	Fee_GlobInfoWrBlock_st,STT_OBJECT,10
	.extern	Fee_LLWrEraseStartFlag_st,STT_OBJECT,8
	.extern	Fee_LLEraseOrder_st,STT_OBJECT,2
	.extern	Fee_RdWrOrder_st,STT_OBJECT,60
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
