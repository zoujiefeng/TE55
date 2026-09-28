	.file	"FR_InputSystem.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FR_vidInitInputBufState,"ax",@progbits
	.align 1
	.global	FR_vidInitInputBufState
	.type	FR_vidInitInputBufState, @function
FR_vidInitInputBufState:
.LFB6:
	.file 1 "bswcdd\\FR\\FR_InputSystem.c"
	.loc 1 50 0
.LVL0:
	ld.a	%a2, [%a4] 16
.LVL1:
.LBB38:
.LBB39:
	.loc 1 222 0
	ld.bu	%d15, [%a2]0
	jz	%d15, .L4
	ld.w	%d5, [%a2] 12
	mov	%d15, 0
	.loc 1 231 0
	mov	%d2, 0
.LVL2:
.L3:
	.loc 1 227 0
	and	%d3, %d15, 255
	madd	%d4, %d5, %d3, 16
	add	%d15, 1
.LVL3:
	mov.a	%a15, %d4
.LVL4:
	and	%d4, %d15, 255
.LVL5:
	.loc 1 231 0
	st.w	[%a15] 4, %d2
	.loc 1 232 0
	st.w	[%a15] 8, %d2
	.loc 1 222 0
	ld.bu	%d3, [%a2]0
	jlt.u	%d4, %d3, .L3
.LVL6:
.L4:
	ld.a	%a15, [%a4] 4
.LVL7:
.LBE39:
.LBE38:
.LBB40:
.LBB41:
	.file 2 "bswcdd\\FR\\FR_InputSystem.h"
	.loc 2 121 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
	ld.a	%a15, [%a4] 12
.LVL8:
.LBE41:
.LBE40:
.LBB42:
.LBB43:
	.loc 2 67 0
	st.b	[%a15]0, %d15
	ld.a	%a15, [%a4] 12
.LVL9:
.LBE43:
.LBE42:
.LBB44:
.LBB45:
	.loc 2 49 0
	ld.bu	%d15, [%a15]0
	or	%d15, %d15, 1
	st.b	[%a15]0, %d15
	ret
.LBE45:
.LBE44:
.LFE6:
	.size	FR_vidInitInputBufState, .-FR_vidInitInputBufState
.section .text.FR_vidOpWrapFunc,"ax",@progbits
	.align 1
	.global	FR_vidOpWrapFunc
	.type	FR_vidOpWrapFunc, @function
FR_vidOpWrapFunc:
.LFB7:
	.loc 1 68 0
.LVL10:
	ld.a	%a2, [%a4] 16
.LVL11:
.LBB82:
.LBB83:
	.loc 1 114 0
	ld.bu	%d5, [%a2]0
	jz	%d5, .L8
	.loc 1 116 0
	ld.a	%a15, [%a2] 16
	mov.aa	%a12, %a4
	mov	%d3, 0
	ld.hu	%d15, [%a15] 8
	lea	%a15, [%a15] 16
	jne	%d4, %d15, .L13
	j	.L44
.LVL12:
.L16:
	ld.hu	%d2, [%a15] 8
	lea	%a15, [%a15] 16
	jeq	%d4, %d2, .L45
.LVL13:
.L13:
	add	%d3, 1
.LVL14:
	and	%d15, %d3, 255
.LVL15:
	.loc 1 114 0
	jlt.u	%d15, %d5, .L16
	ret
.L45:
.LVL16:
.LBE83:
.LBE82:
	.loc 1 75 0
	eq	%d2, %d15, 255
	jnz	%d2, .L46
	ld.a	%a15, [%a12] 12
	ld.bu	%d2, [%a15]0
.LVL17:
.L17:
.LBB84:
.LBB85:
	.loc 1 257 0
	jz.t	%d2, 0, .L8
.LVL18:
	.loc 1 268 0
	ld.a	%a15, [%a12] 16
	ld.a	%a15, [%a15] 20
	ld.a	%a15, [%a15] 16
	jz.a	%a15, .L28
	.loc 1 270 0
	calli	%a15
.LVL19:
.LBE85:
.LBE84:
	.loc 1 88 0
	jeq	%d2, 1, .L28
.LVL20:
.L8:
	ret
.LVL21:
.L44:
.LBB86:
.LBB87:
	.loc 1 297 0
	ld.a	%a15, [%a2] 20
	ld.a	%a15, [%a15] 8
	calli	%a15
.LVL22:
	ld.a	%a15, [%a12] 12
	.loc 1 300 0
	jeq	%d2, 1, .L47
.LVL23:
.LBB88:
.LBB89:
	.loc 2 67 0
	ld.bu	%d15, [%a15]0
	andn	%d15, %d15, ~(-3)
	st.b	[%a15]0, %d15
	ld.a	%a15, [%a12] 12
	mov	%d15, 0
	ld.bu	%d2, [%a15]0
.LVL24:
	j	.L17
.LVL25:
.L28:
.LBE89:
.LBE88:
.LBE87:
.LBE86:
.LBB108:
.LBB109:
.LBB110:
.LBB111:
	.loc 2 139 0
	ld.a	%a15, [%a12] 4
.LBE111:
.LBE110:
	.loc 1 351 0
	mov	%d8, 1
	sh	%d8, %d8, %d15
