	.file	"HtxSfrTstCmp.c"
.section .text,"ax",@progbits
.Ltext0:
.section Code.Cpu0,"ax",@progbits
	.align 1
	.global	HtxSfrTst_TestCmp
	.type	HtxSfrTst_TestCmp, @function
HtxSfrTst_TestCmp:
.LFB19:
	.file 1 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\01_HtxSfrTst\\src\\HtxSfrTstCmp.c"
	.loc 1 146 0
.LVL0:
.LBB20:
.LBB21:
	.file 2 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
	.loc 2 211 0
	mov	%d15, 2
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d5, %d15, %d5
	# 0 "" 2
.LVL1:
#NO_APP
.LBE21:
.LBE20:
	.loc 1 150 0
	st.w	[%a4]0, %d5
.LVL2:
.LBB22:
.LBB23:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d5, %d5, %d4
	# 0 "" 2
.LVL3:
#NO_APP
.LBE23:
.LBE22:
	.loc 1 164 0
	movh	%d2, 3
	.loc 1 153 0
	st.w	[%a4]0, %d5
.LVL4:
	.loc 1 164 0
	addi	%d2, %d2, -24318
	.loc 1 156 0
	jlt.u	%d4, 5, .L14
.LVL5:
	.loc 1 169 0
	ret
.LVL6:
.L14:
.LBB24:
.LBB25:
	.loc 1 219 0
	movh.a	%a15, hi:HtxSfrTst_kConfigSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:HtxSfrTst_kConfigSet
	madd	%d3, %d15, %d4, 20
	mov	%d15, 4096
	.loc 1 216 0
	insert	%d2, %d15, 11, 14, 4
	.loc 1 219 0
	mov.a	%a15, %d3
	ld.w	%d1, [%a15]0
	jlt.u	%d1, %d15, .L15
.LVL7:
.L3:
.LBB26:
.LBB27:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d5, %d5, %d2
	# 0 "" 2
.LVL8:
#NO_APP
.LBE27:
.LBE26:
	.loc 1 270 0
	st.w	[%a4]0, %d5
.LVL9:
.LBE25:
.LBE24:
	.loc 1 169 0
	ret
.LVL10:
.L15:
.LBB31:
.LBB30:
	.loc 1 225 0
	mov.a	%a3, %d3
	.loc 1 219 0
	mov	%d15, 0
	ne	%d6, %d1, 0
	.loc 1 222 0
	mov	%d0, %d2
	.loc 1 225 0
	lea	%a2, [%a15] 12
	.loc 1 250 0
	addi	%d8, %d2, -4096
.LVL11:
.L4:
	.loc 1 222 0
	eq	%d3, %d2, %d0
	and	%d3, %d6
	jz	%d3, .L16
.L9:
	.loc 1 225 0
	ld.w	%d2, [%a2]0
.LVL12:
	madd	%d3, %d2, %d15, 16
	mov.a	%a15, %d3
	ld.bu	%d2, [%a15] 12
	.loc 1 231 0
	ld.a	%a5, [%a15]0
	.loc 1 225 0
	jeq	%d2, 1, .L17
	.loc 1 243 0
	ld.w	%d2, [%a15] 8
	.loc 1 239 0
	ld.w	%d3, [%a5]0
.LVL13:
	.loc 1 247 0
	ld.w	%d7, [%a15] 4
	.loc 1 244 0
	and	%d3, %d2
.LVL14:
	.loc 1 247 0
	and	%d2, %d7
.LVL15:
	jeq	%d3, %d2, .L7
.LVL16:
.L18:
	.loc 1 250 0
	or	%d2, %d15, %d8
.LVL17:
	.loc 1 222 0
	eq	%d3, %d2, %d0
.LVL18:
	and	%d3, %d6
	jnz	%d3, .L9
.L16:
	.loc 1 263 0
	movh	%d3, 2
	ne	%d15, %d1, %d15
.LVL19:
	addi	%d3, %d3, 511
	cmovn	%d2, %d15, %d3
.LVL20:
	j	.L3
.LVL21:
.L17:
	.loc 1 243 0
	ld.w	%d2, [%a15] 8
	.loc 1 231 0
	ld.hu	%d3, [%a5]0
.LVL22:
	.loc 1 247 0
	ld.w	%d7, [%a15] 4
	.loc 1 244 0
	and	%d3, %d2
.LVL23:
	.loc 1 247 0
	and	%d2, %d7
