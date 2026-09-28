	.file	"spy_daq.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.SPY_vidInit,"ax",@progbits
	.align 1
	.global	SPY_vidInit
	.type	SPY_vidInit, @function
SPY_vidInit:
.LFB0:
	.file 1 "bswcdd\\CCP\\SPY\\spy_daq.c"
	.loc 1 76 0
	.loc 1 77 0
	mov	%d15, 0
	movh.a	%a15, hi:SPY_u16NrOfElmsToTx
	st.h	[%a15] lo:SPY_u16NrOfElmsToTx, %d15
	.loc 1 78 0
	movh.a	%a15, hi:SPY_u16DaqListFirstElmIdx
	.loc 1 79 0
	mov	%d2, 0
	.loc 1 78 0
	st.h	[%a15] lo:SPY_u16DaqListFirstElmIdx, %d15
	.loc 1 79 0
	movh.a	%a15, hi:SPY_ppu8DaqListElmAdr
	.loc 1 80 0
	mov	%d3, 400
	.loc 1 79 0
	st.w	[%a15] lo:SPY_ppu8DaqListElmAdr, %d2
	.loc 1 80 0
	movh.a	%a15, hi:SPY_u16SmplIdx
	st.h	[%a15] lo:SPY_u16SmplIdx, %d3
	.loc 1 81 0
	movh.a	%a15, hi:SPY_u16PreTrigSmplIdx
	st.h	[%a15] lo:SPY_u16PreTrigSmplIdx, %d2
	.loc 1 82 0
	mov	%d3, 200
	movh.a	%a15, hi:SPY_u16RmngSmplIdx
	st.h	[%a15] lo:SPY_u16RmngSmplIdx, %d3
	.loc 1 83 0
	movh.a	%a15, hi:SPY_u16TrigSmplIdx
	st.h	[%a15] lo:SPY_u16TrigSmplIdx, %d2
	.loc 1 84 0
	movh.a	%a15, hi:SPY_bBufFull
	st.b	[%a15] lo:SPY_bBufFull, %d15
	ret
.LFE0:
	.size	SPY_vidInit, .-SPY_vidInit
.section .text.SPY_vidDaqListTxInit,"ax",@progbits
	.align 1
	.global	SPY_vidDaqListTxInit
	.type	SPY_vidDaqListTxInit, @function
SPY_vidDaqListTxInit:
.LFB1:
	.loc 1 101 0
.LVL0:
	.loc 1 102 0
	jeq	%d4, 1, .L5
	ret
.L5:
	.loc 1 106 0
	add	%d6, 1
.LVL1:
	.loc 1 104 0
	movh.a	%a15, hi:SPY_u16DaqListFirstElmIdx
	.loc 1 105 0
	addsc.a	%a4, %a4, %d5, 2
.LVL2:
	.loc 1 106 0
	mul	%d6, %d6, 7
	.loc 1 104 0
	st.h	[%a15] lo:SPY_u16DaqListFirstElmIdx, %d5
	.loc 1 105 0
	movh.a	%a15, hi:SPY_ppu8DaqListElmAdr
	st.a	[%a15] lo:SPY_ppu8DaqListElmAdr, %a4
	.loc 1 106 0
	movh.a	%a15, hi:SPY_u16NrOfElmsToTx
	st.h	[%a15] lo:SPY_u16NrOfElmsToTx, %d6
	ret
.LFE1:
	.size	SPY_vidDaqListTxInit, .-SPY_vidDaqListTxInit
.section .text.SPY_bWrOdt,"ax",@progbits
	.align 1
	.global	SPY_bWrOdt
	.type	SPY_bWrOdt, @function
SPY_bWrOdt:
.LFB2:
	.loc 1 124 0
.LVL3:
	.loc 1 132 0
	mov	%d2, 0
	.loc 1 133 0
	jeq	%d4, 1, .L14
.L7:
.LVL4:
	.loc 1 170 0
	ret
.LVL5:
.L14:
	.loc 1 134 0
	movh.a	%a2, hi:SPY_bBufFull
	ld.bu	%d15, [%a2] lo:SPY_bBufFull
	jne	%d15, 1, .L7
	.loc 1 136 0
	movh.a	%a3, hi:SPY_u16TrigSmplIdx
	ld.hu	%d15, [%a3] lo:SPY_u16TrigSmplIdx
