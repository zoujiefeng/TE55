	.file	"ASW_NM.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ASWNM_bGetStayAwakeReq,"ax",@progbits
	.align 1
	.global	ASWNM_bGetStayAwakeReq
	.type	ASWNM_bGetStayAwakeReq, @function
ASWNM_bGetStayAwakeReq:
.LFB31:
	.file 1 "ASW\\ASW_NM\\src\\ASW_NM.c"
	.loc 1 81 0
	.loc 1 86 0
	call	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON
.LVL0:
	jz	%d2, .L6
.LVL1:
	.loc 1 99 0
	mov	%d2, 1
.LVL2:
.L4:
	.loc 1 108 0
	ret
.L6:
	.loc 1 86 0 discriminator 2
	call	IOHAL_u16Read_CH_DIO_IN_M_CHG_ON
.LVL3:
	jz	%d2, .L4
.LVL4:
	.loc 1 99 0
	mov	%d2, 1
.LVL5:
	j	.L4
.LFE31:
	.size	ASWNM_bGetStayAwakeReq, .-ASWNM_bGetStayAwakeReq
.section .text.ASWNM_bGetFullComSts,"ax",@progbits
	.align 1
	.global	ASWNM_bGetFullComSts
	.type	ASWNM_bGetFullComSts, @function
ASWNM_bGetFullComSts:
.LFB32:
	.loc 1 111 0
	.loc 1 113 0
	movh.a	%a15, hi:ASWNM_bFullComSts
	ld.bu	%d2, [%a15] lo:ASWNM_bFullComSts
	ret
.LFE32:
	.size	ASWNM_bGetFullComSts, .-ASWNM_bGetFullComSts
.section .text.RE_ASW_NM_func,"ax",@progbits
	.align 1
	.global	RE_ASW_NM_func
	.type	RE_ASW_NM_func, @function
RE_ASW_NM_func:
.LFB33:
	.loc 1 129 0
.LVL6:
	.loc 1 133 0
	movh.a	%a15, hi:ASWNM_u8REState
	ld.bu	%d15, [%a15] lo:ASWNM_u8REState
	jz	%d15, .L10
	jeq	%d15, 1, .L11
.L9:
	.loc 1 195 0
	movh.a	%a15, hi:ASWNM_u8OpState
	.loc 1 192 0
	movh.a	%a12, hi:ASWNM_u16Kl15Sts
	mov	%d15, 1
	.loc 1 195 0
	ld.bu	%d2, [%a15] lo:ASWNM_u8OpState
	.loc 1 192 0
	st.h	[%a12] lo:ASWNM_u16Kl15Sts, %d15
	.loc 1 195 0
	jeq	%d2, 2, .L14
.L22:
	jeq	%d2, 3, .L15
	jz	%d2, .L20
.L8:
	ret
.L11:
	.loc 1 162 0
	movh.a	%a2, hi:wakeup_reason
	ld.bu	%d2, [%a2] lo:wakeup_reason
	jnz	%d2, .L12
	.loc 1 162 0 is_stmt 0 discriminator 1
	movh.a	%a2, hi:Nm_Test
	lea	%a2, [%a2] lo:Nm_Test
	ld.bu	%d2, [%a2] 2
	jeq	%d2, 5, .L21
.L12:
	.loc 1 169 0 is_stmt 1
	mov	%d15, 1
	st.b	[%a15] lo:ASWNM_u8REState, %d15
	.loc 1 195 0
	movh.a	%a15, hi:ASWNM_u8OpState
	.loc 1 192 0
	movh.a	%a12, hi:ASWNM_u16Kl15Sts
	mov	%d15, 1
	.loc 1 195 0
	ld.bu	%d2, [%a15] lo:ASWNM_u8OpState
	.loc 1 192 0
	st.h	[%a12] lo:ASWNM_u16Kl15Sts, %d15
	.loc 1 195 0
	jne	%d2, 2, .L22
.L14:
	.loc 1 230 0
	mov	%d4, 2
	.loc 1 231 0
	movh.a	%a13, hi:ASWNM_bFullComSts
	.loc 1 230 0
	call	Rte_Write_ASW_NM_PP_BswMArbitration_BswM_MRP_Network_uint8
