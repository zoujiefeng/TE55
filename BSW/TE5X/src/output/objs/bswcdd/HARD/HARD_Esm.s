	.file	"HARD_Esm.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	HARD_vidEsmInit
	.type	HARD_vidEsmInit, @function
HARD_vidEsmInit:
.LFB0:
	.file 1 "bswcdd\\HARD\\HARD_Esm.c"
	.loc 1 60 0
	.loc 1 61 0
	mov	%d15, 0
	movh.a	%a15, hi:HARD_EsmNfStateAut
	st.b	[%a15] lo:HARD_EsmNfStateAut, %d15
	.loc 1 62 0
	movh.a	%a15, hi:HARD_EsmFtStateAut
	.loc 1 64 0
	mov	%d2, 64
	.loc 1 62 0
	st.b	[%a15] lo:HARD_EsmFtStateAut, %d15
	.loc 1 64 0
	movh.a	%a15, hi:HARD_EsmNfState
	st.h	[%a15] lo:HARD_EsmNfState, %d2
	.loc 1 65 0
	movh.a	%a15, hi:HARD_EsmFtState
	st.h	[%a15] lo:HARD_EsmFtState, %d2
	.loc 1 67 0
	movh.a	%a15, hi:HARD_bESMCmdFtStartReq
	st.b	[%a15] lo:HARD_bESMCmdFtStartReq, %d15
	.loc 1 68 0
	movh.a	%a15, hi:HARD_bESMCmdSwShutdownReq
	st.b	[%a15] lo:HARD_bESMCmdSwShutdownReq, %d15
	.loc 1 69 0
	movh.a	%a15, hi:HARD_bESMCmdSwStartReq
	st.b	[%a15] lo:HARD_bESMCmdSwStartReq, %d15
	.loc 1 70 0
	movh.a	%a15, hi:HARD_bESMCmdFtShutdownReq
	st.b	[%a15] lo:HARD_bESMCmdFtShutdownReq, %d15
	.loc 1 71 0
	movh.a	%a15, hi:HARD_bESMCmdPwmDirectReq
	st.b	[%a15] lo:HARD_bESMCmdPwmDirectReq, %d15
	.loc 1 72 0
	movh.a	%a15, hi:HARD_bESMCmdPwmHardReq
	st.b	[%a15] lo:HARD_bESMCmdPwmHardReq, %d15
	.loc 1 73 0
	movh.a	%a15, hi:HARD_bESMCmdPwmOffReq
	st.b	[%a15] lo:HARD_bESMCmdPwmOffReq, %d15
	ret
.LFE0:
	.size	HARD_vidEsmInit, .-HARD_vidEsmInit
	.align 1
	.global	HARD_vidEsmStfManagerNf
	.type	HARD_vidEsmStfManagerNf, @function
HARD_vidEsmStfManagerNf:
.LFB1:
	.loc 1 87 0
.LVL0:
	.loc 1 88 0
	eq	%d15, %d4, 8
	jnz	%d15, .L4
	jge.u	%d4, 9, .L5
	jeq	%d4, 1, .L6
	jne	%d4, 4, .L11
	.loc 1 100 0
	mov	%d15, 0
	movh.a	%a15, hi:HARD_bESMCmdFtStartReq
	st.b	[%a15] lo:HARD_bESMCmdFtStartReq, %d15
	.loc 1 101 0
	mov	%d2, 1
	movh.a	%a15, hi:HARD_bESMCmdSwShutdownReq
	st.b	[%a15] lo:HARD_bESMCmdSwShutdownReq, %d2
	.loc 1 102 0
	movh.a	%a15, hi:HARD_bESMCmdPwmHardReq
	st.b	[%a15] lo:HARD_bESMCmdPwmHardReq, %d15
	.loc 1 103 0
	movh.a	%a15, hi:HARD_bESMCmdPwmOffReq
	st.b	[%a15] lo:HARD_bESMCmdPwmOffReq, %d15
	.loc 1 104 0
	ret
