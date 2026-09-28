	.file	"F32SRV_API.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	F32SRV_bIsFinite
	.type	F32SRV_bIsFinite, @function
F32SRV_bIsFinite:
.LFB0:
	.file 1 "bswcdd\\F32SRV\\F32SRV_API.c"
	.loc 1 67 0
.LVL0:
	.loc 1 70 0
	cmp.f	%d15, %d4, %d4
	and	%d15, %d15, 13
	.loc 1 83 0
	mov	%d2, 0
	.loc 1 70 0
	jnz	%d15, .L2
	.loc 1 72 0
	movh	%d15, 65408
	movh	%d2, 32640
	add	%d15, -1
	add	%d2, -1
	cmp.f	%d15, %d4, %d15
	cmp.f	%d2, %d4, %d2
	or.t	%d15, %d15,2, %d15,1
	.loc 1 78 0
	or.t	%d2, %d2,1, %d2,0
	cmovn	%d2, %d15, 0
.L2:
.LVL1:
	.loc 1 87 0
	ret
.LFE0:
	.size	F32SRV_bIsFinite, .-F32SRV_bIsFinite
	.align 1
	.global	F32SRV_u8F32ToUint8
	.type	F32SRV_u8F32ToUint8, @function
F32SRV_u8F32ToUint8:
.LFB1:
	.loc 1 112 0
.LVL2:
	.loc 1 115 0
	cmp.f	%d15, %d4, %d4
	and	%d15, %d15, 13
	.loc 1 112 0
	mov	%d2, %d7
	.loc 1 115 0
	jnz	%d15, .L10
	.loc 1 122 0
	movh	%d15, 17279
	cmp.f	%d15, %d4, %d15
	.loc 1 125 0
	mov	%d2, %d6
	.loc 1 122 0
	jnz.t	%d15, 2, .L10
	.loc 1 127 0
	mov	%d15, 0
	cmp.f	%d15, %d4, %d15
	.loc 1 130 0
	mov	%d2, %d5
	.loc 1 127 0
	jnz.t	%d15, 0, .L10
	.loc 1 136 0
	movh	%d2, 16128
	add.f	%d4, %d4, %d2
.LVL3:
	ftouz	%d4, %d4
	and	%d2, %d4, 255
.LVL4:
.L10:
	.loc 1 141 0
	ret
.LFE1:
	.size	F32SRV_u8F32ToUint8, .-F32SRV_u8F32ToUint8
	.align 1
	.global	F32SRV_s8F32ToSint8
	.type	F32SRV_s8F32ToSint8, @function
F32SRV_s8F32ToSint8:
.LFB2:
	.loc 1 166 0
.LVL5:
	.loc 1 169 0
	cmp.f	%d15, %d4, %d4
	and	%d15, %d15, 13
	.loc 1 166 0
	mov	%d2, %d7
	.loc 1 169 0
	jnz	%d15, .L14
	.loc 1 176 0
	movh	%d15, 17150
	cmp.f	%d15, %d4, %d15
	.loc 1 179 0
	mov	%d2, %d6
	.loc 1 176 0
	jnz.t	%d15, 2, .L14
	.loc 1 181 0
	movh	%d15, 49920
	cmp.f	%d15, %d4, %d15
	.loc 1 184 0
	mov	%d2, %d5
	.loc 1 181 0
	jnz.t	%d15, 0, .L14
	.loc 1 189 0
	mov	%d15, 0
	cmp.f	%d2, %d4, %d15
	jnz.t	%d2, 0, .L25
	.loc 1 194 0
	cmp.f	%d15, %d4, %d15
	jz.t	%d15, 2, .L24
	.loc 1 197 0
	movh	%d2, 16128
	add.f	%d2, %d4, %d2
	ftoiz	%d2, %d2
	extr	%d2, %d2, 0, 8
.LVL6:
	ret
.LVL7:
.L24:
	.loc 1 202 0
	mov	%d2, 0
