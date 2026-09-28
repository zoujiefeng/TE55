	.file	"MAIN_CalibData.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.MAIN_CAL_vidCalibDataMng,"ax",@progbits
	.align 1
	.global	MAIN_CAL_vidCalibDataMng
	.type	MAIN_CAL_vidCalibDataMng, @function
MAIN_CAL_vidCalibDataMng:
.LFB254:
	.file 1 "main\\_MainModule\\CalibData\\MAIN_CalibData.c"
	.loc 1 118 0
.LBB10:
.LBB11:
	.loc 1 253 0
	movh.a	%a15, hi:MAIN_bRcGainStaoreEna
	ld.bu	%d15, [%a15] lo:MAIN_bRcGainStaoreEna
.LBE11:
.LBE10:
	.loc 1 118 0
	sub.a	%SP, 8
.LCFI0:
.LBB14:
.LBB12:
	.loc 1 253 0
	jeq	%d15, 1, .L16
.L2:
.LBE12:
.LBE14:
.LBB15:
.LBB16:
	.loc 1 184 0
	mov	%d15, 0
	.loc 1 189 0
	movh.a	%a15, hi:MAIN_u8CalibStoreState
	.loc 1 184 0
	st.b	[%SP] 7, %d15
.LVL0:
	.loc 1 189 0
	ld.bu	%d15, [%a15] lo:MAIN_u8CalibStoreState
	jlt.u	%d15, 6, .L17
.L3:
	.loc 1 243 0
	mov	%d15, 1
	st.b	[%a15] lo:MAIN_u8CalibStoreState, %d15
.LVL1:
.L11:
.LBE16:
.LBE15:
	.loc 1 120 0
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_bCalibStoreResult
	st.b	[%a15] lo:MAIN_bCalibStoreResult, %d15
	ret
.LVL2:
.L17:
.LBB22:
.LBB17:
	.loc 1 189 0
	movh.a	%a2, hi:.L5
	lea	%a2, [%a2] lo:.L5
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L5:
	.code32
	j	.L3
	.code32
	j	.L6
	.code32
	j	.L7
	.code32
	j	.L8
	.code32
	j	.L9
	.code32
	j	.L10
.L6:
	.loc 1 198 0
	movh.a	%a2, hi:MAIN_bCalibStoreEna
	ld.bu	%d15, [%a2] lo:MAIN_bCalibStoreEna
	jne	%d15, 1, .L11
.L7:
	.loc 1 206 0
	mov	%d15, 3
	st.b	[%a15] lo:MAIN_u8CalibStoreState, %d15
.LBE17:
.LBE22:
	.loc 1 120 0
	mov	%d15, 0
	movh.a	%a15, hi:MAIN_bCalibStoreResult
	st.b	[%a15] lo:MAIN_bCalibStoreResult, %d15
	ret
.L8:
.LBB23:
.LBB18:
	.loc 1 211 0
	mov	%d4, 1
	call	DFM_bEraseBlock
.LVL3:
	.loc 1 212 0
	jne	%d2, 1, .L11
	.loc 1 214 0
	mov	%d15, 4
	st.b	[%a15] lo:MAIN_u8CalibStoreState, %d15
	j	.L11
.LVL4:
.L9:
	.loc 1 220 0
	mov	%d4, 1
	lea	%a4, [%SP] 7
	call	DFM_bWriteBlock
.LVL5:
	.loc 1 221 0
	jne	%d2, 1, .L11
	.loc 1 223 0
	mov	%d15, 5
	st.b	[%a15] lo:MAIN_u8CalibStoreState, %d15
	j	.L11
.LVL6:
.L10:
	.loc 1 229 0
	movh.a	%a2, hi:u8CalibStoreEndDelay.23541
	ld.bu	%d15, [%a2] lo:u8CalibStoreEndDelay.23541
	jge.u	%d15, 4, .L13
	.loc 1 231 0
	add	%d15, 1
	st.b	[%a2] lo:u8CalibStoreEndDelay.23541, %d15
	j	.L11
