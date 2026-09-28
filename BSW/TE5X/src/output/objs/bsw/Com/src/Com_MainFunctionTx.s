	.file	"Com_MainFunctionTx.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_Prv_InternalMainFunctionTx,"ax",@progbits
	.align 1
	.global	Com_Prv_InternalMainFunctionTx
	.type	Com_Prv_InternalMainFunctionTx, @function
Com_Prv_InternalMainFunctionTx:
.LFB162:
	.file 1 "bsw\\Com\\src\\Com_MainFunctionTx.c"
	.loc 1 91 0
.LVL0:
	.loc 1 98 0
	movh.a	%a15, hi:Com_InitStatus_en
	ld.bu	%d15, [%a15] lo:Com_InitStatus_en
	jz	%d15, .L1
.LBB104:
	.loc 1 125 0
	movh.a	%a15, hi:Com_MainFunctionCfg_acst
	mov.d	%d2, %a15
	add	%d4, 1
.LVL1:
	addi	%d15, %d2, lo:Com_MainFunctionCfg_acst
	madd	%d3, %d15, %d4, 6
	.loc 1 131 0
	movh	%d8, hi:Com_TxIpduRam_ast
	addi	%d8, %d8, lo:Com_TxIpduRam_ast
	.loc 1 125 0
	mov.a	%a15, %d3
	ld.hu	%d15, [%a15]0
.LVL2:
	.loc 1 126 0
	ld.hu	%d9, [%a15] 2
	.loc 1 131 0
	madd	%d2, %d8, %d15, 16
	.loc 1 126 0
	add	%d9, %d15
.LVL3:
	.loc 1 131 0
	mov.a	%a12, %d2
.LVL4:
	.loc 1 133 0
	jge.u	%d15, %d9, .L1
.LVL5:
.L46:
	insert	%d2, %d15, 0, 16, 16
.LBB105:
.LBB106:
	.file 2 "bsw\\Com\\src\\Com_Prv_Inl.h"
	.loc 2 995 0
	madd	%d3, %d8, %d2, 16
	mov.a	%a15, %d3
.LBB107:
.LBB108:
	.file 3 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.loc 3 467 0
	ld.h	%d2, [%a15] 10
.LBE108:
.LBE107:
.LBE106:
.LBE105:
	.loc 1 136 0
	jz.t	%d2, 0, .L5
	.loc 1 141 0
	ld.hu	%d2, [%a12] 10
.LVL6:
	jz.t	%d2, 1, .L6
.LVL7:
.LBB109:
.LBB110:
	.loc 3 646 0
	andn	%d2, %d2, ~(-3)
	st.h	[%a12] 10, %d2
.LVL8:
.L6:
.LBE110:
.LBE109:
.LBB111:
.LBB112:
	.loc 1 349 0
	mov.a	%a2, %d8
	sh	%d3, %d15, 4
	addsc.a	%a15, %a2, %d3, 0
	ld.hu	%d2, [%a15] 4
	lea	%a2, [%a15] 4
	jz	%d2, .L7
	.loc 1 352 0
	add	%d2, -1
	extr.u	%d2, %d2, 0, 16
.LBB113:
.LBB114:
	.loc 3 599 0
	ld.bu	%d4, [%a15] 13
.LBE114:
.LBE113:
	.loc 1 352 0
	st.h	[%a15] 4, %d2
.LVL9:
	.loc 1 355 0
	and	%d4, %d4, 3
	jeq	%d4, 2, .L9
	jeq	%d4, 3, .L10
	jeq	%d4, 1, .L11
.LVL10:
.LBB116:
.LBB117:
	.loc 1 417 0
	ld.hu	%d4, [%a15] 8
	jz	%d4, .L12
	.loc 1 419 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d3, 0
	add	%d4, -1
	st.h	[%a15] 8, %d4
.LVL11:
.L12:
	.loc 1 422 0
	jnz	%d2, .L5
.L55:
	.loc 1 425 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d3, 0
	ld.hu	%d2, [%a15] 10
.LVL12:
	jz.t	%d2, 3, .L14
.LVL13:
.LBB118:
.LBB119:
	.loc 3 646 0
	andn	%d2, %d2, ~(-9)
	st.h	[%a15] 10, %d2
.LVL14:
.LBE119:
.LBE118:
	.loc 1 461 0
	ld.bu	%d2, [%a15] 12
	jz	%d2, .L16
	.loc 1 463 0
	ld.hu	%d2, [%a15] 8
	jnz	%d2, .L16
.LVL15:
.L48:
	.loc 1 465 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d3, 0
.LBE117:
.LBE116:
.LBE112:
.LBE111:
.LBB172:
.LBB173:
	.loc 1 726 0
	extr.u	%d4, %d15, 0, 16
.LBE173:
.LBE172:
.LBB178:
.LBB167:
.LBB125:
.LBB120:
	.loc 1 465 0
	ld.a	%a2, [%a15]0
.LBE120:
.LBE125:
.LBE167:
.LBE178:
.LBB179:
.LBB174:
	.loc 1 726 0
	mov	%d5, 0
.LBE174:
.LBE179:
.LBB180:
.LBB168:
.LBB126:
.LBB121:
	.loc 1 465 0
	ld.hu	%d2, [%a2] 4
	st.h	[%a15] 8, %d2
.LVL16:
.LBE121:
.LBE126:
.LBE168:
.LBE180:
.LBB181:
.LBB175:
	.loc 1 726 0
	call	Com_Prv_SendIpdu
.LVL17:
.L5:
.LBE175:
.LBE181:
	.loc 1 133 0
	add	%d15, 1
