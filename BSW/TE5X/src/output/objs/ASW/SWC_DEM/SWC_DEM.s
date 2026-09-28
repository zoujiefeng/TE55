	.file	"SWC_DEM.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ASW_DEM_DataServices_DemPID_02_ReadData_func,"ax",@progbits
	.align 1
	.global	ASW_DEM_DataServices_DemPID_02_ReadData_func
	.type	ASW_DEM_DataServices_DemPID_02_ReadData_func, @function
ASW_DEM_DataServices_DemPID_02_ReadData_func:
.LFB19:
	.file 1 "ASW\\SWC_DEM\\SWC_DEM.c"
	.loc 1 60 0
.LVL0:
	.loc 1 94 0
	mov	%d2, 0
	ret
.LFE19:
	.size	ASW_DEM_DataServices_DemPID_02_ReadData_func, .-ASW_DEM_DataServices_DemPID_02_ReadData_func
.section .text.ASW_DEM_DataServices_DemPID_04_ReadData_func,"ax",@progbits
	.align 1
	.global	ASW_DEM_DataServices_DemPID_04_ReadData_func
	.type	ASW_DEM_DataServices_DemPID_04_ReadData_func, @function
ASW_DEM_DataServices_DemPID_04_ReadData_func:
.LFB20:
	.loc 1 103 0
.LVL1:
	.loc 1 138 0
	mov	%d2, 0
	ret
.LFE20:
	.size	ASW_DEM_DataServices_DemPID_04_ReadData_func, .-ASW_DEM_DataServices_DemPID_04_ReadData_func
.section .text.ASW_DEM_DataServices_DemPID_05_ReadData_func,"ax",@progbits
	.align 1
	.global	ASW_DEM_DataServices_DemPID_05_ReadData_func
	.type	ASW_DEM_DataServices_DemPID_05_ReadData_func, @function
ASW_DEM_DataServices_DemPID_05_ReadData_func:
.LFB21:
	.loc 1 147 0
.LVL2:
	.loc 1 182 0
	mov	%d2, 0
	ret
.LFE21:
	.size	ASW_DEM_DataServices_DemPID_05_ReadData_func, .-ASW_DEM_DataServices_DemPID_05_ReadData_func
.section .text.ASW_DEM_DataServices_DemPID_0C_ReadData_func,"ax",@progbits
	.align 1
	.global	ASW_DEM_DataServices_DemPID_0C_ReadData_func
	.type	ASW_DEM_DataServices_DemPID_0C_ReadData_func, @function
ASW_DEM_DataServices_DemPID_0C_ReadData_func:
.LFB22:
	.loc 1 191 0
.LVL3:
	.loc 1 229 0
	ret
.LFE22:
	.size	ASW_DEM_DataServices_DemPID_0C_ReadData_func, .-ASW_DEM_DataServices_DemPID_0C_ReadData_func
.section .text.ASW_DEM_DataServices_DemPID_0D_ReadData_func,"ax",@progbits
	.align 1
	.global	ASW_DEM_DataServices_DemPID_0D_ReadData_func
	.type	ASW_DEM_DataServices_DemPID_0D_ReadData_func, @function
ASW_DEM_DataServices_DemPID_0D_ReadData_func:
.LFB23:
	.loc 1 238 0
.LVL4:
	.loc 1 280 0
	mov	%d2, 0
	ret
.LFE23:
	.size	ASW_DEM_DataServices_DemPID_0D_ReadData_func, .-ASW_DEM_DataServices_DemPID_0D_ReadData_func
.section .text.ASW_DEM_DataServices_DemPID_42_ReadData_func,"ax",@progbits
	.align 1
	.global	ASW_DEM_DataServices_DemPID_42_ReadData_func
	.type	ASW_DEM_DataServices_DemPID_42_ReadData_func, @function
ASW_DEM_DataServices_DemPID_42_ReadData_func:
.LFB24:
	.loc 1 289 0
.LVL5:
	.loc 1 327 0
	mov	%d15, 0
	st.b	[%a4]0, %d15
	.loc 1 328 0
	mov	%d15, -123
	st.b	[%a4] 1, %d15
	.loc 1 334 0
	mov	%d2, 0
	ret