.LVL7:
	.loc 1 231 0
	st.b	[%a13] lo:ASWNM_bFullComSts, %d15
	.loc 1 232 0
	st.b	[%a15] lo:ASWNM_u8OpState, %d15
	.loc 1 235 0
	ld.hu	%d15, [%a12] lo:ASWNM_u16Kl15Sts
	jnz	%d15, .L8
	.loc 1 237 0
	mov	%d4, 0
	call	Rte_Write_ASW_NM_PP_BswMArbitration_BswM_MRP_Network_uint8
.LVL8:
	.loc 1 238 0
	st.b	[%a13] lo:ASWNM_bFullComSts, %d15
	.loc 1 239 0
	mov	%d15, 3
	st.b	[%a15] lo:ASWNM_u8OpState, %d15
	ret
.L20:
	.loc 1 199 0
	movh.a	%a12, hi:wakeup_reason
	ld.bu	%d8, [%a12] lo:wakeup_reason
	jeq	%d8, 1, .L23
	.loc 1 206 0
	jne	%d8, 2, .L8
.L24:
	.loc 1 208 0
	mov	%d4, 0
	call	ComM_EcuM_WakeUpIndication
.LVL9:
	.loc 1 209 0
	mov	%d15, 1
	movh.a	%a2, hi:ASWNM_bFullComSts
	st.b	[%a2] lo:ASWNM_bFullComSts, %d15
	.loc 1 210 0
	st.b	[%a15] lo:ASWNM_u8OpState, %d8
	ret
.L10:
	.loc 1 155 0
	mov	%d15, 1
	movh.a	%a2, hi:wakeup_reason
	st.b	[%a2] lo:wakeup_reason, %d15
	.loc 1 157 0
	st.b	[%a15] lo:ASWNM_u8REState, %d15
	.loc 1 158 0
	j	.L9
.L15:
	.loc 1 248 0
	mov	%d4, 2
	call	Rte_Write_ASW_NM_PP_BswMArbitration_BswM_MRP_Network_uint8
.LVL10:
	.loc 1 249 0
	movh.a	%a2, hi:ASWNM_bFullComSts
	st.b	[%a2] lo:ASWNM_bFullComSts, %d15
	.loc 1 250 0
	st.b	[%a15] lo:ASWNM_u8OpState, %d15
	ret
.L21:
	.loc 1 164 0
	movh.a	%a2, hi:shutdown_b
	st.b	[%a2] lo:shutdown_b, %d15
	j	.L12
.L23:
	.loc 1 201 0
	mov	%d4, 2
	call	Rte_Write_ASW_NM_PP_BswMArbitration_BswM_MRP_Network_uint8
.LVL11:
	.loc 1 202 0
	movh.a	%a2, hi:ASWNM_bFullComSts
	ld.bu	%d8, [%a12] lo:wakeup_reason
	st.b	[%a2] lo:ASWNM_bFullComSts, %d15
	.loc 1 203 0
	st.b	[%a15] lo:ASWNM_u8OpState, %d15
	.loc 1 206 0
	jne	%d8, 2, .L8
	j	.L24
.LFE33:
	.size	RE_ASW_NM_func, .-RE_ASW_NM_func
.section .text.Nm_RxIndicationCallback,"ax",@progbits
	.align 1
	.global	Nm_RxIndicationCallback
	.type	Nm_RxIndicationCallback, @function
Nm_RxIndicationCallback:
.LFB34:
	.loc 1 271 0
.LVL12:
	.loc 1 272 0
	mov	%d15, 1
	movh.a	%a15, hi:Received_NM_Flag
	st.b	[%a15] lo:Received_NM_Flag, %d15
	.loc 1 273 0
	jnz	%d4, .L25
	.loc 1 275 0
	movh.a	%a15, hi:Nm_Test
	lea	%a15, [%a15] lo:Nm_Test
	st.b	[%a15] 3, %d15
.L25:
	ret
.LFE34:
	.size	Nm_RxIndicationCallback, .-Nm_RxIndicationCallback
.section .text.setUserData,"ax",@progbits
	.align 1
	.global	setUserData
	.type	setUserData, @function
setUserData:
.LFB35:
	.loc 1 284 0
