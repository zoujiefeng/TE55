	.file	"Com_IpduGroupStart.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_IpduGroupControl,"ax",@progbits
	.align 1
	.global	Com_IpduGroupControl
	.type	Com_IpduGroupControl, @function
Com_IpduGroupControl:
.LFB162:
	.file 1 "bsw\\Com\\src\\Com_IpduGroupStart.c"
	.loc 1 69 0
.LVL0:
	.loc 1 75 0
	movh.a	%a15, hi:Com_InitStatus_en
	ld.bu	%d15, [%a15] lo:Com_InitStatus_en
	.loc 1 69 0
	mov.aa	%a12, %a4
	.loc 1 75 0
	jz	%d15, .L49
	.loc 1 79 0
	jz.a	%a4, .L50
	mov	%d8, %d4
	.loc 1 88 0
	call	Com_ReceptionDMControl
.LVL1:
.LBB59:
.LBB60:
	.loc 1 198 0
	movh.a	%a6, hi:Com_IpduGrpVector_au8
	ld.bu	%d2, [%a6] lo:Com_IpduGrpVector_au8
	ld.bu	%d6, [%a12]0
	movh.a	%a13, hi:Com_IpduCounter_au8
	lea	%a13, [%a13] lo:Com_IpduCounter_au8
	jeq	%d2, %d6, .L4
	.loc 1 221 0
	movh.a	%a5, hi:Com_Prv_xIpduGrpCfg_acst
	movh.a	%a4, hi:Com_Prv_xIPduGrp_IpduRefCfg_acuo
	.loc 1 201 0
	xor	%d2, %d6
.LVL2:
	mov	%d3, 0
	.loc 1 217 0
	mov	%d1, 1
	.loc 1 221 0
	lea	%a5, [%a5] lo:Com_Prv_xIpduGrpCfg_acst
	lea	%a4, [%a4] lo:Com_Prv_xIPduGrp_IpduRefCfg_acuo
.LVL3:
.L9:
	and	%d0, %d3, 255
.LVL4:
	.loc 1 209 0
	jz.t	%d2, 0, .L5
.LVL5:
	and	%d15, %d3, 255
	.loc 1 221 0
	addsc.a	%a15, %a5, %d15, 2
	.loc 1 217 0
	extr.u	%d5, %d6, %d15, 1
	.loc 1 221 0
	ld.hu	%d7, [%a15]0
	.loc 1 217 0
	sel	%d5, %d5, %d1, 255
.LVL6:
	.loc 1 221 0
	addsc.a	%a3, %a4, %d7, 1
.LVL7:
	.loc 1 224 0
	jeq	%d0, 5, .L22
	.loc 1 228 0
	ld.hu	%d15, [%a15] 4
.LVL8:
	sub	%d7, %d15, %d7
.LVL9:
	.loc 1 237 0
	jz	%d7, .L5
.LVL10:
.L7:
	mov.a	%a15, %d7
	add.a	%a15, -1
.LVL11:
.L8:
	.loc 1 241 0
	ld.hu	%d15, [%a3+]2
.LVL12:
	.loc 1 240 0
	addsc.a	%a2, %a13, %d15, 0
	ld.bu	%d15, [%a2]0
	add	%d15, %d5
	st.b	[%a2]0, %d15
.LVL13:
	.loc 1 244 0
	loop	%a15, .L8
	ld.bu	%d6, [%a12]0
.LVL14:
.L5:
	.loc 1 251 0
	sh	%d2, -1
.LVL15:
	add	%d3, 1
.LVL16:
	.loc 1 253 0
	jnz	%d2, .L9
	.loc 1 256 0
	st.b	[%a6] lo:Com_IpduGrpVector_au8, %d6
.LVL17:
.L4:
	.loc 1 234 0
	movh.a	%a2, hi:Com_RxIpduRam_ast
	mov	%d2, 0
	lea	%a2, [%a2] lo:Com_RxIpduRam_ast
	lea	%a15, 119
.LVL18:
.L12:
.LBE60:
.LBE59:
	.loc 1 99 0
	addsc.a	%a3, %a13, %d2, 0
	ld.bu	%d15, [%a3]0
	jz	%d15, .L10
	.loc 1 102 0
	ld.bu	%d15, [%a2] 4
.LVL19:
	jnz.t	%d15, 0, .L11
.LVL20:
.LBB62:
.LBB63:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.loc 2 698 0
	andn	%d15, %d15, ~(-2)
	or	%d15, %d15, 1
	st.b	[%a2] 4, %d15
.LVL21:
.L11:
.LBE63:
.LBE62:
	.loc 1 127 0 discriminator 2
	add.a	%a2, 6
.LVL22:
	.loc 1 95 0 discriminator 2
	add	%d2, 1
.LVL23:
	loop	%a15, .L12
	.loc 1 95 0 is_stmt 0
	mov	%d15, 0
	jnz	%d8, .L23
	movh.a	%a15, hi:Com_TxIpduRam_ast
	lea	%a15, [%a15] lo:Com_TxIpduRam_ast
	lea	%a12, [%a15] 2240
.LVL24:
	j	.L16
.LVL25:
.L53:
	.loc 1 153 0 is_stmt 1
	ld.hu	%d2, [%a15] 10
