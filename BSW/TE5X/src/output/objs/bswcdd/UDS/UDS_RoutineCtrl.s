	.file	"UDS_RoutineCtrl.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.DcmDspRequestRoutine_ZeroPosSelfLearning,"ax",@progbits
	.align 1
	.global	DcmDspRequestRoutine_ZeroPosSelfLearning
	.type	DcmDspRequestRoutine_ZeroPosSelfLearning, @function
DcmDspRequestRoutine_ZeroPosSelfLearning:
.LFB19:
	.file 1 "bswcdd\\UDS\\UDS_RoutineCtrl.c"
	.loc 1 76 0
.LVL0:
	.loc 1 80 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 82 0
	mov	%d4, 0
.LVL1:
	.loc 1 76 0
	mov.aa	%a15, %a4
	.loc 1 82 0
	call	MAIN_OCT_u8GetOcCalibState
.LVL2:
	st.b	[%a15]0, %d2
.LVL3:
	.loc 1 89 0
	mov	%d2, 0
	ret
.LFE19:
	.size	DcmDspRequestRoutine_ZeroPosSelfLearning, .-DcmDspRequestRoutine_ZeroPosSelfLearning
.section .text.DcmDspStartRoutine_ZeroPosSelfLearning,"ax",@progbits
	.align 1
	.global	DcmDspStartRoutine_ZeroPosSelfLearning
	.type	DcmDspStartRoutine_ZeroPosSelfLearning, @function
DcmDspStartRoutine_ZeroPosSelfLearning:
.LFB20:
	.loc 1 94 0
.LVL4:
	.loc 1 98 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
.LVL5:
	.loc 1 94 0
	mov.aa	%a15, %a4
	.loc 1 101 0
	call	MAIN_bChkOcCondition
.LVL6:
	.loc 1 103 0
	and	%d2, %d2, 255
	jnz	%d2, .L6
	.loc 1 111 0
	mov	%d15, 34
	st.b	[%a15]0, %d15
	.loc 1 110 0
	mov	%d2, 1
.LVL7:
	.loc 1 119 0
	ret
.LVL8:
.L6:
	.loc 1 106 0
	mov	%d4, 0
	call	MAIN_OCT_vidTrigOcCalib
.LVL9:
	.loc 1 105 0
	mov	%d2, 0
	ret
.LFE20:
	.size	DcmDspStartRoutine_ZeroPosSelfLearning, .-DcmDspStartRoutine_ZeroPosSelfLearning
.section .text.DcmDspRequestRoutine_GcuPosSelfLearning,"ax",@progbits
	.align 1
	.global	DcmDspRequestRoutine_GcuPosSelfLearning
	.type	DcmDspRequestRoutine_GcuPosSelfLearning, @function
DcmDspRequestRoutine_GcuPosSelfLearning:
.LFB21:
	.loc 1 125 0
.LVL10:
	.loc 1 129 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 131 0
	mov	%d4, 1
.LVL11:
	.loc 1 125 0
	mov.aa	%a15, %a4
	.loc 1 131 0
	call	MAIN_OCT_u8GetOcCalibState
.LVL12:
	st.b	[%a15]0, %d2
.LVL13:
	.loc 1 138 0
	mov	%d2, 0
	ret
.LFE21:
	.size	DcmDspRequestRoutine_GcuPosSelfLearning, .-DcmDspRequestRoutine_GcuPosSelfLearning
.section .text.DcmDspStartRoutine_GcuPosSelfLearning,"ax",@progbits
	.align 1
	.global	DcmDspStartRoutine_GcuPosSelfLearning
	.type	DcmDspStartRoutine_GcuPosSelfLearning, @function
DcmDspStartRoutine_GcuPosSelfLearning:
.LFB22:
	.loc 1 153 0
.LVL14:
	.loc 1 157 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
.LVL15:
	.loc 1 153 0
	mov.aa	%a15, %a4
	.loc 1 160 0
	call	GMAIN_bChkOcCondition
.LVL16:
	.loc 1 162 0
	and	%d2, %d2, 255
	jnz	%d2, .L11
	.loc 1 170 0
	mov	%d15, 34
	st.b	[%a15]0, %d15
	.loc 1 169 0
	mov	%d2, 1
