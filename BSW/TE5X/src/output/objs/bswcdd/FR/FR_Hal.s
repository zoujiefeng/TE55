	.file	"FR_Hal.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.FR_u8HalReadBlockCtr,"ax",@progbits
	.align 1
	.global	FR_u8HalReadBlockCtr
	.type	FR_u8HalReadBlockCtr, @function
FR_u8HalReadBlockCtr:
.LFB249:
	.file 1 "bswcdd\\FR\\FR_Hal.c"
	.loc 1 44 0
.LVL0:
	.loc 1 49 0
	call	DFM_ptGetBlock
.LVL1:
	.loc 1 46 0
	mov	%d2, 255
	.loc 1 51 0
	jz.a	%a2, .L2
.LVL2:
	.loc 1 55 0
	ld.a	%a15, [%a2] 4
	ld.bu	%d2, [%a15] 2
.LVL3:
.L2:
	.loc 1 59 0
	ret
.LFE249:
	.size	FR_u8HalReadBlockCtr, .-FR_u8HalReadBlockCtr
.section .text.FR_bHalWriteFixHead,"ax",@progbits
	.align 1
	.global	FR_bHalWriteFixHead
	.type	FR_bHalWriteFixHead, @function
FR_bHalWriteFixHead:
.LFB250:
	.loc 1 73 0
.LVL4:
	.loc 1 77 0
	movh.a	%a2, hi:g_xFRCmd
	mov	%d15, 2
	lea	%a15, [%a2] lo:g_xFRCmd
	st.b	[%a2] lo:g_xFRCmd, %d15
	.loc 1 78 0
	mov	%d15, 32
	.loc 1 73 0
	mov.aa	%a5, %a4
	.loc 1 78 0
	st.w	[%a15] 4, %d15
	.loc 1 82 0
	mov.aa	%a4, %a15
.LVL5:
	.loc 1 79 0
	mov	%d15, 0
	st.h	[%a15] 2, %d15
	.loc 1 82 0
	call	DFM_bPushCmdToQ
.LVL6:
	.loc 1 84 0
	jeq	%d2, 1, .L8
	.loc 1 90 0
	ret
.L8:
	.loc 1 86 0
	st.h	[%a15] 2, %d2
	.loc 1 90 0
	ret
.LFE250:
	.size	FR_bHalWriteFixHead, .-FR_bHalWriteFixHead
.section .text.FR_bHalWriteBufIndex,"ax",@progbits
	.align 1
	.global	FR_bHalWriteBufIndex
	.type	FR_bHalWriteBufIndex, @function
FR_bHalWriteBufIndex:
.LFB251:
	.loc 1 104 0
.LVL7:
	movh.a	%a12, hi:g_xFRCmd
	.loc 1 111 0
	mov	%d15, 1
	movh.a	%a13, hi:u32WrittenSize_Index
	lea	%a12, [%a12] lo:g_xFRCmd
	.loc 1 104 0
	mov.d	%d12, %a5
	.loc 1 109 0
	ld.a	%a14, [%a4] 12
.LVL8:
	.loc 1 111 0
	mov	%d11, 0
	st.b	[%a5]0, %d15
	.loc 1 115 0
	mov.aa	%a15, %a12
	ld.w	%d15, [%a13] lo:u32WrittenSize_Index
	mov	%d10, 2
	.loc 1 116 0
	mov	%d9, 32
	.loc 1 125 0
	lea	%a13, [%a13] lo:u32WrittenSize_Index
.LVL9:
.L11:
	.loc 1 119 0
	addsc.a	%a5, %a14, %d15, 0
	mov.aa	%a4, %a15
	and	%d8, %d11, 255
.LVL10:
	.loc 1 115 0
	st.b	[%a12]0, %d10
	.loc 1 116 0
	st.w	[%a12] 4, %d9
	.loc 1 119 0
	call	DFM_bPushCmdToQ
.LVL11:
	.loc 1 121 0
	jeq	%d2, 1, .L15
.LVL12:
	.loc 1 147 0
	seln	%d2, %d8, %d2, 1
.LVL13:
	ret
.LVL14:
.L15:
	.loc 1 124 0
	ld.h	%d15, [%a15] 2
	.loc 1 125 0
	ld.w	%d3, [%a15] 4
	.loc 1 124 0
	add	%d15, 1
	st.h	[%a15] 2, %d15
	.loc 1 125 0
	ld.w	%d15, [%a13]0
	add	%d8, 1
	add	%d15, %d3
	st.w	[%a13]0, %d15
	.loc 1 127 0
	lt.u	%d3, %d15, 96
	and	%d8, %d8, 255
.LVL15:
	add	%d11, 1
	jnz	%d3, .L11
.LVL16:
	.loc 1 131 0
	mov.a	%a15, %d12
	.loc 1 130 0
	mov	%d15, 0
	st.w	[%a13]0, %d15
	.loc 1 131 0
	st.b	[%a15]0, %d15
	.loc 1 147 0
	seln	%d2, %d8, %d2, 1
.LVL17:
	ret
.LFE251:
	.size	FR_bHalWriteBufIndex, .-FR_bHalWriteBufIndex
.section .text.FR_bHalWriteUserHead,"ax",@progbits
	.align 1
	.global	FR_bHalWriteUserHead
	.type	FR_bHalWriteUserHead, @function
FR_bHalWriteUserHead:
.LFB252:
	.loc 1 161 0
