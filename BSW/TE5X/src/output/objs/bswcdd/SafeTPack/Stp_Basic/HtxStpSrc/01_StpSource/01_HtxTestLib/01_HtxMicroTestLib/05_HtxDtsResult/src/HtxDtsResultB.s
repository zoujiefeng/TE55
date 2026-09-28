	.file	"HtxDtsResultB.c"
.section .text,"ax",@progbits
.Ltext0:
.section Code.Cpu0,"ax",@progbits
	.align 1
	.global	HtxDtsResult_TestB
	.type	HtxDtsResult_TestB, @function
HtxDtsResult_TestB:
.LFB19:
	.file 1 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\05_HtxDtsResult\\src\\HtxDtsResultB.c"
	.loc 1 140 0
.LVL0:
.LBB8:
.LBB9:
	.file 2 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
	.loc 2 211 0
	mov	%d15, 10
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d5, %d15, %d5
	# 0 "" 2
.LVL1:
#NO_APP
.LBE9:
.LBE8:
	.loc 1 150 0
	st.w	[%a4]0, %d5
.LVL2:
.LBB10:
.LBB11:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d5, %d5, %d4
	# 0 "" 2
.LVL3:
#NO_APP
.LBE11:
.LBE10:
	.loc 1 164 0
	movh.a	%a15, 61477
	.loc 1 153 0
	st.w	[%a4]0, %d5
.LVL4:
	.loc 1 164 0
	lea	%a15, [%a15] -32320
	ld.w	%d2, [%a15]0
	.loc 1 165 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24836
	ld.w	%d15, [%a15]0
	.loc 1 164 0
	utof	%d2, %d2
	movh	%d3, 16624
	.loc 1 165 0
	utof	%d15, %d15
	.loc 1 164 0
	addi	%d3, %d3, 10486
	div.f	%d2, %d2, %d3
.LVL5:
	.loc 1 165 0
	div.f	%d15, %d15, %d3
.LVL6:
	.loc 1 169 0
	cmp.f	%d3, %d2, %d15
	jz.t	%d3, 2, .L8
	.loc 1 169 0 is_stmt 0 discriminator 1
	sub.f	%d15, %d2, %d15
.LVL7:
.L4:
	.loc 1 172 0 is_stmt 1 discriminator 4
	movh	%d2, 16656
.LVL8:
	cmp.f	%d15, %d15, %d2
.LVL9:
	.loc 1 178 0 discriminator 4
	movh	%d2, 10
	.loc 1 172 0 discriminator 4
	or.t	%d15, %d15,0, %d15,1
	.loc 1 178 0 discriminator 4
	movh	%d3, 10
	addi	%d2, %d2, 511
	cmovn	%d2, %d15, %d3
.LVL10:
.LBB12:
.LBB13:
	.loc 2 211 0 discriminator 4
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d5, %d5, %d2
	# 0 "" 2
.LVL11:
#NO_APP
.LBE13:
.LBE12:
	.loc 1 181 0 discriminator 4
	st.w	[%a4]0, %d5
.LVL12:
	.loc 1 184 0 discriminator 4
	ret
.LVL13:
.L8:
	.loc 1 169 0 discriminator 2
	sub.f	%d15, %d15, %d2
.LVL14:
	j	.L4