.L14:
.LVL8:
	.loc 1 208 0
	ret
.LVL9:
.L25:
	.loc 1 192 0
	movh	%d2, 16128
	sub.f	%d2, %d4, %d2
	ftoiz	%d2, %d2
	extr	%d2, %d2, 0, 8
.LVL10:
	ret
.LFE2:
	.size	F32SRV_s8F32ToSint8, .-F32SRV_s8F32ToSint8
	.align 1
	.global	F32SRV_u16F32ToUint16
	.type	F32SRV_u16F32ToUint16, @function
F32SRV_u16F32ToUint16:
.LFB3:
	.loc 1 233 0
.LVL11:
	.loc 1 236 0
	cmp.f	%d15, %d4, %d4
	and	%d15, %d15, 13
	.loc 1 233 0
	mov	%d2, %d7
	.loc 1 236 0
	jnz	%d15, .L27
	.loc 1 243 0
	movh	%d15, 18304
	addi	%d15, %d15, -256
	cmp.f	%d15, %d4, %d15
	.loc 1 246 0
	mov	%d2, %d6
	.loc 1 243 0
	jnz.t	%d15, 2, .L27
	.loc 1 248 0
	mov	%d15, 0
	cmp.f	%d15, %d4, %d15
	.loc 1 251 0
	mov	%d2, %d5
	.loc 1 248 0
	jnz.t	%d15, 0, .L27
	.loc 1 257 0
	movh	%d2, 16128
	add.f	%d2, %d4, %d2
	ftouz	%d2, %d2
	extr.u	%d2, %d2, 0, 16
.LVL12:
.L27:
	.loc 1 262 0
	ret
.LFE3:
	.size	F32SRV_u16F32ToUint16, .-F32SRV_u16F32ToUint16
	.align 1
	.global	F32SRV_s16F32ToSint16
	.type	F32SRV_s16F32ToSint16, @function
F32SRV_s16F32ToSint16:
.LFB4:
	.loc 1 286 0
.LVL13:
	.loc 1 289 0
	cmp.f	%d15, %d4, %d4
	and	%d15, %d15, 13
	.loc 1 286 0
	mov	%d2, %d7
	.loc 1 289 0
	jnz	%d15, .L31
	.loc 1 296 0
	movh	%d15, 18176
	addi	%d15, %d15, -512
	cmp.f	%d15, %d4, %d15
	.loc 1 299 0
	mov	%d2, %d6
	.loc 1 296 0
	jnz.t	%d15, 2, .L31
	.loc 1 301 0
	movh	%d15, 50944
	cmp.f	%d15, %d4, %d15
	.loc 1 304 0
	mov	%d2, %d5
	.loc 1 301 0
	jnz.t	%d15, 0, .L31
	.loc 1 309 0
	mov	%d15, 0
	cmp.f	%d2, %d4, %d15
	jnz.t	%d2, 0, .L42
	.loc 1 314 0
	cmp.f	%d15, %d4, %d15
	jz.t	%d15, 2, .L41
	.loc 1 317 0
	movh	%d2, 16128
	add.f	%d2, %d4, %d2
	ftoiz	%d2, %d2
	extr	%d2, %d2, 0, 16
.LVL14:
	ret
.LVL15:
.L41:
	.loc 1 322 0
	mov	%d2, 0
.L31:
.LVL16:
	.loc 1 328 0
	ret
.LVL17:
.L42:
	.loc 1 312 0
	movh	%d2, 16128
	sub.f	%d2, %d4, %d2
	ftoiz	%d2, %d2
	extr	%d2, %d2, 0, 16
.LVL18:
	ret
.LFE4:
	.size	F32SRV_s16F32ToSint16, .-F32SRV_s16F32ToSint16
	.align 1
	.global	F32SRV_u32F32ToUint32
	.type	F32SRV_u32F32ToUint32, @function
F32SRV_u32F32ToUint32:
.LFB5:
	.loc 1 352 0