.LVL6:
	.loc 1 141 0
	movh.a	%a15, hi:SPY_u16DaqListFirstElmIdx
	.loc 1 137 0
	lt.u	%d3, %d15, 400
	.loc 1 139 0
	sel	%d15, %d3, %d15, 0
.LVL7:
	.loc 1 141 0
	ld.hu	%d3, [%a15] lo:SPY_u16DaqListFirstElmIdx
	.loc 1 142 0
	movh.a	%a15, hi:SPY_au8Smpls
	.loc 1 141 0
	sub	%d5, %d3
.LVL8:
	.loc 1 142 0
	madd	%d3, %d5, %d15, 84
	lea	%a15, [%a15] lo:SPY_au8Smpls
	.loc 1 152 0
	add	%d5, 7
.LVL9:
	.loc 1 142 0
	addsc.a	%a15, %a15, %d3, 0
.LVL10:
	.loc 1 144 0
	ld.bu	%d3, [%a15]0
	st.b	[%a4]0, %d3
.LVL11:
	.loc 1 145 0
	ld.bu	%d3, [%a15] 1
	st.b	[%a4] 1, %d3
.LVL12:
	.loc 1 146 0
	ld.bu	%d3, [%a15] 2
	st.b	[%a4] 2, %d3
.LVL13:
	.loc 1 147 0
	ld.bu	%d3, [%a15] 3
	st.b	[%a4] 3, %d3
.LVL14:
	.loc 1 148 0
	ld.bu	%d3, [%a15] 4
	st.b	[%a4] 4, %d3
.LVL15:
	.loc 1 149 0
	ld.bu	%d3, [%a15] 5
	st.b	[%a4] 5, %d3
	.loc 1 150 0
	ld.bu	%d3, [%a15] 6
	.loc 1 152 0
	movh.a	%a15, hi:SPY_u16NrOfElmsToTx
.LVL16:
	.loc 1 150 0
	st.b	[%a4] 6, %d3
	.loc 1 152 0
	ld.hu	%d3, [%a15] lo:SPY_u16NrOfElmsToTx
	jlt.u	%d5, %d3, .L13
.LVL17:
	.loc 1 154 0
	add	%d15, 1
.LVL18:
	.loc 1 157 0
	movh.a	%a15, hi:SPY_u16SmplIdx
	.loc 1 155 0
	st.h	[%a3] lo:SPY_u16TrigSmplIdx, %d15
	.loc 1 157 0
	ld.hu	%d15, [%a15] lo:SPY_u16SmplIdx
.LVL19:
	.loc 1 160 0
	mov	%d3, 400
	.loc 1 157 0
	add	%d15, 1
.LVL20:
	.loc 1 158 0
	st.h	[%a15] lo:SPY_u16SmplIdx, %d15
	.loc 1 160 0
	jlt	%d15, %d3, .L13
	.loc 1 163 0
	movh.a	%a15, hi:SPY_u16PreTrigSmplIdx
	.loc 1 162 0
	st.b	[%a2] lo:SPY_bBufFull, %d2
	.loc 1 163 0
	st.h	[%a15] lo:SPY_u16PreTrigSmplIdx, %d2
.LVL21:
.L13:
	.loc 1 167 0
	mov	%d2, 1
.LVL22:
	.loc 1 170 0
	ret
.LFE2:
	.size	SPY_bWrOdt, .-SPY_bWrOdt
.section .text.SPY_vidDaqListStopd,"ax",@progbits
	.align 1
	.global	SPY_vidDaqListStopd
	.type	SPY_vidDaqListStopd, @function
SPY_vidDaqListStopd:
.LFB3:
	.loc 1 186 0
.LVL23:
	.loc 1 187 0
	jeq	%d4, 1, .L17
	ret
.L17:
	.loc 1 189 0
	mov	%d15, 0
	movh.a	%a15, hi:SPY_u16NrOfElmsToTx
	st.h	[%a15] lo:SPY_u16NrOfElmsToTx, %d15
	.loc 1 190 0
	movh.a	%a15, hi:SPY_bBufFull
	st.b	[%a15] lo:SPY_bBufFull, %d15
	ret
.LFE3:
	.size	SPY_vidDaqListStopd, .-SPY_vidDaqListStopd
.section .text.SPY_vidWrBuf,"ax",@progbits
	.align 1
	.global	SPY_vidWrBuf
	.type	SPY_vidWrBuf, @function
