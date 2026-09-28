	.file	"CanSM_Main.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CanSM_MainFunction,"ax",@progbits
	.align 1
	.global	CanSM_MainFunction
	.type	CanSM_MainFunction, @function
CanSM_MainFunction:
.LFB76:
	.file 1 "bsw\\CanSM\\src\\CanSM_Main.c"
	.loc 1 35 0
.LVL0:
	.loc 1 66 0
	movh.a	%a15, hi:CanSM_ConfigSet_pcst
	ld.a	%a2, [%a15] lo:CanSM_ConfigSet_pcst
	movh	%d2, hi:CanSM_BORMode_au8
	.loc 1 35 0
	sub.a	%SP, 32
.LCFI0:
	.loc 1 66 0
	ld.bu	%d15, [%a2] 11
	mov.a	%a2, %d2
	.loc 1 173 0
	movh	%d2, hi:CanSM_BusOff_Indicated_ab
	addi	%d2, %d2, lo:CanSM_BusOff_Indicated_ab
	st.w	[%SP] 12, %d2
	.loc 1 179 0
	movh	%d2, hi:CanSM_BusOff_Cntr_au8
	addi	%d2, %d2, lo:CanSM_BusOff_Cntr_au8
	st.w	[%SP] 16, %d2
	.loc 1 182 0
	movh	%d2, hi:CanSM_Num_Unsuccessful_ModeReq_au8
	addi	%d2, %d2, lo:CanSM_Num_Unsuccessful_ModeReq_au8
	movh.a	%a13, hi:CanSM_Network_pcst
	st.w	[%SP] 20, %d2
	.loc 1 66 0
	mov	%d14, 0
	lea	%a13, [%a13] lo:CanSM_Network_pcst
	lea	%a12, [%a2] lo:CanSM_BORMode_au8
	lea	%a14, [%a15] lo:CanSM_ConfigSet_pcst
	jz	%d15, .L1
.LVL1:
.L28:
	.loc 1 73 0
	movh.a	%a3, hi:CanSM_CurrNw_Mode_en
	.loc 1 70 0
	and	%d8, %d14, 255
	.loc 1 73 0
	lea	%a3, [%a3] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a3, %d8, 0
	.loc 1 76 0
	movh.a	%a2, hi:CanSM_currBOR_State_en
	lea	%a2, [%a2] lo:CanSM_currBOR_State_en
	.loc 1 73 0
	ld.bu	%d2, [%a15]0
	.loc 1 79 0
	movh.a	%a3, hi:CanSM_TxTimeoutexception_Substates_en
	.loc 1 76 0
	addsc.a	%a15, %a2, %d8, 0
	.loc 1 79 0
	lea	%a3, [%a3] lo:CanSM_TxTimeoutexception_Substates_en
	.loc 1 76 0
	ld.bu	%d13, [%a15]0
	.loc 1 81 0
	movh.a	%a2, hi:CanSM_ReqComM_Mode_en
	.loc 1 79 0
	addsc.a	%a15, %a3, %d8, 0
	.loc 1 81 0
	lea	%a2, [%a2] lo:CanSM_ReqComM_Mode_en
	.loc 1 79 0
	ld.bu	%d3, [%a15]0
	.loc 1 81 0
	addsc.a	%a15, %a2, %d8, 0
	.loc 1 107 0
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	.loc 1 81 0
	ld.bu	%d11, [%a15]0
	.loc 1 83 0
	addsc.a	%a15, %a12, %d8, 0
	.loc 1 107 0
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	.loc 1 83 0
	ld.bu	%d15, [%a15]0
	.loc 1 70 0
	mul	%d12, %d8, 20
	.loc 1 83 0
	st.w	[%SP] 8, %d15
	.loc 1 107 0
	sh	%d15, %d8, 2
	addsc.a	%a15, %a2, %d15, 0
	.loc 1 70 0
	ld.w	%d9, [%a13]0
	.loc 1 107 0
	st.w	[%SP] 4, %d15
	ld.bu	%d15, [%a15]0
	and	%d10, %d14, 255
.LVL2:
	.loc 1 70 0
	add	%d9, %d12
.LVL3:
	.loc 1 107 0
	jeq	%d15, 2, .L38
	.loc 1 119 0
	jnz	%d3, .L39
.LVL4:
.L4:
	.loc 1 124 0
	jeq	%d11, %d2, .L5
	.loc 1 126 0
	mov	%e4, %d11, %d10
	call	CanSM_NetworkModeTrans
