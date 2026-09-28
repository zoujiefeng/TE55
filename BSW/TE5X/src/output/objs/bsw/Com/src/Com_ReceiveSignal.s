	.file	"Com_ReceiveSignal.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_ReceiveSignal,"ax",@progbits
	.align 1
	.global	Com_ReceiveSignal
	.type	Com_ReceiveSignal, @function
Com_ReceiveSignal:
.LFB162:
	.file 1 "bsw\\Com\\src\\Com_ReceiveSignal.c"
	.loc 1 61 0
.LVL0:
	.loc 1 72 0
	movh.a	%a15, hi:Com_InitStatus_en
	ld.bu	%d15, [%a15] lo:Com_InitStatus_en
	.loc 1 61 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 72 0
	jz	%d15, .L19
	.loc 1 76 0
	jz.a	%a4, .L20
.LVL1:
	.loc 1 82 0
	ge.u	%d15, %d4, 120
	jnz	%d15, .L5
.LVL2:
	.loc 1 91 0
	movh.a	%a3, hi:Com_Prv_xRxSigCfg_acst
	lea	%a3, [%a3] lo:Com_Prv_xRxSigCfg_acst
	sh	%d4, 4
.LVL3:
	addsc.a	%a15, %a3, %d4, 0
.LBB34:
.LBB35:
	.file 2 "bsw\\Com\\src\\Com_Prv_Inl.h"
	.loc 2 1023 0
	movh.a	%a2, hi:Com_RxIpduRam_ast
	mov.d	%d5, %a2
	ld.hu	%d15, [%a15] 10
	addi	%d2, %d5, lo:Com_RxIpduRam_ast
	madd	%d6, %d2, %d15, 6
.LBE35:
.LBE34:
	.loc 1 91 0
	ld.bu	%d3, [%a15] 12
.LVL4:
.LBB39:
.LBB38:
	.loc 2 1023 0
	mov.a	%a2, %d6
.LBB36:
.LBB37:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.loc 3 511 0
	ld.bu	%d2, [%a2] 4
.LBE37:
.LBE36:
.LBE38:
.LBE39:
	.loc 1 96 0
	nor.t	%d2, %d2,0, %d2,0
	seln	%d2, %d2, %d2, 128
.LVL5:
	.loc 1 99 0
	jz.t	%d3, 0, .L21
.LVL6:
.LBB40:
.LBB41:
	.loc 1 287 0
	ld.hu	%d4, [%a15] 6
.LVL7:
	.loc 1 289 0
	movh.a	%a15, hi:Com_Prv_xRxIpduCfg_acst
.LVL8:
	mov.d	%d7, %a15
	.loc 1 292 0
	and	%d3, %d3, 31
.LVL9:
	.loc 1 289 0
	addi	%d5, %d7, lo:Com_Prv_xRxIpduCfg_acst
	madd	%d6, %d5, %d15, 28
	mov.a	%a15, %d6
	ld.bu	%d15, [%a15] 25
.LVL10:
	.loc 1 292 0
	jeq	%d3, 3, .L14
	jeq	%d3, 5, .L15
	jeq	%d3, 1, .L22
.LVL11:
.L3:
.LBE41:
.LBE40:
	.loc 1 127 0
	ret
.LVL12:
.L19:
	.loc 1 74 0
	mov	%e4, 50
.LVL13:
	mov	%d6, 11
	mov	%d7, 2
	call	Det_ReportError
.LVL14:
	.loc 1 69 0
	mov	%d2, 128
	ret
.LVL15:
.L5:
	.loc 1 124 0
	mov	%e4, 50
.LVL16:
	mov	%d6, 11
	mov	%d7, 1
	call	Det_ReportError
.LVL17:
	.loc 1 69 0
	mov	%d2, 128
.LVL18:
	.loc 1 127 0
	ret
.LVL19:
.L21:
.LBB44:
.LBB45:
	.loc 1 152 0
	ld.hu	%d5, [%a15] 6
.LVL20:
	.loc 1 154 0
	movh.a	%a15, hi:Com_Prv_xRxIpduCfg_acst
.LVL21:
	mov.d	%d7, %a15
	.loc 1 157 0
	and	%d3, %d3, 31
.LVL22:
	.loc 1 154 0
	addi	%d6, %d7, lo:Com_Prv_xRxIpduCfg_acst
	madd	%d7, %d6, %d15, 28
	mov.a	%a15, %d7
	ld.bu	%d15, [%a15] 25
.LVL23:
	.loc 1 157 0
	jge.u	%d3, 9, .L3
	movh.a	%a15, hi:.L9
	lea	%a15, [%a15] lo:.L9
	addsc.a	%a15, %a15, %d3, 2
	ji	%a15
	.align 2
	.align 2
.L9:
	.code32
	j	.L8
	.code32
	j	.L3
	.code32
	j	.L10
	.code32
	j	.L3
	.code32
	j	.L11
	.code32
	j	.L3
	.code32
	j	.L12
	.code32
	j	.L3
	.code32
	j	.L13