SPY_vidWrBuf:
.LFB4:
	.loc 1 208 0
	.loc 1 219 0
	movh.a	%a15, hi:SPY_u16NrOfElmsToTx
	ld.hu	%d15, [%a15] lo:SPY_u16NrOfElmsToTx
	.loc 1 218 0
	movh.a	%a3, hi:SPY_u16SmplIdx
	ld.hu	%d2, [%a3] lo:SPY_u16SmplIdx
.LVL24:
	.loc 1 220 0
	jz	%d15, .L18
	.loc 1 221 0
	movh.a	%a6, hi:SPY_bBufFull
	ld.bu	%d3, [%a6] lo:SPY_bBufFull
	jnz	%d3, .L18
	.loc 1 223 0
	ge.u	%d3, %d2, 400
	jnz	%d3, .L35
	addi	%d3, %d2, 1
	extr.u	%d3, %d3, 0, 16
.LVL25:
.L22:
	.loc 1 228 0
	movh.a	%a2, hi:SPY_au8Smpls
	mov.d	%d5, %a2
	.loc 1 229 0
	movh.a	%a15, hi:SPY_ppu8DaqListElmAdr
	.loc 1 228 0
	addi	%d4, %d5, lo:SPY_au8Smpls
	madd	%d5, %d4, %d2, 84
	.loc 1 230 0
	add	%d2, %d15, 7
.LVL26:
	.loc 1 235 0
	and	%d15, %d15, 7
.LVL27:
	.loc 1 233 0
	st.h	[%a3] lo:SPY_u16SmplIdx, %d3
	.loc 1 235 0
	add	%d15, -1
	.loc 1 228 0
	mov.a	%a2, %d5
.LVL28:
	.loc 1 229 0
	ld.a	%a15, [%a15] lo:SPY_ppu8DaqListElmAdr
.LVL29:
	.loc 1 230 0
	sh	%d2, -3
.LVL30:
	.loc 1 235 0
	jlt.u	%d15, 7, .L39
.LVL31:
.L23:
	.loc 1 237 0
	ld.a	%a4, [%a15]0
	add.a	%a15, 4
.LVL32:
	ld.bu	%d15, [%a4]0
	st.b	[%a2]0, %d15
	add.a	%a2, 1
.LVL33:
.L31:
	.loc 1 238 0
	lea	%a5, [%a15] 4
	ld.a	%a15, [%a15]0
.LVL34:
	lea	%a4, [%a2] 1
.LVL35:
	ld.bu	%d15, [%a15]0
	st.b	[%a2]0, %d15
.L30:
	.loc 1 239 0
	lea	%a15, [%a5] 4
	ld.a	%a5, [%a5]0
.LVL36:
	lea	%a2, [%a4] 1
.LVL37:
	ld.bu	%d15, [%a5]0
	st.b	[%a4]0, %d15
.L29:
	.loc 1 240 0
	lea	%a5, [%a15] 4
	ld.a	%a15, [%a15]0
.LVL38:
	lea	%a4, [%a2] 1
.LVL39:
	ld.bu	%d15, [%a15]0
	st.b	[%a2]0, %d15
.L28:
	.loc 1 241 0
	lea	%a15, [%a5] 4
	ld.a	%a5, [%a5]0
.LVL40:
	lea	%a2, [%a4] 1
.LVL41:
	ld.bu	%d15, [%a5]0
	st.b	[%a4]0, %d15
.L27:
	.loc 1 242 0
	lea	%a5, [%a15] 4
	ld.a	%a15, [%a15]0
.LVL42:
	lea	%a4, [%a2] 1
.LVL43:
	ld.bu	%d15, [%a15]0
	st.b	[%a2]0, %d15
.L26:
	.loc 1 243 0
	lea	%a15, [%a5] 4
	ld.a	%a5, [%a5]0
.LVL44:
	lea	%a2, [%a4] 1
.LVL45:
	ld.bu	%d15, [%a5]0
	st.b	[%a4]0, %d15
.L24:
.LVL46:
	.loc 1 244 0
	ld.a	%a4, [%a15]0
	.loc 1 245 0
	add	%d2, -1
.LVL47:
	.loc 1 244 0
	add.a	%a15, 4
.LVL48:
	ld.bu	%d15, [%a4]0
	st.b	[%a2]0, %d15
	add.a	%a2, 1
