	.file	"hard_mod.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	HARD_vidModInit
	.type	HARD_vidModInit, @function
HARD_vidModInit:
.LFB354:
	.file 1 "bswcdd\\HARD\\hard_mod.c"
	.loc 1 94 0
	.loc 1 95 0
	mov	%d2, 1
	movh.a	%a15, hi:HARD_ModSeq1InitState
	st.b	[%a15] lo:HARD_ModSeq1InitState, %d2
	.loc 1 96 0
	movh.a	%a15, hi:HARD_ModSeq1FuncState
	.loc 1 97 0
	mov	%d15, 0
	.loc 1 96 0
	st.b	[%a15] lo:HARD_ModSeq1FuncState, %d2
	.loc 1 97 0
	movh.a	%a15, hi:HARD_bModSeq1InitOn
	st.b	[%a15] lo:HARD_bModSeq1InitOn, %d15
	.loc 1 98 0
	movh.a	%a15, hi:HARD_bModSeq1FuncOn
	st.b	[%a15] lo:HARD_bModSeq1FuncOn, %d15
	.loc 1 100 0
	movh.a	%a15, hi:HARD_ModSeq2InitState
	st.b	[%a15] lo:HARD_ModSeq2InitState, %d2
	.loc 1 101 0
	movh.a	%a15, hi:HARD_ModSeq2FuncState
	st.b	[%a15] lo:HARD_ModSeq2FuncState, %d2
	.loc 1 102 0
	movh.a	%a15, hi:HARD_bModSeq2InitOn
	st.b	[%a15] lo:HARD_bModSeq2InitOn, %d15
	.loc 1 103 0
	movh.a	%a15, hi:HARD_bModSeq2FuncOn
	st.b	[%a15] lo:HARD_bModSeq2FuncOn, %d15
	ret
.LFE354:
	.size	HARD_vidModInit, .-HARD_vidModInit
	.align 1
	.global	HARD_vidModSeq1Init
	.type	HARD_vidModSeq1Init, @function
HARD_vidModSeq1Init:
.LFB355:
	.loc 1 118 0
.LVL0:
	.loc 1 121 0
	ld.bu	%d15, [%a4]0
.LVL1:
	.loc 1 118 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 123 0
	jz	%d15, .L12
	.loc 1 132 0
	movh.a	%a15, hi:HARD_ModSeq1InitState
	ld.bu	%d2, [%a15] lo:HARD_ModSeq1InitState
	jeq	%d2, 4, .L5
	jge.u	%d2, 5, .L6
	jeq	%d2, 1, .L7
	jne	%d2, 2, .L4
	.loc 1 164 0
	mov	%d2, 1
	movh.a	%a2, hi:HARD_bPtgEnable
	st.b	[%a2] lo:HARD_bPtgEnable, %d2
.LVL2:
	.loc 1 165 0
	movh.a	%a2, hi:HARD_bPtgSignalsShiftControl
	st.b	[%a2] lo:HARD_bPtgSignalsShiftControl, %d2
	.loc 1 167 0
	mov	%d2, 4
	st.b	[%a15] lo:HARD_ModSeq1InitState, %d2
	.loc 1 189 0
	st.b	[%a4]0, %d15
	ret
.LVL3:
.L6:
	.loc 1 132 0
	eq	%d3, %d2, 8
	jnz	%d3, .L9
	eq	%d2, %d2, 128
	.loc 1 182 0
	seln	%d15, %d2, %d15, 0
.LVL4:
	.loc 1 189 0
	st.b	[%a4]0, %d15
	ret
.LVL5:
.L12:
	.loc 1 128 0
	mov	%d2, 1
	movh.a	%a15, hi:HARD_ModSeq1InitState
	st.b	[%a15] lo:HARD_ModSeq1InitState, %d2
.LVL6:
.L4:
	.loc 1 189 0
	st.b	[%a4]0, %d15
	ret
.LVL7:
.L7:
	.loc 1 152 0
	mov	%d4, 0
	st.a	[%SP] 4, %a4
.LVL8:
	call	CCU6_vidSetPwmModReq
.LVL9:
	.loc 1 156 0
	ld.a	%a4, [%SP] 4
	.loc 1 155 0
	mov	%d2, 2
	st.b	[%a15] lo:HARD_ModSeq1InitState, %d2
	.loc 1 189 0
	st.b	[%a4]0, %d15
	ret
