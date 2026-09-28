	.file	"Com_EnableRxDm.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Com_ReceptionDMControl,"ax",@progbits
	.align 1
	.global	Com_ReceptionDMControl
	.type	Com_ReceptionDMControl, @function
Com_ReceptionDMControl:
.LFB162:
	.file 1 "bsw\\Com\\src\\Com_EnableRxDm.c"
	.loc 1 79 0
.LVL0:
	.loc 1 82 0
	movh.a	%a15, hi:Com_InitStatus_en
	ld.bu	%d15, [%a15] lo:Com_InitStatus_en
	jz	%d15, .L38
	.loc 1 86 0
	jz.a	%a4, .L39
.LVL1:
.LBB30:
.LBB31:
.LBB32:
	.loc 1 163 0
	ld.bu	%d5, [%a4]0
.LBE32:
.LBE31:
.LBB34:
.LBB35:
	.loc 1 207 0
	movh.a	%a12, hi:Com_IpduGrpVector_DM_au8
.LBE35:
.LBE34:
.LBB38:
.LBB33:
	.loc 1 163 0
	and	%d5, %d5, 63
	st.b	[%a4]0, %d5
.LVL2:
.LBE33:
.LBE38:
.LBB39:
.LBB36:
	.loc 1 207 0
	ld.bu	%d2, [%a12] lo:Com_IpduGrpVector_DM_au8
	movh.a	%a5, hi:Com_IpduCounter_DM_au8
	lea	%a5, [%a5] lo:Com_IpduCounter_DM_au8
	jeq	%d5, %d2, .L4
	.loc 1 231 0
	movh.a	%a7, hi:Com_Prv_xIpduGrpCfg_acst
	movh.a	%a6, hi:Com_Prv_xIPduGrp_IpduRefCfg_acuo
	.loc 1 210 0
	xor	%d2, %d5
.LVL3:
	mov	%d4, 0
	.loc 1 226 0
	mov	%d6, 1
	.loc 1 231 0
	lea	%a7, [%a7] lo:Com_Prv_xIpduGrpCfg_acst
	lea	%a6, [%a6] lo:Com_Prv_xIPduGrp_IpduRefCfg_acuo
.LVL4:
.L8:
	.loc 1 218 0
	jz.t	%d2, 0, .L5
.LVL5:
	and	%d15, %d4, 255
	.loc 1 231 0
	addsc.a	%a15, %a7, %d15, 2
	.loc 1 226 0
	extr.u	%d3, %d5, %d15, 1
	.loc 1 231 0
	ld.hu	%d15, [%a15]0
	.loc 1 226 0
	sel	%d3, %d3, %d6, 255
.LVL6:
	.loc 1 231 0
	addsc.a	%a3, %a6, %d15, 1
.LVL7:
	.loc 1 233 0
	ld.hu	%d15, [%a15] 2
.LVL8:
	.loc 1 235 0
	jz	%d15, .L5
	mov.a	%a15, %d15
	add.a	%a15, -1
.LVL9:
.L7:
	.loc 1 239 0
	ld.hu	%d15, [%a3+]2
.LVL10:
	.loc 1 238 0
	addsc.a	%a2, %a5, %d15, 0
	ld.bu	%d15, [%a2]0
	add	%d15, %d3
	st.b	[%a2]0, %d15
.LVL11:
	.loc 1 242 0
	loop	%a15, .L7
	ld.bu	%d5, [%a4]0
.LVL12:
.L5:
	.loc 1 247 0
	sh	%d2, -1
.LVL13:
	add	%d4, 1
.LVL14:
	.loc 1 249 0
	jnz	%d2, .L8
	.loc 1 252 0
	st.b	[%a12] lo:Com_IpduGrpVector_DM_au8, %d5
.LVL15:
.L4:
	.loc 1 226 0
	movh	%d4, hi:Com_RxIpduRam_ast
	addi	%d4, %d4, lo:Com_RxIpduRam_ast
