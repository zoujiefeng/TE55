	.file	"CanSM_RequestComMode.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanSM_RequestComMode,"ax",@progbits
	.align 1
	.global	CanSM_RequestComMode
	.type	CanSM_RequestComMode, @function
CanSM_RequestComMode:
.LFB76:
	.file 1 "bsw\\CanSM\\src\\CanSM_RequestComMode.c"
	.loc 1 33 0
.LVL0:
	.loc 1 52 0
	movh.a	%a15, hi:CanSM_Init_ab
	ld.bu	%d15, [%a15] lo:CanSM_Init_ab
	.loc 1 33 0
	mov	%d8, %d5
	.loc 1 52 0
	jz	%d15, .L67
	.loc 1 57 0
	call	CanSM_GetHandle
.LVL1:
	.loc 1 60 0
	movh.a	%a15, hi:CanSM_ConfigSet_pcst
	ld.a	%a15, [%a15] lo:CanSM_ConfigSet_pcst
	.loc 1 57 0
	mov	%d15, %d2
.LVL2:
	.loc 1 60 0
	ld.bu	%d2, [%a15] 11
.LVL3:
	jge.u	%d15, %d2, .L68
	.loc 1 68 0
	movh.a	%a2, hi:CanSM_currBOR_State_en
	lea	%a2, [%a2] lo:CanSM_currBOR_State_en
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 65 0
	movh.a	%a3, hi:CanSM_CurrNw_Mode_en
	.loc 1 68 0
	ld.bu	%d3, [%a2]0
	.loc 1 76 0
	movh.a	%a2, hi:CanSM_TxTimeoutexception_Substates_en
	lea	%a2, [%a2] lo:CanSM_TxTimeoutexception_Substates_en
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 65 0
	lea	%a3, [%a3] lo:CanSM_CurrNw_Mode_en
	.loc 1 76 0
	ld.bu	%d6, [%a2]0
	.loc 1 79 0
	movh.a	%a2, hi:CanSM_Network_Init_ab
	lea	%a2, [%a2] lo:CanSM_Network_Init_ab
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 65 0
	addsc.a	%a15, %a3, %d15, 0
	.loc 1 79 0
	ld.bu	%d2, [%a2]0
	.loc 1 65 0
	ld.bu	%d4, [%a15]0
.LVL4:
	.loc 1 79 0
	jeq	%d2, 1, .L69
	.loc 1 219 0
	mov	%d2, 1
	ret
.LVL5:
.L67:
	.loc 1 52 0 discriminator 1
	mov	%e4, 140
.LVL6:
	mov	%d6, 2
	mov	%d7, 1
	call	Det_ReportError
.LVL7:
	mov	%d2, 1
	ret
.LVL8:
.L68:
	.loc 1 60 0 discriminator 1
	mov	%e4, 140
	mov	%d6, 2
	mov	%d7, 3
	call	Det_ReportError
.LVL9:
	mov	%d2, 1
	ret
.LVL10:
.L69:
	.loc 1 79 0 discriminator 1
	eq	%d0, %d4, 2
	eq	%d7, %d8, 0
	and	%d5, %d0, %d7
	jz	%d5, .L5
	.loc 1 80 0
	addi	%d5, %d3, -3
	jlt.u	%d5, 4, .L6
	.loc 1 84 0
	movh.a	%a2, hi:CanSM_BusOff_Indicated_ab
	lea	%a2, [%a2] lo:CanSM_BusOff_Indicated_ab
	addsc.a	%a2, %a2, %d15, 0
	eq	%d5, %d6, 0
	.loc 1 83 0
	ld.bu	%d7, [%a2]0
	.loc 1 84 0
	and.ne	%d5, %d7, 1
	jz	%d5, .L6
	.loc 1 92 0
	movh.a	%a2, hi:CanSM_ReqComM_Mode_en
	lea	%a2, [%a2] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a2, %a2, %d15, 0
	mov	%d15, 0