.LVL7:
.L16:
.LBE18:
.LBE23:
.LBB24:
.LBB13:
	.loc 1 255 0
	mov	%d15, 0
	.loc 1 256 0
	mov	%d4, 37
	mov	%d5, 1
	.loc 1 255 0
	st.b	[%a15] lo:MAIN_bRcGainStaoreEna, %d15
	.loc 1 256 0
	call	NvM_SetRamBlockStatus
.LVL8:
	.loc 1 257 0
	mov	%d4, 37
	mov.a	%a4, 0
	call	NvM_WriteBlock
.LVL9:
	j	.L2
.LVL10:
.L13:
.LBE13:
.LBE24:
.LBB25:
.LBB19:
	.loc 1 236 0
	mov	%d2, 1
	st.b	[%a15] lo:MAIN_u8CalibStoreState, %d2
.LVL11:
.LBE19:
.LBE25:
	.loc 1 120 0
	movh.a	%a15, hi:MAIN_bCalibStoreResult
.LBB26:
.LBB20:
	.loc 1 235 0
	mov	%d15, 0
.LBE20:
.LBE26:
	.loc 1 120 0
	st.b	[%a15] lo:MAIN_bCalibStoreResult, %d2
.LVL12:
.LBB27:
.LBB28:
	.loc 1 129 0
	movh.a	%a15, hi:MAIN_bCalibStoreEna
.LBE28:
.LBE27:
.LBB30:
.LBB21:
	.loc 1 235 0
	st.b	[%a2] lo:u8CalibStoreEndDelay.23541, %d15
.LBE21:
.LBE30:
.LBB31:
.LBB29:
	.loc 1 129 0
	st.b	[%a15] lo:MAIN_bCalibStoreEna, %d15
	ret
.LBE29:
.LBE31:
.LFE254:
	.size	MAIN_CAL_vidCalibDataMng, .-MAIN_CAL_vidCalibDataMng
.section .text.MAIN_CAL_vidSetCalibDataStoreReq,"ax",@progbits
	.align 1
	.global	MAIN_CAL_vidSetCalibDataStoreReq
	.type	MAIN_CAL_vidSetCalibDataStoreReq, @function
MAIN_CAL_vidSetCalibDataStoreReq:
.LFB255:
	.loc 1 128 0
.LVL13:
	.loc 1 129 0
	movh.a	%a15, hi:MAIN_bCalibStoreEna
	st.b	[%a15] lo:MAIN_bCalibStoreEna, %d4
	.loc 1 130 0
	jeq	%d4, 1, .L20
	ret
.L20:
	.loc 1 132 0
	movh.a	%a15, hi:MAIN_bRcGainStaoreEna
	st.b	[%a15] lo:MAIN_bRcGainStaoreEna, %d4
	ret
.LFE255:
	.size	MAIN_CAL_vidSetCalibDataStoreReq, .-MAIN_CAL_vidSetCalibDataStoreReq
.section .text.MAIN_CAL_pu16GetCalDataBuf,"ax",@progbits
	.align 1
	.global	MAIN_CAL_pu16GetCalDataBuf
	.type	MAIN_CAL_pu16GetCalDataBuf, @function
MAIN_CAL_pu16GetCalDataBuf:
.LFB256:
	.loc 1 137 0
.LVL14:
	.loc 1 139 0
	movh.a	%a2, hi:MAIN_au16CalibParamNvm
	sh	%d15, %d4, 5
	lea	%a2, [%a2] lo:MAIN_au16CalibParamNvm
	addsc.a	%a2, %a2, %d15, 0
	ret
.LFE256:
	.size	MAIN_CAL_pu16GetCalDataBuf, .-MAIN_CAL_pu16GetCalDataBuf
.section .text.MAIN_CAL_u16GetRcGainData,"ax",@progbits
	.align 1
	.global	MAIN_CAL_u16GetRcGainData
	.type	MAIN_CAL_u16GetRcGainData, @function
MAIN_CAL_u16GetRcGainData:
.LFB257:
	.loc 1 142 0