.LBE36:
.LBE39:
.LBB40:
.LBB41:
	.loc 1 292 0
	movh	%d3, hi:Com_Prv_xRxIpduCfg_acst
.LBE41:
.LBE40:
.LBB48:
.LBB37:
	.loc 1 226 0
	mov.a	%a2, %d4
	mov	%d15, 0
.LBE37:
.LBE48:
.LBB49:
.LBB42:
	.loc 1 292 0
	addi	%d3, %d3, lo:Com_Prv_xRxIpduCfg_acst
	.loc 1 300 0
	mov	%d5, -1
	lea	%a15, 119
.LVL16:
.L13:
.LBE42:
.LBE49:
	.loc 1 111 0
	addsc.a	%a3, %a5, %d15, 0
	ld.bu	%d2, [%a3]0
	jz	%d2, .L9
.LVL17:
.LBB50:
.LBB51:
	.file 2 ".\\output\\inc/..\\..\\bsw\\Bfx\\api\\Bfx_Bit_Inl.h"
	.loc 2 511 0
	ld.bu	%d2, [%a2] 4
.LBE51:
.LBE50:
	.loc 1 115 0
	jnz.t	%d2, 1, .L10
.LVL18:
.LBB52:
.LBB43:
	.loc 1 292 0
	madd	%d2, %d3, %d15, 28
	mov.a	%a3, %d2
	ld.hu	%d2, [%a3] 20
	jz	%d2, .L40
.LVL19:
	.loc 1 300 0
	ld.hu	%d2, [%a3] 18
	jnz	%d2, .L41
	madd	%d2, %d4, %d15, 6
	mov.a	%a3, %d2
	st.h	[%a3] 2, %d5
.LVL20:
.LBE43:
.LBE52:
.LBB53:
.LBB54:
	.loc 2 698 0
	ld.bu	%d2, [%a2] 4
	or	%d2, %d2, 2
	st.b	[%a2] 4, %d2
.LVL21:
.L10:
.LBE54:
.LBE53:
	.loc 1 130 0 discriminator 2
	add.a	%a2, 6
.LVL22:
	.loc 1 109 0 discriminator 2
	add	%d15, 1
.LVL23:
	loop	%a15, .L13
.L42:
	ret
.L9:
	.loc 1 125 0
	ld.bu	%d2, [%a2] 4
.LVL24:
	jz.t	%d2, 1, .L10
.LVL25:
.LBB56:
.LBB57:
	.loc 2 698 0
	andn	%d2, %d2, ~(-3)
	st.b	[%a2] 4, %d2
.LVL26:
.LBE57:
.LBE56:
	.loc 1 109 0
	add	%d15, 1
.LVL27:
	.loc 1 130 0
	add.a	%a2, 6
.LVL28:
	.loc 1 109 0
	loop	%a15, .L13
	j	.L42
.LVL29:
.L40:
.LBB58:
.LBB44:
	.loc 1 300 0
	ld.hu	%d2, [%a3] 18
	jnz	%d2, .L14
	madd	%d6, %d4, %d15, 6
	mov.a	%a3, %d6
	st.h	[%a3] 2, %d5
	j	.L10
.LVL30:
.L41:
	madd	%d6, %d4, %d15, 6
	add	%d2, 1
	mov.a	%a3, %d6
	st.h	[%a3] 2, %d2
.LVL31:
.LBE44:
.LBE58:
.LBB59:
.LBB55:
	.loc 2 698 0
	ld.bu	%d2, [%a2] 4
	or	%d2, %d2, 2
	st.b	[%a2] 4, %d2
.LVL32:
	j	.L10
.LVL33:
.L14:
.LBE55:
.LBE59:
.LBB60:
.LBB45:
	.loc 1 300 0
	madd	%d6, %d4, %d15, 6
	add	%d2, 1
.LBE45:
.LBE60:
	.loc 1 130 0
	add.a	%a2, 6
.LVL34:
.LBB61:
.LBB46:
	.loc 1 300 0
	mov.a	%a3, %d6
.LBE46:
.LBE61:
	.loc 1 109 0
	add	%d15, 1