.LVL11:
	st.b	[%a2]0, %d15
	.loc 1 94 0
	mov	%d15, 4
	st.b	[%a15]0, %d15
.LVL12:
	.loc 1 49 0
	mov	%d2, 0
	.loc 1 94 0
	ret
.LVL13:
.L6:
	.loc 1 99 0
	ne	%d5, %d3, 3
	and.ne	%d5, %d3, 6
	jz	%d5, .L7
	.loc 1 101 0
	addi	%d5, %d3, -4
	jlt.u	%d5, 2, .L7
	.loc 1 103 0
	movh.a	%a2, hi:CanSM_BusOff_Indicated_ab
	lea	%a2, [%a2] lo:CanSM_BusOff_Indicated_ab
	addsc.a	%a2, %a2, %d15, 0
	eq	%d5, %d6, 0
	.loc 1 102 0
	ld.bu	%d7, [%a2]0
	.loc 1 103 0
	and.ne	%d5, %d7, 1
	jz	%d5, .L7
	.loc 1 111 0
	movh.a	%a15, hi:CanSM_ReqComM_Mode_en
.LVL14:
	lea	%a15, [%a15] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a15, %a15, %d15, 0
	mov	%d15, 0
.LVL15:
	st.b	[%a15]0, %d15
	.loc 1 49 0
	mov	%d2, 0
	.loc 1 111 0
	ret
.LVL16:
.L5:
	.loc 1 117 0
	eq	%d5, %d8, 1
	.loc 1 116 0
	and	%d0, %d5
	jnz	%d0, .L20
	.loc 1 134 0 discriminator 1
	eq	%d0, %d4, 1
	and	%d7, %d0
	jz	%d7, .L10
	.loc 1 136 0
	ne	%d5, %d3, 3
	and.ne	%d5, %d3, 6
	jz	%d5, .L11
	.loc 1 138 0
	addi	%d5, %d3, -4
	jlt.u	%d5, 2, .L12
	movh.a	%a2, hi:CanSM_BusOff_Indicated_ab
	lea	%a2, [%a2] lo:CanSM_BusOff_Indicated_ab
	eq	%d1, %d6, 0
.LVL17:
.L23:
	.loc 1 140 0
	addsc.a	%a15, %a2, %d15, 0
	.loc 1 139 0
	ld.bu	%d5, [%a15]0
	ne	%d5, %d5, 1
	.loc 1 140 0
	and	%d5, %d1
	jz	%d5, .L13
	.loc 1 148 0
	movh.a	%a15, hi:CanSM_ReqComM_Mode_en
	lea	%a15, [%a15] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 150 0
	addsc.a	%a3, %a3, %d15, 0
.LVL18:
	.loc 1 148 0
	mov	%d2, 0
	.loc 1 150 0
	mov	%d15, 4
.LVL19:
	.loc 1 148 0
	st.b	[%a15]0, %d2
	.loc 1 150 0
	st.b	[%a3]0, %d15
	.loc 1 49 0
	mov	%d2, 0
	.loc 1 150 0
	ret
.LVL20:
.L20:
	.loc 1 118 0
	ne	%d5, %d3, 3
	and.ne	%d5, %d3, 6
	jz	%d5, .L15
	.loc 1 120 0
	addi	%d5, %d3, -4
	jlt.u	%d5, 2, .L7
	.loc 1 122 0
	movh.a	%a2, hi:CanSM_BusOff_Indicated_ab
	lea	%a2, [%a2] lo:CanSM_BusOff_Indicated_ab
	addsc.a	%a15, %a2, %d15, 0
.LVL21:
	eq	%d5, %d6, 0
	.loc 1 121 0
	ld.bu	%d0, [%a15]0
	.loc 1 122 0
	eq	%d1, %d6, 0
	and.ne	%d5, %d0, 1
	jz	%d5, .L9
	.loc 1 130 0
	movh.a	%a15, hi:CanSM_ReqComM_Mode_en
	lea	%a15, [%a15] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a15, %a15, %d15, 0
	st.b	[%a15]0, %d2
	.loc 1 49 0
	mov	%d2, 0
	.loc 1 130 0
	ret
