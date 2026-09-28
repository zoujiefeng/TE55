	.file	"Crc.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Crc_GetVersionInfo,"ax",@progbits
	.align 1
	.global	Crc_GetVersionInfo
	.type	Crc_GetVersionInfo, @function
Crc_GetVersionInfo:
.LFB0:
	.file 1 "bsw\\Crc\\Crc.c"
	.loc 1 32 0
.LVL0:
	.loc 1 33 0
	jz.a	%a4, .L1
	.loc 1 36 0
	mov	%d15, 6
	st.h	[%a4]0, %d15
	.loc 1 37 0
	mov	%d15, 201
	st.h	[%a4] 2, %d15
	.loc 1 38 0
	mov	%d15, 8
	st.b	[%a4] 4, %d15
	.loc 1 39 0
	mov	%d15, 0
	st.b	[%a4] 5, %d15
	.loc 1 40 0
	st.b	[%a4] 6, %d15
.L1:
	ret
.LFE0:
	.size	Crc_GetVersionInfo, .-Crc_GetVersionInfo
.section .text.Crc_CalculateCRC8,"ax",@progbits
	.align 1
	.global	Crc_CalculateCRC8
	.type	Crc_CalculateCRC8, @function
Crc_CalculateCRC8:
.LFB1:
	.loc 1 71 0
.LVL1:
	.loc 1 71 0
	mov	%d2, %d5
	.loc 1 75 0
	jz.a	%a4, .L8
	.loc 1 77 0
	mov	%d15, 255
	jz	%d6, .L20
.L9:
.LVL2:
	.loc 1 79 0 discriminator 1
	jz	%d4, .L10
	mov.d	%d2, %a4
	addsc.a	%a15, %a4, %d4, 0
	not	%d2
	movh.a	%a3, hi:CRC_8_Tbl
	addsc.a	%a15, %a15, %d2, 0
	lea	%a3, [%a3] lo:CRC_8_Tbl
.LVL3:
.L11:
	.loc 1 82 0 discriminator 3
	ld.bu	%d2, [%a4+]1
.LVL4:
	.loc 1 84 0 discriminator 3
	xor	%d15, %d2
.LVL5:
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d15, [%a2]0
.LVL6:
	loop	%a15, .L11
.LVL7:
.L10:
	.loc 1 86 0
	not	%d15
	and	%d2, %d15, 255
.LVL8:
.L8:
	.loc 1 90 0
	ret
.LVL9:
.L20:
	.loc 1 77 0 discriminator 1
	nor	%d15, %d5, 0
	and	%d15, 255
	j	.L9
.LFE1:
	.size	Crc_CalculateCRC8, .-Crc_CalculateCRC8
.section .text.Crc_CalculateCRC8H2F,"ax",@progbits
	.align 1
	.global	Crc_CalculateCRC8H2F
	.type	Crc_CalculateCRC8H2F, @function
Crc_CalculateCRC8H2F:
.LFB2:
	.loc 1 119 0
.LVL10:
	.loc 1 119 0
	mov	%d2, %d5
	.loc 1 123 0
	jz.a	%a4, .L22
	.loc 1 125 0
	mov	%d15, 255
	jz	%d6, .L34
.L23:
.LVL11:
	.loc 1 127 0 discriminator 1
	jz	%d4, .L24
	mov.d	%d2, %a4
	addsc.a	%a15, %a4, %d4, 0
	not	%d2
	movh.a	%a3, hi:CRC_8H2F_Tbl
	addsc.a	%a15, %a15, %d2, 0
	lea	%a3, [%a3] lo:CRC_8H2F_Tbl
.LVL12:
.L25:
	.loc 1 130 0 discriminator 3
	ld.bu	%d2, [%a4+]1
.LVL13:
	.loc 1 132 0 discriminator 3
	xor	%d15, %d2
.LVL14:
	addsc.a	%a2, %a3, %d15, 0
	ld.bu	%d15, [%a2]0
.LVL15:
	loop	%a15, .L25
.LVL16:
.L24:
	.loc 1 134 0
	not	%d15
	and	%d2, %d15, 255
.LVL17:
.L22:
	.loc 1 138 0
	ret
.LVL18:
.L34:
	.loc 1 125 0 discriminator 1
	nor	%d15, %d5, 0
	and	%d15, 255
	j	.L23