.LVL35:
.LBB62:
.LBB47:
	.loc 1 300 0
	st.h	[%a3] 2, %d2
.LBE47:
.LBE62:
	.loc 1 109 0
	loop	%a15, .L13
	j	.L42
.LVL36:
.L38:
.LBE30:
	.loc 1 84 0
	mov	%e4, 50
	mov	%d6, 6
	mov	%d7, 2
	j	Det_ReportError
.LVL37:
.L39:
	.loc 1 88 0
	mov	%e4, 50
	mov	%d6, 6
	mov	%d7, 3
	j	Det_ReportError
.LVL38:
.LFE162:
	.size	Com_ReceptionDMControl, .-Com_ReceptionDMControl
.section .text.Com_Prv_EnableRxDeadlineMonitoring,"ax",@progbits
	.align 1
	.global	Com_Prv_EnableRxDeadlineMonitoring
	.type	Com_Prv_EnableRxDeadlineMonitoring, @function
Com_Prv_EnableRxDeadlineMonitoring:
.LFB165:
	.loc 1 271 0
.LVL39:
	.loc 1 292 0
	movh.a	%a15, hi:Com_Prv_xRxIpduCfg_acst
	mov.d	%d2, %a15
	.loc 1 300 0
	mov.u	%d3, 65535
	.loc 1 292 0
	addi	%d15, %d2, lo:Com_Prv_xRxIpduCfg_acst
	madd	%d5, %d15, %d4, 28
	mov.a	%a15, %d5
	ld.hu	%d2, [%a15] 20
	.loc 1 300 0
	ld.hu	%d15, [%a15] 18
	.loc 1 284 0
	ne	%d2, %d2, 0
.LVL40:
	.loc 1 300 0
	jz	%d15, .L44
	.loc 1 300 0 is_stmt 0 discriminator 1
	add	%d15, 1
	extr.u	%d3, %d15, 0, 16
.L44:
	.loc 1 300 0 discriminator 4
	movh.a	%a15, hi:Com_RxIpduRam_ast
	mov.d	%d5, %a15
	addi	%d15, %d5, lo:Com_RxIpduRam_ast
	madd	%d5, %d15, %d4, 6
	mov.a	%a15, %d5
	st.h	[%a15] 2, %d3
	.loc 1 378 0 is_stmt 1 discriminator 4
	ret