.LVL13:
	.loc 1 285 0
	mul	%d15, %d4, 26
	movh.a	%a4, hi:Nm_Test
	lea	%a4, [%a4] lo:Nm_Test
	movh.a	%a15, hi:nm_repeat_st
	addsc.a	%a2, %a4, %d15, 0
	ld.bu	%d2, [%a15] lo:nm_repeat_st
	.loc 1 286 0
	lea	%a4, [%a2] 14
	.loc 1 285 0
	st.b	[%a2] 14, %d2
	.loc 1 286 0
	j	Nm_SetUserData
.LVL14:
.LFE35:
	.size	setUserData, .-setUserData
.section .text.Nm_StateChangeIndication,"ax",@progbits
	.align 1
	.global	Nm_StateChangeIndication
	.type	Nm_StateChangeIndication, @function
Nm_StateChangeIndication:
.LFB36:
	.loc 1 293 0
.LVL15:
	.loc 1 294 0
	movh.a	%a15, hi:ASWNM_u8CurrentState
	st.b	[%a15] lo:ASWNM_u8CurrentState, %d6
	.loc 1 295 0
	jnz	%d4, .L28
	.loc 1 297 0
	movh.a	%a4, hi:Nm_Test
	lea	%a4, [%a4] lo:Nm_Test
	.loc 1 298 0
	st.b	[%a4] 2, %d6
	.loc 1 297 0
	st.b	[%a4] 1, %d5
	.loc 1 299 0
	add	%d6, -1
.LVL16:
	jlt.u	%d6, 7, .L37
.L28:
	ret
.L37:
	movh.a	%a15, hi:.L32
	lea	%a15, [%a15] lo:.L32
	addsc.a	%a15, %a15, %d6, 2
	ji	%a15
	.align 2
	.align 2
.L32:
	.code32
	j	.L31
	.code32
	j	.L33
	.code32
	j	.L33
	.code32
	j	.L34
	.code32
	j	.L35
	.code32
	j	.L33
	.code32
	j	.L33
.L34:
	.loc 1 308 0
	mov	%d15, 0
	movh.a	%a15, hi:nm_repeat_st
	st.b	[%a15] lo:nm_repeat_st, %d15
.LVL17:
.LBB6:
.LBB7:
	.loc 1 285 0
	st.b	[+%a4]14, %d15
	.loc 1 286 0
	mov	%d4, 0
.LVL18:
.LBE7:
.LBE6:
	.loc 1 310 0
	mov	%d15, 1
	movh.a	%a15, hi:ASWNM_bStayAwake
.LBB9:
.LBB8:
	.loc 1 286 0
	call	Nm_SetUserData
.LVL19:
.LBE8:
.LBE9:
	.loc 1 310 0
	st.b	[%a15] lo:ASWNM_bStayAwake, %d15
	.loc 1 311 0
	ret
.LVL20:
.L33:
	.loc 1 321 0
	mov	%d15, 1
	movh.a	%a15, hi:ASWNM_bStayAwake
	st.b	[%a15] lo:ASWNM_bStayAwake, %d15
	ret
.L31:
	.loc 1 302 0
	jne	%d5, 2, .L28
	.loc 1 304 0
	mov	%d15, 0
	movh.a	%a15, hi:ASWNM_bStayAwake
	st.b	[%a15] lo:ASWNM_bStayAwake, %d15
	ret
.L35:
	.loc 1 313 0
	mov	%d15, 1
	movh.a	%a15, hi:nm_repeat_st
	st.b	[%a15] lo:nm_repeat_st, %d15
.LVL21:
.LBB10:
.LBB11:
	.loc 1 285 0
	st.b	[+%a4]14, %d15
	.loc 1 286 0
	mov	%d4, 0
.LVL22:
.LBE11:
.LBE10:
	.loc 1 315 0
	movh.a	%a15, hi:ASWNM_bStayAwake
.LBB13:
.LBB12:
	.loc 1 286 0
	call	Nm_SetUserData
.LVL23:
.LBE12:
.LBE13:
	.loc 1 315 0
	st.b	[%a15] lo:ASWNM_bStayAwake, %d15
	.loc 1 316 0
	ret
.LFE36:
	.size	Nm_StateChangeIndication, .-Nm_StateChangeIndication
.section .text.TestNm_RemoteSleepCancellation,"ax",@progbits
	.align 1
	.global	TestNm_RemoteSleepCancellation
	.type	TestNm_RemoteSleepCancellation, @function