.L5:
	.loc 1 88 0
	eq	%d15, %d4, 16
	jnz	%d15, .L8
	eq	%d4, %d4, 64
.LVL1:
	jz	%d4, .L12
	.loc 1 121 0
	mov	%d15, 0
	movh.a	%a15, hi:HARD_bESMCmdFtStartReq
	st.b	[%a15] lo:HARD_bESMCmdFtStartReq, %d15
	.loc 1 122 0
	movh.a	%a15, hi:HARD_bESMCmdSwShutdownReq
	st.b	[%a15] lo:HARD_bESMCmdSwShutdownReq, %d15
	.loc 1 123 0
	movh.a	%a15, hi:HARD_bESMCmdPwmHardReq
	st.b	[%a15] lo:HARD_bESMCmdPwmHardReq, %d15
	.loc 1 124 0
	movh.a	%a15, hi:HARD_bESMCmdPwmOffReq
	st.b	[%a15] lo:HARD_bESMCmdPwmOffReq, %d15
	ret
.L12:
	ret
.LVL2:
.L11:
	ret
.L8:
	.loc 1 114 0
	mov	%d15, 0
	movh.a	%a15, hi:HARD_bESMCmdFtStartReq
	st.b	[%a15] lo:HARD_bESMCmdFtStartReq, %d15
	.loc 1 115 0
	movh.a	%a15, hi:HARD_bESMCmdSwShutdownReq
	st.b	[%a15] lo:HARD_bESMCmdSwShutdownReq, %d15
	.loc 1 116 0
	movh.a	%a15, hi:HARD_bESMCmdPwmHardReq
	st.b	[%a15] lo:HARD_bESMCmdPwmHardReq, %d15
	.loc 1 117 0
	mov	%d15, 1
	movh.a	%a15, hi:HARD_bESMCmdPwmOffReq
	st.b	[%a15] lo:HARD_bESMCmdPwmOffReq, %d15
	.loc 1 118 0
	ret
.L6:
	.loc 1 91 0
	movh.a	%a15, hi:HARD_bESMCmdFtStartReq
	.loc 1 92 0
	mov	%d15, 0
	.loc 1 91 0
	st.b	[%a15] lo:HARD_bESMCmdFtStartReq, %d4
	.loc 1 92 0
	movh.a	%a15, hi:HARD_bESMCmdSwShutdownReq
	st.b	[%a15] lo:HARD_bESMCmdSwShutdownReq, %d15
	.loc 1 93 0
	movh.a	%a15, hi:HARD_bESMCmdPwmHardReq
	st.b	[%a15] lo:HARD_bESMCmdPwmHardReq, %d15
	.loc 1 94 0
	movh.a	%a15, hi:HARD_bESMCmdPwmOffReq
	st.b	[%a15] lo:HARD_bESMCmdPwmOffReq, %d15
	.loc 1 96 0
	mov	%d15, 64
	movh.a	%a15, hi:HARD_EsmFtState
	st.h	[%a15] lo:HARD_EsmFtState, %d15
	.loc 1 97 0
	ret
.L4:
	.loc 1 107 0
	mov	%d15, 0
	movh.a	%a15, hi:HARD_bESMCmdFtStartReq
	st.b	[%a15] lo:HARD_bESMCmdFtStartReq, %d15
	.loc 1 108 0
	movh.a	%a15, hi:HARD_bESMCmdSwShutdownReq
	st.b	[%a15] lo:HARD_bESMCmdSwShutdownReq, %d15
	.loc 1 109 0
	mov	%d2, 1
	movh.a	%a15, hi:HARD_bESMCmdPwmHardReq
	st.b	[%a15] lo:HARD_bESMCmdPwmHardReq, %d2
	.loc 1 110 0
	movh.a	%a15, hi:HARD_bESMCmdPwmOffReq
	st.b	[%a15] lo:HARD_bESMCmdPwmOffReq, %d15
	.loc 1 111 0
	ret
