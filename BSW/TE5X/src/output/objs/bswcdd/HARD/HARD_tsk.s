	.file	"HARD_tsk.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	HARD_vidInit
	.type	HARD_vidInit, @function
HARD_vidInit:
.LFB0:
	.file 1 "bswcdd\\HARD\\HARD_tsk.c"
	.loc 1 78 0
	.loc 1 79 0
	call	HARD_vidIoInit
.LVL0:
	.loc 1 80 0
	call	HARD_vidPtgInit
.LVL1:
	.loc 1 81 0
	call	HARD_vidEsmInit
.LVL2:
	.loc 1 82 0
	j	HARD_vidModInit
.LVL3:
.LFE0:
	.size	HARD_vidInit, .-HARD_vidInit
	.align 1
	.global	HARD_vidIoTestIO
	.type	HARD_vidIoTestIO, @function
HARD_vidIoTestIO:
.LFB1:
	.loc 1 101 0
	.loc 1 105 0
	movh.a	%a15, hi:HARD_bDioWriteTestEna
	.loc 1 102 0
	call	HARD_vidIoReadAnaInput
.LVL4:
	.loc 1 103 0
	call	HARD_vidIoReadDioInput
.LVL5:
	.loc 1 104 0
	call	HARD_vidIoReadPwmInput
.LVL6:
	.loc 1 105 0
	ld.bu	%d15, [%a15] lo:HARD_bDioWriteTestEna
	jnz	%d15, .L5
	ret
.L5:
	.loc 1 107 0
	j	HARD_vidIoWriteDioOutput
.LVL7:
.LFE1:
	.size	HARD_vidIoTestIO, .-HARD_vidIoTestIO
	.align 1
	.global	HARD_vidPtgManager
	.type	HARD_vidPtgManager, @function
HARD_vidPtgManager:
.LFB2:
	.loc 1 137 0
.LVL8:
	.loc 1 152 0
	movh.a	%a15, hi:HARD_bPtgEnable
	ld.bu	%d15, [%a15] lo:HARD_bPtgEnable
	.loc 1 137 0
	sub.a	%SP, 24
.LCFI0:
	.loc 1 152 0
	jnz	%d15, .L9
	.loc 1 205 0
	ld.a	%a2, [%SP] 24
	.loc 1 206 0
	ld.a	%a15, [%SP] 28
	.loc 1 204 0
	st.b	[%a7]0, %d15
	.loc 1 205 0
	st.b	[%a2]0, %d15
	.loc 1 206 0
	st.b	[%a15]0, %d15
	ret
.L9:
	.loc 1 154 0
	movh.a	%a15, hi:HARD_u16PtgRefSignalTime
	lea	%a15, [%a15] lo:HARD_u16PtgRefSignalTime
	mov.d	%d10, %a4
	mov.aa	%a12, %a6
	movh.a	%a4, hi:HARD_u16PtgRefSignalNbPeriode
.LVL9:
	movh.a	%a6, hi:HARD_s16PtgRefSignalValue
.LVL10:
	mov.aa	%a13, %a5
	lea	%a4, [%a4] lo:HARD_u16PtgRefSignalNbPeriode
	mov.aa	%a5, %a15
.LVL11:
	lea	%a6, [%a6] lo:HARD_s16PtgRefSignalValue
	mov.d	%d9, %a7
	call	HARD_vidPtgCallTrigFunc
.LVL12:
	.loc 1 161 0
	movh	%d12, hi:HARD_bPtgUSignalEnable
	.loc 1 160 0
	lea	%a14, [%SP] 24
.LVL13:
	mov	%d8, 0
	.loc 1 161 0
	movh	%d13, hi:HARD_s16PtgUSignalValue
	.loc 1 160 0
	st.h	[+%a14]-6, %d8
.LVL14:
	.loc 1 161 0
	addi	%d15, %d12, lo:HARD_bPtgUSignalEnable
	mov.a	%a2, %d13
	movh	%d11, hi:HARD_bPtgSignalsShiftControl
	st.w	[%SP]0, %d15
	movh.a	%a4, hi:HARD_u16PtgUSignalNbPeriode
	addi	%d15, %d11, lo:HARD_bPtgSignalsShiftControl
	movh.a	%a5, hi:HARD_u16PtgUSignalTime
	mov.aa	%a6, %a15
	lea	%a7, [%a2] lo:HARD_s16PtgUSignalValue
	st.a	[%SP] 4, %a14
	st.w	[%SP] 8, %d15
	lea	%a4, [%a4] lo:HARD_u16PtgUSignalNbPeriode
	lea	%a5, [%a5] lo:HARD_u16PtgUSignalTime
	call	HARD_vidPtgCalculate
