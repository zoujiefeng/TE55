	.file	"EcuM_WakeupServices.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.EcuM_SetWakeupEvent,"ax",@progbits
	.align 1
	.global	EcuM_SetWakeupEvent
	.type	EcuM_SetWakeupEvent, @function
EcuM_SetWakeupEvent:
.LFB71:
	.file 1 "bsw\\EcuM\\src\\EcuM_WakeupServices.c"
	.loc 1 44 0
.LVL0:
	.loc 1 44 0
	mov	%d15, %d4
	.loc 1 67 0
	call	EcuM_Prv_hasCheckWakeupSourceGetHandle_b
.LVL1:
	jz	%d2, .L6
	.loc 1 99 0
	movh.a	%a2, hi:EcuM_Prv_dataPendingWakeupEvents_u32
	movh.a	%a15, hi:EcuM_Prv_dataValidatedWakeupEvents_u32
	ld.w	%d4, [%a2] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	ld.w	%d3, [%a15] lo:EcuM_Prv_dataValidatedWakeupEvents_u32
	.loc 1 100 0
	movh.a	%a2, hi:EcuM_Prv_dataExpiredWakeupEvents_u32
	.loc 1 99 0
	not	%d4
	.loc 1 100 0
	ld.w	%d2, [%a2] lo:EcuM_Prv_dataExpiredWakeupEvents_u32
	andn	%d4, %d4, %d3
	andn	%d4, %d4, %d2
	.loc 1 99 0
	and	%d15, %d4
.LVL2:
	.loc 1 106 0
	and	%d4, %d15, 127
	cmovn	%d4, %d15, 0
.LVL3:
	.loc 1 148 0
	or	%d15, %d4, %d3
.LVL4:
	st.w	[%a15] lo:EcuM_Prv_dataValidatedWakeupEvents_u32, %d15
	.loc 1 151 0
	movh.a	%a15, hi:EcuM_Prv_dataValWkpEventsInd_u32
	ld.w	%d15, [%a15] lo:EcuM_Prv_dataValWkpEventsInd_u32
	or	%d4, %d15
.LVL5:
	st.w	[%a15] lo:EcuM_Prv_dataValWkpEventsInd_u32, %d4
	ret
.LVL6:
.L6:
	.loc 1 71 0
	mov	%e4, 10
	mov	%d6, 12
	mov	%d7, 23
	j	Det_ReportError
.LVL7:
.LFE71:
	.size	EcuM_SetWakeupEvent, .-EcuM_SetWakeupEvent
.section .text.EcuM_ValidateWakeupEvent,"ax",@progbits
	.align 1
	.global	EcuM_ValidateWakeupEvent
	.type	EcuM_ValidateWakeupEvent, @function
EcuM_ValidateWakeupEvent:
.LFB72:
	.loc 1 184 0
.LVL8:
	.loc 1 193 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d2, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	.loc 1 184 0
	mov	%d15, %d4
	.loc 1 193 0
	jnz	%d2, .L8
	.loc 1 197 0
	mov	%e4, 10
.LVL9:
	mov	%d6, 20
	mov	%d7, 16
	j	Det_ReportError
.LVL10:
.L8:
	.loc 1 202 0
	call	EcuM_Prv_hasCheckWakeupSourceGetHandle_b
.LVL11:
	jz	%d2, .L20
	.loc 1 216 0
	movh.a	%a15, hi:EcuM_Prv_dataPendingWakeupEvents_u32
	ld.w	%d2, [%a15] lo:EcuM_Prv_dataPendingWakeupEvents_u32
.LVL12:
	.loc 1 222 0
	and	%d15, %d2
.LVL13:
	.loc 1 224 0
	jz	%d15, .L7
	.loc 1 228 0
	mov	%d4, %d15
	call	EcuM_Prv_ComMWakeupHandling
.LVL14:
	.loc 1 233 0
	movh.a	%a2, hi:EcuM_Prv_dataPresentPhase_u8
	ld.bu	%d3, [%a2] lo:EcuM_Prv_dataPresentPhase_u8
	.loc 1 242 0
	movh.a	%a2, hi:EcuM_Prv_dataValidatedWakeupEvents_u32
	.loc 1 233 0
	jeq	%d3, 3, .L21
	.loc 1 242 0
	ld.w	%d2, [%a2] lo:EcuM_Prv_dataValidatedWakeupEvents_u32