.LVL24:
.L20:
.LBE45:
.LBE44:
	.loc 1 78 0
	mov	%e4, 50
.LVL25:
	mov	%d6, 11
	mov	%d7, 3
	call	Det_ReportError
.LVL26:
	.loc 1 69 0
	mov	%d2, 128
	ret
.LVL27:
.L22:
.LBB47:
.LBB42:
	.loc 1 300 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d7, %a15
	addi	%d3, %d7, lo:Com_Prv_xRxRamBuf_acst
	madd	%d5, %d3, %d15, 12
	mov.a	%a15, %d5
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d15, [%a15]0
	st.b	[%a4]0, %d15
	ret
.LVL28:
.L13:
.LBE42:
.LBE47:
.LBB48:
.LBB46:
	.loc 1 211 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d7, %a15
.LVL29:
	.loc 1 212 0
	addsc.a	%a3, %a3, %d4, 0
.LVL30:
	.loc 1 211 0
	addi	%d3, %d7, lo:Com_Prv_xRxRamBuf_acst
	madd	%d6, %d3, %d15, 12
.LVL31:
	ld.bu	%d4, [%a3] 8
.LVL32:
	st.w	[%SP] 4, %d2
	mov.a	%a15, %d6
	ld.a	%a5, [%a15]0
	addsc.a	%a5, %a5, %d5, 0
	call	Com_ByteCopy
.LVL33:
	ld.w	%d2, [%SP] 4
	ret
.LVL34:
.L12:
	.loc 1 201 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d4, %a15
.LVL35:
	addi	%d3, %d4, lo:Com_Prv_xRxRamBuf_acst
	madd	%d6, %d3, %d15, 12
	mov.a	%a15, %d6
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d5, 0
	ld.bu	%d15, [%a15]0
	ne	%d15, %d15, 0
	st.b	[%a4]0, %d15
	ret
.LVL36:
.L11:
	.loc 1 184 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d6, %a15
	addi	%d3, %d6, lo:Com_Prv_xRxRamBuf_acst
	madd	%d7, %d3, %d15, 12
.LVL37:
	mov.a	%a15, %d7
	ld.a	%a15, [%a15] 8
	addsc.a	%a15, %a15, %d5, 2
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
.LVL38:
	ret
.LVL39:
.L10:
	.loc 1 173 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d7, %a15
.LVL40:
	addi	%d3, %d7, lo:Com_Prv_xRxRamBuf_acst
	madd	%d4, %d3, %d15, 12
.LVL41:
	mov.a	%a15, %d4
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d5, 1
	ld.hu	%d15, [%a15]0
.LVL42:
	st.h	[%a4]0, %d15
	ret
.LVL43:
.L8:
	.loc 1 165 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d4, %a15
.LVL44:
	addi	%d3, %d4, lo:Com_Prv_xRxRamBuf_acst
	madd	%d6, %d3, %d15, 12
	mov.a	%a15, %d6
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d5, 0
	ld.bu	%d15, [%a15]0
	st.b	[%a4]0, %d15
	ret
.LVL45:
.L15:
.LBE46:
.LBE48:
.LBB49:
.LBB43:
	.loc 1 319 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d5, %a15
	addi	%d3, %d5, lo:Com_Prv_xRxRamBuf_acst
	madd	%d6, %d3, %d15, 12
.LVL46:
	mov.a	%a15, %d6
	ld.a	%a15, [%a15] 8
	addsc.a	%a15, %a15, %d4, 2
	ld.w	%d7, [%a15]0
	st.w	[%a4]0, %d7
	ret
.LVL47:
.L14:
	.loc 1 308 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d6, %a15
.LVL48:
	addi	%d3, %d6, lo:Com_Prv_xRxRamBuf_acst
	madd	%d7, %d3, %d15, 12
	mov.a	%a15, %d7
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d4, 1
	ld.h	%d15, [%a15]0
.LVL49:
	st.h	[%a4]0, %d15
	ret
.LBE43:
.LBE49:
.LFE162:
	.size	Com_ReceiveSignal, .-Com_ReceiveSignal
.section .text.Com_Prv_CopyData_Sig_UnsignedType,"ax",@progbits
	.align 1
	.global	Com_Prv_CopyData_Sig_UnsignedType
	.type	Com_Prv_CopyData_Sig_UnsignedType, @function
Com_Prv_CopyData_Sig_UnsignedType:
.LFB163:
	.loc 1 144 0
.LVL50:
	.loc 1 152 0
	movh.a	%a3, hi:Com_Prv_xRxSigCfg_acst
	lea	%a3, [%a3] lo:Com_Prv_xRxSigCfg_acst
	sh	%d4, 4
.LVL51:
	addsc.a	%a15, %a3, %d4, 0
	.loc 1 154 0
	movh.a	%a2, hi:Com_Prv_xRxIpduCfg_acst
	mov.d	%d5, %a2
	ld.hu	%d15, [%a15] 10
	addi	%d3, %d5, lo:Com_Prv_xRxIpduCfg_acst
	madd	%d5, %d3, %d15, 28