.LFE1:
	.size	HARD_vidEsmStfManagerNf, .-HARD_vidEsmStfManagerNf
	.align 1
	.global	HARD_vidEsmStfManagerFt
	.type	HARD_vidEsmStfManagerFt, @function
HARD_vidEsmStfManagerFt:
.LFB2:
	.loc 1 143 0
.LVL3:
	.loc 1 144 0
	jeq	%d4, 4, .L15
	jge.u	%d4, 5, .L16
	jeq	%d4, 1, .L17
	jne	%d4, 2, .L22
	.loc 1 154 0
	mov	%d15, 0
	movh.a	%a15, hi:HARD_bESMCmdPwmDirectReq
	st.b	[%a15] lo:HARD_bESMCmdPwmDirectReq, %d15
	.loc 1 155 0
	mov	%d2, 1
	movh.a	%a15, hi:HARD_bESMCmdPwmHardReq
	st.b	[%a15] lo:HARD_bESMCmdPwmHardReq, %d2
	.loc 1 156 0
	movh.a	%a15, hi:HARD_bESMCmdPwmOffReq
	st.b	[%a15] lo:HARD_bESMCmdPwmOffReq, %d15
	.loc 1 157 0
	movh.a	%a15, hi:HARD_bESMCmdFtShutdownReq
	st.b	[%a15] lo:HARD_bESMCmdFtShutdownReq, %d15
	.loc 1 158 0
	ret
.L16:
	.loc 1 144 0
	eq	%d15, %d4, 8
	jnz	%d15, .L19
	eq	%d4, %d4, 64
.LVL4:
	jz	%d4, .L23
	.loc 1 175 0
	mov	%d15, 0
	movh.a	%a15, hi:HARD_bESMCmdPwmDirectReq
	st.b	[%a15] lo:HARD_bESMCmdPwmDirectReq, %d15
.L21:
	.loc 1 176 0
	movh.a	%a15, hi:HARD_bESMCmdPwmHardReq
	st.b	[%a15] lo:HARD_bESMCmdPwmHardReq, %d15
	.loc 1 177 0
	movh.a	%a15, hi:HARD_bESMCmdPwmOffReq
	st.b	[%a15] lo:HARD_bESMCmdPwmOffReq, %d15
	.loc 1 178 0
	movh.a	%a15, hi:HARD_bESMCmdFtShutdownReq
	st.b	[%a15] lo:HARD_bESMCmdFtShutdownReq, %d15
	ret
.L23:
	ret
.LVL5:
.L22:
	ret
.L19:
	.loc 1 168 0
	mov	%d15, 0
	movh.a	%a15, hi:HARD_bESMCmdPwmDirectReq
	st.b	[%a15] lo:HARD_bESMCmdPwmDirectReq, %d15
	.loc 1 169 0
	movh.a	%a15, hi:HARD_bESMCmdPwmHardReq
	st.b	[%a15] lo:HARD_bESMCmdPwmHardReq, %d15
	.loc 1 170 0
	movh.a	%a15, hi:HARD_bESMCmdPwmOffReq
	st.b	[%a15] lo:HARD_bESMCmdPwmOffReq, %d15
	.loc 1 171 0
	mov	%d15, 1
	movh.a	%a15, hi:HARD_bESMCmdFtShutdownReq
	st.b	[%a15] lo:HARD_bESMCmdFtShutdownReq, %d15
	.loc 1 172 0
	ret
.L17:
	.loc 1 147 0
	movh.a	%a15, hi:HARD_bESMCmdPwmDirectReq
	st.b	[%a15] lo:HARD_bESMCmdPwmDirectReq, %d4
	.loc 1 148 0
	mov	%d15, 0
	j	.L21