TestNm_RemoteSleepCancellation:
.LFB37:
	.loc 1 338 0
.LVL24:
	ret
.LFE37:
	.size	TestNm_RemoteSleepCancellation, .-TestNm_RemoteSleepCancellation
.section .text.TestNm_RemoteSleepIndication,"ax",@progbits
	.align 1
	.global	TestNm_RemoteSleepIndication
	.type	TestNm_RemoteSleepIndication, @function
TestNm_RemoteSleepIndication:
.LFB38:
	.loc 1 346 0
.LVL25:
	ret
.LFE38:
	.size	TestNm_RemoteSleepIndication, .-TestNm_RemoteSleepIndication
	.global	Nm_Test
.section .bss.a2.Nm_Test,"aw",@nobits
	.align 1
	.type	Nm_Test, @object
	.size	Nm_Test, 26
Nm_Test:
	.zero	26
.section .bss.a1.wakeup_reason,"aw",@nobits
	.type	wakeup_reason, @object
	.size	wakeup_reason, 1
wakeup_reason:
	.zero	1
	.global	ASWNM_u8REState
.section .bss.a1.ASWNM_u8REState,"aw",@nobits
	.type	ASWNM_u8REState, @object
	.size	ASWNM_u8REState, 1
ASWNM_u8REState:
	.zero	1
	.global	ASWNM_u8OpState
.section .bss.a1.ASWNM_u8OpState,"aw",@nobits
	.type	ASWNM_u8OpState, @object
	.size	ASWNM_u8OpState, 1
ASWNM_u8OpState:
	.zero	1
	.global	Received_NM_Flag
.section .bss.a1.Received_NM_Flag,"aw",@nobits
	.type	Received_NM_Flag, @object
	.size	Received_NM_Flag, 1
Received_NM_Flag:
	.zero	1
	.global	ASWNM_u8CurrentState
.section .bss.a1.ASWNM_u8CurrentState,"aw",@nobits
	.type	ASWNM_u8CurrentState, @object
	.size	ASWNM_u8CurrentState, 1
ASWNM_u8CurrentState:
	.zero	1
	.global	ASWNM_u16AfterRunDelayTimes
.section .bss.a2.ASWNM_u16AfterRunDelayTimes,"aw",@nobits
	.align 1
	.type	ASWNM_u16AfterRunDelayTimes, @object
	.size	ASWNM_u16AfterRunDelayTimes, 2
ASWNM_u16AfterRunDelayTimes:
	.zero	2
	.global	ASWNM_bFullComSts
.section .data.a1.ASWNM_bFullComSts,"aw",@progbits
	.type	ASWNM_bFullComSts, @object
	.size	ASWNM_bFullComSts, 1
ASWNM_bFullComSts:
	.byte	1
	.global	ASWNM_bStayAwake
.section .bss.a1.ASWNM_bStayAwake,"aw",@nobits
	.type	ASWNM_bStayAwake, @object
	.size	ASWNM_bStayAwake, 1
ASWNM_bStayAwake:
	.zero	1
	.global	ASWNM_u16Kl15Sts
.section .bss.a2.ASWNM_u16Kl15Sts,"aw",@nobits
	.align 1
	.type	ASWNM_u16Kl15Sts, @object
	.size	ASWNM_u16Kl15Sts, 2
ASWNM_u16Kl15Sts:
	.zero	2
	.global	ASWNM_bBusSleep
.section .bss.a1.ASWNM_bBusSleep,"aw",@nobits
	.type	ASWNM_bBusSleep, @object
	.size	ASWNM_bBusSleep, 1
ASWNM_bBusSleep:
	.zero	1
	.global	nm_repeat_st
.section .bss.a1.nm_repeat_st,"aw",@nobits
	.type	nm_repeat_st, @object
	.size	nm_repeat_st, 1