.LVL5:
.L5:
	.loc 1 130 0
	movh.a	%a3, hi:CanSM_WakeUpValidation_Substates_en
	lea	%a3, [%a3] lo:CanSM_WakeUpValidation_Substates_en
	addsc.a	%a15, %a3, %d8, 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L40
	.loc 1 134 0
	movh.a	%a2, hi:CanSM_BOR_SilentCom_ab
	lea	%a2, [%a2] lo:CanSM_BOR_SilentCom_ab
	addsc.a	%a15, %a2, %d8, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L41
.L7:
	.loc 1 141 0
	addsc.a	%a15, %a12, %d8, 0
	eq	%d15, %d13, 1
	ld.bu	%d2, [%a15]0
	and.eq	%d15, %d2, 1
	jnz	%d15, .L42
.L8:
	.loc 1 188 0
	movh.a	%a2, hi:CanSM_Rb_DisableBusOffRecovery_ab
	lea	%a2, [%a2] lo:CanSM_Rb_DisableBusOffRecovery_ab
	addsc.a	%a15, %a2, %d8, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L43
.L9:
	.loc 1 208 0
	ld.w	%d3, [%SP] 8
	jeq	%d3, 1, .L44
.L13:
	.loc 1 213 0
	movh.a	%a3, hi:CanSM_CurrNw_Mode_en
	lea	%a3, [%a3] lo:CanSM_CurrNw_Mode_en
	addsc.a	%a15, %a3, %d8, 0
	ld.bu	%d15, [%a15]0
	jz	%d15, .L45
.L11:
.LVL6:
	.loc 1 66 0 discriminator 2
	ld.a	%a15, [%a14]0
	addi	%d4, %d10, 1
	and	%d4, %d4, 255
	ld.bu	%d15, [%a15] 11
	add	%d14, 1
	jlt.u	%d4, %d15, .L28
.LVL7:
.L1:
	ret
.LVL8:
.L39:
	.loc 1 121 0
	mov	%d4, %d10
	st.w	[%SP]0, %d2
	call	CanSM_TxTimeoutException_StateMachine
.LVL9:
	ld.w	%d2, [%SP]0
	j	.L4
.LVL10:
.L38:
	.loc 1 109 0
	ld.h	%d15, [%a15] 2
	add	%d15, 1
	st.h	[%a15] 2, %d15
	.loc 1 119 0
	jz	%d3, .L4
	j	.L39
.LVL11:
.L40:
	.loc 1 132 0
	mov	%d4, %d10
	call	CanSM_WakeUpValidation_StateMachine
.LVL12:
	.loc 1 134 0
	movh.a	%a2, hi:CanSM_BOR_SilentCom_ab
	lea	%a2, [%a2] lo:CanSM_BOR_SilentCom_ab
	addsc.a	%a15, %a2, %d8, 0
	ld.bu	%d15, [%a15]0
	jne	%d15, 1, .L7
.L41:
	.loc 1 136 0
	mov	%d4, %d10
	call	CanSM_BOR_CtrlsStart_SilentCom
.LVL13:
	.loc 1 141 0
	addsc.a	%a15, %a12, %d8, 0
	eq	%d15, %d13, 1
	ld.bu	%d2, [%a15]0
	and.eq	%d15, %d2, 1
	jz	%d15, .L8
.L42:
	.loc 1 153 0 discriminator 2
	movh.a	%a2, hi:CanSM_TimerConfig_ast
	ld.w	%d3, [%SP] 4
	lea	%a2, [%a2] lo:CanSM_TimerConfig_ast
	addsc.a	%a15, %a2, %d3, 0
	.loc 1 141 0 discriminator 2
	mov.a	%a3, %d9
	ld.hu	%d15, [%a15] 2
	ld.hu	%d2, [%a3] 8
	jge.u	%d2, %d15, .L8
	.loc 1 158 0
	ld.a	%a3, [%a13]0
	mov	%d5, 0
	.loc 1 173 0
	mov	%d15, 0
	.loc 1 158 0
	addsc.a	%a2, %a3, %d12, 0
	ld.hu	%d4, [%a2] 10
	call	Dem_ReportErrorStatus