.LVL15:
	.loc 1 170 0
	mov.a	%a2, %d13
	.loc 1 173 0
	lea	%a14, [%SP] 24
.LVL16:
	.loc 1 170 0
	ld.h	%d2, [%a2] lo:HARD_s16PtgUSignalValue
	mov.a	%a2, %d10
	lt	%d3, %d2, 0
	cadd	%d2, %d3, %d2, 3
	sha	%d2, -2
	addi	%d2, %d2, 8192
	st.h	[%a2]0, %d2
	.loc 1 171 0
	mov.a	%a2, %d12
	.loc 1 174 0
	movh	%d12, hi:HARD_s16PtgVSignalValue
	.loc 1 171 0
	ld.bu	%d2, [%a2] lo:HARD_bPtgUSignalEnable
	mov.a	%a2, %d9
	.loc 1 174 0
	movh	%d10, hi:HARD_bPtgVSignalEnable
.LVL17:
	.loc 1 171 0
	st.b	[%a2]0, %d2
	.loc 1 173 0
	movh.a	%a2, hi:HARD_u16PtgVSignalShiftC
	ld.hu	%d9, [%a2] lo:HARD_u16PtgVSignalShiftC
.LVL18:
	.loc 1 174 0
	mov.a	%a2, %d12
	.loc 1 173 0
	st.h	[+%a14]-4, %d9
.LVL19:
	.loc 1 174 0
	addi	%d2, %d10, lo:HARD_bPtgVSignalEnable
	movh.a	%a4, hi:HARD_u16PtgVSignalNbPeriode
	movh.a	%a5, hi:HARD_u16PtgVSignalTime
	mov.aa	%a6, %a15
	lea	%a7, [%a2] lo:HARD_s16PtgVSignalValue
	st.w	[%SP]0, %d2
	st.a	[%SP] 4, %a14
	st.w	[%SP] 8, %d15
	lea	%a4, [%a4] lo:HARD_u16PtgVSignalNbPeriode
	lea	%a5, [%a5] lo:HARD_u16PtgVSignalTime
	call	HARD_vidPtgCalculate
.LVL20:
	.loc 1 183 0
	mov.a	%a2, %d12
	.loc 1 186 0
	lea	%a14, [%SP] 24
.LVL21:
	.loc 1 183 0
	ld.h	%d2, [%a2] lo:HARD_s16PtgVSignalValue
	.loc 1 184 0
	mov.a	%a2, %d10
	.loc 1 183 0
	lt	%d3, %d2, 0
	cadd	%d2, %d3, %d2, 3
	sha	%d2, -2
	addi	%d2, %d2, 8192
	st.h	[%a13]0, %d2
	.loc 1 184 0
	ld.bu	%d2, [%a2] lo:HARD_bPtgVSignalEnable
	ld.a	%a2, [%SP] 24
	.loc 1 188 0
	movh.a	%a13, hi:HARD_bPtgWSignalEnable
.LVL22:
	mov.d	%d3, %a13
	.loc 1 184 0
	st.b	[%a2]0, %d2
	.loc 1 186 0
	movh.a	%a2, hi:HARD_u16PtgWSignalShiftC
	ld.h	%d2, [%a2] lo:HARD_u16PtgWSignalShiftC
	.loc 1 188 0
	movh.a	%a4, hi:HARD_u16PtgWSignalNbPeriode
	.loc 1 186 0
	add	%d9, %d2
	st.h	[+%a14]-2, %d9
.LVL23:
	.loc 1 188 0
	movh	%d9, hi:HARD_s16PtgWSignalValue
	mov.a	%a2, %d9
	addi	%d2, %d3, lo:HARD_bPtgWSignalEnable
	movh.a	%a5, hi:HARD_u16PtgWSignalTime
	st.w	[%SP]0, %d2
	st.w	[%SP] 8, %d15
	mov.aa	%a6, %a15
	lea	%a7, [%a2] lo:HARD_s16PtgWSignalValue
	st.a	[%SP] 4, %a14
	lea	%a4, [%a4] lo:HARD_u16PtgWSignalNbPeriode
	lea	%a5, [%a5] lo:HARD_u16PtgWSignalTime
	call	HARD_vidPtgCalculate