nm_repeat_st:
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\api\\ComStack_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\NmStack_Types.h"
	.file 6 ".\\output\\inc/..\\..\\ASW\\ASW_NM\\api\\ASW_NM.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\ComM\\api\\ComM_EcuMBswM.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Nm\\api\\Nm.h"
	.file 10 ".\\output\\inc/..\\..\\rte\\Rte_ASW_NM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb0a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_NM\\src\\ASW_NM.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x30
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1a6
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1b7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1cd
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
	.uaword	0x1a6
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
	.uaword	0x20c
	.uleb128 0x3
	.string	"NetworkHandleType"
	.byte	0x4
	.byte	0x4f
	.uaword	0x20c
	.uleb128 0x4
	.uaword	0x20c
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2d2
	.uleb128 0x6
	.byte	0x1
	.byte	0x5
	.byte	0x44
	.uaword	0x3a1
	.uleb128 0x7
	.string	"NM_STATE_UNINIT"
	.sleb128 0
	.uleb128 0x7
	.string	"NM_STATE_BUS_SLEEP"
	.sleb128 1
	.uleb128 0x7
	.string	"NM_STATE_PREPARE_BUS_SLEEP"
	.sleb128 2
	.uleb128 0x7
	.string	"NM_STATE_READY_SLEEP"
	.sleb128 3
	.uleb128 0x7
	.string	"NM_STATE_NORMAL_OPERATION"
	.sleb128 4
	.uleb128 0x7
	.string	"NM_STATE_REPEAT_MESSAGE"
	.sleb128 5
	.uleb128 0x7
	.string	"NM_STATE_SYNCHRONIZE"
	.sleb128 6
	.uleb128 0x7
	.string	"NM_STATE_OFFLINE"
	.sleb128 7
	.byte	0
	.uleb128 0x3
	.string	"Nm_StateType"
	.byte	0x5
	.byte	0x4d
	.uaword	0x2dd
	.uleb128 0x8
	.byte	0x1a
	.byte	0x6
	.byte	0x17
	.uaword	0x4ac
	.uleb128 0x9
	.string	"flag"
	.byte	0x6
	.byte	0x18
	.uaword	0x4ac
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"nm_PreviousState"
	.byte	0x6
	.byte	0x19
	.uaword	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x9
	.string	"nm_CurrentState"
	.byte	0x6
	.byte	0x1a
	.uaword	0x3a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x9
	.string	"IsNmReceived"
	.byte	0x6
	.byte	0x1b
	.uaword	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x9
	.string	"release_b"
	.byte	0x6
	.byte	0x1c
	.uaword	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"request_b"
	.byte	0x6
	.byte	0x1d
	.uaword	0x273
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.string	"nm_rx_data"
	.byte	0x6
	.byte	0x1e
	.uaword	0x4b4
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x9
	.string	"nm_tx_data"
	.byte	0x6
	.byte	0x1f
	.uaword	0x4b4
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x9
	.string	"nmState"
	.byte	0x6
	.byte	0x20
	.uaword	0x4ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x9
	.string	"nmMode"
	.byte	0x6
	.byte	0x21
	.uaword	0x4ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x17
	.uleb128 0x9
	.string	"NotReceiveNMCounter"
	.byte	0x6
	.byte	0x22
	.uaword	0x4ac
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xa
	.uaword	0x4ac
	.uaword	0x4c4
	.uleb128 0xb
	.uaword	0x200
	.byte	0x7
	.byte	0
	.uleb128 0x3
	.string	"Nm_Test_t"
	.byte	0x6
	.byte	0x23
	.uaword	0x3b5
	.uleb128 0x6
	.byte	0x1
	.byte	0x1
	.byte	0x29
	.uaword	0x4ff
	.uleb128 0x7
	.string	"NO_REASON"
	.sleb128 0
	.uleb128 0x7
	.string	"KL15_WU"
	.sleb128 1
	.uleb128 0x7
	.string	"NMMSG_WU"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"WU_SRC_t"
	.byte	0x1
	.byte	0x2d
	.uaword	0x4d5
	.uleb128 0x6
	.byte	0x1
	.byte	0x1
	.byte	0x76
	.uaword	0x542
	.uleb128 0x7
	.string	"ASW_NM_INIT_STATE"
	.sleb128 0
	.uleb128 0x7
	.string	"ASW_NM_NORMAL_STATE"
	.sleb128 1
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"setUserData"
	.byte	0x1
	.uahalf	0x11b
	.byte	0x1
	.byte	0x1
	.uaword	0x566
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x2b9
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"ASWNM_bGetStayAwakeReq"
	.byte	0x1
	.byte	0x50
	.byte	0x1
	.uaword	0x273
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5d9
	.uleb128 0xf
	.string	"bLocKL15Sts"
	.byte	0x1
	.byte	0x52
	.uaword	0x273
	.uaword	.LLST0
	.uleb128 0xf
	.string	"bStayAwakeSts"
	.byte	0x1
	.byte	0x53
	.uaword	0x273
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	.LVL0
	.uaword	0xa18
	.uleb128 0x10
	.uaword	.LVL3
	.uaword	0xa43
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"ASWNM_bGetFullComSts"
	.byte	0x1
	.byte	0x6e
	.byte	0x1
	.uaword	0x273
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"RE_ASW_NM_func"
	.byte	0x1
	.byte	0x7d
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6a5
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.byte	0x82
	.uaword	0x20c
	.byte	0
	.uleb128 0x14
	.string	"u16LocKl15Sts"
	.byte	0x1
	.byte	0x83
	.uaword	0x219
	.byte	0
	.uleb128 0x15
	.uaword	.LVL7
	.uaword	0xa6e
	.uaword	0x65c
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x15
	.uaword	.LVL8
	.uaword	0xa6e
	.uaword	0x66f
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.uaword	.LVL9
	.uaword	0xabd
	.uaword	0x682
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.uaword	.LVL10
	.uaword	0xa6e
	.uaword	0x695
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x17
	.uaword	.LVL11
	.uaword	0xa6e
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Nm_RxIndicationCallback"
	.byte	0x1
	.uahalf	0x10e
	.byte	0x1
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6e2
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x6e2
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x4
	.uaword	0x2b9
	.uleb128 0x1a
	.uaword	0x542
	.uaword	.LFB35
	.uaword	.LFE35
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x71d
	.uleb128 0x1b
	.uaword	0x559
	.uaword	.LLST2
	.uleb128 0x1c
	.uaword	.LVL14
	.byte	0x1
	.uaword	0xae8
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x3
	.uaword	Nm_Test+14
	.byte	0x22
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Nm_StateChangeIndication"
	.byte	0x1
	.uahalf	0x122
	.byte	0x1
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7f9
	.uleb128 0x1d
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x122
	.uaword	0x6e2
	.uaword	.LLST3
	.uleb128 0x1e
	.string	"nmPreviousState"
	.byte	0x1
	.uahalf	0x123
	.uaword	0x7f9
	.uaword	.LLST4
	.uleb128 0x1e
	.string	"nmCurrentState"
	.byte	0x1
	.uahalf	0x124
	.uaword	0x7f9
	.uaword	.LLST5
	.uleb128 0x1f
	.uaword	0x542
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x135
	.uaword	0x7c9
	.uleb128 0x1b
	.uaword	0x559
	.uaword	.LLST6
	.uleb128 0x17
	.uaword	.LVL19
	.uaword	0xae8
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	Nm_Test+14
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x542
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x13a
	.uleb128 0x21
	.uaword	0x559
	.byte	0
	.uleb128 0x17
	.uaword	.LVL23
	.uaword	0xae8
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	Nm_Test+14
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x4
	.uaword	0x3a1
	.uleb128 0x18
	.byte	0x1
	.string	"TestNm_RemoteSleepCancellation"
	.byte	0x1
	.uahalf	0x151
	.byte	0x1
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x842
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x151
	.uaword	0x6e2
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"TestNm_RemoteSleepIndication"
	.byte	0x1
	.uahalf	0x159
	.byte	0x1
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x884
	.uleb128 0x19
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x159
	.uaword	0x6e2
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x22
	.string	"wakeup_reason"
	.byte	0x1
	.byte	0x3c
	.uaword	0x4ff
	.byte	0x5
	.byte	0x3
	.uaword	wakeup_reason
	.uleb128 0x23
	.string	"shutdown_b"
	.byte	0x6
	.byte	0x25
	.uaword	0x20c
	.byte	0x1
	.byte	0x1
	.uleb128 0x24
	.string	"ASWNM_bBusSleep"
	.byte	0x1
	.byte	0x30
	.uaword	0x273
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ASWNM_bBusSleep
	.uleb128 0x24
	.string	"ASWNM_u16Kl15Sts"
	.byte	0x1
	.byte	0x31
	.uaword	0x219
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ASWNM_u16Kl15Sts
	.uleb128 0x24
	.string	"ASWNM_bStayAwake"
	.byte	0x1
	.byte	0x32
	.uaword	0x273
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ASWNM_bStayAwake
	.uleb128 0x24
	.string	"ASWNM_bFullComSts"
	.byte	0x1
	.byte	0x33
	.uaword	0x273
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ASWNM_bFullComSts
	.uleb128 0x24
	.string	"Received_NM_Flag"
	.byte	0x1
	.byte	0x36
	.uaword	0x20c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Received_NM_Flag
	.uleb128 0x24
	.string	"ASWNM_u8OpState"
	.byte	0x1
	.byte	0x37
	.uaword	0x20c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ASWNM_u8OpState
	.uleb128 0x24
	.string	"nm_repeat_st"
	.byte	0x1
	.byte	0x2f
	.uaword	0x273
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	nm_repeat_st
	.uleb128 0x24
	.string	"ASWNM_u16AfterRunDelayTimes"
	.byte	0x1
	.byte	0x34
	.uaword	0x219
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ASWNM_u16AfterRunDelayTimes
	.uleb128 0x24
	.string	"ASWNM_u8CurrentState"
	.byte	0x1
	.byte	0x35
	.uaword	0x20c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ASWNM_u8CurrentState
	.uleb128 0x24
	.string	"ASWNM_u8REState"
	.byte	0x1
	.byte	0x38
	.uaword	0x20c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ASWNM_u8REState
	.uleb128 0xa
	.uaword	0x4c4
	.uaword	0xa02
	.uleb128 0xb
	.uaword	0x200
	.byte	0
	.byte	0
	.uleb128 0x24
	.string	"Nm_Test"
	.byte	0x1
	.byte	0x3d
	.uaword	0x9f2
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Nm_Test
	.uleb128 0x25
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_KEY_ON"
	.byte	0x7
	.byte	0x7d
	.byte	0x1
	.uaword	0x219
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_CHG_ON"
	.byte	0x7
	.byte	0x87
	.byte	0x1
	.uaword	0x219
	.byte	0x1
	.uleb128 0x26
	.byte	0x1
	.string	"Rte_Write_ASW_NM_PP_BswMArbitration_BswM_MRP_Network_uint8"
	.byte	0xa
	.byte	0x89
	.byte	0x1
	.uaword	0x2a3
	.byte	0x1
	.uaword	0xabd
	.uleb128 0x27
	.uaword	0x20c
	.byte	0
	.uleb128 0x28
	.byte	0x1
	.string	"ComM_EcuM_WakeUpIndication"
	.byte	0x8
	.byte	0x23
	.byte	0x1
	.byte	0x1
	.uaword	0xae8
	.uleb128 0x27
	.uaword	0x2b9
	.byte	0
	.uleb128 0x29
	.byte	0x1
	.string	"Nm_SetUserData"
	.byte	0x9
	.uahalf	0x2b9
	.byte	0x1
	.uaword	0x2a3
	.byte	0x1
	.uleb128 0x27
	.uaword	0x2b9
	.uleb128 0x27
	.uaword	0x2d7
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0xe
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5
	.uaword	.LFE31
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14-1
	.uaword	.LFE35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LFE36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL15
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL19-1
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL23-1
	.uaword	.LFE36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL16
	.uaword	.LVL19-1
	.uahalf	0x5
	.byte	0x3
	.uaword	ASWNM_u8CurrentState
	.uaword	.LVL19-1
	.uaword	.LVL20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL23-1
	.uahalf	0x5
	.byte	0x3
	.uaword	ASWNM_u8CurrentState
	.uaword	.LVL23-1
	.uaword	.LFE36
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	.LFB35
	.uaword	.LFE35-.LFB35
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB6
	.uaword	.LBE6
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0
	.uaword	0
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB13
	.uaword	.LBE13
	.uaword	0
	.uaword	0
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	.LFB35
	.uaword	.LFE35
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	.LFB37
	.uaword	.LFE37
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"NetworkHandle"
	.extern	Nm_SetUserData,STT_FUNC,0
	.extern	shutdown_b,STT_OBJECT,1
	.extern	ComM_EcuM_WakeUpIndication,STT_FUNC,0
	.extern	Rte_Write_ASW_NM_PP_BswMArbitration_BswM_MRP_Network_uint8,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_CHG_ON,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
