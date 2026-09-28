	.file	"Diag_SeedKey.c"
.section .text,"ax",@progbits
.Ltext0:
.section .rodata.a1,"a",@progbits
.LC0:
	.byte	27
	.byte	34
	.byte	62
	.byte	65
.section .text.CompareKey_L1,"ax",@progbits
	.align 1
	.global	CompareKey_L1
	.type	CompareKey_L1, @function
CompareKey_L1:
.LFB32:
	.file 1 "ASW\\ASW_DCM\\src\\Diag_SeedKey.c"
	.loc 1 118 0
.LVL0:
	sub.a	%SP, 8
.LCFI0:
.LBB4:
.LBB5:
	.loc 1 62 0
	movh.a	%a2, hi:.LC0
	mov.aa	%a15, %SP
	lea	%a2, [%a2] lo:.LC0
		# #chunks=4, chunksize=1, remains=0
	lea	%a3, 4-1
	0:
	ld.bu	%d15, [%a2+]1
	st.b	[%a15+]1, %d15
	loop	%a3, 0b
.LVL1:
	.loc 1 71 0
	movh.a	%a2, hi:DcmSeed
	.loc 1 80 0
	ld.bu	%d15, [%a2] lo:DcmSeed
.LVL2:
	.loc 1 71 0
	lea	%a15, [%a2] lo:DcmSeed
	.loc 1 80 0
	sh	%d2, %d15, 5
	.loc 1 81 0
	sh	%d15, -3
.LVL3:
	or	%d15, %d2
	and	%d15, 255
.LVL4:
	.loc 1 84 0
	and	%d2, %d15, 170
	.loc 1 85 0
	and	%d15, %d15, 85
.LVL5:
	.loc 1 84 0
	sha	%d2, -1
	.loc 1 85 0
	sh	%d15, 1
	.loc 1 87 0
	or	%d3, %d2, %d15
.LVL6:
	.loc 1 80 0
	ld.bu	%d15, [%a15] 1
.LVL7:
	.loc 1 93 0
	and	%d3, %d3, 255
	.loc 1 80 0
	sh	%d2, %d15, 5
	.loc 1 81 0
	sh	%d15, -3
.LVL8:
	or	%d15, %d2
	and	%d15, 255
.LVL9:
	.loc 1 84 0
	and	%d2, %d15, 170
	.loc 1 85 0
	and	%d15, %d15, 85
.LVL10:
	.loc 1 84 0
	sha	%d4, %d2, -1
.LVL11:
	.loc 1 85 0
	sh	%d15, 1
	.loc 1 87 0
	or	%d2, %d4, %d15
.LVL12:
	.loc 1 80 0
	ld.bu	%d15, [%a15] 2
.LVL13:
	.loc 1 95 0
	and	%d6, %d2, 255
	.loc 1 80 0
	sh	%d4, %d15, 5
	.loc 1 81 0
	sh	%d15, -3
.LVL14:
	or	%d15, %d4
	and	%d15, 255
.LVL15:
	.loc 1 84 0
	and	%d4, %d15, 170
	.loc 1 85 0
	and	%d15, %d15, 85
.LVL16:
	.loc 1 84 0
	sha	%d4, -1
	.loc 1 85 0
	sh	%d15, 1
	.loc 1 87 0
	or	%d0, %d4, %d15
.LVL17:
	.loc 1 80 0
	ld.bu	%d15, [%a15] 3
.LVL18:
	.loc 1 95 0
	extr.u	%d7, %d2, 5, 3
	.loc 1 80 0
	sh	%d4, %d15, 5
	.loc 1 81 0
	sh	%d15, -3
.LVL19:
	or	%d15, %d4
	and	%d4, %d15, 255
.LVL20:
	.loc 1 84 0
	and	%d15, %d4, 170
	.loc 1 85 0
	and	%d4, %d4, 85
.LVL21:
	.loc 1 84 0
	sha	%d5, %d15, -1
.LVL22:
	.loc 1 85 0
	sh	%d4, 1
	.loc 1 95 0
	insert	%d7, %d7, %d3, 3, 32-3
	.loc 1 96 0
	sh	%d6, 3
	.loc 1 93 0
	sh	%d3, -5