.LVL15:
	.loc 1 143 0
	movh.a	%a15, hi:RC_au16VoltageGain
	lea	%a15, [%a15] lo:RC_au16VoltageGain
	addsc.a	%a15, %a15, %d4, 1
	.loc 1 144 0
	ld.hu	%d2, [%a15]0
	ret
.LFE257:
	.size	MAIN_CAL_u16GetRcGainData, .-MAIN_CAL_u16GetRcGainData
.section .text.MAIN_CAL_vidCheckAllCalibData,"ax",@progbits
	.align 1
	.global	MAIN_CAL_vidCheckAllCalibData
	.type	MAIN_CAL_vidCheckAllCalibData, @function
MAIN_CAL_vidCheckAllCalibData:
.LFB258:
	.loc 1 147 0
.LVL16:
	.loc 1 158 0
	movh.a	%a15, hi:RC_au16VoltageGain
	ld.hu	%d15, [%a15] lo:RC_au16VoltageGain
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L24
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L58
.L25:
.LVL17:
	.loc 1 158 0
	lea	%a15, [%a15] lo:RC_au16VoltageGain
	ld.hu	%d15, [%a15] 2
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L26
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L59
.L27:
.LVL18:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 4
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L28
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L60
.L29:
.LVL19:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 6
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L30
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L61
.L31:
.LVL20:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 8
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L32
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L62
.L33:
.LVL21:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 10
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L34
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L63
.L35:
.LVL22:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 12
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L36
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L64
.L37:
.LVL23:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 14
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L38
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L65
.L39:
.LVL24:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 16
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L40
.L75:
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L66
.L41:
.LVL25:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 18
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L42
.L76:
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L67
.L43:
.LVL26:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 20
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L44
.L77:
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L68
.L45:
.LVL27:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 22
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L46
.L78:
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L69
.L47:
.LVL28:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 24
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L48
.L79:
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L70
.L49:
.LVL29:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 26
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L50
.L80:
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L71
.L51:
.LVL30:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 28
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L52
.L81:
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L72
.L53:
.LVL31:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 30
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L54
	.loc 1 162 0
	mov	%d2, 11001
	jge.u	%d15, %d2, .L73
.L55:
.LVL32:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 32
	mov	%d2, 9000
	jge.u	%d15, %d2, .L56
.L74:
	.loc 1 160 0
	st.h	[%a15] 32, %d2
	ret
.LVL33:
.L54:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 32
	.loc 1 160 0
	st.h	[%a15] 30, %d2
.LVL34:
	.loc 1 158 0
	mov	%d2, 9000
	jlt.u	%d15, %d2, .L74
.L56:
	.loc 1 162 0
	mov	%d2, 11001
	jlt.u	%d15, %d2, .L23
	.loc 1 164 0
	mov	%d15, 11000
	st.h	[%a15] 32, %d15
.LVL35:
.L23:
	ret
.LVL36:
.L38:
	.loc 1 158 0
	ld.hu	%d15, [%a15] 16
	.loc 1 160 0
	st.h	[%a15] 14, %d2
.LVL37:
	.loc 1 158 0
	mov	%d2, 9000
	jge.u	%d15, %d2, .L75
.L40:
	ld.hu	%d15, [%a15] 18
	.loc 1 160 0
	st.h	[%a15] 16, %d2
.LVL38:
	.loc 1 158 0
	mov	%d2, 9000
	jge.u	%d15, %d2, .L76
.L42:
	ld.hu	%d15, [%a15] 20
	.loc 1 160 0
	st.h	[%a15] 18, %d2
.LVL39:
	.loc 1 158 0
	mov	%d2, 9000
	jge.u	%d15, %d2, .L77
.L44:
	ld.hu	%d15, [%a15] 22
	.loc 1 160 0
	st.h	[%a15] 20, %d2
.LVL40:
	.loc 1 158 0
	mov	%d2, 9000
	jge.u	%d15, %d2, .L78
.L46:
	ld.hu	%d15, [%a15] 24
	.loc 1 160 0
	st.h	[%a15] 22, %d2
