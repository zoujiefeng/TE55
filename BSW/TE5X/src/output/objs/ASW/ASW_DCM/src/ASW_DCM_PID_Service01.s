	.file	"ASW_DCM_PID_Service01.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Dcm_OBD04_DTCClrInhibit,"ax",@progbits
	.align 1
	.global	Dcm_OBD04_DTCClrInhibit
	.type	Dcm_OBD04_DTCClrInhibit, @function
Dcm_OBD04_DTCClrInhibit:
.LFB19:
	.file 1 "ASW\\ASW_DCM\\src\\ASW_DCM_PID_Service01.c"
	.loc 1 56 0
.LVL0:
	.loc 1 73 0
	mov	%d2, 1
	ret
.LFE19:
	.size	Dcm_OBD04_DTCClrInhibit, .-Dcm_OBD04_DTCClrInhibit
.section .text.DataServices_R_PID_04_ReadData,"ax",@progbits
	.align 1
	.global	DataServices_R_PID_04_ReadData
	.type	DataServices_R_PID_04_ReadData, @function
DataServices_R_PID_04_ReadData:
.LFB20:
	.loc 1 82 0
.LVL1:
	.loc 1 117 0
	mov	%d2, 0
	ret
.LFE20:
	.size	DataServices_R_PID_04_ReadData, .-DataServices_R_PID_04_ReadData
.section .text.DataServices_R_PID_05_ReadData,"ax",@progbits
	.align 1
	.global	DataServices_R_PID_05_ReadData
	.type	DataServices_R_PID_05_ReadData, @function
DataServices_R_PID_05_ReadData:
.LFB21:
	.loc 1 126 0
.LVL2:
	.loc 1 168 0
	mov	%d2, 0
	ret
.LFE21:
	.size	DataServices_R_PID_05_ReadData, .-DataServices_R_PID_05_ReadData
.section .text.DataServices_R_PID_0C_ReadData,"ax",@progbits
	.align 1
	.global	DataServices_R_PID_0C_ReadData
	.type	DataServices_R_PID_0C_ReadData, @function
DataServices_R_PID_0C_ReadData:
.LFB22:
	.loc 1 177 0
.LVL3:
	.loc 1 223 0
	mov	%d2, 0
	ret
.LFE22:
	.size	DataServices_R_PID_0C_ReadData, .-DataServices_R_PID_0C_ReadData
.section .text.DataServices_R_PID_0D_ReadData,"ax",@progbits
	.align 1
	.global	DataServices_R_PID_0D_ReadData
	.type	DataServices_R_PID_0D_ReadData, @function
DataServices_R_PID_0D_ReadData:
.LFB23:
	.loc 1 232 0
.LVL4:
	.loc 1 274 0
	mov	%d2, 0
	ret
.LFE23:
	.size	DataServices_R_PID_0D_ReadData, .-DataServices_R_PID_0D_ReadData
.section .text.DataServices_R_PID_21_ReadData,"ax",@progbits
	.align 1
	.global	DataServices_R_PID_21_ReadData
	.type	DataServices_R_PID_21_ReadData, @function
DataServices_R_PID_21_ReadData:
.LFB24:
	.loc 1 283 0
.LVL5:
	sub.a	%SP, 8
.LCFI0:
	.loc 1 289 0
	mov	%d15, 0
	.loc 1 283 0
	mov.aa	%a15, %a4
	.loc 1 290 0
	lea	%a4, [%SP] 8
.LVL6:
	st.b	[+%a4]-5, %d15
.LVL7:
	.loc 1 289 0
	st.w	[%SP] 4, %d15
	.loc 1 315 0
	call	Dem_DcmReadCntSetDataOfPID21_User
.LVL8:
	.loc 1 316 0
	ld.bu	%d3, [%SP] 3
	mov	%d2, 0
	jeq	%d3, 1, .L11
.L7:
.LVL9:
	.loc 1 343 0
	st.b	[%a15] 1, %d2
	.loc 1 342 0
	st.b	[%a15]0, %d15
	.loc 1 349 0
	mov	%d2, 0
	ret
.LVL10:
.L11:
	.loc 1 318 0
	lea	%a4, [%SP] 4
	call	Dem_DcmReadDataOfPID21_User
.LVL11:
	.loc 1 328 0
	ld.w	%d3, [%SP] 4
	movh	%d4, 1
	mov	%d15, 255
	mov	%d2, 255
	jge.u	%d3, %d4, .L7
.LVL12:
	extr.u	%d15, %d3, 8, 8
	and	%d2, %d3, 255
.LVL13:
	.loc 1 343 0
	st.b	[%a15] 1, %d2
	.loc 1 342 0
	st.b	[%a15]0, %d15
	.loc 1 349 0
	mov	%d2, 0
	ret
.LFE24:
	.size	DataServices_R_PID_21_ReadData, .-DataServices_R_PID_21_ReadData
.section .text.DataServices_R_PID_30_ReadData,"ax",@progbits
	.align 1
	.global	DataServices_R_PID_30_ReadData
	.type	DataServices_R_PID_30_ReadData, @function
DataServices_R_PID_30_ReadData:
.LFB25:
	.loc 1 358 0