.LFE2:
	.size	Crc_CalculateCRC8H2F, .-Crc_CalculateCRC8H2F
.section .text.Crc_CalculateCRC16,"ax",@progbits
	.align 1
	.global	Crc_CalculateCRC16
	.type	Crc_CalculateCRC16, @function
Crc_CalculateCRC16:
.LFB3:
	.loc 1 168 0
.LVL19:
	.loc 1 168 0
	mov	%d2, %d5
	.loc 1 172 0
	jz.a	%a4, .L36
	.loc 1 174 0
	mov.u	%d15, 65535
	seln	%d2, %d6, %d5, %d15
.LVL20:
	.loc 1 176 0
	jz	%d4, .L36
	mov.d	%d15, %a4
	addsc.a	%a15, %a4, %d4, 0
	not	%d15
	movh.a	%a3, hi:CRC_16_Tbl
	addsc.a	%a15, %a15, %d15, 0
	lea	%a3, [%a3] lo:CRC_16_Tbl
.LVL21:
.L39:
	.loc 1 179 0 discriminator 3
	ld.bu	%d15, [%a4+]1
.LVL22:
	sh	%d15, %d15, 8
	xor	%d2, %d15
.LVL23:
	.loc 1 181 0 discriminator 3
	sh	%d15, %d2, -8
	addsc.a	%a2, %a3, %d15, 1
	sh	%d2, %d2, 8
.LVL24:
	ld.h	%d15, [%a2]0
	xor	%d2, %d15
	extr.u	%d2, %d2, 0, 16
.LVL25:
	loop	%a15, .L39
.LVL26:
.L36:
	.loc 1 187 0
	ret
.LFE3:
	.size	Crc_CalculateCRC16, .-Crc_CalculateCRC16
.section .text.Crc_CalculateCRC32,"ax",@progbits
	.align 1
	.global	Crc_CalculateCRC32
	.type	Crc_CalculateCRC32, @function
Crc_CalculateCRC32:
.LFB4:
	.loc 1 221 0
.LVL27:
	.loc 1 221 0
	mov	%d2, %d5
.LVL28:
	.loc 1 225 0
	jz.a	%a4, .L49
	.loc 1 227 0
	not	%d2
	seln	%d6, %d6, %d2, -1
.LVL29:
	.loc 1 229 0
	jz	%d4, .L51
	mov.d	%d15, %a4
	addsc.a	%a15, %a4, %d4, 0
	not	%d15
	movh.a	%a3, hi:CRC_32_REV_Tbl
	addsc.a	%a15, %a15, %d15, 0
	lea	%a3, [%a3] lo:CRC_32_REV_Tbl
.LVL30:
.L52:
	.loc 1 232 0 discriminator 3
	ld.bu	%d15, [%a4+]1
.LVL31:
	xor	%d6, %d15
.LVL32:
	.loc 1 234 0 discriminator 3
	sh	%d15, %d6, -8
	and	%d6, %d6, 255
.LVL33:
	addsc.a	%a2, %a3, %d6, 2
	ld.w	%d6, [%a2]0
	xor	%d6, %d15
.LVL34:
	loop	%a15, .L52
.LVL35:
.L51:
	.loc 1 236 0
	nor	%d2, %d6, 0
.LVL36:
.L49:
	.loc 1 240 0
	ret
.LFE4:
	.size	Crc_CalculateCRC32, .-Crc_CalculateCRC32
.section .text.Crc_CalculateCRC32P4,"ax",@progbits
	.align 1
	.global	Crc_CalculateCRC32P4
	.type	Crc_CalculateCRC32P4, @function
Crc_CalculateCRC32P4:
.LFB5:
	.loc 1 274 0
.LVL37:
	.loc 1 274 0
	mov	%d2, %d5
.LVL38:
	.loc 1 278 0
	jz.a	%a4, .L62
	.loc 1 280 0
	not	%d2
	seln	%d6, %d6, %d2, -1
.LVL39:
	.loc 1 282 0
	jz	%d4, .L64
	mov.d	%d15, %a4
	addsc.a	%a15, %a4, %d4, 0
	not	%d15
	movh.a	%a3, hi:CRC_32P4_REV_Tbl
	addsc.a	%a15, %a15, %d15, 0
	lea	%a3, [%a3] lo:CRC_32P4_REV_Tbl
.LVL40:
.L65:
	.loc 1 285 0 discriminator 3
	ld.bu	%d15, [%a4+]1