.LVL41:
	.loc 1 158 0
	mov	%d2, 9000
	jge.u	%d15, %d2, .L79
.L48:
	ld.hu	%d15, [%a15] 26
	.loc 1 160 0
	st.h	[%a15] 24, %d2
.LVL42:
	.loc 1 158 0
	mov	%d2, 9000
	jge.u	%d15, %d2, .L80
.L50:
	ld.hu	%d15, [%a15] 28
	.loc 1 160 0
	st.h	[%a15] 26, %d2
.LVL43:
	.loc 1 158 0
	mov	%d2, 9000
	jge.u	%d15, %d2, .L81
.L52:
	.loc 1 160 0
	st.h	[%a15] 28, %d2
	j	.L53
.LVL44:
.L36:
	st.h	[%a15] 12, %d2
	j	.L37
.LVL45:
.L34:
	st.h	[%a15] 10, %d2
	j	.L35
.LVL46:
.L32:
	st.h	[%a15] 8, %d2
	j	.L33
.LVL47:
.L30:
	st.h	[%a15] 6, %d2
	j	.L31
.LVL48:
.L28:
	st.h	[%a15] 4, %d2
	j	.L29
.LVL49:
.L26:
	st.h	[%a15] 2, %d2
	j	.L27
.LVL50:
.L24:
	st.h	[%a15] lo:RC_au16VoltageGain, %d2
	j	.L25
.LVL51:
.L73:
	.loc 1 164 0
	mov	%d15, 11000
	st.h	[%a15] 30, %d15
	j	.L55
.LVL52:
.L72:
	mov	%d15, 11000
	st.h	[%a15] 28, %d15
	j	.L53
.LVL53:
.L71:
	mov	%d15, 11000
	st.h	[%a15] 26, %d15
	j	.L51
.LVL54:
.L70:
	mov	%d15, 11000
	st.h	[%a15] 24, %d15
	j	.L49
.LVL55:
.L69:
	mov	%d15, 11000
	st.h	[%a15] 22, %d15
	j	.L47
.LVL56:
.L68:
	mov	%d15, 11000
	st.h	[%a15] 20, %d15
	j	.L45
.LVL57:
.L67:
	mov	%d15, 11000
	st.h	[%a15] 18, %d15
	j	.L43
.LVL58:
.L66:
	mov	%d15, 11000
	st.h	[%a15] 16, %d15
	j	.L41
.LVL59:
.L65:
	mov	%d15, 11000
	st.h	[%a15] 14, %d15
	j	.L39
.LVL60:
.L64:
	mov	%d15, 11000
	st.h	[%a15] 12, %d15
	j	.L37
.LVL61:
.L63:
	mov	%d15, 11000
	st.h	[%a15] 10, %d15
	j	.L35
.LVL62:
.L62:
	mov	%d15, 11000
	st.h	[%a15] 8, %d15
	j	.L33
.LVL63:
.L61:
	mov	%d15, 11000
	st.h	[%a15] 6, %d15
	j	.L31
.LVL64:
.L60:
	mov	%d15, 11000
	st.h	[%a15] 4, %d15
	j	.L29
.LVL65:
.L59:
	mov	%d15, 11000
	st.h	[%a15] 2, %d15
	j	.L27
.LVL66:
.L58:
	mov	%d15, 11000
	st.h	[%a15] lo:RC_au16VoltageGain, %d15
	j	.L25
.LFE258:
	.size	MAIN_CAL_vidCheckAllCalibData, .-MAIN_CAL_vidCheckAllCalibData
.section .bss.a1.u8CalibStoreEndDelay.23541,"aw",@nobits
	.type	u8CalibStoreEndDelay.23541, @object
	.size	u8CalibStoreEndDelay.23541, 1
u8CalibStoreEndDelay.23541:
	.zero	1
	.global	RC_kau16VoltageGain
.section .rodata.a2.RC_kau16VoltageGain,"a",@progbits
	.align 1
	.type	RC_kau16VoltageGain, @object
	.size	RC_kau16VoltageGain, 50
RC_kau16VoltageGain:
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.short	10000
	.global	RC_au16VoltageGain