.LVL23:
	.loc 1 95 0
	or	%d15, %d5, %d4
	.loc 1 96 0
	or	%d3, %d6
	.loc 1 93 0
	and	%d2, %d0, 255
	.loc 1 95 0
	sh	%d4, %d2, 3
	.loc 1 96 0
	st.b	[%SP] 5, %d3
.LVL24:
	.loc 1 93 0
	sh	%d2, -5
.LVL25:
	.loc 1 95 0
	sh	%d3, %d15, -5
	.loc 1 96 0
	sh	%d15, 3
	.loc 1 95 0
	or	%d3, %d4
	.loc 1 96 0
	or	%d15, %d2
	.loc 1 95 0
	st.b	[%SP] 6, %d3
	.loc 1 96 0
	st.b	[%SP] 7, %d15
.LVL26:
	.loc 1 95 0
	st.b	[%SP] 4, %d7
	.loc 1 108 0
	ld.w	%d2, [%SP] 4
	ld.w	%d15, [%SP]0
	.loc 1 111 0
	movh.a	%a2, hi:keyLocal
	.loc 1 108 0
	xnor	%d15, %d2, %d15
	.loc 1 112 0
	extr.u	%d2, %d15, 8, 8
	.loc 1 113 0
	extr.u	%d4, %d15, 16, 8
	.loc 1 111 0
	lea	%a15, [%a2] lo:keyLocal
	and	%d3, %d15, 255
	.loc 1 114 0
	sh	%d15, %d15, -24
	.loc 1 111 0
	st.b	[%a2] lo:keyLocal, %d3
	.loc 1 112 0
	st.b	[%a15] 1, %d2
	.loc 1 113 0
	st.b	[%a15] 2, %d4
	.loc 1 114 0
	st.b	[%a15] 3, %d15
.LBE5:
.LBE4:
	.loc 1 124 0
	ld.bu	%d5, [%a4]0
	jeq	%d5, %d3, .L4
.L2:
	.loc 1 138 0
	mov	%d2, 0
	ret
.L4:
	.loc 1 124 0 discriminator 1
	ld.bu	%d3, [%a4] 1
	jne	%d3, %d2, .L2
	.loc 1 124 0 is_stmt 0 discriminator 2
	ld.bu	%d2, [%a4] 2
	jne	%d2, %d4, .L2
	.loc 1 124 0 discriminator 3
	ld.bu	%d2, [%a4] 3
	jne	%d2, %d15, .L2
	.loc 1 131 0 is_stmt 1
	mov	%d15, 0
	movh.a	%a15, hi:GotSeedFlag
	st.b	[%a15] lo:GotSeedFlag, %d15
	j	.L2
.LFE32:
	.size	CompareKey_L1, .-CompareKey_L1
.section .text.GetSeed_L1,"ax",@progbits
	.align 1
	.global	GetSeed_L1
	.type	GetSeed_L1, @function
GetSeed_L1:
.LFB33:
	.loc 1 141 0
.LVL27:
	.loc 1 145 0
	ld.w	%d2, 0xf0001110
.LVL28:
	.loc 1 146 0
	movh	%d15, 45911
	addi	%d15, %d15, -23261
	xor	%d2, %d15
.LVL29:
	.loc 1 149 0
	movh.a	%a3, hi:DcmSeed
	.loc 1 147 0
	sh	%d3, %d2, 7
	.loc 1 149 0
	lea	%a15, [%a3] lo:DcmSeed
	.loc 1 147 0
	sh	%d15, %d2, -24
	.loc 1 149 0
	movh.a	%a4, hi:LastDcmSeed
.LVL30:
	.loc 1 147 0
	or	%d15, %d3
.LVL31:
	.loc 1 149 0
	ld.bu	%d2, [%a15] 3
	.loc 1 150 0
	ld.bu	%d3, [%a15] 2
	.loc 1 151 0
	ld.bu	%d4, [%a15] 1