.LFE19:
	.size	HtxDtsResult_TestB, .-HtxDtsResult_TestB
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
	.file 3 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_regdef.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 7 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x63b
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\05_HtxDtsResult\\src\\HtxDtsResultB.c"
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
	.uleb128 0x3
	.string	"Ifx_UReg_32Bit"
	.byte	0x3
	.byte	0x62
	.uaword	0x242
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
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x3
	.byte	0x65
	.uaword	0x284
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.string	"_Ifx_PMS_DTSSTAT_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xeb
	.uaword	0x2cf
	.uleb128 0x5
	.string	"RESULT"
	.byte	0x4
	.byte	0xed
	.uaword	0x22c
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0xee
	.uaword	0x22c
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_PMS_DTSSTAT_Bits"
	.byte	0x4
	.byte	0xef
	.uaword	0x28b
	.uleb128 0x7
	.byte	0x4
	.byte	0x4
	.uahalf	0x471
	.uaword	0x313
	.uleb128 0x8
	.string	"U"
	.byte	0x4
	.uahalf	0x473
	.uaword	0x22c
	.uleb128 0x8
	.string	"I"
	.byte	0x4
	.uahalf	0x474
	.uaword	0x26e
	.uleb128 0x8
	.string	"B"
	.byte	0x4
	.uahalf	0x475
	.uaword	0x2cf
	.byte	0
	.uleb128 0x9
	.string	"Ifx_PMS_DTSSTAT"
	.byte	0x4
	.uahalf	0x476
	.uaword	0x2eb
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xa
	.string	"_Ifx_SCU_DTSCSTAT_Bits"
	.byte	0x4
	.byte	0x5
	.uahalf	0x13d
	.uaword	0x37f
	.uleb128 0xb
	.string	"RESULT"
	.byte	0x5
	.uahalf	0x13f
	.uaword	0x22c
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x5
	.uahalf	0x140
	.uaword	0x22c
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SCU_DTSCSTAT_Bits"
	.byte	0x5
	.uahalf	0x141
	.uaword	0x337
	.uleb128 0x7
	.byte	0x4
	.byte	0x5
	.uahalf	0x5b9
	.uaword	0x3c5
	.uleb128 0x8
	.string	"U"
	.byte	0x5
	.uahalf	0x5bb
	.uaword	0x22c
	.uleb128 0x8
	.string	"I"
	.byte	0x5
	.uahalf	0x5bc
	.uaword	0x26e
	.uleb128 0x8
	.string	"B"
	.byte	0x5
	.uahalf	0x5bd
	.uaword	0x37f
	.byte	0
	.uleb128 0x9
	.string	"Ifx_SCU_DTSCSTAT"
	.byte	0x5
	.uahalf	0x5be
	.uaword	0x39d
	.uleb128 0x3
	.string	"uint8"
	.byte	0x6
	.byte	0x51
	.uaword	0x205
	.uleb128 0x3
	.string	"uint16"
	.byte	0x6
	.byte	0x5b
	.uaword	0x216
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x6
	.byte	0x6a
	.uaword	0x242
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x6
	.byte	0x75
	.uaword	0x441
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
	.byte	0x7
	.byte	0x97
	.uaword	0x40a
	.uleb128 0xd
	.string	"__crc32bw"
	.byte	0x2
	.byte	0xd1
	.byte	0x1
	.uaword	0x242
	.byte	0x3
	.uaword	0x4c8
	.uleb128 0xe
	.string	"b"
	.byte	0x2
	.byte	0xd1
	.uaword	0x242
	.uleb128 0xe
	.string	"a"
	.byte	0x2
	.byte	0xd1
	.uaword	0x242
	.uleb128 0xf
	.string	"res"
	.byte	0x2
	.byte	0xd2
	.uaword	0x242
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"HtxDtsResult_TestB"
	.byte	0x1
	.byte	0x86
	.byte	0x1
	.uaword	0x475
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x62e
	.uleb128 0x11
	.string	"ParamSetIndex"
	.byte	0x1
	.byte	0x88
	.uaword	0x62e
	.byte	0x1
	.byte	0x54
	.uleb128 0x12
	.string	"TstSeed"
	.byte	0x1
	.byte	0x89
	.uaword	0x62e
	.uaword	.LLST0
	.uleb128 0x11
	.string	"TstSignature"
	.byte	0x1
	.byte	0x8a
	.uaword	0x633
	.byte	0x1
	.byte	0x64
	.uleb128 0x13
	.string	"ReturnValue"
	.byte	0x1
	.byte	0x8d
	.uaword	0x475
	.uaword	.LLST1
	.uleb128 0x13
	.string	"TempDts"
	.byte	0x1
	.byte	0x8e
	.uaword	0x432
	.uaword	.LLST2
	.uleb128 0x13
	.string	"TempDtsc"
	.byte	0x1
	.byte	0x8f
	.uaword	0x432
	.uaword	.LLST3
	.uleb128 0x13
	.string	"TempDiff"
	.byte	0x1
	.byte	0x90
	.uaword	0x432
	.uaword	.LLST4
	.uleb128 0x14
	.uaword	0x493
	.uaword	.LBB8
	.uaword	.LBE8
	.byte	0x1
	.byte	0x96
	.uaword	0x5bc
	.uleb128 0x15
	.uaword	0x4b3
	.uaword	.LLST5
	.uleb128 0x16
	.uaword	0x4aa
	.byte	0xa
	.uleb128 0x17
	.uaword	.LBB9
	.uaword	.LBE9
	.uleb128 0x18
	.uaword	0x4bc
	.uaword	.LLST6
	.byte	0
	.byte	0
	.uleb128 0x14
	.uaword	0x493
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x1
	.byte	0x99
	.uaword	0x5f8
	.uleb128 0x19
	.uaword	0x4b3
	.byte	0x6
	.byte	0x74
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uleb128 0x15
	.uaword	0x4aa
	.uaword	.LLST7
	.uleb128 0x17
	.uaword	.LBB11
	.uaword	.LBE11
	.uleb128 0x18
	.uaword	0x4bc
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uaword	0x493
	.uaword	.LBB12
	.uaword	.LBE12
	.byte	0x1
	.byte	0xb5
	.uleb128 0x15
	.uaword	0x4b3
	.uaword	.LLST1
	.uleb128 0x15
	.uaword	0x4aa
	.uaword	.LLST10
	.uleb128 0x17
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x18
	.uaword	0x4bc
	.uaword	.LLST11
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uaword	0x3de
	.uleb128 0x1b
	.uaword	0x638
	.uleb128 0x1c
	.byte	0x4
	.uaword	0x40a
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL13
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
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
.LLST6:
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
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL13
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL11
	.uaword	.LVL13
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
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"reserved_12"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