.LVL18:
	.loc 1 229 0
	lea	%a12, [%a12] 16
.LVL19:
	.loc 1 133 0
	jne	%d15, %d9, .L46
.LVL20:
.L134:
	ret
.LVL21:
.L7:
.LBB182:
.LBB169:
.LBB127:
.LBB115:
	.loc 3 599 0
	ld.bu	%d4, [%a15] 13
.LBE115:
.LBE127:
	.loc 1 355 0
	and	%d4, %d4, 3
	jeq	%d4, 2, .L36
	jeq	%d4, 3, .L53
	jeq	%d4, 1, .L11
.LVL22:
.LBB128:
.LBB122:
	.loc 1 417 0
	ld.hu	%d4, [%a15] 8
	jz	%d4, .L55
	.loc 1 419 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d3, 0
	add	%d4, -1
	st.h	[%a15] 8, %d4
	j	.L12
.LVL23:
.L1:
	ret
.LVL24:
.L9:
.LBE122:
.LBE128:
.LBB129:
.LBB130:
	.loc 1 583 0
	jnz	%d2, .L5
.LVL25:
.L36:
	.loc 1 586 0
	mov.a	%a15, %d8
	addsc.a	%a2, %a15, %d3, 0
	ld.hu	%d2, [%a2] 10
.LVL26:
	jnz.t	%d2, 3, .L131
.LVL27:
	.loc 1 598 0
	jz.t	%d2, 4, .L5
	.loc 1 600 0
	ld.hu	%d2, [%a2] 8
	jz	%d2, .L16
	.loc 1 602 0
	add	%d2, -1
	extr.u	%d2, %d2, 0, 16
	st.h	[%a2] 8, %d2
	.loc 1 604 0
	jnz	%d2, .L5
	j	.L16
.LVL28:
.L11:
.LBE130:
.LBE129:
.LBB134:
.LBB135:
	.loc 1 492 0
	add	%d4, %d8, %d3
	mov.a	%a15, %d4
	ld.hu	%d4, [%a15] 6
	add.a	%a15, 4
	jz	%d4, .L20
	.loc 1 494 0
	add	%d4, -1
	extr.u	%d4, %d4, 0, 16
	st.h	[%a15] 2, %d4
.L20:
	.loc 1 496 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d3, 0
	ld.hu	%d5, [%a15] 8
	jz	%d5, .L21
	.loc 1 498 0
	add	%d5, -1
	st.h	[%a15] 8, %d5
.L21:
	.loc 1 500 0
	jnz	%d2, .L22
	.loc 1 503 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d3, 0
	ld.hu	%d2, [%a15] 10
.LVL29:
	jnz.t	%d2, 3, .L132
	.loc 1 519 0
	ld.hu	%d5, [%a15] 8
	jnz	%d5, .L27
.LVL30:
	jz.t	%d2, 4, .L133
.LVL31:
	.loc 1 543 0
	ld.bu	%d2, [%a15] 12
	jnz	%d2, .L25
.LVL32:
.L24:
	.loc 1 556 0
	jnz	%d4, .L16
.LVL33:
.L43:
.LBE135:
.LBE134:
.LBB144:
.LBB145:
	.loc 1 691 0
	mov	%d2, 1
.L47:
	.loc 1 694 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d3, 0
	ld.a	%a2, [%a15+]4
	ld.hu	%d3, [%a2]0
	st.h	[%a15] 2, %d3
.LVL34:
.LBE145:
.LBE144:
.LBE169:
.LBE182:
	.loc 1 209 0
	jz	%d2, .L5
.LVL35:
.L16:
.LBB183:
.LBB176:
	.loc 1 726 0
	extr.u	%d4, %d15, 0, 16
	mov	%d5, 0
.LBE176:
.LBE183:
	.loc 1 133 0
	add	%d15, 1
.LVL36:
.LBB184:
.LBB177:
	.loc 1 726 0
	call	Com_Prv_SendIpdu
.LVL37:
.LBE177:
.LBE184:
	.loc 1 229 0
	lea	%a12, [%a12] 16
.LVL38:
	.loc 1 133 0
	jne	%d15, %d9, .L46
	j	.L134
.LVL39:
.L10:
.LBB185:
.LBB170:
.LBB156:
.LBB152:
	.loc 1 636 0
	ld.hu	%d4, [%a2] 2
	jz	%d4, .L40
	.loc 1 638 0
	add	%d4, -1
	extr.u	%d4, %d4, 0, 16
	st.h	[%a2] 2, %d4
	.loc 1 640 0
	jnz	%d2, .L41
.LVL40:
.L56:
	.loc 1 643 0
	mov.a	%a15, %d8
	addsc.a	%a2, %a15, %d3, 0
	ld.hu	%d2, [%a2] 10
.LVL41:
	jnz.t	%d2, 3, .L135
	.loc 1 656 0
	jz	%d4, .L43
.LVL42:
	.loc 1 663 0
	jz.t	%d2, 4, .L5
	.loc 1 665 0
	ld.hu	%d2, [%a2] 8
	jz	%d2, .L16
	.loc 1 667 0
	add	%d2, -1
	extr.u	%d2, %d2, 0, 16
	st.h	[%a2] 8, %d2
	.loc 1 669 0
	jnz	%d2, .L45
	j	.L16
.LVL43:
.L40:
	.loc 1 640 0
	jnz	%d2, .L50
.LVL44:
.L125:
	.loc 1 643 0
	add	%d2, %d8, %d3
	mov.a	%a2, %d2
	lea	%a15, [%a2] 8
	ld.hu	%d2, [%a15] 2