.LVL32:
	.loc 1 149 0
	lea	%a2, [%a4] lo:LastDcmSeed
	st.b	[%a2] 3, %d2
	.loc 1 150 0
	st.b	[%a2] 2, %d3
	.loc 1 151 0
	st.b	[%a2] 1, %d4
	.loc 1 152 0
	ld.bu	%d5, [%a3] lo:DcmSeed
.LVL33:
	.loc 1 153 0
	movh.a	%a2, hi:GotSeedFlag
	ld.bu	%d6, [%a2] lo:GotSeedFlag
.LVL34:
	.loc 1 152 0
	st.b	[%a4] lo:LastDcmSeed, %d5
	.loc 1 153 0
	jeq	%d6, 1, .L8
	.loc 1 163 0
	extr.u	%d2, %d15, 8, 8
	.loc 1 162 0
	st.b	[%a15] 3, %d15
	.loc 1 163 0
	st.b	[%a15] 2, %d2
	.loc 1 164 0
	extr.u	%d2, %d15, 16, 8
	.loc 1 165 0
	sh	%d15, %d15, -24
.LVL35:
	.loc 1 164 0
	st.b	[%a15] 1, %d2
	.loc 1 165 0
	st.b	[%a3] lo:DcmSeed, %d15
	.loc 1 167 0
	st.b	[%a5]0, %d15
	.loc 1 168 0
	ld.bu	%d15, [%a15] 1
	.loc 1 186 0
	mov	%d2, 0
	.loc 1 168 0
	st.b	[%a5] 1, %d15
	.loc 1 169 0
	ld.bu	%d15, [%a15] 2
	st.b	[%a5] 2, %d15
	.loc 1 170 0
	ld.bu	%d15, [%a15] 3
	st.b	[%a5] 3, %d15
	.loc 1 171 0
	mov	%d15, 1
	st.b	[%a2] lo:GotSeedFlag, %d15
	.loc 1 186 0
	ret
.LVL36:
.L8:
	.loc 1 158 0
	st.b	[%a5] 3, %d2
	.loc 1 155 0
	st.b	[%a5]0, %d5
	.loc 1 156 0
	st.b	[%a5] 1, %d4
	.loc 1 157 0
	st.b	[%a5] 2, %d3
	.loc 1 186 0
	mov	%d2, 0
	ret
.LFE33:
	.size	GetSeed_L1, .-GetSeed_L1
.section .bss.a1.keyLocal,"aw",@nobits
	.type	keyLocal, @object
	.size	keyLocal, 4
keyLocal:
	.zero	4
	.global	DcmSeed
.section .data.a1.DcmSeed,"aw",@progbits
	.type	DcmSeed, @object
	.size	DcmSeed, 4
DcmSeed:
	.byte	16
	.byte	32
	.byte	48
	.byte	64
.section .bss.a1.LastDcmSeed,"aw",@nobits
	.type	LastDcmSeed, @object
	.size	LastDcmSeed, 4
LastDcmSeed:
	.zero	4
.section .bss.a1.GotSeedFlag,"aw",@nobits
	.type	GotSeedFlag, @object
	.size	GotSeedFlag, 1
GotSeedFlag:
	.zero	1
	.global	DcmKey_L49
.section .rodata.a1.DcmKey_L49,"a",@progbits
	.type	DcmKey_L49, @object
	.size	DcmKey_L49, 4
DcmKey_L49:
	.byte	21
	.byte	37
	.byte	53
	.byte	69
	.global	DcmKey_L5
.section .rodata.a1.DcmKey_L5,"a",@progbits
	.type	DcmKey_L5, @object
	.size	DcmKey_L5, 4
DcmKey_L5:
	.byte	20
	.byte	36
	.byte	52
	.byte	68
	.global	DcmKey_L3
.section .rodata.a1.DcmKey_L3,"a",@progbits
	.type	DcmKey_L3, @object
	.size	DcmKey_L3, 4
DcmKey_L3:
	.byte	19
	.byte	35
	.byte	51
	.byte	67
	.global	DcmKey_L2
.section .rodata.a1.DcmKey_L2,"a",@progbits
	.type	DcmKey_L2, @object
	.size	DcmKey_L2, 4
DcmKey_L2:
	.byte	18
	.byte	34
	.byte	50
	.byte	66
	.global	DcmKey_L1
