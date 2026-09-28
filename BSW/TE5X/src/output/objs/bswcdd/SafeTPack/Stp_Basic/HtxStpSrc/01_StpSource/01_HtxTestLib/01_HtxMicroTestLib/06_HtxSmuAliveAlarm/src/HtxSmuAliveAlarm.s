	.file	"HtxSmuAliveAlarm.c"
.section .text,"ax",@progbits
.Ltext0:
.section Code.Cpu0,"ax",@progbits
	.align 1
	.global	HtxSmuAliveAlarm_Test
	.type	HtxSmuAliveAlarm_Test, @function
HtxSmuAliveAlarm_Test:
.LFB19:
	.file 1 "bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c"
	.loc 1 186 0
.LVL0:
	.loc 1 191 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 26680
	ld.w	%d15, [%a15]0
	.loc 1 186 0
	mov.aa	%a12, %a4
	.loc 1 191 0
	and	%d15, %d15, 3
.LVL1:
.LBB22:
.LBB23:
	.file 2 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
	.loc 2 211 0
	mov	%d2, 7
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d5, %d2, %d5
	# 0 "" 2
.LVL2:
#NO_APP
.LBE23:
.LBE22:
	.loc 1 197 0
	st.w	[%a4]0, %d5
.LVL3:
.LBB24:
.LBB25:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d4, %d5, %d4
	# 0 "" 2
.LVL4:
#NO_APP
.LBE25:
.LBE24:
	.loc 1 200 0
	st.w	[%a4]0, %d4
	.loc 1 204 0
	jnz	%d15, .L2
	.loc 1 208 0
	movh.a	%a15, 61477
	lea	%a15, [%a15] -32372
	ld.w	%d15, [%a15]0
	.loc 1 230 0
	movh	%d2, 7
	add	%d2, 5
	.loc 1 208 0
	jz.t	%d15, 16, .L33
.LVL5:
.L3:
.LBB26:
.LBB27:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d4, %d4, %d2
	# 0 "" 2
.LVL6:
#NO_APP
.LBE27:
.LBE26:
	.loc 1 250 0
	st.w	[%a12]0, %d4
	ret
.LVL7:
.L2:
.LBB30:
.LBB31:
	.loc 1 302 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24656
	ld.w	%d3, [%a15]0
.LVL8:
	.loc 1 304 0
	movh	%d2, 3073
	add	%d2, -1
	and	%d3, %d2
.LVL9:
.LBE31:
.LBE30:
	.loc 1 236 0
	eq	%d2, %d15, 1
	movh	%d15, 7
	addi	%d15, %d15, 511
	and.ne	%d2, %d3, 0
	addi	%d3, %d15, -505
	sel	%d2, %d2, %d15, %d3
.LVL10:
.LBB32:
.LBB28:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d4, %d4, %d2
	# 0 "" 2
.LVL11:
#NO_APP
.LBE28:
.LBE32:
	.loc 1 250 0
	st.w	[%a12]0, %d4
.LVL12:
	ret
.LVL13:
.L33:
.LBB33:
.LBB34:
	.loc 1 352 0
	movh.a	%a15, 61443
	mov	%d15, 87
	lea	%a15, [%a15] 26656
	st.w	[%a15]0, %d15
.LVL14:
	.loc 1 357 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 26660
	ld.w	%d15, [%a15]0
	jz.t	%d15, 8, .L4
	mov.aa	%a2, %a15
	mov	%d2, 0
	lea	%a15, 254
.LVL15:
.L6:
	ld.w	%d15, [%a2]0
	.loc 1 359 0
	add	%d2, 1
.LVL16:
	.loc 1 357 0
	jz.t	%d15, 8, .L5
	loop	%a15, .L6
.LVL17:
.L7:
.LBE34:
.LBE33:
	.loc 1 225 0
	movh	%d2, 7
	ld.w	%d4, [%a12]0
.LVL18:
	add	%d2, 4
.LVL19:
.LBB36:
.LBB29:
	.loc 2 211 0
#APP
	# 211 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	crc32b.w %d4, %d4, %d2
	# 0 "" 2
.LVL20:
#NO_APP
.LBE29:
.LBE36:
	.loc 1 250 0
	st.w	[%a12]0, %d4
.LVL21:
	ret