.LVL15:
	.loc 1 245 0
	ld.w	%d3, [%a15] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	.loc 1 242 0
	or	%d2, %d15
	st.w	[%a2] lo:EcuM_Prv_dataValidatedWakeupEvents_u32, %d2
	.loc 1 245 0
	nor	%d2, %d15, 0
	and	%d3, %d2
	st.w	[%a15] lo:EcuM_Prv_dataPendingWakeupEvents_u32, %d3
	.loc 1 247 0
	movh.a	%a15, hi:EcuM_Prv_dataPndWkpEventsInd_u32
	ld.w	%d3, [%a15] lo:EcuM_Prv_dataPndWkpEventsInd_u32
	and	%d2, %d3
	st.w	[%a15] lo:EcuM_Prv_dataPndWkpEventsInd_u32, %d2
.L13:
	.loc 1 255 0
	mov	%d4, %d15
	mov	%d5, 2
	j	BswM_EcuM_CurrentWakeup
.LVL16:
.L20:
	.loc 1 206 0
	mov	%e4, 10
	mov	%d6, 20
	mov	%d7, 23
	j	Det_ReportError
.LVL17:
.L21:
	.loc 1 242 0
	ld.w	%d15, [%a2] lo:EcuM_Prv_dataValidatedWakeupEvents_u32
	.loc 1 245 0
	ld.w	%d3, [%a15] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	.loc 1 242 0
	or	%d15, %d2
	st.w	[%a2] lo:EcuM_Prv_dataValidatedWakeupEvents_u32, %d15
	.loc 1 245 0
	nor	%d15, %d2, 0
	and	%d3, %d15
	st.w	[%a15] lo:EcuM_Prv_dataPendingWakeupEvents_u32, %d3
	.loc 1 247 0
	movh.a	%a15, hi:EcuM_Prv_dataPndWkpEventsInd_u32
	ld.w	%d3, [%a15] lo:EcuM_Prv_dataPndWkpEventsInd_u32
	and	%d15, %d3
	st.w	[%a15] lo:EcuM_Prv_dataPndWkpEventsInd_u32, %d15
	.loc 1 252 0
	jz	%d2, .L7
	mov	%d15, %d2
	j	.L13
.LVL18:
.L7:
	ret
.LFE72:
	.size	EcuM_ValidateWakeupEvent, .-EcuM_ValidateWakeupEvent
.section .text.EcuM_ClearWakeupEvent,"ax",@progbits
	.align 1
	.global	EcuM_ClearWakeupEvent
	.type	EcuM_ClearWakeupEvent, @function
EcuM_ClearWakeupEvent:
.LFB73:
	.loc 1 274 0
.LVL19:
	.loc 1 277 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d2, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	.loc 1 274 0
	mov	%d15, %d4
	.loc 1 277 0
	jz	%d2, .L39
	.loc 1 288 0
	call	EcuM_Prv_hasCheckWakeupSourceGetHandle_b
.LVL20:
	jz	%d2, .L40
	.loc 1 303 0
	movh.a	%a4, hi:EcuM_Prv_dataPendingWakeupEvents_u32
	movh.a	%a3, hi:EcuM_Prv_dataValidatedWakeupEvents_u32
	ld.w	%d4, [%a4] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	ld.w	%d3, [%a3] lo:EcuM_Prv_dataValidatedWakeupEvents_u32
	movh.a	%a2, hi:EcuM_Prv_dataExpiredWakeupEvents_u32
	ld.w	%d2, [%a2] lo:EcuM_Prv_dataExpiredWakeupEvents_u32
	or	%d5, %d3, %d4
	or	%d5, %d2
	and	%d5, %d15
	jz	%d5, .L22
	.loc 1 314 0
	movh.a	%a15, hi:EcuM_Prv_dataClrWkpEventsInd_u32
	ld.w	%d6, [%a15] lo:EcuM_Prv_dataClrWkpEventsInd_u32
	or	%d5, %d6
	st.w	[%a15] lo:EcuM_Prv_dataClrWkpEventsInd_u32, %d5
	.loc 1 319 0
	and	%d5, %d15, %d4
	jz	%d5, .L27
	.loc 1 321 0
	nor	%d5, %d15, 0
	and	%d4, %d5
	.loc 1 325 0
	movh.a	%a15, hi:EcuM_Prv_dataPndWkpEventsInd_u32
	.loc 1 321 0
	st.w	[%a4] lo:EcuM_Prv_dataPendingWakeupEvents_u32, %d4
	.loc 1 325 0
	ld.w	%d4, [%a15] lo:EcuM_Prv_dataPndWkpEventsInd_u32
	and	%d5, %d4
	st.w	[%a15] lo:EcuM_Prv_dataPndWkpEventsInd_u32, %d5
