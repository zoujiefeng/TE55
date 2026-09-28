	.file	"HtxSfrTstCrc.c"
.section .text,"ax",@progbits
.Ltext0:
.section Code.Cpu0,"ax",@progbits
	.align 1
	.global	HtxSfrTst_TestCrc
	.type	HtxSfrTst_TestCrc, @function
HtxSfrTst_TestCrc:
.LFB19:
	.file 1 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\01_HtxSfrTst\\src\\HtxSfrTstCrc.c"
	.loc 1 154 0
.LVL0:
.LBB32:
.LBB33:
	.file 2 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
	.loc 2 211 0
	mov	%d15, 3
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d5, %d15, %d5
	# 0 "" 2
.LVL1:
#NO_APP
.LBE33:
.LBE32:
	.loc 1 158 0
	st.w	[%a4]0, %d5
.LVL2:
.LBB34:
.LBB35:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d5, %d5, %d4
	# 0 "" 2
.LVL3:
#NO_APP
.LBE35:
.LBE34:
	.loc 1 172 0
	movh	%d2, 3
	.loc 1 161 0
	st.w	[%a4]0, %d5
.LVL4:
	.loc 1 172 0
	addi	%d2, %d2, 258
	.loc 1 164 0
	jlt.u	%d4, 5, .L17
.LVL5:
	.loc 1 177 0
	ret
.LVL6:
.L17:
.LBB36:
.LBB37:
	.loc 1 228 0
	mul	%d10, %d4, 20
	movh.a	%a13, hi:HtxSfrTst_kConfigSet
	lea	%a13, [%a13] lo:HtxSfrTst_kConfigSet
	addsc.a	%a15, %a13, %d10, 0
	mov	%d15, -2
	ld.w	%d7, [%a15]0
	jz	%d7, .L3
	mov	%d2, 0
	.loc 1 231 0
	ld.w	%d0, [%a15] 12
	j	.L6
.LVL7:
.L4:
	.loc 1 245 0
	ld.w	%d3, [%a2]0
.LVL8:
	.loc 1 250 0
	ld.w	%d6, [%a15] 8
	and	%d3, %d6
.LVL9:
.LBB38:
.LBB39:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d5, %d5, %d3
	# 0 "" 2
.LVL10:
#NO_APP
.LBE39:
.LBE38:
	.loc 1 253 0
	st.w	[%a4]0, %d5
.LVL11:
.LBB41:
.LBB42:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d15, %d15, %d3
	# 0 "" 2
.LVL12:
#NO_APP
.LBE42:
.LBE41:
	.loc 1 228 0
	add	%d2, 1
.LVL13:
	jge.u	%d2, %d7, .L3
.L18:
	ld.w	%d5, [%a4]0
.LVL14:
.L6:
	.loc 1 231 0
	madd	%d3, %d0, %d2, 16
	mov.a	%a15, %d3
	ld.bu	%d3, [%a15] 12
	.loc 1 237 0
	ld.a	%a2, [%a15]0
	.loc 1 231 0
	jne	%d3, 1, .L4
	.loc 1 237 0
	ld.hu	%d3, [%a2]0
.LVL15:
	.loc 1 250 0
	ld.w	%d6, [%a15] 8
	and	%d3, %d6
.LVL16:
.LBB44:
.LBB40:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d5, %d5, %d3
	# 0 "" 2
.LVL17:
#NO_APP
.LBE40:
.LBE44:
	.loc 1 253 0
	st.w	[%a4]0, %d5
.LVL18:
.LBB45:
.LBB43:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d15, %d15, %d3
	# 0 "" 2
.LVL19:
#NO_APP
.LBE43:
.LBE45:
	.loc 1 228 0
	add	%d2, 1
.LVL20:
	jlt.u	%d2, %d7, .L18
.LVL21:
.L3:
	addsc.a	%a12, %a13, %d10, 0
	mov.aa	%a15, %a4
	.loc 1 261 0
	ld.w	%d9, [%a12] 4
	.loc 1 228 0
	mov	%d8, 0
	.loc 1 263 0
	lea	%a12, [%a12] 16
.LVL22:
.L7:
	.loc 1 261 0
	jge.u	%d8, %d9, .L8
	.loc 1 263 0
	ld.a	%a2, [%a12]0
	addsc.a	%a2, %a2, %d8, 2
	ld.a	%a2, [%a2]0
	jz.a	%a2, .L13
	.loc 1 265 0
	calli	%a2
.LVL23:
.LBB46:
.LBB47:
	.loc 2 211 0
	ld.w	%d3, [%a15]0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d3, %d3, %d2
	# 0 "" 2
.LVL24:
#NO_APP
.LBE47:
.LBE46:
	.loc 1 268 0
	st.w	[%a15]0, %d3