.LVL41:
	xor	%d6, %d15
.LVL42:
	.loc 1 287 0 discriminator 3
	sh	%d15, %d6, -8
	and	%d6, %d6, 255
.LVL43:
	addsc.a	%a2, %a3, %d6, 2
	ld.w	%d6, [%a2]0
	xor	%d6, %d15
.LVL44:
	loop	%a15, .L65
.LVL45:
.L64:
	.loc 1 289 0
	nor	%d2, %d6, 0
.LVL46:
.L62:
	.loc 1 293 0
	ret
.LFE5:
	.size	Crc_CalculateCRC32P4, .-Crc_CalculateCRC32P4
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
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 "bsw\\Crc\\Crc_Cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x729
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Crc\\Crc.c"
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
	.uaword	0x1b8
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
	.uaword	0x1e4
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
	.uaword	0x220
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
	.uaword	0x1b8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x8
	.byte	0x3
	.byte	0x64
	.uaword	0x30d
	.uleb128 0x5
	.string	"vendorID"
	.byte	0x3
	.byte	0x66
	.uaword	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"moduleID"
	.byte	0x3
	.byte	0x67
	.uaword	0x1d6
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x5
	.string	"sw_major_version"
	.byte	0x3
	.byte	0x68
	.uaword	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"sw_minor_version"
	.byte	0x3
	.byte	0x69
	.uaword	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x5
	.string	"sw_patch_version"
	.byte	0x3
	.byte	0x6a
	.uaword	0x1ab
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.byte	0
	.uleb128 0x3
	.string	"Std_VersionInfoType"
	.byte	0x3
	.byte	0x6b
	.uaword	0x28d
	.uleb128 0x6
	.byte	0x4
	.uaword	0x32e
	.uleb128 0x7
	.uaword	0x1ab
	.uleb128 0x8
	.byte	0x1
	.string	"Crc_GetVersionInfo"
	.byte	0x1
	.byte	0x1f
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x371
	.uleb128 0x9
	.string	"VersionInfo"
	.byte	0x1
	.byte	0x1f
	.uaword	0x371
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.uaword	0x376
	.uleb128 0x6
	.byte	0x4
	.uaword	0x30d
	.uleb128 0xa
	.byte	0x1
	.string	"Crc_CalculateCRC8"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.uaword	0x1ab
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x40b
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0x46
	.uaword	0x328
	.uaword	.LLST0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x46
	.uaword	0x212
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x46
	.uaword	0x1ab
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.byte	0x46
	.uaword	0x25d
	.byte	0x1
	.byte	0x56
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.byte	0x48
	.uaword	0x212
	.uaword	.LLST1
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x1
	.byte	0x49
	.uaword	0x1ab
	.uaword	.LLST2
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x1
	.byte	0x4a
	.uaword	0x1ab
	.uaword	.LLST3
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Crc_CalculateCRC8H2F"
	.byte	0x1
	.byte	0x76
	.byte	0x1
	.uaword	0x1ab
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x49d
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0x76
	.uaword	0x328
	.uaword	.LLST4
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x76
	.uaword	0x212
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x76
	.uaword	0x1ab
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.byte	0x76
	.uaword	0x25d
	.byte	0x1
	.byte	0x56
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.byte	0x78
	.uaword	0x212
	.uaword	.LLST5
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x1
	.byte	0x79
	.uaword	0x1ab
	.uaword	.LLST6
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x1
	.byte	0x7a
	.uaword	0x1ab
	.uaword	.LLST7
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Crc_CalculateCRC16"
	.byte	0x1
	.byte	0xa7
	.byte	0x1
	.uaword	0x1d6
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x53a
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa7
	.uaword	0x328
	.uaword	.LLST8
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0xa7
	.uaword	0x212
	.byte	0x1
	.byte	0x54
	.uleb128 0x9
	.string	"Crc_StartValue16"
	.byte	0x1
	.byte	0xa7
	.uaword	0x1d6
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.byte	0xa7
	.uaword	0x25d
	.byte	0x1
	.byte	0x56
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.byte	0xa9
	.uaword	0x212
	.uaword	.LLST9
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x1
	.byte	0xaa
	.uaword	0x1d6
	.uaword	.LLST10
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x1
	.byte	0xab
	.uaword	0x1d6
	.uaword	.LLST11
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"Crc_CalculateCRC32"
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.uaword	0x212
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5cc
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.byte	0xdc
	.uaword	0x328
	.uaword	.LLST12
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0xdc
	.uaword	0x212
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.uaword	.LASF7
	.byte	0x1
	.byte	0xdc
	.uaword	0x212
	.byte	0x1
	.byte	0x55
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x1
	.byte	0xdc
	.uaword	0x25d
	.uaword	.LLST13
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x1
	.byte	0xde
	.uaword	0x212
	.uaword	.LLST14
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x1
	.byte	0xdf
	.uaword	0x212
	.uaword	.LLST15
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x1
	.byte	0xe0
	.uaword	0x212
	.uaword	.LLST16
	.byte	0
	.uleb128 0xe
	.byte	0x1
	.string	"Crc_CalculateCRC32P4"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.uaword	0x212
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x668
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x111
	.uaword	0x328
	.uaword	.LLST17
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x111
	.uaword	0x212
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x111
	.uaword	0x212
	.byte	0x1
	.byte	0x55
	.uleb128 0xf
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x111
	.uaword	0x25d
	.uaword	.LLST18
	.uleb128 0x11
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x113
	.uaword	0x212
	.uaword	.LLST19
	.uleb128 0x11
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x114
	.uaword	0x212
	.uaword	.LLST20
	.uleb128 0x11
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x115
	.uaword	0x212
	.uaword	.LLST21
	.byte	0
	.uleb128 0x12
	.uaword	0x1ab
	.uaword	0x678
	.uleb128 0x13
	.uaword	0x678
	.byte	0xff
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x14
	.string	"CRC_8_Tbl"
	.byte	0x4
	.byte	0x63
	.uaword	0x697
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x668
	.uleb128 0x14
	.string	"CRC_8H2F_Tbl"
	.byte	0x4
	.byte	0x6c
	.uaword	0x6b2
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x668
	.uleb128 0x12
	.uaword	0x1d6
	.uaword	0x6c7
	.uleb128 0x13
	.uaword	0x678
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.string	"CRC_16_Tbl"
	.byte	0x4
	.byte	0x75
	.uaword	0x6db
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x6b7
	.uleb128 0x12
	.uaword	0x212
	.uaword	0x6f0
	.uleb128 0x13
	.uaword	0x678
	.byte	0xff
	.byte	0
	.uleb128 0x14
	.string	"CRC_32_REV_Tbl"
	.byte	0x4
	.byte	0x7e
	.uaword	0x708
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x6e0
	.uleb128 0x14
	.string	"CRC_32P4_REV_Tbl"
	.byte	0x4
	.byte	0x87
	.uaword	0x727
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x6e0
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL3
	.uaword	.LVL9
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x20
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL8
	.uaword	.LFE1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x8
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x8
	.byte	0x84
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x20
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL10
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL17
	.uaword	.LFE2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x8
	.byte	0x84
	.sleb128 0
	.byte	0x94
	.byte	0x1
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x8
	.byte	0x84
	.sleb128 -1
	.byte	0x94
	.byte	0x1
	.byte	0x7f
	.sleb128 0
	.byte	0x27
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL19
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL21
	.uaword	.LFE3
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL22
	.uaword	.LVL25
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x20
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL19
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL26
	.uaword	.LFE3
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL30
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL29
	.uaword	.LFE4
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL34
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x20
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL28
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL36
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL29
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL34
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL39
	.uaword	.LFE5
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x7
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x8
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x20
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x9
	.byte	0x84
	.sleb128 0
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x1c
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL38
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL46
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL39
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x44
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
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
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
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF1:
	.string	"Crc_Length"
.LASF7:
	.string	"Crc_StartValue32"
.LASF2:
	.string	"Crc_StartValue8"
.LASF5:
	.string	"result"
.LASF4:
	.string	"index"
.LASF3:
	.string	"Crc_IsFirstCall"
.LASF6:
	.string	"crcTemp"
.LASF0:
	.string	"Crc_DataPtr"
	.extern	CRC_32P4_REV_Tbl,STT_OBJECT,1024
	.extern	CRC_32_REV_Tbl,STT_OBJECT,1024
	.extern	CRC_16_Tbl,STT_OBJECT,512
	.extern	CRC_8H2F_Tbl,STT_OBJECT,256
	.extern	CRC_8_Tbl,STT_OBJECT,256
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