.LFE165:
	.size	Com_Prv_EnableRxDeadlineMonitoring, .-Com_Prv_EnableRxDeadlineMonitoring
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
	.uaword	.LFB165
	.uaword	.LFE165-.LFB165
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Com\\Com_Cfg_Internal.h"
	.file 8 "bsw\\Com\\src\\Com_Prv_Types.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Common.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\Com\\Com_PBcfg_Variant.h"
	.file 11 "bsw\\Com\\src\\Com_Prv.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xfbd
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Com\\src\\Com_EnableRxDm.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x90
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
	.byte	0x3
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
	.byte	0x3
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x3
	.byte	0x80
	.uaword	0x1c7
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
	.uaword	0x287
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x4
	.byte	0x60
	.uaword	0x1ba
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x5
	.byte	0x2c
	.uaword	0x1e5
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x5
	.byte	0x30
	.uaword	0x1e5
	.uleb128 0x4
	.byte	0xc
	.byte	0x5
	.byte	0x39
	.uaword	0x334
	.uleb128 0x5
	.string	"SduDataPtr"
	.byte	0x5
	.byte	0x3b
	.uaword	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MetaDataPtr"
	.byte	0x5
	.byte	0x3c
	.uaword	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"SduLength"
	.byte	0x5
	.byte	0x3d
	.uaword	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1ba
	.uleb128 0x3
	.string	"PduInfoType"
	.byte	0x5
	.byte	0x3e
	.uaword	0x2ec
	.uleb128 0x3
	.string	"Com_IpduGroupIdType"
	.byte	0x6
	.byte	0x77
	.uaword	0x1e5
	.uleb128 0x3
	.string	"Com_IpduGroupVector"
	.byte	0x6
	.byte	0x79
	.uaword	0x383
	.uleb128 0x7
	.uaword	0x1ba
	.uaword	0x393
	.uleb128 0x8
	.uaword	0x393
	.byte	0
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x9
	.byte	0x1
	.byte	0x6
	.byte	0x7d
	.uaword	0x3c0
	.uleb128 0xa
	.string	"COM_UNINIT"
	.sleb128 0
	.uleb128 0xa
	.string	"COM_INIT"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Com_StatusType"
	.byte	0x6
	.byte	0x80
	.uaword	0x39f
	.uleb128 0xb
	.string	"Com_RxIntSignalId_tuo"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0x1ba
	.uleb128 0xb
	.string	"Com_IpduId_tuo"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0x1e5
	.uleb128 0xb
	.string	"Com_MainFunc_tuo"
	.byte	0x7
	.uahalf	0x23e
	.uaword	0x1ba
	.uleb128 0xc
	.uaword	0x1ba
	.uleb128 0x6
	.byte	0x4
	.uaword	0x1e5
	.uleb128 0x6
	.byte	0x4
	.uaword	0x424
	.uleb128 0x6
	.byte	0x4
	.uaword	0x43b
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x6
	.byte	0x4
	.uaword	0x221
	.uleb128 0x4
	.byte	0x8
	.byte	0x8
	.byte	0x4b
	.uaword	0x4cd
	.uleb128 0x5
	.string	"timePeriod_u16"
	.byte	0x8
	.byte	0x4d
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"timeOffset_u16"
	.byte	0x8
	.byte	0x4e
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"repetitionPeriod_u16"
	.byte	0x8
	.byte	0x4f
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"numOfRepetitions_u8"
	.byte	0x8
	.byte	0x50
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"mode_u8"
	.byte	0x8
	.byte	0x57
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0x3
	.string	"Com_TransModeInfo_tst"
	.byte	0x8
	.byte	0x5b
	.uaword	0x443
	.uleb128 0x3
	.string	"Com_TMConstPtr_tpcst"
	.byte	0x8
	.byte	0x65
	.uaword	0x506
	.uleb128 0x6
	.byte	0x4
	.uaword	0x50c
	.uleb128 0xc
	.uaword	0x4cd
	.uleb128 0xe
	.byte	0x1c
	.byte	0x8
	.uahalf	0x410
	.uaword	0x634
	.uleb128 0xf
	.string	"buffPtr_pau8"
	.byte	0x8
	.uahalf	0x412
	.uaword	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"callOut_pfct"
	.byte	0x8
	.uahalf	0x41d
	.uaword	0x654
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"timeoutNotification_pfct"
	.byte	0x8
	.uahalf	0x421
	.uaword	0x435
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"notification_pfct"
	.byte	0x8
	.uahalf	0x425
	.uaword	0x435
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"size_uo"
	.byte	0x8
	.uahalf	0x42c
	.uaword	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xf
	.string	"firstTimeout_u16"
	.byte	0x8
	.uahalf	0x432
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xf
	.string	"timeout_u16"
	.byte	0x8
	.uahalf	0x433
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xf
	.string	"numOfSig_u16"
	.byte	0x8
	.uahalf	0x435
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0xf
	.string	"idRxSig_uo"
	.byte	0x8
	.uahalf	0x439
	.uaword	0x3d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xf
	.string	"idMainFunc_uo"
	.byte	0x8
	.uahalf	0x448
	.uaword	0x40b
	.byte	0x2
	.byte	0x23
	.uleb128 0x19
	.uleb128 0xf
	.string	"rxIPduFields_u8"
	.byte	0x8
	.uahalf	0x45a
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.uaword	0x26c
	.uaword	0x649
	.uleb128 0x11
	.uaword	0x2c6
	.uleb128 0x11
	.uaword	0x649
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x64f
	.uleb128 0xc
	.uaword	0x33a
	.uleb128 0x6
	.byte	0x4
	.uaword	0x634
	.uleb128 0xb
	.string	"Com_Prv_xRxIpduInfoCfg_tst"
	.byte	0x8
	.uahalf	0x45c
	.uaword	0x511
	.uleb128 0xb
	.string	"Com_RxIpduCfg_tpcst"
	.byte	0x8
	.uahalf	0x465
	.uaword	0x699
	.uleb128 0x6
	.byte	0x4
	.uaword	0x69f
	.uleb128 0xc
	.uaword	0x65a
	.uleb128 0xe
	.byte	0x4
	.byte	0x8
	.uahalf	0x472
	.uaword	0x6e4
	.uleb128 0xf
	.string	"idFirstIpdu_u16"
	.byte	0x8
	.uahalf	0x474
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"numOfRxPdus_u16"
	.byte	0x8
	.uahalf	0x475
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xb
	.string	"Com_Prv_xIpduGrpInfoCfg_tst"
	.byte	0x8
	.uahalf	0x477
	.uaword	0x6a4
	.uleb128 0xb
	.string	"Com_IpduGrpCfg_tpcst"
	.byte	0x8
	.uahalf	0x480
	.uaword	0x725
	.uleb128 0x6
	.byte	0x4
	.uaword	0x72b
	.uleb128 0xc
	.uaword	0x6e4
	.uleb128 0xe
	.byte	0x10
	.byte	0x8
	.uahalf	0x524
	.uaword	0x803
	.uleb128 0xf
	.string	"currentTxModePtr_pcst"
	.byte	0x8
	.uahalf	0x526
	.uaword	0x4ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"cntrMinDelayTime_u16"
	.byte	0x8
	.uahalf	0x52d
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"cntrTimePeriod_u16"
	.byte	0x8
	.uahalf	0x52e
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xf
	.string	"cntrRepPeriod_u16"
	.byte	0x8
	.uahalf	0x532
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xf
	.string	"txFlags_u16"
	.byte	0x8
	.uahalf	0x555
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xf
	.string	"cntrRepetitions_u8"
	.byte	0x8
	.uahalf	0x556
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xf
	.string	"transMode_u8"
	.byte	0x8
	.uahalf	0x562
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.byte	0
	.uleb128 0xb
	.string	"Com_TxIpduRamData_tst"
	.byte	0x8
	.uahalf	0x564
	.uaword	0x730
	.uleb128 0xe
	.byte	0x6
	.byte	0x8
	.uahalf	0x584
	.uaword	0x879
	.uleb128 0xf
	.string	"rxIPduLength_uo"
	.byte	0x8
	.uahalf	0x586
	.uaword	0x2d7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"cntrRxTimeout_u16"
	.byte	0x8
	.uahalf	0x58b
	.uaword	0x1e5
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xf
	.string	"rxFlags_u8"
	.byte	0x8
	.uahalf	0x5a6
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xb
	.string	"Com_RxIpduRamData_tst"
	.byte	0x8
	.uahalf	0x5a8
	.uaword	0x821
	.uleb128 0xb
	.string	"Com_RxIpduRam_tpst"
	.byte	0x8
	.uahalf	0x5b1
	.uaword	0x8b2
	.uleb128 0x6
	.byte	0x4
	.uaword	0x879
	.uleb128 0xe
	.byte	0xc
	.byte	0x8
	.uahalf	0x5f5
	.uaword	0x90c
	.uleb128 0xf
	.string	"sigType_pau8"
	.byte	0x8
	.uahalf	0x5f7
	.uaword	0x334
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"sigType_pau16"
	.byte	0x8
	.uahalf	0x5fd
	.uaword	0x429
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xf
	.string	"sigType_pau32"
	.byte	0x8
	.uahalf	0x5ff
	.uaword	0x43d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xb
	.string	"Com_Prv_xRxRamBuf_tst"
	.byte	0x8
	.uahalf	0x634
	.uaword	0x8b8
	.uleb128 0x6
	.byte	0x4
	.uaword	0x930
	.uleb128 0xc
	.uaword	0x3f4
	.uleb128 0x12
	.string	"Com_Prv_ClearUnusedBits"
	.byte	0x1
	.byte	0x95
	.byte	0x1
	.byte	0x3
	.uaword	0x974
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x95
	.uaword	0x334
	.uleb128 0x14
	.string	"byteNo_u16"
	.byte	0x1
	.byte	0x9c
	.uaword	0x1e5
	.byte	0
	.uleb128 0x15
	.string	"Bfx_Prv_GetBit_u8u8_u8_Inl"
	.byte	0x2
	.uahalf	0x1fd
	.byte	0x1
	.uaword	0x26c
	.byte	0x3
	.uaword	0x9b9
	.uleb128 0x16
	.string	"Data"
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x1ba
	.uleb128 0x16
	.string	"BitPn"
	.byte	0x2
	.uahalf	0x1fd
	.uaword	0x1ba
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"Com_Prv_EnableRxDeadlineMonitoring"
	.byte	0x1
	.uahalf	0x10e
	.byte	0x1
	.uaword	0x26c
	.byte	0x1
	.uaword	0xa3e
	.uleb128 0x16
	.string	"idIpdu_uo"
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x3f4
	.uleb128 0x18
	.string	"rxIpduConstPtr_pcst"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x67d
	.uleb128 0x19
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x112
	.uaword	0x897
	.uleb128 0x18
	.string	"isRxIpduDmReq_b"
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x26c
	.byte	0
	.uleb128 0x1a
	.string	"Bfx_Prv_PutBit_u8u8u8_Inl"
	.byte	0x2
	.uahalf	0x2b5
	.byte	0x1
	.byte	0x3
	.uaword	0xa9c
	.uleb128 0x16
	.string	"Data"
	.byte	0x2
	.uahalf	0x2b5
	.uaword	0x334
	.uleb128 0x16
	.string	"BitPn"
	.byte	0x2
	.uahalf	0x2b5
	.uaword	0x1ba
	.uleb128 0x16
	.string	"Status"
	.byte	0x2
	.uahalf	0x2b5
	.uaword	0x26c
	.uleb128 0x18
	.string	"tmp_u8"
	.byte	0x2
	.uahalf	0x2b7
	.uaword	0x1ba
	.byte	0
	.uleb128 0x12
	.string	"Com_Prv_ProcessRxDMIPduGroupVector"
	.byte	0x1
	.byte	0xc0
	.byte	0x1
	.byte	0x3
	.uaword	0xb96
	.uleb128 0x1b
	.string	"ipduGroupVector_pcu8"
	.byte	0x1
	.byte	0xc0
	.uaword	0x42f
	.uleb128 0x14
	.string	"ipduRefPtr_pcuo"
	.byte	0x1
	.byte	0xc3
	.uaword	0x92a
	.uleb128 0x14
	.string	"ipduGrpConstPtr_pcst"
	.byte	0x1
	.byte	0xc5
	.uaword	0x708
	.uleb128 0x14
	.string	"index_qu16"
	.byte	0x1
	.byte	0xc6
	.uaword	0x29c
	.uleb128 0x14
	.string	"numOfRxIpdus_qu16"
	.byte	0x1
	.byte	0xc7
	.uaword	0x29c
	.uleb128 0x14
	.string	"idIpduGrp_u16"
	.byte	0x1
	.byte	0xc8
	.uaword	0x34d
	.uleb128 0x14
	.string	"byteVal_u8"
	.byte	0x1
	.byte	0xc9
	.uaword	0x1ba
	.uleb128 0x14
	.string	"bitOffset_u8"
	.byte	0x1
	.byte	0xca
	.uaword	0x1ba
	.uleb128 0x14
	.string	"pduCounterVal_u8"
	.byte	0x1
	.byte	0xcb
	.uaword	0x1ba
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"Com_ReceptionDMControl"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	.LFB162
	.uaword	.LFE162
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xdb8
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4e
	.uaword	0x334
	.uaword	.LLST0
	.uleb128 0x1e
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0xd73
	.uleb128 0x1f
	.uaword	.LASF1
	.byte	0x1
	.byte	0x5e
	.uaword	0x897
	.uaword	.LLST1
	.uleb128 0x20
	.string	"idxIdIpdu_qu16"
	.byte	0x1
	.byte	0x5f
	.uaword	0x29c
	.uaword	.LLST2
	.uleb128 0x21
	.uaword	0x935
	.uaword	.LBB31
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x63
	.uaword	0xc33
	.uleb128 0x22
	.uaword	0x956
	.uaword	.LLST3
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x24
	.uaword	0x961
	.uaword	.LLST4
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0xa9c
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.byte	0x69
	.uaword	0xc9a
	.uleb128 0x22
	.uaword	0xac8
	.uaword	.LLST5
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x24
	.uaword	0xae4
	.uaword	.LLST6
	.uleb128 0x25
	.uaword	0xafb
	.uleb128 0x24
	.uaword	0xb17
	.uaword	.LLST7
	.uleb128 0x24
	.uaword	0xb29
	.uaword	.LLST8
	.uleb128 0x24
	.uaword	0xb42
	.uaword	.LLST9
	.uleb128 0x24
	.uaword	0xb57
	.uaword	.LLST10
	.uleb128 0x24
	.uaword	0xb69
	.uaword	.LLST11
	.uleb128 0x24
	.uaword	0xb7d
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0x9b9
	.uaword	.LBB40
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x75
	.uaword	0xcd0
	.uleb128 0x22
	.uaword	0x9eb
	.uaword	.LLST13
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x25
	.uaword	0x9fd
	.uleb128 0x25
	.uaword	0xa19
	.uleb128 0x24
	.uaword	0xa25
	.uaword	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x974
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.byte	0x73
	.uaword	0xcf6
	.uleb128 0x22
	.uaword	0x9aa
	.uaword	.LLST15
	.uleb128 0x22
	.uaword	0x99d
	.uaword	.LLST16
	.byte	0
	.uleb128 0x21
	.uaword	0xa3e
	.uaword	.LBB53
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0x77
	.uaword	0xd34
	.uleb128 0x22
	.uaword	0xa7d
	.uaword	.LLST17
	.uleb128 0x22
	.uaword	0xa6f
	.uaword	.LLST17
	.uleb128 0x22
	.uaword	0xa62
	.uaword	.LLST19
	.uleb128 0x23
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x24
	.uaword	0xa8c
	.uaword	.LLST17
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0xa3e
	.uaword	.LBB56
	.uaword	.LBE56
	.byte	0x1
	.byte	0x7f
	.uleb128 0x22
	.uaword	0xa7d
	.uaword	.LLST21
	.uleb128 0x22
	.uaword	0xa6f
	.uaword	.LLST22
	.uleb128 0x22
	.uaword	0xa62
	.uaword	.LLST23
	.uleb128 0x28
	.uaword	.LBB57
	.uaword	.LBE57
	.uleb128 0x24
	.uaword	0xa8c
	.uaword	.LLST21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL37
	.byte	0x1
	.uaword	0xf91
	.uaword	0xd97
	.uleb128 0x2a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x32
	.uleb128 0x2a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0x2a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.uleb128 0x2b
	.uaword	.LVL38
	.byte	0x1
	.uaword	0xf91
	.uleb128 0x2a
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x2a
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x36
	.uleb128 0x2a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x2a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x9b9
	.uaword	.LFB165
	.uaword	.LFE165
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xde8
	.uleb128 0x2d
	.uaword	0x9eb
	.byte	0x1
	.byte	0x54
	.uleb128 0x25
	.uaword	0x9fd
	.uleb128 0x25
	.uaword	0xa19
	.uleb128 0x24
	.uaword	0xa25
	.uaword	.LLST25
	.byte	0
	.uleb128 0x7
	.uaword	0x879
	.uaword	0xdf3
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_RxIpduRam_ast"
	.byte	0x9
	.byte	0x6b
	.uaword	0xde8
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x803
	.uaword	0xe19
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_TxIpduRam_ast"
	.byte	0x9
	.byte	0x6e
	.uaword	0xe0e
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x1ba
	.uaword	0xe3f
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_IpduCounter_DM_au8"
	.byte	0x9
	.byte	0xa1
	.uaword	0xe34
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x90c
	.uaword	0xe6a
	.uleb128 0x2e
	.byte	0
	.uleb128 0x30
	.string	"Com_Prv_xRxRamBuf_acst"
	.byte	0x9
	.uahalf	0x9f4
	.uaword	0xe8b
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0xe5f
	.uleb128 0x7
	.uaword	0x65a
	.uaword	0xe9b
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_Prv_xRxIpduCfg_acst"
	.byte	0xa
	.byte	0x70
	.uaword	0xebc
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0xe90
	.uleb128 0x7
	.uaword	0x6e4
	.uaword	0xecc
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_Prv_xIpduGrpCfg_acst"
	.byte	0xa
	.byte	0x7f
	.uaword	0xeee
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0xec1
	.uleb128 0x7
	.uaword	0x3f4
	.uaword	0xefe
	.uleb128 0x2e
	.byte	0
	.uleb128 0x2f
	.string	"Com_Prv_xIPduGrp_IpduRefCfg_acuo"
	.byte	0xa
	.byte	0x87
	.uaword	0xf28
	.byte	0x1
	.byte	0x1
	.uleb128 0xc
	.uaword	0xef3
	.uleb128 0x30
	.string	"Com_InitStatus_en"
	.byte	0xb
	.uahalf	0xec7
	.uaword	0x3c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"Com_IpduGrpVector_DM_au8"
	.byte	0xb
	.uahalf	0xee4
	.uaword	0x368
	.byte	0x1
	.byte	0x1
	.uleb128 0x30
	.string	"Com_NONE_TransModeInfo_cst"
	.byte	0xb
	.uahalf	0xf12
	.uaword	0x50c
	.byte	0x1
	.byte	0x1
	.uleb128 0x31
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0xc
	.byte	0x70
	.byte	0x1
	.uaword	0x2b0
	.byte	0x1
	.uleb128 0x11
	.uaword	0x1e5
	.uleb128 0x11
	.uaword	0x1ba
	.uleb128 0x11
	.uaword	0x1ba
	.uleb128 0x11
	.uaword	0x1ba
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x34
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
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uaword	.LVL37-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL37-1
	.uaword	.LVL37
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL38-1
	.uaword	.LFE162
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL16
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL2
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x83
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL2
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL5
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL3
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x74
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x74
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL6
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL29
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	.LVL29
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x82
	.sleb128 -2
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x82
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x82
	.sleb128 4
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x3
	.byte	0x82
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x3
	.byte	0x82
	.sleb128 -2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LFE165
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
	.uaword	.LFB162
	.uaword	.LFE162-.LFB162
	.uaword	.LFB165
	.uaword	.LFE165-.LFB165
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	0
	.uaword	0
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	0
	.uaword	0
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	0
	.uaword	0
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LFB162
	.uaword	.LFE162
	.uaword	.LFB165
	.uaword	.LFE165
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"ipduGroupVector_au8"
.LASF1:
	.string	"rxIpduRamPtr_pst"
	.extern	Det_ReportError,STT_FUNC,0
	.extern	Com_Prv_xRxIpduCfg_acst,STT_OBJECT,-1
	.extern	Com_RxIpduRam_ast,STT_OBJECT,-1
	.extern	Com_Prv_xIPduGrp_IpduRefCfg_acuo,STT_OBJECT,-1
	.extern	Com_Prv_xIpduGrpCfg_acst,STT_OBJECT,-1
	.extern	Com_IpduCounter_DM_au8,STT_OBJECT,-1
	.extern	Com_IpduGrpVector_DM_au8,STT_OBJECT,1
	.extern	Com_InitStatus_en,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