.LBB50:
.LBB51:
	.loc 3 599 0
	ld.bu	%d15, [%a15] 12
.LBE51:
.LBE50:
	.loc 1 152 0
	ld.hu	%d2, [%a15] 6
.LVL52:
	.loc 1 154 0
	mov.a	%a2, %d5
	.loc 1 157 0
	and	%d15, %d15, 31
	.loc 1 154 0
	ld.bu	%d3, [%a2] 25
.LVL53:
	.loc 1 157 0
	jge.u	%d15, 9, .L23
	movh.a	%a15, hi:.L26
.LVL54:
	lea	%a15, [%a15] lo:.L26
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L26:
	.code32
	j	.L25
	.code32
	j	.L23
	.code32
	j	.L27
	.code32
	j	.L23
	.code32
	j	.L28
	.code32
	j	.L23
	.code32
	j	.L29
	.code32
	j	.L23
	.code32
	j	.L30
.L23:
	ret
.L30:
	.loc 1 211 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d5, %a15
.LVL55:
	.loc 1 212 0
	addsc.a	%a3, %a3, %d4, 0
.LVL56:
	.loc 1 211 0
	addi	%d15, %d5, lo:Com_Prv_xRxRamBuf_acst
	madd	%d5, %d15, %d3, 12
	ld.bu	%d4, [%a3] 8
.LVL57:
	mov.a	%a15, %d5
	ld.a	%a5, [%a15]0
	addsc.a	%a5, %a5, %d2, 0
	j	Com_ByteCopy
.LVL58:
.L25:
	.loc 1 165 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d4, %a15
.LVL59:
	addi	%d15, %d4, lo:Com_Prv_xRxRamBuf_acst
	madd	%d5, %d15, %d3, 12
.LVL60:
	mov.a	%a15, %d5
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d15, [%a15]0
	st.b	[%a4]0, %d15
	.loc 1 167 0
	ret
.LVL61:
.L27:
	.loc 1 173 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d4, %a15
.LVL62:
	addi	%d15, %d4, lo:Com_Prv_xRxRamBuf_acst
	madd	%d5, %d15, %d3, 12
.LVL63:
	mov.a	%a15, %d5
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d2, 1
	ld.hu	%d15, [%a15]0
	st.h	[%a4]0, %d15
	.loc 1 178 0
	ret
.LVL64:
.L28:
	.loc 1 184 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d4, %a15
.LVL65:
	addi	%d15, %d4, lo:Com_Prv_xRxRamBuf_acst
	madd	%d5, %d15, %d3, 12
.LVL66:
	mov.a	%a15, %d5
	ld.a	%a15, [%a15] 8
	addsc.a	%a15, %a15, %d2, 2
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
	.loc 1 189 0
	ret
.LVL67:
.L29:
	.loc 1 201 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
	mov.d	%d4, %a15
.LVL68:
	addi	%d15, %d4, lo:Com_Prv_xRxRamBuf_acst
	madd	%d5, %d15, %d3, 12
.LVL69:
	mov.a	%a15, %d5
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d15, [%a15]0
	ne	%d15, %d15, 0
	st.b	[%a4]0, %d15
	.loc 1 203 0
	ret
.LFE163:
	.size	Com_Prv_CopyData_Sig_UnsignedType, .-Com_Prv_CopyData_Sig_UnsignedType
.section .text.Com_Prv_CopyData_Sig_SignedType,"ax",@progbits
	.align 1
	.global	Com_Prv_CopyData_Sig_SignedType
	.type	Com_Prv_CopyData_Sig_SignedType, @function
Com_Prv_CopyData_Sig_SignedType:
.LFB164:
	.loc 1 277 0
.LVL70:
	.loc 1 287 0
	movh.a	%a15, hi:Com_Prv_xRxSigCfg_acst
	mov.d	%d2, %a15
	.loc 1 289 0
	movh.a	%a2, hi:Com_Prv_xRxIpduCfg_acst
	.loc 1 287 0
	addi	%d15, %d2, lo:Com_Prv_xRxSigCfg_acst
	madd	%d2, %d15, %d4, 16
	.loc 1 289 0
	mov.d	%d4, %a2
.LVL71:
	.loc 1 287 0
	mov.a	%a15, %d2
	.loc 1 289 0
	addi	%d3, %d4, lo:Com_Prv_xRxIpduCfg_acst
	ld.hu	%d15, [%a15] 10
	.loc 1 287 0
	ld.hu	%d2, [%a15] 6
.LVL72:
	.loc 1 289 0
	madd	%d4, %d3, %d15, 28
.LBB52:
.LBB53:
	.loc 3 599 0
	ld.bu	%d15, [%a15] 12
.LBE53:
.LBE52:
	.loc 1 289 0
	mov.a	%a2, %d4
	.loc 1 292 0
	and	%d15, %d15, 31
	.loc 1 289 0
	ld.bu	%d3, [%a2] 25
.LVL73:
	.loc 1 292 0
	jeq	%d15, 3, .L33
	jeq	%d15, 5, .L34
	jeq	%d15, 1, .L36
	ret