.L27:
	.loc 1 330 0
	and	%d4, %d15, %d3
	jz	%d4, .L28
	.loc 1 332 0
	nor	%d4, %d15, 0
	and	%d3, %d4
	.loc 1 336 0
	movh.a	%a15, hi:EcuM_Prv_dataValWkpEventsInd_u32
	.loc 1 332 0
	st.w	[%a3] lo:EcuM_Prv_dataValidatedWakeupEvents_u32, %d3
	.loc 1 336 0
	ld.w	%d3, [%a15] lo:EcuM_Prv_dataValWkpEventsInd_u32
	and	%d4, %d3
	st.w	[%a15] lo:EcuM_Prv_dataValWkpEventsInd_u32, %d4
.L28:
	.loc 1 341 0
	and	%d3, %d15, %d2
	jz	%d3, .L22
	.loc 1 343 0
	not	%d15
.LVL21:
	and	%d2, %d15
	.loc 1 346 0
	movh.a	%a15, hi:EcuM_Prv_dataExpWkpEventsInd_u32
	.loc 1 343 0
	st.w	[%a2] lo:EcuM_Prv_dataExpiredWakeupEvents_u32, %d2
	.loc 1 346 0
	ld.w	%d2, [%a15] lo:EcuM_Prv_dataExpWkpEventsInd_u32
	and	%d15, %d2
.LVL22:
	st.w	[%a15] lo:EcuM_Prv_dataExpWkpEventsInd_u32, %d15
.L22:
	ret
.LVL23:
.L39:
	.loc 1 280 0
	mov	%e4, 10
.LVL24:
	mov	%d6, 22
	mov	%d7, 16
	j	Det_ReportError
.LVL25:
.L40:
	.loc 1 291 0
	mov	%e4, 10
	mov	%d6, 22
	mov	%d7, 23
	j	Det_ReportError
.LVL26:
.LFE73:
	.size	EcuM_ClearWakeupEvent, .-EcuM_ClearWakeupEvent
.section .text.EcuM_GetPendingWakeupEvents,"ax",@progbits
	.align 1
	.global	EcuM_GetPendingWakeupEvents
	.type	EcuM_GetPendingWakeupEvents, @function
EcuM_GetPendingWakeupEvents:
.LFB74:
	.loc 1 368 0
.LVL27:
	.loc 1 373 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	.loc 1 386 0
	movh.a	%a15, hi:EcuM_Prv_dataPendingWakeupEvents_u32
	ld.w	%d2, [%a15] lo:EcuM_Prv_dataPendingWakeupEvents_u32
	.loc 1 373 0
	jz	%d15, .L44
.LVL28:
	.loc 1 392 0
	ret
.LVL29:
.L44:
	.loc 1 377 0
	mov	%e4, 10
	mov	%d6, 13
	mov	%d7, 16
	call	Det_ReportError
.LVL30:
	.loc 1 380 0
	mov	%d2, 0
.LVL31:
	.loc 1 392 0
	ret
.LFE74:
	.size	EcuM_GetPendingWakeupEvents, .-EcuM_GetPendingWakeupEvents
.section .text.EcuM_GetValidatedWakeupEvents,"ax",@progbits
	.align 1
	.global	EcuM_GetValidatedWakeupEvents
	.type	EcuM_GetValidatedWakeupEvents, @function
EcuM_GetValidatedWakeupEvents:
.LFB75:
	.loc 1 407 0
.LVL32:
	.loc 1 412 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	.loc 1 425 0
	movh.a	%a15, hi:EcuM_Prv_dataValidatedWakeupEvents_u32
	ld.w	%d2, [%a15] lo:EcuM_Prv_dataValidatedWakeupEvents_u32
	.loc 1 412 0
	jz	%d15, .L48
.LVL33:
	.loc 1 431 0
	ret
.LVL34:
.L48:
	.loc 1 416 0
	mov	%e4, 10
	mov	%d6, 21
	mov	%d7, 16
	call	Det_ReportError
