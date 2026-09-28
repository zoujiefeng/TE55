	.file	"Dcm_FailureAttemptCnt.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Dcm_GetAttemptCounter_L1,"ax",@progbits
	.align 1
	.global	Dcm_GetAttemptCounter_L1
	.type	Dcm_GetAttemptCounter_L1, @function
Dcm_GetAttemptCounter_L1:
.LFB31:
	.file 1 "ASW\\ASW_DCM\\src\\Dcm_FailureAttemptCnt.c"
	.loc 1 13 0
.LVL0:
	.loc 1 18 0
	movh.a	%a15, hi:UDS_au8FAC_L1_Ram
	ld.bu	%d15, [%a15] lo:UDS_au8FAC_L1_Ram
	.loc 1 21 0
	mov	%d2, 0
	.loc 1 18 0
	st.b	[%a4]0, %d15
	.loc 1 21 0
	ret
.LFE31:
	.size	Dcm_GetAttemptCounter_L1, .-Dcm_GetAttemptCounter_L1
.section .text.Dcm_SetAttemptCounter_L1,"ax",@progbits
	.align 1
	.global	Dcm_SetAttemptCounter_L1
	.type	Dcm_SetAttemptCounter_L1, @function
Dcm_SetAttemptCounter_L1:
.LFB32:
	.loc 1 24 0
.LVL1:
	.loc 1 35 0
	mov	%d2, 1
	.loc 1 27 0
	jeq	%d4, 2, .L3
	.loc 1 29 0
	movh.a	%a15, hi:UDS_au8FAC_L1_Ram
	st.b	[%a15] lo:UDS_au8FAC_L1_Ram, %d5
	.loc 1 30 0
	mov	%d4, 25
.LVL2:
	mov	%d5, 1
.LVL3:
	call	NvM_SetRamBlockStatus
.LVL4:
	.loc 1 31 0
	mov	%d4, 25
	mov.a	%a4, 0
	call	NvM_WriteBlock
.LVL5:
	.loc 1 25 0
	mov	%d2, 0
.L3:
.LVL6:
	.loc 1 39 0
	ret
.LFE32:
	.size	Dcm_SetAttemptCounter_L1, .-Dcm_SetAttemptCounter_L1
	.global	UDS_au8FAC_L1_Rom
.section .bss.a1.UDS_au8FAC_L1_Rom,"aw",@nobits
	.type	UDS_au8FAC_L1_Rom, @object
	.size	UDS_au8FAC_L1_Rom, 1
UDS_au8FAC_L1_Rom:
	.zero	1
	.global	UDS_au8FAC_L1_Ram
.section .bss.a1.UDS_au8FAC_L1_Ram,"aw",@nobits
	.type	UDS_au8FAC_L1_Ram, @object
	.size	UDS_au8FAC_L1_Ram, 1