.LVL10:
.L9:
	.loc 1 177 0
	mov	%d2, -128
	st.b	[%a15] lo:HARD_ModSeq1InitState, %d2
.LVL11:
	.loc 1 189 0
	st.b	[%a4]0, %d15
	ret
.LVL12:
.L5:
	.loc 1 171 0
	mov	%d2, 8
	st.b	[%a15] lo:HARD_ModSeq1InitState, %d2
.LVL13:
	.loc 1 189 0
	st.b	[%a4]0, %d15
	ret
.LFE355:
	.size	HARD_vidModSeq1Init, .-HARD_vidModSeq1Init
	.align 1
	.global	HARD_vidModSeq1Func
	.type	HARD_vidModSeq1Func, @function
HARD_vidModSeq1Func:
.LFB356:
	.loc 1 204 0
.LVL14:
	.loc 1 207 0
	ld.bu	%d15, [%a4]0
.LVL15:
	.loc 1 204 0
	sub.a	%SP, 8
.LCFI1:
	.loc 1 209 0
	jz	%d15, .L22
	.loc 1 218 0
	movh.a	%a15, hi:HARD_ModSeq1FuncState
	ld.bu	%d2, [%a15] lo:HARD_ModSeq1FuncState
	jeq	%d2, 4, .L16
	jge.u	%d2, 5, .L17
	jeq	%d2, 1, .L18
	jne	%d2, 2, .L15
	.loc 1 242 0
	mov	%d2, 4
	st.b	[%a15] lo:HARD_ModSeq1FuncState, %d2
.LVL16:
	.loc 1 268 0
	st.b	[%a4]0, %d15
	ret
.LVL17:
.L17:
	.loc 1 218 0
	eq	%d3, %d2, 8
	jnz	%d3, .L20
	eq	%d2, %d2, 128
	.loc 1 260 0
	seln	%d15, %d2, %d15, 0
.LVL18:
	.loc 1 268 0
	st.b	[%a4]0, %d15
	ret
.LVL19:
.L22:
	.loc 1 214 0
	mov	%d2, 1
	movh.a	%a15, hi:HARD_ModSeq1FuncState
	st.b	[%a15] lo:HARD_ModSeq1FuncState, %d2
.LVL20:
.L15:
	.loc 1 268 0
	st.b	[%a4]0, %d15
	ret
.LVL21:
.L18:
	.loc 1 228 0
	mov	%d4, 1
	st.a	[%SP] 4, %a4
.LVL22:
	call	CCU6_vidSetPwmModReq
.LVL23:
	.loc 1 236 0
	ld.a	%a4, [%SP] 4
	.loc 1 235 0
	mov	%d2, 2
	st.b	[%a15] lo:HARD_ModSeq1FuncState, %d2
	.loc 1 268 0
	st.b	[%a4]0, %d15
	ret
.LVL24:
.L20:
	.loc 1 256 0
	mov	%d2, -128
	st.b	[%a15] lo:HARD_ModSeq1FuncState, %d2
.LVL25:
	.loc 1 268 0
	st.b	[%a4]0, %d15
	ret
.LVL26:
.L16:
	.loc 1 249 0
	mov	%d2, 8
	st.b	[%a15] lo:HARD_ModSeq1FuncState, %d2
.LVL27:
	.loc 1 268 0
	st.b	[%a4]0, %d15
	ret
.LFE356:
	.size	HARD_vidModSeq1Func, .-HARD_vidModSeq1Func
	.align 1
	.global	HARD_vidModSeq2Init
	.type	HARD_vidModSeq2Init, @function
HARD_vidModSeq2Init:
.LFB357:
	.loc 1 283 0
.LVL28:
	.loc 1 286 0
	ld.bu	%d8, [%a4]0
.LVL29:
	.loc 1 283 0
	sub.a	%SP, 8