.LVL49:
	.loc 1 245 0
	jnz	%d2, .L23
	.loc 1 248 0
	movh.a	%a15, hi:SPY_u16PreTrigSmplIdx
.LVL50:
	ld.hu	%d15, [%a15] lo:SPY_u16PreTrigSmplIdx
.LVL51:
	.loc 1 249 0
	ge.u	%d2, %d15, 200
.LVL52:
	jnz	%d2, .L33
	.loc 1 251 0
	add	%d15, 1
.LVL53:
	st.h	[%a15] lo:SPY_u16PreTrigSmplIdx, %d15
.LVL54:
.L33:
	.loc 1 254 0
	movh.a	%a15, hi:SPY_u16RmngSmplIdx
	ld.hu	%d15, [%a15] lo:SPY_u16RmngSmplIdx
.LVL55:
	.loc 1 255 0
	ge.u	%d2, %d15, 200
	jnz	%d2, .L18
	.loc 1 257 0
	add	%d15, 1
.LVL56:
	.loc 1 258 0
	ne	%d2, %d15, 200
	jnz	%d2, .L34
	.loc 1 261 0
	mov	%d2, 0
	.loc 1 260 0
	movh.a	%a2, hi:SPY_u16TrigSmplIdx
.LVL57:
	.loc 1 261 0
	st.h	[%a3] lo:SPY_u16SmplIdx, %d2
	.loc 1 262 0
	mov	%d2, 1
	.loc 1 260 0
	st.h	[%a2] lo:SPY_u16TrigSmplIdx, %d3
	.loc 1 262 0
	st.b	[%a6] lo:SPY_bBufFull, %d2
.L34:
	.loc 1 265 0
	st.h	[%a15] lo:SPY_u16RmngSmplIdx, %d15
.LVL58:
.L18:
	ret
.LVL59:
.L35:
	mov	%d3, 1
	.loc 1 225 0
	mov	%d2, 0
.LVL60:
	j	.L22
.LVL61:
.L39:
	.loc 1 235 0
	movh.a	%a4, hi:.L25
	lea	%a4, [%a4] lo:.L25
	addsc.a	%a4, %a4, %d15, 2
	ji	%a4
	.align 2
	.align 2
.L25:
	.code32
	j	.L24
	.code32
	j	.L36
	.code32
	j	.L27
	.code32
	j	.L37
	.code32
	j	.L29
	.code32
	j	.L38
	.code32
	j	.L31
.L37:
	.loc 1 229 0
	mov.aa	%a5, %a15
	.loc 1 228 0
	mov.a	%a4, %d5
	j	.L28
.L36:
	.loc 1 229 0
	mov.aa	%a5, %a15
	.loc 1 228 0
	mov.a	%a4, %d5
	j	.L26
.L38:
	.loc 1 229 0
	mov.aa	%a5, %a15
	.loc 1 228 0
	mov.a	%a4, %d5
	j	.L30
.LFE4:
	.size	SPY_vidWrBuf, .-SPY_vidWrBuf
.section .text.SPY_vidStopDataAcq,"ax",@progbits
	.align 1
	.global	SPY_vidStopDataAcq
	.type	SPY_vidStopDataAcq, @function
SPY_vidStopDataAcq:
.LFB5:
	.loc 1 287 0
	.loc 1 288 0
	movh.a	%a15, hi:SPY_bBufFull
	ld.bu	%d15, [%a15] lo:SPY_bBufFull
	jnz	%d15, .L40
	.loc 1 289 0
	movh.a	%a15, hi:SPY_u16RmngSmplIdx
	ld.hu	%d2, [%a15] lo:SPY_u16RmngSmplIdx
	lt.u	%d2, %d2, 200
	jnz	%d2, .L40
	.loc 1 290 0
	movh.a	%a2, hi:SPY_u16PreTrigSmplIdx
	ld.hu	%d2, [%a2] lo:SPY_u16PreTrigSmplIdx
	lt.u	%d2, %d2, 200
	jnz	%d2, .L40
	.loc 1 292 0
	st.h	[%a15] lo:SPY_u16RmngSmplIdx, %d15
.L40:
	ret
.LFE5:
	.size	SPY_vidStopDataAcq, .-SPY_vidStopDataAcq
.section .text.SPY_bPreTrigBufFilled,"ax",@progbits
	.align 1
	.global	SPY_bPreTrigBufFilled
	.type	SPY_bPreTrigBufFilled, @function