.LVL19:
	.loc 1 355 0
	cmp.f	%d15, %d4, %d4
	and	%d15, %d15, 13
	.loc 1 352 0
	mov	%d2, %d7
	.loc 1 355 0
	jnz	%d15, .L44
	.loc 1 364 0
	movh	%d15, 20352
	cmp.f	%d15, %d4, %d15
	or.t	%d15, %d15,2, %d15,1
	.loc 1 367 0
	mov	%d2, %d6
	.loc 1 364 0
	jnz	%d15, .L44
	.loc 1 369 0
	mov	%d15, 0
	cmp.f	%d15, %d4, %d15
	.loc 1 372 0
	mov	%d2, %d5
	.loc 1 369 0
	jnz.t	%d15, 0, .L44
	.loc 1 380 0
	movh	%d15, 19200
	cmp.f	%d15, %d4, %d15
	jnz.t	%d15, 0, .L51
	.loc 1 386 0
	ftouz	%d2, %d4
.LVL20:
.L44:
	.loc 1 392 0
	ret
.LVL21:
.L51:
	.loc 1 382 0
	movh	%d2, 16128
.LVL22:
	add.f	%d4, %d4, %d2
.LVL23:
	ftouz	%d2, %d4
.LVL24:
	ret
.LFE5:
	.size	F32SRV_u32F32ToUint32, .-F32SRV_u32F32ToUint32
	.align 1
	.global	F32SRV_s32F32ToSint32
	.type	F32SRV_s32F32ToSint32, @function
F32SRV_s32F32ToSint32:
.LFB6:
	.loc 1 416 0
.LVL25:
	.loc 1 419 0
	cmp.f	%d15, %d4, %d4
	and	%d15, %d15, 13
	.loc 1 416 0
	mov	%d2, %d7
	.loc 1 419 0
	jnz	%d15, .L53
	.loc 1 428 0
	movh	%d15, 20224
	cmp.f	%d15, %d4, %d15
	or.t	%d15, %d15,2, %d15,1
	.loc 1 431 0
	mov	%d2, %d6
	.loc 1 428 0
	jnz	%d15, .L53
	.loc 1 433 0
	movh	%d15, 52992
	cmp.f	%d15, %d4, %d15
	.loc 1 436 0
	mov	%d2, %d5
	.loc 1 433 0
	jnz.t	%d15, 0, .L53
	.loc 1 441 0
	mov	%d15, 0
	cmp.f	%d15, %d4, %d15
	jnz.t	%d15, 0, .L66
.L54:
	.loc 1 446 0
	mov	%d15, 0
	cmp.f	%d15, %d4, %d15
	jz.t	%d15, 2, .L57
	.loc 1 446 0 is_stmt 0 discriminator 1
	movh	%d15, 19200
	cmp.f	%d15, %d4, %d15
	jnz.t	%d15, 0, .L67
.L57:
	.loc 1 456 0 is_stmt 1
	ftoiz	%d2, %d4
.LVL26:
.L53:
	.loc 1 462 0
	ret
.LVL27:
.L66:
	.loc 1 441 0 discriminator 1
	movh	%d15, 51968
	cmp.f	%d15, %d4, %d15
	jz.t	%d15, 2, .L54
	.loc 1 444 0
	movh	%d2, 16128
.LVL28:
	sub.f	%d4, %d4, %d2
.LVL29:
	ftoiz	%d2, %d4
.LVL30:
	ret
.LVL31:
.L67:
	.loc 1 449 0
	movh	%d2, 16128
.LVL32:
	add.f	%d4, %d4, %d2
.LVL33:
	ftoiz	%d2, %d4
.LVL34:
	ret
