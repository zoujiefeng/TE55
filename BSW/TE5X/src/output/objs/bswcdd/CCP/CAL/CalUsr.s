	.file	"CalUsr.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	CalUsr_vidInit
	.type	CalUsr_vidInit, @function
CalUsr_vidInit:
.LFB0:
	.file 1 "bswcdd\\CCP\\CAL\\CalUsr.c"
	.loc 1 80 0
.LVL0:
	.loc 1 86 0
	movh.a	%a15, 32774
	add.a	%a15, -4
	ld.w	%d15, [%a15]0
	movh.a	%a15, hi:CalUsr_u32PODataCRC
	st.w	[%a15] lo:CalUsr_u32PODataCRC, %d15
	.loc 1 87 0
	movh.a	%a15, hi:CalUsr_ku32CalibUpdEnaMskA
	ld.w	%d15, [%a15] lo:CalUsr_ku32CalibUpdEnaMskA
	movh.a	%a15, hi:CalUsr_u32POCalibDnEnaMskA
	st.w	[%a15] lo:CalUsr_u32POCalibDnEnaMskA, %d15
	.loc 1 88 0
	movh.a	%a15, hi:CalUsr_ku32CalibUpdEnaMskB
	ld.w	%d15, [%a15] lo:CalUsr_ku32CalibUpdEnaMskB
	movh.a	%a15, hi:CalUsr_u32POCalibDnEnaMskB
	st.w	[%a15] lo:CalUsr_u32POCalibDnEnaMskB, %d15
	.loc 1 89 0
	mov	%d15, 0
	movh.a	%a15, hi:CalUsr_u32ChkDataCrc
	st.w	[%a15] lo:CalUsr_u32ChkDataCrc, %d15
	ret
.LFE0:
	.size	CalUsr_vidInit, .-CalUsr_vidInit
	.align 1
	.global	CalUsr_bVerifyCalData
	.type	CalUsr_bVerifyCalData, @function
CalUsr_bVerifyCalData:
.LFB1:
	.loc 1 104 0
.LVL1:
	.loc 1 116 0
	movh.a	%a15, hi:CalUsr_u32POCalibDnEnaMskA
	movh	%d15, 43691
	ld.w	%d3, [%a15] lo:CalUsr_u32POCalibDnEnaMskA
	addi	%d15, %d15, -21846
	.loc 1 152 0
	mov	%d2, 0
	.loc 1 116 0
	jeq	%d3, %d15, .L7
.L3:
.LVL2:
	.loc 1 156 0
	ret
.LVL3:
.L7:
	.loc 1 117 0
	movh.a	%a15, hi:CalUsr_u32POCalibDnEnaMskB
	movh	%d15, 48060
	ld.w	%d3, [%a15] lo:CalUsr_u32POCalibDnEnaMskB
	addi	%d15, %d15, -17477
	jne	%d3, %d15, .L3
	.loc 1 122 0
	lha	%a4, -2147123200
	mov	%d4, 1024
	mov	%d5, -1
	mov	%d6, 1
	call	Crc_CalculateCRC32
.LVL4:
	.loc 1 123 0
	movh.a	%a15, hi:CalUsr_u32ChkDataCrc
	st.w	[%a15] lo:CalUsr_u32ChkDataCrc, %d2
	.loc 1 127 0
	movh.a	%a15, 32774
	add.a	%a15, -4
	.loc 1 131 0
	ld.w	%d3, [%a15]0
	.loc 1 122 0
	mov	%d15, %d2
.LVL5:
	.loc 1 137 0
	eq	%d2, %d2, %d3
.LVL6:
	and.ne	%d2, %d15, -1
.LVL7:
	.loc 1 156 0
	ret
.LFE1:
	.size	CalUsr_bVerifyCalData, .-CalUsr_bVerifyCalData
	.align 1
	.global	CALUsr_bIsCalDownldEnabled
	.type	CALUsr_bIsCalDownldEnabled, @function
CALUsr_bIsCalDownldEnabled:
.LFB2:
	.loc 1 170 0
	.loc 1 174 0
	movh.a	%a15, hi:CalUsr_ku32CalibUpdEnaMskA
	movh	%d15, 43691
	ld.w	%d3, [%a15] lo:CalUsr_ku32CalibUpdEnaMskA
	addi	%d15, %d15, -21846
	.loc 1 181 0
	mov	%d2, 0
	.loc 1 174 0
	jeq	%d3, %d15, .L11
.LVL8:
	.loc 1 183 0
	movh.a	%a15, hi:CalUsr_bIsCalibUpdEna
	st.b	[%a15] lo:CalUsr_bIsCalibUpdEna, %d2
	.loc 1 186 0
	ret
.LVL9:
.L11:
	.loc 1 177 0
	movh.a	%a15, hi:CalUsr_ku32CalibUpdEnaMskB
	ld.w	%d2, [%a15] lo:CalUsr_ku32CalibUpdEnaMskB
	movh	%d15, 48060
	addi	%d15, %d15, -17477
	eq	%d2, %d2, %d15
.LVL10:
	.loc 1 183 0
	movh.a	%a15, hi:CalUsr_bIsCalibUpdEna
	st.b	[%a15] lo:CalUsr_bIsCalibUpdEna, %d2
	.loc 1 186 0
	ret