.LVL45:
	jz.t	%d2, 3, .L43
.LVL46:
.LBB146:
.LBB147:
	.loc 3 646 0
	andn	%d2, %d2, ~(-9)
	st.h	[%a15] 2, %d2
.LVL47:
.LBE147:
.LBE146:
	.loc 1 691 0
	mov	%d2, 1
	j	.L47
.LVL48:
.L22:
.LBE152:
.LBE156:
.LBB157:
.LBB140:
	.loc 1 550 0
	jnz	%d4, .L5
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d3, 0
	ld.bu	%d2, [%a15] 12
	jnz	%d2, .L34
.LVL49:
.LBB136:
.LBB137:
	.loc 3 646 0
	ld.h	%d2, [%a15] 10
	or	%d2, %d2, 8
	st.h	[%a15] 10, %d2
.LVL50:
.L34:
.LBE137:
.LBE136:
.LBE140:
.LBE157:
.LBE170:
.LBE185:
.LBE104:
	.loc 1 91 0
	mov	%d2, 0
	j	.L47
.LVL51:
.L41:
.LBB187:
.LBB186:
.LBB171:
.LBB158:
.LBB153:
	.loc 1 684 0
	jnz	%d4, .L5
.L50:
.LVL52:
.LBB149:
.LBB150:
	.loc 3 646 0
	add	%d2, %d8, %d3
	mov.a	%a2, %d2
	ld.h	%d2, [%a2] 10
	or	%d2, %d2, 8
	st.h	[%a2] 10, %d2
.LVL53:
.L45:
.LBE150:
.LBE149:
	.loc 1 691 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d3, 0
	mov	%d2, 0
	ld.hu	%d4, [%a15] 6
	jz	%d4, .L47
	j	.L5
.LVL54:
.L53:
	.loc 1 636 0
	ld.hu	%d4, [%a2] 2
	jz	%d4, .L125
	.loc 1 638 0
	add	%d4, -1
	extr.u	%d4, %d4, 0, 16
	st.h	[%a2] 2, %d4
	j	.L56
.LVL55:
.L14:
.LBE153:
.LBE158:
.LBB159:
.LBB123:
	.loc 1 442 0
	ld.hu	%d4, [%a15] 8
	jnz	%d4, .L5
.LVL56:
	jz.t	%d2, 4, .L136
.LVL57:
	.loc 1 461 0
	ld.bu	%d2, [%a15] 12
.LVL58:
	jnz	%d2, .L48
	j	.L16
.LVL59:
.L132:
.LBE123:
.LBE159:
.LBB160:
.LBB141:
.LBB138:
.LBB139:
	.loc 3 646 0
	andn	%d2, %d2, ~(-9)
	st.h	[%a15] 10, %d2
.LVL60:
.LBE139:
.LBE138:
	.loc 1 543 0
	ld.bu	%d2, [%a15] 12
	jz	%d2, .L24
	ld.hu	%d2, [%a15] 8
	jz	%d2, .L25
.LVL61:
.L126:
	.loc 1 545 0
	mov	%d2, 1
.LVL62:
	.loc 1 556 0
	jz	%d4, .L47
	j	.L16
.LVL63:
.L135:
.LBE141:
.LBE160:
.LBB161:
.LBB154:
.LBB151:
.LBB148:
	.loc 3 646 0
	andn	%d2, %d2, ~(-9)
	st.h	[%a2] 10, %d2
.LVL64:
.LBE148:
.LBE151:
	.loc 1 691 0
	jnz	%d4, .L16
	mov	%d2, 1
	j	.L47
.LVL65:
.L136:
.LBE154:
.LBE161:
.LBB162:
.LBB124:
	.loc 1 451 0
	ld.bu	%d2, [%a15] 12
.LVL66:
	jz	%d2, .L5
	j	.L48
.LVL67:
.L133:
.LBE124:
.LBE162:
.LBB163:
.LBB142:
	.loc 1 529 0
	ld.bu	%d2, [%a15] 12
	jz	%d2, .L137
.LVL68:
.L25:
	.loc 1 545 0
	mov.a	%a2, %d8
	addsc.a	%a15, %a2, %d3, 0
	ld.a	%a2, [%a15]0
	ld.hu	%d2, [%a2] 4
	st.h	[%a15] 8, %d2
	j	.L126
.LVL69:
.L131:
.LBE142:
.LBE163:
.LBB164:
.LBB133:
.LBB131:
.LBB132:
	.loc 3 646 0
	andn	%d2, %d2, ~(-9)
	st.h	[%a2] 10, %d2
.LVL70:
	j	.L16
.LVL71:
.L27:
.LBE132:
.LBE131:
.LBE133:
.LBE164:
.LBB165:
.LBB143:
	.loc 1 536 0
	jnz	%d4, .L5
	ld.bu	%d2, [%a15] 12
	.loc 1 506 0
	eq	%d2, %d2, 0
.LVL72:
	j	.L47
.LVL73:
.L137:
	.loc 1 536 0
	jnz	%d4, .L5
.LBE143:
.LBE165:
.LBB166:
.LBB155:
	.loc 1 691 0
	mov	%d2, 1
	j	.L47
.LBE155:
.LBE166:
.LBE171:
.LBE186:
.LBE187:
.LFE162:
	.size	Com_Prv_InternalMainFunctionTx, .-Com_Prv_InternalMainFunctionTx
.section .text.Com_IsTxScheduled,"ax",@progbits
	.align 1
	.global	Com_IsTxScheduled
	.type	Com_IsTxScheduled, @function
