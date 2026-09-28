	.file	"UcbSwap.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Swap_u8GetInactiveBank,"ax",@progbits
	.align 1
	.global	Swap_u8GetInactiveBank
	.type	Swap_u8GetInactiveBank, @function
Swap_u8GetInactiveBank:
.LFB31:
	.file 1 "bswcdd\\UcbSwap\\UcbSwap.c"
	.loc 1 104 0
	.loc 1 106 0
	movh.a	%a15, hi:Swap
	lea	%a15, [%a15] lo:Swap
	ld.bu	%d2, [%a15] 3
	ret
.LFE31:
	.size	Swap_u8GetInactiveBank, .-Swap_u8GetInactiveBank
.section .text.Swap_u8GetActiveBank,"ax",@progbits
	.align 1
	.global	Swap_u8GetActiveBank
	.type	Swap_u8GetActiveBank, @function
Swap_u8GetActiveBank:
.LFB32:
	.loc 1 109 0
	.loc 1 111 0
	movh.a	%a15, hi:Swap
	lea	%a15, [%a15] lo:Swap
	ld.bu	%d2, [%a15] 2
	ret
.LFE32:
	.size	Swap_u8GetActiveBank, .-Swap_u8GetActiveBank
.section .text.Swap_Init,"ax",@progbits
	.align 1
	.global	Swap_Init
	.type	Swap_Init, @function
Swap_Init:
.LFB33:
	.loc 1 124 0
	.loc 1 125 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24908
	ld.w	%d15, [%a15]0
.LVL0:
	.loc 1 128 0
	movh.a	%a15, hi:Swap
	lea	%a15, [%a15] lo:Swap
	mov	%d2, 0
	.loc 1 126 0
	and	%d15, %d15, 3
.LVL1:
	.loc 1 128 0
	st.b	[%a15] 1, %d2
	.loc 1 131 0
	jeq	%d15, 1, .L8
	.loc 1 139 0
	jeq	%d15, 2, .L9
	.loc 1 150 0
	mov	%d15, 85
.LVL2:
	.loc 1 149 0
	st.b	[%a15] 3, %d2
	.loc 1 150 0
	st.b	[%a15] 6, %d15
	.loc 1 151 0
	st.b	[%a15] 7, %d15
	ret
.LVL3:
.L8:
	.loc 1 135 0
	st.b	[%a15] 3, %d15
	.loc 1 136 0
	mov	%d15, 85
.LVL4:
	st.b	[%a15] 6, %d15
	.loc 1 137 0
	mov	%d15, -86
	.loc 1 134 0
	st.b	[%a15] 2, %d2
	.loc 1 137 0
	st.b	[%a15] 7, %d15
	ret
.LVL5:
.L9:
	.loc 1 142 0
	mov	%d15, 1
.LVL6:
	st.b	[%a15] 2, %d15
	.loc 1 144 0
	mov	%d15, -86
	st.b	[%a15] 6, %d15
	.loc 1 145 0
	mov	%d15, 85
	.loc 1 143 0
	st.b	[%a15] 3, %d2
	.loc 1 145 0
	st.b	[%a15] 7, %d15
	ret
.LFE33:
	.size	Swap_Init, .-Swap_Init
.section .text.Swap_bCheckSwapCondition,"ax",@progbits
	.align 1
	.global	Swap_bCheckSwapCondition
	.type	Swap_bCheckSwapCondition, @function
Swap_bCheckSwapCondition:
.LFB34:
	.loc 1 156 0
.LVL7:
	.loc 1 158 0
	movh.a	%a15, hi:Swap
	lea	%a15, [%a15] lo:Swap
	ld.bu	%d2, [%a15] 3
	mov	%d15, 7
	.loc 1 160 0
	movh.a	%a15, hi:Fbl_DataM_RamMirrorNV_ValidityFlagsBlock
	.loc 1 158 0
	sh	%d2, 2
.LVL8:
	sh	%d2, %d15, %d2
.LVL9:
	.loc 1 160 0
	ld.bu	%d15, [%a15] lo:Fbl_DataM_RamMirrorNV_ValidityFlagsBlock
	and	%d2, %d15
	.loc 1 170 0
	eq	%d2, %d2, 0
	ret
.LFE34:
	.size	Swap_bCheckSwapCondition, .-Swap_bCheckSwapCondition
	.global	Swap
.section .bss.a2.Swap,"aw",@nobits
	.align 1
	.type	Swap, @object
	.size	Swap, 8