.LVL18:
	.loc 1 166 0
	ld.a	%a15, [%a4] 24
	movh.a	%a12, hi:g_xFRCmd
	.loc 1 168 0
	mov	%d15, 1
	movh.a	%a13, hi:u32WrittenSize_UserHead
	lea	%a12, [%a12] lo:g_xFRCmd
	.loc 1 161 0
	mov.d	%d13, %a5
	.loc 1 166 0
	ld.w	%d12, [%a15]0
.LVL19:
	.loc 1 161 0
	mov.aa	%a14, %a4
	.loc 1 168 0
	st.b	[%a5]0, %d15
	mov	%d11, 0
	ld.w	%d15, [%a13] lo:u32WrittenSize_UserHead
	.loc 1 172 0
	mov.aa	%a15, %a12
	mov	%d10, 2
	.loc 1 173 0
	mov	%d9, 32
	.loc 1 182 0
	lea	%a13, [%a13] lo:u32WrittenSize_UserHead
.LVL20:
.L18:
	.loc 1 176 0
	mov.a	%a2, %d12
	addsc.a	%a5, %a2, %d15, 0
	mov.aa	%a4, %a15
	and	%d8, %d11, 255
.LVL21:
	.loc 1 172 0
	st.b	[%a12]0, %d10
	.loc 1 173 0
	st.w	[%a12] 4, %d9
	.loc 1 176 0
	call	DFM_bPushCmdToQ
.LVL22:
	.loc 1 178 0
	jeq	%d2, 1, .L22
.LVL23:
	.loc 1 204 0
	seln	%d2, %d8, %d2, 1
.LVL24:
	ret
.LVL25:
.L22:
	.loc 1 181 0
	ld.h	%d15, [%a15] 2
	.loc 1 184 0
	ld.a	%a2, [%a14] 24
	.loc 1 181 0
	add	%d15, 1
	.loc 1 182 0
	ld.w	%d3, [%a15] 4
	.loc 1 181 0
	st.h	[%a15] 2, %d15
	.loc 1 182 0
	ld.w	%d15, [%a13]0
	add	%d8, 1
	add	%d15, %d3
	.loc 1 184 0
	ld.hu	%d3, [%a2] 4
	.loc 1 182 0
	st.w	[%a13]0, %d15
	and	%d8, %d8, 255
.LVL26:
	add	%d11, 1
	.loc 1 184 0
	jlt.u	%d15, %d3, .L18
.LVL27:
	.loc 1 188 0
	mov.a	%a2, %d13
	.loc 1 187 0
	mov	%d15, 0
	st.w	[%a13]0, %d15
	.loc 1 188 0
	st.b	[%a2]0, %d15
	.loc 1 204 0
	seln	%d2, %d8, %d2, 1
.LVL28:
	ret
.LFE252:
	.size	FR_bHalWriteUserHead, .-FR_bHalWriteUserHead
.section .text.FR_bHalWriteEvent,"ax",@progbits
	.align 1
	.global	FR_bHalWriteEvent
	.type	FR_bHalWriteEvent, @function
FR_bHalWriteEvent:
.LFB253:
	.loc 1 217 0
.LVL29:
	movh.a	%a12, hi:g_xFRCmd
	.loc 1 223 0
	mov	%d15, 1
	movh.a	%a13, hi:u32WrittenSize_Event
	lea	%a12, [%a12] lo:g_xFRCmd
	.loc 1 217 0
	mov.d	%d13, %a5
	.loc 1 221 0
	ld.w	%d12, [%a4] 8
.LVL30:
	.loc 1 217 0
	mov.aa	%a14, %a4
	.loc 1 223 0
	st.b	[%a5]0, %d15
	mov	%d11, 0
	ld.w	%d15, [%a13] lo:u32WrittenSize_Event
	.loc 1 227 0
	mov.aa	%a15, %a12
	mov	%d10, 2
	.loc 1 228 0
	mov	%d9, 32
	.loc 1 237 0
	lea	%a13, [%a13] lo:u32WrittenSize_Event
.LVL31:
.L25:
	.loc 1 230 0
	mov.a	%a2, %d12
	addsc.a	%a5, %a2, %d15, 0
	mov.aa	%a4, %a15
	and	%d8, %d11, 255
.LVL32:
	.loc 1 227 0
	st.b	[%a12]0, %d10
	.loc 1 228 0
	st.w	[%a12] 4, %d9
	.loc 1 230 0
	call	DFM_bPushCmdToQ
.LVL33:
	.loc 1 232 0
	jeq	%d2, 1, .L29
.LVL34:
	.loc 1 263 0
	seln	%d2, %d8, %d2, 1
.LVL35:
	ret
.LVL36:
.L29:
	.loc 1 236 0
	ld.h	%d15, [%a15] 2
	.loc 1 237 0
	ld.w	%d3, [%a15] 4
	.loc 1 236 0
	add	%d15, 1
	st.h	[%a15] 2, %d15
	.loc 1 237 0
	ld.w	%d15, [%a13]0
	add	%d8, 1
	add	%d15, %d3
	.loc 1 239 0
	ld.hu	%d3, [%a14] 2
	.loc 1 237 0
	st.w	[%a13]0, %d15
	and	%d8, %d8, 255
.LVL37:
	add	%d11, 1
	.loc 1 239 0
	jlt.u	%d15, %d3, .L25
.LVL38:
	.loc 1 243 0
	mov.a	%a2, %d13
	.loc 1 242 0
	mov	%d15, 0
	st.w	[%a13]0, %d15
	.loc 1 243 0
	st.b	[%a2]0, %d15
	.loc 1 263 0
	seln	%d2, %d8, %d2, 1
.LVL39:
	ret
.LFE253:
	.size	FR_bHalWriteEvent, .-FR_bHalWriteEvent