Com_IsTxScheduled:
.LFB169:
	.loc 1 842 0
.LVL74:
	.loc 1 857 0
	movh.a	%a15, hi:Com_InitStatus_en
	ld.bu	%d15, [%a15] lo:Com_InitStatus_en
	jz	%d15, .L143
.LVL75:
	.loc 1 861 0
	lt.u	%d15, %d4, 140
	jz	%d15, .L144
.LVL76:
	.loc 1 880 0
	movh.a	%a15, hi:Com_TxIpduRam_ast
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:Com_TxIpduRam_ast
	madd	%d2, %d15, %d4, 16
	mov.a	%a15, %d2
	.loc 1 850 0
	mov	%d2, 1
.LBB188:
.LBB189:
	.loc 3 599 0
	ld.bu	%d15, [%a15] 13
.LBE189:
.LBE188:
	.loc 1 880 0
	and	%d15, %d15, 3
	jeq	%d15, 3, .L145
.LVL77:
	.loc 1 936 0
	ret
.LVL78:
.L145:
	.loc 1 894 0
	ld.hu	%d2, [%a15] 6
	.loc 1 850 0
	lt.u	%d2, %d2, 2
.LVL79:
	.loc 1 936 0
	ret
.LVL80:
.L143:
	.loc 1 859 0
	mov	%e4, 50
.LVL81:
	mov	%d6, 152
	mov	%d7, 2
	call	Det_ReportError
.LVL82:
	.loc 1 850 0
	mov	%d2, 1
	ret
.LVL83:
.L144:
	.loc 1 863 0
	mov	%e4, 50
.LVL84:
	mov	%d6, 152
	mov	%d7, 1
	call	Det_ReportError
.LVL85:
	.loc 1 850 0
	mov	%d2, 1
	ret
.LFE169:
	.size	Com_IsTxScheduled, .-Com_IsTxScheduled
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
	.uaword	.LFB169
	.uaword	.LFE169-.LFB169
	.align 2