.LVL22:
.L12:
	.loc 1 153 0
	eq	%d5, %d8, 2
	.loc 1 152 0
	jz	%d5, .L14
.LVL23:
.L28:
	mov	%d5, 1
.L15:
	.loc 1 188 0 discriminator 1
	jeq	%d4, 5, .L70
.L18:
	.loc 1 199 0 discriminator 1
	and	%d4, %d4, 253
	jne	%d4, 4, .L19
.L40:
	.loc 1 225 0
	ret
.L70:
	.loc 1 188 0 discriminator 2
	movh.a	%a15, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a15, [%a15] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d4, [%a15]0
	eq	%d4, %d4, 0
	and	%d5, %d4
	jnz	%d5, .L64
.L19:
	.loc 1 201 0
	add	%d3, -3
	jlt.u	%d3, 4, .L40
	.loc 1 205 0
	movh.a	%a15, hi:CanSM_BusOff_Indicated_ab
	lea	%a15, [%a15] lo:CanSM_BusOff_Indicated_ab
	addsc.a	%a15, %a15, %d15, 0
	eq	%d3, %d6, 0
	.loc 1 204 0
	ld.bu	%d4, [%a15]0
	.loc 1 205 0
	and.ne	%d3, %d4, 1
	jz	%d3, .L40
	.loc 1 213 0
	movh.a	%a15, hi:CanSM_ReqComM_Mode_en
	lea	%a15, [%a15] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 49 0
	mov	%d2, 0
	.loc 1 213 0
	st.b	[%a15]0, %d8
	ret
.L9:
	.loc 1 134 0
	eq	%d0, %d4, 1
	and	%d7, %d0
	jnz	%d7, .L23
.L10:
	.loc 1 153 0 discriminator 1
	eq	%d5, %d8, 2
	.loc 1 152 0 discriminator 1
	and	%d0, %d5
	jz	%d0, .L14
	.loc 1 154 0
	ne	%d5, %d3, 3
	and.ne	%d5, %d3, 6
	jz	%d5, .L27
	.loc 1 156 0
	addi	%d5, %d3, -4
	jlt.u	%d5, 2, .L28
	movh.a	%a2, hi:CanSM_BusOff_Indicated_ab
	lea	%a2, [%a2] lo:CanSM_BusOff_Indicated_ab
	eq	%d1, %d6, 0
.L24:
	.loc 1 158 0
	addsc.a	%a15, %a2, %d15, 0
	.loc 1 157 0
	ld.bu	%d5, [%a15]0
	ne	%d5, %d5, 1
	.loc 1 158 0
	and	%d5, %d1
	jz	%d5, .L17
	.loc 1 166 0
	movh.a	%a15, hi:CanSM_ReqComM_Mode_en
	lea	%a15, [%a15] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a15, %a15, %d15, 0
	mov	%d15, 2
.LVL24:
	st.b	[%a15]0, %d15
	.loc 1 49 0
	mov	%d2, 0
	.loc 1 166 0
	ret
.LVL25:
.L7:
	.loc 1 153 0
	eq	%d5, %d8, 2
.L14:
	.loc 1 168 0 discriminator 1
	eq	%d7, %d4, 0
	and	%d7, %d5
	jz	%d7, .L15
	.loc 1 170 0
	ne	%d5, %d3, 6
	and.ne	%d5, %d3, 3
	jz	%d5, .L18
	.loc 1 172 0
	addi	%d7, %d3, -4
	jlt.u	%d7, 2, .L15
	movh.a	%a2, hi:CanSM_BusOff_Indicated_ab
	lea	%a2, [%a2] lo:CanSM_BusOff_Indicated_ab
	eq	%d1, %d6, 0