.L36:
	.loc 1 300 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
.LVL74:
	mov.d	%d4, %a15
.LVL75:
	addi	%d15, %d4, lo:Com_Prv_xRxRamBuf_acst
	madd	%d4, %d15, %d3, 12
	mov.a	%a15, %d4
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d2, 0
	ld.bu	%d15, [%a15]0
	st.b	[%a4]0, %d15
	.loc 1 302 0
	ret
.LVL76:
.L34:
	.loc 1 319 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
.LVL77:
	mov.d	%d4, %a15
.LVL78:
	addi	%d15, %d4, lo:Com_Prv_xRxRamBuf_acst
	madd	%d4, %d15, %d3, 12
	mov.a	%a15, %d4
	ld.a	%a15, [%a15] 8
	addsc.a	%a15, %a15, %d2, 2
	ld.w	%d15, [%a15]0
	st.w	[%a4]0, %d15
	ret
.LVL79:
.L33:
	.loc 1 308 0
	movh.a	%a15, hi:Com_Prv_xRxRamBuf_acst
.LVL80:
	mov.d	%d4, %a15
.LVL81:
	addi	%d15, %d4, lo:Com_Prv_xRxRamBuf_acst
	madd	%d4, %d15, %d3, 12
	mov.a	%a15, %d4
	ld.a	%a15, [%a15] 4
	addsc.a	%a15, %a15, %d2, 1
	ld.h	%d15, [%a15]0
	st.h	[%a4]0, %d15
	.loc 1 313 0
	ret