.LVL26:
	jnz.t	%d2, 0, .L51
.LVL27:
.L15:
	.loc 1 165 0
	lea	%a15, [%a15] 16
.LVL28:
	.loc 1 132 0
	add	%d15, 1
.LVL29:
	jeq.a	%a15, %a12, .L52
.LVL30:
.L16:
	.loc 1 136 0
	addsc.a	%a2, %a13, %d15, 0
	ld.bu	%d2, [%a2] 120
	jz	%d2, .L53
.LVL31:
.LBB64:
.LBB65:
	.loc 2 467 0
	ld.h	%d2, [%a15] 10
.LBE65:
.LBE64:
	.loc 1 139 0
	jnz.t	%d2, 0, .L15
.LVL32:
.LBB67:
.LBB68:
	.loc 1 438 0
	extr.u	%d4, %d15, 0, 16
.LBE68:
.LBE67:
	.loc 1 132 0
	add	%d15, 1
.LVL33:
.LBB80:
.LBB77:
	.loc 1 438 0
	call	Com_Prv_TxChangeMode
.LVL34:
.LBE77:
.LBE80:
.LBB81:
.LBB82:
	.loc 2 646 0
	ld.h	%d2, [%a15] 10
	or	%d2, %d2, 1
	st.h	[%a15] 10, %d2
.LBE82:
.LBE81:
	.loc 1 165 0
	lea	%a15, [%a15] 16
.LVL35:
	.loc 1 132 0
	jne.a	%a15, %a12, .L16
.LVL36:
.L52:
	ret
.LVL37:
.L10:
	.loc 1 112 0
	ld.bu	%d15, [%a2] 4
.LVL38:
	jz.t	%d15, 0, .L11
.LVL39:
.LBB84:
.LBB85:
	.loc 2 698 0
	andn	%d15, %d15, ~(-6)
	st.b	[%a2] 4, %d15
.LVL40:
	j	.L11
.LVL41:
.L22:
.LBE85:
.LBE84:
.LBB86:
.LBB61:
	.loc 1 234 0
	mov	%d7, 46
	j	.L7
.LVL42:
.L23:
.LBE61:
.LBE86:
	.loc 1 95 0
	movh.a	%a14, hi:Com_TxIpduRam_ast
	lea	%a14, [%a14] lo:Com_TxIpduRam_ast
	mov.aa	%a15, %a14
	lea	%a12, [%a14] 2240
.LVL43:
.LBB87:
.LBB78:
	.loc 1 403 0
	mov	%d8, 0
	j	.L13
.LVL44:
.L56:
.LBE78:
.LBE87:
.LBB88:
.LBB66:
	.loc 2 467 0
	ld.h	%d2, [%a15] 10
.LBE66:
.LBE88:
	.loc 1 139 0
	jz.t	%d2, 0, .L54
.LVL45:
.L19:
	.loc 1 165 0 discriminator 2
	lea	%a15, [%a15] 16
.LVL46:
	.loc 1 132 0 discriminator 2
	add	%d15, 1
.LVL47:
	jeq.a	%a15, %a12, .L55
.LVL48:
.L13:
	.loc 1 136 0
	addsc.a	%a2, %a13, %d15, 0
	ld.bu	%d2, [%a2] 120
	jnz	%d2, .L56
	.loc 1 153 0
	ld.hu	%d2, [%a15] 10
.LVL49:
	jz.t	%d2, 0, .L19
.LVL50:
.LBB89:
.LBB90:
	.loc 2 646 0
	andn	%d2, %d2, ~(-2)
.LBE90:
.LBE89:
	.loc 1 161 0
	extr.u	%d4, %d15, 0, 16
.LBB94:
.LBB91:
	.loc 2 646 0
	st.h	[%a15] 10, %d2
.LVL51:
.LBE91:
.LBE94:
	.loc 1 165 0
	lea	%a15, [%a15] 16
.LVL52:
	.loc 1 161 0
	call	Com_Prv_TxIPduStop
.LVL53:
	.loc 1 132 0
	add	%d15, 1
.LVL54:
	jne.a	%a15, %a12, .L13
.LVL55:
.L55:
	ret
.LVL56:
.L51:
.LBB95:
.LBB92:
	.loc 2 646 0
	andn	%d2, %d2, ~(-2)
.LBE92:
.LBE95:
	.loc 1 161 0
	extr.u	%d4, %d15, 0, 16
.LBB96:
.LBB93:
	.loc 2 646 0
	st.h	[%a15] 10, %d2
.LVL57:
.LBE93:
.LBE96:
	.loc 1 161 0
	call	Com_Prv_TxIPduStop
.LVL58:
	j	.L15
.LVL59:
.L54:
.LBB97:
.LBB79:
	.loc 1 385 0
	extr.u	%d4, %d15, 0, 16
	call	Com_Prv_TxChangeMode
.LVL60:
	.loc 1 388 0
	sh	%d5, %d15, 4
	addsc.a	%a2, %a14, %d5, 0
.LBB69:
.LBB70:
	.loc 2 646 0
	ld.hu	%d2, [%a2] 10
.LBE70:
.LBE69:
	.loc 1 388 0
	ld.bu	%d4, [%a2] 13