.section .bss.a2.RC_au16VoltageGain,"aw",@nobits
	.align 1
	.type	RC_au16VoltageGain, @object
	.size	RC_au16VoltageGain, 50
RC_au16VoltageGain:
	.zero	50
	.global	MAIN_au16CalibParamNvm
.section .bss.a2.MAIN_au16CalibParamNvm,"aw",@nobits
	.align 1
	.type	MAIN_au16CalibParamNvm, @object
	.size	MAIN_au16CalibParamNvm, 128
MAIN_au16CalibParamNvm:
	.zero	128
.section .bss.a1.MAIN_bCalibStoreResult,"aw",@nobits
	.type	MAIN_bCalibStoreResult, @object
	.size	MAIN_bCalibStoreResult, 1
MAIN_bCalibStoreResult:
	.zero	1
.section .bss.a1.MAIN_bRcGainStaoreEna,"aw",@nobits
	.type	MAIN_bRcGainStaoreEna, @object
	.size	MAIN_bRcGainStaoreEna, 1
MAIN_bRcGainStaoreEna:
	.zero	1
.section .bss.a1.MAIN_bCalibStoreEna,"aw",@nobits
	.type	MAIN_bCalibStoreEna, @object
	.size	MAIN_bCalibStoreEna, 1
MAIN_bCalibStoreEna:
	.zero	1
.section .bss.a1.MAIN_u8CalibStoreState,"aw",@nobits
	.type	MAIN_u8CalibStoreState, @object
	.size	MAIN_u8CalibStoreState, 1