.LVL17:
	.loc 1 178 0
	ret
.LVL18:
.L11:
	.loc 1 165 0
	mov	%d4, 1
	call	MAIN_OCT_vidTrigOcCalib
.LVL19:
	.loc 1 164 0
	mov	%d2, 0
	ret
.LFE22:
	.size	DcmDspStartRoutine_GcuPosSelfLearning, .-DcmDspStartRoutine_GcuPosSelfLearning
.section .text.DcmDspRequestRoutine_TcuPosLearning,"ax",@progbits
	.align 1
	.global	DcmDspRequestRoutine_TcuPosLearning
	.type	DcmDspRequestRoutine_TcuPosLearning, @function
DcmDspRequestRoutine_TcuPosLearning:
.LFB23:
	.loc 1 184 0
.LVL20:
	.loc 1 188 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 191 0
	mov	%d2, 0
	ret
.LFE23:
	.size	DcmDspRequestRoutine_TcuPosLearning, .-DcmDspRequestRoutine_TcuPosLearning
.section .text.DcmDspStartRoutine_TcuPosLearning,"ax",@progbits
	.align 1
	.global	DcmDspStartRoutine_TcuPosLearning
	.type	DcmDspStartRoutine_TcuPosLearning, @function
DcmDspStartRoutine_TcuPosLearning:
.LFB24:
	.loc 1 205 0
.LVL21:
	.loc 1 209 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
	.loc 1 212 0
	mov	%d2, 0
	ret
.LFE24:
	.size	DcmDspStartRoutine_TcuPosLearning, .-DcmDspStartRoutine_TcuPosLearning
.section .text.DcmDspStartRoutine_StayInBootCallback,"ax",@progbits
	.align 1
	.global	DcmDspStartRoutine_StayInBootCallback
	.type	DcmDspStartRoutine_StayInBootCallback, @function
DcmDspStartRoutine_StayInBootCallback:
.LFB25:
	.loc 1 223 0
.LVL22:
	.loc 1 228 0
	mov	%d2, 0
	st.b	[%a5]0, %d2
	.loc 1 223 0
	mov	%d15, %d4
	mov.aa	%a15, %a5
	.loc 1 232 0
	jz	%d4, .L22
	.loc 1 251 0
	movh.a	%a12, hi:ResetRequested.5454
	ld.bu	%d15, [%a12] lo:ResetRequested.5454
	jeq	%d15, 1, .L18
	.loc 1 254 0
	mov	%d15, 1
	.loc 1 253 0
	call	MCU_vSetResetCmd
.LVL23:
	.loc 1 254 0
	st.b	[%a12] lo:ResetRequested.5454, %d15
.L18:
.LVL24:
	.loc 1 258 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 257 0
	mov	%d2, 12
.LVL25:
	.loc 1 261 0
	ret
.LVL26:
.L22:
	.loc 1 236 0
	call	BSW_bGetProgCondition
.LVL27:
	jnz	%d2, .L16
	.loc 1 238 0
	mov	%d15, 34
	st.b	[%a15]0, %d15
	.loc 1 239 0
	mov	%d2, 1
	ret
.L16:
	.loc 1 243 0
	call	BSW_vidSetStayInBootReq
.LVL28:
	.loc 1 244 0
	movh.a	%a2, hi:ResetRequested.5454
	st.b	[%a2] lo:ResetRequested.5454, %d15
	.loc 1 245 0
	st.b	[%a15]0, %d15
.LVL29:
	.loc 1 246 0
	mov	%d2, 12
	ret
.LFE25:
	.size	DcmDspStartRoutine_StayInBootCallback, .-DcmDspStartRoutine_StayInBootCallback
.section .text.DcmDspStartRoutine_StartSwapCallback,"ax",@progbits
	.align 1
	.global	DcmDspStartRoutine_StartSwapCallback
	.type	DcmDspStartRoutine_StartSwapCallback, @function
DcmDspStartRoutine_StartSwapCallback:
.LFB26:
	.loc 1 266 0