.section .text.FR_bHalClaerNvmBlock,"ax",@progbits
	.align 1
	.global	FR_bHalClaerNvmBlock
	.type	FR_bHalClaerNvmBlock, @function
FR_bHalClaerNvmBlock:
.LFB254:
	.loc 1 276 0
.LVL40:
	.loc 1 279 0
	movh.a	%a2, hi:g_xFRCmd
	lea	%a15, [%a2] lo:g_xFRCmd
	.loc 1 276 0
	mov.aa	%a12, %a4
	.loc 1 279 0
	mov	%d15, 1
	.loc 1 282 0
	mov.aa	%a4, %a15
.LVL41:
	mov.a	%a5, 0
	.loc 1 279 0
	st.b	[%a2] lo:g_xFRCmd, %d15
	.loc 1 280 0
	st.b	[%a15] 1, %d4
	.loc 1 282 0
	call	DFM_bPushCmdToQ
.LVL42:
	.loc 1 284 0
	ld.a	%a2, [%a12] 24
	ld.hu	%d15, [%a2] 6
	sh	%d15, -5
	st.h	[%a15] 2, %d15
	.loc 1 287 0
	ret
.LFE254:
	.size	FR_bHalClaerNvmBlock, .-FR_bHalClaerNvmBlock
.section .text.FR_vidHalUpdateCmd,"ax",@progbits
	.align 1
	.global	FR_vidHalUpdateCmd
	.type	FR_vidHalUpdateCmd, @function
FR_vidHalUpdateCmd:
.LFB255:
	.loc 1 300 0
.LVL43:
	.loc 1 301 0
	movh.a	%a2, hi:g_xFRCmd
	mov	%d15, 1
	lea	%a15, [%a2] lo:g_xFRCmd
	st.b	[%a2] lo:g_xFRCmd, %d15
	.loc 1 303 0
	ld.a	%a2, [%a4] 24
	.loc 1 302 0
	st.b	[%a15] 1, %d4
	.loc 1 303 0
	ld.hu	%d15, [%a2] 6
	sh	%d15, -5
	st.h	[%a15] 2, %d15
	ret
.LFE255:
	.size	FR_vidHalUpdateCmd, .-FR_vidHalUpdateCmd
.section .text.FR_bHalClearAllNvmBlock,"ax",@progbits
	.align 1
	.global	FR_bHalClearAllNvmBlock
	.type	FR_bHalClearAllNvmBlock, @function
FR_bHalClearAllNvmBlock:
.LFB256:
	.loc 1 317 0
.LVL44:
	.loc 1 320 0
	ld.bu	%d10, [%a4]0
.LVL45:
	.loc 1 329 0
	movh.a	%a15, hi:g_xFRCmd
	addi	%d12, %d10, 1
	.loc 1 317 0
	mov.aa	%a12, %a4
	.loc 1 323 0
	mov	%d8, 0
	.loc 1 329 0
	lea	%a15, [%a15] lo:g_xFRCmd
	mov	%d9, 1
	addi	%d13, %d10, 2
	and	%d12, %d12, 255
	.loc 1 323 0
	jge.u	%d10, 9, .L38
.LVL46:
.L40:
	and	%d15, %d8, 255
	add	%d11, %d15, %d10
	and	%d11, %d11, 255
.LVL47:
	.loc 1 325 0
	addi	%d4, %d11, 2
	call	DFM_ptGetBlock
.LVL48:
	.loc 1 327 0
	jz.a	%a2, .L35
	add	%d2, %d15, %d13
	.loc 1 331 0
	mov.aa	%a4, %a15
	mov.a	%a5, 0
	.loc 1 329 0
	st.b	[%a15]0, %d9
	.loc 1 330 0
	st.b	[%a15] 1, %d2
	.loc 1 331 0
	call	DFM_bPushCmdToQ
.LVL49:
	.loc 1 333 0
	jne	%d2, 1, .L42
.LVL50:
.L35:
	add	%d15, %d12
	and	%d15, 255
.LVL51:
	add	%d8, 1
	.loc 1 323 0
	jlt.u	%d15, 9, .L40
.LVL52:
.L38:
	.loc 1 319 0
	mov	%d2, 1
	ret
.LVL53:
.L42:
	.loc 1 342 0
	st.b	[%a12]0, %d11
.LVL54:
	.loc 1 343 0
	mov	%d2, 0
.LVL55:
	.loc 1 345 0
	ret
.LFE256:
	.size	FR_bHalClearAllNvmBlock, .-FR_bHalClearAllNvmBlock
.section .bss.a4.u32WrittenSize_UserHead,"aw",@nobits
	.align 2
	.type	u32WrittenSize_UserHead, @object
	.size	u32WrittenSize_UserHead, 4
u32WrittenSize_UserHead:
	.zero	4
.section .bss.a4.u32WrittenSize_Event,"aw",@nobits
	.align 2
	.type	u32WrittenSize_Event, @object
	.size	u32WrittenSize_Event, 4
u32WrittenSize_Event:
	.zero	4
.section .bss.a4.u32WrittenSize_Index,"aw",@nobits
	.align 2
	.type	u32WrittenSize_Index, @object
	.size	u32WrittenSize_Index, 4
u32WrittenSize_Index:
	.zero	4
.section .bss.a4.g_xFRCmd,"aw",@nobits
	.align 2
	.type	g_xFRCmd, @object
	.size	g_xFRCmd, 8