.LVL22:
.L5:
.LBB37:
.LBB35:
	.loc 1 362 0
	eq	%d2, %d2, 255
.LVL23:
	jnz	%d2, .L7
.L4:
	.loc 1 365 0
	movh.a	%a15, 61443
	mov	%d15, 167
	lea	%a15, [%a15] 26656
	st.w	[%a15]0, %d15
.LVL24:
	.loc 1 370 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 26660
	ld.w	%d15, [%a15]0
	jz.t	%d15, 8, .L9
	mov.aa	%a2, %a15
	mov	%d2, 0
	lea	%a15, 254
.LVL25:
.L11:
	ld.w	%d15, [%a2]0
	.loc 1 372 0
	add	%d2, 1
.LVL26:
	.loc 1 370 0
	jz.t	%d15, 8, .L10
	loop	%a15, .L11
	j	.L7
.L10:
	.loc 1 375 0
	eq	%d2, %d2, 255
.LVL27:
	jnz	%d2, .L7
.L9:
.LVL28:
.LBE35:
.LBE37:
.LBB38:
.LBB39:
	.loc 1 424 0
	movh.a	%a15, 61477
	lea	%a15, [%a15] -32372
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 16, .L34
.LVL29:
.L12:
.LBE39:
.LBE38:
	.loc 1 220 0
	movh	%d2, 7
	ld.w	%d4, [%a12]0
	add	%d2, 3
	j	.L3
.LVL30:
.L34:
.LBB41:
.LBB40:
	.loc 1 427 0
	movh.a	%a2, 61477
	lea	%a2, [%a2] -32356
	ld.w	%d4, [%a2]0
.LVL31:
	.loc 1 432 0
	mov.aa	%a4, %a2
.LVL32:
	.loc 1 428 0
	insert	%d4, %d4, 1, 30, 1
.LVL33:
	.loc 1 432 0
	or	%d4, %d4, 8
.LVL34:
	call	Mcal_WriteSafetyEndInitProtReg
.LVL35:
	.loc 1 436 0
	mov.aa	%a4, %a15
	movh	%d4, 1
	call	Mcal_WriteSafetyEndInitProtReg
.LVL36:
	.loc 1 439 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 16, .L12
.LVL37:
.LBE40:
.LBE41:
	.loc 1 216 0
	movh	%d2, 7
	ld.w	%d4, [%a12]0
	addi	%d2, %d2, 511
	j	.L3