Swap:
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
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 3 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 5 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 6 "bswcdd\\UcbSwap\\UcbSwap.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\ecu\\FBL_DataMPrvCfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x985
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\UcbSwap\\UcbSwap.c"
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
	.byte	0x2
	.byte	0x62
	.uaword	0x1e4
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
	.byte	0x2
	.byte	0x65
	.uaword	0x226
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.string	"_Ifx_SCU_SWAPCTRL_Bits"
	.byte	0x4
	.byte	0x3
	.uahalf	0x44d
	.uaword	0x292
	.uleb128 0x5
	.string	"ADDRCFG"
	.byte	0x3
	.uahalf	0x44f
	.uaword	0x1ce
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"SPARE"
	.byte	0x3
	.uahalf	0x450
	.uaword	0x1ce
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved_16"
	.byte	0x3
	.uahalf	0x451
	.uaword	0x1ce
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_SWAPCTRL_Bits"
	.byte	0x3
	.uahalf	0x452
	.uaword	0x22d
	.uleb128 0x7
	.byte	0x4
	.byte	0x3
	.uahalf	0x7b9
	.uaword	0x2d8
	.uleb128 0x8
	.string	"U"
	.byte	0x3
	.uahalf	0x7bb
	.uaword	0x1ce
	.uleb128 0x8
	.string	"I"
	.byte	0x3
	.uahalf	0x7bc
	.uaword	0x210
	.uleb128 0x8
	.string	"B"
	.byte	0x3
	.uahalf	0x7bd
	.uaword	0x292
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_SWAPCTRL"
	.byte	0x3
	.uahalf	0x7be
	.uaword	0x2b0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x51
	.uaword	0x1a7
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x4
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
	.uleb128 0x3
	.string	"boolean"
	.byte	0x4
	.byte	0x80
	.uaword	0x1a7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x9
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x15
	.uaword	0x441
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
	.uaword	0x4b9
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
	.uaword	0x6f6
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
	.uaword	.LASF0
	.byte	0x8
	.byte	0x6
	.byte	0x12
	.uaword	0x7e6
	.uleb128 0xd
	.string	"bSwapEnabled"
	.byte	0x6
	.byte	0x13
	.uaword	0x356
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"bSwapNeedToErase"
	.byte	0x6
	.byte	0x14
	.uaword	0x356
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0xd
	.string	"u8ActivePFlashBank"
	.byte	0x6
	.byte	0x15
	.uaword	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xd
	.string	"u8InactivePFlashBank"
	.byte	0x6
	.byte	0x16
	.uaword	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0xd
	.string	"u8ActiveSwapBlockIndex"
	.byte	0x6
	.byte	0x17
	.uaword	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"u8NextSwapBlockIndex"
	.byte	0x6
	.byte	0x18
	.uaword	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xd
	.string	"u8CurMarkerCode"
	.byte	0x6
	.byte	0x19
	.uaword	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xd
	.string	"u8NextMarkerCode"
	.byte	0x6
	.byte	0x1a
	.uaword	0x2fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.byte	0
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x6
	.byte	0x1b
	.uaword	0x6f6
	.uleb128 0xb
	.byte	0x1
	.byte	0x1
	.byte	0x5a
	.uaword	0x83a
	.uleb128 0xa
	.string	"SWAP_A_BANK_ACTIVE"
	.sleb128 0
	.uleb128 0xa
	.string	"SWAP_B_BANK_ACTIVE"
	.sleb128 1
	.uleb128 0xa
	.string	"SWAP_ACTIVE_ILLEGAL"
	.sleb128 2
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"Swap_u8GetInactiveBank"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB31
	.uaword	.LFE31
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xf
	.byte	0x1
	.string	"Swap_u8GetActiveBank"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	0x2fd
	.uaword	.LFB32
	.uaword	.LFE32
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"Swap_Init"
	.byte	0x1
	.byte	0x7b
	.byte	0x1
	.uaword	.LFB33
	.uaword	.LFE33
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8de
	.uleb128 0x11
	.string	"u32SwapCtrl"
	.byte	0x1
	.byte	0x7d
	.uaword	0x31b
	.uaword	.LLST0
	.uleb128 0x11
	.string	"u32AddrMode"
	.byte	0x1
	.byte	0x7e
	.uaword	0x31b
	.uaword	.LLST1
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"Swap_bCheckSwapCondition"
	.byte	0x1
	.byte	0x9b
	.byte	0x1
	.uaword	0x356
	.uaword	.LFB34
	.uaword	.LFE34
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x938
	.uleb128 0x13
	.string	"bCheckResult"
	.byte	0x1
	.byte	0x9d
	.uaword	0x356
	.uleb128 0x13
	.string	"u8ValidMask"
	.byte	0x1
	.byte	0x9e
	.uaword	0x2fd
	.byte	0
	.uleb128 0x14
	.uaword	0x2fd
	.uaword	0x943
	.uleb128 0x15
	.byte	0
	.uleb128 0x16
	.string	"Fbl_DataM_RamMirrorNV_ValidityFlagsBlock"
	.byte	0x7
	.byte	0x33
	.uaword	0x938
	.byte	0x1
	.byte	0x1
	.uleb128 0x17
	.string	"Swap"
	.byte	0x1
	.byte	0x65
	.uaword	0x7e6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Swap
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x2e
	.byte	0
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
	.uleb128 0x12
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x17
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x34
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
	.uaword	.LFB33
	.uaword	.LFE33-.LFB33
	.uaword	.LFB34
	.uaword	.LFE34-.LFB34
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB31
	.uaword	.LFE31
	.uaword	.LFB32
	.uaword	.LFE32
	.uaword	.LFB33
	.uaword	.LFE33
	.uaword	.LFB34
	.uaword	.LFE34
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"SwapManageBlock"
	.extern	Fbl_DataM_RamMirrorNV_ValidityFlagsBlock,STT_OBJECT,-1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