.LVL61:
.LBB72:
.LBB71:
	.loc 2 646 0
	andn	%d3, %d2, ~(-257)
	st.h	[%a2] 10, %d3
.LBE71:
.LBE72:
	.loc 1 395 0
	jz.t	%d4, 0, .L20
	.loc 1 398 0
	ld.a	%a3, [%a2+]4
.LVL62:
	ld.hu	%d3, [%a3] 2
	st.h	[%a2] 2, %d3
.LVL63:
.L20:
	.loc 1 403 0
	addsc.a	%a2, %a14, %d5, 0
.LBB73:
.LBB74:
	.loc 2 646 0
	andn	%d2, %d2, ~(-259)
.LBE74:
.LBE73:
	.loc 1 403 0
	st.h	[%a2] 4, %d8
.LVL64:
.LBB76:
.LBB75:
	.loc 2 646 0
	st.h	[%a2] 10, %d2
.LVL65:
.LBE75:
.LBE76:
.LBE79:
.LBE97:
.LBB98:
.LBB83:
	ld.h	%d2, [%a15] 10
	or	%d2, %d2, 1
	st.h	[%a15] 10, %d2
.LVL66:
	j	.L19
.LVL67:
.L49:
.LBE83:
.LBE98:
	.loc 1 77 0
	mov	%e4, 50
.LVL68:
	mov	%d6, 3
	mov	%d7, 2
	j	Det_ReportError
.LVL69:
.L50:
	.loc 1 81 0
	mov	%e4, 50
.LVL70:
	mov	%d6, 3
	mov	%d7, 3
	j	Det_ReportError
.LVL71:
.LFE162:
	.size	Com_IpduGroupControl, .-Com_IpduGroupControl
.section .text.Com_ClearIpduGroupVector,"ax",@progbits
	.align 1
	.global	Com_ClearIpduGroupVector
	.type	Com_ClearIpduGroupVector, @function
Com_ClearIpduGroupVector:
.LFB164:
	.loc 1 276 0
.LVL72:
	.loc 1 278 0
	movh.a	%a15, hi:Com_InitStatus_en
	ld.bu	%d15, [%a15] lo:Com_InitStatus_en
	jz	%d15, .L60
	.loc 1 282 0
	jz.a	%a4, .L61
.LVL73:
.LBB99:
	.loc 1 293 0 discriminator 3
	mov	%d15, 0
	st.b	[%a4]0, %d15
.LVL74:
	ret
.LVL75:
.L60:
.LBE99:
	.loc 1 280 0
	mov	%e4, 50
	mov	%d6, 28
	mov	%d7, 2
	j	Det_ReportError
.LVL76:
.L61:
	.loc 1 284 0
	mov	%e4, 50
	mov	%d6, 28
	mov	%d7, 3
	j	Det_ReportError
.LVL77:
.LFE164:
	.size	Com_ClearIpduGroupVector, .-Com_ClearIpduGroupVector
.section .text.Com_SetIpduGroup,"ax",@progbits
	.align 1
	.global	Com_SetIpduGroup
	.type	Com_SetIpduGroup, @function
Com_SetIpduGroup:
.LFB165:
	.loc 1 314 0
.LVL78:
	.loc 1 316 0
	movh.a	%a15, hi:Com_InitStatus_en
	ld.bu	%d15, [%a15] lo:Com_InitStatus_en
	jz	%d15, .L68
	.loc 1 320 0
	jz.a	%a4, .L69
.LVL79:
	.loc 1 324 0
	jge.u	%d4, 6, .L70
.LVL80:
.LBB100:
	.loc 1 341 0
	ld.bu	%d15, [%a4]0
	.loc 1 339 0
	jnz	%d5, .L71
	.loc 1 345 0
	insert	%d4, %d15, 0, %d4, 1
.LVL81:
	st.b	[%a4]0, %d4
	ret
.LVL82:
.L71:
	.loc 1 341 0
	insert	%d4, %d15, 1, %d4, 1
.LVL83:
	st.b	[%a4]0, %d4
	ret
.LVL84:
.L68:
.LBE100:
	.loc 1 318 0
	mov	%e4, 50
.LVL85:
	mov	%d6, 29
	mov	%d7, 2
	j	Det_ReportError
.LVL86:
.L70:
	.loc 1 326 0
	mov	%e4, 50
.LVL87:
	mov	%d6, 29
	mov	%d7, 1
	j	Det_ReportError
.LVL88:
.L69:
	.loc 1 322 0
	mov	%e4, 50
.LVL89:
	mov	%d6, 29
	mov	%d7, 3
	j	Det_ReportError