.LVL24:
	.loc 1 197 0
	mov.a	%a15, %d9
	.loc 1 198 0
	ld.a	%a2, [%SP] 28
	.loc 1 197 0
	ld.h	%d15, [%a15] lo:HARD_s16PtgWSignalValue
	.loc 1 200 0
	mov.a	%a15, %d11
	.loc 1 197 0
	lt	%d2, %d15, 0
	cadd	%d15, %d2, %d15, 3
	sha	%d15, -2
	addi	%d15, %d15, 8192
	st.h	[%a12]0, %d15
	.loc 1 198 0
	ld.bu	%d15, [%a13] lo:HARD_bPtgWSignalEnable
	st.b	[%a2]0, %d15
	.loc 1 200 0
	st.b	[%a15] lo:HARD_bPtgSignalsShiftControl, %d8
	ret
.LFE2:
	.size	HARD_vidPtgManager, .-HARD_vidPtgManager
	.align 1
	.global	HARD_vidEsmReInit
	.type	HARD_vidEsmReInit, @function
HARD_vidEsmReInit:
.LFB3:
	.loc 1 225 0
	.loc 1 226 0
	j	HARD_vidEsmInit
.LVL25:
.LFE3:
	.size	HARD_vidEsmReInit, .-HARD_vidEsmReInit
	.align 1
	.global	HARD_vidEsmNf
	.type	HARD_vidEsmNf, @function
HARD_vidEsmNf:
.LFB4:
	.loc 1 240 0
	.loc 1 241 0
	movh.a	%a15, hi:HARD_EsmNfStateAut
	ld.bu	%d15, [%a15] lo:HARD_EsmNfStateAut
	jnz	%d15, .L13
	ret
.L13:
	.loc 1 243 0
	movh.a	%a15, hi:HARD_EsmNfState
	ld.bu	%d4, [%a15] lo:HARD_EsmNfState
	j	HARD_vidEsmStfManagerNf
.LVL26:
.LFE4:
	.size	HARD_vidEsmNf, .-HARD_vidEsmNf
	.align 1
	.global	HARD_vidEsmFt
	.type	HARD_vidEsmFt, @function
HARD_vidEsmFt:
.LFB5:
	.loc 1 258 0
	.loc 1 259 0
	movh.a	%a15, hi:HARD_EsmFtStateAut
	ld.bu	%d15, [%a15] lo:HARD_EsmFtStateAut
	jnz	%d15, .L16
	ret
.L16:
	.loc 1 261 0
	movh.a	%a15, hi:HARD_EsmFtState
	ld.bu	%d4, [%a15] lo:HARD_EsmFtState
	j	HARD_vidEsmStfManagerFt
.LVL27:
.LFE5:
	.size	HARD_vidEsmFt, .-HARD_vidEsmFt
	.align 1
	.global	HARD_vidModManager
	.type	HARD_vidModManager, @function
HARD_vidModManager:
.LFB6:
	.loc 1 281 0
	.loc 1 285 0
	movh.a	%a15, hi:HARD_bModSeq1InitOn
	lea	%a4, [%a15] lo:HARD_bModSeq1InitOn
	call	HARD_vidModSeq1Init
.LVL28:
	.loc 1 286 0
	ld.bu	%d15, [%a15] lo:HARD_bModSeq1InitOn
	jz	%d15, .L20
.L18:
	.loc 1 293 0
	movh.a	%a15, hi:HARD_bModSeq2InitOn
	lea	%a4, [%a15] lo:HARD_bModSeq2InitOn
	call	HARD_vidModSeq2Init
.LVL29:
	.loc 1 294 0
	ld.bu	%d15, [%a15] lo:HARD_bModSeq2InitOn
	jz	%d15, .L21
	ret
.L21:
	.loc 1 296 0
	movh.a	%a4, hi:HARD_bModSeq2FuncOn
	lea	%a4, [%a4] lo:HARD_bModSeq2FuncOn
	j	HARD_vidModSeq2Func