MAIN_u8CalibStoreState:
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
	.uaword	.LFB254
	.uaword	.LFE254-.LFB254
	.byte	0x4
	.uaword	.LCFI0-.LFB254
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB257
	.uaword	.LFE257-.LFB257
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 6 ".\\output\\inc/..\\..\\bswcdd\\DFM\\DFM_Cfg.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 10 ".\\output\\inc/..\\..\\rte\\Rte_ASW_NVM.h"
	.file 11 ".\\output\\inc/..\\..\\bswcdd\\DFM\\DFM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x106e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"main\\_MainModule\\CalibData\\MAIN_CalibData.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x70
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
	.uaword	0x1ba
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1cb
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x20d
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1e1
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
	.uaword	0x1ba
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
	.uaword	0x220
	.uleb128 0x4
	.byte	0x4
	.uaword	0x220
	.uleb128 0x5
	.uaword	0x220
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2ec
	.uleb128 0x6
	.uleb128 0x5
	.uaword	0x2db
	.uleb128 0x4
	.byte	0x4
	.uaword	0x22d
	.uleb128 0x7
	.string	"NvM_BlockIdType"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x22d
	.uleb128 0x7
	.string	"NvM_Rb_ConstVoidPtr"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x2e6
	.uleb128 0x8
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x15
	.uaword	0x3e7
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.byte	0x5
	.byte	0x1f
	.uaword	0x45f
	.uleb128 0x9
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0x9
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0x9
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0x9
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0x9
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0x8
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x27
	.uaword	0x69c
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0x9
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0x8
	.string	"DFM_BLOCK_INDEX"
	.byte	0x1
	.byte	0x6
	.byte	0x50
	.uaword	0x81e
	.uleb128 0x9
	.string	"DFM_OC_TRIM_BLOCK"
	.sleb128 0
	.uleb128 0x9
	.string	"DFM_CUR_CAL_BLOCK"
	.sleb128 1
	.uleb128 0x9
	.string	"DFM_FRECORD_START_INDEX"
	.sleb128 2
	.uleb128 0x9
	.string	"DFM_MGTCU_FRECORD_A_BLOCK"
	.sleb128 2
	.uleb128 0x9
	.string	"DFM_MGTCU_FRECORD_B_BLOCK"
	.sleb128 3
	.uleb128 0x9
	.string	"DFM_MGTCU_FRECORD_C_BLOCK"
	.sleb128 4
	.uleb128 0x9
	.string	"DFM_MGTCU_FRECORD_D_BLOCK"
	.sleb128 5
	.uleb128 0x9
	.string	"DFM_MGTCU_FRECORD_E_BLOCK"
	.sleb128 6
	.uleb128 0x9
	.string	"DFM_MGTCU_FRECORD_F_BLOCK"
	.sleb128 7
	.uleb128 0x9
	.string	"DFM_MGTCU_FRECORD_G_BLOCK"
	.sleb128 8
	.uleb128 0x9
	.string	"DFM_MGTCU_FRECORD_H_BLOCK"
	.sleb128 9
	.uleb128 0x9
	.string	"DFM_MGTCU_FRECORD_I_BLOCK"
	.sleb128 10
	.uleb128 0x9
	.string	"DFM_FRECORD_END_INDEX"
	.sleb128 11
	.uleb128 0x9
	.string	"DFM_MAX_BLOCK_NO"
	.sleb128 11
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x82c
	.uleb128 0xb
	.uleb128 0xc
	.byte	0x8
	.byte	0x7
	.byte	0x8c
	.uaword	0x857
	.uleb128 0xd
	.string	"module"
	.byte	0x7
	.byte	0x8e
	.uaword	0x826
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"index"
	.byte	0x7
	.byte	0x8f
	.uaword	0x23b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x7
	.byte	0x90
	.uaword	0x82d
	.uleb128 0xa
	.byte	0x1
	.byte	0x8
	.byte	0x88
	.uaword	0x8d2
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
	.uleb128 0xe
	.byte	0x1
	.byte	0x9
	.uahalf	0x160
	.uaword	0x9db
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
	.uleb128 0x8
	.string	"eCalibStoreState"
	.byte	0x1
	.byte	0x1
	.byte	0x21
	.uaword	0xa86
	.uleb128 0x9
	.string	"MAIN_CALIB_STORE_INIT"
	.sleb128 0
	.uleb128 0x9
	.string	"MAIN_CALIB_STORE_IDLE"
	.sleb128 1
	.uleb128 0x9
	.string	"MAIN_CALIB_STORE_COPY"
	.sleb128 2
	.uleb128 0x9
	.string	"MAIN_CALIB_STORE_ERASE"
	.sleb128 3
	.uleb128 0x9
	.string	"MAIN_CALIB_STORE_WRITE"
	.sleb128 4
	.uleb128 0x9
	.string	"MAIN_CALIB_STORE_END"
	.sleb128 5
	.byte	0
	.uleb128 0xf
	.uaword	.LASF2
	.byte	0x6
	.byte	0x1
	.byte	0x2a
	.uaword	0xac7
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x1
	.byte	0x2b
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0x2c
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"u16DefaultVal"
	.byte	0x1
	.byte	0x2d
	.uaword	0x22d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x11
	.uaword	.LASF2
	.byte	0x1
	.byte	0x2e
	.uaword	0xa86
	.uleb128 0x12
	.byte	0x1
	.string	"MAIN_CAL_vidSetCalibDataStoreReq"
	.byte	0x1
	.byte	0x7f
	.byte	0x1
	.byte	0x1
	.uaword	0xb0f
	.uleb128 0x13
	.string	"bStoreReq"
	.byte	0x1
	.byte	0x7f
	.uaword	0x295
	.byte	0
	.uleb128 0x14
	.string	"MAIN_CAL_vidRcGainStore"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.byte	0x1
	.uleb128 0x15
	.string	"MAIN_CAL_bCalibDataStore"
	.byte	0x1
	.byte	0xb5
	.byte	0x1
	.uaword	0x295
	.byte	0x1
	.uaword	0xba5
	.uleb128 0x16
	.string	"u8CalibStoreEndDelay"
	.byte	0x1
	.byte	0xb7
	.uaword	0x220
	.uleb128 0x16
	.string	"u8ErrCode"
	.byte	0x1
	.byte	0xb8
	.uaword	0x220
	.uleb128 0x16
	.string	"bOpResult"
	.byte	0x1
	.byte	0xba
	.uaword	0x295
	.uleb128 0x16
	.string	"bStoreResult"
	.byte	0x1
	.byte	0xbb
	.uaword	0x295
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"MAIN_CAL_vidCalibDataMng"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	.LFB254
	.uaword	.LFE254
	.uaword	.LLST0
	.byte	0x1
	.uaword	0xc94
	.uleb128 0x18
	.uaword	0xb0f
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x77
	.uaword	0xc16
	.uleb128 0x19
	.uaword	.LVL8
	.uaword	0xfd1
	.uaword	0xc00
	.uleb128 0x1a
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x25
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL9
	.uaword	0x1000
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0xb2c
	.uaword	.LBB15
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x78
	.uaword	0xc7d
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x1d
	.uaword	0xb6e
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1e
	.uaword	0xb7f
	.uaword	.LLST1
	.uleb128 0x1e
	.uaword	0xb90
	.uaword	.LLST2
	.uleb128 0x1d
	.uaword	0xb52
	.byte	0x5
	.byte	0x3
	.uaword	u8CalibStoreEndDelay.23541
	.uleb128 0x19
	.uaword	.LVL3
	.uaword	0x1028
	.uaword	0xc66
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x1b
	.uaword	.LVL5
	.uaword	0x104c
	.uleb128 0x1a
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1a
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0xad2
	.uaword	.LBB27
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.byte	0x7b
	.uleb128 0x20
	.uaword	0xafd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	0xad2
	.uaword	.LFB255
	.uaword	.LFE255
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcb1
	.uleb128 0x22
	.uaword	0xafd
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"MAIN_CAL_pu16GetCalDataBuf"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.uaword	0x2f2
	.uaword	.LFB256
	.uaword	.LFE256
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcf8
	.uleb128 0x24
	.string	"ku8EcuId"
	.byte	0x1
	.byte	0x88
	.uaword	0x2e1
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"MAIN_CAL_u16GetRcGainData"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.uaword	0x22d
	.uaword	.LFB257
	.uaword	.LFE257
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xd3a
	.uleb128 0x24
	.string	"ku8R"
	.byte	0x1
	.byte	0x8d
	.uaword	0x2e1
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x25
	.byte	0x1
	.string	"MAIN_CAL_vidCheckAllCalibData"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.uaword	.LFB258
	.uaword	.LFE258
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xdb2
	.uleb128 0x16
	.string	"u8EcuIndex"
	.byte	0x1
	.byte	0x94
	.uaword	0x220
	.uleb128 0x26
	.string	"u8ParamIndex"
	.byte	0x1
	.byte	0x95
	.uaword	0x220
	.uaword	.LLST3
	.uleb128 0x27
	.uaword	.LASF0
	.byte	0x1
	.byte	0x96
	.uaword	0x22d
	.uahalf	0x2328
	.uleb128 0x27
	.uaword	.LASF1
	.byte	0x1
	.byte	0x97
	.uaword	0x22d
	.uahalf	0x2af8
	.byte	0
	.uleb128 0x28
	.string	"MAIN_u8CalibStoreState"
	.byte	0x1
	.byte	0x3b
	.uaword	0x220
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_u8CalibStoreState
	.uleb128 0x28
	.string	"MAIN_bCalibStoreEna"
	.byte	0x1
	.byte	0x3c
	.uaword	0x295
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bCalibStoreEna
	.uleb128 0x28
	.string	"MAIN_bRcGainStaoreEna"
	.byte	0x1
	.byte	0x3d
	.uaword	0x295
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bRcGainStaoreEna
	.uleb128 0x28
	.string	"MAIN_bCalibStoreResult"
	.byte	0x1
	.byte	0x3e
	.uaword	0x295
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_bCalibStoreResult
	.uleb128 0x29
	.uaword	0xac7
	.uaword	0xe4e
	.uleb128 0x2a
	.uaword	0x214
	.byte	0x18
	.byte	0
	.uleb128 0x2b
	.string	"MAIN_CAL_katRcGainLimitSet"
	.byte	0x1
	.byte	0x43
	.uaword	0xf07
	.byte	0x96
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.byte	0x28
	.byte	0x23
	.byte	0xf8
	.byte	0x2a
	.byte	0x10
	.byte	0x27
	.uleb128 0x5
	.uaword	0xe3e
	.uleb128 0x29
	.uaword	0x22d
	.uaword	0xf1c
	.uleb128 0x2a
	.uaword	0x214
	.byte	0x18
	.byte	0
	.uleb128 0x2c
	.string	"RC_kau16VoltageGain"
	.byte	0x1
	.byte	0x64
	.uaword	0xf3e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RC_kau16VoltageGain
	.uleb128 0x5
	.uaword	0xf0c
	.uleb128 0x29
	.uaword	0x22d
	.uaword	0xf59
	.uleb128 0x2a
	.uaword	0x214
	.byte	0x3
	.uleb128 0x2a
	.uaword	0x214
	.byte	0xf
	.byte	0
	.uleb128 0x2c
	.string	"MAIN_au16CalibParamNvm"
	.byte	0x1
	.byte	0x62
	.uaword	0xf43
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MAIN_au16CalibParamNvm
	.uleb128 0x2c
	.string	"RC_au16VoltageGain"
	.byte	0x1
	.byte	0x63
	.uaword	0xf0c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	RC_au16VoltageGain
	.uleb128 0x29
	.uaword	0x857
	.uaword	0xfaf
	.uleb128 0x2a
	.uaword	0x214
	.byte	0x3
	.byte	0
	.uleb128 0x2d
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x8
	.byte	0xaa
	.uaword	0xfcc
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0xf9f
	.uleb128 0x2e
	.byte	0x1
	.string	"NvM_SetRamBlockStatus"
	.byte	0xa
	.byte	0x84
	.byte	0x1
	.uaword	0x2c5
	.byte	0x1
	.uaword	0x1000
	.uleb128 0x2f
	.uaword	0x2f8
	.uleb128 0x2f
	.uaword	0x295
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"NvM_WriteBlock"
	.byte	0xa
	.byte	0x87
	.byte	0x1
	.uaword	0x2c5
	.byte	0x1
	.uaword	0x1028
	.uleb128 0x2f
	.uaword	0x2f8
	.uleb128 0x2f
	.uaword	0x310
	.byte	0
	.uleb128 0x2e
	.byte	0x1
	.string	"DFM_bEraseBlock"
	.byte	0xb
	.byte	0x36
	.byte	0x1
	.uaword	0x295
	.byte	0x1
	.uaword	0x104c
	.uleb128 0x2f
	.uaword	0x2e1
	.byte	0
	.uleb128 0x30
	.byte	0x1
	.string	"DFM_bWriteBlock"
	.byte	0xb
	.byte	0x37
	.byte	0x1
	.uaword	0x295
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x2e1
	.uleb128 0x2f
	.uaword	0x2ed
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x10
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x11
	.uleb128 0x16
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
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uaword	.LFB254
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE254
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE254
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LFE254
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x40
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x3f
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x3e
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x3d
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x3c
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x3b
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x39
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LFE258
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB254
	.uaword	.LFE254-.LFB254
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.uaword	.LFB257
	.uaword	.LFE257-.LFB257
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	0
	.uaword	0
	.uaword	.LBB15
	.uaword	.LBE15
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB30
	.uaword	.LBE30
	.uaword	0
	.uaword	0
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LFB254
	.uaword	.LFE254
	.uaword	.LFB255
	.uaword	.LFE255
	.uaword	.LFB256
	.uaword	.LFE256
	.uaword	.LFB257
	.uaword	.LFE257
	.uaword	.LFB258
	.uaword	.LFE258
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"u16HighLimit"
.LASF2:
	.string	"MAIN_tCalibDataLimit"
.LASF0:
	.string	"u16LowLimit"
	.extern	NvM_WriteBlock,STT_FUNC,0
	.extern	NvM_SetRamBlockStatus,STT_FUNC,0
	.extern	DFM_bWriteBlock,STT_FUNC,0
	.extern	DFM_bEraseBlock,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