.LVL14:
	.loc 1 387 0
	j	Dem_DcmReadDataOfPID30
.LVL15:
.LFE25:
	.size	DataServices_R_PID_30_ReadData, .-DataServices_R_PID_30_ReadData
.section .text.DataServices_R_PID_31_ReadData,"ax",@progbits
	.align 1
	.global	DataServices_R_PID_31_ReadData
	.type	DataServices_R_PID_31_ReadData, @function
DataServices_R_PID_31_ReadData:
.LFB26:
	.loc 1 402 0
.LVL16:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 408 0
	mov	%d15, 0
	.loc 1 402 0
	mov.aa	%a15, %a4
	.loc 1 408 0
	lea	%a4, [%SP] 8
.LVL17:
	st.w	[+%a4]-4, %d15
.LVL18:
	.loc 1 433 0
	call	Dem_DcmReadDataOfPID31_User
.LVL19:
	.loc 1 444 0
	ld.w	%d15, [%SP] 4
	movh	%d4, 1
	insert	%d2, %d15, 0, 31, 1
	mov	%d3, 255
	mov	%d5, 255
	jge.u	%d2, %d4, .L14
.LVL20:
	extr.u	%d3, %d15, 8, 8
	and	%d5, %d15, 255
.LVL21:
.L14:
	.loc 1 453 0
	st.b	[%a15]0, %d3
	.loc 1 454 0
	st.b	[%a15] 1, %d5
	.loc 1 460 0
	mov	%d2, 0
	ret
.LFE26:
	.size	DataServices_R_PID_31_ReadData, .-DataServices_R_PID_31_ReadData
.section .text.DataServices_R_PID_41_ReadData,"ax",@progbits
	.align 1
	.global	DataServices_R_PID_41_ReadData
	.type	DataServices_R_PID_41_ReadData, @function
DataServices_R_PID_41_ReadData:
.LFB27:
	.loc 1 469 0
.LVL22:
	.loc 1 498 0
	call	Dem_DcmReadDataOfPID41
.LVL23:
	.loc 1 504 0
	mov	%d2, 0
	ret
.LFE27:
	.size	DataServices_R_PID_41_ReadData, .-DataServices_R_PID_41_ReadData
.section .text.DataServices_R_PID_42_ReadData,"ax",@progbits
	.align 1
	.global	DataServices_R_PID_42_ReadData
	.type	DataServices_R_PID_42_ReadData, @function
DataServices_R_PID_42_ReadData:
.LFB28:
	.loc 1 513 0
.LVL24:
	.loc 1 563 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
	.loc 1 564 0
	mov	%d15, -123
	st.b	[%a4] 1, %d15
	.loc 1 570 0
	mov	%d2, 0
	ret
.LFE28:
	.size	DataServices_R_PID_42_ReadData, .-DataServices_R_PID_42_ReadData
.section .text.DataServices_R_PID_49_ReadData,"ax",@progbits
	.align 1
	.global	DataServices_R_PID_49_ReadData
	.type	DataServices_R_PID_49_ReadData, @function
DataServices_R_PID_49_ReadData:
.LFB29:
	.loc 1 579 0
.LVL25:
	.loc 1 614 0
	mov	%d2, 0
	ret