.LCFI2:
	.loc 1 288 0
	jz	%d8, .L37
	.loc 1 297 0
	movh.a	%a15, hi:HARD_ModSeq2InitState
	ld.bu	%d15, [%a15] lo:HARD_ModSeq2InitState
	eq	%d2, %d15, 8
	jnz	%d2, .L26
	jlt.u	%d15, 9, .L38
	eq	%d2, %d15, 32
	jnz	%d2, .L31
	ge.u	%d2, %d15, 33
	jz	%d2, .L39
	eq	%d2, %d15, 64
	jnz	%d2, .L34
	eq	%d15, %d15, 128
	.loc 1 357 0
	cmov	%d8, %d15, 0
	j	.L25
.L38:
	.loc 1 297 0
	jeq	%d15, 2, .L28
	jeq	%d15, 4, .L29
	jne	%d15, 1, .L25
	.loc 1 303 0
	mov	%d4, 0
	st.a	[%SP] 4, %a4
.LVL30:
	call	GCCU6_vidSetPwmModReq
.LVL31:
	.loc 1 304 0
	mov	%d15, 2
	st.b	[%a15] lo:HARD_ModSeq2InitState, %d15
	.loc 1 305 0
	ld.a	%a4, [%SP] 4
	j	.L25
.LVL32:
.L37:
	.loc 1 293 0
	mov	%d15, 1
	movh.a	%a15, hi:HARD_ModSeq2InitState
	st.b	[%a15] lo:HARD_ModSeq2InitState, %d15
.LVL33:
.L25:
	.loc 1 364 0
	st.b	[%a4]0, %d8
	ret
.LVL34:
.L39:
	.loc 1 297 0
	eq	%d15, %d15, 16
	jz	%d15, .L25
	.loc 1 337 0
	mov	%d15, 32
	st.b	[%a15] lo:HARD_ModSeq2InitState, %d15
.LVL35:
	.loc 1 338 0
	j	.L25
.LVL36:
.L28:
	.loc 1 311 0
	mov	%d15, 1
	movh.a	%a2, hi:HARD_bPtgEnable
	st.b	[%a2] lo:HARD_bPtgEnable, %d15
.LVL37:
	.loc 1 312 0
	movh.a	%a2, hi:HARD_bPtgSignalsShiftControl
	st.b	[%a2] lo:HARD_bPtgSignalsShiftControl, %d15
	.loc 1 313 0
	mov	%d15, 4
	st.b	[%a15] lo:HARD_ModSeq2InitState, %d15
	.loc 1 314 0
	j	.L25
.LVL38:
.L34:
	.loc 1 353 0
	mov	%d15, -128
	st.b	[%a15] lo:HARD_ModSeq2InitState, %d15
.LVL39:
	.loc 1 354 0
	j	.L25
.LVL40:
.L29:
	.loc 1 321 0
	mov	%d15, 8
	st.b	[%a15] lo:HARD_ModSeq2InitState, %d15
.LVL41:
	.loc 1 322 0
	j	.L25
.LVL42:
.L31:
	.loc 1 345 0
	mov	%d15, 64
	st.b	[%a15] lo:HARD_ModSeq2InitState, %d15
.LVL43:
	.loc 1 346 0
	j	.L25
.LVL44:
.L26:
	.loc 1 329 0
	mov	%d15, 16
	st.b	[%a15] lo:HARD_ModSeq2InitState, %d15
.LVL45:
	.loc 1 330 0
	j	.L25
.LFE357:
	.size	HARD_vidModSeq2Init, .-HARD_vidModSeq2Init
	.align 1
	.global	HARD_vidModSeq2Func
	.type	HARD_vidModSeq2Func, @function
HARD_vidModSeq2Func:
.LFB358:
	.loc 1 379 0
.LVL46:
	.loc 1 382 0
	ld.bu	%d15, [%a4]0
.LVL47:
	.loc 1 379 0
	sub.a	%SP, 8
.LCFI3:
	.loc 1 384 0
	jz	%d15, .L49
	.loc 1 393 0
	movh.a	%a15, hi:HARD_ModSeq2FuncState
	ld.bu	%d2, [%a15] lo:HARD_ModSeq2FuncState
	jeq	%d2, 4, .L43
	jge.u	%d2, 5, .L44
	jeq	%d2, 1, .L45
	jne	%d2, 2, .L42
	.loc 1 408 0
	mov	%d2, 4
	st.b	[%a15] lo:HARD_ModSeq2FuncState, %d2
.LVL48:
	.loc 1 436 0
	st.b	[%a4]0, %d15
	ret