.LVL24:
	jne	%d3, %d2, .L18
.LVL25:
.L7:
	.loc 1 254 0
	add	%d15, 1
.LVL26:
.LBB28:
.LBB29:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d5, %d5, %d15
	# 0 "" 2
.LVL27:
#NO_APP
	ld.w	%d1, [%a3]0
.LBE29:
.LBE28:
	.loc 1 255 0
	movh	%d2, 3
	st.w	[%a4]0, %d5
	addi	%d2, %d2, -12288
	lt.u	%d6, %d15, %d1
	j	.L4
.LBE30:
.LBE31:
.LFE19:
	.size	HtxSfrTst_TestCmp, .-HtxSfrTst_TestCmp
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
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\StpEBGenSrc\\inc\\HtxSfrTst_Cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x6d3
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\01_HtxSfrTst\\src\\HtxSfrTstCmp.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x3
	.byte	0x51
	.uaword	0x21d
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
	.uaword	0x249
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
	.byte	0x3
	.byte	0x6a
	.uaword	0x285
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"HtxTestHnd_TstRsltType"
	.byte	0x4
	.byte	0x97
	.uaword	0x277
	.uleb128 0x4
	.uaword	.LASF0
	.byte	0x10
	.byte	0x5
	.byte	0x41
	.uaword	0x37e
	.uleb128 0x5
	.string	"RegisterAddress"
	.byte	0x5
	.byte	0x44
	.uaword	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RegisterValue"
	.byte	0x5
	.byte	0x46
	.uaword	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"RegisterMask"
	.byte	0x5
	.byte	0x48
	.uaword	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"RegisterBitWidth"
	.byte	0x5
	.byte	0x4a
	.uaword	0x210
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x384
	.uleb128 0x7
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x5
	.byte	0x4b
	.uaword	0x30d
	.uleb128 0x3
	.string	"HtxSfrTst_MfcrFuncPtrType"
	.byte	0x5
	.byte	0x4d
	.uaword	0x3b1
	.uleb128 0x6
	.byte	0x4
	.uaword	0x3b7
	.uleb128 0x9
	.byte	0x1
	.uaword	0x277
	.uleb128 0x4
	.uaword	.LASF1
	.byte	0x14
	.byte	0x5
	.byte	0x4f
	.uaword	0x436
	.uleb128 0x5
	.string	"NumOfSfr"
	.byte	0x5
	.byte	0x52
	.uaword	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"NumOfCpuSfr"
	.byte	0x5
	.byte	0x54
	.uaword	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"ExpectedCRCResult"
	.byte	0x5
	.byte	0x56
	.uaword	0x277
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"SfrList"
	.byte	0x5
	.byte	0x58
	.uaword	0x436
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"CpuSfrList"
	.byte	0x5
	.byte	0x5a
	.uaword	0x441
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0x6
	.byte	0x4
	.uaword	0x43c
	.uleb128 0xa
	.uaword	0x385
	.uleb128 0x6
	.byte	0x4
	.uaword	0x447
	.uleb128 0xa
	.uaword	0x390
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x5
	.byte	0x5b
	.uaword	0x3bd
	.uleb128 0xb
	.string	"__crc32bw"
	.byte	0x2
	.byte	0xd1
	.byte	0x1
	.uaword	0x285
	.byte	0x3
	.uaword	0x48c
	.uleb128 0xc
	.string	"b"
	.byte	0x2
	.byte	0xd1
	.uaword	0x285
	.uleb128 0xc
	.string	"a"
	.byte	0x2
	.byte	0xd1
	.uaword	0x285
	.uleb128 0xd
	.string	"res"
	.byte	0x2
	.byte	0xd2
	.uaword	0x285
	.byte	0
	.uleb128 0xb
	.string	"HtxSfrTst_lSfrCmpTst"
	.byte	0x1
	.byte	0xcd
	.byte	0x1
	.uaword	0x2ef
	.byte	0x1
	.uaword	0x503
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0xcf
	.uaword	0x503
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.byte	0xd0
	.uaword	0x508
	.uleb128 0xd
	.string	"Result"
	.byte	0x1
	.byte	0xd3
	.uaword	0x2ef
	.uleb128 0xd
	.string	"Mask"
	.byte	0x1
	.byte	0xd4
	.uaword	0x277
	.uleb128 0xd
	.string	"CurrentRegValue"
	.byte	0x1
	.byte	0xd5
	.uaword	0x277
	.uleb128 0xd
	.string	"Index"
	.byte	0x1
	.byte	0xd6
	.uaword	0x277
	.byte	0
	.uleb128 0xa
	.uaword	0x210
	.uleb128 0xa
	.uaword	0x50d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x277
	.uleb128 0xf
	.byte	0x1
	.string	"HtxSfrTst_TestCmp"
	.byte	0x1
	.byte	0x8c
	.byte	0x1
	.uaword	0x2ef
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6a3
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.byte	0x8e
	.uaword	0x503
	.byte	0x1
	.byte	0x54
	.uleb128 0x11
	.string	"TstSeed"
	.byte	0x1
	.byte	0x8f
	.uaword	0x503
	.uaword	.LLST0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.byte	0x90
	.uaword	0x508
	.byte	0x1
	.byte	0x64
	.uleb128 0x12
	.string	"Result"
	.byte	0x1
	.byte	0x93
	.uaword	0x2ef
	.uaword	.LLST1
	.uleb128 0x13
	.uaword	0x457
	.uaword	.LBB20
	.uaword	.LBE20
	.byte	0x1
	.byte	0x96
	.uaword	0x5b3
	.uleb128 0x14
	.uaword	0x477
	.uaword	.LLST2
	.uleb128 0x15
	.uaword	0x46e
	.byte	0x2
	.uleb128 0x16
	.uaword	.LBB21
	.uaword	.LBE21
	.uleb128 0x17
	.uaword	0x480
	.uaword	.LLST3
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x457
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.byte	0x99
	.uaword	0x5ef
	.uleb128 0x18
	.uaword	0x477
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x14
	.uaword	0x46e
	.uaword	.LLST4
	.uleb128 0x16
	.uaword	.LBB23
	.uaword	.LBE23
	.uleb128 0x17
	.uaword	0x480
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x48c
	.uaword	.LBB24
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x9f
	.uleb128 0x18
	.uaword	0x4b9
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.uaword	0x4ae
	.byte	0x1
	.byte	0x54
	.uleb128 0x1a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x17
	.uaword	0x4c4
	.uaword	.LLST6
	.uleb128 0x17
	.uaword	0x4d2
	.uaword	.LLST7
	.uleb128 0x17
	.uaword	0x4de
	.uaword	.LLST8
	.uleb128 0x17
	.uaword	0x4f5
	.uaword	.LLST9
	.uleb128 0x1b
	.uaword	0x457
	.uaword	.LBB26
	.uaword	.LBE26
	.byte	0x1
	.uahalf	0x10e
	.uaword	0x66f
	.uleb128 0x14
	.uaword	0x477
	.uaword	.LLST10
	.uleb128 0x14
	.uaword	0x46e
	.uaword	.LLST11
	.uleb128 0x16
	.uaword	.LBB27
	.uaword	.LBE27
	.uleb128 0x17
	.uaword	0x480
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0x457
	.uaword	.LBB28
	.uaword	.LBE28
	.byte	0x1
	.byte	0xff
	.uleb128 0x18
	.uaword	0x477
	.byte	0x1
	.byte	0x5f
	.uleb128 0x14
	.uaword	0x46e
	.uaword	.LLST13
	.uleb128 0x16
	.uaword	.LBB29
	.uaword	.LBE29
	.uleb128 0x1d
	.uaword	0x480
	.byte	0x1
	.byte	0x55
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uaword	0x44c
	.uaword	0x6b3
	.uleb128 0x1f
	.uaword	0x2e3
	.byte	0x4
	.byte	0
	.uleb128 0x20
	.string	"HtxSfrTst_kConfigSet"
	.byte	0x5
	.byte	0x6e
	.uaword	0x6d1
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x6a3
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LFE19
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x5
	.byte	0x8
	.byte	0xb4
	.byte	0x3a
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x5
	.byte	0x8
	.byte	0xb4
	.byte	0x3a
	.byte	0x24
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL17
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL22
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x6
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL11
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL21
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x55
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	0
	.uaword	0
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"HtxSfrTst_ConfigSetType"
.LASF0:
	.string	"HtxSfrTst_SfrCmpType"
.LASF2:
	.string	"ParamSetIndex"
.LASF3:
	.string	"TstSignature"
	.extern	HtxSfrTst_kConfigSet,STT_OBJECT,100
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
