	.file	"RunnableEntity_0_func_vit_06.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ASW_OBDCalcCVN,"ax",@progbits
	.align 1
	.global	ASW_OBDCalcCVN
	.type	ASW_OBDCalcCVN, @function
ASW_OBDCalcCVN:
.LFB242:
	.file 1 "ASW\\ASW_DCM\\obd\\RunnableEntity_0_func_vit_06.c"
	.loc 1 47 0
	.loc 1 48 0
	movh.a	%a4, hi:__OVERLAY_RAM_USER_START
	lea	%a4, [%a4] lo:__OVERLAY_RAM_USER_START
	mov.u	%d4, 32768
	mov	%d5, -1
	mov	%d6, 1
	call	Crc_CalculateCRC32
.LVL0:
	.loc 1 49 0
	movh.a	%a4, hi:__OVERLAY_RAM_START
	.loc 1 48 0
	movh.a	%a15, hi:ASW_OBDCVN
	.loc 1 49 0
	lea	%a4, [%a4] lo:__OVERLAY_RAM_START
	mov.u	%d4, 32768
	mov	%d5, %d2
	mov	%d6, 0
	.loc 1 48 0
	st.w	[%a15] lo:ASW_OBDCVN, %d2
	.loc 1 49 0
	call	Crc_CalculateCRC32
.LVL1:
	st.w	[%a15] lo:ASW_OBDCVN, %d2
	ret
.LFE242:
	.size	ASW_OBDCalcCVN, .-ASW_OBDCalcCVN
.section .text.RunnableEntity_0_func_vit_06,"ax",@progbits
	.align 1
	.global	RunnableEntity_0_func_vit_06
	.type	RunnableEntity_0_func_vit_06, @function
RunnableEntity_0_func_vit_06:
.LFB243:
	.loc 1 58 0
.LVL2:
	.loc 1 91 0
	movh.a	%a15, hi:ASW_OBDCVN
	ld.w	%d15, [%a15] lo:ASW_OBDCVN
	.loc 1 58 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 91 0
	sh	%d2, %d15, -24
	st.b	[%SP] 4, %d2
	.loc 1 92 0
	extr.u	%d2, %d15, 16, 8
	.loc 1 94 0
	st.b	[%SP] 7, %d15
	.loc 1 92 0
	st.b	[%SP] 5, %d2
	.loc 1 93 0
	extr.u	%d2, %d15, 8, 8
	.loc 1 96 0
	mov	%d15, 4
	st.b	[%a5]0, %d15
	.loc 1 97 0
	mov	%d4, 4
.LVL3:
	lea	%a5, [%SP] 4
.LVL4:
	.loc 1 93 0
	st.b	[%SP] 6, %d2
	.loc 1 97 0
	call	Rte_memcpy
.LVL5:
	.loc 1 103 0
	mov	%d2, 0
	ret
.LFE243:
	.size	RunnableEntity_0_func_vit_06, .-RunnableEntity_0_func_vit_06
	.global	ASW_OBDCVN
.section .bss.a4.ASW_OBDCVN,"aw",@nobits
	.align 2
	.type	ASW_OBDCVN, @object
	.size	ASW_OBDCVN, 4