.LVL14:
	.loc 1 170 0
	movh.a	%a3, hi:CanSM_currBOR_State_en
	lea	%a3, [%a3] lo:CanSM_currBOR_State_en
	addsc.a	%a2, %a3, %d8, 0
	.loc 1 173 0
	ld.a	%a3, [%SP] 12
	.loc 1 170 0
	mov	%d3, 2
	st.b	[%a2]0, %d3
	.loc 1 173 0
	addsc.a	%a2, %a3, %d8, 0
	.loc 1 176 0
	mov	%d2, 3
	.loc 1 173 0
	st.b	[%a2]0, %d15
	.loc 1 179 0
	ld.a	%a2, [%SP] 16
	.loc 1 182 0
	ld.a	%a3, [%SP] 20
	.loc 1 176 0
	st.b	[%a15]0, %d2
	.loc 1 179 0
	addsc.a	%a15, %a2, %d8, 0
	.loc 1 188 0
	movh.a	%a2, hi:CanSM_Rb_DisableBusOffRecovery_ab
	.loc 1 179 0
	st.b	[%a15]0, %d15
	.loc 1 182 0
	addsc.a	%a15, %a3, %d8, 0
	.loc 1 188 0
	lea	%a2, [%a2] lo:CanSM_Rb_DisableBusOffRecovery_ab
	.loc 1 182 0
	st.b	[%a15]0, %d15
	.loc 1 188 0
	addsc.a	%a15, %a2, %d8, 0
	ld.bu	%d15, [%a15]0
	jne	%d15, 1, .L9
.L43:
	.loc 1 193 0
	mov.a	%a2, %d9
	.loc 1 191 0
	addsc.a	%a15, %a12, %d8, 0
	mov	%d3, 2
	.loc 1 193 0
	ld.bu	%d2, [%a2] 13
	.loc 1 191 0
	st.b	[%a15]0, %d3
.LVL15:
	.loc 1 193 0
	mov	%d15, 0
	jz	%d2, .L11
	mov.a	%a15, %d9
.LVL16:
.L29:
	.loc 1 196 0 discriminator 3
	ld.a	%a3, [%a15]0
	and	%d2, %d15, 255
	.loc 1 199 0 discriminator 3
	mov	%d5, 3
	.loc 1 196 0 discriminator 3
	addsc.a	%a2, %a3, %d2, 0
	add	%d15, 1
.LVL17:
	ld.bu	%d8, [%a2]0
.LVL18:
	.loc 1 199 0 discriminator 3
	mov	%d4, %d8
	call	CanIf_SetControllerMode
.LVL19:
	.loc 1 203 0 discriminator 3
	mov	%d4, %d8
	mov	%d5, 0
	call	CanIf_SetPduMode
.LVL20:
	.loc 1 193 0 discriminator 3
	ld.bu	%d2, [%a15] 13
	and	%d3, %d15, 255
.LVL21:
	jlt.u	%d3, %d2, .L29
	j	.L11
.LVL22:
.L44:
	.loc 1 208 0 discriminator 1
	ld.a	%a2, [%SP] 12
	addsc.a	%a15, %a2, %d8, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 1, .L14
	.loc 1 208 0 is_stmt 0 discriminator 2
	movh.a	%a15, hi:CanSM_BusOffISRPend_ab
	lea	%a15, [%a15] lo:CanSM_BusOffISRPend_ab
	addsc.a	%a15, %a15, %d8, 0
	ld.bu	%d15, [%a15]0
	jz	%d15, .L13
.L14:
	.loc 1 211 0 is_stmt 1
	mov	%d4, %d10
	call	CanSM_BusOffTransitions
.LVL23:
	j	.L11
.L45:
	.loc 1 216 0
	movh.a	%a15, hi:CanSM_BusSMMode_au8
	lea	%a15, [%a15] lo:CanSM_BusSMMode_au8
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 218 0
	lea	%a4, [%SP] 32
.LVL24:
	.loc 1 216 0
	st.b	[%a15]0, %d15
	.loc 1 220 0
	mov.a	%a15, %d9
	.loc 1 218 0
	st.b	[+%a4]-1, %d15
.LVL25:
	.loc 1 220 0
	ld.bu	%d4, [%a15] 15
	call	ComM_BusSM_ModeIndication
.LVL26:
	j	.L11