.LVL26:
.L25:
	.loc 1 174 0
	addsc.a	%a2, %a2, %d15, 0
	.loc 1 173 0
	ld.bu	%d5, [%a2]0
	ne	%d5, %d5, 1
	.loc 1 174 0
	and	%d1, %d5
	jz	%d1, .L28
.L64:
	.loc 1 192 0
	movh.a	%a15, hi:CanSM_ReqComM_Mode_en
	lea	%a15, [%a15] lo:CanSM_ReqComM_Mode_en
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 195 0
	addsc.a	%a3, %a3, %d15, 0
.LVL27:
	.loc 1 192 0
	mov	%d2, 2
	.loc 1 195 0
	mov	%d15, 6
.LVL28:
	.loc 1 192 0
	st.b	[%a15]0, %d2
	.loc 1 195 0
	st.b	[%a3]0, %d15
	.loc 1 49 0
	mov	%d2, 0
	.loc 1 195 0
	ret
.LVL29:
.L11:
	.loc 1 168 0
	eq	%d7, %d4, 0
	and.eq	%d7, %d8, 2
	eq	%d5, %d8, 2
	jnz	%d7, .L18
	j	.L15
.LVL30:
.L27:
	mov	%d5, %d0
	j	.L15
.L13:
	.loc 1 153 0
	eq	%d5, %d8, 2
	.loc 1 152 0
	jnz	%d5, .L24
	j	.L14
.L17:
	.loc 1 168 0
	jz	%d4, .L25
	mov	%d5, 1
	j	.L15