.LFE29:
	.size	DataServices_R_PID_49_ReadData, .-DataServices_R_PID_49_ReadData
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
	.byte	0x4
	.uaword	.LCFI0-.LFB24
	.byte	0xe
	.uleb128 0x8
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
	.byte	0x4
	.uaword	.LCFI1-.LFB26
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE20:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Rba_DemObdBasic\\api\\rba_DemObdBasic_Dcm.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x875
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_DCM\\src\\ASW_DCM_PID_Service01.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
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
	.uaword	0x1b6
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1c7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1dd
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x75
	.uaword	0x27f
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
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
	.uaword	0x21c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21c
	.uleb128 0x5
	.byte	0x1
	.string	"Dcm_OBD04_DTCClrInhibit"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x315
	.uleb128 0x6
	.string	"u8LocREsult"
	.byte	0x1
	.byte	0x39
	.uaword	0x2b3
	.byte	0x1
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"DataServices_R_PID_04_ReadData"
	.byte	0x1
	.byte	0x4e
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x367
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0x50
	.uaword	0x2c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5a
	.uaword	0x2b3
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"DataServices_R_PID_05_ReadData"
	.byte	0x1
	.byte	0x7a
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3b9
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0x7c
	.uaword	0x2c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0x86
	.uaword	0x2b3
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"DataServices_R_PID_0C_ReadData"
	.byte	0x1
	.byte	0xad
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x40b
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0xaf
	.uaword	0x2c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0xbb
	.uaword	0x2b3
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"DataServices_R_PID_0D_ReadData"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x45d
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0xe6
	.uaword	0x2c9
	.byte	0x1
	.byte	0x64
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x1
	.byte	0xf0
	.uaword	0x2b3
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"DataServices_R_PID_21_ReadData"
	.byte	0x1
	.uahalf	0x117
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x521
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x119
	.uaword	0x2c9
	.uaword	.LLST1
	.uleb128 0xb
	.string	"u32TempPID21"
	.byte	0x1
	.uahalf	0x121
	.uaword	0x248
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xb
	.string	"u8TempCntSet"
	.byte	0x1
	.uahalf	0x122
	.uaword	0x21c
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.uleb128 0xc
	.string	"u16PID21Val"
	.byte	0x1
	.uahalf	0x123
	.uaword	0x229
	.uaword	.LLST2
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x126
	.uaword	0x2b3
	.byte	0
	.uleb128 0xe
	.uaword	.LVL8
	.uaword	0x790
	.uaword	0x510
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -5
	.byte	0
	.uleb128 0x10
	.uaword	.LVL11
	.uaword	0x7c6
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"DataServices_R_PID_30_ReadData"
	.byte	0x1
	.uahalf	0x162
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x58a
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x164
	.uaword	0x2c9
	.uaword	.LLST3
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x16e
	.uaword	0x2b3
	.byte	0
	.uleb128 0x12
	.uaword	.LVL15
	.byte	0x1
	.uaword	0x7f6
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"DataServices_R_PID_31_ReadData"
	.byte	0x1
	.uahalf	0x18e
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LLST4
	.byte	0x1
	.uaword	0x622
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x190
	.uaword	0x2c9
	.uaword	.LLST5
	.uleb128 0xb
	.string	"u32TempPID31"
	.byte	0x1
	.uahalf	0x198
	.uaword	0x248
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0xc
	.string	"u16PID31Val"
	.byte	0x1
	.uahalf	0x199
	.uaword	0x229
	.uaword	.LLST6
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x19c
	.uaword	0x2b3
	.byte	0
	.uleb128 0x10
	.uaword	.LVL19
	.uaword	0x821
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"DataServices_R_PID_41_ReadData"
	.byte	0x1
	.uahalf	0x1d1
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x68a
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1d3
	.uaword	0x2c9
	.uaword	.LLST7
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1dd
	.uaword	0x2b3
	.byte	0
	.uleb128 0x10
	.uaword	.LVL23
	.uaword	0x851
	.uleb128 0xf
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"DataServices_R_PID_42_ReadData"
	.byte	0x1
	.uahalf	0x1fd
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x73b
	.uleb128 0xa
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1ff
	.uaword	0x2c9
	.uaword	.LLST8
	.uleb128 0x13
	.string	"u16LocAdcRaw"
	.byte	0x1
	.uahalf	0x207
	.uaword	0x229
	.byte	0
	.uleb128 0x14
	.string	"f32LocBatValAd"
	.byte	0x1
	.uahalf	0x208
	.uaword	0x270
	.byte	0x4
	.uaword	0x43059999
	.uleb128 0x13
	.string	"TempVal"
	.byte	0x1
	.uahalf	0x209
	.uaword	0x229
	.byte	0x85
	.uleb128 0xb
	.string	"TempPtr"
	.byte	0x1
	.uahalf	0x20a
	.uaword	0x2c9
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1797
	.sleb128 0
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x20d
	.uaword	0x2b3
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"DataServices_R_PID_49_ReadData"
	.byte	0x1
	.uahalf	0x23f
	.byte	0x1
	.uaword	0x2b3
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x790
	.uleb128 0x15
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x241
	.uaword	0x2c9
	.byte	0x1
	.byte	0x64
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x24b
	.uaword	0x2b3
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"Dem_DcmReadCntSetDataOfPID21_User"
	.byte	0x1
	.byte	0x26
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uaword	0x7c6
	.uleb128 0x17
	.uaword	0x2c9
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"Dem_DcmReadDataOfPID21_User"
	.byte	0x1
	.byte	0x24
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uaword	0x7f6
	.uleb128 0x17
	.uaword	0x2c9
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"Dem_DcmReadDataOfPID30"
	.byte	0x4
	.byte	0x7b
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uaword	0x821
	.uleb128 0x17
	.uaword	0x2c9
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"Dem_DcmReadDataOfPID31_User"
	.byte	0x1
	.byte	0x25
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uaword	0x851
	.uleb128 0x17
	.uaword	0x2c9
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Dem_DcmReadDataOfPID41"
	.byte	0x4
	.byte	0x8b
	.byte	0x1
	.uaword	0x2b3
	.byte	0x1
	.uleb128 0x17
	.uaword	0x2c9
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x6
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
	.uleb128 0x5
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x10
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uaword	.LFB24
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE24
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL13
	.uaword	.LFE24
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15-1
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LFB26
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL21
	.uaword	.LFE26
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL22
	.uaword	.LVL23-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23-1
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL24
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL24
	.uaword	.LFE28
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x6c
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
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
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
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"Data"
.LASF0:
	.string	"retValue"
	.extern	Dem_DcmReadDataOfPID41,STT_FUNC,0
	.extern	Dem_DcmReadDataOfPID31_User,STT_FUNC,0
	.extern	Dem_DcmReadDataOfPID30,STT_FUNC,0
	.extern	Dem_DcmReadDataOfPID21_User,STT_FUNC,0
	.extern	Dem_DcmReadCntSetDataOfPID21_User,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