UDS_au8FAC_L1_Ram:
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 5 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x81a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_DCM\\src\\Dcm_FailureAttemptCnt.c"
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
	.uaword	0x1d2
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
	.uaword	0x1fe
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
	.uaword	0x23a
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
	.uaword	0x1d2
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
	.uaword	0x1c5
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1c5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2d5
	.uleb128 0x5
	.uleb128 0x6
	.uaword	0x1c5
	.uaword	0x2e6
	.uleb128 0x7
	.uaword	0x2bd
	.byte	0
	.byte	0
	.uleb128 0x8
	.string	"Dcm_OpStatusType"
	.byte	0x4
	.uahalf	0x11a
	.uaword	0x1c5
	.uleb128 0x8
	.string	"NvM_BlockIdType"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x1f0
	.uleb128 0x8
	.string	"NvM_Rb_ConstVoidPtr"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x2cf
	.uleb128 0x9
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x15
	.uaword	0x3ee
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_UI_INDEX"
	.sleb128 0
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_VI_INDEX"
	.sleb128 1
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_WI_INDEX"
	.sleb128 2
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_VO_INDEX"
	.sleb128 3
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_VALID_PARAM_NO"
	.sleb128 4
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_MAX_NO"
	.sleb128 16
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.byte	0x5
	.byte	0x1f
	.uaword	0x466
	.uleb128 0xa
	.string	"eMAIN_CALIB_IDX_MCU1"
	.sleb128 0
	.uleb128 0xa
	.string	"eMAIN_CALIB_IDX_MCU2"
	.sleb128 1
	.uleb128 0xa
	.string	"eMAIN_CALIB_IDX_ACM"
	.sleb128 2
	.uleb128 0xa
	.string	"eMAIN_CALIB_IDX_EPS"
	.sleb128 3
	.uleb128 0xa
	.string	"eMAIN_CALIB_ECU_NO"
	.sleb128 4
	.byte	0
	.uleb128 0x9
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x27
	.uaword	0x6a3
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC00_INDEX"
	.sleb128 0
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC01_INDEX"
	.sleb128 1
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC02_INDEX"
	.sleb128 2
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC03_INDEX"
	.sleb128 3
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC04_INDEX"
	.sleb128 4
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC05_INDEX"
	.sleb128 5
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC06_INDEX"
	.sleb128 6
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC07_INDEX"
	.sleb128 7
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC08_INDEX"
	.sleb128 8
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC09_INDEX"
	.sleb128 9
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC10_INDEX"
	.sleb128 10
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC11_INDEX"
	.sleb128 11
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC12_INDEX"
	.sleb128 12
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC13_INDEX"
	.sleb128 13
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC14_INDEX"
	.sleb128 14
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC15_INDEX"
	.sleb128 15
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_RC16_INDEX"
	.sleb128 16
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_VALID_RC_NO"
	.sleb128 17
	.uleb128 0xa
	.string	"eMAIN_CALIB_BUF_MAX_RC_NO"
	.sleb128 25
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Dcm_GetAttemptCounter_L1"
	.byte	0x1
	.byte	0xc
	.byte	0x1
	.uaword	0x2a7
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6fc
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x1
	.byte	0xc
	.uaword	0x2e6
	.byte	0x1
	.byte	0x54
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.byte	0xc
	.uaword	0x2c9
	.byte	0x1
	.byte	0x64
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x1
	.byte	0x10
	.uaword	0x2a7
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"Dcm_SetAttemptCounter_L1"
	.byte	0x1
	.byte	0x17
	.byte	0x1
	.uaword	0x2a7
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x788
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.byte	0x17
	.uaword	0x2e6
	.uaword	.LLST0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.byte	0x17
	.uaword	0x1c5
	.uaword	.LLST1
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x1
	.byte	0x19
	.uaword	0x2a7
	.uaword	.LLST2
	.uleb128 0x11
	.uaword	.LVL4
	.uaword	0x7c8
	.uaword	0x773
	.uleb128 0x12
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x49
	.byte	0
	.uleb128 0x13
	.uaword	.LVL5
	.uaword	0x7f8
	.uleb128 0x12
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.uleb128 0x12
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x49
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"UDS_au8FAC_L1_Ram"
	.byte	0x1
	.byte	0x6
	.uaword	0x2d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	UDS_au8FAC_L1_Ram
	.uleb128 0x14
	.string	"UDS_au8FAC_L1_Rom"
	.byte	0x1
	.byte	0x7
	.uaword	0x2d6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	UDS_au8FAC_L1_Rom
	.uleb128 0x15
	.byte	0x1
	.string	"NvM_SetRamBlockStatus"
	.byte	0x6
	.uahalf	0x198
	.byte	0x1
	.uaword	0x2a7
	.byte	0x1
	.uaword	0x7f8
	.uleb128 0x16
	.uaword	0x2ff
	.uleb128 0x16
	.uaword	0x277
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"NvM_WriteBlock"
	.byte	0x6
	.uahalf	0x20e
	.byte	0x1
	.uaword	0x2a7
	.byte	0x1
	.uleb128 0x16
	.uaword	0x2ff
	.uleb128 0x16
	.uaword	0x317
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
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x5
	.byte	0
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
	.uleb128 0x5
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
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LFE32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL3
	.uaword	.LVL4-1
	.uahalf	0x5
	.byte	0x3
	.uaword	UDS_au8FAC_L1_Ram
	.uaword	.LVL4-1
	.uaword	.LFE32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LFE32
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.LFB31
	.uaword	.LFE31-.LFB31
	.uaword	.LFB32
	.uaword	.LFE32-.LFB32
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF2:
	.string	"RetValue"
.LASF0:
	.string	"OpStatus"
.LASF1:
	.string	"AttemptCounter"
	.extern	NvM_WriteBlock,STT_FUNC,0
	.extern	NvM_SetRamBlockStatus,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