.LVL35:
	.loc 1 419 0
	mov	%d2, 0
.LVL36:
	.loc 1 431 0
	ret
.LFE75:
	.size	EcuM_GetValidatedWakeupEvents, .-EcuM_GetValidatedWakeupEvents
.section .text.EcuM_GetExpiredWakeupEvents,"ax",@progbits
	.align 1
	.global	EcuM_GetExpiredWakeupEvents
	.type	EcuM_GetExpiredWakeupEvents, @function
EcuM_GetExpiredWakeupEvents:
.LFB76:
	.loc 1 445 0
.LVL37:
	.loc 1 450 0
	movh.a	%a15, hi:EcuM_Prv_flgIsModuleInitialised_b
	ld.bu	%d15, [%a15] lo:EcuM_Prv_flgIsModuleInitialised_b
	.loc 1 463 0
	movh.a	%a15, hi:EcuM_Prv_dataExpiredWakeupEvents_u32
	ld.w	%d2, [%a15] lo:EcuM_Prv_dataExpiredWakeupEvents_u32
	.loc 1 450 0
	jz	%d15, .L52
.LVL38:
	.loc 1 468 0
	ret
.LVL39:
.L52:
	.loc 1 454 0
	mov	%e4, 10
	mov	%d6, 25
	mov	%d7, 16
	call	Det_ReportError
.LVL40:
	.loc 1 457 0
	mov	%d2, 0
.LVL41:
	.loc 1 468 0
	ret
.LFE76:
	.size	EcuM_GetExpiredWakeupEvents, .-EcuM_GetExpiredWakeupEvents
.section .text.EcuM_EndCheckWakeup,"ax",@progbits
	.align 1
	.global	EcuM_EndCheckWakeup
	.type	EcuM_EndCheckWakeup, @function
EcuM_EndCheckWakeup:
.LFB77:
	.loc 1 484 0
.LVL42:
	ret