.LFE19:
	.size	HtxSmuAliveAlarm_Test, .-HtxSmuAliveAlarm_Test
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
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxSmu_regdef.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPms_regdef.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 9 ".\\output\\inc/..\\..\\bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\02_HtxTestHandler\\inc\\HtxTestHnd_ErrorCodes.h"
	.file 10 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xf1e
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\SafeTPack\\Stp_Basic\\HtxStpSrc\\01_StpSource\\01_HtxTestLib\\01_HtxMicroTestLib\\06_HtxSmuAliveAlarm\\src\\HtxSmuAliveAlarm.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x50
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
	.uaword	0x249
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
	.uaword	0x28b
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.uaword	0x249
	.uleb128 0x5
	.string	"_Ifx_SMU_CMD_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x165
	.uaword	0x2f0
	.uleb128 0x6
	.string	"CMD"
	.byte	0x4
	.uahalf	0x167
	.uaword	0x292
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"ARG"
	.byte	0x4
	.uahalf	0x168
	.uaword	0x292
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_8"
	.byte	0x4
	.uahalf	0x169
	.uaword	0x292
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_SMU_CMD_Bits"
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x297
	.uleb128 0x5
	.string	"_Ifx_SMU_DBG_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x16d
	.uaword	0x349
	.uleb128 0x6
	.string	"SSM"
	.byte	0x4
	.uahalf	0x16f
	.uaword	0x233
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x170
	.uaword	0x233
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_SMU_DBG_Bits"
	.byte	0x4
	.uahalf	0x171
	.uaword	0x309
	.uleb128 0x5
	.string	"_Ifx_SMU_STS_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x24e
	.uaword	0x46e
	.uleb128 0x6
	.string	"CMD"
	.byte	0x4
	.uahalf	0x250
	.uaword	0x292
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"ARG"
	.byte	0x4
	.uahalf	0x251
	.uaword	0x292
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"RES"
	.byte	0x4
	.uahalf	0x252
	.uaword	0x292
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"ASCE"
	.byte	0x4
	.uahalf	0x253
	.uaword	0x292
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"FSP"
	.byte	0x4
	.uahalf	0x254
	.uaword	0x292
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"FSTS"
	.byte	0x4
	.uahalf	0x255
	.uaword	0x292
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_13"
	.byte	0x4
	.uahalf	0x256
	.uaword	0x292
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"RTS0"
	.byte	0x4
	.uahalf	0x257
	.uaword	0x292
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"RTME0"
	.byte	0x4
	.uahalf	0x258
	.uaword	0x292
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"RTS1"
	.byte	0x4
	.uahalf	0x259
	.uaword	0x292
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"RTME1"
	.byte	0x4
	.uahalf	0x25a
	.uaword	0x292
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_20"
	.byte	0x4
	.uahalf	0x25b
	.uaword	0x292
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_SMU_STS_Bits"
	.byte	0x4
	.uahalf	0x25c
	.uaword	0x362
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.uahalf	0x2bc
	.uaword	0x4af
	.uleb128 0xa
	.string	"U"
	.byte	0x4
	.uahalf	0x2be
	.uaword	0x233
	.uleb128 0xa
	.string	"I"
	.byte	0x4
	.uahalf	0x2bf
	.uaword	0x275
	.uleb128 0xa
	.string	"B"
	.byte	0x4
	.uahalf	0x2c0
	.uaword	0x2f0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_SMU_CMD"
	.byte	0x4
	.uahalf	0x2c1
	.uaword	0x487
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.uahalf	0x2c4
	.uaword	0x4eb
	.uleb128 0xa
	.string	"U"
	.byte	0x4
	.uahalf	0x2c6
	.uaword	0x233
	.uleb128 0xa
	.string	"I"
	.byte	0x4
	.uahalf	0x2c7
	.uaword	0x275
	.uleb128 0xa
	.string	"B"
	.byte	0x4
	.uahalf	0x2c8
	.uaword	0x349
	.byte	0
	.uleb128 0x7
	.string	"Ifx_SMU_DBG"
	.byte	0x4
	.uahalf	0x2c9
	.uaword	0x4c3
	.uleb128 0x9
	.byte	0x4
	.byte	0x4
	.uahalf	0x334
	.uaword	0x527
	.uleb128 0xa
	.string	"U"
	.byte	0x4
	.uahalf	0x336
	.uaword	0x233
	.uleb128 0xa
	.string	"I"
	.byte	0x4
	.uahalf	0x337
	.uaword	0x275
	.uleb128 0xa
	.string	"B"
	.byte	0x4
	.uahalf	0x338
	.uaword	0x46e
	.byte	0
	.uleb128 0x7
	.string	"Ifx_SMU_STS"
	.byte	0x4
	.uahalf	0x339
	.uaword	0x4ff
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0xb
	.string	"_Ifx_PMS_AG_STDBY1_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xba
	.uaword	0x6d2
	.uleb128 0xc
	.string	"SF0"
	.byte	0x5
	.byte	0xbc
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF1"
	.byte	0x5
	.byte	0xbd
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF2"
	.byte	0x5
	.byte	0xbe
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF3"
	.byte	0x5
	.byte	0xbf
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF4"
	.byte	0x5
	.byte	0xc0
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF5"
	.byte	0x5
	.byte	0xc1
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"reserved_6"
	.byte	0x5
	.byte	0xc2
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF7"
	.byte	0x5
	.byte	0xc3
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF8"
	.byte	0x5
	.byte	0xc4
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF9"
	.byte	0x5
	.byte	0xc5
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF10"
	.byte	0x5
	.byte	0xc6
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF11"
	.byte	0x5
	.byte	0xc7
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF12"
	.byte	0x5
	.byte	0xc8
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF13"
	.byte	0x5
	.byte	0xc9
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF14"
	.byte	0x5
	.byte	0xca
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF15"
	.byte	0x5
	.byte	0xcb
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SF16"
	.byte	0x5
	.byte	0xcc
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x5
	.byte	0xcd
	.uaword	0x233
	.byte	0x4
	.byte	0xd
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"reserved_30"
	.byte	0x5
	.byte	0xce
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x5
	.byte	0xcf
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_PMS_AG_STDBY1_Bits"
	.byte	0x5
	.byte	0xd0
	.uaword	0x547
	.uleb128 0xb
	.string	"_Ifx_PMS_CMD_STDBY_Bits"
	.byte	0x4
	.byte	0x5
	.byte	0xd3
	.uaword	0x79c
	.uleb128 0xc
	.string	"SMUEN"
	.byte	0x5
	.byte	0xd5
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"FSP0EN"
	.byte	0x5
	.byte	0xd6
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"FSP1EN"
	.byte	0x5
	.byte	0xd7
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"ASCE"
	.byte	0x5
	.byte	0xd8
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"reserved_4"
	.byte	0x5
	.byte	0xd9
	.uaword	0x233
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"BITPROT"
	.byte	0x5
	.byte	0xda
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x5
	.byte	0xdb
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_PMS_CMD_STDBY_Bits"
	.byte	0x5
	.byte	0xdc
	.uaword	0x6f0
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.uahalf	0x459
	.uaword	0x7e2
	.uleb128 0xa
	.string	"U"
	.byte	0x5
	.uahalf	0x45b
	.uaword	0x233
	.uleb128 0xa
	.string	"I"
	.byte	0x5
	.uahalf	0x45c
	.uaword	0x275
	.uleb128 0xa
	.string	"B"
	.byte	0x5
	.uahalf	0x45d
	.uaword	0x6d2
	.byte	0
	.uleb128 0x7
	.string	"Ifx_PMS_AG_STDBY1"
	.byte	0x5
	.uahalf	0x45e
	.uaword	0x7ba
	.uleb128 0x9
	.byte	0x4
	.byte	0x5
	.uahalf	0x461
	.uaword	0x824
	.uleb128 0xa
	.string	"U"
	.byte	0x5
	.uahalf	0x463
	.uaword	0x233
	.uleb128 0xa
	.string	"I"
	.byte	0x5
	.uahalf	0x464
	.uaword	0x275
	.uleb128 0xa
	.string	"B"
	.byte	0x5
	.uahalf	0x465
	.uaword	0x79c
	.byte	0
	.uleb128 0x7
	.string	"Ifx_PMS_CMD_STDBY"
	.byte	0x5
	.uahalf	0x466
	.uaword	0x7fc
	.uleb128 0x5
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x3c9
	.uaword	0xa92
	.uleb128 0x6
	.string	"ESR0"
	.byte	0x6
	.uahalf	0x3cb
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"ESR1"
	.byte	0x6
	.uahalf	0x3cc
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x3cd
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SMU"
	.byte	0x6
	.uahalf	0x3ce
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SW"
	.byte	0x6
	.uahalf	0x3cf
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"STM0"
	.byte	0x6
	.uahalf	0x3d0
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"STM1"
	.byte	0x6
	.uahalf	0x3d1
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"STM2"
	.byte	0x6
	.uahalf	0x3d2
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"STM3"
	.byte	0x6
	.uahalf	0x3d3
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_9"
	.byte	0x6
	.uahalf	0x3d4
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_10"
	.byte	0x6
	.uahalf	0x3d5
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_11"
	.byte	0x6
	.uahalf	0x3d6
	.uaword	0x233
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"PORST"
	.byte	0x6
	.uahalf	0x3d7
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x3d8
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"CB0"
	.byte	0x6
	.uahalf	0x3d9
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"CB1"
	.byte	0x6
	.uahalf	0x3da
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"CB3"
	.byte	0x6
	.uahalf	0x3db
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_21"
	.byte	0x6
	.uahalf	0x3dc
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"reserved_22"
	.byte	0x6
	.uahalf	0x3dd
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"EVRC"
	.byte	0x6
	.uahalf	0x3de
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"EVR33"
	.byte	0x6
	.uahalf	0x3df
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"SWD"
	.byte	0x6
	.uahalf	0x3e0
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"HSMS"
	.byte	0x6
	.uahalf	0x3e1
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"HSMA"
	.byte	0x6
	.uahalf	0x3e2
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"STBYR"
	.byte	0x6
	.uahalf	0x3e3
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"LBPORST"
	.byte	0x6
	.uahalf	0x3e4
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"LBTERM"
	.byte	0x6
	.uahalf	0x3e5
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x6
	.uahalf	0x3e6
	.uaword	0x233
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x7
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0x6
	.uahalf	0x3e7
	.uaword	0x83e
	.uleb128 0x9
	.byte	0x4
	.byte	0x6
	.uahalf	0x759
	.uaword	0xad7
	.uleb128 0xa
	.string	"U"
	.byte	0x6
	.uahalf	0x75b
	.uaword	0x233
	.uleb128 0xa
	.string	"I"
	.byte	0x6
	.uahalf	0x75c
	.uaword	0x275
	.uleb128 0xa
	.string	"B"
	.byte	0x6
	.uahalf	0x75d
	.uaword	0xa92
	.byte	0
	.uleb128 0x7
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0x6
	.uahalf	0x75e
	.uaword	0xaaf
	.uleb128 0x3
	.string	"uint8"
	.byte	0x7
	.byte	0x51
	.uaword	0x20c
	.uleb128 0x3
	.string	"uint16"
	.byte	0x7
	.byte	0x5b
	.uaword	0x21d
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x7
	.byte	0x6a
	.uaword	0x249
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
	.string	"Std_ReturnType"
	.byte	0x8
	.byte	0x60
	.uaword	0xaef
	.uleb128 0x3
	.string	"HtxTestHnd_TstRsltType"
	.byte	0x9
	.byte	0x97
	.uaword	0xb1b
	.uleb128 0xe
	.string	"__crc32bw"
	.byte	0x2
	.byte	0xd1
	.byte	0x1
	.uaword	0x249
	.byte	0x3
	.uaword	0xbe0
	.uleb128 0xf
	.string	"b"
	.byte	0x2
	.byte	0xd1
	.uaword	0x249
	.uleb128 0xf
	.string	"a"
	.byte	0x2
	.byte	0xd1
	.uaword	0x249
	.uleb128 0x10
	.string	"res"
	.byte	0x2
	.byte	0xd2
	.uaword	0x249
	.byte	0
	.uleb128 0x11
	.string	"HtxSmuAliveAlarm_lIsApplOrSysRst"
	.byte	0x1
	.uahalf	0x124
	.byte	0x1
	.uaword	0xb77
	.byte	0x1
	.uaword	0xc30
	.uleb128 0x12
	.string	"ResetStatus"
	.byte	0x1
	.uahalf	0x12a
	.uaword	0xad7
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x12b
	.uaword	0xaef
	.byte	0
	.uleb128 0x11
	.string	"HtxSmuAliveAlarm_lTrigger"
	.byte	0x1
	.uahalf	0x157
	.byte	0x1
	.uaword	0xb77
	.byte	0x1
	.uaword	0xc75
	.uleb128 0x12
	.string	"Timeout"
	.byte	0x1
	.uahalf	0x159
	.uaword	0xb1b
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x15a
	.uaword	0xaef
	.byte	0
	.uleb128 0x11
	.string	"HtxSmuAliveAlarm_lGetAlmSts"
	.byte	0x1
	.uahalf	0x19e
	.byte	0x1
	.uaword	0xb77
	.byte	0x1
	.uaword	0xcc6
	.uleb128 0x12
	.string	"PmsStdbyCmdRegVal"
	.byte	0x1
	.uahalf	0x1a4
	.uaword	0x824
	.uleb128 0x13
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1a5
	.uaword	0xb77
	.byte	0
	.uleb128 0x14
	.byte	0x1
	.string	"HtxSmuAliveAlarm_Test"
	.byte	0x1
	.byte	0xb4
	.byte	0x1
	.uaword	0xb8d
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xecb
	.uleb128 0x15
	.string	"ParamSetIndex"
	.byte	0x1
	.byte	0xb6
	.uaword	0xecb
	.uaword	.LLST0
	.uleb128 0x15
	.string	"TstSeed"
	.byte	0x1
	.byte	0xb7
	.uaword	0xecb
	.uaword	.LLST1
	.uleb128 0x15
	.string	"TstSignature"
	.byte	0x1
	.byte	0xb8
	.uaword	0xed0
	.uaword	.LLST2
	.uleb128 0x16
	.string	"ReturnValue"
	.byte	0x1
	.byte	0xbb
	.uaword	0xb8d
	.uaword	.LLST3
	.uleb128 0x10
	.string	"AliveAlmTstSts"
	.byte	0x1
	.byte	0xbc
	.uaword	0xb77
	.uleb128 0x10
	.string	"SmuSsmReg"
	.byte	0x1
	.byte	0xbd
	.uaword	0xaef
	.uleb128 0x17
	.uaword	0xbab
	.uaword	.LBB22
	.uaword	.LBE22
	.byte	0x1
	.byte	0xc5
	.uaword	0xdad
	.uleb128 0x18
	.uaword	0xbcb
	.uaword	.LLST4
	.uleb128 0x19
	.uaword	0xbc2
	.byte	0x7
	.uleb128 0x1a
	.uaword	.LBB23
	.uaword	.LBE23
	.uleb128 0x1b
	.uaword	0xbd4
	.uaword	.LLST5
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0xbab
	.uaword	.LBB24
	.uaword	.LBE24
	.byte	0x1
	.byte	0xc8
	.uaword	0xde6
	.uleb128 0x18
	.uaword	0xbcb
	.uaword	.LLST6
	.uleb128 0x18
	.uaword	0xbc2
	.uaword	.LLST7
	.uleb128 0x1a
	.uaword	.LBB25
	.uaword	.LBE25
	.uleb128 0x1b
	.uaword	0xbd4
	.uaword	.LLST8
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0xbab
	.uaword	.LBB26
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xfa
	.uaword	0xe1b
	.uleb128 0x18
	.uaword	0xbcb
	.uaword	.LLST3
	.uleb128 0x18
	.uaword	0xbc2
	.uaword	.LLST10
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1b
	.uaword	0xbd4
	.uaword	.LLST11
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0xbe0
	.uaword	.LBB30
	.uaword	.LBE30
	.byte	0x1
	.byte	0xec
	.uaword	0xe47
	.uleb128 0x1a
	.uaword	.LBB31
	.uaword	.LBE31
	.uleb128 0x1e
	.uaword	0xc0f
	.uleb128 0x1b
	.uaword	0xc23
	.uaword	.LLST12
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0xc30
	.uaword	.LBB33
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xd2
	.uaword	0xe73
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x1b
	.uaword	0xc58
	.uaword	.LLST13
	.uleb128 0x1b
	.uaword	0xc68
	.uaword	.LLST14
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uaword	0xc75
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0xd6
	.uleb128 0x1d
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x1b
	.uaword	0xc9f
	.uaword	.LLST15
	.uleb128 0x1b
	.uaword	0xcb9
	.uaword	.LLST16
	.uleb128 0x20
	.uaword	.LVL35
	.uaword	0xedb
	.uaword	0xeb1
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x11
	.sleb128 -266042980
	.byte	0
	.uleb128 0x22
	.uaword	.LVL36
	.uaword	0xedb
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0x40
	.byte	0x3c
	.byte	0x24
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0xaef
	.uleb128 0x23
	.uaword	0xed5
	.uleb128 0x24
	.byte	0x4
	.uaword	0xb1b
	.uleb128 0x25
	.byte	0x1
	.string	"Mcal_WriteSafetyEndInitProtReg"
	.byte	0xa
	.uahalf	0x1b0
	.byte	0x1
	.byte	0x1
	.uaword	0xf10
	.uleb128 0x26
	.uaword	0xf10
	.uleb128 0x26
	.uaword	0xf1c
	.byte	0
	.uleb128 0x23
	.uaword	0xf15
	.uleb128 0x24
	.byte	0x4
	.uaword	0xf1b
	.uleb128 0x27
	.uleb128 0x23
	.uaword	0xb1b
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x6
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0x5
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
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
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
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
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL2
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
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL7
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL30
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL32
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x6
	.byte	0x75
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL2
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
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL3
	.uaword	.LVL4
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
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL7
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL30
	.uaword	.LVL35-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL13
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL22
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL13
	.uaword	.LVL28
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL28
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
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
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	0
	.uaword	0
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	0
	.uaword	0
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0
	.uaword	0
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"reserved_31"
.LASF0:
	.string	"reserved_2"
.LASF1:
	.string	"reserved_17"
.LASF3:
	.string	"RetVal"
	.extern	Mcal_WriteSafetyEndInitProtReg,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