.LBB113:
.LBB112:
	.loc 2 139 0
	ld.bu	%d2, [%a15]0
.LBE112:
.LBE113:
	.loc 1 351 0
	and	%d8, %d8, 255
.LVL26:
	.loc 1 352 0
	and	%d2, %d8
	jnz	%d2, .L8
	.loc 1 355 0
	ld.a	%a2, [%a12] 16
.LVL27:
	.loc 1 361 0
	ld.a	%a13, [%a2] 16
	.loc 1 360 0
	sh	%d15, 4
.LVL28:
	ld.a	%a3, [%a2] 12
	.loc 1 361 0
	addsc.a	%a13, %a13, %d15, 0
	.loc 1 360 0
	addsc.a	%a15, %a3, %d15, 0
.LVL29:
	.loc 1 367 0
	ld.a	%a2, [%a13] 12
.LVL30:
	ld.w	%d4, [%a15] 4
	calli	%a2
.LVL31:
	.loc 1 370 0
	ld.w	%d2, [%a15] 4
	ld.hu	%d15, [%a13] 4
.LBB114:
.LBB115:
	.loc 2 85 0
	ld.a	%a2, [%a12] 12
.LBE115:
.LBE114:
	.loc 1 370 0
	add	%d2, 1
	div.u	%e2, %d2, %d15
.LBB117:
.LBB116:
	.loc 2 85 0
	ld.bu	%d2, [%a2]0
.LBE116:
.LBE117:
	.loc 1 370 0
	mov	%d15, %d3
.LVL32:
	.loc 1 374 0
	jnz.t	%d2, 2, .L48
.L25:
	.loc 1 392 0
	st.w	[%a15] 4, %d15
	ret
.LVL33:
.L47:
.LBE109:
.LBE108:
.LBB121:
.LBB106:
.LBB90:
.LBB91:
	.loc 2 85 0
	ld.bu	%d2, [%a15]0
.LVL34:
.LBE91:
.LBE90:
	.loc 1 304 0
	mov	%d15, 0
	and	%d3, %d2, 3
	jne	%d3, 1, .L17
.LVL35:
.LBB92:
.LBB93:
	.loc 2 49 0
	or	%d2, %d2, 2
	st.b	[%a15]0, %d2
.LVL36:
	ld.a	%a2, [%a12] 12
.LVL37:
.LBE93:
.LBE92:
.LBB94:
.LBB95:
	.loc 2 85 0
	ld.bu	%d2, [%a2]0
.LBE95:
.LBE94:
	.loc 1 311 0
	and	%d3, %d2, 132
	jnz	%d3, .L17
.LVL38:
.LBB96:
.LBB97:
	.loc 1 167 0
	ld.a	%a15, [%a12] 16
	ld.bu	%d15, [%a15]0
	jz	%d15, .L19
	mov	%d4, 0
	j	.L23
.LVL39:
.L50:
	ld.a	%a15, [%a12] 4
.LVL40:
	.loc 1 185 0
	addi	%d2, %d5, 1
.LBB98:
.LBB99:
	.loc 2 103 0
	ld.bu	%d15, [%a15]0
.LVL41:
	insert	%d3, %d15, 1, %d3, 1
	st.b	[%a15]0, %d3
.LVL42:
.LBE99:
.LBE98:
	.loc 1 185 0
	ld.hu	%d3, [%a2] 4
	ld.a	%a15, [%a12] 16
	div.u	%e2, %d2, %d3
.LVL43:
.LBB100:
.LBB101:
	.loc 1 140 0
	st.w	[%a3] 8, %d3
.LVL44:
.L21:
	addi	%d2, %d6, 1
.LBE101:
.LBE100:
	.loc 1 167 0
	ld.bu	%d15, [%a15]0
	and	%d2, %d2, 255
	add	%d4, 1
	jge.u	%d2, %d15, .L49
.LVL45:
.L23:
	.loc 1 169 0
	ld.a	%a3, [%a15] 16
	and	%d3, %d4, 255
	sh	%d15, %d3, 4
	.loc 1 170 0
	ld.a	%a4, [%a15] 12
	.loc 1 169 0
	addsc.a	%a2, %a3, %d15, 0
	.loc 1 176 0
	ld.w	%d2, [%a15] 4
	.loc 1 170 0
	addsc.a	%a3, %a4, %d15, 0
	.loc 1 176 0
	ld.hu	%d15, [%a2] 2
	.loc 1 177 0
	ld.w	%d5, [%a3] 4
	.loc 1 176 0
	itof	%d15, %d15
	and	%d6, %d4, 255
.LVL46:
	mul.f	%d15, %d15, %d2
	.loc 1 180 0
	ld.hu	%d2, [%a2] 4
	.loc 1 176 0
	ftouz	%d15, %d15
.LVL47:
	.loc 1 180 0
	jlt.u	%d2, %d15, .L50
	.loc 1 190 0
	jge.u	%d5, %d15, .L41
	add	%d5, %d2
.LVL48:
.L41:
	.loc 1 198 0
	sub	%d15, %d5, %d15
.LVL49:
	div.u	%e2, %d15, %d2
.LVL50:
.LBB102:
.LBB103:
	.loc 1 140 0
	st.w	[%a3] 8, %d3
	j	.L21
