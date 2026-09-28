	.file	"UDS_DidCallbackRead.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.UDS_vidCallbackPreRead_0x0E00,"ax",@progbits
	.align 1
	.global	UDS_vidCallbackPreRead_0x0E00
	.type	UDS_vidCallbackPreRead_0x0E00, @function
UDS_vidCallbackPreRead_0x0E00:
.LFB0:
	.file 1 "bswcdd\\UDS\\UDS_DidCallbackRead.c"
	.loc 1 28 0
.LVL0:
	.loc 1 28 0
	mov.aa	%a15, %a5
	.loc 1 33 0
	call	MAIN_f32GetAutophsingAngle
.LVL1:
	.loc 1 34 0
	ftouz	%d2, %d2
.LVL2:
	extr.u	%d2, %d2, 0, 16
.LVL3:
	.loc 1 36 0
	sh	%d15, %d2, -8
	st.b	[%a15]0, %d15
.LVL4:
	.loc 1 37 0
	st.b	[%a15] 1, %d2
	ret
.LFE0:
	.size	UDS_vidCallbackPreRead_0x0E00, .-UDS_vidCallbackPreRead_0x0E00
.section .text.UDS_vidCallbackPreRead_0x1E00,"ax",@progbits
	.align 1
	.global	UDS_vidCallbackPreRead_0x1E00
	.type	UDS_vidCallbackPreRead_0x1E00, @function
UDS_vidCallbackPreRead_0x1E00:
.LFB1:
	.loc 1 42 0
.LVL5:
	.loc 1 42 0
	mov.aa	%a15, %a5
	.loc 1 47 0
	call	GMAIN_f32GetAutophsingAngle
.LVL6:
	.loc 1 48 0
	ftouz	%d2, %d2
.LVL7:
	extr.u	%d2, %d2, 0, 16
.LVL8:
	.loc 1 50 0
	sh	%d15, %d2, -8
	st.b	[%a15]0, %d15
.LVL9:
	.loc 1 51 0
	st.b	[%a15] 1, %d2
	ret