g_xFRCmd:
	.zero	8
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
	.uaword	.LFB249
	.uaword	.LFE249-.LFB249
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB250
	.uaword	.LFE250-.LFB250
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB253
	.uaword	.LFE253-.LFB253
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB254
	.uaword	.LFE254-.LFB254
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\FR\\FR_PublicTypes.h"
	.file 4 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\DFM\\DFM_Cfg.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 9 ".\\output\\inc/..\\..\\bswcdd\\DFM\\DFM_Type.h"
	.file 10 "bswcdd\\FR\\FR_Hal.h"
	.file 11 "bswcdd\\FR\\FR_Types.h"
	.file 12 ".\\output\\inc/..\\..\\bswcdd\\DFM\\DFM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x15f0
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\FR\\FR_Hal.c"
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x233
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x75
	.uaword	0x26c
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
	.uaword	.LASF0
	.byte	0x8
	.byte	0x3
	.byte	0x14
	.uaword	0x327
	.uleb128 0x5
	.string	"u16Year"
	.byte	0x3
	.byte	0x15
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u8Month"
	.byte	0x3
	.byte	0x16
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"u8Day"
	.byte	0x3
	.byte	0x17
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x5
	.string	"u8Hour"
	.byte	0x3
	.byte	0x18
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"u8Minute"
	.byte	0x3
	.byte	0x19
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"u8Second"
	.byte	0x3
	.byte	0x1a
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x3
	.byte	0x1b
	.uaword	0x2af
	.uleb128 0x4
	.uaword	.LASF1
	.byte	0x10
	.byte	0x3
	.byte	0x1d
	.uaword	0x38b
	.uleb128 0x5
	.string	"tTime"
	.byte	0x3
	.byte	0x1e
	.uaword	0x327
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u32Start2ErrTime_ms"
	.byte	0x3
	.byte	0x1f
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"u32FactoryRunTime_s"
	.byte	0x3
	.byte	0x20
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x3
	.byte	0x21
	.uaword	0x332
	.uleb128 0x4
	.uaword	.LASF2
	.byte	0x10
	.byte	0x3
	.byte	0x23
	.uaword	0x3ea
	.uleb128 0x5
	.string	"u32BufAddr"
	.byte	0x3
	.byte	0x24
	.uaword	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u32W"
	.byte	0x3
	.byte	0x25
	.uaword	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"u32R"
	.byte	0x3
	.byte	0x26
	.uaword	0x3ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"u32BufCtr"
	.byte	0x3
	.byte	0x27
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x7
	.uaword	0x225
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x3
	.byte	0x28
	.uaword	0x396
	.uleb128 0x4
	.uaword	.LASF3
	.byte	0x10
	.byte	0x3
	.byte	0x2a
	.uaword	0x484
	.uleb128 0x5
	.string	"u8BufId"
	.byte	0x3
	.byte	0x2b
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u16FPS"
	.byte	0x3
	.byte	0x2c
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"u16EventNum"
	.byte	0x3
	.byte	0x2d
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"u16EventSize"
	.byte	0x3
	.byte	0x2e
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x5
	.string	"u16Period_us"
	.byte	0x3
	.byte	0x2f
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"vidGetEvent"
	.byte	0x3
	.byte	0x31
	.uaword	0x495
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.uaword	0x490
	.uleb128 0x9
	.uaword	0x490
	.byte	0
	.uleb128 0xa
	.uaword	0x225
	.uleb128 0xb
	.byte	0x4
	.uaword	0x484
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x3
	.byte	0x32
	.uaword	0x3fa
	.uleb128 0x4
	.uaword	.LASF4
	.byte	0x8
	.byte	0x3
	.byte	0x34
	.uaword	0x506
	.uleb128 0x5
	.string	"pvUserBlockHandle"
	.byte	0x3
	.byte	0x35
	.uaword	0x506
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u16UserBlockSizeByByte"
	.byte	0x3
	.byte	0x36
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"u16HeadSize"
	.byte	0x3
	.byte	0x37
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0xc
	.byte	0x4
	.uleb128 0x6
	.uaword	.LASF4
	.byte	0x3
	.byte	0x38
	.uaword	0x4a6
	.uleb128 0x4
	.uaword	.LASF5
	.byte	0x14
	.byte	0x3
	.byte	0x3a
	.uaword	0x5b4
	.uleb128 0x5
	.string	"vidGetUserHeadInfo"
	.byte	0x3
	.byte	0x3b
	.uaword	0x5d0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"vidGetExtDataOfFixHead"
	.byte	0x3
	.byte	0x3c
	.uaword	0x5ed
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"bFaultIsOccurred"
	.byte	0x3
	.byte	0x3d
	.uaword	0x5f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"bExtStoreCondIsMet"
	.byte	0x3
	.byte	0x3e
	.uaword	0x61a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"bUpdateReqIsAllowed"
	.byte	0x3
	.byte	0x3f
	.uaword	0x5f9
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.uaword	0x5c0
	.uleb128 0x9
	.uaword	0x5c0
	.byte	0
	.uleb128 0xa
	.uaword	0x5c5
	.uleb128 0xb
	.byte	0x4
	.uaword	0x5cb
	.uleb128 0xa
	.uaword	0x508
	.uleb128 0xb
	.byte	0x4
	.uaword	0x5b4
	.uleb128 0x8
	.byte	0x1
	.uaword	0x5e2
	.uleb128 0x9
	.uaword	0x5e2
	.byte	0
	.uleb128 0xa
	.uaword	0x5e7
	.uleb128 0xb
	.byte	0x4
	.uaword	0x38b
	.uleb128 0xb
	.byte	0x4
	.uaword	0x5d6
	.uleb128 0xd
	.byte	0x1
	.uaword	0x27f
	.uleb128 0xb
	.byte	0x4
	.uaword	0x5f3
	.uleb128 0xe
	.byte	0x1
	.uaword	0x27f
	.uaword	0x60f
	.uleb128 0x9
	.uaword	0x60f
	.byte	0
	.uleb128 0xa
	.uaword	0x614
	.uleb128 0xb
	.byte	0x4
	.uaword	0x27f
	.uleb128 0xb
	.byte	0x4
	.uaword	0x5ff
	.uleb128 0x6
	.uaword	.LASF5
	.byte	0x3
	.byte	0x40
	.uaword	0x513
	.uleb128 0x4
	.uaword	.LASF6
	.byte	0x1c
	.byte	0x3
	.byte	0x42
	.uaword	0x6fa
	.uleb128 0x5
	.string	"u8BufNum"
	.byte	0x3
	.byte	0x43
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u16BufTotalSize"
	.byte	0x3
	.byte	0x44
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"f32RunTimeBeforeFault_S"
	.byte	0x3
	.byte	0x45
	.uaword	0x25d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"pvInputBuf"
	.byte	0x3
	.byte	0x47
	.uaword	0x506
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"patIndexSet"
	.byte	0x3
	.byte	0x48
	.uaword	0x6fa
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"pktBufCfgSet"
	.byte	0x3
	.byte	0x4a
	.uaword	0x700
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"pktBankUserIf"
	.byte	0x3
	.byte	0x4b
	.uaword	0x70b
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"pktUserHeadCfg"
	.byte	0x3
	.byte	0x4c
	.uaword	0x5c5
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x3ef
	.uleb128 0xb
	.byte	0x4
	.uaword	0x706
	.uleb128 0xa
	.uaword	0x49b
	.uleb128 0xb
	.byte	0x4
	.uaword	0x711
	.uleb128 0xa
	.uaword	0x620
	.uleb128 0x6
	.uaword	.LASF6
	.byte	0x3
	.byte	0x4d
	.uaword	0x62b
	.uleb128 0xf
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x4
	.byte	0x15
	.uaword	0x7dc
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.byte	0x4
	.byte	0x1f
	.uaword	0x854
	.uleb128 0x10
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0x10
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0x10
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0x10
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0x10
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0xf
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x4
	.byte	0x27
	.uaword	0xa91
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0x10
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0xf
	.string	"DFM_BLOCK_INDEX"
	.byte	0x1
	.byte	0x5
	.byte	0x50
	.uaword	0xc13
	.uleb128 0x10
	.string	"DFM_OC_TRIM_BLOCK"
	.sleb128 0
	.uleb128 0x10
	.string	"DFM_CUR_CAL_BLOCK"
	.sleb128 1
	.uleb128 0x10
	.string	"DFM_FRECORD_START_INDEX"
	.sleb128 2
	.uleb128 0x10
	.string	"DFM_MGTCU_FRECORD_A_BLOCK"
	.sleb128 2
	.uleb128 0x10
	.string	"DFM_MGTCU_FRECORD_B_BLOCK"
	.sleb128 3
	.uleb128 0x10
	.string	"DFM_MGTCU_FRECORD_C_BLOCK"
	.sleb128 4
	.uleb128 0x10
	.string	"DFM_MGTCU_FRECORD_D_BLOCK"
	.sleb128 5
	.uleb128 0x10
	.string	"DFM_MGTCU_FRECORD_E_BLOCK"
	.sleb128 6
	.uleb128 0x10
	.string	"DFM_MGTCU_FRECORD_F_BLOCK"
	.sleb128 7
	.uleb128 0x10
	.string	"DFM_MGTCU_FRECORD_G_BLOCK"
	.sleb128 8
	.uleb128 0x10
	.string	"DFM_MGTCU_FRECORD_H_BLOCK"
	.sleb128 9
	.uleb128 0x10
	.string	"DFM_MGTCU_FRECORD_I_BLOCK"
	.sleb128 10
	.uleb128 0x10
	.string	"DFM_FRECORD_END_INDEX"
	.sleb128 11
	.uleb128 0x10
	.string	"DFM_MAX_BLOCK_NO"
	.sleb128 11
	.byte	0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0xb
	.byte	0x4
	.uaword	0xc21
	.uleb128 0x12
	.uleb128 0x13
	.byte	0x8
	.byte	0x6
	.byte	0x8c
	.uaword	0xc4c
	.uleb128 0x5
	.string	"module"
	.byte	0x6
	.byte	0x8e
	.uaword	0xc1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"index"
	.byte	0x6
	.byte	0x8f
	.uaword	0x1ff
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x6
	.byte	0x90
	.uaword	0xc22
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x11
	.byte	0x1
	.byte	0x7
	.byte	0x88
	.uaword	0xcd3
	.uleb128 0x10
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0x10
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0x10
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0x10
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0x10
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.byte	0x8
	.uahalf	0x160
	.uaword	0xddc
	.uleb128 0x10
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0x10
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0x10
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0x10
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0x10
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0x10
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0x10
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0x15
	.uaword	0x1b0
	.uaword	0xdec
	.uleb128 0x16
	.uaword	0xc66
	.byte	0x1f
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xdf2
	.uleb128 0xa
	.uaword	0x1b0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x1b0
	.uleb128 0xf
	.string	"DFM_CMD_LIST"
	.byte	0x1
	.byte	0x9
	.byte	0x2a
	.uaword	0xe36
	.uleb128 0x10
	.string	"DFM_ERASE"
	.sleb128 1
	.uleb128 0x10
	.string	"DFM_WRITE"
	.sleb128 2
	.uleb128 0x10
	.string	"DFM_READ"
	.sleb128 3
	.byte	0
	.uleb128 0x4
	.uaword	.LASF7
	.byte	0x8
	.byte	0x9
	.byte	0x45
	.uaword	0xe81
	.uleb128 0x5
	.string	"bWriteReq"
	.byte	0x9
	.byte	0x46
	.uaword	0x27f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u8State"
	.byte	0x9
	.byte	0x47
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"u32WriteIndex"
	.byte	0x9
	.byte	0x49
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.uaword	.LASF7
	.byte	0x9
	.byte	0x4a
	.uaword	0xe36
	.uleb128 0x4
	.uaword	.LASF8
	.byte	0x18
	.byte	0x9
	.byte	0x4c
	.uaword	0xf33
	.uleb128 0x5
	.string	"u32BlockID"
	.byte	0x9
	.byte	0x4d
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"u32RomBlockAddress"
	.byte	0x9
	.byte	0x4e
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"u32RamBlockAddress"
	.byte	0x9
	.byte	0x4f
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"u32RamBlockLength"
	.byte	0x9
	.byte	0x50
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"u32RomBlockLength"
	.byte	0x9
	.byte	0x51
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"ptVarSet"
	.byte	0x9
	.byte	0x53
	.uaword	0xf33
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0xe81
	.uleb128 0x6
	.uaword	.LASF8
	.byte	0x9
	.byte	0x54
	.uaword	0xe8c
	.uleb128 0x17
	.string	"DFM_Cmd"
	.byte	0x8
	.byte	0x9
	.byte	0x56
	.uaword	0xfa3
	.uleb128 0x5
	.string	"u8Cmd"
	.byte	0x9
	.byte	0x57
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x9
	.byte	0x58
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x5
	.string	"u16WriteDataNum"
	.byte	0x9
	.byte	0x59
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"u32DataSize"
	.byte	0x9
	.byte	0x5a
	.uaword	0x225
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"DFM_Cmd"
	.byte	0x9
	.byte	0x5b
	.uaword	0xf44
	.uleb128 0x3
	.string	"PDFM_Cmd"
	.byte	0x9
	.byte	0x5b
	.uaword	0xfc2
	.uleb128 0xb
	.byte	0x4
	.uaword	0xf44
	.uleb128 0x3
	.string	"PKDFM_Block"
	.byte	0x9
	.byte	0x6e
	.uaword	0xfdb
	.uleb128 0xb
	.byte	0x4
	.uaword	0xfe1
	.uleb128 0xa
	.uaword	0xf39
	.uleb128 0x11
	.byte	0x1
	.byte	0xa
	.byte	0x18
	.uaword	0x101d
	.uleb128 0x10
	.string	"eFR_HAL_WRTIE_DONE"
	.sleb128 0
	.uleb128 0x10
	.string	"eFR_HAL_WRTIE_CONTINUE"
	.sleb128 1
	.byte	0
	.uleb128 0x13
	.byte	0x14
	.byte	0xb
	.byte	0x30
	.uaword	0x105c
	.uleb128 0x5
	.string	"u16Version"
	.byte	0xb
	.byte	0x31
	.uaword	0x1db
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x18
	.uaword	.LASF10
	.byte	0xb
	.byte	0x32
	.uaword	0x1b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"tExtData"
	.byte	0xb
	.byte	0x34
	.uaword	0x38b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x19
	.uaword	.LASF11
	.byte	0x20
	.byte	0xb
	.byte	0x2e
	.uaword	0x1085
	.uleb128 0x1a
	.string	"au8Data"
	.byte	0xb
	.byte	0x2f
	.uaword	0xddc
	.uleb128 0x1a
	.string	"tHead"
	.byte	0xb
	.byte	0x35
	.uaword	0x101d
	.byte	0
	.uleb128 0x6
	.uaword	.LASF11
	.byte	0xb
	.byte	0x36
	.uaword	0x105c
	.uleb128 0xb
	.byte	0x4
	.uaword	0x1096
	.uleb128 0xa
	.uaword	0x716
	.uleb128 0x1b
	.byte	0x1
	.string	"FR_u8HalReadBlockCtr"
	.byte	0x1
	.byte	0x2b
	.byte	0x1
	.uaword	0x1b0
	.uaword	.LFB249
	.uaword	.LFE249
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1119
	.uleb128 0x1c
	.uaword	.LASF9
	.byte	0x1
	.byte	0x2b
	.uaword	0xdf2
	.uaword	.LLST0
	.uleb128 0x1d
	.uaword	.LASF12
	.byte	0x1
	.byte	0x2d
	.uaword	0xfc8
	.byte	0x1
	.byte	0x62
	.uleb128 0x1e
	.uaword	.LASF10
	.byte	0x1
	.byte	0x2e
	.uaword	0x1b0
	.uaword	.LLST1
	.uleb128 0x1f
	.string	"pktDFM_TempHead"
	.byte	0x1
	.byte	0x2f
	.uaword	0x1119
	.uaword	.LLST2
	.uleb128 0x20
	.uaword	.LVL1
	.uaword	0x15ab
	.byte	0
	.uleb128 0xb
	.byte	0x4
	.uaword	0x111f
	.uleb128 0xa
	.uaword	0x1085
	.uleb128 0x1b
	.byte	0x1
	.string	"FR_bHalWriteFixHead"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	0x27f
	.uaword	.LFB250
	.uaword	.LFE250
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x118d
	.uleb128 0x21
	.string	"kpku8Data"
	.byte	0x1
	.byte	0x48
	.uaword	0x118d
	.uaword	.LLST3
	.uleb128 0x1e
	.uaword	.LASF13
	.byte	0x1
	.byte	0x4a
	.uaword	0x27f
	.uaword	.LLST4
	.uleb128 0x22
	.uaword	.LVL6
	.uaword	0x15ce
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uaword	0xdec
	.uleb128 0x1b
	.byte	0x1
	.string	"FR_bHalWriteBufIndex"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	0x27f
	.uaword	.LFB251
	.uaword	.LFE251
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1232
	.uleb128 0x1c
	.uaword	.LASF14
	.byte	0x1
	.byte	0x67
	.uaword	0x1232
	.uaword	.LLST5
	.uleb128 0x1c
	.uaword	.LASF15
	.byte	0x1
	.byte	0x67
	.uaword	0x1237
	.uaword	.LLST6
	.uleb128 0x1e
	.uaword	.LASF16
	.byte	0x1
	.byte	0x69
	.uaword	0x1b0
	.uaword	.LLST7
	.uleb128 0x1e
	.uaword	.LASF13
	.byte	0x1
	.byte	0x6a
	.uaword	0x27f
	.uaword	.LLST8
	.uleb128 0x1e
	.uaword	.LASF17
	.byte	0x1
	.byte	0x6b
	.uaword	0x27f
	.uaword	.LLST9
	.uleb128 0x1d
	.uaword	.LASF18
	.byte	0x1
	.byte	0x6d
	.uaword	0xdec
	.byte	0x1
	.byte	0x6e
	.uleb128 0x22
	.uaword	.LVL11
	.uaword	0x15ce
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x8e
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0xa
	.uaword	0x1090
	.uleb128 0xa
	.uaword	0xdf7
	.uleb128 0x1b
	.byte	0x1
	.string	"FR_bHalWriteUserHead"
	.byte	0x1
	.byte	0xa0
	.byte	0x1
	.uaword	0x27f
	.uaword	.LFB252
	.uaword	.LFE252
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x12dc
	.uleb128 0x1c
	.uaword	.LASF14
	.byte	0x1
	.byte	0xa0
	.uaword	0x1232
	.uaword	.LLST10
	.uleb128 0x1c
	.uaword	.LASF15
	.byte	0x1
	.byte	0xa0
	.uaword	0x1237
	.uaword	.LLST11
	.uleb128 0x1e
	.uaword	.LASF16
	.byte	0x1
	.byte	0xa2
	.uaword	0x1b0
	.uaword	.LLST12
	.uleb128 0x1e
	.uaword	.LASF13
	.byte	0x1
	.byte	0xa3
	.uaword	0x27f
	.uaword	.LLST13
	.uleb128 0x1e
	.uaword	.LASF17
	.byte	0x1
	.byte	0xa4
	.uaword	0x27f
	.uaword	.LLST14
	.uleb128 0x1d
	.uaword	.LASF18
	.byte	0x1
	.byte	0xa6
	.uaword	0xdec
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.uaword	.LVL22
	.uaword	0x15ce
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"FR_bHalWriteEvent"
	.byte	0x1
	.byte	0xd8
	.byte	0x1
	.uaword	0x27f
	.uaword	.LFB253
	.uaword	.LFE253
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1379
	.uleb128 0x1c
	.uaword	.LASF14
	.byte	0x1
	.byte	0xd8
	.uaword	0x1232
	.uaword	.LLST15
	.uleb128 0x1c
	.uaword	.LASF15
	.byte	0x1
	.byte	0xd8
	.uaword	0x1237
	.uaword	.LLST16
	.uleb128 0x1e
	.uaword	.LASF16
	.byte	0x1
	.byte	0xda
	.uaword	0x1b0
	.uaword	.LLST17
	.uleb128 0x1e
	.uaword	.LASF13
	.byte	0x1
	.byte	0xdb
	.uaword	0x27f
	.uaword	.LLST18
	.uleb128 0x1e
	.uaword	.LASF17
	.byte	0x1
	.byte	0xdc
	.uaword	0x27f
	.uaword	.LLST19
	.uleb128 0x1d
	.uaword	.LASF18
	.byte	0x1
	.byte	0xdd
	.uaword	0xdec
	.byte	0x1
	.byte	0x5c
	.uleb128 0x22
	.uaword	.LVL33
	.uaword	0x15ce
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x7c
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x22
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8c
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"FR_bHalClaerNvmBlock"
	.byte	0x1
	.uahalf	0x113
	.byte	0x1
	.uaword	0x27f
	.uaword	.LFB254
	.uaword	.LFE254
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x13ee
	.uleb128 0x25
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x113
	.uaword	0x1232
	.uaword	.LLST20
	.uleb128 0x25
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x113
	.uaword	0xdf2
	.uaword	.LLST21
	.uleb128 0x26
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x115
	.uaword	0x27f
	.uaword	.LLST22
	.uleb128 0x22
	.uaword	.LVL42
	.uaword	0x15ce
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"FR_vidHalUpdateCmd"
	.byte	0x1
	.uahalf	0x12b
	.byte	0x1
	.uaword	.LFB255
	.uaword	.LFE255
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1434
	.uleb128 0x28
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x12b
	.uaword	0x1232
	.byte	0x1
	.byte	0x64
	.uleb128 0x28
	.uaword	.LASF19
	.byte	0x1
	.uahalf	0x12b
	.uaword	0xdf2
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"FR_bHalClearAllNvmBlock"
	.byte	0x1
	.uahalf	0x13c
	.byte	0x1
	.uaword	0x27f
	.uaword	.LFB256
	.uaword	.LFE256
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x14fa
	.uleb128 0x29
	.string	"pu8BlockIndex"
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x1237
	.uaword	.LLST23
	.uleb128 0x26
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x13e
	.uaword	0x27f
	.uaword	.LLST24
	.uleb128 0x2a
	.string	"bIsClrDone"
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x27f
	.uaword	.LLST25
	.uleb128 0x2a
	.string	"u8BlockIndex"
	.byte	0x1
	.uahalf	0x140
	.uaword	0x1b0
	.uaword	.LLST26
	.uleb128 0x26
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x141
	.uaword	0xfc8
	.uaword	.LLST27
	.uleb128 0x2b
	.uaword	.LVL48
	.uaword	0x15ab
	.uaword	0x14e4
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 2
	.byte	0
	.uleb128 0x22
	.uaword	.LVL49
	.uaword	0x15ce
	.uleb128 0x23
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.string	"g_xFRCmd"
	.byte	0x1
	.byte	0x19
	.uaword	0xfa3
	.byte	0x5
	.byte	0x3
	.uaword	g_xFRCmd
	.uleb128 0x2c
	.string	"u32WrittenSize_Index"
	.byte	0x1
	.byte	0x1a
	.uaword	0x225
	.byte	0x5
	.byte	0x3
	.uaword	u32WrittenSize_Index
	.uleb128 0x2c
	.string	"u32WrittenSize_Event"
	.byte	0x1
	.byte	0x1b
	.uaword	0x225
	.byte	0x5
	.byte	0x3
	.uaword	u32WrittenSize_Event
	.uleb128 0x2c
	.string	"u32WrittenSize_UserHead"
	.byte	0x1
	.byte	0x1c
	.uaword	0x225
	.byte	0x5
	.byte	0x3
	.uaword	u32WrittenSize_UserHead
	.uleb128 0x15
	.uaword	0xc4c
	.uaword	0x1589
	.uleb128 0x16
	.uaword	0xc66
	.byte	0x3
	.byte	0
	.uleb128 0x2d
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x7
	.byte	0xaa
	.uaword	0x15a6
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x1579
	.uleb128 0x2e
	.byte	0x1
	.string	"DFM_ptGetBlock"
	.byte	0xc
	.byte	0x3a
	.byte	0x1
	.uaword	0xfc8
	.byte	0x1
	.uaword	0x15ce
	.uleb128 0x9
	.uaword	0x225
	.byte	0
	.uleb128 0x2f
	.byte	0x1
	.string	"DFM_bPushCmdToQ"
	.byte	0xc
	.byte	0x3b
	.byte	0x1
	.uaword	0x27f
	.byte	0x1
	.uleb128 0x9
	.uaword	0xfb2
	.uleb128 0x9
	.uaword	0xdec
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x17
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
	.uleb128 0x1a
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LFE249
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LFE249
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x82
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL6-1
	.uaword	.LFE250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE250
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9
	.uaword	.LFE251
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL9
	.uaword	.LFE251
	.uahalf	0x1
	.byte	0x5c
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL15
	.uaword	.LFE251
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL14
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LFE251
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL20
	.uaword	.LFE252
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL20
	.uaword	.LFE252
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL26
	.uaword	.LFE252
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL18
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LFE252
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31
	.uaword	.LFE253
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL31
	.uaword	.LFE253
	.uahalf	0x1
	.byte	0x5d
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL37
	.uaword	.LFE253
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL29
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LFE253
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL41
	.uaword	.LFE254
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL40
	.uaword	.LVL42-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL42-1
	.uaword	.LFE254
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LFE254
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL46
	.uaword	.LFE256
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL53
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL44
	.uaword	.LVL54
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LFE256
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL47
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL53
	.uaword	.LFE256
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x62
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
	.uaword	.LFB249
	.uaword	.LFE249-.LFB249
	.uaword	.LFB250
	.uaword	.LFE250-.LFB250
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.uaword	.LFB253
	.uaword	.LFE253-.LFB253
	.uaword	.LFB254
	.uaword	.LFE254-.LFB254
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB249
	.uaword	.LFE249
	.uaword	.LFB250
	.uaword	.LFE250
	.uaword	.LFB251
	.uaword	.LFE251
	.uaword	.LFB252
	.uaword	.LFE252
	.uaword	.LFB253
	.uaword	.LFE253
	.uaword	.LFB254
	.uaword	.LFE254
	.uaword	.LFB255
	.uaword	.LFE255
	.uaword	.LFB256
	.uaword	.LFE256
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF11:
	.string	"FR_FixHead"
.LASF13:
	.string	"bOpResult"
.LASF18:
	.string	"pku8Data"
.LASF15:
	.string	"kpu8OpState"
.LASF2:
	.string	"FR_BufIndex"
.LASF1:
	.string	"FR_tExtDataOfFixHead"
.LASF7:
	.string	"DFM_VarSet"
.LASF16:
	.string	"u8WriteNum"
.LASF19:
	.string	"ku8BlockIndex"
.LASF3:
	.string	"FR_BufCfg"
.LASF6:
	.string	"FR_BankUserCfg"
.LASF5:
	.string	"FR_BankUserIf"
.LASF8:
	.string	"DFM_Block"
.LASF12:
	.string	"pkxDFM_ObjBlock"
.LASF17:
	.string	"bLoopIsEnd"
.LASF9:
	.string	"u8BlockID"
.LASF0:
	.string	"FR_tTimestamp"
.LASF14:
	.string	"kpktCfg"
.LASF4:
	.string	"FR_UserHeadCfg"
.LASF10:
	.string	"u8BlockCtr"
	.extern	DFM_bPushCmdToQ,STT_FUNC,0
	.extern	DFM_ptGetBlock,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