.LVL90:
.LFE165:
	.size	Com_SetIpduGroup, .-Com_SetIpduGroup
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
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB164
	.uaword	.LFE164-.LFB164
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB165
	.uaword	.LFE165-.LFB165
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
	.file 8 "bsw\\Com\\src\\Com_Prv_Types.h"
	.file 9 "bsw\\Com\\src\\Com_Prv_Inl.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Variant.h"
	.file 12 "bsw\\Com\\src\\Com_Prv.h"
	.file 13 ".\\output\\inc/..\\..\\bsw\\Com\\api\\Com.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x116f
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_IpduGroupStart.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xc8
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1cb
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x1f7
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
	.byte	0x3
	.byte	0x6a
	.uaword	0x233
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
	.byte	0x3
	.byte	0x80
	.uaword	0x1cb
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"uint16_least"
	.byte	0x3
	.byte	0x94
	.uaword	0x28b
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x4
	.byte	0x60
	.uaword	0x1be
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x5
	.byte	0x30
	.uaword	0x1e9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1be
	.uleb128 0x3
	.string	"Com_IpduGroupIdType"
	.byte	0x6
	.byte	0x77
	.uaword	0x1e9
	.uleb128 0x3
	.string	"Com_IpduGroupVector"
	.byte	0x6
	.byte	0x79
	.uaword	0x31b
	.uleb128 0x5
	.uaword	0x1be
	.uaword	0x32b
	.uleb128 0x6
	.uaword	0x32b
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x1
	.byte	0x6
	.byte	0x7d
	.uaword	0x358
	.uleb128 0x8
	.string	"COM_UNINIT"
	.sleb128 0
	.uleb128 0x8
	.string	"COM_INIT"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Com_StatusType"
	.byte	0x6
	.byte	0x80
	.uaword	0x337
	.uleb128 0x9
	.string	"Com_IpduId_tuo"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x1e9
	.uleb128 0xa
	.uaword	0x1be
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1e9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x385
	.uleb128 0x4
	.byte	0x4
	.uaword	0x225
	.uleb128 0xb
	.byte	0x8
	.byte	0x8
	.byte	0x4b
	.uaword	0x426
	.uleb128 0xc
	.string	"timePeriod_u16"
	.byte	0x8
	.byte	0x4d
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"timeOffset_u16"
	.byte	0x8
	.byte	0x4e
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xc
	.string	"repetitionPeriod_u16"
	.byte	0x8
	.byte	0x4f
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"numOfRepetitions_u8"
	.byte	0x8
	.byte	0x50
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xc
	.string	"mode_u8"
	.byte	0x8
	.byte	0x57
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"Com_TransModeInfo_tst"
	.byte	0x8
	.byte	0x5b
	.uaword	0x39c
	.uleb128 0x3
	.string	"Com_TMConstPtr_tpcst"
	.byte	0x8
	.byte	0x65
	.uaword	0x45f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x465
	.uleb128 0xa
	.uaword	0x426
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.uahalf	0x472
	.uaword	0x4aa
	.uleb128 0xe
	.string	"idFirstIpdu_u16"
	.byte	0x8
	.uahalf	0x474
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"numOfRxPdus_u16"
	.byte	0x8
	.uahalf	0x475
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x9
	.string	"Com_Prv_xIpduGrpInfoCfg_tst"
	.byte	0x8
	.uahalf	0x477
	.uaword	0x46a
	.uleb128 0x9
	.string	"Com_IpduGrpCfg_tpcst"
	.byte	0x8
	.uahalf	0x480
	.uaword	0x4eb
	.uleb128 0x4
	.byte	0x4
	.uaword	0x4f1
	.uleb128 0xa
	.uaword	0x4aa
	.uleb128 0xd
	.byte	0x10
	.byte	0x8
	.uahalf	0x524
	.uaword	0x5c9
	.uleb128 0xe
	.string	"currentTxModePtr_pcst"
	.byte	0x8
	.uahalf	0x526
	.uaword	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cntrMinDelayTime_u16"
	.byte	0x8
	.uahalf	0x52d
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"cntrTimePeriod_u16"
	.byte	0x8
	.uahalf	0x52e
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xe
	.string	"cntrRepPeriod_u16"
	.byte	0x8
	.uahalf	0x532
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"txFlags_u16"
	.byte	0x8
	.uahalf	0x555
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xe
	.string	"cntrRepetitions_u8"
	.byte	0x8
	.uahalf	0x556
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"transMode_u8"
	.byte	0x8
	.uahalf	0x562
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x9
	.string	"Com_TxIpduRamData_tst"
	.byte	0x8
	.uahalf	0x564
	.uaword	0x4f6
	.uleb128 0x9
	.string	"Com_TxIpduRam_tpst"
	.byte	0x8
	.uahalf	0x56d
	.uaword	0x602
	.uleb128 0x4
	.byte	0x4
	.uaword	0x5c9
	.uleb128 0xd
	.byte	0x6
	.byte	0x8
	.uahalf	0x584
	.uaword	0x660
	.uleb128 0xe
	.string	"rxIPduLength_uo"
	.byte	0x8
	.uahalf	0x586
	.uaword	0x2ca
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"cntrRxTimeout_u16"
	.byte	0x8
	.uahalf	0x58b
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xe
	.string	"rxFlags_u8"
	.byte	0x8
	.uahalf	0x5a6
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x9
	.string	"Com_RxIpduRamData_tst"
	.byte	0x8
	.uahalf	0x5a8
	.uaword	0x608
	.uleb128 0x9
	.string	"Com_RxIpduRam_tpst"
	.byte	0x8
	.uahalf	0x5b1
	.uaword	0x699
	.uleb128 0x4
	.byte	0x4
	.uaword	0x660
	.uleb128 0xd
	.byte	0xc
	.byte	0x8
	.uahalf	0x5f5
	.uaword	0x6f3
	.uleb128 0xe
	.string	"sigType_pau8"
	.byte	0x8
	.uahalf	0x5f7
	.uaword	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"sigType_pau16"
	.byte	0x8
	.uahalf	0x5fd
	.uaword	0x38a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"sigType_pau32"
	.byte	0x8
	.uahalf	0x5ff
	.uaword	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"Com_Prv_xRxRamBuf_tst"
	.byte	0x8
	.uahalf	0x634
	.uaword	0x69f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x717
	.uleb128 0xa
	.uaword	0x36e
	.uleb128 0xf
	.string	"Com_Prv_RxIPduStart"
	.byte	0x1
	.uahalf	0x1eb
	.byte	0x1
	.byte	0x3
	.uaword	0x753
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x36e
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1eb
	.uaword	0x270
	.byte	0
	.uleb128 0x11
	.string	"Bfx_Prv_GetBits_u8u8u8_u8_Inl"
	.byte	0x2
	.uahalf	0x255
	.byte	0x1
	.uaword	0x1be
	.byte	0x3
	.uaword	0x7ae
	.uleb128 0x12
	.string	"Data"
	.byte	0x2
	.uahalf	0x255
	.uaword	0x1be
	.uleb128 0x12
	.string	"BitStartPn"
	.byte	0x2
	.uahalf	0x255
	.uaword	0x1be
	.uleb128 0x12
	.string	"BitLn"
	.byte	0x2
	.uahalf	0x255
	.uaword	0x1be
	.byte	0
	.uleb128 0xf
	.string	"Bfx_Prv_PutBit_u16u8u8_Inl"
	.byte	0x2
	.uahalf	0x281
	.byte	0x1
	.byte	0x3
	.uaword	0x80b
	.uleb128 0x12
	.string	"Data"
	.byte	0x2
	.uahalf	0x281
	.uaword	0x38a
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x281
	.uaword	0x1be
	.uleb128 0x12
	.string	"Status"
	.byte	0x2
	.uahalf	0x281
	.uaword	0x270
	.uleb128 0x13
	.string	"tmp_u8"
	.byte	0x2
	.uahalf	0x283
	.uaword	0x1be
	.byte	0
	.uleb128 0x11
	.string	"Bfx_Prv_GetBit_u8u8_u8_Inl"
	.byte	0x2
	.uahalf	0x1fd
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0x84e
	.uleb128 0x12
	.string	"Data"
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x1be
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x1be
	.byte	0
	.uleb128 0xf
	.string	"Bfx_Prv_PutBit_u8u8u8_Inl"
	.byte	0x2
	.uahalf	0x2b5
	.byte	0x1
	.byte	0x3
	.uaword	0x8aa
	.uleb128 0x12
	.string	"Data"
	.byte	0x2
	.uahalf	0x2b5
	.uaword	0x2df
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x2b5
	.uaword	0x1be
	.uleb128 0x12
	.string	"Status"
	.byte	0x2
	.uahalf	0x2b5
	.uaword	0x270
	.uleb128 0x13
	.string	"tmp_u8"
	.byte	0x2
	.uahalf	0x2b7
	.uaword	0x1be
	.byte	0
	.uleb128 0x11
	.string	"Bfx_Prv_GetBit_u16u8_u8_Inl"
	.byte	0x2
	.uahalf	0x1d1
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0x8ee
	.uleb128 0x12
	.string	"Data"
	.byte	0x2
	.uahalf	0x1d1
	.uaword	0x1e9
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x2
	.uahalf	0x1d1
	.uaword	0x1be
	.byte	0
	.uleb128 0x11
	.string	"Com_Prv_IsValidIpduGroupId"
	.byte	0x9
	.uahalf	0x605
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0x924
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x9
	.uahalf	0x605
	.uaword	0x2e5
	.byte	0
	.uleb128 0x14
	.string	"Com_Prv_ProcessIPduGroupVector"
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.byte	0x3
	.uaword	0xa07
	.uleb128 0x15
	.string	"ipduGroupVector_pcu8"
	.byte	0x1
	.byte	0xb9
	.uaword	0x390
	.uleb128 0x16
	.string	"ipduRefPtr_pcuo"
	.byte	0x1
	.byte	0xbb
	.uaword	0x711
	.uleb128 0x16
	.string	"ipduGrpConstPtr_pcst"
	.byte	0x1
	.byte	0xbc
	.uaword	0x4ce
	.uleb128 0x17
	.uaword	.LASF4
	.byte	0x1
	.byte	0xbd
	.uaword	0x2a0
	.uleb128 0x16
	.string	"numOfPdus_qu16"
	.byte	0x1
	.byte	0xbe
	.uaword	0x2a0
	.uleb128 0x16
	.string	"idIpduGrp_u16"
	.byte	0x1
	.byte	0xbf
	.uaword	0x2e5
	.uleb128 0x16
	.string	"byteVal_u8"
	.byte	0x1
	.byte	0xc0
	.uaword	0x1be
	.uleb128 0x17
	.uaword	.LASF5
	.byte	0x1
	.byte	0xc1
	.uaword	0x1be
	.uleb128 0x16
	.string	"pduCounterVal_u8"
	.byte	0x1
	.byte	0xc2
	.uaword	0x1be
	.byte	0
	.uleb128 0xf
	.string	"Com_Prv_TxIPduStart"
	.byte	0x1
	.uahalf	0x16b
	.byte	0x1
	.byte	0x3
	.uaword	0xa65
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x36e
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x16b
	.uaword	0x270
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x170
	.uaword	0x5e7
	.uleb128 0x13
	.string	"latestTransMode_u8"
	.byte	0x1
	.uahalf	0x171
	.uaword	0x1be
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"Com_IpduGroupControl"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.uaword	.LFB162
	.uaword	.LFE162
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xdc5
	.uleb128 0x1a
	.uaword	.LASF7
	.byte	0x1
	.byte	0x44
	.uaword	0x2df
	.uaword	.LLST0
	.uleb128 0x1a
	.uaword	.LASF1
	.byte	0x1
	.byte	0x44
	.uaword	0x270
	.uaword	.LLST1
	.uleb128 0x1b
	.string	"rxIpduRamPtr_pst"
	.byte	0x1
	.byte	0x46
	.uaword	0x67e
	.uaword	.LLST2
	.uleb128 0x1c
	.uaword	.LASF6
	.byte	0x1
	.byte	0x47
	.uaword	0x5e7
	.uaword	.LLST3
	.uleb128 0x1b
	.string	"idxIdIpdu_qu16"
	.byte	0x1
	.byte	0x48
	.uaword	0x2a0
	.uaword	.LLST4
	.uleb128 0x1d
	.uaword	0x924
	.uaword	.LBB59
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x5b
	.uaword	0xb59
	.uleb128 0x1e
	.uaword	0x94c
	.uaword	.LLST5
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x20
	.uaword	0x968
	.uaword	.LLST6
	.uleb128 0x21
	.uaword	0x97f
	.uleb128 0x20
	.uaword	0x99b
	.uaword	.LLST7
	.uleb128 0x20
	.uaword	0x9a6
	.uaword	.LLST8
	.uleb128 0x20
	.uaword	0x9bc
	.uaword	.LLST9
	.uleb128 0x20
	.uaword	0x9d1
	.uaword	.LLST10
	.uleb128 0x20
	.uaword	0x9e3
	.uaword	.LLST11
	.uleb128 0x20
	.uaword	0x9ee
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x84e
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.byte	0x6a
	.uaword	0xb9b
	.uleb128 0x1e
	.uaword	0x88b
	.uaword	.LLST13
	.uleb128 0x1e
	.uaword	0x87f
	.uaword	.LLST14
	.uleb128 0x1e
	.uaword	0x872
	.uaword	.LLST15
	.uleb128 0x23
	.uaword	.LBB63
	.uaword	.LBE63
	.uleb128 0x20
	.uaword	0x89a
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x8aa
	.uaword	.LBB64
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x8b
	.uaword	0xbc1
	.uleb128 0x1e
	.uaword	0x8e1
	.uaword	.LLST17
	.uleb128 0x1e
	.uaword	0x8d4
	.uaword	.LLST18
	.byte	0
	.uleb128 0x1d
	.uaword	0xa07
	.uaword	.LBB67
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.byte	0x91
	.uaword	0xc86
	.uleb128 0x1e
	.uaword	0xa31
	.uaword	.LLST19
	.uleb128 0x1e
	.uaword	0xa25
	.uaword	.LLST20
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x21
	.uaword	0xa3d
	.uleb128 0x21
	.uaword	0xa49
	.uleb128 0x24
	.uaword	0x7ae
	.uaword	.LBB69
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.uahalf	0x187
	.uaword	0xc30
	.uleb128 0x1e
	.uaword	0x7ec
	.uaword	.LLST21
	.uleb128 0x1e
	.uaword	0x7e0
	.uaword	.LLST22
	.uleb128 0x25
	.uaword	0x7d3
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x20
	.uaword	0x7fb
	.uaword	.LLST21
	.byte	0
	.byte	0
	.uleb128 0x24
	.uaword	0x7ae
	.uaword	.LBB73
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.uahalf	0x1ac
	.uaword	0xc6b
	.uleb128 0x1e
	.uaword	0x7ec
	.uaword	.LLST24
	.uleb128 0x1e
	.uaword	0x7e0
	.uaword	.LLST25
	.uleb128 0x25
	.uaword	0x7d3
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x20
	.uaword	0x7fb
	.uaword	.LLST24
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL34
	.uaword	0x10d2
	.uleb128 0x27
	.uaword	.LVL60
	.uaword	0x10d2
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x7ae
	.uaword	.LBB81
	.uaword	.Ldebug_ranges0+0x88
	.byte	0x1
	.byte	0x93
	.uaword	0xcc4
	.uleb128 0x1e
	.uaword	0x7ec
	.uaword	.LLST27
	.uleb128 0x1e
	.uaword	0x7e0
	.uaword	.LLST28
	.uleb128 0x1e
	.uaword	0x7d3
	.uaword	.LLST29
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0x88
	.uleb128 0x20
	.uaword	0x7fb
	.uaword	.LLST27
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x84e
	.uaword	.LBB84
	.uaword	.LBE84
	.byte	0x1
	.byte	0x75
	.uaword	0xd06
	.uleb128 0x1e
	.uaword	0x88b
	.uaword	.LLST31
	.uleb128 0x1e
	.uaword	0x87f
	.uaword	.LLST32
	.uleb128 0x1e
	.uaword	0x872
	.uaword	.LLST33
	.uleb128 0x23
	.uaword	.LBB85
	.uaword	.LBE85
	.uleb128 0x20
	.uaword	0x89a
	.uaword	.LLST31
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x7ae
	.uaword	.LBB89
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0x9f
	.uaword	0xd44
	.uleb128 0x1e
	.uaword	0x7ec
	.uaword	.LLST35
	.uleb128 0x1e
	.uaword	0x7e0
	.uaword	.LLST35
	.uleb128 0x1e
	.uaword	0x7d3
	.uaword	.LLST37
	.uleb128 0x1f
	.uaword	.Ldebug_ranges0+0xa0
	.uleb128 0x20
	.uaword	0x7fb
	.uaword	.LLST35
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL1
	.uaword	0x10f8
	.uaword	0xd58
	.uleb128 0x28
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL53
	.uaword	0x111f
	.uaword	0xd6c
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL58
	.uaword	0x111f
	.uaword	0xd80
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL69
	.byte	0x1
	.uaword	0x1143
	.uaword	0xda4
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
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
	.uleb128 0x2b
	.uaword	.LVL71
	.byte	0x1
	.uaword	0x1143
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x33
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
	.uleb128 0x2c
	.byte	0x1
	.string	"Com_ClearIpduGroupVector"
	.byte	0x1
	.uahalf	0x113
	.byte	0x1
	.uaword	.LFB164
	.uaword	.LFE164
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe67
	.uleb128 0x2d
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x113
	.uaword	0x2df
	.uaword	.LLST39
	.uleb128 0x2e
	.uaword	.LBB99
	.uaword	.LBE99
	.uaword	0xe22
	.uleb128 0x2f
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x121
	.uaword	0x2a0
	.uaword	.LLST40
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL76
	.byte	0x1
	.uaword	0x1143
	.uaword	0xe46
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4c
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
	.uleb128 0x2b
	.uaword	.LVL77
	.byte	0x1
	.uaword	0x1143
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4c
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
	.uleb128 0x2c
	.byte	0x1
	.string	"Com_SetIpduGroup"
	.byte	0x1
	.uahalf	0x139
	.byte	0x1
	.uaword	.LFB165
	.uaword	.LFE165
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xf60
	.uleb128 0x2d
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x139
	.uaword	0x2df
	.uaword	.LLST41
	.uleb128 0x2d
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x139
	.uaword	0x2e5
	.uaword	.LLST42
	.uleb128 0x30
	.string	"bitval_b"
	.byte	0x1
	.uahalf	0x139
	.uaword	0x270
	.uaword	.LLST43
	.uleb128 0x2e
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	0xef7
	.uleb128 0x31
	.string	"index_u16"
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x1e9
	.uaword	.LLST44
	.uleb128 0x2f
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x1be
	.uaword	.LLST45
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL86
	.byte	0x1
	.uaword	0x1143
	.uaword	0xf1b
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4d
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
	.uleb128 0x2a
	.uaword	.LVL88
	.byte	0x1
	.uaword	0x1143
	.uaword	0xf3f
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4d
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
	.uleb128 0x2b
	.uaword	.LVL90
	.byte	0x1
	.uaword	0x1143
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x4d
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
	.uleb128 0x5
	.uaword	0x660
	.uaword	0xf6b
	.uleb128 0x32
	.byte	0
	.uleb128 0x33
	.string	"Com_RxIpduRam_ast"
	.byte	0xa
	.byte	0x6b
	.uaword	0xf60
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x5c9
	.uaword	0xf91
	.uleb128 0x32
	.byte	0
	.uleb128 0x33
	.string	"Com_TxIpduRam_ast"
	.byte	0xa
	.byte	0x6e
	.uaword	0xf86
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x1be
	.uaword	0xfb7
	.uleb128 0x32
	.byte	0
	.uleb128 0x33
	.string	"Com_IpduCounter_au8"
	.byte	0xa
	.byte	0x9d
	.uaword	0xfac
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x6f3
	.uaword	0xfdf
	.uleb128 0x32
	.byte	0
	.uleb128 0x34
	.string	"Com_Prv_xRxRamBuf_acst"
	.byte	0xa
	.uahalf	0x9f4
	.uaword	0x1000
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0xfd4
	.uleb128 0x5
	.uaword	0x4aa
	.uaword	0x1010
	.uleb128 0x32
	.byte	0
	.uleb128 0x33
	.string	"Com_Prv_xIpduGrpCfg_acst"
	.byte	0xb
	.byte	0x7f
	.uaword	0x1032
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x1005
	.uleb128 0x5
	.uaword	0x36e
	.uaword	0x1042
	.uleb128 0x32
	.byte	0
	.uleb128 0x33
	.string	"Com_Prv_xIPduGrp_IpduRefCfg_acuo"
	.byte	0xb
	.byte	0x87
	.uaword	0x106c
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x1037
	.uleb128 0x34
	.string	"Com_InitStatus_en"
	.byte	0xc
	.uahalf	0xec7
	.uaword	0x358
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"Com_IpduGrpVector_au8"
	.byte	0xc
	.uahalf	0xed5
	.uaword	0x300
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.string	"Com_NONE_TransModeInfo_cst"
	.byte	0xc
	.uahalf	0xf12
	.uaword	0x465
	.byte	0x1
	.byte	0x1
	.uleb128 0x35
	.byte	0x1
	.string	"Com_Prv_TxChangeMode"
	.byte	0xc
	.uahalf	0xd94
	.byte	0x1
	.byte	0x1
	.uaword	0x10f8
	.uleb128 0x36
	.uaword	0x36e
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Com_ReceptionDMControl"
	.byte	0xd
	.byte	0xd7
	.byte	0x1
	.byte	0x1
	.uaword	0x111f
	.uleb128 0x36
	.uaword	0x2df
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"Com_Prv_TxIPduStop"
	.byte	0xc
	.uahalf	0xe00
	.byte	0x1
	.byte	0x1
	.uaword	0x1143
	.uleb128 0x36
	.uaword	0x36e
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xe
	.byte	0x70
	.byte	0x1
	.uaword	0x2b4
	.byte	0x1
	.uleb128 0x36
	.uaword	0x1e9
	.uleb128 0x36
	.uaword	0x1be
	.uleb128 0x36
	.uaword	0x1be
	.uleb128 0x36
	.uaword	0x1be
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL24
	.uaword	.LVL37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL43
	.uaword	.LVL67
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL69-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL69-1
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL69
	.uaword	.LVL71-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL71-1
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LVL67
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL70
	.uaword	.LFE162
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL18
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL25
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL44
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -16
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL42
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL24
	.uaword	.LVL37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL43
	.uaword	.LVL67
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x83
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL1
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x6
	.byte	0x70
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x73
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x3
	.byte	0x73
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL6
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x82
	.sleb128 4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL31
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL31
	.uaword	.LVL34-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 10
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x8f
	.sleb128 10
	.uaword	.LVL59
	.uaword	.LVL60-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 10
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL32
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL61
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL61
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL64
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL64
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x8f
	.sleb128 10
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -6
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x3
	.byte	0x8f
	.sleb128 10
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x3
	.byte	0x82
	.sleb128 4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL50
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL50
	.uaword	.LVL52
	.uahalf	0x3
	.byte	0x8f
	.sleb128 10
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL55
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -6
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x8f
	.sleb128 10
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL72
	.uaword	.LVL76-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL76-1
	.uaword	.LVL76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL77-1
	.uaword	.LFE164
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL78
	.uaword	.LVL86-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL86-1
	.uaword	.LVL86
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL88-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL88-1
	.uaword	.LVL88
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL90-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL90-1
	.uaword	.LFE165
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL78
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL89
	.uaword	.LFE165
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL78
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL86
	.uaword	.LVL87
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL89
	.uaword	.LFE165
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL80
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL80
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL82
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x54
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
	.uaword	.LFB164
	.uaword	.LFE164-.LFB164
	.uaword	.LFB165
	.uaword	.LFE165-.LFB165
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	0
	.uaword	0
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	0
	.uaword	0
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	0
	.uaword	0
	.uaword	.LBB69
	.uaword	.LBE69
	.uaword	.LBB72
	.uaword	.LBE72
	.uaword	0
	.uaword	0
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	0
	.uaword	0
	.uaword	.LBB81
	.uaword	.LBE81
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	0
	.uaword	0
	.uaword	.LBB89
	.uaword	.LBE89
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	.LBB96
	.uaword	.LBE96
	.uaword	0
	.uaword	0
	.uaword	.LFB162
	.uaword	.LFE162
	.uaword	.LFB164
	.uaword	.LFE164
	.uaword	.LFB165
	.uaword	.LFE165
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF6:
	.string	"txIpduRamPtr_pst"
.LASF0:
	.string	"idIpdu_uo"
.LASF4:
	.string	"index_qu16"
.LASF5:
	.string	"bitOffset_u8"
.LASF2:
	.string	"BitPn"
.LASF1:
	.string	"initialize_b"
.LASF3:
	.string	"idIpduGroup_u16"
.LASF7:
	.string	"ipduGroupVector_au8"
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Com_Prv_TxIPduStop,STT_FUNC,0
	.extern	Com_Prv_TxChangeMode,STT_FUNC,0
	.extern	Com_TxIpduRam_ast,STT_OBJECT,-1
	.extern	Com_RxIpduRam_ast,STT_OBJECT,-1
	.extern	Com_Prv_xIPduGrp_IpduRefCfg_acuo,STT_OBJECT,-1
	.extern	Com_Prv_xIpduGrpCfg_acst,STT_OBJECT,-1
	.extern	Com_IpduCounter_au8,STT_OBJECT,-1
	.extern	Com_IpduGrpVector_au8,STT_OBJECT,1
	.extern	Com_ReceptionDMControl,STT_FUNC,0
	.extern	Com_InitStatus_en,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