.LVL25:
.LBB48:
.LBB49:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d15, %d15, %d2
	# 0 "" 2
.LVL26:
#NO_APP
.LBE49:
.LBE48:
	.loc 1 273 0
	add	%d8, 1
.LVL27:
	j	.L7
.LVL28:
.L13:
	.loc 1 278 0
	mov	%d15, -2
.LVL29:
.L8:
	.loc 1 285 0
	addsc.a	%a13, %a13, %d10, 0
	ld.w	%d2, [%a13] 8
	.loc 1 292 0
	ne	%d15, %d15, %d2
.LVL30:
	movh	%d2, 3
	addi	%d2, %d2, 261
	addi	%d3, %d2, 250
	cmovn	%d2, %d15, %d3
.LVL31:
.LBB50:
.LBB51:
	.loc 2 211 0
	ld.w	%d15, [%a15]0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d15, %d15, %d2
	# 0 "" 2
.LVL32:
#NO_APP
.LBE51:
.LBE50:
	.loc 1 298 0
	st.w	[%a15]0, %d15
.LVL33:
.LBE37:
.LBE36:
	.loc 1 177 0
	ret
.LFE19:
	.size	HtxSfrTst_TestCrc, .-HtxSfrTst_TestCrc
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
	.uaword	0x78e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\01_HtxSfrTst\\src\\HtxSfrTstCrc.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x30
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
	.byte	0x3
	.byte	0x51
	.uaword	0x201
	.uleb128 0x3
	.string	"uint16"
	.byte	0x3
	.byte	0x5b
	.uaword	0x212
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x3
	.byte	0x6a
	.uaword	0x228
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
	.uleb128 0x3
	.string	"HtxTestHnd_TstRsltType"
	.byte	0x4
	.byte	0x97
	.uaword	0x293
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
	.uaword	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"RegisterMask"
	.byte	0x5
	.byte	0x48
	.uaword	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"RegisterBitWidth"
	.byte	0x5
	.byte	0x4a
	.uaword	0x267
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
	.uaword	0x293
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
	.uaword	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"NumOfCpuSfr"
	.byte	0x5
	.byte	0x54
	.uaword	0x293
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"ExpectedCRCResult"
	.byte	0x5
	.byte	0x56
	.uaword	0x293
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
	.uaword	0x228
	.byte	0x3
	.uaword	0x48c
	.uleb128 0xc
	.string	"b"
	.byte	0x2
	.byte	0xd1
	.uaword	0x228
	.uleb128 0xc
	.string	"a"
	.byte	0x2
	.byte	0xd1
	.uaword	0x228
	.uleb128 0xd
	.string	"res"
	.byte	0x2
	.byte	0xd2
	.uaword	0x228
	.byte	0
	.uleb128 0xb
	.string	"HtxSfrTst_lSfrCrcTst"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.uaword	0x2ef
	.byte	0x1
	.uaword	0x518
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0xd8
	.uaword	0x518
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x1
	.byte	0xd9
	.uaword	0x51d
	.uleb128 0xd
	.string	"Result"
	.byte	0x1
	.byte	0xdc
	.uaword	0x2ef
	.uleb128 0xd
	.string	"CalculatedCRC"
	.byte	0x1
	.byte	0xdd
	.uaword	0x293
	.uleb128 0xd
	.string	"CurrentRegValue"
	.byte	0x1
	.byte	0xde
	.uaword	0x293
	.uleb128 0xd
	.string	"Mask"
	.byte	0x1
	.byte	0xdf
	.uaword	0x293
	.uleb128 0xd
	.string	"Index"
	.byte	0x1
	.byte	0xe0
	.uaword	0x293
	.byte	0
	.uleb128 0xa
	.uaword	0x267
	.uleb128 0xa
	.uaword	0x522
	.uleb128 0x6
	.byte	0x4
	.uaword	0x293
	.uleb128 0xf
	.byte	0x1
	.string	"HtxSfrTst_TestCrc"
	.byte	0x1
	.byte	0x94
	.byte	0x1
	.uaword	0x2ef
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x75e
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.byte	0x96
	.uaword	0x518
	.uaword	.LLST0
	.uleb128 0x11
	.string	"TstSeed"
	.byte	0x1
	.byte	0x97
	.uaword	0x518
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x1
	.byte	0x98
	.uaword	0x51d
	.uaword	.LLST2
	.uleb128 0x12
	.string	"Result"
	.byte	0x1
	.byte	0x9b
	.uaword	0x2ef
	.uaword	.LLST3
	.uleb128 0x13
	.uaword	0x457
	.uaword	.LBB32
	.uaword	.LBE32
	.byte	0x1
	.byte	0x9e
	.uaword	0x5cc
	.uleb128 0x14
	.uaword	0x477
	.uaword	.LLST4
	.uleb128 0x15
	.uaword	0x46e
	.byte	0x3
	.uleb128 0x16
	.uaword	.LBB33
	.uaword	.LBE33
	.uleb128 0x17
	.uaword	0x480
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x13
	.uaword	0x457
	.uaword	.LBB34
	.uaword	.LBE34
	.byte	0x1
	.byte	0xa1
	.uaword	0x605
	.uleb128 0x14
	.uaword	0x477
	.uaword	.LLST6
	.uleb128 0x14
	.uaword	0x46e
	.uaword	.LLST7
	.uleb128 0x16
	.uaword	.LBB35
	.uaword	.LBE35
	.uleb128 0x17
	.uaword	0x480
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x18
	.uaword	0x48c
	.uaword	.LBB36
	.uaword	.LBE36
	.byte	0x1
	.byte	0xa7
	.uleb128 0x19
	.uaword	0x4b9
	.uleb128 0x19
	.uaword	0x4ae
	.uleb128 0x16
	.uaword	.LBB37
	.uaword	.LBE37
	.uleb128 0x1a
	.uaword	0x4c4
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.uaword	0x4d2
	.uaword	.LLST9
	.uleb128 0x17
	.uaword	0x4e7
	.uaword	.LLST10
	.uleb128 0x17
	.uaword	0x4fe
	.uaword	.LLST11
	.uleb128 0x17
	.uaword	0x50a
	.uaword	.LLST12
	.uleb128 0x1b
	.uaword	0x457
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xfd
	.uaword	0x687
	.uleb128 0x14
	.uaword	0x477
	.uaword	.LLST13
	.uleb128 0x14
	.uaword	0x46e
	.uaword	.LLST14
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x17
	.uaword	0x480
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	0x457
	.uaword	.LBB41
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x100
	.uaword	0x6b9
	.uleb128 0x14
	.uaword	0x477
	.uaword	.LLST16
	.uleb128 0x14
	.uaword	0x46e
	.uaword	.LLST17
	.uleb128 0x1c
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x1e
	.uaword	0x480
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x457
	.uaword	.LBB46
	.uaword	.LBE46
	.byte	0x1
	.uahalf	0x10c
	.uaword	0x6f3
	.uleb128 0x14
	.uaword	0x477
	.uaword	.LLST18
	.uleb128 0x14
	.uaword	0x46e
	.uaword	.LLST19
	.uleb128 0x16
	.uaword	.LBB47
	.uaword	.LBE47
	.uleb128 0x17
	.uaword	0x480
	.uaword	.LLST20
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0x457
	.uaword	.LBB48
	.uaword	.LBE48
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x729
	.uleb128 0x14
	.uaword	0x477
	.uaword	.LLST21
	.uleb128 0x14
	.uaword	0x46e
	.uaword	.LLST22
	.uleb128 0x16
	.uaword	.LBB49
	.uaword	.LBE49
	.uleb128 0x1e
	.uaword	0x480
	.byte	0
	.byte	0
	.uleb128 0x20
	.uaword	0x457
	.uaword	.LBB50
	.uaword	.LBE50
	.byte	0x1
	.uahalf	0x12a
	.uleb128 0x21
	.uaword	0x477
	.byte	0x1
	.byte	0x52
	.uleb128 0x14
	.uaword	0x46e
	.uaword	.LLST23
	.uleb128 0x16
	.uaword	.LBB51
	.uaword	.LBE51
	.uleb128 0x1a
	.uaword	0x480
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.uaword	0x44c
	.uaword	0x76e
	.uleb128 0x23
	.uaword	0x25b
	.byte	0x4
	.byte	0
	.uleb128 0x24
	.string	"HtxSfrTst_kConfigSet"
	.byte	0x5
	.byte	0x6e
	.uaword	0x78c
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x75e
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
	.uleb128 0x2116
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
	.uleb128 0x6
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
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
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL22
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL33
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
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
.LLST5:
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
.LLST6:
	.uaword	.LVL2
	.uaword	.LVL22
	.uahalf	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
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
.LLST8:
	.uaword	.LVL3
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x9
	.byte	0xfe
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL14
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL8
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL15
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL27
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL9
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL16
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL10
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL17
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL11
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL18
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL23
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL23
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL25
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL31
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
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
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	0
	.uaword	0
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	0
	.uaword	0
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"HtxSfrTst_SfrCmpType"
.LASF1:
	.string	"HtxSfrTst_ConfigSetType"
.LASF2:
	.string	"ParamSetIndex"
.LASF3:
	.string	"TstSignature"
	.extern	HtxSfrTst_kConfigSet,STT_OBJECT,100
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