.LVL51:
.L48:
.LBE103:
.LBE102:
.LBE97:
.LBE96:
.LBE106:
.LBE121:
.LBB122:
.LBB120:
	.loc 1 377 0
	ld.w	%d2, [%a15] 8
	jne	%d3, %d2, .L25
.LVL52:
	ld.a	%a15, [%a12] 4
.LVL53:
.LBB118:
.LBB119:
	.loc 2 103 0
	ld.bu	%d15, [%a15]0
	or	%d8, %d15
.LVL54:
	st.b	[%a15]0, %d8
	ret
.LVL55:
.L49:
	ld.a	%a2, [%a12] 12
.LVL56:
	ld.bu	%d2, [%a2]0
.LVL57:
.L19:
.LBE119:
.LBE118:
.LBE120:
.LBE122:
.LBB123:
.LBB107:
.LBB104:
.LBB105:
	.loc 2 49 0
	orn	%d2, %d2, ~(-124)
	st.b	[%a2]0, %d2
.LBE105:
.LBE104:
	.loc 1 315 0
	ld.a	%a15, [%a12] 16
	ld.a	%a15, [%a15] 20
	ld.a	%a4, [%a12] 8
	ld.a	%a15, [%a15] 4
	mov	%d15, 0
	add.a	%a4, 4
	calli	%a15
.LVL58:
	ld.a	%a15, [%a12] 12
	ld.bu	%d2, [%a15]0
	j	.L17
.LVL59:
.L46:
.LBE107:
.LBE123:
	ret
