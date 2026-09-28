	.file	"DRV83xx_HAL.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.DRV83xxHAL_u8SpiInit,"ax",@progbits
	.align 1
	.global	DRV83xxHAL_u8SpiInit
	.type	DRV83xxHAL_u8SpiInit, @function
DRV83xxHAL_u8SpiInit:
.LFB0:
	.file 1 "bswcdd\\PreDriver\\Drv8340\\DRV83xx_HAL.c"
	.loc 1 35 0
	.loc 1 36 0
	mov	%d4, 1
	j	Qspi_CddInit
.LVL0:
.LFE0:
	.size	DRV83xxHAL_u8SpiInit, .-DRV83xxHAL_u8SpiInit
.section .text.DRV83xxHAL_bIsComEnd,"ax",@progbits
	.align 1
	.global	DRV83xxHAL_bIsComEnd
	.type	DRV83xxHAL_bIsComEnd, @function
DRV83xxHAL_bIsComEnd:
.LFB1:
	.loc 1 40 0
	.loc 1 43 0
	mov	%d4, 1
	call	Qspi_CddRxDone
.LVL1:
	.loc 1 46 0
	eq	%d2, %d2, 0
.LVL2:
	ret
.LFE1:
	.size	DRV83xxHAL_bIsComEnd, .-DRV83xxHAL_bIsComEnd
.section .text.DRV83xxHAL_vidSpiWrite,"ax",@progbits
	.align 1
	.global	DRV83xxHAL_vidSpiWrite
	.type	DRV83xxHAL_vidSpiWrite, @function
DRV83xxHAL_vidSpiWrite:
.LFB2:
	.loc 1 49 0
.LVL3:
	.loc 1 50 0
	movh.a	%a4, hi:DRV83xxHAL_xRegMapTxBuf
	movh.a	%a5, hi:DRV83xxHAL_xRegMapRxBuf
	.loc 1 49 0
	mov	%d5, %d4
	.loc 1 50 0
	lea	%a4, [%a4] lo:DRV83xxHAL_xRegMapTxBuf
	mov	%d4, 1
.LVL4:
	lea	%a5, [%a5] lo:DRV83xxHAL_xRegMapRxBuf
	j	Qspi_CddTxRx
.LVL5:
.LFE2:
	.size	DRV83xxHAL_vidSpiWrite, .-DRV83xxHAL_vidSpiWrite
.section .text.DRV83xx_u8GetDriverCur,"ax",@progbits
	.align 1
	.global	DRV83xx_u8GetDriverCur
	.type	DRV83xx_u8GetDriverCur, @function
DRV83xx_u8GetDriverCur:
.LFB3:
	.loc 1 62 0
	.loc 1 64 0
	movh.a	%a15, hi:DRV83xxRegDriverCur
	ld.bu	%d2, [%a15] lo:DRV83xxRegDriverCur
	ret
.LFE3:
	.size	DRV83xx_u8GetDriverCur, .-DRV83xx_u8GetDriverCur
.section .text.DRV83xx_u8SetDriverCur,"ax",@progbits
	.align 1
	.global	DRV83xx_u8SetDriverCur
	.type	DRV83xx_u8SetDriverCur, @function
DRV83xx_u8SetDriverCur:
.LFB4:
	.loc 1 75 0
.LVL6:
	.loc 1 76 0
	movh.a	%a15, hi:DRV83xxRegDriverCur
	st.b	[%a15] lo:DRV83xxRegDriverCur, %d4
	ret
.LFE4:
	.size	DRV83xx_u8SetDriverCur, .-DRV83xx_u8SetDriverCur
	.global	DRV83xxRegDriverCur
.section .bss.a1.DRV83xxRegDriverCur,"aw",@nobits
	.type	DRV83xxRegDriverCur, @object
	.size	DRV83xxRegDriverCur, 1
DRV83xxRegDriverCur:
	.zero	1
	.global	DRV83xxHAL_xRegMapTxBuf
.section .bss.a4.DRV83xxHAL_xRegMapTxBuf,"aw",@nobits
	.align 2
	.type	DRV83xxHAL_xRegMapTxBuf, @object
	.size	DRV83xxHAL_xRegMapTxBuf, 80