SPY_bPreTrigBufFilled:
.LFB6:
	.loc 1 311 0
.LVL62:
	.loc 1 316 0
	movh.a	%a15, hi:SPY_bBufFull
	ld.bu	%d15, [%a15] lo:SPY_bBufFull
	.loc 1 315 0
	mov	%d2, 0
	.loc 1 316 0
	jnz	%d15, .L43
	.loc 1 317 0
	movh.a	%a15, hi:SPY_u16PreTrigSmplIdx
	ld.hu	%d2, [%a15] lo:SPY_u16PreTrigSmplIdx
	.loc 1 315 0
	ge.u	%d2, %d2, 200
.L43:
.LVL63:
	.loc 1 322 0
	ret
.LFE6:
	.size	SPY_bPreTrigBufFilled, .-SPY_bPreTrigBufFilled
	.global	SPY_ppu8DaqListElmAdr
.section .bss.a4.SPY_ppu8DaqListElmAdr,"aw",@nobits
	.align 2
	.type	SPY_ppu8DaqListElmAdr, @object
	.size	SPY_ppu8DaqListElmAdr, 4
SPY_ppu8DaqListElmAdr:
	.zero	4
	.global	SPY_au8Smpls
.section .bss.a1.SPY_au8Smpls,"aw",@nobits
	.type	SPY_au8Smpls, @object
	.size	SPY_au8Smpls, 33600