.LFE76:
	.size	CanSM_MainFunction, .-CanSM_MainFunction
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
	.byte	0x4
	.uaword	.LCFI0-.LFB76
	.byte	0xe
	.uleb128 0x20
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\CanSM\\api\\CanSM.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf_Types.h"
	.file 8 "bsw\\CanSM\\src\\CanSM_Prv.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\CanSM\\integration\\CanSM_Cfg_SchM.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\Dem\\api\\Dem.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\CanIf\\api\\CanIf.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_BusSM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x12a2
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\CanSM\\src\\CanSM_Main.c"
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
	.uaword	0x1c5
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
	.uaword	0x1f1
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
	.uaword	0x1c5
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
	.uaword	0x1b8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1b8
	.uleb128 0x4
	.uaword	0x25c
	.uaword	0x2d7
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.uaword	0x1b8
	.uaword	0x2e7
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x6
	.uaword	0x1b8
	.uleb128 0x3
	.string	"ComM_ModeType"
	.byte	0x5
	.byte	0xe0
	.uaword	0x1b8
	.uleb128 0x7
	.string	"Dem_EventIdType"
	.byte	0x5
	.uahalf	0x143
	.uaword	0x1e3
	.uleb128 0x7
	.string	"Dem_EventStatusType"
	.byte	0x5
	.uahalf	0x145
	.uaword	0x1b8
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2ec
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2e7
	.uleb128 0x6
	.uaword	0x1e3
	.uleb128 0x9
	.byte	0x14
	.byte	0x6
	.byte	0x92
	.uaword	0x477
	.uleb128 0xa
	.string	"Cntrl_startidx_pu8"
	.byte	0x6
	.byte	0x94
	.uaword	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"BorTimeL1_u16"
	.byte	0x6
	.byte	0x99
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"BorTimeL2_u16"
	.byte	0x6
	.byte	0x9a
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"BorTimeTxEnsured_u16"
	.byte	0x6
	.byte	0x9c
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"BusOffEventId_uo"
	.byte	0x6
	.byte	0x9d
	.uaword	0x301
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"Trcv_hndle_u8"
	.byte	0x6
	.byte	0x9e
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xa
	.string	"SizeofController_u8"
	.byte	0x6
	.byte	0x9f
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0xa
	.string	"BorCntL1L2_u8"
	.byte	0x6
	.byte	0xa0
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0xa
	.string	"ComM_channelId_uo"
	.byte	0x6
	.byte	0xa1
	.uaword	0x2ae
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0xa
	.string	"BusOffDelayConfig_b"
	.byte	0x6
	.byte	0xa5
	.uaword	0x25c
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xa
	.string	"TrcvPnConfig_b"
	.byte	0x6
	.byte	0xa6
	.uaword	0x25c
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0x3
	.string	"CanSM_NetworkConf_tst"
	.byte	0x6
	.byte	0xa7
	.uaword	0x346
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xab
	.uaword	0x5a2
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
	.uaword	0x494
	.uleb128 0xb
	.byte	0x1
	.byte	0x6
	.byte	0xba
	.uaword	0x67a
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
	.uaword	0x5c8
	.uleb128 0x9
	.byte	0x10
	.byte	0x6
	.byte	0xcf
	.uaword	0x796
	.uleb128 0xa
	.string	"CanSM_NetworkConf_pcst"
	.byte	0x6
	.byte	0xd1
	.uaword	0x796
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"CanSM_NetworktoCtrlConf_pcu8"
	.byte	0x6
	.byte	0xd2
	.uaword	0x33b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionTime_u16"
	.byte	0x6
	.byte	0xd6
	.uaword	0x341
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"CanSMModeRequestRepetitionMax_u8"
	.byte	0x6
	.byte	0xd7
	.uaword	0x2e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"CanSM_SizeOfCanSMNetworks_u8"
	.byte	0x6
	.byte	0xd8
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0xa
	.string	"CanSM_ActiveConfigset_u8"
	.byte	0x6
	.byte	0xd9
	.uaword	0x1b8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x79c
	.uleb128 0x6
	.uaword	0x477
	.uleb128 0x3
	.string	"CanSM_ConfigType"
	.byte	0x6
	.byte	0xdb
	.uaword	0x6a3
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0x1f
	.uaword	0x83d
	.uleb128 0xc
	.string	"CANIF_OFFLINE"
	.sleb128 0
	.uleb128 0xc
	.string	"CANIF_TX_OFFLINE"
	.sleb128 1
	.uleb128 0xc
	.string	"CANIF_TX_OFFLINE_ACTIVE"
	.sleb128 2
	.uleb128 0xc
	.string	"CANIF_ONLINE"
	.sleb128 3
	.uleb128 0xc
	.string	"CANIF_TX_TP_ONLINE"
	.sleb128 4
	.uleb128 0xc
	.string	"CANIF_TX_USER_TP_ONLINE"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"CanIf_PduModeType"
	.byte	0x7
	.byte	0x43
	.uaword	0x7b9
	.uleb128 0xb
	.byte	0x1
	.byte	0x7
	.byte	0x49
	.uaword	0x8a8
	.uleb128 0xc
	.string	"CANIF_CS_UNINIT"
	.sleb128 0
	.uleb128 0xc
	.string	"CANIF_CS_SLEEP"
	.sleb128 1
	.uleb128 0xc
	.string	"CANIF_CS_STARTED"
	.sleb128 2
	.uleb128 0xc
	.string	"CANIF_CS_STOPPED"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"CanIf_ControllerModeType"
	.byte	0x7
	.byte	0x5b
	.uaword	0x856
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.byte	0xbf
	.uaword	0x9ee
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
	.byte	0x8
	.byte	0xc8
	.uaword	0x8c8
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.byte	0xd9
	.uaword	0xaf0
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
	.byte	0x8
	.byte	0xe0
	.uaword	0xa1a
	.uleb128 0xb
	.byte	0x1
	.byte	0x8
	.byte	0xee
	.uaword	0xb7e
	.uleb128 0xc
	.string	"CANSM_TIMER_INIT"
	.sleb128 1
	.uleb128 0xc
	.string	"CANSM_TIMER_RUNNING"
	.sleb128 2
	.uleb128 0xc
	.string	"CANSM_TIMER_ELAPSED"
	.sleb128 3
	.uleb128 0xc
	.string	"CANSM_TIMER_CANCELLED"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"CanSM_TimerStateType_ten"
	.byte	0x8
	.byte	0xf4
	.uaword	0xb1e
	.uleb128 0x9
	.byte	0x4
	.byte	0x8
	.byte	0xf6
	.uaword	0xbcf
	.uleb128 0xa
	.string	"stTimer"
	.byte	0x8
	.byte	0xf8
	.uaword	0xb7e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"cntTick_u16"
	.byte	0x8
	.byte	0xf9
	.uaword	0x1e3
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x3
	.string	"CanSM_TimerConfig_tst"
	.byte	0x8
	.byte	0xfa
	.uaword	0xb9e
	.uleb128 0xd
	.string	"SchM_Enter_CanSM_BOR_Nw_ModesNoNest"
	.byte	0x9
	.byte	0x1f
	.byte	0x1
	.byte	0x3
	.uleb128 0xd
	.string	"SchM_Exit_CanSM_BOR_Nw_ModesNoNest"
	.byte	0x9
	.byte	0x24
	.byte	0x1
	.byte	0x3
	.uleb128 0xe
	.byte	0x1
	.string	"CanSM_MainFunction"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	.LFB76
	.uaword	.LFE76
	.uaword	.LLST0
	.byte	0x1
	.uaword	0xe63
	.uleb128 0xf
	.string	"CanSM_NetworkIdx_u8"
	.byte	0x1
	.byte	0x25
	.uaword	0x1b8
	.uaword	.LLST1
	.uleb128 0x10
	.string	"CanSM_CurrNwMode_en"
	.byte	0x1
	.byte	0x27
	.uaword	0x5a2
	.uleb128 0xf
	.string	"CanSM_CurrBORState_en"
	.byte	0x1
	.byte	0x29
	.uaword	0x67a
	.uaword	.LLST2
	.uleb128 0xf
	.string	"CanSM_TxToutException_state_en"
	.byte	0x1
	.byte	0x2b
	.uaword	0xaf0
	.uaword	.LLST3
	.uleb128 0xf
	.string	"CanSM_NetworkConf_ps"
	.byte	0x1
	.byte	0x2d
	.uaword	0x796
	.uaword	.LLST4
	.uleb128 0xf
	.string	"CanSM_ControllerId_u8"
	.byte	0x1
	.byte	0x2f
	.uaword	0x1b8
	.uaword	.LLST5
	.uleb128 0xf
	.string	"CanSM_Ctrl_index_u8"
	.byte	0x1
	.byte	0x31
	.uaword	0x1b8
	.uaword	.LLST6
	.uleb128 0x11
	.string	"CanSM_ComM_Mode_uo"
	.byte	0x1
	.byte	0x33
	.uaword	0x2ec
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0xf
	.string	"CanSM_ReqComMode_uo"
	.byte	0x1
	.byte	0x3d
	.uaword	0x2ec
	.uaword	.LLST7
	.uleb128 0xf
	.string	"CanSM_BORMode_u8"
	.byte	0x1
	.byte	0x3f
	.uaword	0x1b8
	.uaword	.LLST8
	.uleb128 0x12
	.uaword	.LVL5
	.uaword	0x1101
	.uaword	0xdbd
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL9
	.uaword	0x112e
	.uaword	0xdd1
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL12
	.uaword	0x1165
	.uaword	0xde5
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL13
	.uaword	0x119a
	.uaword	0xdf9
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL14
	.uaword	0x11ca
	.uaword	0xe0c
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x12
	.uaword	.LVL19
	.uaword	0x11f6
	.uaword	0xe25
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL20
	.uaword	0x1227
	.uaword	0xe3e
	.uleb128 0x13
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.uleb128 0x12
	.uaword	.LVL23
	.uaword	0x1251
	.uaword	0xe52
	.uleb128 0x13
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7a
	.sleb128 0
	.byte	0
	.uleb128 0x14
	.uaword	.LVL26
	.uaword	0x127a
	.uleb128 0x13
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.byte	0
	.byte	0
	.uleb128 0x15
	.string	"CanSM_ConfigSet_pcst"
	.byte	0x8
	.uahalf	0x125
	.uaword	0xe82
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.byte	0x4
	.uaword	0xe88
	.uleb128 0x6
	.uaword	0x7a1
	.uleb128 0x15
	.string	"CanSM_Network_pcst"
	.byte	0x8
	.uahalf	0x12d
	.uaword	0x796
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0xbcf
	.uaword	0xeba
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_TimerConfig_ast"
	.byte	0x8
	.uahalf	0x134
	.uaword	0xeaa
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x5a2
	.uaword	0xeea
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_CurrNw_Mode_en"
	.byte	0x8
	.uahalf	0x142
	.uaword	0xeda
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x67a
	.uaword	0xf19
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_currBOR_State_en"
	.byte	0x8
	.uahalf	0x149
	.uaword	0xf09
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_BusOff_Cntr_au8"
	.byte	0x8
	.uahalf	0x150
	.uaword	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_BORMode_au8"
	.byte	0x8
	.uahalf	0x157
	.uaword	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_BusOff_Indicated_ab"
	.byte	0x8
	.uahalf	0x15e
	.uaword	0x2c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x2ec
	.uaword	0xfaa
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_ReqComM_Mode_en"
	.byte	0x8
	.uahalf	0x16e
	.uaword	0xf9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_BusOffISRPend_ab"
	.byte	0x8
	.uahalf	0x17c
	.uaword	0x2c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_Num_Unsuccessful_ModeReq_au8"
	.byte	0x8
	.uahalf	0x198
	.uaword	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_BusSMMode_au8"
	.byte	0x8
	.uahalf	0x1cf
	.uaword	0xf9a
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0x9ee
	.uaword	0x1046
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_WakeUpValidation_Substates_en"
	.byte	0x8
	.uahalf	0x1dd
	.uaword	0x1036
	.byte	0x1
	.byte	0x1
	.uleb128 0x4
	.uaword	0xaf0
	.uaword	0x1084
	.uleb128 0x5
	.uaword	0x2a2
	.byte	0x3
	.byte	0
	.uleb128 0x15
	.string	"CanSM_TxTimeoutexception_Substates_en"
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x1074
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_Rb_DisableBusOffRecovery_ab"
	.byte	0x8
	.uahalf	0x21d
	.uaword	0x2c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"CanSM_BOR_SilentCom_ab"
	.byte	0x8
	.uahalf	0x224
	.uaword	0x2c7
	.byte	0x1
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"CanSM_NetworkModeTrans"
	.byte	0x8
	.uahalf	0x245
	.byte	0x1
	.byte	0x1
	.uaword	0x112e
	.uleb128 0x17
	.uaword	0x2ae
	.uleb128 0x17
	.uaword	0x2ec
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CanSM_TxTimeoutException_StateMachine"
	.byte	0x8
	.uahalf	0x244
	.byte	0x1
	.byte	0x1
	.uaword	0x1165
	.uleb128 0x17
	.uaword	0x2ae
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CanSM_WakeUpValidation_StateMachine"
	.byte	0x8
	.uahalf	0x24f
	.byte	0x1
	.byte	0x1
	.uaword	0x119a
	.uleb128 0x17
	.uaword	0x2ae
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CanSM_BOR_CtrlsStart_SilentCom"
	.byte	0x8
	.uahalf	0x24e
	.byte	0x1
	.byte	0x1
	.uaword	0x11ca
	.uleb128 0x17
	.uaword	0x2ae
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"Dem_ReportErrorStatus"
	.byte	0xa
	.uahalf	0x33b
	.byte	0x1
	.byte	0x1
	.uaword	0x11f6
	.uleb128 0x17
	.uaword	0x301
	.uleb128 0x17
	.uaword	0x319
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"CanIf_SetControllerMode"
	.byte	0xb
	.byte	0x4a
	.byte	0x1
	.uaword	0x28c
	.byte	0x1
	.uaword	0x1227
	.uleb128 0x17
	.uaword	0x1b8
	.uleb128 0x17
	.uaword	0x8a8
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"CanIf_SetPduMode"
	.byte	0xb
	.byte	0x70
	.byte	0x1
	.uaword	0x28c
	.byte	0x1
	.uaword	0x1251
	.uleb128 0x17
	.uaword	0x1b8
	.uleb128 0x17
	.uaword	0x83d
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"CanSM_BusOffTransitions"
	.byte	0x8
	.uahalf	0x24b
	.byte	0x1
	.byte	0x1
	.uaword	0x127a
	.uleb128 0x17
	.uaword	0x2ae
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"ComM_BusSM_ModeIndication"
	.byte	0xc
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.uaword	0x2ae
	.uleb128 0x17
	.uaword	0x335
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
	.uleb128 0xe
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x1
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB76
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE76
	.uahalf	0x2
	.byte	0x8a
	.sleb128 32
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x7a
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL9-1
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5d
	.uaword	.LVL11
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x5
	.byte	0x83
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL8
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL19-1
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL9-1
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL11
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x91
	.sleb128 -24
	.uaword	.LVL8
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x91
	.sleb128 -24
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x84
	.sleb128 -24
	.uaword	.LVL25
	.uaword	.LVL26-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 -23
	.uaword	.LVL26-1
	.uaword	.LFE76
	.uahalf	0x2
	.byte	0x91
	.sleb128 -24
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
	.extern	ComM_BusSM_ModeIndication,STT_FUNC,0
	.extern	CanSM_BusSMMode_au8,STT_OBJECT,4
	.extern	CanSM_BusOffTransitions,STT_FUNC,0
	.extern	CanSM_BusOffISRPend_ab,STT_OBJECT,4
	.extern	CanIf_SetPduMode,STT_FUNC,0
	.extern	CanIf_SetControllerMode,STT_FUNC,0
	.extern	Dem_ReportErrorStatus,STT_FUNC,0
	.extern	CanSM_BOR_CtrlsStart_SilentCom,STT_FUNC,0
	.extern	CanSM_WakeUpValidation_StateMachine,STT_FUNC,0
	.extern	CanSM_TxTimeoutException_StateMachine,STT_FUNC,0
	.extern	CanSM_Rb_DisableBusOffRecovery_ab,STT_OBJECT,4
	.extern	CanSM_BOR_SilentCom_ab,STT_OBJECT,4
	.extern	CanSM_WakeUpValidation_Substates_en,STT_OBJECT,4
	.extern	CanSM_NetworkModeTrans,STT_FUNC,0
	.extern	CanSM_TimerConfig_ast,STT_OBJECT,16
	.extern	CanSM_ReqComM_Mode_en,STT_OBJECT,4
	.extern	CanSM_TxTimeoutexception_Substates_en,STT_OBJECT,4
	.extern	CanSM_currBOR_State_en,STT_OBJECT,4
	.extern	CanSM_CurrNw_Mode_en,STT_OBJECT,4
	.extern	CanSM_Network_pcst,STT_OBJECT,4
	.extern	CanSM_Num_Unsuccessful_ModeReq_au8,STT_OBJECT,4
	.extern	CanSM_BusOff_Cntr_au8,STT_OBJECT,4
	.extern	CanSM_BusOff_Indicated_ab,STT_OBJECT,4
	.extern	CanSM_BORMode_au8,STT_OBJECT,4
	.extern	CanSM_ConfigSet_pcst,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