.LVL49:
.L44:
	.loc 1 393 0
	eq	%d3, %d2, 8
	jnz	%d3, .L47
	eq	%d2, %d2, 128
	.loc 1 428 0
	seln	%d15, %d2, %d15, 0
.LVL50:
	.loc 1 436 0
	st.b	[%a4]0, %d15
	ret
.LVL51:
.L49:
	.loc 1 389 0
	mov	%d2, 1
	movh.a	%a15, hi:HARD_ModSeq2FuncState
	st.b	[%a15] lo:HARD_ModSeq2FuncState, %d2
.LVL52:
.L42:
	.loc 1 436 0
	st.b	[%a4]0, %d15
	ret
.LVL53:
.L45:
	.loc 1 399 0
	mov	%d4, 1
	st.a	[%SP] 4, %a4
.LVL54:
	call	GCCU6_vidSetPwmModReq
.LVL55:
	.loc 1 401 0
	ld.a	%a4, [%SP] 4
	.loc 1 400 0
	mov	%d2, 2
	st.b	[%a15] lo:HARD_ModSeq2FuncState, %d2
	.loc 1 436 0
	st.b	[%a4]0, %d15
	ret
.LVL56:
.L47:
	.loc 1 424 0
	mov	%d2, -128
	st.b	[%a15] lo:HARD_ModSeq2FuncState, %d2
.LVL57:
	.loc 1 436 0
	st.b	[%a4]0, %d15
	ret
.LVL58:
.L43:
	.loc 1 416 0
	mov	%d2, 8
	st.b	[%a15] lo:HARD_ModSeq2FuncState, %d2
.LVL59:
	.loc 1 436 0
	st.b	[%a4]0, %d15
	ret
.LFE358:
	.size	HARD_vidModSeq2Func, .-HARD_vidModSeq2Func
	.global	HARD_ModSeq2FuncState
.section .bss.a1.HARD_ModSeq2FuncState,"aw",@nobits
	.type	HARD_ModSeq2FuncState, @object
	.size	HARD_ModSeq2FuncState, 1
HARD_ModSeq2FuncState:
	.zero	1
	.global	HARD_ModSeq2InitState
.section .bss.a1.HARD_ModSeq2InitState,"aw",@nobits
	.type	HARD_ModSeq2InitState, @object
	.size	HARD_ModSeq2InitState, 1
HARD_ModSeq2InitState:
	.zero	1
	.global	HARD_ModSeq1FuncState
.section .bss.a1.HARD_ModSeq1FuncState,"aw",@nobits
	.type	HARD_ModSeq1FuncState, @object
	.size	HARD_ModSeq1FuncState, 1
HARD_ModSeq1FuncState:
	.zero	1
	.global	HARD_ModSeq1InitState
.section .bss.a1.HARD_ModSeq1InitState,"aw",@nobits
	.type	HARD_ModSeq1InitState, @object
	.size	HARD_ModSeq1InitState, 1