.LFE164:
	.size	Com_Prv_CopyData_Sig_SignedType, .-Com_Prv_CopyData_Sig_SignedType
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
	.uaword	.LFB162
	.uaword	.LFE162-.LFB162
	.byte	0x4
	.uaword	.LCFI0-.LFB162
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB164
	.uaword	.LFE164-.LFB164
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
	.file 9 "bsw\\Com\\src\\Com_Prv_Types.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\Com\\integration\\Com_Cfg_SchM.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Variant.h"
	.file 13 "bsw\\Com\\src\\Com_Prv.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xfd9
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_ReceiveSignal.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x50
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"sint8"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1bb
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8"
	.byte	0x4
	.byte	0x51
	.uaword	0x1d7
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.string	"sint16"
	.byte	0x4
	.byte	0x56
	.uaword	0x1f6
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16"
	.byte	0x4
	.byte	0x5b
	.uaword	0x211
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"sint32"
	.byte	0x4
	.byte	0x60
	.uaword	0x235
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x4
	.byte	0x6a
	.uaword	0x25b
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x2
	.string	"boolean"
	.byte	0x4
	.byte	0x80
	.uaword	0x1d7
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.string	"Std_ReturnType"
	.byte	0x5
	.byte	0x60
	.uaword	0x1ca
	.uleb128 0x2
	.string	"PduIdType"
	.byte	0x6
	.byte	0x2c
	.uaword	0x203
	.uleb128 0x2
	.string	"PduLengthType"
	.byte	0x6
	.byte	0x30
	.uaword	0x203
	.uleb128 0x4
	.byte	0xc
	.byte	0x6
	.byte	0x39
	.uaword	0x34c
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x6
	.byte	0x3b
	.uaword	0x34c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x6
	.byte	0x3c
	.uaword	0x34c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x6
	.byte	0x3d
	.uaword	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1ca
	.uleb128 0x2
	.string	"PduInfoType"
	.byte	0x6
	.byte	0x3e
	.uaword	0x304
	.uleb128 0x2
	.string	"Com_SignalIdType"
	.byte	0x7
	.byte	0x71
	.uaword	0x203
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x1
	.byte	0x7
	.byte	0x7d
	.uaword	0x3aa
	.uleb128 0x8
	.string	"COM_UNINIT"
	.sleb128 0
	.uleb128 0x8
	.string	"COM_INIT"
	.sleb128 1
	.byte	0
	.uleb128 0x2
	.string	"Com_StatusType"
	.byte	0x7
	.byte	0x80
	.uaword	0x389
	.uleb128 0x9
	.string	"Com_RxIntSignalId_tuo"
	.byte	0x8
	.uahalf	0x1c2
	.uaword	0x1ca
	.uleb128 0x9
	.string	"Com_IpduId_tuo"
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x203
	.uleb128 0x9
	.string	"Com_Bitsize_tuo"
	.byte	0x8
	.uahalf	0x1db
	.uaword	0x1ca
	.uleb128 0x9
	.string	"Com_Bitposition_tuo"
	.byte	0x8
	.uahalf	0x1dc
	.uaword	0x1ca
	.uleb128 0x9
	.string	"Com_SigBuffIndex_tuo"
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x203
	.uleb128 0x9
	.string	"Com_MainFunc_tuo"
	.byte	0x8
	.uahalf	0x23e
	.uaword	0x1ca
	.uleb128 0xa
	.uaword	0x1ca
	.uleb128 0xb
	.byte	0x4
	.uleb128 0x6
	.byte	0x4
	.uaword	0x203
	.uleb128 0x6
	.byte	0x4
	.uaword	0x45f
	.uleb128 0x6
	.byte	0x4
	.uaword	0x478
	.uleb128 0xc
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.uaword	0x24d
	.uleb128 0x4
	.byte	0x8
	.byte	0x9
	.byte	0x4b
	.uaword	0x50a
	.uleb128 0x5
	.string	"timePeriod_u16"
	.byte	0x9
	.byte	0x4d
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"timeOffset_u16"
	.byte	0x9
	.byte	0x4e
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"repetitionPeriod_u16"
	.byte	0x9
	.byte	0x4f
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"numOfRepetitions_u8"
	.byte	0x9
	.byte	0x50
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"mode_u8"
	.byte	0x9
	.byte	0x57
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x2
	.string	"Com_TransModeInfo_tst"
	.byte	0x9
	.byte	0x5b
	.uaword	0x480
	.uleb128 0x2
	.string	"Com_TMConstPtr_tpcst"
	.byte	0x9
	.byte	0x65
	.uaword	0x543
	.uleb128 0x6
	.byte	0x4
	.uaword	0x549
	.uleb128 0xa
	.uaword	0x50a
	.uleb128 0xd
	.byte	0x10
	.byte	0x9
	.uahalf	0x103
	.uaword	0x5f4
	.uleb128 0xe
	.string	"initVal_u32"
	.byte	0x9
	.uahalf	0x116
	.uaword	0x24d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"bitPos_uo"
	.byte	0x9
	.uahalf	0x11b
	.uaword	0x40d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x9
	.uahalf	0x11c
	.uaword	0x429
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"bitSize_uo"
	.byte	0x9
	.uahalf	0x11d
	.uaword	0x3f5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"idComIPdu_uo"
	.byte	0x9
	.uahalf	0x123
	.uaword	0x3de
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"general_u8"
	.byte	0x9
	.uahalf	0x130
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"rxSignalFields_u8"
	.byte	0x9
	.uahalf	0x13a
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x9
	.string	"Com_Prv_xRxSigCfg_tst"
	.byte	0x9
	.uahalf	0x13c
	.uaword	0x54e
	.uleb128 0x9
	.string	"Com_RxSigCfg_tpcst"
	.byte	0x9
	.uahalf	0x145
	.uaword	0x62d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x633
	.uleb128 0xa
	.uaword	0x5f4
	.uleb128 0xd
	.byte	0x1c
	.byte	0x9
	.uahalf	0x410
	.uaword	0x75b
	.uleb128 0xe
	.string	"buffPtr_pau8"
	.byte	0x9
	.uahalf	0x412
	.uaword	0x34c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"callOut_pfct"
	.byte	0x9
	.uahalf	0x41d
	.uaword	0x77b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"timeoutNotification_pfct"
	.byte	0x9
	.uahalf	0x421
	.uaword	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"notification_pfct"
	.byte	0x9
	.uahalf	0x425
	.uaword	0x472
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"size_uo"
	.byte	0x9
	.uahalf	0x42c
	.uaword	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"firstTimeout_u16"
	.byte	0x9
	.uahalf	0x432
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xe
	.string	"timeout_u16"
	.byte	0x9
	.uahalf	0x433
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"numOfSig_u16"
	.byte	0x9
	.uahalf	0x435
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xe
	.string	"idRxSig_uo"
	.byte	0x9
	.uahalf	0x439
	.uaword	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"idMainFunc_uo"
	.byte	0x9
	.uahalf	0x448
	.uaword	0x446
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xe
	.string	"rxIPduFields_u8"
	.byte	0x9
	.uahalf	0x45a
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.uaword	0x298
	.uaword	0x770
	.uleb128 0x11
	.uaword	0x2de
	.uleb128 0x11
	.uaword	0x770
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x776
	.uleb128 0xa
	.uaword	0x352
	.uleb128 0x6
	.byte	0x4
	.uaword	0x75b
	.uleb128 0x9
	.string	"Com_Prv_xRxIpduInfoCfg_tst"
	.byte	0x9
	.uahalf	0x45c
	.uaword	0x638
	.uleb128 0xd
	.byte	0x10
	.byte	0x9
	.uahalf	0x524
	.uaword	0x877
	.uleb128 0xe
	.string	"currentTxModePtr_pcst"
	.byte	0x9
	.uahalf	0x526
	.uaword	0x527
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cntrMinDelayTime_u16"
	.byte	0x9
	.uahalf	0x52d
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"cntrTimePeriod_u16"
	.byte	0x9
	.uahalf	0x52e
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"cntrRepPeriod_u16"
	.byte	0x9
	.uahalf	0x532
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"txFlags_u16"
	.byte	0x9
	.uahalf	0x555
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"cntrRepetitions_u8"
	.byte	0x9
	.uahalf	0x556
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"transMode_u8"
	.byte	0x9
	.uahalf	0x562
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x9
	.string	"Com_TxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x564
	.uaword	0x7a4
	.uleb128 0xd
	.byte	0x6
	.byte	0x9
	.uahalf	0x584
	.uaword	0x8ed
	.uleb128 0xe
	.string	"rxIPduLength_uo"
	.byte	0x9
	.uahalf	0x586
	.uaword	0x2ef
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cntrRxTimeout_u16"
	.byte	0x9
	.uahalf	0x58b
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"rxFlags_u8"
	.byte	0x9
	.uahalf	0x5a6
	.uaword	0x1ca
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Com_RxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x5a8
	.uaword	0x895
	.uleb128 0xd
	.byte	0xc
	.byte	0x9
	.uahalf	0x5f5
	.uaword	0x95f
	.uleb128 0xe
	.string	"sigType_pau8"
	.byte	0x9
	.uahalf	0x5f7
	.uaword	0x34c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"sigType_pau16"
	.byte	0x9
	.uahalf	0x5fd
	.uaword	0x466
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"sigType_pau32"
	.byte	0x9
	.uahalf	0x5ff
	.uaword	0x47a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"Com_Prv_xRxRamBuf_tst"
	.byte	0x9
	.uahalf	0x634
	.uaword	0x90b
	.uleb128 0x12
	.string	"Bfx_Prv_GetBit_u8u8_u8_Inl"
	.byte	0x3
	.uahalf	0x1fd
	.byte	0x1
	.uaword	0x298
	.byte	0x3
	.uaword	0x9c2
	.uleb128 0x13
	.string	"Data"
	.byte	0x3
	.uahalf	0x1fd
	.uaword	0x1ca
	.uleb128 0x13
	.string	"BitPn"
	.byte	0x3
	.uahalf	0x1fd
	.uaword	0x1ca
	.byte	0
	.uleb128 0x12
	.string	"Bfx_Prv_GetBits_u8u8u8_u8_Inl"
	.byte	0x3
	.uahalf	0x255
	.byte	0x1
	.uaword	0x1ca
	.byte	0x3
	.uaword	0xa1d
	.uleb128 0x13
	.string	"Data"
	.byte	0x3
	.uahalf	0x255
	.uaword	0x1ca
	.uleb128 0x13
	.string	"BitStartPn"
	.byte	0x3
	.uahalf	0x255
	.uaword	0x1ca
	.uleb128 0x13
	.string	"BitLn"
	.byte	0x3
	.uahalf	0x255
	.uaword	0x1ca
	.byte	0
	.uleb128 0x14
	.string	"SchM_Enter_Com_RxSigBuff_RECEIVESIGNAL"
	.byte	0xa
	.uahalf	0x334
	.byte	0x1
	.byte	0x3
	.uleb128 0x14
	.string	"SchM_Exit_Com_RxSigBuff_RECEIVESIGNAL"
	.byte	0xa
	.uahalf	0x339
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.string	"Com_Prv_IsValidRxSignalId"
	.byte	0x2
	.uahalf	0x5bf
	.byte	0x1
	.uaword	0x298
	.byte	0x3
	.uaword	0xaab
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x5bf
	.uaword	0x365
	.byte	0
	.uleb128 0x12
	.string	"Com_Prv_CheckRxIPduStatus"
	.byte	0x2
	.uahalf	0x3fb
	.byte	0x1
	.uaword	0x298
	.byte	0x3
	.uaword	0xafd
	.uleb128 0x13
	.string	"idIpdu_uo"
	.byte	0x2
	.uahalf	0x3fb
	.uaword	0x2de
	.uleb128 0x16
	.string	"rxIPduStatus_b"
	.byte	0x2
	.uahalf	0x3fd
	.uaword	0x298
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"Com_Prv_CopyData_Sig_UnsignedType"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.byte	0x1
	.uaword	0xb6c
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.byte	0x8f
	.uaword	0x365
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8f
	.uaword	0x464
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.byte	0x92
	.uaword	0x612
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.byte	0x93
	.uaword	0x429
	.uleb128 0x19
	.uaword	.LASF4
	.byte	0x1
	.byte	0x94
	.uaword	0x446
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x1
	.byte	0x95
	.uaword	0x1ca
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"Com_Prv_CopyData_Sig_SignedType"
	.byte	0x1
	.uahalf	0x114
	.byte	0x1
	.byte	0x1
	.uaword	0xbe0
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x114
	.uaword	0x365
	.uleb128 0x15
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x114
	.uaword	0x464
	.uleb128 0x1b
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x117
	.uaword	0x612
	.uleb128 0x1b
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x118
	.uaword	0x429
	.uleb128 0x1b
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x446
	.uleb128 0x1b
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x1ca
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"Com_ReceiveSignal"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB162
	.uaword	.LFE162
	.uaword	.LLST0
	.byte	0x1
	.uaword	0xd8f
	.uleb128 0x1d
	.uaword	.LASF1
	.byte	0x1
	.byte	0x3c
	.uaword	0x365
	.uaword	.LLST1
	.uleb128 0x1d
	.uaword	.LASF2
	.byte	0x1
	.byte	0x3c
	.uaword	0x464
	.uaword	.LLST2
	.uleb128 0x19
	.uaword	.LASF3
	.byte	0x1
	.byte	0x40
	.uaword	0x612
	.uleb128 0x1e
	.string	"status_u8"
	.byte	0x1
	.byte	0x41
	.uaword	0x1ca
	.uaword	.LLST3
	.uleb128 0x19
	.uaword	.LASF5
	.byte	0x1
	.byte	0x43
	.uaword	0x1ca
	.uleb128 0x1f
	.uaword	0xaab
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5e
	.uaword	0xc98
	.uleb128 0x20
	.uaword	0xad3
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x22
	.uaword	0xae5
	.uleb128 0x23
	.uaword	0x97d
	.uaword	.LBB36
	.uaword	.LBE36
	.byte	0x2
	.uahalf	0x3ff
	.uleb128 0x24
	.uaword	0x9b3
	.uaword	.LLST4
	.uleb128 0x20
	.uaword	0x9a6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0xb6c
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x6b
	.uaword	0xcdc
	.uleb128 0x24
	.uaword	0xba3
	.uaword	.LLST5
	.uleb128 0x20
	.uaword	0xb97
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x22
	.uaword	0xbaf
	.uleb128 0x25
	.uaword	0xbbb
	.uaword	.LLST6
	.uleb128 0x25
	.uaword	0xbc7
	.uaword	.LLST7
	.uleb128 0x22
	.uaword	0xbd3
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0xafd
	.uaword	.LBB44
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x66
	.uaword	0xd29
	.uleb128 0x24
	.uaword	0xb34
	.uaword	.LLST8
	.uleb128 0x20
	.uaword	0xb29
	.uleb128 0x21
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x22
	.uaword	0xb3f
	.uleb128 0x25
	.uaword	0xb4a
	.uaword	.LLST9
	.uleb128 0x25
	.uaword	0xb55
	.uaword	.LLST10
	.uleb128 0x22
	.uaword	0xb60
	.uleb128 0x26
	.uaword	.LVL33
	.uaword	0xf85
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	.LVL14
	.uaword	0xfad
	.uaword	0xd4c
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x27
	.uaword	.LVL17
	.uaword	0xfad
	.uaword	0xd6f
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x29
	.uaword	.LVL26
	.uaword	0xfad
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3b
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0xafd
	.uaword	.LFB163
	.uaword	.LFE163
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe02
	.uleb128 0x24
	.uaword	0xb29
	.uaword	.LLST11
	.uleb128 0x24
	.uaword	0xb34
	.uaword	.LLST12
	.uleb128 0x22
	.uaword	0xb3f
	.uleb128 0x25
	.uaword	0xb4a
	.uaword	.LLST13
	.uleb128 0x25
	.uaword	0xb55
	.uaword	.LLST14
	.uleb128 0x22
	.uaword	0xb60
	.uleb128 0x2b
	.uaword	0x9c2
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.byte	0x99
	.uaword	0xdf7
	.uleb128 0x2c
	.uaword	0xa0e
	.byte	0x5
	.uleb128 0x2c
	.uaword	0x9fb
	.byte	0
	.uleb128 0x20
	.uaword	0x9ee
	.byte	0
	.uleb128 0x2d
	.uaword	.LVL58
	.byte	0x1
	.uaword	0xf85
	.byte	0
	.uleb128 0x2a
	.uaword	0xb6c
	.uaword	.LFB164
	.uaword	.LFE164
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe66
	.uleb128 0x24
	.uaword	0xb97
	.uaword	.LLST15
	.uleb128 0x2e
	.uaword	0xba3
	.byte	0x1
	.byte	0x64
	.uleb128 0x22
	.uaword	0xbaf
	.uleb128 0x25
	.uaword	0xbbb
	.uaword	.LLST16
	.uleb128 0x25
	.uaword	0xbc7
	.uaword	.LLST17
	.uleb128 0x22
	.uaword	0xbd3
	.uleb128 0x23
	.uaword	0x9c2
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.uahalf	0x120
	.uleb128 0x2c
	.uaword	0xa0e
	.byte	0x5
	.uleb128 0x2c
	.uaword	0x9fb
	.byte	0
	.uleb128 0x20
	.uaword	0x9ee
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0x8ed
	.uaword	0xe71
	.uleb128 0x30
	.byte	0
	.uleb128 0x31
	.string	"Com_RxIpduRam_ast"
	.byte	0xb
	.byte	0x6b
	.uaword	0xe66
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x877
	.uaword	0xe97
	.uleb128 0x30
	.byte	0
	.uleb128 0x31
	.string	"Com_TxIpduRam_ast"
	.byte	0xb
	.byte	0x6e
	.uaword	0xe8c
	.byte	0x1
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x95f
	.uaword	0xebd
	.uleb128 0x30
	.byte	0
	.uleb128 0x32
	.string	"Com_Prv_xRxRamBuf_acst"
	.byte	0xb
	.uahalf	0x9f4
	.uaword	0xede
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xeb2
	.uleb128 0x2f
	.uaword	0x5f4
	.uaword	0xeee
	.uleb128 0x30
	.byte	0
	.uleb128 0x31
	.string	"Com_Prv_xRxSigCfg_acst"
	.byte	0xc
	.byte	0x6a
	.uaword	0xf0e
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xee3
	.uleb128 0x2f
	.uaword	0x781
	.uaword	0xf1e
	.uleb128 0x30
	.byte	0
	.uleb128 0x31
	.string	"Com_Prv_xRxIpduCfg_acst"
	.byte	0xc
	.byte	0x70
	.uaword	0xf3f
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xf13
	.uleb128 0x32
	.string	"Com_InitStatus_en"
	.byte	0xd
	.uahalf	0xec7
	.uaword	0x3aa
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"Com_NONE_TransModeInfo_cst"
	.byte	0xd
	.uahalf	0xf12
	.uaword	0x549
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.byte	0x1
	.string	"Com_ByteCopy"
	.byte	0xd
	.uahalf	0xcd7
	.byte	0x1
	.byte	0x1
	.uaword	0xfad
	.uleb128 0x11
	.uaword	0x34c
	.uleb128 0x11
	.uaword	0x46c
	.uleb128 0x11
	.uaword	0x24d
	.byte	0
	.uleb128 0x34
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xe
	.byte	0x70
	.byte	0x1
	.uaword	0x2c8
	.byte	0x1
	.uleb128 0x11
	.uaword	0x203
	.uleb128 0x11
	.uaword	0x1ca
	.uleb128 0x11
	.uaword	0x1ca
	.uleb128 0x11
	.uaword	0x1ca
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB162
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE162
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14-1
	.uaword	.LVL15
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17-1
	.uaword	.LVL19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL26-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL26-1
	.uaword	.LVL27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33-1
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x9
	.byte	0x80
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE162
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL45
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x76
	.sleb128 25
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x76
	.sleb128 25
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x76
	.sleb128 25
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x76
	.sleb128 25
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL28
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33-1
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL36
	.uaword	.LVL41
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x77
	.sleb128 25
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x77
	.sleb128 25
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x14
	.byte	0x83
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x19
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL34
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x77
	.sleb128 25
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x77
	.sleb128 25
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x14
	.byte	0x83
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0xa
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x76
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x19
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x77
	.sleb128 25
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51
	.uaword	.LFE163
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL50
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL58-1
	.uaword	.LVL58
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LFE163
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	.LVL54
	.uaword	.LVL56
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL57
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL62
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x7
	.byte	0x83
	.sleb128 0
	.byte	0x74
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x6
	.uaword	.LVL68
	.uaword	.LFE163
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x75
	.sleb128 25
	.uaword	.LVL55
	.uaword	.LVL58-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 25
	.uaword	.LVL58
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x75
	.sleb128 25
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x82
	.sleb128 25
	.uaword	.LVL61
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x75
	.sleb128 25
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x82
	.sleb128 25
	.uaword	.LVL64
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x75
	.sleb128 25
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x82
	.sleb128 25
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x75
	.sleb128 25
	.uaword	.LVL69
	.uaword	.LFE163
	.uahalf	0x2
	.byte	0x82
	.sleb128 25
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL71
	.uaword	.LFE164
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL72
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	.LVL74
	.uaword	.LVL76
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	.LVL77
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	.LVL80
	.uaword	.LFE164
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL73
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x74
	.sleb128 25
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x2
	.byte	0x82
	.sleb128 25
	.uaword	.LVL76
	.uaword	.LVL78
	.uahalf	0x2
	.byte	0x74
	.sleb128 25
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x82
	.sleb128 25
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x74
	.sleb128 25
	.uaword	.LVL81
	.uaword	.LFE164
	.uahalf	0x2
	.byte	0x82
	.sleb128 25
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
	.uaword	.LFB162
	.uaword	.LFE162-.LFB162
	.uaword	.LFB163
	.uaword	.LFE163-.LFB163
	.uaword	.LFB164
	.uaword	.LFE164-.LFB164
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	0
	.uaword	0
	.uaword	.LFB162
	.uaword	.LFE162
	.uaword	.LFB163
	.uaword	.LFE163
	.uaword	.LFB164
	.uaword	.LFE164
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"idxSigBuff_uo"
.LASF3:
	.string	"rxSigConstPtr_pcst"
.LASF2:
	.string	"signalDataPtr_pv"
.LASF4:
	.string	"idRxMainFunc_uo"
.LASF1:
	.string	"idSignal_u16"
.LASF5:
	.string	"sigType_u8"
	.extern	Com_ByteCopy,STT_FUNC,0
	.extern	Com_Prv_xRxRamBuf_acst,STT_OBJECT,-1
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Com_Prv_xRxIpduCfg_acst,STT_OBJECT,-1
	.extern	Com_RxIpduRam_ast,STT_OBJECT,-1
	.extern	Com_Prv_xRxSigCfg_acst,STT_OBJECT,-1
	.extern	Com_InitStatus_en,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