.section .rodata.a1.DcmKey_L1,"a",@progbits
	.type	DcmKey_L1, @object
	.size	DcmKey_L1, 4
DcmKey_L1:
	.byte	17
	.byte	33
	.byte	49
	.byte	65
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
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.byte	0x4
	.uaword	.LCFI0-.LFB32
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxStm_regdef.h"
	.file 7 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xaa3
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_DCM\\src\\Diag_SeedKey.c"
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
	.uaword	0x1c9
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
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
	.uaword	0x223
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
	.uaword	0x1c9
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
	.uaword	0x1bc
	.uleb128 0x3
	.string	"Ifx_UReg_32Bit"
	.byte	0x4
	.byte	0x62
	.uaword	0x223
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x4
	.byte	0x65
	.uaword	0x1fd
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1bc
	.uleb128 0x5
	.uaword	0x1bc
	.uaword	0x2f4
	.uleb128 0x6
	.uaword	0x2d2
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.uaword	0x1bc
	.uleb128 0x8
	.string	"Dcm_NegativeResponseCodeType"
	.byte	0x5
	.uahalf	0x118
	.uaword	0x1bc
	.uleb128 0x8
	.string	"Dcm_OpStatusType"
	.byte	0x5
	.uahalf	0x11a
	.uaword	0x1bc
	.uleb128 0x8
	.string	"Dcm_SecLevelType"
	.byte	0x5
	.uahalf	0x122
	.uaword	0x1bc
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2f9
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2f4
	.uleb128 0x9
	.string	"_Ifx_STM_TIM0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xd8
	.uaword	0x38e
	.uleb128 0xa
	.string	"STM_31_0"
	.byte	0x6
	.byte	0xda
	.uaword	0x2a6
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_STM_TIM0_Bits"
	.byte	0x6
	.byte	0xdb
	.uaword	0x35c
	.uleb128 0xb
	.byte	0x4
	.byte	0x6
	.uahalf	0x17d
	.uaword	0x3cf
	.uleb128 0xc
	.string	"U"
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x2a6
	.uleb128 0xc
	.string	"I"
	.byte	0x6
	.uahalf	0x180
	.uaword	0x2bc
	.uleb128 0xc
	.string	"B"
	.byte	0x6
	.uahalf	0x181
	.uaword	0x38e
	.byte	0
	.uleb128 0x8
	.string	"Ifx_STM_TIM0"
	.byte	0x6
	.uahalf	0x182
	.uaword	0x3a7
	.uleb128 0xd
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x7
	.byte	0x15
	.uaword	0x49f
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.byte	0x7
	.byte	0x1f
	.uaword	0x517
	.uleb128 0xe
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0xe
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0xe
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0xe
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0xe
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0xd
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x7
	.byte	0x27
	.uaword	0x754
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0xe
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0x7
	.uaword	0x215
	.uleb128 0x10
	.string	"_Acc_UdsDemoCalculateKey"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.byte	0x1
	.uaword	0x7df
	.uleb128 0x11
	.string	"key"
	.byte	0x1
	.byte	0x3c
	.uaword	0x2de
	.uleb128 0x12
	.string	"u8Coef"
	.byte	0x1
	.byte	0x3e
	.uaword	0x7df
	.uleb128 0x12
	.string	"i"
	.byte	0x1
	.byte	0x3f
	.uaword	0x1bc
	.uleb128 0x12
	.string	"u8Temp"
	.byte	0x1
	.byte	0x41
	.uaword	0x1bc
	.uleb128 0x12
	.string	"u8BitHigh"
	.byte	0x1
	.byte	0x42
	.uaword	0x1bc
	.uleb128 0x12
	.string	"u8BitLow"
	.byte	0x1
	.byte	0x43
	.uaword	0x1bc
	.uleb128 0x12
	.string	"u8SeedTemp"
	.byte	0x1
	.byte	0x44
	.uaword	0x2e4
	.byte	0
	.uleb128 0x7
	.uaword	0x2e4
	.uleb128 0x13
	.byte	0x1
	.string	"CompareKey_L1"
	.byte	0x1
	.byte	0x75
	.byte	0x1
	.uaword	0x290
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x8b1
	.uleb128 0x14
	.string	"KeyLen_32"
	.byte	0x1
	.byte	0x75
	.uaword	0x215
	.uaword	.LLST1
	.uleb128 0x15
	.string	"Key"
	.byte	0x1
	.byte	0x75
	.uaword	0x356
	.byte	0x1
	.byte	0x64
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x1
	.byte	0x75
	.uaword	0x31e
	.uaword	.LLST2
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.byte	0x75
	.uaword	0x350
	.byte	0x1
	.byte	0x65
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.byte	0x78
	.uaword	0x290
	.byte	0
	.uleb128 0x19
	.uaword	0x759
	.uaword	.LBB4
	.uaword	.LBE4
	.byte	0x1
	.byte	0x7a
	.uleb128 0x1a
	.uaword	0x77b
	.byte	0x6
	.byte	0x3
	.uaword	keyLocal
	.byte	0x9f
	.uleb128 0x1b
	.uaword	.LBB5
	.uaword	.LBE5
	.uleb128 0x1c
	.uaword	0x786
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.uleb128 0x1d
	.uaword	0x794
	.uaword	.LLST3
	.uleb128 0x1d
	.uaword	0x79d
	.uaword	.LLST4
	.uleb128 0x1d
	.uaword	0x7ab
	.uaword	.LLST5
	.uleb128 0x1d
	.uaword	0x7bc
	.uaword	.LLST6
	.uleb128 0x1c
	.uaword	0x7cc
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"GetSeed_L1"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uaword	0x290
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x997
	.uleb128 0x14
	.string	"SecLevel_u8"
	.byte	0x1
	.byte	0x8c
	.uaword	0x337
	.uaword	.LLST7
	.uleb128 0x14
	.string	"Seedlen_u32"
	.byte	0x1
	.byte	0x8c
	.uaword	0x215
	.uaword	.LLST8
	.uleb128 0x14
	.string	"AccDataRecsize_u32"
	.byte	0x1
	.byte	0x8c
	.uaword	0x215
	.uaword	.LLST9
	.uleb128 0x14
	.string	"SecurityAccessDataRecord"
	.byte	0x1
	.byte	0x8c
	.uaword	0x2de
	.uaword	.LLST10
	.uleb128 0x15
	.string	"Seed"
	.byte	0x1
	.byte	0x8c
	.uaword	0x2de
	.byte	0x1
	.byte	0x65
	.uleb128 0x17
	.uaword	.LASF0
	.byte	0x1
	.byte	0x8c
	.uaword	0x31e
	.byte	0x1
	.byte	0x57
	.uleb128 0x17
	.uaword	.LASF1
	.byte	0x1
	.byte	0x8c
	.uaword	0x350
	.byte	0x1
	.byte	0x66
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8e
	.uaword	0x290
	.byte	0
	.uleb128 0x1f
	.string	"u32LocalSeedValue"
	.byte	0x1
	.byte	0x8f
	.uaword	0x215
	.uaword	.LLST11
	.byte	0
	.uleb128 0x20
	.string	"GotSeedFlag"
	.byte	0x1
	.byte	0x2e
	.uaword	0x260
	.byte	0x5
	.byte	0x3
	.uaword	GotSeedFlag
	.uleb128 0x20
	.string	"LastDcmSeed"
	.byte	0x1
	.byte	0x2f
	.uaword	0x2e4
	.byte	0x5
	.byte	0x3
	.uaword	LastDcmSeed
	.uleb128 0x21
	.string	"UDS_ku32LocLevel01"
	.byte	0x1
	.byte	0x32
	.uaword	0x754
	.sleb128 -1286167261
	.uleb128 0x20
	.string	"keyLocal"
	.byte	0x1
	.byte	0x36
	.uaword	0x2e4
	.byte	0x5
	.byte	0x3
	.uaword	keyLocal
	.uleb128 0x22
	.string	"DcmKey_L1"
	.byte	0x1
	.byte	0x25
	.uaword	0xa16
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DcmKey_L1
	.uleb128 0x7
	.uaword	0x2e4
	.uleb128 0x22
	.string	"DcmKey_L2"
	.byte	0x1
	.byte	0x26
	.uaword	0xa33
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DcmKey_L2
	.uleb128 0x7
	.uaword	0x2e4
	.uleb128 0x22
	.string	"DcmKey_L3"
	.byte	0x1
	.byte	0x27
	.uaword	0xa50
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DcmKey_L3
	.uleb128 0x7
	.uaword	0x2e4
	.uleb128 0x22
	.string	"DcmKey_L5"
	.byte	0x1
	.byte	0x28
	.uaword	0xa6d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DcmKey_L5
	.uleb128 0x7
	.uaword	0x2e4
	.uleb128 0x22
	.string	"DcmKey_L49"
	.byte	0x1
	.byte	0x29
	.uaword	0xa8b
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DcmKey_L49
	.uleb128 0x7
	.uaword	0x2e4
	.uleb128 0x22
	.string	"DcmSeed"
	.byte	0x1
	.byte	0x31
	.uaword	0x2e4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DcmSeed
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x17
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
	.uleb128 0xc
	.uleb128 0xd
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x21
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uaword	.LFB32
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE32
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LFE32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL22
	.uaword	.LFE32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0xa
	.byte	0x3
	.uaword	DcmSeed
	.byte	0x94
	.byte	0x1
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL13
	.uahalf	0xa
	.byte	0x3
	.uaword	DcmSeed+1
	.byte	0x94
	.byte	0x1
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL18
	.uahalf	0xa
	.byte	0x3
	.uaword	DcmSeed+2
	.byte	0x94
	.byte	0x1
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0xa
	.byte	0x3
	.uaword	DcmSeed+3
	.byte	0x94
	.byte	0x1
	.byte	0x35
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x46
	.byte	0x3
	.uaword	DcmSeed
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x3
	.uaword	DcmSeed
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x9
	.byte	0xaa
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x26
	.byte	0x3
	.uaword	DcmSeed
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x3
	.uaword	DcmSeed
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x8
	.byte	0x55
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x21
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x5
	.byte	0x72
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LFE32
	.uahalf	0x5
	.byte	0x70
	.sleb128 0
	.byte	0x35
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xaa
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1f
	.byte	0x3
	.uaword	DcmSeed
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x3
	.uaword	DcmSeed
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x9
	.byte	0xaa
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xaa
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL15
	.uahalf	0x1f
	.byte	0x3
	.uaword	DcmSeed+1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x3
	.uaword	DcmSeed+1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x9
	.byte	0xaa
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0xaa
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x1f
	.byte	0x3
	.uaword	DcmSeed+2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x3
	.uaword	DcmSeed+2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x9
	.byte	0xaa
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xaa
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE32
	.uahalf	0x1f
	.byte	0x3
	.uaword	DcmSeed+3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x3
	.uaword	DcmSeed+3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x9
	.byte	0xaa
	.byte	0x1a
	.byte	0x31
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x55
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL9
	.uahalf	0x1f
	.byte	0x3
	.uaword	DcmSeed
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x3
	.uaword	DcmSeed
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x8
	.byte	0x55
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x55
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL15
	.uahalf	0x1f
	.byte	0x3
	.uaword	DcmSeed+1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x3
	.uaword	DcmSeed+1
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x8
	.byte	0x55
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x55
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL20
	.uahalf	0x1f
	.byte	0x3
	.uaword	DcmSeed+2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x3
	.uaword	DcmSeed+2
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x8
	.byte	0x55
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0x55
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LFE32
	.uahalf	0x1f
	.byte	0x3
	.uaword	DcmSeed+3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x33
	.byte	0x25
	.byte	0x3
	.uaword	DcmSeed+3
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x35
	.byte	0x24
	.byte	0x21
	.byte	0x8
	.byte	0x55
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL27
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL32
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL27
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL33
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL27
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL34
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30
	.uaword	.LFE33
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL28
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL36
	.uaword	.LFE33
	.uahalf	0x1
	.byte	0x5f
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
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"OpStatus"
.LASF1:
	.string	"ErrorCode"
.LASF2:
	.string	"retValue"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