HARD_ModSeq1InitState:
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
	.uaword	.LFB354
	.uaword	.LFE354-.LFB354
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB355
	.uaword	.LFE355-.LFB355
	.byte	0x4
	.uaword	.LCFI0-.LFB355
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB356
	.uaword	.LFE356-.LFB356
	.byte	0x4
	.uaword	.LCFI1-.LFB356
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB357
	.uaword	.LFE357-.LFB357
	.byte	0x4
	.uaword	.LCFI2-.LFB357
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB358
	.uaword	.LFE358-.LFB358
	.byte	0x4
	.uaword	.LCFI3-.LFB358
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 6 "bswcdd\\HARD\\HARD.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\CCU6\\CCU6.h"
	.file 8 ".\\output\\inc/..\\..\\bswcdd\\GCCU6\\GCCU6.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x7ac
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\HARD\\hard_mod.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1bd
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
	.uaword	0x1e9
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x20d
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
	.uaword	0x1bd
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2a0
	.uleb128 0x5
	.uleb128 0x6
	.byte	0x8
	.byte	0x3
	.byte	0x8c
	.uaword	0x2cb
	.uleb128 0x7
	.string	"module"
	.byte	0x3
	.byte	0x8e
	.uaword	0x29a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"index"
	.byte	0x3
	.byte	0x8f
	.uaword	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x3
	.byte	0x90
	.uaword	0x2a1
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x8
	.byte	0x1
	.byte	0x4
	.byte	0x88
	.uaword	0x352
	.uleb128 0x9
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0x9
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x5
	.uahalf	0x160
	.uaword	0x45b
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0x9
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"HARD_vidModInit"
	.byte	0x1
	.byte	0x5d
	.byte	0x1
	.uaword	.LFB354
	.uaword	.LFE354
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xc
	.byte	0x1
	.string	"HARD_vidModSeq1Init"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	.LFB355
	.uaword	.LFE355
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x4d4
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0x75
	.uaword	0x4d4
	.uaword	.LLST1
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0x77
	.uaword	0x262
	.uaword	.LLST2
	.uleb128 0xf
	.uaword	.LVL9
	.uaword	0x763
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x262
	.uleb128 0xc
	.byte	0x1
	.string	"HARD_vidModSeq1Func"
	.byte	0x1
	.byte	0xcb
	.byte	0x1
	.uaword	.LFB356
	.uaword	.LFE356
	.uaword	.LLST3
	.byte	0x1
	.uaword	0x532
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0xcb
	.uaword	0x4d4
	.uaword	.LLST4
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x1
	.byte	0xcd
	.uaword	0x262
	.uaword	.LLST5
	.uleb128 0xf
	.uaword	.LVL23
	.uaword	0x763
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"HARD_vidModSeq2Init"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	.LFB357
	.uaword	.LFE357
	.uaword	.LLST6
	.byte	0x1
	.uaword	0x58d
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x4d4
	.uaword	.LLST7
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x262
	.uaword	.LLST8
	.uleb128 0xf
	.uaword	.LVL31
	.uaword	0x78d
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"HARD_vidModSeq2Func"
	.byte	0x1
	.uahalf	0x17a
	.byte	0x1
	.uaword	.LFB358
	.uaword	.LFE358
	.uaword	.LLST9
	.byte	0x1
	.uaword	0x5e8
	.uleb128 0x12
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x17a
	.uaword	0x4d4
	.uaword	.LLST10
	.uleb128 0x13
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x262
	.uaword	.LLST11
	.uleb128 0xf
	.uaword	.LVL55
	.uaword	0x78d
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"HARD_bModSeq1FuncOn"
	.byte	0x6
	.uahalf	0x153
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"HARD_bModSeq1InitOn"
	.byte	0x6
	.uahalf	0x154
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"HARD_bModSeq2FuncOn"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"HARD_bModSeq2InitOn"
	.byte	0x6
	.uahalf	0x156
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"HARD_bPtgEnable"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.string	"HARD_bPtgSignalsShiftControl"
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"HARD_ModSeq1InitState"
	.byte	0x1
	.byte	0x44
	.uaword	0x1b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HARD_ModSeq1InitState
	.uleb128 0x15
	.string	"HARD_ModSeq1FuncState"
	.byte	0x1
	.byte	0x45
	.uaword	0x1b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HARD_ModSeq1FuncState
	.uleb128 0x15
	.string	"HARD_ModSeq2InitState"
	.byte	0x1
	.byte	0x47
	.uaword	0x1b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HARD_ModSeq2InitState
	.uleb128 0x15
	.string	"HARD_ModSeq2FuncState"
	.byte	0x1
	.byte	0x48
	.uaword	0x1b0
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	HARD_ModSeq2FuncState
	.uleb128 0x16
	.uaword	0x2cb
	.uaword	0x741
	.uleb128 0x17
	.uaword	0x2e5
	.byte	0x3
	.byte	0
	.uleb128 0x18
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x4
	.byte	0xaa
	.uaword	0x75e
	.byte	0x1
	.byte	0x1
	.uleb128 0x19
	.uaword	0x731
	.uleb128 0x1a
	.byte	0x1
	.string	"CCU6_vidSetPwmModReq"
	.byte	0x7
	.byte	0x6d
	.byte	0x1
	.byte	0x1
	.uaword	0x788
	.uleb128 0x1b
	.uaword	0x788
	.byte	0
	.uleb128 0x19
	.uaword	0x1db
	.uleb128 0x1c
	.byte	0x1
	.string	"GCCU6_vidSetPwmModReq"
	.byte	0x8
	.byte	0x6d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x788
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0x35
	.byte	0
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB355-.text
	.uaword	.LCFI0-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0-.text
	.uaword	.LFE355-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0-.text
	.uaword	.LVL9-1-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1-.text
	.uaword	.LVL10-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL10-.text
	.uaword	.LFE355-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1-.text
	.uaword	.LVL2-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL2-.text
	.uaword	.LVL3-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3-.text
	.uaword	.LVL4-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5-.text
	.uaword	.LVL6-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL6-.text
	.uaword	.LVL7-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL7-.text
	.uaword	.LVL8-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL8-.text
	.uaword	.LVL10-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL10-.text
	.uaword	.LVL11-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL11-.text
	.uaword	.LVL12-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12-.text
	.uaword	.LVL13-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL13-.text
	.uaword	.LFE355-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LFB356-.text
	.uaword	.LCFI1-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1-.text
	.uaword	.LFE356-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL14-.text
	.uaword	.LVL23-1-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1-.text
	.uaword	.LVL24-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL24-.text
	.uaword	.LFE356-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL15-.text
	.uaword	.LVL16-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL16-.text
	.uaword	.LVL17-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17-.text
	.uaword	.LVL18-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL18-.text
	.uaword	.LVL19-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL19-.text
	.uaword	.LVL20-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL20-.text
	.uaword	.LVL21-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21-.text
	.uaword	.LVL22-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL22-.text
	.uaword	.LVL24-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24-.text
	.uaword	.LVL25-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL25-.text
	.uaword	.LVL26-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL26-.text
	.uaword	.LVL27-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL27-.text
	.uaword	.LFE356-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LFB357-.text
	.uaword	.LCFI2-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2-.text
	.uaword	.LFE357-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL28-.text
	.uaword	.LVL31-1-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31-1-.text
	.uaword	.LVL32-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL32-.text
	.uaword	.LVL33-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL33-.text
	.uaword	.LVL34-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL34-.text
	.uaword	.LFE357-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL29-.text
	.uaword	.LVL30-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL30-.text
	.uaword	.LVL32-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL32-.text
	.uaword	.LVL33-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL33-.text
	.uaword	.LVL34-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL34-.text
	.uaword	.LVL35-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL35-.text
	.uaword	.LVL36-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL36-.text
	.uaword	.LVL37-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL37-.text
	.uaword	.LVL38-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL38-.text
	.uaword	.LVL39-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL39-.text
	.uaword	.LVL40-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL40-.text
	.uaword	.LVL41-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL41-.text
	.uaword	.LVL42-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL42-.text
	.uaword	.LVL43-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL43-.text
	.uaword	.LVL44-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL44-.text
	.uaword	.LVL45-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL45-.text
	.uaword	.LFE357-.text
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LFB358-.text
	.uaword	.LCFI3-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI3-.text
	.uaword	.LFE358-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL46-.text
	.uaword	.LVL55-1-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55-1-.text
	.uaword	.LVL56-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL56-.text
	.uaword	.LFE358-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL47-.text
	.uaword	.LVL48-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL48-.text
	.uaword	.LVL49-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL49-.text
	.uaword	.LVL50-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL50-.text
	.uaword	.LVL51-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL51-.text
	.uaword	.LVL52-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL52-.text
	.uaword	.LVL53-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL53-.text
	.uaword	.LVL54-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL54-.text
	.uaword	.LVL56-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL56-.text
	.uaword	.LVL57-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL57-.text
	.uaword	.LVL58-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL58-.text
	.uaword	.LVL59-.text
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL59-.text
	.uaword	.LFE358-.text
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"bLocalFlag"
.LASF0:
	.string	"flagOn"
	.extern	GCCU6_vidSetPwmModReq,STT_FUNC,0
	.extern	CCU6_vidSetPwmModReq,STT_FUNC,0
	.extern	HARD_bPtgSignalsShiftControl,STT_OBJECT,1
	.extern	HARD_bPtgEnable,STT_OBJECT,1
	.extern	HARD_bModSeq2FuncOn,STT_OBJECT,1
	.extern	HARD_bModSeq2InitOn,STT_OBJECT,1
	.extern	HARD_bModSeq1FuncOn,STT_OBJECT,1
	.extern	HARD_bModSeq1InitOn,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