.LEFDE2:
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
	.uaword	0x11f4
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_MainFunctionTx.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x160
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
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
	.byte	0x4
	.byte	0x94
	.uaword	0x28b
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x5
	.byte	0x60
	.uaword	0x1be
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x6
	.byte	0x2c
	.uaword	0x1e9
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x6
	.byte	0x30
	.uaword	0x1e9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1be
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.byte	0x1
	.byte	0x7
	.byte	0x7d
	.uaword	0x323
	.uleb128 0x6
	.string	"COM_UNINIT"
	.sleb128 0
	.uleb128 0x6
	.string	"COM_INIT"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Com_StatusType"
	.byte	0x7
	.byte	0x80
	.uaword	0x302
	.uleb128 0x7
	.string	"Com_IpduId_tuo"
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x1e9
	.uleb128 0x7
	.string	"Com_MainFunc_tuo"
	.byte	0x8
	.uahalf	0x23e
	.uaword	0x1be
	.uleb128 0x7
	.string	"Com_NumOfIpdus_tuo"
	.byte	0x8
	.uahalf	0x240
	.uaword	0x1e9
	.uleb128 0x7
	.string	"Com_TimeBase_tuo"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x1e9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1e9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x225
	.uleb128 0x8
	.byte	0x1
	.byte	0x9
	.byte	0x32
	.uaword	0x469
	.uleb128 0x9
	.string	"isEventTrig_u1"
	.byte	0x9
	.byte	0x34
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"isModeChangd_u1"
	.byte	0x9
	.byte	0x35
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"isSigTriggered_u1"
	.byte	0x9
	.byte	0x36
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"isTimeoutReq_u1"
	.byte	0x9
	.byte	0x37
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"ignoreRepetitions_u1"
	.byte	0x9
	.byte	0x38
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"isSwtIpduTxMode_u1"
	.byte	0x9
	.byte	0x39
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Com_SendIpduInfo_tst"
	.byte	0x9
	.byte	0x3a
	.uaword	0x3a9
	.uleb128 0x8
	.byte	0x8
	.byte	0x9
	.byte	0x4b
	.uaword	0x50f
	.uleb128 0xa
	.string	"timePeriod_u16"
	.byte	0x9
	.byte	0x4d
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"timeOffset_u16"
	.byte	0x9
	.byte	0x4e
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"repetitionPeriod_u16"
	.byte	0x9
	.byte	0x4f
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"numOfRepetitions_u8"
	.byte	0x9
	.byte	0x50
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"mode_u8"
	.byte	0x9
	.byte	0x57
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"Com_TransModeInfo_tst"
	.byte	0x9
	.byte	0x5b
	.uaword	0x485
	.uleb128 0x3
	.string	"Com_TMConstPtr_tpcst"
	.byte	0x9
	.byte	0x65
	.uaword	0x548
	.uleb128 0x4
	.byte	0x4
	.uaword	0x54e
	.uleb128 0xb
	.uaword	0x50f
	.uleb128 0xc
	.byte	0x10
	.byte	0x9
	.uahalf	0x524
	.uaword	0x626
	.uleb128 0xd
	.string	"currentTxModePtr_pcst"
	.byte	0x9
	.uahalf	0x526
	.uaword	0x52c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"cntrMinDelayTime_u16"
	.byte	0x9
	.uahalf	0x52d
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"cntrTimePeriod_u16"
	.byte	0x9
	.uahalf	0x52e
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.string	"cntrRepPeriod_u16"
	.byte	0x9
	.uahalf	0x532
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"txFlags_u16"
	.byte	0x9
	.uahalf	0x555
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xd
	.string	"cntrRepetitions_u8"
	.byte	0x9
	.uahalf	0x556
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"transMode_u8"
	.byte	0x9
	.uahalf	0x562
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0x7
	.string	"Com_TxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x564
	.uaword	0x553
	.uleb128 0x7
	.string	"Com_TxIpduRam_tpst"
	.byte	0x9
	.uahalf	0x56d
	.uaword	0x65f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x626
	.uleb128 0xc
	.byte	0x6
	.byte	0x9
	.uahalf	0x584
	.uaword	0x6bd
	.uleb128 0xd
	.string	"rxIPduLength_uo"
	.byte	0x9
	.uahalf	0x586
	.uaword	0x2db
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"cntrRxTimeout_u16"
	.byte	0x9
	.uahalf	0x58b
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"rxFlags_u8"
	.byte	0x9
	.uahalf	0x5a6
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.string	"Com_RxIpduRamData_tst"
	.byte	0x9
	.uahalf	0x5a8
	.uaword	0x665
	.uleb128 0xc
	.byte	0x6
	.byte	0x9
	.uahalf	0x5ea
	.uaword	0x733
	.uleb128 0xd
	.string	"idFirstIpdu_uo"
	.byte	0x9
	.uahalf	0x5ec
	.uaword	0x339
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"numOfIpdus_uo"
	.byte	0x9
	.uahalf	0x5ed
	.uaword	0x369
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"timeBaseInMs_uo"
	.byte	0x9
	.uahalf	0x5ee
	.uaword	0x384
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x7
	.string	"Com_MainFunctionCfgType_tst"
	.byte	0x9
	.uahalf	0x5ef
	.uaword	0x6db
	.uleb128 0xc
	.byte	0xc
	.byte	0x9
	.uahalf	0x5f5
	.uaword	0x7ab
	.uleb128 0xd
	.string	"sigType_pau8"
	.byte	0x9
	.uahalf	0x5f7
	.uaword	0x2f0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"sigType_pau16"
	.byte	0x9
	.uahalf	0x5fd
	.uaword	0x39d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"sigType_pau32"
	.byte	0x9
	.uahalf	0x5ff
	.uaword	0x3a3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x7
	.string	"Com_Prv_xRxRamBuf_tst"
	.byte	0x9
	.uahalf	0x634
	.uaword	0x757
	.uleb128 0xe
	.string	"Bfx_Prv_GetBit_u16u8_u8_Inl"
	.byte	0x3
	.uahalf	0x1d1
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0x80f
	.uleb128 0xf
	.string	"Data"
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0x1e9
	.uleb128 0xf
	.string	"BitPn"
	.byte	0x3
	.uahalf	0x1d1
	.uaword	0x1be
	.byte	0
	.uleb128 0x10
	.string	"Bfx_Prv_PutBit_u16u8u8_Inl"
	.byte	0x3
	.uahalf	0x281
	.byte	0x1
	.byte	0x3
	.uaword	0x86e
	.uleb128 0xf
	.string	"Data"
	.byte	0x3
	.uahalf	0x281
	.uaword	0x39d
	.uleb128 0xf
	.string	"BitPn"
	.byte	0x3
	.uahalf	0x281
	.uaword	0x1be
	.uleb128 0xf
	.string	"Status"
	.byte	0x3
	.uahalf	0x281
	.uaword	0x270
	.uleb128 0x11
	.string	"tmp_u8"
	.byte	0x3
	.uahalf	0x283
	.uaword	0x1be
	.byte	0
	.uleb128 0xe
	.string	"Bfx_Prv_GetBits_u8u8u8_u8_Inl"
	.byte	0x3
	.uahalf	0x255
	.byte	0x1
	.uaword	0x1be
	.byte	0x3
	.uaword	0x8c9
	.uleb128 0xf
	.string	"Data"
	.byte	0x3
	.uahalf	0x255
	.uaword	0x1be
	.uleb128 0xf
	.string	"BitStartPn"
	.byte	0x3
	.uahalf	0x255
	.uaword	0x1be
	.uleb128 0xf
	.string	"BitLn"
	.byte	0x3
	.uahalf	0x255
	.uaword	0x1be
	.byte	0
	.uleb128 0xe
	.string	"Com_Prv_CheckTxIPduStatus"
	.byte	0x2
	.uahalf	0x3df
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0x91b
	.uleb128 0xf
	.string	"idIpdu_uo"
	.byte	0x2
	.uahalf	0x3df
	.uaword	0x2ca
	.uleb128 0x11
	.string	"txIPduStatus_b"
	.byte	0x2
	.uahalf	0x3e1
	.uaword	0x270
	.byte	0
	.uleb128 0x12
	.string	"SchM_Enter_Com_TxIpduProtArea_MAINFUNCTIONTX"
	.byte	0xa
	.byte	0xc9
	.byte	0x1
	.byte	0x3
	.uleb128 0x12
	.string	"SchM_Exit_Com_TxIpduProtArea_MAINFUNCTIONTX"
	.byte	0xa
	.byte	0xcd
	.byte	0x1
	.byte	0x3
	.uleb128 0x10
	.string	"Com_Prv_MainFunctionTx_SendIPdu"
	.byte	0x1
	.uahalf	0x2c4
	.byte	0x1
	.byte	0x3
	.uaword	0x9cd
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x2c4
	.uaword	0x2a0
	.uleb128 0x11
	.string	"sendIpduFlag_st"
	.byte	0x1
	.uahalf	0x2c6
	.uaword	0x469
	.byte	0
	.uleb128 0xe
	.string	"Com_Prv_IsValidTxIpduId"
	.byte	0x2
	.uahalf	0x5b4
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0xa05
	.uleb128 0xf
	.string	"idPdu_uo"
	.byte	0x2
	.uahalf	0x5b4
	.uaword	0x2ca
	.byte	0
	.uleb128 0xe
	.string	"Com_Prv_MainFunctionTx_Modes"
	.byte	0x1
	.uahalf	0x151
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0xa55
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x151
	.uaword	0x2a0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x154
	.uaword	0x644
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x155
	.uaword	0x270
	.byte	0
	.uleb128 0xe
	.string	"Com_Prv_MainFunctionTx_DirectMode"
	.byte	0x1
	.uahalf	0x198
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0xaaa
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x198
	.uaword	0x2a0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x19b
	.uaword	0x644
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x19c
	.uaword	0x270
	.byte	0
	.uleb128 0xe
	.string	"Com_Prv_MainFunctionTx_MixedMode"
	.byte	0x1
	.uahalf	0x1e3
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0xafe
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x2a0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1e6
	.uaword	0x644
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1e7
	.uaword	0x270
	.byte	0
	.uleb128 0xe
	.string	"Com_Prv_MainFunctionTx_NoneMode"
	.byte	0x1
	.uahalf	0x23e
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0xb51
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x23e
	.uaword	0x2a0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x241
	.uaword	0x644
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x242
	.uaword	0x270
	.byte	0
	.uleb128 0xe
	.string	"Com_Prv_MainFunctionTx_PeriodicMode"
	.byte	0x1
	.uahalf	0x273
	.byte	0x1
	.uaword	0x270
	.byte	0x3
	.uaword	0xba8
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x273
	.uaword	0x2a0
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x276
	.uaword	0x644
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x277
	.uaword	0x270
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"Com_Prv_InternalMainFunctionTx"
	.byte	0x1
	.byte	0x5a
	.byte	0x1
	.uaword	.LFB162
	.uaword	.LFE162
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xfb1
	.uleb128 0x16
	.string	"idTxMainFunc_uo"
	.byte	0x1
	.byte	0x5a
	.uaword	0x350
	.uaword	.LLST0
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x18
	.uaword	.LASF1
	.byte	0x1
	.byte	0x67
	.uaword	0x644
	.uaword	.LLST1
	.uleb128 0x19
	.string	"idxIdTxIpdu_qu16"
	.byte	0x1
	.byte	0x68
	.uaword	0x2a0
	.uaword	.LLST2
	.uleb128 0x19
	.string	"numOfIpdus_qu16"
	.byte	0x1
	.byte	0x69
	.uaword	0x2a0
	.uaword	.LLST3
	.uleb128 0x1a
	.uaword	.LASF2
	.byte	0x1
	.byte	0x6a
	.uaword	0x270
	.byte	0x1
	.byte	0x52
	.uleb128 0x1b
	.uaword	0x8c9
	.uaword	.LBB105
	.uaword	.LBE105
	.byte	0x1
	.byte	0x88
	.uaword	0xc9a
	.uleb128 0x1c
	.uaword	0x8f1
	.uaword	.LLST4
	.uleb128 0x1d
	.uaword	.LBB106
	.uaword	.LBE106
	.uleb128 0x1e
	.uaword	0x903
	.uleb128 0x1f
	.uaword	0x7c9
	.uaword	.LBB107
	.uaword	.LBE107
	.byte	0x2
	.uahalf	0x3e3
	.uleb128 0x1c
	.uaword	0x800
	.uaword	.LLST5
	.uleb128 0x20
	.uaword	0x7f3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x80f
	.uaword	.LBB109
	.uaword	.LBE109
	.byte	0x1
	.byte	0x8f
	.uaword	0xcdc
	.uleb128 0x1c
	.uaword	0x84f
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	0x841
	.uaword	.LLST7
	.uleb128 0x1c
	.uaword	0x834
	.uaword	.LLST8
	.uleb128 0x1d
	.uaword	.LBB110
	.uaword	.LBE110
	.uleb128 0x21
	.uaword	0x85e
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0xa05
	.uaword	.LBB111
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0xa6
	.uaword	0xf63
	.uleb128 0x1c
	.uaword	0xa30
	.uaword	.LLST10
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1e
	.uaword	0xa3c
	.uleb128 0x21
	.uaword	0xa48
	.uaword	.LLST11
	.uleb128 0x23
	.uaword	0x86e
	.uaword	.LBB113
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.uahalf	0x163
	.uaword	0xd37
	.uleb128 0x1c
	.uaword	0x8ba
	.uaword	.LLST12
	.uleb128 0x1c
	.uaword	0x8a7
	.uaword	.LLST13
	.uleb128 0x20
	.uaword	0x89a
	.byte	0
	.uleb128 0x23
	.uaword	0xa55
	.uaword	.LBB116
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.uahalf	0x166
	.uaword	0xda4
	.uleb128 0x1c
	.uaword	0xa85
	.uaword	.LLST14
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x1e
	.uaword	0xa91
	.uleb128 0x21
	.uaword	0xa9d
	.uaword	.LLST15
	.uleb128 0x1f
	.uaword	0x80f
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.uahalf	0x1af
	.uleb128 0x1c
	.uaword	0x84f
	.uaword	.LLST16
	.uleb128 0x1c
	.uaword	0x841
	.uaword	.LLST17
	.uleb128 0x20
	.uaword	0x834
	.uleb128 0x1d
	.uaword	.LBB119
	.uaword	.LBE119
	.uleb128 0x21
	.uaword	0x85e
	.uaword	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0xafe
	.uaword	.LBB129
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.uahalf	0x16e
	.uaword	0xe11
	.uleb128 0x1c
	.uaword	0xb2c
	.uaword	.LLST19
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0xa0
	.uleb128 0x1e
	.uaword	0xb38
	.uleb128 0x21
	.uaword	0xb44
	.uaword	.LLST20
	.uleb128 0x1f
	.uaword	0x80f
	.uaword	.LBB131
	.uaword	.LBE131
	.byte	0x1
	.uahalf	0x250
	.uleb128 0x1c
	.uaword	0x84f
	.uaword	.LLST21
	.uleb128 0x1c
	.uaword	0x841
	.uaword	.LLST22
	.uleb128 0x20
	.uaword	0x834
	.uleb128 0x1d
	.uaword	.LBB132
	.uaword	.LBE132
	.uleb128 0x21
	.uaword	0x85e
	.uaword	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0xaaa
	.uaword	.LBB134
	.uaword	.Ldebug_ranges0+0xb8
	.byte	0x1
	.uahalf	0x16a
	.uaword	0xebd
	.uleb128 0x1c
	.uaword	0xad9
	.uaword	.LLST24
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0xb8
	.uleb128 0x1e
	.uaword	0xae5
	.uleb128 0x21
	.uaword	0xaf1
	.uaword	.LLST25
	.uleb128 0x24
	.uaword	0x80f
	.uaword	.LBB136
	.uaword	.LBE136
	.byte	0x1
	.uahalf	0x229
	.uaword	0xe80
	.uleb128 0x1c
	.uaword	0x84f
	.uaword	.LLST26
	.uleb128 0x1c
	.uaword	0x841
	.uaword	.LLST27
	.uleb128 0x20
	.uaword	0x834
	.uleb128 0x1d
	.uaword	.LBB137
	.uaword	.LBE137
	.uleb128 0x21
	.uaword	0x85e
	.uaword	.LLST26
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x80f
	.uaword	.LBB138
	.uaword	.LBE138
	.byte	0x1
	.uahalf	0x1fd
	.uleb128 0x1c
	.uaword	0x84f
	.uaword	.LLST29
	.uleb128 0x1c
	.uaword	0x841
	.uaword	.LLST30
	.uleb128 0x20
	.uaword	0x834
	.uleb128 0x1d
	.uaword	.LBB139
	.uaword	.LBE139
	.uleb128 0x21
	.uaword	0x85e
	.uaword	.LLST29
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0xb51
	.uaword	.LBB144
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.uahalf	0x172
	.uleb128 0x1c
	.uaword	0xb83
	.uaword	.LLST32
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0xe8
	.uleb128 0x1e
	.uaword	0xb8f
	.uleb128 0x21
	.uaword	0xb9b
	.uaword	.LLST33
	.uleb128 0x23
	.uaword	0x80f
	.uaword	.LBB146
	.uaword	.Ldebug_ranges0+0x118
	.byte	0x1
	.uahalf	0x28a
	.uaword	0xf24
	.uleb128 0x1c
	.uaword	0x84f
	.uaword	.LLST34
	.uleb128 0x1c
	.uaword	0x841
	.uaword	.LLST35
	.uleb128 0x20
	.uaword	0x834
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0x118
	.uleb128 0x21
	.uaword	0x85e
	.uaword	.LLST34
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x80f
	.uaword	.LBB149
	.uaword	.LBE149
	.byte	0x1
	.uahalf	0x2af
	.uleb128 0x1c
	.uaword	0x84f
	.uaword	.LLST37
	.uleb128 0x1c
	.uaword	0x841
	.uaword	.LLST38
	.uleb128 0x20
	.uaword	0x834
	.uleb128 0x1d
	.uaword	.LBB150
	.uaword	.LBE150
	.uleb128 0x21
	.uaword	0x85e
	.uaword	.LLST37
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x97e
	.uaword	.LBB172
	.uaword	.Ldebug_ranges0+0x130
	.byte	0x1
	.byte	0xd3
	.uleb128 0x1c
	.uaword	0x9a8
	.uaword	.LLST40
	.uleb128 0x17
	.uaword	.Ldebug_ranges0+0x130
	.uleb128 0x1e
	.uaword	0x9b4
	.uleb128 0x27
	.uaword	.LVL17
	.uaword	0x11a1
	.uaword	0xf9e
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x28
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL37
	.uaword	0x11a1
	.uleb128 0x28
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2a
	.byte	0x1
	.string	"Com_IsTxScheduled"
	.byte	0x1
	.uahalf	0x349
	.byte	0x1
	.uaword	0x270
	.uaword	.LFB169
	.uaword	.LFE169
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x10b1
	.uleb128 0x2b
	.string	"idTxPdu_uo"
	.byte	0x1
	.uahalf	0x349
	.uaword	0x2ca
	.uaword	.LLST41
	.uleb128 0x2b
	.string	"callerTaskCycleInMs_u16"
	.byte	0x1
	.uahalf	0x349
	.uaword	0x1e9
	.uaword	.LLST42
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x34b
	.uaword	0x644
	.uleb128 0x2c
	.string	"isTxScheduled_b"
	.byte	0x1
	.uahalf	0x350
	.uaword	0x270
	.uaword	.LLST43
	.uleb128 0x24
	.uaword	0x86e
	.uaword	.LBB188
	.uaword	.LBE188
	.byte	0x1
	.uahalf	0x370
	.uaword	0x106c
	.uleb128 0x1c
	.uaword	0x8ba
	.uaword	.LLST44
	.uleb128 0x1c
	.uaword	0x8a7
	.uaword	.LLST45
	.uleb128 0x20
	.uaword	0x89a
	.byte	0
	.uleb128 0x27
	.uaword	.LVL82
	.uaword	0x11c8
	.uaword	0x1090
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0x98
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
	.uaword	.LVL85
	.uaword	0x11c8
	.uleb128 0x28
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x28
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x9
	.byte	0x98
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
	.uleb128 0x2d
	.uaword	0x6bd
	.uaword	0x10bc
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_RxIpduRam_ast"
	.byte	0xb
	.byte	0x6b
	.uaword	0x10b1
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x626
	.uaword	0x10e2
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_TxIpduRam_ast"
	.byte	0xb
	.byte	0x6e
	.uaword	0x10d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x2d
	.uaword	0x7ab
	.uaword	0x1108
	.uleb128 0x2e
	.byte	0
	.uleb128 0x30
	.string	"Com_Prv_xRxRamBuf_acst"
	.byte	0xb
	.uahalf	0x9f4
	.uaword	0x1129
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x10fd
	.uleb128 0x2d
	.uaword	0x733
	.uaword	0x1139
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_MainFunctionCfg_acst"
	.byte	0xc
	.byte	0xb1
	.uaword	0x115b
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x112e
	.uleb128 0x30
	.string	"Com_InitStatus_en"
	.byte	0xd
	.uahalf	0xec7
	.uaword	0x323
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"Com_NONE_TransModeInfo_cst"
	.byte	0xd
	.uahalf	0xf12
	.uaword	0x54e
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"Com_Prv_SendIpdu"
	.byte	0xd
	.uahalf	0xd86
	.byte	0x1
	.byte	0x1
	.uaword	0x11c8
	.uleb128 0x32
	.uaword	0x2ca
	.uleb128 0x32
	.uaword	0x469
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xe
	.byte	0x70
	.byte	0x1
	.uaword	0x2b4
	.byte	0x1
	.uleb128 0x32
	.uaword	0x1e9
	.uleb128 0x32
	.uaword	0x1be
	.uleb128 0x32
	.uaword	0x1be
	.uleb128 0x32
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x2e
	.byte	0
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
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x1a
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE162
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL24
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL24
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL5
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LFE162
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x3
	.byte	0x8c
	.sleb128 10
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL8
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL8
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39
	.uaword	.LFE162
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL9
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LFE162
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL9
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LFE162
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL10
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL69
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL28
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL59
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL67
	.uaword	.LVL69
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL71
	.uaword	.LFE162
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL72
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL73
	.uaword	.LFE162
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL39
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL51
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL39
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL74
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL81
	.uaword	.LVL83
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL84
	.uaword	.LFE169
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL74
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL81
	.uaword	.LVL83
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL84
	.uaword	.LFE169
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL74
	.uaword	.LVL77
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL78
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL80
	.uaword	.LFE169
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL76
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL76
	.uaword	.LVL80
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
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
	.uaword	.LFB162
	.uaword	.LFE162-.LFB162
	.uaword	.LFB169
	.uaword	.LFE169-.LFB169
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	.LBB187
	.uaword	.LBE187
	.uaword	0
	.uaword	0
	.uaword	.LBB111
	.uaword	.LBE111
	.uaword	.LBB178
	.uaword	.LBE178
	.uaword	.LBB180
	.uaword	.LBE180
	.uaword	.LBB182
	.uaword	.LBE182
	.uaword	.LBB185
	.uaword	.LBE185
	.uaword	.LBB186
	.uaword	.LBE186
	.uaword	0
	.uaword	0
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	.LBB127
	.uaword	.LBE127
	.uaword	0
	.uaword	0
	.uaword	.LBB116
	.uaword	.LBE116
	.uaword	.LBB125
	.uaword	.LBE125
	.uaword	.LBB126
	.uaword	.LBE126
	.uaword	.LBB128
	.uaword	.LBE128
	.uaword	.LBB159
	.uaword	.LBE159
	.uaword	.LBB162
	.uaword	.LBE162
	.uaword	0
	.uaword	0
	.uaword	.LBB129
	.uaword	.LBE129
	.uaword	.LBB164
	.uaword	.LBE164
	.uaword	0
	.uaword	0
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	.LBB157
	.uaword	.LBE157
	.uaword	.LBB160
	.uaword	.LBE160
	.uaword	.LBB163
	.uaword	.LBE163
	.uaword	.LBB165
	.uaword	.LBE165
	.uaword	0
	.uaword	0
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	.LBB158
	.uaword	.LBE158
	.uaword	.LBB161
	.uaword	.LBE161
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	0
	.uaword	0
	.uaword	.LBB146
	.uaword	.LBE146
	.uaword	.LBB151
	.uaword	.LBE151
	.uaword	0
	.uaword	0
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	.LBB181
	.uaword	.LBE181
	.uaword	.LBB183
	.uaword	.LBE183
	.uaword	.LBB184
	.uaword	.LBE184
	.uaword	0
	.uaword	0
	.uaword	.LFB162
	.uaword	.LFE162
	.uaword	.LFB169
	.uaword	.LFE169
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"idTxPdu_qu16"
.LASF1:
	.string	"txIpduRamPtr_pst"
.LASF2:
	.string	"sendIPdu_b"
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Com_Prv_SendIpdu,STT_FUNC,0
	.extern	Com_TxIpduRam_ast,STT_OBJECT,-1
	.extern	Com_MainFunctionCfg_acst,STT_OBJECT,-1
	.extern	Com_InitStatus_en,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