.L15:
	.loc 1 161 0
	mov	%d15, 0
	movh.a	%a15, hi:HARD_bESMCmdPwmDirectReq
	st.b	[%a15] lo:HARD_bESMCmdPwmDirectReq, %d15
	.loc 1 162 0
	movh.a	%a15, hi:HARD_bESMCmdPwmHardReq
	st.b	[%a15] lo:HARD_bESMCmdPwmHardReq, %d15
	.loc 1 163 0
	mov	%d2, 1
	movh.a	%a15, hi:HARD_bESMCmdPwmOffReq
	st.b	[%a15] lo:HARD_bESMCmdPwmOffReq, %d2
	.loc 1 164 0
	movh.a	%a15, hi:HARD_bESMCmdFtShutdownReq
	st.b	[%a15] lo:HARD_bESMCmdFtShutdownReq, %d15
	.loc 1 165 0
	ret
.LFE2:
	.size	HARD_vidEsmStfManagerFt, .-HARD_vidEsmStfManagerFt
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
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\HARD\\HARD.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x47c
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\HARD\\HARD_Esm.c"
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
	.string	"HARD_vidEsmInit"
	.byte	0x1
	.byte	0x3b
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.string	"HARD_vidEsmStfManagerNf"
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2e5
	.uleb128 0x6
	.string	"fState"
	.byte	0x1
	.byte	0x56
	.uaword	0x1b0
	.uaword	.LLST0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"HARD_vidEsmStfManagerFt"
	.byte	0x1
	.byte	0x8e
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x325
	.uleb128 0x6
	.string	"fState"
	.byte	0x1
	.byte	0x8e
	.uaword	0x1b0
	.uaword	.LLST1
	.byte	0
	.uleb128 0x7
	.string	"HARD_EsmFtState"
	.byte	0x3
	.byte	0x6e
	.uaword	0x1db
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.string	"HARD_EsmNfState"
	.byte	0x3
	.byte	0x6f
	.uaword	0x1db
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"HARD_bESMCmdFtShutdownReq"
	.byte	0x3
	.uahalf	0x145
	.uaword	0x254
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"HARD_bESMCmdFtStartReq"
	.byte	0x3
	.uahalf	0x147
	.uaword	0x254
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"HARD_bESMCmdPwmDirectReq"
	.byte	0x3
	.uahalf	0x149
	.uaword	0x254
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"HARD_bESMCmdPwmHardReq"
	.byte	0x3
	.uahalf	0x14b
	.uaword	0x254
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"HARD_bESMCmdPwmOffReq"
	.byte	0x3
	.uahalf	0x14d
	.uaword	0x254
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"HARD_bESMCmdSwShutdownReq"
	.byte	0x3
	.uahalf	0x14f
	.uaword	0x254
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"HARD_bESMCmdSwStartReq"
	.byte	0x3
	.uahalf	0x151
	.uaword	0x254
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"HARD_EsmFtStateAut"
	.byte	0x3
	.uahalf	0x15f
	.uaword	0x254
	.byte	0x1
	.byte	0x1
	.uleb128 0x8
	.string	"HARD_EsmNfStateAut"
	.byte	0x3
	.uahalf	0x160
	.uaword	0x254
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0-.text
	.uaword	.LVL1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-.text
	.uaword	.LVL2-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL2-.text
	.uaword	.LFE1-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3-.text
	.uaword	.LVL4-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4-.text
	.uaword	.LVL5-.text
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL5-.text
	.uaword	.LFE2-.text
	.uahalf	0x1
	.byte	0x54
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
	.extern	HARD_bESMCmdPwmOffReq,STT_OBJECT,1
	.extern	HARD_bESMCmdPwmHardReq,STT_OBJECT,1
	.extern	HARD_bESMCmdPwmDirectReq,STT_OBJECT,1
	.extern	HARD_bESMCmdFtShutdownReq,STT_OBJECT,1
	.extern	HARD_bESMCmdSwStartReq,STT_OBJECT,1
	.extern	HARD_bESMCmdSwShutdownReq,STT_OBJECT,1
	.extern	HARD_bESMCmdFtStartReq,STT_OBJECT,1
	.extern	HARD_EsmFtState,STT_OBJECT,2
	.extern	HARD_EsmNfState,STT_OBJECT,2
	.extern	HARD_EsmFtStateAut,STT_OBJECT,1
	.extern	HARD_EsmNfStateAut,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