.LFE1:
	.size	UDS_vidCallbackPreRead_0x1E00, .-UDS_vidCallbackPreRead_0x1E00
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\UDS\\UDS_DidTypes.h"
	.file 4 ".\\output\\inc/..\\..\\main\\McuMain\\MAIN_tsk.h"
	.file 5 ".\\output\\inc/..\\..\\main\\GcuMain\\GMAIN_tsk.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x856
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\UDS\\UDS_DidCallbackRead.c"
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
	.uaword	0x1cb
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
	.uaword	0x1f7
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
	.uaword	0x25e
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
	.uleb128 0x4
	.uaword	.LASF0
	.byte	0x3
	.byte	0x10
	.uaword	0x29d
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x28
	.byte	0x3
	.byte	0x50
	.uaword	0x41e
	.uleb128 0x6
	.string	"u16DID"
	.byte	0x3
	.byte	0x51
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.string	"u16NvmBlockID"
	.byte	0x3
	.byte	0x52
	.uaword	0x1e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x6
	.string	"u8BufSize"
	.byte	0x3
	.byte	0x53
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x6
	.string	"u8DidLength"
	.byte	0x3
	.byte	0x54
	.uaword	0x1be
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x6
	.string	"eByteOrder"
	.byte	0x3
	.byte	0x56
	.uaword	0x47b
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x6
	.string	"eCfgTableEnd"
	.byte	0x3
	.byte	0x57
	.uaword	0x4eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x6
	.string	"eReadType"
	.byte	0x3
	.byte	0x58
	.uaword	0x55c
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x6
	.string	"eWriteType"
	.byte	0x3
	.byte	0x59
	.uaword	0x670
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x6
	.string	"eConvertType"
	.byte	0x3
	.byte	0x5a
	.uaword	0x6de
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x6
	.string	"f32Factor"
	.byte	0x3
	.byte	0x5c
	.uaword	0x24f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x6
	.string	"f32Offset"
	.byte	0x3
	.byte	0x5d
	.uaword	0x24f
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x6
	.string	"au8DataBuf"
	.byte	0x3
	.byte	0x5f
	.uaword	0x6e9
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x6
	.string	"vidCallbackPreRead"
	.byte	0x3
	.byte	0x60
	.uaword	0x710
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x6
	.string	"vidCallbackPostRead"
	.byte	0x3
	.byte	0x61
	.uaword	0x710
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x6
	.string	"vidCallbackPreWrite"
	.byte	0x3
	.byte	0x62
	.uaword	0x710
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x6
	.string	"vidCallbackPostWrite"
	.byte	0x3
	.byte	0x63
	.uaword	0x710
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0x3
	.byte	0x1b
	.uaword	0x47b
	.uleb128 0x8
	.string	"eUDS_DID_BYTE_ORDER_LSB"
	.sleb128 0
	.uleb128 0x8
	.string	"eUDS_DID_BYTE_ORDER_MSB"
	.sleb128 1
	.uleb128 0x8
	.string	"eUDS_DID_BYTE_ORDER_UNDEF"
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.uaword	.LASF1
	.byte	0x3
	.byte	0x1f
	.uaword	0x41e
	.uleb128 0x7
	.uaword	.LASF2
	.byte	0x1
	.byte	0x3
	.byte	0x21
	.uaword	0x4eb
	.uleb128 0x8
	.string	"eUDS_DID_CFG_TABLE_IS_END"
	.sleb128 0
	.uleb128 0x8
	.string	"eUDS_DID_CFG_TABLE_IS_CONTINUE"
	.sleb128 1
	.uleb128 0x8
	.string	"eUDS_DID_CFG_TABLE_UNDEF"
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.uaword	.LASF2
	.byte	0x3
	.byte	0x25
	.uaword	0x486
	.uleb128 0x7
	.uaword	.LASF3
	.byte	0x1
	.byte	0x3
	.byte	0x27
	.uaword	0x55c
	.uleb128 0x8
	.string	"eUDS_DID_READ_DISABLED"
	.sleb128 0
	.uleb128 0x8
	.string	"eUDS_DID_READ_HANDLE_BY_USER"
	.sleb128 1
	.uleb128 0x8
	.string	"eUDS_DID_READ_HANDLE_BY_MODULE"
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.uaword	.LASF3
	.byte	0x3
	.byte	0x2b
	.uaword	0x4f6
	.uleb128 0x7
	.uaword	.LASF4
	.byte	0x1
	.byte	0x3
	.byte	0x2d
	.uaword	0x670
	.uleb128 0x8
	.string	"eUDS_DID_WRITE_DISABLED"
	.sleb128 0
	.uleb128 0x8
	.string	"eUDS_DID_WRITE_HANDLE_BY_USER_NVM_ENABLED"
	.sleb128 1
	.uleb128 0x8
	.string	"eUDS_DID_WRITE_HANDLE_BY_MODULE_NVM_ENABLED"
	.sleb128 2
	.uleb128 0x8
	.string	"eUDS_DID_WRITE_HANDLE_BY_USER_NVM_DISABLED"
	.sleb128 3
	.uleb128 0x8
	.string	"eUDS_DID_WRITE_HANDLE_BY_MODULE_NVM_DISABLED"
	.sleb128 4
	.uleb128 0x8
	.string	"eUDS_DID_WRITE_HANDLE_BY_ASW_NVM_DISABLED"
	.sleb128 5
	.byte	0
	.uleb128 0x4
	.uaword	.LASF4
	.byte	0x3
	.byte	0x34
	.uaword	0x567
	.uleb128 0x7
	.uaword	.LASF5
	.byte	0x1
	.byte	0x3
	.byte	0x36
	.uaword	0x6de
	.uleb128 0x8
	.string	"eUDS_DID_CONVERT_DISABLED"
	.sleb128 0
	.uleb128 0x8
	.string	"eUDS_DID_CONVERT_BY_TRIGGER"
	.sleb128 1
	.uleb128 0x8
	.string	"eUDS_DID_CONVERT_BY_CYCLE"
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.uaword	.LASF5
	.byte	0x3
	.byte	0x3a
	.uaword	0x67b
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1be
	.uleb128 0xa
	.byte	0x1
	.uaword	0x700
	.uleb128 0xb
	.uaword	0x700
	.uleb128 0xb
	.uaword	0x6e9
	.byte	0
	.uleb128 0xc
	.uaword	0x705
	.uleb128 0x9
	.byte	0x4
	.uaword	0x70b
	.uleb128 0xc
	.uaword	0x292
	.uleb128 0x9
	.byte	0x4
	.uaword	0x6ef
	.uleb128 0xd
	.byte	0x1
	.string	"UDS_vidCallbackPreRead_0x0E00"
	.byte	0x1
	.byte	0x1b
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x792
	.uleb128 0xe
	.string	"kpktCfg"
	.byte	0x1
	.byte	0x1b
	.uaword	0x700
	.uaword	.LLST0
	.uleb128 0xe
	.string	"Data"
	.byte	0x1
	.byte	0x1b
	.uaword	0x6e9
	.uaword	.LLST1
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x1
	.byte	0x1e
	.uaword	0x25e
	.uaword	.LLST2
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x1
	.byte	0x1f
	.uaword	0x1e9
	.byte	0x1
	.byte	0x52
	.uleb128 0x11
	.uaword	.LVL1
	.uaword	0x80e
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.string	"UDS_vidCallbackPreRead_0x1E00"
	.byte	0x1
	.byte	0x29
	.byte	0x1
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x80e
	.uleb128 0xe
	.string	"kpktCfg"
	.byte	0x1
	.byte	0x29
	.uaword	0x700
	.uaword	.LLST3
	.uleb128 0xe
	.string	"Data"
	.byte	0x1
	.byte	0x29
	.uaword	0x6e9
	.uaword	.LLST4
	.uleb128 0xf
	.uaword	.LASF6
	.byte	0x1
	.byte	0x2c
	.uaword	0x25e
	.uaword	.LLST5
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x1
	.byte	0x2d
	.uaword	0x1e9
	.byte	0x1
	.byte	0x52
	.uleb128 0x11
	.uaword	.LVL6
	.uaword	0x833
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"MAIN_f32GetAutophsingAngle"
	.byte	0x4
	.byte	0x85
	.byte	0x1
	.uaword	0x25e
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"GMAIN_f32GetAutophsingAngle"
	.byte	0x5
	.byte	0x5d
	.byte	0x1
	.uaword	0x25e
	.byte	0x1
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
	.uleb128 0x4
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL1-1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE0
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL6-1
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL5
	.uaword	.LVL6-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL6-1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE1
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL7
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"UDS_eByteOrderType"
.LASF5:
	.string	"UDS_eConvertType"
.LASF4:
	.string	"UDS_eWriteType"
.LASF2:
	.string	"UDS_eCfgTableEndType"
.LASF0:
	.string	"UDS_tDidCfgType"
.LASF3:
	.string	"UDS_eReadType"
.LASF6:
	.string	"f32AutophsAng"
.LASF7:
	.string	"u16LocAutophsAngle"
	.extern	GMAIN_f32GetAutophsingAngle,STT_FUNC,0
	.extern	MAIN_f32GetAutophsingAngle,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