.LFE6:
	.size	F32SRV_s32F32ToSint32, .-F32SRV_s32F32ToSint32
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
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x70a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\F32SRV\\F32SRV_API.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.string	"sint8"
	.byte	0x2
	.byte	0x4c
	.uaword	0x1bb
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1d7
	.uleb128 0x2
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.string	"sint16"
	.byte	0x2
	.byte	0x56
	.uaword	0x1f6
	.uleb128 0x2
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x211
	.uleb128 0x2
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.string	"sint32"
	.byte	0x2
	.byte	0x60
	.uaword	0x235
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
	.uaword	0x25b
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
	.uaword	0x1a5
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1d7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x1
	.string	"F32SRV_bIsFinite"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	0x29e
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x321
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x41
	.uaword	0x285
	.byte	0x1
	.byte	0x54
	.uleb128 0x6
	.string	"bLocalReturnValue"
	.byte	0x1
	.byte	0x44
	.uaword	0x29e
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"F32SRV_u8F32ToUint8"
	.byte	0x1
	.byte	0x63
	.byte	0x1
	.uaword	0x1ca
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3c1
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1
	.byte	0x65
	.uaword	0x285
	.uaword	.LLST0
	.uleb128 0x8
	.string	"u8UnderflowValue"
	.byte	0x1
	.byte	0x67
	.uaword	0x1ca
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.string	"u8OverflowValue"
	.byte	0x1
	.byte	0x6a
	.uaword	0x1ca
	.byte	0x1
	.byte	0x56
	.uleb128 0x8
	.string	"u8NanValue"
	.byte	0x1
	.byte	0x6d
	.uaword	0x1ca
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.string	"u8LocalReturnValue"
	.byte	0x1
	.byte	0x71
	.uaword	0x1ca
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"F32SRV_s8F32ToSint8"
	.byte	0x1
	.byte	0x99
	.byte	0x1
	.uaword	0x1ae
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x461
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0x9b
	.uaword	0x285
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.string	"s8UnderflowValue"
	.byte	0x1
	.byte	0x9d
	.uaword	0x1ae
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.string	"s8OverflowValue"
	.byte	0x1
	.byte	0xa0
	.uaword	0x1ae
	.byte	0x1
	.byte	0x56
	.uleb128 0x8
	.string	"s8NanValue"
	.byte	0x1
	.byte	0xa3
	.uaword	0x1ae
	.byte	0x1
	.byte	0x57
	.uleb128 0x9
	.string	"s8LocalReturnValue"
	.byte	0x1
	.byte	0xa7
	.uaword	0x1ae
	.uaword	.LLST1
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.string	"F32SRV_u16F32ToUint16"
	.byte	0x1
	.byte	0xdc
	.byte	0x1
	.uaword	0x203
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x505
	.uleb128 0x5
	.uaword	.LASF0
	.byte	0x1
	.byte	0xde
	.uaword	0x285
	.byte	0x1
	.byte	0x54
	.uleb128 0x8
	.string	"u16UnderflowValue"
	.byte	0x1
	.byte	0xe0
	.uaword	0x203
	.byte	0x1
	.byte	0x55
	.uleb128 0x8
	.string	"u16OverflowValue"
	.byte	0x1
	.byte	0xe3
	.uaword	0x203
	.byte	0x1
	.byte	0x56
	.uleb128 0x8
	.string	"u16NanValue"
	.byte	0x1
	.byte	0xe6
	.uaword	0x203
	.byte	0x1
	.byte	0x57
	.uleb128 0x6
	.string	"u16LocalReturnValue"
	.byte	0x1
	.byte	0xea
	.uaword	0x203
	.byte	0x1
	.byte	0x52
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"F32SRV_s16F32ToSint16"
	.byte	0x1
	.uahalf	0x111
	.byte	0x1
	.uaword	0x1e8
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5b1
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x113
	.uaword	0x285
	.byte	0x1
	.byte	0x54
	.uleb128 0xc
	.string	"s16UnderflowValue"
	.byte	0x1
	.uahalf	0x115
	.uaword	0x1e8
	.byte	0x1
	.byte	0x55
	.uleb128 0xc
	.string	"s16OverflowValue"
	.byte	0x1
	.uahalf	0x118
	.uaword	0x1e8
	.byte	0x1
	.byte	0x56
	.uleb128 0xc
	.string	"s16NanValue"
	.byte	0x1
	.uahalf	0x11b
	.uaword	0x1e8
	.byte	0x1
	.byte	0x57
	.uleb128 0xd
	.string	"s16LocalReturnValue"
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x1e8
	.uaword	.LLST2
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"F32SRV_u32F32ToUint32"
	.byte	0x1
	.uahalf	0x153
	.byte	0x1
	.uaword	0x24d
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x661
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x155
	.uaword	0x285
	.uaword	.LLST3
	.uleb128 0xf
	.string	"u32UnderflowValue"
	.byte	0x1
	.uahalf	0x157
	.uaword	0x24d
	.uaword	.LLST4
	.uleb128 0xc
	.string	"u32OverflowValue"
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x24d
	.byte	0x1
	.byte	0x56
	.uleb128 0xc
	.string	"u32NanValue"
	.byte	0x1
	.uahalf	0x15d
	.uaword	0x24d
	.byte	0x1
	.byte	0x57
	.uleb128 0xd
	.string	"u32LocalReturnValue"
	.byte	0x1
	.uahalf	0x161
	.uaword	0x24d
	.uaword	.LLST5
	.byte	0
	.uleb128 0x10
	.byte	0x1
	.string	"F32SRV_s32F32ToSint32"
	.byte	0x1
	.uahalf	0x193
	.byte	0x1
	.uaword	0x227
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x195
	.uaword	0x285
	.uaword	.LLST6
	.uleb128 0xf
	.string	"s32UnderflowValue"
	.byte	0x1
	.uahalf	0x197
	.uaword	0x227
	.uaword	.LLST7
	.uleb128 0xc
	.string	"s32OverflowValue"
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x227
	.byte	0x1
	.byte	0x56
	.uleb128 0xc
	.string	"s32NanValue"
	.byte	0x1
	.uahalf	0x19d
	.uaword	0x227
	.byte	0x1
	.byte	0x57
	.uleb128 0xd
	.string	"s32LocalReturnValue"
	.byte	0x1
	.uahalf	0x1a1
	.uaword	0x227
	.uaword	.LLST8
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x5
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
	.uleb128 0x8
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
	.uleb128 0x6
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL2-.text
	.uaword	.LVL3-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3-.text
	.uaword	.LFE1-.text
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a5
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL6-.text
	.uaword	.LVL7-.text
	.uahalf	0x1
	.byte	0x52
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
.LLST2:
	.uaword	.LVL14-.text
	.uaword	.LVL15-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL16-.text
	.uaword	.LVL17-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18-.text
	.uaword	.LFE4-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL19-.text
	.uaword	.LVL23-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL23-.text
	.uaword	.LFE5-.text
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a5
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL19-.text
	.uaword	.LVL21-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL21-.text
	.uaword	.LVL22-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22-.text
	.uaword	.LFE5-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL20-.text
	.uaword	.LVL21-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL24-.text
	.uaword	.LFE5-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL25-.text
	.uaword	.LVL29-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL29-.text
	.uaword	.LVL31-.text
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a5
	.byte	0x9f
	.uaword	.LVL31-.text
	.uaword	.LVL33-.text
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33-.text
	.uaword	.LFE6-.text
	.uahalf	0x7
	.byte	0xf3
	.uleb128 0x4
	.byte	0xf5
	.uleb128 0x4
	.uleb128 0x1a5
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL25-.text
	.uaword	.LVL27-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL27-.text
	.uaword	.LVL28-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28-.text
	.uaword	.LVL31-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL31-.text
	.uaword	.LVL32-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32-.text
	.uaword	.LFE6-.text
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL26-.text
	.uaword	.LVL27-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL30-.text
	.uaword	.LVL31-.text
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34-.text
	.uaword	.LFE6-.text
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
	.string	"f32Data"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