.LVL30:
	.loc 1 271 0
	mov	%d2, 0
	st.b	[%a4]0, %d2
	.loc 1 266 0
	mov	%d15, %d4
	mov.aa	%a15, %a4
	.loc 1 273 0
	jz	%d4, .L31
	.loc 1 292 0
	movh.a	%a12, hi:ResetRequested.5460
	ld.bu	%d15, [%a12] lo:ResetRequested.5460
	jeq	%d15, 1, .L27
	.loc 1 295 0
	mov	%d15, 1
	.loc 1 294 0
	call	MCU_vSetResetCmd
.LVL31:
	.loc 1 295 0
	st.b	[%a12] lo:ResetRequested.5460, %d15
.L27:
.LVL32:
	.loc 1 299 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	.loc 1 298 0
	mov	%d2, 12
.LVL33:
	.loc 1 303 0
	ret
.LVL34:
.L31:
	.loc 1 277 0
	call	Swap_bCheckSwapCondition
.LVL35:
	jeq	%d2, 1, .L32
.L25:
	.loc 1 287 0
	mov	%d15, 34
	st.b	[%a15]0, %d15
	.loc 1 286 0
	mov	%d2, 1
	ret
.L32:
	.loc 1 277 0 discriminator 1
	call	BSW_bGetProgCondition
.LVL36:
	jne	%d2, 1, .L25
	.loc 1 279 0
	call	BSW_vidSetActiveSwapReq
.LVL37:
	.loc 1 280 0
	movh.a	%a2, hi:ResetRequested.5460
	st.b	[%a2] lo:ResetRequested.5460, %d15
.LVL38:
	.loc 1 282 0
	st.b	[%a15]0, %d15
	.loc 1 281 0
	mov	%d2, 12
	.loc 1 282 0
	ret
.LFE26:
	.size	DcmDspStartRoutine_StartSwapCallback, .-DcmDspStartRoutine_StartSwapCallback
.section .bss.a1.ResetRequested.5460,"aw",@nobits
	.type	ResetRequested.5460, @object
	.size	ResetRequested.5460, 1
ResetRequested.5460:
	.zero	1
.section .bss.a1.ResetRequested.5454,"aw",@nobits
	.type	ResetRequested.5454, @object
	.size	ResetRequested.5454, 1