.LFE76:
	.size	CanSM_RequestComMode, .-CanSM_RequestComMode
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
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM.h"
	.file 7 "bsw\\CanSM\\src\\CanSM_Prv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xcf1
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanSM\\src\\CanSM_RequestComMode.c"
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
	.uaword	0x1cf
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
	.uaword	0x1fb
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1cf
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1c2
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1c2
	.uleb128 0x4
	.uaword	0x266
	.uaword	0x2e1
	.uleb128 0x5
	.uaword	0x2ac
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x1c2
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x5
	.byte	0xe0
	.uaword	0x1c2
	.uleb128 0x7
	.string	"Dem_EventIdType"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x1ed
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2e1
	.uleb128 0x6
	.uaword	0x1ed
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.byte	0x92
	.uaword	0x44f
	.uleb128 0xa
	.string	"Cntrl_startidx_pu8"
	.byte	0x6
	.byte	0x94
	.uaword	0x313
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"BorTimeL1_u16"
	.byte	0x6
	.byte	0x99
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"BorTimeL2_u16"
	.byte	0x6
	.byte	0x9a
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"BorTimeTxEnsured_u16"
	.byte	0x6
	.byte	0x9c
	.uaword	0x1ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"BusOffEventId_uo"
	.byte	0x6
	.byte	0x9d
	.uaword	0x2fb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"Trcv_hndle_u8"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"SizeofController_u8"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"BorCntL1L2_u8"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.string	"ComM_channelId_uo"
	.byte	0x6
	.byte	0xa1
	.uaword	0x2b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.string	"BusOffDelayConfig_b"
	.byte	0x6
	.byte	0xa5
	.uaword	0x266
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"TrcvPnConfig_b"
	.byte	0x6
	.byte	0xa6
	.uaword	0x266
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkConf_tst"
	.byte	0x6
	.byte	0xa7
	.uaword	0x31e
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xab
	.uaword	0x57a
	.uleb128 0xc
	.string	"CANSM_BSM_S_NOCOM"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_BSM_S_SILENTCOM"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_BSM_S_FULLCOM"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_BSM_S_NOT_INITIALIZED"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_BSM_S_PRE_NOCOM"
	.sleb128 4
	.uleb128 0xc
	.string	"CANSM_BSM_WUVALIDATION"
	.sleb128 5
	.uleb128 0xc
	.string	"CANSM_BSM_S_PRE_FULLCOM"
	.sleb128 6
	.uleb128 0xc
	.string	"CANSM_BSM_S_SET_BAUDRATE"
	.sleb128 7
	.uleb128 0xc
	.string	"CANSM_BSM_S_SILENTCOM_BOR"
	.sleb128 8
	.uleb128 0xc
	.string	"CANSM_BSM_S_TX_TIMEOUT_EXCEPTION"
	.sleb128 9
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkModeStateType_ten"
	.byte	0x6
	.byte	0xb6
	.uaword	0x46c
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xba
	.uaword	0x652
	.uleb128 0xc
	.string	"CANSM_BOR_IDLE"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_S_BUS_OFF_CHECK"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_S_NO_BUS_OFF"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_S_BUS_OFF_RECOVERY_L1"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_S_RESTART_CC"
	.sleb128 4
	.uleb128 0xc
	.string	"CANSM_S_RESTART_CC_WAIT"
	.sleb128 5
	.uleb128 0xc
	.string	"CANSM_S_BUS_OFF_RECOVERY_L2"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanSM_BusOffRecoveryStateType_ten"
	.byte	0x6
	.byte	0xc2
	.uaword	0x5a0
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.byte	0xcf
	.uaword	0x76e
	.uleb128 0xa
	.string	"CanSM_NetworkConf_pcst"
	.byte	0x6
	.byte	0xd1
	.uaword	0x76e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"CanSM_NetworktoCtrlConf_pcu8"
	.byte	0x6
	.byte	0xd2
	.uaword	0x313
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionTime_u16"
	.byte	0x6
	.byte	0xd6
	.uaword	0x319
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionMax_u8"
	.byte	0x6
	.byte	0xd7
	.uaword	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"CanSM_SizeOfCanSMNetworks_u8"
	.byte	0x6
	.byte	0xd8
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"CanSM_ActiveConfigset_u8"
	.byte	0x6
	.byte	0xd9
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x774
	.uleb128 0x6
	.uaword	0x44f
	.uleb128 0x3
	.string	"CanSM_ConfigType"
	.byte	0x6
	.byte	0xdb
	.uaword	0x67b
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0xbf
	.uaword	0x8b7
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_DEFAULT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_TRCV_NORMAL"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_TRCV_NORMAL_WAIT"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STOPPED"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STOPPED_WAIT"
	.sleb128 4
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STARTED"
	.sleb128 5
	.uleb128 0xc
	.string	"CANSM_WAKEUP_VALIDATION_S_CC_STARTED_WAIT"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"CanSM_WakeUpValidation_Substates_ten"
	.byte	0x7
	.byte	0xc8
	.uaword	0x791
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0xd9
	.uaword	0x9b9
	.uleb128 0xc
	.string	"CANSM_TxTimeoutException_DEFAULT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANSM_TxTimeoutException_S_CC_STOPPED"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_TxTimeoutException_S_CC_STOPPED_WAIT"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_TxTimeoutException_S_CC_STARTED"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_TxTimeoutException_S_CC_STARTED_WAIT"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"CanSM_TxTimeoutException_Substates_ten"
	.byte	0x7
	.byte	0xe0
	.uaword	0x8e3
	.uleb128 0xd
	.byte	0x1
	.string	"CanSM_RequestComMode"
	.byte	0x1
	.byte	0x20
	.byte	0x1
	.uaword	0x296
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb0c
	.uleb128 0xe
	.string	"network"
	.byte	0x1
	.byte	0x20
	.uaword	0x2b8
	.uaword	.LLST0
	.uleb128 0xe
	.string	"ComM_Mode"
	.byte	0x1
	.byte	0x20
	.uaword	0x2e6
	.uaword	.LLST1
	.uleb128 0xf
	.string	"CanSM_FuncVal_uo"
	.byte	0x1
	.byte	0x23
	.uaword	0x296
	.byte	0
	.uleb128 0x10
	.string	"CanSM_CurrNwMode_en"
	.byte	0x1
	.byte	0x25
	.uaword	0x57a
	.uaword	.LLST2
	.uleb128 0x10
	.string	"CanSM_CurrBORState_en"
	.byte	0x1
	.byte	0x27
	.uaword	0x652
	.uaword	.LLST3
	.uleb128 0x10
	.string	"CanSM_TxToutException_state_en"
	.byte	0x1
	.byte	0x2e
	.uaword	0x9b9
	.uaword	.LLST4
	.uleb128 0x11
	.uaword	.LVL1
	.uaword	0xca0
	.uleb128 0x12
	.uaword	.LVL7
	.uaword	0xcc5
	.uaword	0xaec
	.uleb128 0x13
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x31
	.uleb128 0x13
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.uleb128 0x14
	.uaword	.LVL9
	.uaword	0xcc5
	.uleb128 0x13
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x33
	.uleb128 0x13
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x32
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x8c
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"CanSM_ConfigSet_pcst"
	.byte	0x7
	.uahalf	0x125
	.uaword	0xb2b
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x4
	.uaword	0xb31
	.uleb128 0x6
	.uaword	0x779
	.uleb128 0x15
	.string	"CanSM_Init_ab"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0x266
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x57a
	.uaword	0xb5e
	.uleb128 0x5
	.uaword	0x2ac
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_CurrNw_Mode_en"
	.byte	0x7
	.uahalf	0x142
	.uaword	0xb4e
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x652
	.uaword	0xb8d
	.uleb128 0x5
	.uaword	0x2ac
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_currBOR_State_en"
	.byte	0x7
	.uahalf	0x149
	.uaword	0xb7d
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_BusOff_Indicated_ab"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0x2d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x2e6
	.uaword	0xbe2
	.uleb128 0x5
	.uaword	0x2ac
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_ReqComM_Mode_en"
	.byte	0x7
	.uahalf	0x16e
	.uaword	0xbd2
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x8b7
	.uaword	0xc12
	.uleb128 0x5
	.uaword	0x2ac
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_WakeUpValidation_Substates_en"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0xc02
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x9b9
	.uaword	0xc50
	.uleb128 0x5
	.uaword	0x2ac
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_TxTimeoutexception_Substates_en"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0xc40
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_Network_Init_ab"
	.byte	0x7
	.uahalf	0x1ff
	.uaword	0x2d1
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"CanSM_GetHandle"
	.byte	0x7
	.uahalf	0x249
	.byte	0x1
	.uaword	0x2b8
	.byte	0x1
	.uaword	0xcc5
	.uleb128 0x17
	.uaword	0x2b8
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x8
	.byte	0x70
	.byte	0x1
	.uaword	0x296
	.byte	0x1
	.uleb128 0x17
	.uaword	0x1ed
	.uleb128 0x17
	.uaword	0x1c2
	.uleb128 0x17
	.uaword	0x1c2
	.uleb128 0x17
	.uaword	0x1c2
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xc
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LVL2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL29
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1-1
	.uaword	.LVL5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL6
	.uaword	.LFE76
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL30
	.uaword	.LFE76
	.uahalf	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL11
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL28
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x56
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
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB76
	.uaword	.LFE76
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	CanSM_WakeUpValidation_Substates_en,STT_OBJECT,4
	.extern	CanSM_ReqComM_Mode_en,STT_OBJECT,4
	.extern	CanSM_BusOff_Indicated_ab,STT_OBJECT,4
	.extern	Det_ReportError,STT_FUNC,0
	.extern	CanSM_Network_Init_ab,STT_OBJECT,4
	.extern	CanSM_TxTimeoutexception_Substates_en,STT_OBJECT,4
	.extern	CanSM_CurrNw_Mode_en,STT_OBJECT,4
	.extern	CanSM_currBOR_State_en,STT_OBJECT,4
	.extern	CanSM_ConfigSet_pcst,STT_OBJECT,4
	.extern	CanSM_GetHandle,STT_FUNC,0
	.extern	CanSM_Init_ab,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