ASW_OBDCVN:
	.zero	4
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
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.byte	0x4
	.uaword	.LCFI0-.LFB243
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuCcu.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\mcal\\OverlayManager.h"
	.file 9 ".\\output\\inc/..\\..\\rte\\Rte.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x6af
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_DCM\\obd\\RunnableEntity_0_func_vit_06.c"
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
	.uaword	0x1bd
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1ce
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x210
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1e4
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
	.byte	0x3
	.byte	0x60
	.uaword	0x223
	.uleb128 0x4
	.byte	0x4
	.uaword	0x223
	.uleb128 0x5
	.uaword	0x223
	.uaword	0x2e5
	.uleb128 0x6
	.uaword	0x217
	.byte	0x3
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2ed
	.uleb128 0x8
	.uleb128 0x9
	.string	"Dcm_OpStatusType"
	.byte	0x4
	.uahalf	0x11a
	.uaword	0x223
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x315
	.uleb128 0xa
	.uleb128 0xb
	.byte	0x8
	.byte	0x5
	.byte	0x8c
	.uaword	0x340
	.uleb128 0xc
	.string	"module"
	.byte	0x5
	.byte	0x8e
	.uaword	0x30f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"index"
	.byte	0x5
	.byte	0x8f
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"IfxModule_IndexMap"
	.byte	0x5
	.byte	0x90
	.uaword	0x316
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.byte	0x88
	.uaword	0x3bb
	.uleb128 0xe
	.string	"IfxCpu_Index_0"
	.sleb128 0
	.uleb128 0xe
	.string	"IfxCpu_Index_1"
	.sleb128 1
	.uleb128 0xe
	.string	"IfxCpu_Index_2"
	.sleb128 2
	.uleb128 0xe
	.string	"IfxCpu_Index_3"
	.sleb128 3
	.uleb128 0xe
	.string	"IfxCpu_Index_none"
	.sleb128 4
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.byte	0x7
	.uahalf	0x160
	.uaword	0x4c4
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_0p5"
	.sleb128 0
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_1p0"
	.sleb128 1
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_1p25"
	.sleb128 2
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_1p5"
	.sleb128 3
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_2p0"
	.sleb128 4
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_2p5"
	.sleb128 5
	.uleb128 0xe
	.string	"IfxScuCcu_ModulationAmplitude_count"
	.sleb128 6
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"ASW_OBDCalcCVN"
	.byte	0x1
	.byte	0x2e
	.byte	0x1
	.uaword	.LFB242
	.uaword	.LFE242
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x532
	.uleb128 0x11
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x30
	.uaword	0x210
	.byte	0x1
	.uaword	0x4fb
	.uleb128 0x12
	.byte	0
	.uleb128 0x13
	.uaword	.LVL0
	.uaword	0x67e
	.uaword	0x51b
	.uleb128 0x14
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0x14
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x8000
	.byte	0
	.uleb128 0x15
	.uaword	.LVL1
	.uaword	0x67e
	.uleb128 0x14
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x8000
	.byte	0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"RunnableEntity_0_func_vit_06"
	.byte	0x1
	.byte	0x34
	.byte	0x1
	.uaword	0x2b9
	.uaword	.LFB243
	.uaword	.LFE243
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x5f4
	.uleb128 0x17
	.string	"OpStatus"
	.byte	0x1
	.byte	0x36
	.uaword	0x2ee
	.uaword	.LLST1
	.uleb128 0x17
	.string	"DataValueBuffer"
	.byte	0x1
	.byte	0x37
	.uaword	0x2cf
	.uaword	.LLST2
	.uleb128 0x17
	.string	"DataValueBufferSize"
	.byte	0x1
	.byte	0x38
	.uaword	0x2cf
	.uaword	.LLST3
	.uleb128 0x18
	.string	"Data"
	.byte	0x1
	.byte	0x43
	.uaword	0x2d5
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x19
	.string	"retValue"
	.byte	0x1
	.byte	0x46
	.uaword	0x2b9
	.byte	0
	.uleb128 0x15
	.uaword	.LVL5
	.uaword	0x691
	.uleb128 0x14
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x34
	.uleb128 0x14
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x14
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0
	.byte	0
	.uleb128 0x5
	.uaword	0x340
	.uaword	0x604
	.uleb128 0x6
	.uaword	0x217
	.byte	0x3
	.byte	0
	.uleb128 0x1a
	.string	"IfxCpu_cfg_indexMap"
	.byte	0x6
	.byte	0xaa
	.uaword	0x621
	.byte	0x1
	.byte	0x1
	.uleb128 0x1b
	.uaword	0x5f4
	.uleb128 0x1a
	.string	"__OVERLAY_RAM_START"
	.byte	0x8
	.byte	0x16
	.uaword	0x25d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1a
	.string	"__OVERLAY_RAM_USER_START"
	.byte	0x8
	.byte	0x18
	.uaword	0x25d
	.byte	0x1
	.byte	0x1
	.uleb128 0x1c
	.string	"ASW_OBDCVN"
	.byte	0x1
	.byte	0x28
	.uaword	0x25d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ASW_OBDCVN
	.uleb128 0x11
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x30
	.uaword	0x210
	.byte	0x1
	.uaword	0x691
	.uleb128 0x12
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Rte_memcpy"
	.byte	0x9
	.byte	0x9e
	.byte	0x1
	.byte	0x1
	.uleb128 0x1e
	.uaword	0x2e5
	.uleb128 0x1e
	.uaword	0x2e7
	.uleb128 0x1e
	.uaword	0x230
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x5
	.uleb128 0x1
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
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB243
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE243
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LFE243
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL2
	.uaword	.LVL5-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5-1
	.uaword	.LFE243
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL4
	.uaword	.LFE243
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
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
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB242
	.uaword	.LFE242
	.uaword	.LFB243
	.uaword	.LFE243
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"Crc_CalculateCRC32"
	.extern	Rte_memcpy,STT_FUNC,0
	.extern	__OVERLAY_RAM_START,STT_OBJECT,4
	.extern	Crc_CalculateCRC32,STT_FUNC,0
	.extern	__OVERLAY_RAM_USER_START,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