ResetRequested.5454:
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\ASW\\ASW_DCM\\src\\Dcm_ExternalServiceProcessing.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\BSW\\bswsrv.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\UcbSwap\\UcbSwap.h"
	.file 8 ".\\output\\inc/..\\..\\main\\_MainModule\\OCTrim\\MAIN_OCTrim.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x925
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\UDS\\UDS_RoutineCtrl.c"
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
	.byte	0x2
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
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1ba
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1ba
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.uaword	0x1ba
	.uleb128 0x6
	.string	"Dcm_NegativeResponseCodeType"
	.byte	0x4
	.uahalf	0x118
	.uaword	0x1ba
	.uleb128 0x6
	.string	"Dcm_OpStatusType"
	.byte	0x4
	.uahalf	0x11a
	.uaword	0x1ba
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2bb
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b6
	.uleb128 0x7
	.string	"MAIN_CONTROL_UNIT_INDEX"
	.byte	0x1
	.byte	0x8
	.byte	0x45
	.uaword	0x369
	.uleb128 0x8
	.string	"eMAIN_UNIT_MCU_INDEX"
	.sleb128 0
	.uleb128 0x8
	.string	"eMAIN_UNIT_GCU_INDEX"
	.sleb128 1
	.uleb128 0x8
	.string	"eMAIN_MAX_UNIT_NUM"
	.sleb128 2
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"DcmDspRequestRoutine_ZeroPosSelfLearning"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3f7
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x49
	.uaword	0x2e0
	.uaword	.LLST0
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0x4a
	.uaword	0x2a4
	.uaword	.LLST1
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.byte	0x4b
	.uaword	0x2f9
	.uaword	.LLST2
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x1
	.byte	0x4e
	.uaword	0x28e
	.uaword	.LLST3
	.uleb128 0xc
	.uaword	.LVL2
	.uaword	0x815
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"DcmDspStartRoutine_ZeroPosSelfLearning"
	.byte	0x1
	.byte	0x5b
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x49f
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5c
	.uaword	0x2e0
	.uaword	.LLST4
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.byte	0x5d
	.uaword	0x2f9
	.uaword	.LLST5
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x1
	.byte	0x60
	.uaword	0x28e
	.uaword	.LLST6
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x1
	.byte	0x63
	.uaword	0x25e
	.uaword	.LLST7
	.uleb128 0xe
	.byte	0x1
	.uaword	.LASF5
	.byte	0x1
	.byte	0x65
	.uaword	0x209
	.byte	0x1
	.uaword	0x486
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.uaword	.LVL6
	.uaword	0x844
	.uleb128 0xc
	.uaword	.LVL9
	.uaword	0x857
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"DcmDspRequestRoutine_GcuPosSelfLearning"
	.byte	0x1
	.byte	0x79
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x52c
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x7a
	.uaword	0x2e0
	.uaword	.LLST8
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0x7b
	.uaword	0x2a4
	.uaword	.LLST9
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.byte	0x7c
	.uaword	0x2f9
	.uaword	.LLST10
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x1
	.byte	0x7f
	.uaword	0x28e
	.uaword	.LLST11
	.uleb128 0xc
	.uaword	.LVL12
	.uaword	0x815
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"DcmDspStartRoutine_GcuPosSelfLearning"
	.byte	0x1
	.byte	0x96
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5d3
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x97
	.uaword	0x2e0
	.uaword	.LLST12
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.byte	0x98
	.uaword	0x2f9
	.uaword	.LLST13
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x1
	.byte	0x9b
	.uaword	0x28e
	.uaword	.LLST14
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x1
	.byte	0x9e
	.uaword	0x25e
	.uaword	.LLST15
	.uleb128 0xe
	.byte	0x1
	.uaword	.LASF6
	.byte	0x1
	.byte	0xa0
	.uaword	0x209
	.byte	0x1
	.uaword	0x5ba
	.uleb128 0xf
	.byte	0
	.uleb128 0x10
	.uaword	.LVL16
	.uaword	0x87f
	.uleb128 0xc
	.uaword	.LVL19
	.uaword	0x857
	.uleb128 0xd
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"DcmDspRequestRoutine_TcuPosLearning"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x644
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb5
	.uaword	0x2e0
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.uaword	.LASF1
	.byte	0x1
	.byte	0xb6
	.uaword	0x2a4
	.byte	0x1
	.byte	0x64
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.byte	0xb7
	.uaword	0x2f9
	.byte	0x1
	.byte	0x65
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.byte	0xba
	.uaword	0x28e
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"DcmDspStartRoutine_TcuPosLearning"
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6a6
	.uleb128 0x11
	.uaword	.LASF0
	.byte	0x1
	.byte	0xcb
	.uaword	0x2e0
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.byte	0xcc
	.uaword	0x2f9
	.byte	0x1
	.byte	0x64
	.uleb128 0x12
	.uaword	.LASF3
	.byte	0x1
	.byte	0xcf
	.uaword	0x28e
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"DcmDspStartRoutine_StayInBootCallback"
	.byte	0x1
	.byte	0xda
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x76f
	.uleb128 0x13
	.string	"dataIn1"
	.byte	0x1
	.byte	0xdb
	.uaword	0x2ff
	.uaword	.LLST16
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0xdc
	.uaword	0x2e0
	.uaword	.LLST17
	.uleb128 0x13
	.string	"CurrentDataLength"
	.byte	0x1
	.byte	0xdd
	.uaword	0x1e5
	.uaword	.LLST18
	.uleb128 0xa
	.uaword	.LASF2
	.byte	0x1
	.byte	0xde
	.uaword	0x2f9
	.uaword	.LLST19
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x1
	.byte	0xe0
	.uaword	0x25e
	.byte	0x5
	.byte	0x3
	.uaword	ResetRequested.5454
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x1
	.byte	0xe2
	.uaword	0x28e
	.uaword	.LLST20
	.uleb128 0x10
	.uaword	.LVL23
	.uaword	0x892
	.uleb128 0x10
	.uaword	.LVL27
	.uaword	0x8a9
	.uleb128 0x10
	.uaword	.LVL28
	.uaword	0x8c9
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"DcmDspStartRoutine_StartSwapCallback"
	.byte	0x1
	.uahalf	0x107
	.byte	0x1
	.uaword	0x28e
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x815
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x108
	.uaword	0x2e0
	.uaword	.LLST21
	.uleb128 0x16
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x109
	.uaword	0x2f9
	.uaword	.LLST22
	.uleb128 0x17
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x25e
	.byte	0x5
	.byte	0x3
	.uaword	ResetRequested.5460
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x10d
	.uaword	0x28e
	.uaword	.LLST23
	.uleb128 0x10
	.uaword	.LVL31
	.uaword	0x892
	.uleb128 0x10
	.uaword	.LVL35
	.uaword	0x8e7
	.uleb128 0x10
	.uaword	.LVL36
	.uaword	0x8a9
	.uleb128 0x10
	.uaword	.LVL37
	.uaword	0x90a
	.byte	0
	.uleb128 0x19
	.byte	0x1
	.string	"MAIN_OCT_u8GetOcCalibState"
	.byte	0x8
	.byte	0x70
	.byte	0x1
	.uaword	0x1ba
	.byte	0x1
	.uaword	0x844
	.uleb128 0x1a
	.uaword	0x2b6
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.uaword	.LASF5
	.byte	0x1
	.byte	0x65
	.uaword	0x209
	.byte	0x1
	.uaword	0x857
	.uleb128 0xf
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"MAIN_OCT_vidTrigOcCalib"
	.byte	0x8
	.byte	0x6f
	.byte	0x1
	.byte	0x1
	.uaword	0x87f
	.uleb128 0x1a
	.uaword	0x2b6
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.uaword	.LASF6
	.byte	0x1
	.byte	0xa0
	.uaword	0x209
	.byte	0x1
	.uaword	0x892
	.uleb128 0xf
	.byte	0
	.uleb128 0x1c
	.byte	0x1
	.string	"MCU_vSetResetCmd"
	.byte	0x5
	.byte	0xe
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"BSW_bGetProgCondition"
	.byte	0x6
	.byte	0x47
	.byte	0x1
	.uaword	0x25e
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"BSW_vidSetStayInBootReq"
	.byte	0x6
	.byte	0x39
	.byte	0x1
	.byte	0x1
	.uleb128 0x1d
	.byte	0x1
	.string	"Swap_bCheckSwapCondition"
	.byte	0x7
	.byte	0x23
	.byte	0x1
	.uaword	0x25e
	.byte	0x1
	.uleb128 0x1c
	.byte	0x1
	.string	"BSW_vidSetActiveSwapReq"
	.byte	0x6
	.byte	0x3a
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x4
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xc
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x18
	.byte	0
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2-1
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL2-1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL6-1
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL4
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6-1
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL4
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL8
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL10
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12-1
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL10
	.uaword	.LVL12-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL12-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL14
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16-1
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL14
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL16-1
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LVL19-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL27-1
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23-1
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL27-1
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL23-1
	.uaword	.LVL26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27-1
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL23-1
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL26
	.uaword	.LVL27-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL27-1
	.uaword	.LFE25
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LFE25
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31-1
	.uaword	.LVL34
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL35-1
	.uaword	.LFE26
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL34
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL35-1
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x3c
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF5:
	.string	"MAIN_bChkOcCondition"
.LASF6:
	.string	"GMAIN_bChkOcCondition"
.LASF1:
	.string	"dataOut1"
.LASF7:
	.string	"ResetRequested"
.LASF3:
	.string	"RetValue"
.LASF0:
	.string	"OpStatus"
.LASF2:
	.string	"ErrorCode"
.LASF4:
	.string	"bLocOcCondSatisfy"
	.extern	BSW_vidSetActiveSwapReq,STT_FUNC,0
	.extern	Swap_bCheckSwapCondition,STT_FUNC,0
	.extern	BSW_vidSetStayInBootReq,STT_FUNC,0
	.extern	BSW_bGetProgCondition,STT_FUNC,0
	.extern	MCU_vSetResetCmd,STT_FUNC,0
	.extern	GMAIN_bChkOcCondition,STT_FUNC,0
	.extern	MAIN_OCT_vidTrigOcCalib,STT_FUNC,0
	.extern	MAIN_bChkOcCondition,STT_FUNC,0
	.extern	MAIN_OCT_u8GetOcCalibState,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