.LFE7:
	.size	FR_vidOpWrapFunc, .-FR_vidOpWrapFunc
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
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 "bswcdd\\FR\\FR_PublicTypes.h"
	.file 5 "bswcdd\\FR\\FR_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x11b5
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\FR\\FR_InputSystem.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x68
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x1e5
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
	.byte	0x3
	.byte	0x5b
	.uaword	0x211
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x6a
	.uaword	0x1b2
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x3
	.byte	0x75
	.uaword	0x1a9
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x3
	.byte	0x80
	.uaword	0x1e5
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.uaword	.LASF0
	.byte	0x8
	.byte	0x4
	.byte	0x14
	.uaword	0x321
	.uleb128 0x5
	.string	"u16Year"
	.byte	0x4
	.byte	0x15
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u8Month"
	.byte	0x4
	.byte	0x16
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"u8Day"
	.byte	0x4
	.byte	0x17
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"u8Hour"
	.byte	0x4
	.byte	0x18
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"u8Minute"
	.byte	0x4
	.byte	0x19
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"u8Second"
	.byte	0x4
	.byte	0x1a
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0x1b
	.uaword	0x2a9
	.uleb128 0x4
	.uaword	.LASF1
	.byte	0x10
	.byte	0x4
	.byte	0x1d
	.uaword	0x385
	.uleb128 0x5
	.string	"tTime"
	.byte	0x4
	.byte	0x1e
	.uaword	0x321
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u32Start2ErrTime_ms"
	.byte	0x4
	.byte	0x1f
	.uaword	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"u32FactoryRunTime_s"
	.byte	0x4
	.byte	0x20
	.uaword	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0x21
	.uaword	0x32c
	.uleb128 0x4
	.uaword	.LASF2
	.byte	0x10
	.byte	0x4
	.byte	0x23
	.uaword	0x3e4
	.uleb128 0x5
	.string	"u32BufAddr"
	.byte	0x4
	.byte	0x24
	.uaword	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u32W"
	.byte	0x4
	.byte	0x25
	.uaword	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"u32R"
	.byte	0x4
	.byte	0x26
	.uaword	0x3e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"u32BufCtr"
	.byte	0x4
	.byte	0x27
	.uaword	0x238
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.uaword	0x238
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.byte	0x28
	.uaword	0x390
	.uleb128 0x4
	.uaword	.LASF3
	.byte	0x10
	.byte	0x4
	.byte	0x2a
	.uaword	0x47e
	.uleb128 0x5
	.string	"u8BufId"
	.byte	0x4
	.byte	0x2b
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u16FPS"
	.byte	0x4
	.byte	0x2c
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"u16EventNum"
	.byte	0x4
	.byte	0x2d
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"u16EventSize"
	.byte	0x4
	.byte	0x2e
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"u16Period_us"
	.byte	0x4
	.byte	0x2f
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"vidGetEvent"
	.byte	0x4
	.byte	0x31
	.uaword	0x48f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.uaword	0x48a
	.uleb128 0x9
	.uaword	0x48a
	.byte	0
	.uleb128 0xa
	.uaword	0x238
	.uleb128 0xb
	.byte	0x4
	.uaword	0x47e
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x4
	.byte	0x32
	.uaword	0x3f4
	.uleb128 0x4
	.uaword	.LASF4
	.byte	0x8
	.byte	0x4
	.byte	0x34
	.uaword	0x500
	.uleb128 0x5
	.string	"pvUserBlockHandle"
	.byte	0x4
	.byte	0x35
	.uaword	0x500
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u16UserBlockSizeByByte"
	.byte	0x4
	.byte	0x36
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"u16HeadSize"
	.byte	0x4
	.byte	0x37
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x4
	.byte	0x38
	.uaword	0x4a0
	.uleb128 0x4
	.uaword	.LASF5
	.byte	0x14
	.byte	0x4
	.byte	0x3a
	.uaword	0x5a1
	.uleb128 0x5
	.string	"vidGetUserHeadInfo"
	.byte	0x4
	.byte	0x3b
	.uaword	0x5bd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"vidGetExtDataOfFixHead"
	.byte	0x4
	.byte	0x3c
	.uaword	0x5da
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x4
	.byte	0x3d
	.uaword	0x5e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bExtStoreCondIsMet"
	.byte	0x4
	.byte	0x3e
	.uaword	0x607
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"bUpdateReqIsAllowed"
	.byte	0x4
	.byte	0x3f
	.uaword	0x5e6
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.uaword	0x5ad
	.uleb128 0x9
	.uaword	0x5ad
	.byte	0
	.uleb128 0xa
	.uaword	0x5b2
	.uleb128 0xb
	.byte	0x4
	.uaword	0x5b8
	.uleb128 0xa
	.uaword	0x502
	.uleb128 0xb
	.byte	0x4
	.uaword	0x5a1
	.uleb128 0x8
	.byte	0x1
	.uaword	0x5cf
	.uleb128 0x9
	.uaword	0x5cf
	.byte	0
	.uleb128 0xa
	.uaword	0x5d4
	.uleb128 0xb
	.byte	0x4
	.uaword	0x385
	.uleb128 0xb
	.byte	0x4
	.uaword	0x5c3
	.uleb128 0xe
	.byte	0x1
	.uaword	0x279
	.uleb128 0xb
	.byte	0x4
	.uaword	0x5e0
	.uleb128 0xf
	.byte	0x1
	.uaword	0x279
	.uaword	0x5fc
	.uleb128 0x9
	.uaword	0x5fc
	.byte	0
	.uleb128 0xa
	.uaword	0x601
	.uleb128 0xb
	.byte	0x4
	.uaword	0x279
	.uleb128 0xb
	.byte	0x4
	.uaword	0x5ec
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x4
	.byte	0x40
	.uaword	0x50d
	.uleb128 0x4
	.uaword	.LASF7
	.byte	0x1c
	.byte	0x4
	.byte	0x42
	.uaword	0x6e7
	.uleb128 0x5
	.string	"u8BufNum"
	.byte	0x4
	.byte	0x43
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u16BufTotalSize"
	.byte	0x4
	.byte	0x44
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"f32RunTimeBeforeFault_S"
	.byte	0x4
	.byte	0x45
	.uaword	0x260
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"pvInputBuf"
	.byte	0x4
	.byte	0x47
	.uaword	0x500
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"patIndexSet"
	.byte	0x4
	.byte	0x48
	.uaword	0x6e7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"pktBufCfgSet"
	.byte	0x4
	.byte	0x4a
	.uaword	0x6ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"pktBankUserIf"
	.byte	0x4
	.byte	0x4b
	.uaword	0x6f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"pktUserHeadCfg"
	.byte	0x4
	.byte	0x4c
	.uaword	0x5b2
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x3e9
	.uleb128 0xb
	.byte	0x4
	.uaword	0x6f3
	.uleb128 0xa
	.uaword	0x495
	.uleb128 0xb
	.byte	0x4
	.uaword	0x6fe
	.uleb128 0xa
	.uaword	0x60d
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x4
	.byte	0x4d
	.uaword	0x618
	.uleb128 0x10
	.byte	0x1
	.byte	0x5
	.byte	0x22
	.uaword	0x7f5
	.uleb128 0x11
	.string	"bInitState"
	.byte	0x5
	.byte	0x23
	.uaword	0x1d8
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"bTriggerState"
	.byte	0x5
	.byte	0x24
	.uaword	0x1d8
	.byte	0x1
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"bTriggerAcceptState"
	.byte	0x5
	.byte	0x25
	.uaword	0x1d8
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"bFullState"
	.byte	0x5
	.byte	0x26
	.uaword	0x1d8
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"bStoredState"
	.byte	0x5
	.byte	0x27
	.uaword	0x1d8
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"bProcessedState"
	.byte	0x5
	.byte	0x28
	.uaword	0x1d8
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"bAbnormalResetState"
	.byte	0x5
	.byte	0x29
	.uaword	0x1d8
	.byte	0x1
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"bIsBusyState"
	.byte	0x5
	.byte	0x2a
	.uaword	0x1d8
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x12
	.string	"FR_uLockState"
	.byte	0x1
	.byte	0x5
	.byte	0x20
	.uaword	0x829
	.uleb128 0x13
	.string	"u8State"
	.byte	0x5
	.byte	0x21
	.uaword	0x1d8
	.uleb128 0x13
	.string	"tState"
	.byte	0x5
	.byte	0x2b
	.uaword	0x70e
	.byte	0
	.uleb128 0x3
	.string	"PFR_uLockState"
	.byte	0x5
	.byte	0x2c
	.uaword	0x83f
	.uleb128 0xb
	.byte	0x4
	.uaword	0x7f5
	.uleb128 0x10
	.byte	0x14
	.byte	0x5
	.byte	0x30
	.uaword	0x88b
	.uleb128 0x5
	.string	"u16Version"
	.byte	0x5
	.byte	0x31
	.uaword	0x203
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u8BlockCtr"
	.byte	0x5
	.byte	0x32
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"tExtData"
	.byte	0x5
	.byte	0x34
	.uaword	0x385
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x12
	.string	"FR_FixHead"
	.byte	0x20
	.byte	0x5
	.byte	0x2e
	.uaword	0x8bb
	.uleb128 0x13
	.string	"au8Data"
	.byte	0x5
	.byte	0x2f
	.uaword	0x8bb
	.uleb128 0x13
	.string	"tHead"
	.byte	0x5
	.byte	0x35
	.uaword	0x845
	.byte	0
	.uleb128 0x14
	.uaword	0x1d8
	.uaword	0x8cb
	.uleb128 0x15
	.uaword	0x8cb
	.byte	0x1f
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"PFR_FixHead"
	.byte	0x5
	.byte	0x36
	.uaword	0x8ea
	.uleb128 0xb
	.byte	0x4
	.uaword	0x88b
	.uleb128 0x16
	.string	"FR_Cfg"
	.byte	0x14
	.byte	0x5
	.byte	0x38
	.uaword	0x97d
	.uleb128 0x5
	.string	"u8NvmBlockNum"
	.byte	0x5
	.byte	0x39
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u8NvmStartIndex"
	.byte	0x5
	.byte	0x3a
	.uaword	0x1d8
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"pu8State"
	.byte	0x5
	.byte	0x3c
	.uaword	0x97d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"ptFixHead"
	.byte	0x5
	.byte	0x3d
	.uaword	0x8d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"puLockState"
	.byte	0x5
	.byte	0x3e
	.uaword	0x829
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0x5
	.byte	0x40
	.uaword	0x983
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x1d8
	.uleb128 0xb
	.byte	0x4
	.uaword	0x989
	.uleb128 0xa
	.uaword	0x703
	.uleb128 0x3
	.string	"FR_Cfg"
	.byte	0x5
	.byte	0x41
	.uaword	0x8f0
	.uleb128 0xa
	.uaword	0x98e
	.uleb128 0x17
	.string	"FR_vidSetBitBufferStatus"
	.byte	0x2
	.byte	0x2c
	.byte	0x1
	.byte	0x3
	.uaword	0x9da
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x2
	.byte	0x2c
	.uaword	0x9da
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x2
	.byte	0x2c
	.uaword	0x9e5
	.byte	0
	.uleb128 0xa
	.uaword	0x9df
	.uleb128 0xb
	.byte	0x4
	.uaword	0x99c
	.uleb128 0xa
	.uaword	0x1d8
	.uleb128 0x17
	.string	"FR_vidClearBitBufferStatus"
	.byte	0x2
	.byte	0x3e
	.byte	0x1
	.byte	0x3
	.uaword	0xa25
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x2
	.byte	0x3e
	.uaword	0x9da
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x2
	.byte	0x3e
	.uaword	0x9e5
	.byte	0
	.uleb128 0x19
	.string	"FR_u8GetBitBufferStatus"
	.byte	0x2
	.byte	0x50
	.byte	0x1
	.uaword	0x1d8
	.byte	0x3
	.uaword	0xa61
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x2
	.byte	0x50
	.uaword	0x9da
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x2
	.byte	0x50
	.uaword	0x9e5
	.byte	0
	.uleb128 0x17
	.string	"FR_vidSetFullState"
	.byte	0x2
	.byte	0x62
	.byte	0x1
	.byte	0x3
	.uaword	0xa94
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x2
	.byte	0x62
	.uaword	0x9da
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x2
	.byte	0x62
	.uaword	0x9e5
	.byte	0
	.uleb128 0x17
	.string	"FR_vidClearFullState"
	.byte	0x2
	.byte	0x74
	.byte	0x1
	.byte	0x3
	.uaword	0xac9
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x2
	.byte	0x74
	.uaword	0x9da
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x2
	.byte	0x74
	.uaword	0x9e5
	.byte	0
	.uleb128 0x19
	.string	"FR_u8GetFullState"
	.byte	0x2
	.byte	0x86
	.byte	0x1
	.uaword	0x1d8
	.byte	0x3
	.uaword	0xaff
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x2
	.byte	0x86
	.uaword	0x9da
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0x2
	.byte	0x86
	.uaword	0x9e5
	.byte	0
	.uleb128 0x19
	.string	"FR_u8GetCfgIndex"
	.byte	0x1
	.byte	0x6d
	.byte	0x1
	.uaword	0x1d8
	.byte	0x3
	.uaword	0xb5a
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x1
	.byte	0x6d
	.uaword	0x9da
	.uleb128 0x18
	.uaword	.LASF11
	.byte	0x1
	.byte	0x6d
	.uaword	0x48a
	.uleb128 0x1a
	.string	"u8Index"
	.byte	0x1
	.byte	0x6f
	.uaword	0x1d8
	.uleb128 0x1a
	.string	"u8ValidCfgIndex"
	.byte	0x1
	.byte	0x70
	.uaword	0x1d8
	.byte	0
	.uleb128 0x17
	.string	"FR_vidSetEndPtr"
	.byte	0x1
	.byte	0x88
	.byte	0x1
	.byte	0x3
	.uaword	0xb9b
	.uleb128 0x1b
	.string	"kptIndex"
	.byte	0x1
	.byte	0x88
	.uaword	0xb9b
	.uleb128 0x1b
	.string	"ku32EndPosition"
	.byte	0x1
	.byte	0x88
	.uaword	0x48a
	.byte	0
	.uleb128 0xa
	.uaword	0x6e7
	.uleb128 0x17
	.string	"FR_vidInitBufIndex"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.byte	0x3
	.uaword	0xbde
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x1
	.byte	0xd6
	.uaword	0x9da
	.uleb128 0x1c
	.uaword	.LASF12
	.byte	0x1
	.byte	0xd8
	.uaword	0x1d8
	.uleb128 0x1c
	.uaword	.LASF13
	.byte	0x1
	.byte	0xda
	.uaword	0x6e7
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"FR_vidInitInputBufState"
	.byte	0x1
	.byte	0x31
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xcaf
	.uleb128 0x1e
	.uaword	.LASF9
	.byte	0x1
	.byte	0x31
	.uaword	0x9da
	.byte	0x1
	.byte	0x64
	.uleb128 0x1f
	.uaword	0xba0
	.uaword	.LBB38
	.uaword	.LBE38
	.byte	0x1
	.byte	0x33
	.uaword	0xc4f
	.uleb128 0x20
	.uaword	0xbbc
	.byte	0x1
	.byte	0x64
	.uleb128 0x21
	.uaword	.LBB39
	.uaword	.LBE39
	.uleb128 0x22
	.uaword	0xbc7
	.uaword	.LLST0
	.uleb128 0x22
	.uaword	0xbd2
	.uaword	.LLST1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0xa94
	.uaword	.LBB40
	.uaword	.LBE40
	.byte	0x1
	.byte	0x34
	.uaword	0xc70
	.uleb128 0x20
	.uaword	0xab2
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	0xabd
	.sleb128 -1
	.byte	0
	.uleb128 0x1f
	.uaword	0x9ea
	.uaword	.LBB42
	.uaword	.LBE42
	.byte	0x1
	.byte	0x35
	.uaword	0xc91
	.uleb128 0x20
	.uaword	0xa0e
	.byte	0x1
	.byte	0x64
	.uleb128 0x23
	.uaword	0xa19
	.sleb128 -1
	.byte	0
	.uleb128 0x24
	.uaword	0x9a1
	.uaword	.LBB44
	.uaword	.LBE44
	.byte	0x1
	.byte	0x36
	.uleb128 0x20
	.uaword	0x9c3
	.byte	0x1
	.byte	0x64
	.uleb128 0x25
	.uaword	0x9ce
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"FR_vidBufLockHandle"
	.byte	0x1
	.uahalf	0x11f
	.byte	0x1
	.byte	0x1
	.uaword	0xcf2
	.uleb128 0x27
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x9da
	.uleb128 0x28
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x121
	.uaword	0x1d8
	.uleb128 0x28
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x122
	.uaword	0x279
	.byte	0
	.uleb128 0x17
	.string	"FR_vidEndPtrHandle"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.byte	0x1
	.uaword	0xd7b
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x1
	.byte	0x99
	.uaword	0x9da
	.uleb128 0x1c
	.uaword	.LASF14
	.byte	0x1
	.byte	0x9b
	.uaword	0x1d8
	.uleb128 0x1c
	.uaword	.LASF12
	.byte	0x1
	.byte	0x9c
	.uaword	0x1d8
	.uleb128 0x1a
	.string	"u16FPS"
	.byte	0x1
	.byte	0x9d
	.uaword	0x203
	.uleb128 0x1a
	.string	"u32BeforeLen"
	.byte	0x1
	.byte	0x9e
	.uaword	0x238
	.uleb128 0x1a
	.string	"u32WritePtr"
	.byte	0x1
	.byte	0x9f
	.uaword	0x238
	.uleb128 0x1c
	.uaword	.LASF13
	.byte	0x1
	.byte	0xa1
	.uaword	0x6e7
	.uleb128 0x1c
	.uaword	.LASF15
	.byte	0x1
	.byte	0xa2
	.uaword	0x6ed
	.byte	0
	.uleb128 0x19
	.string	"FR_bUpdateReqIsAllowed"
	.byte	0x1
	.byte	0xf6
	.byte	0x1
	.uaword	0x279
	.byte	0x1
	.uaword	0xdd8
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x1
	.byte	0xf6
	.uaword	0x9da
	.uleb128 0x1a
	.string	"bReturnVal"
	.byte	0x1
	.byte	0xf8
	.uaword	0x279
	.uleb128 0x1a
	.string	"u8Status"
	.byte	0x1
	.byte	0xf9
	.uaword	0x1d8
	.uleb128 0x1c
	.uaword	.LASF14
	.byte	0x1
	.byte	0xfa
	.uaword	0x1d8
	.byte	0
	.uleb128 0x26
	.string	"FR_vidPutInputEvent"
	.byte	0x1
	.uahalf	0x155
	.byte	0x1
	.byte	0x1
	.uaword	0xe5e
	.uleb128 0x27
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x155
	.uaword	0x9da
	.uleb128 0x29
	.string	"ku8CfgIndex"
	.byte	0x1
	.uahalf	0x155
	.uaword	0x9e5
	.uleb128 0x28
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x157
	.uaword	0x1d8
	.uleb128 0x2a
	.string	"u32NextPostion"
	.byte	0x1
	.uahalf	0x158
	.uaword	0x238
	.uleb128 0x28
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x6e7
	.uleb128 0x28
	.uaword	.LASF15
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x6ed
	.uleb128 0x28
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x15c
	.uaword	0x983
	.byte	0
	.uleb128 0x2b
	.byte	0x1
	.string	"FR_vidOpWrapFunc"
	.byte	0x1
	.byte	0x43
	.byte	0x1
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x2c
	.uaword	.LASF9
	.byte	0x1
	.byte	0x43
	.uaword	0x9da
	.uaword	.LLST2
	.uleb128 0x2c
	.uaword	.LASF11
	.byte	0x1
	.byte	0x43
	.uaword	0x48a
	.uaword	.LLST3
	.uleb128 0x1a
	.string	"bUpdateIsAllowed"
	.byte	0x1
	.byte	0x45
	.uaword	0x279
	.uleb128 0x1a
	.string	"u8CfgIndex"
	.byte	0x1
	.byte	0x46
	.uaword	0x1d8
	.uleb128 0x1f
	.uaword	0xaff
	.uaword	.LBB82
	.uaword	.LBE82
	.byte	0x1
	.byte	0x48
	.uaword	0xf0a
	.uleb128 0x2d
	.uaword	0xb1d
	.uaword	.LLST4
	.uleb128 0x2d
	.uaword	0xb28
	.uaword	.LLST5
	.uleb128 0x21
	.uaword	.LBB83
	.uaword	.LBE83
	.uleb128 0x22
	.uaword	0xb33
	.uaword	.LLST6
	.uleb128 0x22
	.uaword	0xb42
	.uaword	.LLST7
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0xd7b
	.uaword	.LBB84
	.uaword	.LBE84
	.byte	0x1
	.byte	0x57
	.uaword	0xf50
	.uleb128 0x2d
	.uaword	0xd9f
	.uaword	.LLST8
	.uleb128 0x21
	.uaword	.LBB85
	.uaword	.LBE85
	.uleb128 0x22
	.uaword	0xdaa
	.uaword	.LLST9
	.uleb128 0x2e
	.uaword	0xdbc
	.uleb128 0x22
	.uaword	0xdcc
	.uaword	.LLST10
	.uleb128 0x2f
	.uaword	.LVL19
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0xcaf
	.uaword	.LBB86
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x53
	.uaword	0x1101
	.uleb128 0x2d
	.uaword	0xccd
	.uaword	.LLST11
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x22
	.uaword	0xcd9
	.uaword	.LLST12
	.uleb128 0x22
	.uaword	0xce5
	.uaword	.LLST13
	.uleb128 0x32
	.uaword	0x9ea
	.uaword	.LBB88
	.uaword	.LBE88
	.byte	0x1
	.uahalf	0x147
	.uaword	0xfa6
	.uleb128 0x33
	.uaword	0xa0e
	.uleb128 0x2d
	.uaword	0xa19
	.uaword	.LLST14
	.byte	0
	.uleb128 0x32
	.uaword	0xa25
	.uaword	.LBB90
	.uaword	.LBE90
	.byte	0x1
	.uahalf	0x130
	.uaword	0xfc9
	.uleb128 0x33
	.uaword	0xa4a
	.uleb128 0x2d
	.uaword	0xa55
	.uaword	.LLST15
	.byte	0
	.uleb128 0x32
	.uaword	0x9a1
	.uaword	.LBB92
	.uaword	.LBE92
	.byte	0x1
	.uahalf	0x134
	.uaword	0xfec
	.uleb128 0x33
	.uaword	0x9c3
	.uleb128 0x2d
	.uaword	0x9ce
	.uaword	.LLST16
	.byte	0
	.uleb128 0x32
	.uaword	0xa25
	.uaword	.LBB94
	.uaword	.LBE94
	.byte	0x1
	.uahalf	0x137
	.uaword	0x100f
	.uleb128 0x33
	.uaword	0xa4a
	.uleb128 0x2d
	.uaword	0xa55
	.uaword	.LLST17
	.byte	0
	.uleb128 0x32
	.uaword	0xcf2
	.uaword	.LBB96
	.uaword	.LBE96
	.byte	0x1
	.uahalf	0x139
	.uaword	0x10cc
	.uleb128 0x33
	.uaword	0xd0e
	.uleb128 0x21
	.uaword	.LBB97
	.uaword	.LBE97
	.uleb128 0x2e
	.uaword	0xd19
	.uleb128 0x22
	.uaword	0xd24
	.uaword	.LLST18
	.uleb128 0x22
	.uaword	0xd2f
	.uaword	.LLST19
	.uleb128 0x22
	.uaword	0xd3d
	.uaword	.LLST20
	.uleb128 0x22
	.uaword	0xd51
	.uaword	.LLST21
	.uleb128 0x22
	.uaword	0xd64
	.uaword	.LLST22
	.uleb128 0x22
	.uaword	0xd6f
	.uaword	.LLST23
	.uleb128 0x1f
	.uaword	0xa61
	.uaword	.LBB98
	.uaword	.LBE98
	.byte	0x1
	.byte	0xb8
	.uaword	0x108a
	.uleb128 0x33
	.uaword	0xa7d
	.uleb128 0x33
	.uaword	0xa88
	.byte	0
	.uleb128 0x1f
	.uaword	0xb5a
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.byte	0xb9
	.uaword	0x10ac
	.uleb128 0x33
	.uaword	0xb83
	.uleb128 0x2d
	.uaword	0xb73
	.uaword	.LLST24
	.byte	0
	.uleb128 0x24
	.uaword	0xb5a
	.uaword	.LBB102
	.uaword	.LBE102
	.byte	0x1
	.byte	0xc6
	.uleb128 0x33
	.uaword	0xb83
	.uleb128 0x2d
	.uaword	0xb73
	.uaword	.LLST25
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0x9a1
	.uaword	.LBB104
	.uaword	.LBE104
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x10ef
	.uleb128 0x33
	.uaword	0x9c3
	.uleb128 0x2d
	.uaword	0x9ce
	.uaword	.LLST26
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL22
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x2f
	.uaword	.LVL58
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	0xdd8
	.uaword	.LBB108
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x5b
	.uleb128 0x2d
	.uaword	0xe02
	.uaword	.LLST27
	.uleb128 0x2d
	.uaword	0xdf6
	.uaword	.LLST28
	.uleb128 0x31
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x22
	.uaword	0xe16
	.uaword	.LLST29
	.uleb128 0x2e
	.uaword	0xe22
	.uleb128 0x22
	.uaword	0xe39
	.uaword	.LLST30
	.uleb128 0x22
	.uaword	0xe45
	.uaword	.LLST31
	.uleb128 0x22
	.uaword	0xe51
	.uaword	.LLST32
	.uleb128 0x35
	.uaword	0xac9
	.uaword	.LBB110
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0x160
	.uaword	0x1173
	.uleb128 0x33
	.uaword	0xae8
	.uleb128 0x2d
	.uaword	0xaf3
	.uaword	.LLST33
	.byte	0
	.uleb128 0x35
	.uaword	0xa25
	.uaword	.LBB114
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.uahalf	0x176
	.uaword	0x1196
	.uleb128 0x33
	.uaword	0xa4a
	.uleb128 0x2d
	.uaword	0xa55
	.uaword	.LLST34
	.byte	0
	.uleb128 0x36
	.uaword	0xa61
	.uaword	.LBB118
	.uaword	.LBE118
	.byte	0x1
	.uahalf	0x17d
	.uleb128 0x33
	.uaword	0xa7d
	.uleb128 0x2d
	.uaword	0xa88
	.uaword	.LLST35
	.byte	0
	.byte	0
	.byte	0
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0xd
	.uleb128 0xb
	.uleb128 0xc
	.uleb128 0xb
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x17
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
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1e
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
	.uleb128 0x1f
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2116
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x36
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-1
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL59
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL10
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22-1
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL11
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-1
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL59
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22-1
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL21
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LFE7
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL25
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL51
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL21
	.uaword	.LVL22-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22-1
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL33
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL51
	.uahalf	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL33
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL35
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL37
	.uaword	.LVL51
	.uahalf	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.uaword	.LVL55
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x3
	.byte	0x76
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL39
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x82
	.sleb128 2
	.uaword	.LVL46
	.uaword	.LVL51
	.uahalf	0x2
	.byte	0x82
	.sleb128 2
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x19
	.byte	0x82
	.sleb128 2
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0xf7
	.uleb128 0x1c2
	.byte	0xf7
	.uleb128 0x1a9
	.byte	0x8f
	.sleb128 4
	.byte	0xf6
	.byte	0x4
	.uleb128 0x1a9
	.byte	0x1e
	.byte	0xf7
	.uleb128 0x1b2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL39
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL39
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL46
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL55
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL39
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL46
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x3
	.byte	0x9
	.byte	0x84
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL25
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL51
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL26
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL51
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL30
	.uaword	.LVL31-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL26
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL51
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x24
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	.LBB121
	.uaword	.LBE121
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	0
	.uaword	0
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	.LBB122
	.uaword	.LBE122
	.uaword	0
	.uaword	0
	.uaword	.LBB110
	.uaword	.LBE110
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	0
	.uaword	0
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	.LBB117
	.uaword	.LBE117
	.uaword	0
	.uaword	0
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF13:
	.string	"ptIndex"
.LASF2:
	.string	"FR_BufIndex"
.LASF1:
	.string	"FR_tExtDataOfFixHead"
.LASF5:
	.string	"FR_BankUserIf"
.LASF8:
	.string	"pktBankUserCfg"
.LASF6:
	.string	"bFaultIsOccurred"
.LASF12:
	.string	"u8BufIndex"
.LASF14:
	.string	"u8BitMask"
.LASF3:
	.string	"FR_BufCfg"
.LASF10:
	.string	"ku8BitMask"
.LASF11:
	.string	"ku32Period"
.LASF15:
	.string	"pktBufCfg"
.LASF7:
	.string	"FR_BankUserCfg"
.LASF0:
	.string	"FR_tTimestamp"
.LASF9:
	.string	"kpktCfg"
.LASF4:
	.string	"FR_UserHeadCfg"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