SPY_au8Smpls:
	.zero	33600
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
	.file 3 "bswcdd\\CCP\\SPY\\SPY_L.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x6a3
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCP\\SPY\\spy_daq.c"
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
	.uaword	0x1c3
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
	.uaword	0x1ef
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
	.uaword	0x1c3
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
	.byte	0x2
	.byte	0x94
	.uaword	0x275
	.uleb128 0x4
	.byte	0x1
	.string	"SPY_vidInit"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.string	"SPY_vidDaqListTxInit"
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
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0x64
	.uaword	0x1b6
	.byte	0x1
	.byte	0x54
	.uleb128 0x7
	.string	"ppu8DaqListElmAdr"
	.byte	0x1
	.byte	0x64
	.uaword	0x334
	.uaword	.LLST0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x1
	.byte	0x64
	.uaword	0x1e1
	.byte	0x1
	.byte	0x55
	.uleb128 0x7
	.string	"u8OdtLstIdx"
	.byte	0x1
	.byte	0x64
	.uaword	0x1b6
	.uaword	.LLST1
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x33a
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1b6
	.uleb128 0x9
	.byte	0x1
	.string	"SPY_bWrOdt"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x40d
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0x7b
	.uaword	0x1b6
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.byte	0x7b
	.uaword	0x1e1
	.uaword	.LLST2
	.uleb128 0x7
	.string	"pu8BufDst"
	.byte	0x1
	.byte	0x7b
	.uaword	0x33a
	.uaword	.LLST3
	.uleb128 0xb
	.string	"bLocWrDone"
	.byte	0x1
	.byte	0x7d
	.uaword	0x25a
	.uaword	.LLST4
	.uleb128 0xb
	.string	"u16LocTrigSmplIdx"
	.byte	0x1
	.byte	0x7e
	.uaword	0x28a
	.uaword	.LLST5
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x7f
	.uaword	0x28a
	.uaword	.LLST6
	.uleb128 0xb
	.string	"u16LocElmAdrIdx"
	.byte	0x1
	.byte	0x80
	.uaword	0x28a
	.uaword	.LLST7
	.uleb128 0xb
	.string	"pu8LocalBufSrc"
	.byte	0x1
	.byte	0x81
	.uaword	0x33a
	.uaword	.LLST8
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"SPY_vidDaqListStopd"
	.byte	0x1
	.byte	0xb9
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x444
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0xb9
	.uaword	0x1b6
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"SPY_vidWrBuf"
	.byte	0x1
	.byte	0xcf
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x508
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0xd1
	.uaword	0x28a
	.uaword	.LLST9
	.uleb128 0xb
	.string	"u16LocIdx"
	.byte	0x1
	.byte	0xd2
	.uaword	0x28a
	.uaword	.LLST10
	.uleb128 0xb
	.string	"u16LocPreTrigSmplIdx"
	.byte	0x1
	.byte	0xd3
	.uaword	0x28a
	.uaword	.LLST11
	.uleb128 0xb
	.string	"u16LocRmngSmplIdx"
	.byte	0x1
	.byte	0xd4
	.uaword	0x28a
	.uaword	.LLST12
	.uleb128 0xb
	.string	"u16LocNrOfElms"
	.byte	0x1
	.byte	0xd5
	.uaword	0x28a
	.uaword	.LLST13
	.uleb128 0xb
	.string	"pu8Dest"
	.byte	0x1
	.byte	0xd6
	.uaword	0x33a
	.uaword	.LLST14
	.uleb128 0xb
	.string	"ppu8Src"
	.byte	0x1
	.byte	0xd7
	.uaword	0x334
	.uaword	.LLST15
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"SPY_vidStopDataAcq"
	.byte	0x1
	.uahalf	0x11e
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"SPY_bPreTrigBufFilled"
	.byte	0x1
	.uahalf	0x136
	.byte	0x1
	.uaword	0x25a
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x57f
	.uleb128 0xf
	.string	"bLocPreTrigBufFilled"
	.byte	0x1
	.uahalf	0x138
	.uaword	0x25a
	.uaword	.LLST16
	.byte	0
	.uleb128 0x10
	.string	"SPY_bBufFull"
	.byte	0x3
	.byte	0x3b
	.uaword	0x25a
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"SPY_u16DaqListFirstElmIdx"
	.byte	0x3
	.byte	0x3c
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"SPY_u16NrOfElmsToTx"
	.byte	0x3
	.byte	0x3d
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"SPY_u16PreTrigSmplIdx"
	.byte	0x3
	.byte	0x3e
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"SPY_u16RmngSmplIdx"
	.byte	0x3
	.byte	0x3f
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"SPY_u16SmplIdx"
	.byte	0x3
	.byte	0x40
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.string	"SPY_u16TrigSmplIdx"
	.byte	0x3
	.byte	0x41
	.uaword	0x1e1
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0x1b6
	.uaword	0x65b
	.uleb128 0x12
	.uaword	0x65b
	.uahalf	0x18f
	.uleb128 0x13
	.uaword	0x65b
	.byte	0x53
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x14
	.string	"SPY_au8Smpls"
	.byte	0x1
	.byte	0x31
	.uaword	0x644
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SPY_au8Smpls
	.uleb128 0x14
	.string	"SPY_ppu8DaqListElmAdr"
	.byte	0x1
	.byte	0x32
	.uaword	0x334
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SPY_ppu8DaqListElmAdr
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
	.uleb128 0x7
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
	.uleb128 0xd
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL1
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x84
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x84
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x84
	.sleb128 5
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE2
	.uahalf	0x3
	.byte	0x84
	.sleb128 6
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL5
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LFE2
	.uahalf	0x3
	.byte	0x75
	.sleb128 -7
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x3
	.byte	0x8f
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x8f
	.sleb128 5
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x3
	.byte	0x8f
	.sleb128 6
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL18
	.uahalf	0xf
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x54
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	SPY_au8Smpls-1
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0xf
	.byte	0x7f
	.sleb128 -1
	.byte	0x8
	.byte	0x54
	.byte	0x1e
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x3
	.uaword	SPY_au8Smpls-1
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL30
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL61
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x7
	.byte	0x7f
	.sleb128 -1
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL55
	.uaword	.LVL58
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x3
	.byte	0x72
	.sleb128 -7
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL61
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL35
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL46
	.uaword	.LVL49
	.uahalf	0x3
	.byte	0x82
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL61
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x85
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x3
	.byte	0x85
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x3
	.byte	0x85
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x8f
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL61
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LFE6
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"u8ListIdx"
.LASF1:
	.string	"u16FirstElmIdx"
.LASF2:
	.string	"u16LocSmplIdx"
	.extern	SPY_bBufFull,STT_OBJECT,1
	.extern	SPY_u16TrigSmplIdx,STT_OBJECT,2
	.extern	SPY_u16RmngSmplIdx,STT_OBJECT,2
	.extern	SPY_u16PreTrigSmplIdx,STT_OBJECT,2
	.extern	SPY_u16SmplIdx,STT_OBJECT,2
	.extern	SPY_u16DaqListFirstElmIdx,STT_OBJECT,2
	.extern	SPY_u16NrOfElmsToTx,STT_OBJECT,2
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