.LFE24:
	.size	ASW_DEM_DataServices_DemPID_42_ReadData_func, .-ASW_DEM_DataServices_DemPID_42_ReadData_func
.section .text.ASW_DEM_DataServices_DemPID_49_ReadData_func,"ax",@progbits
	.align 1
	.global	ASW_DEM_DataServices_DemPID_49_ReadData_func
	.type	ASW_DEM_DataServices_DemPID_49_ReadData_func, @function
ASW_DEM_DataServices_DemPID_49_ReadData_func:
.LFB25:
	.loc 1 343 0
.LVL6:
	.loc 1 378 0
	mov	%d2, 0
	ret
.LFE25:
	.size	ASW_DEM_DataServices_DemPID_49_ReadData_func, .-ASW_DEM_DataServices_DemPID_49_ReadData_func
.section .text.RunnableEntity_swc_dem,"ax",@progbits
	.align 1
	.global	RunnableEntity_swc_dem
	.type	RunnableEntity_swc_dem, @function
RunnableEntity_swc_dem:
.LFB26:
	.loc 1 387 0
	ret
.LFE26:
	.size	RunnableEntity_swc_dem, .-RunnableEntity_swc_dem
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
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.align 2
.LEFDE14:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x5d7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\SWC_DEM\\SWC_DEM.c"
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
	.uaword	0x1a4
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1b5
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x75
	.uaword	0x25f
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
	.uaword	0x20a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x20a
	.uleb128 0x5
	.byte	0x1
	.string	"ASW_DEM_DataServices_DemPID_02_ReadData_func"
	.byte	0x1
	.byte	0x38
	.byte	0x1
	.uaword	0x293
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x30f
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3a
	.uaword	0x2a9
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0x44
	.uaword	0x293
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"ASW_DEM_DataServices_DemPID_04_ReadData_func"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uaword	0x293
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x36f
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0x65
	.uaword	0x2a9
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0x6f
	.uaword	0x293
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"ASW_DEM_DataServices_DemPID_05_ReadData_func"
	.byte	0x1
	.byte	0x8f
	.byte	0x1
	.uaword	0x293
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3cf
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0x91
	.uaword	0x2a9
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0x9b
	.uaword	0x293
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"ASW_DEM_DataServices_DemPID_0C_ReadData_func"
	.byte	0x1
	.byte	0xbb
	.byte	0x1
	.uaword	0x293
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x42f
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0xbd
	.uaword	0x2a9
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0xc9
	.uaword	0x293
	.byte	0
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"ASW_DEM_DataServices_DemPID_0D_ReadData_func"
	.byte	0x1
	.byte	0xea
	.byte	0x1
	.uaword	0x293
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x48f
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0xec
	.uaword	0x2a9
	.byte	0x1
	.byte	0x64
	.uleb128 0x7
	.uaword	.LASF1
	.byte	0x1
	.byte	0xf6
	.uaword	0x293
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"ASW_DEM_DataServices_DemPID_42_ReadData_func"
	.byte	0x1
	.uahalf	0x11d
	.byte	0x1
	.uaword	0x293
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x54e
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x2a9
	.uaword	.LLST0
	.uleb128 0xa
	.string	"u16LocAdcRaw"
	.byte	0x1
	.uahalf	0x127
	.uaword	0x217
	.byte	0
	.uleb128 0xb
	.string	"f32LocBatValAd"
	.byte	0x1
	.uahalf	0x128
	.uaword	0x250
	.byte	0x4
	.uaword	0x43059999
	.uleb128 0xa
	.string	"TempVal"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x217
	.byte	0x85
	.uleb128 0xc
	.string	"TempPtr"
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x2a9
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+1304
	.sleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x12d
	.uaword	0x293
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"ASW_DEM_DataServices_DemPID_49_ReadData_func"
	.byte	0x1
	.uahalf	0x153
	.byte	0x1
	.uaword	0x293
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5b1
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x155
	.uaword	0x2a9
	.byte	0x1
	.byte	0x64
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x15f
	.uaword	0x293
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"RunnableEntity_swc_dem"
	.byte	0x1
	.uahalf	0x17f
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0x1c
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
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
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL5
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL5
	.uaword	.LFE24
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x54
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"Data"
.LASF1:
	.string	"retValue"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