DRV83xxHAL_xRegMapTxBuf:
	.zero	80
	.global	DRV83xxHAL_xRegMapRxBuf
.section .bss.a4.DRV83xxHAL_xRegMapRxBuf,"aw",@nobits
	.align 2
	.type	DRV83xxHAL_xRegMapRxBuf, @object
	.size	DRV83xxHAL_xRegMapRxBuf, 80
DRV83xxHAL_xRegMapRxBuf:
	.zero	80
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
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\Qspi_dma\\Qspi_dma.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x50a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\PreDriver\\Drv8340\\DRV83xx_HAL.c"
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
	.uaword	0x1d1
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
	.uaword	0x22b
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
	.uaword	0x1d1
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
	.uaword	0x1c4
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21d
	.uleb128 0x5
	.byte	0x1
	.string	"DRV83xxHAL_u8SpiInit"
	.byte	0x1
	.byte	0x22
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2fb
	.uleb128 0x6
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x4a1
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"DRV83xxHAL_bIsComEnd"
	.byte	0x1
	.byte	0x27
	.byte	0x1
	.uaword	0x268
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x350
	.uleb128 0x9
	.string	"bReadResult"
	.byte	0x1
	.byte	0x29
	.uaword	0x268
	.uaword	.LLST0
	.uleb128 0xa
	.uaword	.LVL1
	.uaword	0x4c2
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"DRV83xxHAL_vidSpiWrite"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3b5
	.uleb128 0xb
	.string	"u8DataSize"
	.byte	0x1
	.byte	0x30
	.uaword	0x1c4
	.uaword	.LLST1
	.uleb128 0x6
	.uaword	.LVL5
	.byte	0x1
	.uaword	0x4e5
	.uleb128 0x7
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	DRV83xxHAL_xRegMapRxBuf
	.uleb128 0x7
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	DRV83xxHAL_xRegMapTxBuf
	.uleb128 0x7
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.string	"DRV83xx_u8GetDriverCur"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	0x1c4
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.string	"DRV83xx_u8SetDriverCur"
	.byte	0x1
	.byte	0x4a
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x423
	.uleb128 0xd
	.string	"u8DriverCur"
	.byte	0x1
	.byte	0x4a
	.uaword	0x1c4
	.byte	0x1
	.byte	0x54
	.byte	0
	.uleb128 0xe
	.uaword	0x21d
	.uaword	0x433
	.uleb128 0xf
	.uaword	0x2ae
	.byte	0x13
	.byte	0
	.uleb128 0x10
	.string	"DRV83xxHAL_xRegMapRxBuf"
	.byte	0x1
	.byte	0x1c
	.uaword	0x423
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DRV83xxHAL_xRegMapRxBuf
	.uleb128 0x10
	.string	"DRV83xxHAL_xRegMapTxBuf"
	.byte	0x1
	.byte	0x1d
	.uaword	0x423
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DRV83xxHAL_xRegMapTxBuf
	.uleb128 0x10
	.string	"DRV83xxRegDriverCur"
	.byte	0x1
	.byte	0x1e
	.uaword	0x1c4
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	DRV83xxRegDriverCur
	.uleb128 0x11
	.byte	0x1
	.string	"Qspi_CddInit"
	.byte	0x4
	.byte	0x60
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uaword	0x4c2
	.uleb128 0x12
	.uaword	0x1c4
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"Qspi_CddRxDone"
	.byte	0x4
	.byte	0x63
	.byte	0x1
	.uaword	0x298
	.byte	0x1
	.uaword	0x4e5
	.uleb128 0x12
	.uaword	0x1c4
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"Qspi_CddTxRx"
	.byte	0x4
	.byte	0x61
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.uaword	0x1c4
	.uleb128 0x12
	.uaword	0x2ba
	.uleb128 0x12
	.uaword	0x2ba
	.uleb128 0x12
	.uaword	0x1c4
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
	.uleb128 0x7
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x12
	.uleb128 0x5
	.byte	0
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
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL4
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x3c
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
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Qspi_CddTxRx,STT_FUNC,0
	.extern	Qspi_CddRxDone,STT_FUNC,0
	.extern	Qspi_CddInit,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