.LVL30:
.L20:
	.loc 1 288 0
	movh.a	%a4, hi:HARD_bModSeq1FuncOn
	lea	%a4, [%a4] lo:HARD_bModSeq1FuncOn
	call	HARD_vidModSeq1Func
.LVL31:
	j	.L18
.LFE6:
	.size	HARD_vidModManager, .-HARD_vidModManager
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.byte	0x4
	.uaword	.LCFI0-.LFB2
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\HARD\\HARD.h"
	.file 4 "bswcdd\\HARD\\HARD_L.h"
	.file 5 "bswcdd\\HARD\\HARD_Io.h"
	.file 6 "bswcdd\\HARD\\HARD_Ptg.h"
	.file 7 "bswcdd\\HARD\\HARD_Esm.h"
	.file 8 "bswcdd\\HARD\\hard_mod.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xb69
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\HARD\\HARD_tsk.c"
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
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x56
	.uaword	0x1dc
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1f7
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x21b
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
	.uleb128 0x4
	.byte	0x1
	.string	"HARD_vidInit"
	.byte	0x1
	.byte	0x4d
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2e8
	.uleb128 0x5
	.uaword	.LVL0
	.uaword	0x942
	.uleb128 0x5
	.uaword	.LVL1
	.uaword	0x957
	.uleb128 0x5
	.uaword	.LVL2
	.uaword	0x96d
	.uleb128 0x6
	.uaword	.LVL3
	.byte	0x1
	.uaword	0x983
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"HARD_vidIoTestIO"
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x334
	.uleb128 0x5
	.uaword	.LVL4
	.uaword	0x999
	.uleb128 0x5
	.uaword	.LVL5
	.uaword	0x9b6
	.uleb128 0x5
	.uaword	.LVL6
	.uaword	0x9d3
	.uleb128 0x6
	.uaword	.LVL7
	.byte	0x1
	.uaword	0x9f0
	.byte	0
	.uleb128 0x7
	.byte	0x1
	.string	"HARD_vidPtgManager"
	.byte	0x1
	.byte	0x81
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x4be
	.uleb128 0x8
	.string	"p_s16PwmUl"
	.byte	0x1
	.byte	0x82
	.uaword	0x4be
	.uaword	.LLST1
	.uleb128 0x8
	.string	"p_s16PwmVl"
	.byte	0x1
	.byte	0x83
	.uaword	0x4be
	.uaword	.LLST2
	.uleb128 0x8
	.string	"p_s16PwmWl"
	.byte	0x1
	.byte	0x84
	.uaword	0x4be
	.uaword	.LLST3
	.uleb128 0x8
	.string	"p_u8PwmUOn"
	.byte	0x1
	.byte	0x85
	.uaword	0x4c4
	.uaword	.LLST4
	.uleb128 0x8
	.string	"p_u8PwmVOn"
	.byte	0x1
	.byte	0x86
	.uaword	0x4c4
	.uaword	.LLST5
	.uleb128 0x8
	.string	"p_u8PwmWOn"
	.byte	0x1
	.byte	0x87
	.uaword	0x4c4
	.uaword	.LLST6
	.uleb128 0x9
	.string	"u16LocalPtgUSignalShift"
	.byte	0x1
	.byte	0x8a
	.uaword	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -6
	.uleb128 0x9
	.string	"u16LocalPtgVSignalShift"
	.byte	0x1
	.byte	0x8b
	.uaword	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x9
	.string	"u16LocalPtgWSignalShift"
	.byte	0x1
	.byte	0x8c
	.uaword	0x1e9
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0xa
	.uaword	.LVL12
	.uaword	0xa0f
	.uaword	0x45b
	.uleb128 0xb
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.uaword	.LVL15
	.uaword	0xa47
	.uaword	0x47d
	.uleb128 0xb
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0xb
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0xb
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0xa
	.uaword	.LVL20
	.uaword	0xa47
	.uaword	0x49f
	.uleb128 0xb
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0xb
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0xb
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	.LVL24
	.uaword	0xa47
	.uleb128 0xb
	.byte	0x1
	.byte	0x66
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0xb
	.byte	0x2
	.byte	0x8a
	.sleb128 8
	.byte	0x2
	.byte	0x7f
	.sleb128 0
	.uleb128 0xb
	.byte	0x2
	.byte	0x8a
	.sleb128 4
	.byte	0x2
	.byte	0x8e
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1ce
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1b0
	.uleb128 0x4
	.byte	0x1
	.string	"HARD_vidEsmReInit"
	.byte	0x1
	.byte	0xe0
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4fc
	.uleb128 0x6
	.uaword	.LVL25
	.byte	0x1
	.uaword	0x96d
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"HARD_vidEsmNf"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x52a
	.uleb128 0x6
	.uaword	.LVL26
	.byte	0x1
	.uaword	0xa90
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"HARD_vidEsmFt"
	.byte	0x1
	.uahalf	0x101
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x559
	.uleb128 0x6
	.uaword	.LVL27
	.byte	0x1
	.uaword	0xab8
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"HARD_vidModManager"
	.byte	0x1
	.uahalf	0x118
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5a8
	.uleb128 0x5
	.uaword	.LVL28
	.uaword	0xae0
	.uleb128 0x5
	.uaword	.LVL29
	.uaword	0xb04
	.uleb128 0x6
	.uaword	.LVL30
	.byte	0x1
	.uaword	0xb28
	.uleb128 0x5
	.uaword	.LVL31
	.uaword	0xb4c
	.byte	0
	.uleb128 0xf
	.string	"HARD_EsmFtState"
	.byte	0x3
	.byte	0x6e
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"HARD_EsmNfState"
	.byte	0x3
	.byte	0x6f
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_bModSeq1FuncOn"
	.byte	0x3
	.uahalf	0x153
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_bModSeq1InitOn"
	.byte	0x3
	.uahalf	0x154
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_bModSeq2FuncOn"
	.byte	0x3
	.uahalf	0x155
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_bModSeq2InitOn"
	.byte	0x3
	.uahalf	0x156
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_bPtgEnable"
	.byte	0x3
	.uahalf	0x15a
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_bPtgSignalsShiftControl"
	.byte	0x3
	.uahalf	0x15b
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_bPtgUSignalEnable"
	.byte	0x3
	.uahalf	0x15c
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_bPtgVSignalEnable"
	.byte	0x3
	.uahalf	0x15d
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_bPtgWSignalEnable"
	.byte	0x3
	.uahalf	0x15e
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_EsmFtStateAut"
	.byte	0x3
	.uahalf	0x15f
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_EsmNfStateAut"
	.byte	0x3
	.uahalf	0x160
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_bDioWriteTestEna"
	.byte	0x3
	.uahalf	0x161
	.uaword	0x270
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_s16PtgRefSignalValue"
	.byte	0x3
	.uahalf	0x166
	.uaword	0x1ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_s16PtgUSignalValue"
	.byte	0x3
	.uahalf	0x167
	.uaword	0x1ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_s16PtgVSignalValue"
	.byte	0x3
	.uahalf	0x168
	.uaword	0x1ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_s16PtgWSignalValue"
	.byte	0x3
	.uahalf	0x169
	.uaword	0x1ce
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_u16PtgRefSignalTime"
	.byte	0x3
	.uahalf	0x16a
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_u16PtgUSignalNbPeriode"
	.byte	0x3
	.uahalf	0x16b
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_u16PtgUSignalTime"
	.byte	0x3
	.uahalf	0x16c
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_u16PtgVSignalNbPeriode"
	.byte	0x3
	.uahalf	0x16d
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_u16PtgVSignalTime"
	.byte	0x3
	.uahalf	0x16e
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_u16PtgWSignalNbPeriode"
	.byte	0x3
	.uahalf	0x16f
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"HARD_u16PtgWSignalTime"
	.byte	0x3
	.uahalf	0x170
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"HARD_u16PtgVSignalShiftC"
	.byte	0x4
	.byte	0x37
	.uaword	0x8f4
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x1e9
	.uleb128 0xf
	.string	"HARD_u16PtgWSignalShiftC"
	.byte	0x4
	.byte	0x38
	.uaword	0x8f4
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"HARD_u16PtgRefSignalNbPeriode"
	.byte	0x4
	.byte	0x42
	.uaword	0x1e9
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"HARD_vidIoInit"
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"HARD_vidPtgInit"
	.byte	0x6
	.byte	0x21
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"HARD_vidEsmInit"
	.byte	0x7
	.byte	0x36
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"HARD_vidModInit"
	.byte	0x8
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"HARD_vidIoReadAnaInput"
	.byte	0x5
	.byte	0x49
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"HARD_vidIoReadDioInput"
	.byte	0x5
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"HARD_vidIoReadPwmInput"
	.byte	0x5
	.byte	0x4a
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"HARD_vidIoWriteDioOutput"
	.byte	0x5
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"HARD_vidPtgCallTrigFunc"
	.byte	0x6
	.byte	0x2b
	.byte	0x1
	.byte	0x1
	.uaword	0xa41
	.uleb128 0x14
	.uaword	0xa41
	.uleb128 0x14
	.uaword	0xa41
	.uleb128 0x14
	.uaword	0x4be
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x1e9
	.uleb128 0x13
	.byte	0x1
	.string	"HARD_vidPtgCalculate"
	.byte	0x6
	.byte	0x22
	.byte	0x1
	.byte	0x1
	.uaword	0xa8a
	.uleb128 0x14
	.uaword	0xa41
	.uleb128 0x14
	.uaword	0xa41
	.uleb128 0x14
	.uaword	0xa41
	.uleb128 0x14
	.uaword	0x4be
	.uleb128 0x14
	.uaword	0xa8a
	.uleb128 0x14
	.uaword	0xa41
	.uleb128 0x14
	.uaword	0xa8a
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.uaword	0x270
	.uleb128 0x13
	.byte	0x1
	.string	"HARD_vidEsmStfManagerNf"
	.byte	0x7
	.byte	0x37
	.byte	0x1
	.byte	0x1
	.uaword	0xab8
	.uleb128 0x14
	.uaword	0x1b0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"HARD_vidEsmStfManagerFt"
	.byte	0x7
	.byte	0x38
	.byte	0x1
	.byte	0x1
	.uaword	0xae0
	.uleb128 0x14
	.uaword	0x1b0
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"HARD_vidModSeq1Init"
	.byte	0x8
	.byte	0x45
	.byte	0x1
	.byte	0x1
	.uaword	0xb04
	.uleb128 0x14
	.uaword	0xa8a
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"HARD_vidModSeq2Init"
	.byte	0x8
	.byte	0x48
	.byte	0x1
	.byte	0x1
	.uaword	0xb28
	.uleb128 0x14
	.uaword	0xa8a
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"HARD_vidModSeq2Func"
	.byte	0x8
	.byte	0x49
	.byte	0x1
	.byte	0x1
	.uaword	0xb4c
	.uleb128 0x14
	.uaword	0xa8a
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"HARD_vidModSeq1Func"
	.byte	0x8
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x14
	.uaword	0xa8a
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
	.uleb128 0x5
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB2-.text
	.uaword	.LCFI0-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0-.text
	.uaword	.LFE2-.text
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL8-.text
	.uaword	.LVL9-.text
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-.text
	.uaword	.LVL17-.text
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL17-.text
	.uaword	.LFE2-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL8-.text
	.uaword	.LVL11-.text
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL11-.text
	.uaword	.LVL22-.text
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL22-.text
	.uaword	.LFE2-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8-.text
	.uaword	.LVL10-.text
	.uahalf	0x1
	.byte	0x66
	.uaword	.LVL10-.text
	.uaword	.LFE2-.text
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8-.text
	.uaword	.LVL12-1-.text
	.uahalf	0x1
	.byte	0x67
	.uaword	.LVL12-1-.text
	.uaword	.LVL18-.text
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL18-.text
	.uaword	.LFE2-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x67
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL8-.text
	.uaword	.LVL13-.text
	.uahalf	0x2
	.byte	0x91
	.sleb128 0
	.uaword	.LVL13-.text
	.uaword	.LVL14-.text
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	.LVL14-.text
	.uaword	.LVL16-.text
	.uahalf	0x2
	.byte	0x8e
	.sleb128 6
	.uaword	.LVL16-.text
	.uaword	.LVL19-.text
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	.LVL19-.text
	.uaword	.LVL21-.text
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	.LVL21-.text
	.uaword	.LVL23-.text
	.uahalf	0x2
	.byte	0x8e
	.sleb128 0
	.uaword	.LVL23-.text
	.uaword	.LFE2-.text
	.uahalf	0x2
	.byte	0x8e
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8-.text
	.uaword	.LVL13-.text
	.uahalf	0x2
	.byte	0x91
	.sleb128 4
	.uaword	.LVL13-.text
	.uaword	.LVL14-.text
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	.LVL14-.text
	.uaword	.LVL16-.text
	.uahalf	0x2
	.byte	0x8e
	.sleb128 10
	.uaword	.LVL16-.text
	.uaword	.LVL19-.text
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	.LVL19-.text
	.uaword	.LVL21-.text
	.uahalf	0x2
	.byte	0x8e
	.sleb128 8
	.uaword	.LVL21-.text
	.uaword	.LVL23-.text
	.uahalf	0x2
	.byte	0x8e
	.sleb128 4
	.uaword	.LVL23-.text
	.uaword	.LFE2-.text
	.uahalf	0x2
	.byte	0x8e
	.sleb128 6
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
	.extern	HARD_vidModSeq1Func,STT_FUNC,0
	.extern	HARD_bModSeq1FuncOn,STT_OBJECT,1
	.extern	HARD_vidModSeq2Func,STT_FUNC,0
	.extern	HARD_bModSeq2FuncOn,STT_OBJECT,1
	.extern	HARD_vidModSeq2Init,STT_FUNC,0
	.extern	HARD_bModSeq2InitOn,STT_OBJECT,1
	.extern	HARD_vidModSeq1Init,STT_FUNC,0
	.extern	HARD_bModSeq1InitOn,STT_OBJECT,1
	.extern	HARD_vidEsmStfManagerFt,STT_FUNC,0
	.extern	HARD_EsmFtState,STT_OBJECT,2
	.extern	HARD_EsmFtStateAut,STT_OBJECT,1
	.extern	HARD_vidEsmStfManagerNf,STT_FUNC,0
	.extern	HARD_EsmNfState,STT_OBJECT,2
	.extern	HARD_EsmNfStateAut,STT_OBJECT,1
	.extern	HARD_u16PtgWSignalTime,STT_OBJECT,2
	.extern	HARD_s16PtgWSignalValue,STT_OBJECT,2
	.extern	HARD_u16PtgWSignalNbPeriode,STT_OBJECT,2
	.extern	HARD_u16PtgWSignalShiftC,STT_OBJECT,2
	.extern	HARD_bPtgWSignalEnable,STT_OBJECT,1
	.extern	HARD_u16PtgVSignalTime,STT_OBJECT,2
	.extern	HARD_u16PtgVSignalNbPeriode,STT_OBJECT,2
	.extern	HARD_u16PtgVSignalShiftC,STT_OBJECT,2
	.extern	HARD_bPtgVSignalEnable,STT_OBJECT,1
	.extern	HARD_s16PtgVSignalValue,STT_OBJECT,2
	.extern	HARD_vidPtgCalculate,STT_FUNC,0
	.extern	HARD_u16PtgUSignalTime,STT_OBJECT,2
	.extern	HARD_u16PtgUSignalNbPeriode,STT_OBJECT,2
	.extern	HARD_bPtgSignalsShiftControl,STT_OBJECT,1
	.extern	HARD_s16PtgUSignalValue,STT_OBJECT,2
	.extern	HARD_bPtgUSignalEnable,STT_OBJECT,1
	.extern	HARD_vidPtgCallTrigFunc,STT_FUNC,0
	.extern	HARD_s16PtgRefSignalValue,STT_OBJECT,2
	.extern	HARD_u16PtgRefSignalNbPeriode,STT_OBJECT,2
	.extern	HARD_u16PtgRefSignalTime,STT_OBJECT,2
	.extern	HARD_bPtgEnable,STT_OBJECT,1
	.extern	HARD_vidIoWriteDioOutput,STT_FUNC,0
	.extern	HARD_vidIoReadPwmInput,STT_FUNC,0
	.extern	HARD_vidIoReadDioInput,STT_FUNC,0
	.extern	HARD_vidIoReadAnaInput,STT_FUNC,0
	.extern	HARD_bDioWriteTestEna,STT_OBJECT,1
	.extern	HARD_vidModInit,STT_FUNC,0
	.extern	HARD_vidEsmInit,STT_FUNC,0
	.extern	HARD_vidPtgInit,STT_FUNC,0
	.extern	HARD_vidIoInit,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