.LFE77:
	.size	EcuM_EndCheckWakeup, .-EcuM_EndCheckWakeup
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
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB73
	.uaword	.LFE73-.LFB73
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB74
	.uaword	.LFE74-.LFB74
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB75
	.uaword	.LFE75-.LFB75
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB77
	.uaword	.LFE77-.LFB77
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Mcu\\inc\\Mcu.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\EcuM\\EcuM_Cfg.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\EcuM\\api\\EcuM_Types.h"
	.file 7 "bsw\\EcuM\\src\\EcuM_Prv.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Det\\api\\Det.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\BswM\\api\\BswM_EcuM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xca6
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\EcuM\\src\\EcuM_WakeupServices.c"
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
	.uaword	0x1cd
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
	.uaword	0x1f9
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
	.uaword	0x235
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
	.uaword	0x1cd
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
	.uaword	0x1c0
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.uahalf	0x104
	.uaword	0x43a
	.uleb128 0x5
	.string	"MCU_ESR0_RESET"
	.sleb128 0
	.uleb128 0x5
	.string	"MCU_ESR1_RESET"
	.sleb128 1
	.uleb128 0x5
	.string	"MCU_SMU_RESET"
	.sleb128 2
	.uleb128 0x5
	.string	"MCU_SW_RESET"
	.sleb128 3
	.uleb128 0x5
	.string	"MCU_STM0_RESET"
	.sleb128 4
	.uleb128 0x5
	.string	"MCU_STM1_RESET"
	.sleb128 5
	.uleb128 0x5
	.string	"MCU_STM2_RESET"
	.sleb128 6
	.uleb128 0x5
	.string	"MCU_STM3_RESET"
	.sleb128 7
	.uleb128 0x5
	.string	"MCU_STM4_RESET"
	.sleb128 8
	.uleb128 0x5
	.string	"MCU_STM5_RESET"
	.sleb128 9
	.uleb128 0x5
	.string	"MCU_POWER_ON_RESET"
	.sleb128 10
	.uleb128 0x5
	.string	"MCU_CB0_RESET"
	.sleb128 11
	.uleb128 0x5
	.string	"MCU_CB1_RESET"
	.sleb128 12
	.uleb128 0x5
	.string	"MCU_CB3_RESET"
	.sleb128 13
	.uleb128 0x5
	.string	"MCU_EVRC_RESET"
	.sleb128 14
	.uleb128 0x5
	.string	"MCU_EVR33_RESET"
	.sleb128 15
	.uleb128 0x5
	.string	"MCU_SUPPLY_WDOG_RESET"
	.sleb128 16
	.uleb128 0x5
	.string	"MCU_STBYR_RESET"
	.sleb128 17
	.uleb128 0x5
	.string	"MCU_LBIST_RESET"
	.sleb128 18
	.uleb128 0x5
	.string	"MCU_RESET_MULTIPLE"
	.sleb128 254
	.uleb128 0x5
	.string	"MCU_RESET_UNDEFINED"
	.sleb128 255
	.byte	0
	.uleb128 0x6
	.string	"Mcu_ResetType"
	.byte	0x4
	.uahalf	0x11a
	.uaword	0x2b8
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x7
	.byte	0x10
	.byte	0x5
	.byte	0x52
	.uaword	0x529
	.uleb128 0x8
	.string	"IsComChannelPresent"
	.byte	0x5
	.byte	0x53
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"ComChannelReferance"
	.byte	0x5
	.byte	0x54
	.uaword	0x1c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"ResetReason"
	.byte	0x5
	.byte	0x55
	.uaword	0x43a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"ValidationTimeout"
	.byte	0x5
	.byte	0x56
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"IsWakeupSourcePolling"
	.byte	0x5
	.byte	0x57
	.uaword	0x272
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"WakeupSourceId"
	.byte	0x5
	.byte	0x58
	.uaword	0x227
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"CheckWakeupTimeout"
	.byte	0x5
	.byte	0x59
	.uaword	0x1eb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x3
	.string	"EcuM_Cfg_dataWkupSrcStruct_tst"
	.byte	0x5
	.byte	0x5a
	.uaword	0x45c
	.uleb128 0x3
	.string	"EcuM_WakeupSourceType"
	.byte	0x6
	.byte	0x4e
	.uaword	0x227
	.uleb128 0x3
	.string	"EcuM_WakeupStatusType"
	.byte	0x6
	.byte	0x52
	.uaword	0x1c0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x9
	.byte	0x1
	.string	"EcuM_SetWakeupEvent"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.uaword	.LFB71
	.uaword	.LFE71
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6b5
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2b
	.uaword	0x54f
	.uaword	.LLST0
	.uleb128 0xb
	.string	"EcuM_newWkupEvents_u32"
	.byte	0x1
	.byte	0x2f
	.uaword	0x227
	.uaword	.LLST1
	.uleb128 0xc
	.string	"EcuM_WkpSrcValidationTimeoutCtr_u16"
	.byte	0x1
	.byte	0x32
	.uaword	0x1eb
	.byte	0
	.uleb128 0xb
	.string	"EcuM_dataValidatedWakeupEvents_u32"
	.byte	0x1
	.byte	0x35
	.uaword	0x227
	.uaword	.LLST2
	.uleb128 0xc
	.string	"EcuM_dataPendingWakeupEvents_u32"
	.byte	0x1
	.byte	0x38
	.uaword	0x227
	.byte	0
	.uleb128 0xc
	.string	"ctrLoop_u8"
	.byte	0x1
	.byte	0x3a
	.uaword	0x1c0
	.byte	0
	.uleb128 0xd
	.uaword	.LVL1
	.uaword	0xbde
	.uaword	0x695
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.uaword	.LVL7
	.byte	0x1
	.uaword	0xc1c
	.uleb128 0xe
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x47
	.uleb128 0xe
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3c
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"EcuM_ValidateWakeupEvent"
	.byte	0x1
	.byte	0xb7
	.byte	0x1
	.uaword	.LFB72
	.uaword	.LFE72
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7b9
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb7
	.uaword	0x54f
	.uaword	.LLST3
	.uleb128 0xb
	.string	"EcuM_CommchlWkupEvents_u32"
	.byte	0x1
	.byte	0xbb
	.uaword	0x227
	.uaword	.LLST4
	.uleb128 0xb
	.string	"dataPendingWakeupEvents_u32"
	.byte	0x1
	.byte	0xbe
	.uaword	0x54f
	.uaword	.LLST5
	.uleb128 0x10
	.uaword	.LVL10
	.byte	0x1
	.uaword	0xc1c
	.uaword	0x762
	.uleb128 0xe
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0xe
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x44
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0x11
	.uaword	.LVL11
	.uaword	0xbde
	.uleb128 0xd
	.uaword	.LVL14
	.uaword	0xc4f
	.uaword	0x77f
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL16
	.byte	0x1
	.uaword	0xc80
	.uaword	0x799
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0xf
	.uaword	.LVL17
	.byte	0x1
	.uaword	0xc1c
	.uleb128 0xe
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x47
	.uleb128 0xe
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x44
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"EcuM_ClearWakeupEvent"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.uaword	.LFB73
	.uaword	.LFE73
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x84c
	.uleb128 0x13
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x111
	.uaword	0x54f
	.uaword	.LLST6
	.uleb128 0xd
	.uaword	.LVL20
	.uaword	0xbde
	.uaword	0x809
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.byte	0
	.uleb128 0x10
	.uaword	.LVL25
	.byte	0x1
	.uaword	0xc1c
	.uaword	0x82c
	.uleb128 0xe
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0xe
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x46
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xf
	.uaword	.LVL26
	.byte	0x1
	.uaword	0xc1c
	.uleb128 0xe
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x47
	.uleb128 0xe
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x46
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"EcuM_GetPendingWakeupEvents"
	.byte	0x1
	.uahalf	0x16f
	.byte	0x1
	.uaword	0x54f
	.uaword	.LFB74
	.uaword	.LFE74
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8c1
	.uleb128 0x15
	.string	"PendingWakeupEvents"
	.byte	0x1
	.uahalf	0x172
	.uaword	0x227
	.uaword	.LLST7
	.uleb128 0x16
	.uaword	.LVL30
	.uaword	0xc1c
	.uleb128 0xe
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0xe
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x3d
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"EcuM_GetValidatedWakeupEvents"
	.byte	0x1
	.uahalf	0x196
	.byte	0x1
	.uaword	0x54f
	.uaword	.LFB75
	.uaword	.LFE75
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x93a
	.uleb128 0x15
	.string	"ValidatedWakeupEvents"
	.byte	0x1
	.uahalf	0x199
	.uaword	0x227
	.uaword	.LLST8
	.uleb128 0x16
	.uaword	.LVL35
	.uaword	0xc1c
	.uleb128 0xe
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0xe
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x45
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"EcuM_GetExpiredWakeupEvents"
	.byte	0x1
	.uahalf	0x1bc
	.byte	0x1
	.uaword	0x54f
	.uaword	.LFB76
	.uaword	.LFE76
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9af
	.uleb128 0x15
	.string	"ExpiredWakeupEvents"
	.byte	0x1
	.uahalf	0x1bf
	.uaword	0x227
	.uaword	.LLST9
	.uleb128 0x16
	.uaword	.LVL40
	.uaword	0xc1c
	.uleb128 0xe
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.byte	0x40
	.uleb128 0xe
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x49
	.uleb128 0xe
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x30
	.uleb128 0xe
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"EcuM_EndCheckWakeup"
	.byte	0x1
	.uahalf	0x1e3
	.byte	0x1
	.uaword	.LFB77
	.uaword	.LFE77
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9e8
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1e3
	.uaword	0x54f
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x18
	.uaword	0x529
	.uaword	0x9f8
	.uleb128 0x19
	.uaword	0x450
	.byte	0x6
	.byte	0
	.uleb128 0x1a
	.string	"EcuM_Cfg_idxWakeupSourcesPC_au32"
	.byte	0x5
	.byte	0x7f
	.uaword	0xa22
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x9e8
	.uleb128 0x1a
	.string	"EcuM_Prv_dataPresentPhase_u8"
	.byte	0x7
	.byte	0xb8
	.uaword	0x1c0
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"EcuM_Prv_dataPendingWakeupEvents_u32"
	.byte	0x7
	.byte	0xde
	.uaword	0x54f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"EcuM_Prv_dataValidatedWakeupEvents_u32"
	.byte	0x7
	.byte	0xe2
	.uaword	0x54f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"EcuM_Prv_dataExpiredWakeupEvents_u32"
	.byte	0x7
	.byte	0xe4
	.uaword	0x54f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"EcuM_Prv_dataClrWkpEventsInd_u32"
	.byte	0x7
	.byte	0xe6
	.uaword	0x54f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"EcuM_Prv_dataPndWkpEventsInd_u32"
	.byte	0x7
	.byte	0xe8
	.uaword	0x54f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"EcuM_Prv_dataValWkpEventsInd_u32"
	.byte	0x7
	.byte	0xea
	.uaword	0x54f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"EcuM_Prv_dataExpWkpEventsInd_u32"
	.byte	0x7
	.byte	0xec
	.uaword	0x54f
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"EcuM_Prv_WkpSrcValidationTimeoutCtr_u16"
	.byte	0x7
	.byte	0xf4
	.uaword	0x1eb
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"EcuM_Prv_flgIsModuleInitialised_b"
	.byte	0x7
	.uahalf	0x102
	.uaword	0x272
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"EcuM_Prv_hasCheckWakeupSourceGetHandle_b"
	.byte	0x7
	.uahalf	0x146
	.byte	0x1
	.uaword	0x272
	.byte	0x1
	.uaword	0xc1c
	.uleb128 0x1e
	.uaword	0x54f
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"Det_ReportError"
	.byte	0x8
	.byte	0x70
	.byte	0x1
	.uaword	0x2a2
	.byte	0x1
	.uaword	0xc4f
	.uleb128 0x1e
	.uaword	0x1eb
	.uleb128 0x1e
	.uaword	0x1c0
	.uleb128 0x1e
	.uaword	0x1c0
	.uleb128 0x1e
	.uaword	0x1c0
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"EcuM_Prv_ComMWakeupHandling"
	.byte	0x7
	.uahalf	0x14e
	.byte	0x1
	.uaword	0x227
	.byte	0x1
	.uaword	0xc80
	.uleb128 0x1e
	.uaword	0x54f
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"BswM_EcuM_CurrentWakeup"
	.byte	0x9
	.byte	0x20
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.uaword	0x54f
	.uleb128 0x1e
	.uaword	0x56c
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL2
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE71
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL6
	.uaword	.LFE71
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6
	.uaword	.LFE71
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10
	.uaword	.LVL11-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11-1
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LFE72
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL19
	.uaword	.LVL20-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20-1
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x4
	.byte	0x7f
	.sleb128 0
	.byte	0x20
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL24
	.uaword	.LFE73
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LFE74
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LFE75
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LFE76
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB71
	.uaword	.LFE71-.LFB71
	.uaword	.LFB72
	.uaword	.LFE72-.LFB72
	.uaword	.LFB73
	.uaword	.LFE73-.LFB73
	.uaword	.LFB74
	.uaword	.LFE74-.LFB74
	.uaword	.LFB75
	.uaword	.LFE75-.LFB75
	.uaword	.LFB76
	.uaword	.LFE76-.LFB76
	.uaword	.LFB77
	.uaword	.LFE77-.LFB77
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB71
	.uaword	.LFE71
	.uaword	.LFB72
	.uaword	.LFE72
	.uaword	.LFB73
	.uaword	.LFE73
	.uaword	.LFB74
	.uaword	.LFE74
	.uaword	.LFB75
	.uaword	.LFE75
	.uaword	.LFB76
	.uaword	.LFE76
	.uaword	.LFB77
	.uaword	.LFE77
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"sources"
	.extern	EcuM_Prv_dataExpWkpEventsInd_u32,STT_OBJECT,4
	.extern	EcuM_Prv_dataClrWkpEventsInd_u32,STT_OBJECT,4
	.extern	BswM_EcuM_CurrentWakeup,STT_FUNC,0
	.extern	EcuM_Prv_dataPndWkpEventsInd_u32,STT_OBJECT,4
	.extern	EcuM_Prv_dataPresentPhase_u8,STT_OBJECT,1
	.extern	EcuM_Prv_ComMWakeupHandling,STT_FUNC,0
	.extern	EcuM_Prv_flgIsModuleInitialised_b,STT_OBJECT,1
	.extern	Det_ReportError,STT_FUNC,0
	.extern	EcuM_Prv_dataValWkpEventsInd_u32,STT_OBJECT,4
	.extern	EcuM_Prv_dataExpiredWakeupEvents_u32,STT_OBJECT,4
	.extern	EcuM_Prv_dataValidatedWakeupEvents_u32,STT_OBJECT,4
	.extern	EcuM_Prv_dataPendingWakeupEvents_u32,STT_OBJECT,4
	.extern	EcuM_Prv_hasCheckWakeupSourceGetHandle_b,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