.LFE2:
	.size	CALUsr_bIsCalDownldEnabled, .-CALUsr_bIsCalDownldEnabled
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\CCP\\CAL\\CALUSR_L.h"
	.file 4 "bswcdd\\CCP\\CAL\\CALUSR.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\Crc\\Crc.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x555
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCP\\CAL\\CalUsr.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1be
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
	.uaword	0x218
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
	.uaword	0x1be
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1b1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x291
	.uleb128 0x5
	.uaword	0x1b1
	.uleb128 0x6
	.byte	0x1
	.string	"CalUsr_vidInit"
	.byte	0x1
	.byte	0x4f
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2e2
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x51
	.uaword	0x20a
	.sleb128 -2147090436
	.uleb128 0x8
	.string	"pu32LocDst"
	.byte	0x1
	.byte	0x52
	.uaword	0x2e2
	.sleb128 -2147090436
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x20a
	.uleb128 0x9
	.byte	0x1
	.string	"CalUsr_bVerifyCalData"
	.byte	0x1
	.byte	0x67
	.byte	0x1
	.uaword	0x255
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3eb
	.uleb128 0xa
	.string	"bLocIsCalVerifyOK"
	.byte	0x1
	.byte	0x69
	.uaword	0x255
	.uaword	.LLST0
	.uleb128 0xa
	.string	"u32LocChkCRC"
	.byte	0x1
	.byte	0x6a
	.uaword	0x20a
	.uaword	.LLST1
	.uleb128 0xa
	.string	"u32LocSaveCRC"
	.byte	0x1
	.byte	0x6b
	.uaword	0x20a
	.uaword	.LLST2
	.uleb128 0x8
	.string	"u32LocCalUsrStartAddr"
	.byte	0x1
	.byte	0x6c
	.uaword	0x20a
	.sleb128 -2147123200
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x6d
	.uaword	0x20a
	.sleb128 -2147090436
	.uleb128 0x8
	.string	"pu8LocDst"
	.byte	0x1
	.byte	0x6e
	.uaword	0x285
	.sleb128 -2147123200
	.uleb128 0x8
	.string	"pu32LocCrc"
	.byte	0x1
	.byte	0x6f
	.uaword	0x2e2
	.sleb128 -2147090436
	.uleb128 0xb
	.uaword	.LVL4
	.uaword	0x526
	.uleb128 0xc
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x31
	.uleb128 0xc
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x9
	.byte	0xff
	.uleb128 0xc
	.byte	0x1
	.byte	0x54
	.byte	0x3
	.byte	0xa
	.uahalf	0x400
	.uleb128 0xc
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x11
	.sleb128 -2147123200
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"CALUsr_bIsCalDownldEnabled"
	.byte	0x1
	.byte	0xa9
	.byte	0x1
	.uaword	0x255
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x437
	.uleb128 0xa
	.string	"bLocIsDnEna"
	.byte	0x1
	.byte	0xab
	.uaword	0x255
	.uaword	.LLST3
	.byte	0
	.uleb128 0xd
	.string	"CalUsr_u32ChkDataCrc"
	.byte	0x3
	.byte	0x3b
	.uaword	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"CalUsr_u32POCalibDnEnaMskA"
	.byte	0x3
	.byte	0x3c
	.uaword	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"CalUsr_u32POCalibDnEnaMskB"
	.byte	0x3
	.byte	0x3d
	.uaword	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"CalUsr_ku32CalibUpdEnaMskA"
	.byte	0x4
	.byte	0x36
	.uaword	0x4c1
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x20a
	.uleb128 0xd
	.string	"CalUsr_ku32CalibUpdEnaMskB"
	.byte	0x4
	.byte	0x37
	.uaword	0x4c1
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"CalUsr_bIsCalibUpdEna"
	.byte	0x4
	.byte	0x41
	.uaword	0x255
	.byte	0x1
	.byte	0x1
	.uleb128 0xd
	.string	"CalUsr_u32PODataCRC"
	.byte	0x4
	.byte	0x42
	.uaword	0x20a
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.byte	0x1
	.string	"Crc_CalculateCRC32"
	.byte	0x5
	.byte	0x41
	.byte	0x1
	.uaword	0x20a
	.byte	0x1
	.uleb128 0xf
	.uaword	0x28b
	.uleb128 0xf
	.uaword	0x20a
	.uleb128 0xf
	.uaword	0x20a
	.uleb128 0xf
	.uaword	0x255
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uaword	.LVL1-.text
	.uaword	.LVL2-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2-.text
	.uaword	.LVL3-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL3-.text
	.uaword	.LVL7-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL7-.text
	.uaword	.LFE1-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1-.text
	.uaword	.LVL5-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5-.text
	.uaword	.LVL6-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6-.text
	.uaword	.LFE1-.text
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1-.text
	.uaword	.LVL5-.text
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5-.text
	.uaword	.LFE1-.text
	.uahalf	0x6
	.byte	0x11
	.sleb128 -2147090436
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL8-.text
	.uaword	.LVL9-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL10-.text
	.uaword	.LFE2-.text
	.uahalf	0x1
	.byte	0x52
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
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"u32LocCalUsrCRCAddr"
	.extern	CalUsr_bIsCalibUpdEna,STT_OBJECT,1
	.extern	Crc_CalculateCRC32,STT_FUNC,0
	.extern	CalUsr_u32ChkDataCrc,STT_OBJECT,4
	.extern	CalUsr_u32POCalibDnEnaMskB,STT_OBJECT,4
	.extern	CalUsr_ku32CalibUpdEnaMskB,STT_OBJECT,4
	.extern	CalUsr_u32POCalibDnEnaMskA,STT_OBJECT,4
	.extern	CalUsr_ku32CalibUpdEnaMskA,STT_OBJECT,4
	.extern	CalUsr_u32PODataCRC,STT_OBJECT,4
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
