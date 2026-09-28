	.file	"Xcp_SeedAndKey.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.XcpAppl_GetSeed,"ax",@progbits
	.align 1
	.global	XcpAppl_GetSeed
	.type	XcpAppl_GetSeed, @function
XcpAppl_GetSeed:
.LFB12:
	.file 1 "bsw\\Xcp\\integration\\Xcp_SeedAndKey.c"
	.loc 1 61 0
.LVL0:
	.loc 1 73 0
	movh.a	%a2, hi:XcpAppl_SeedKeyData
	lea	%a2, [%a2] lo:XcpAppl_SeedKeyData
	mul	%d5, %d5, 10
.LVL1:
	.loc 1 70 0
	jz.a	%a4, .L3
	.loc 1 73 0
	addsc.a	%a15, %a2, %d5, 0
	.loc 1 82 0
	mov	%d15, 0
	.loc 1 73 0
	st.b	[%a15] 4, %d4
	.loc 1 76 0
	st.a	[%a4]0, %a15
.LVL2:
	.loc 1 82 0
	st.b	[%a15]0, %d15
.LVL3:
	mov	%d15, 1
	st.b	[%a15] 1, %d15
.LVL4:
	mov	%d15, 2
	st.b	[%a15] 2, %d15
.LVL5:
	mov	%d15, 3
	st.b	[%a15] 3, %d15
.LVL6:
.L3:
	.loc 1 87 0
	addsc.a	%a15, %a2, %d5, 0
	mov	%d15, 0
	st.b	[%a15] 9, %d15
	.loc 1 91 0
	mov	%d2, 4
	ret
.LFE12:
	.size	XcpAppl_GetSeed, .-XcpAppl_GetSeed
.section .text.XcpAppl_Unlock,"ax",@progbits
	.align 1
	.global	XcpAppl_Unlock
	.type	XcpAppl_Unlock, @function
XcpAppl_Unlock:
.LFB13:
	.loc 1 114 0
.LVL7:
	.loc 1 130 0
	mul	%d6, %d6, 10
.LVL8:
	movh.a	%a3, hi:XcpAppl_SeedKeyData
	lea	%a3, [%a3] lo:XcpAppl_SeedKeyData
	.loc 1 127 0
	mov	%d15, 0
	.loc 1 130 0
	addsc.a	%a2, %a3, %d6, 0
	.loc 1 127 0
	st.b	[%a5]0, %d15
	.loc 1 130 0
	ld.bu	%d15, [%a2] 9
	.loc 1 201 0
	mov	%d3, 41
	.loc 1 130 0
	add	%d5, %d15
.LVL9:
	and	%d5, %d5, 255
.LVL10:
	.loc 1 201 0
	lt.u	%d2, %d5, 4
	.loc 1 114 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 201 0
	sel	%d2, %d2, %d3, 34
	.loc 1 133 0
	jeq	%d5, 4, .L33
.LVL11:
	.loc 1 206 0
	ret
.LVL12:
.L33:
	.loc 1 136 0 discriminator 1
	jz	%d4, .L15
	add	%d5, %d15, %d6
.LVL13:
	mov.d	%d3, %a3
	add	%d2, %d15, 5
	mov.d	%d7, %a4
	mov.a	%a15, %d5
	add	%d2, %d6
	add	%d2, %d3
	or	%d2, %d7
	add.a	%a15, 5
	and	%d2, %d2, 3
	lea	%a6, [%a4] 4
	add.a	%a15, %a3
	eq	%d3, %d2, 0
	mov.d	%d5, %a15
	mov.d	%d2, %a6
	mov.d	%d7, %a3
	ge.u	%d2, %d5, %d2
	addi	%d5, %d15, 9
	add	%d5, %d6
	add	%d5, %d7
	mov.d	%d7, %a4
	or.ge.u	%d2, %d7, %d5
	and	%d2, %d3
	ge.u	%d3, %d4, 10
	and	%d2, %d3
	jz	%d2, .L10
.LVL14:
	addi	%d2, %d4, -4
	extr.u	%d2, %d2, 2, 6
	mov.aa	%a2, %a4
	add	%d2, 1
	sh	%d3, %d2, 2
	and	%d3, %d3, 255
	.loc 1 136 0 is_stmt 0
	mov	%d5, 0
.LVL15:
.L11:
	.loc 1 138 0 is_stmt 1 discriminator 3
	ld.w	%d7, [%a2+]4
	add	%d5, 1
	st.w	[%a15+]4, %d7
	and	%d7, %d5, 255
	jlt.u	%d7, %d2, .L11
	jeq	%d4, %d3, .L15
.LVL16:
	.loc 1 138 0 is_stmt 0
	addsc.a	%a15, %a4, %d3, 0
	ld.bu	%d2, [%a15]0
	addsc.a	%a15, %a3, %d6, 0
	addsc.a	%a15, %a15, %d15, 0
	addsc.a	%a2, %a15, %d3, 0
	st.b	[%a2] 5, %d2
	.loc 1 136 0 is_stmt 1
	addi	%d2, %d3, 1
	and	%d2, %d2, 255
.LVL17:
	jge.u	%d2, %d4, .L15
	.loc 1 138 0
	addsc.a	%a2, %a4, %d2, 0
	.loc 1 136 0
	add	%d3, 2
	.loc 1 138 0
	ld.bu	%d5, [%a2]0
	addsc.a	%a2, %a15, %d2, 0
	.loc 1 136 0
	and	%d3, %d3, 255
.LVL18:
	.loc 1 138 0
	st.b	[%a2] 5, %d5
	.loc 1 136 0
	jge.u	%d3, %d4, .L15
	.loc 1 138 0
	addsc.a	%a4, %a4, %d3, 0
.LVL19:
	addsc.a	%a15, %a15, %d3, 0
	ld.bu	%d2, [%a4]0
	st.b	[%a15] 5, %d2
.LVL20:
.L15:
	.loc 1 140 0
	add	%d4, %d15
.LVL21:
	addsc.a	%a15, %a3, %d6, 0
	and	%d4, %d4, 255
	st.b	[%a15] 9, %d4
	.loc 1 143 0
	jeq	%d4, 4, .L34
	.loc 1 189 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
.LVL22:
	.loc 1 190 0
	mov	%d2, 255
.LVL23:
	.loc 1 206 0
	ret
.LVL24:
.L10:
	.loc 1 136 0
	mov.aa	%a15, %a4
	sub	%d3, %d15, %d7
.LVL25:
.L16:
	.loc 1 138 0
	add.a	%a6, %a2, %a15
	ld.bu	%d2, [%a15]0
	addsc.a	%a6, %a6, %d3, 0
	add.a	%a15, 1
.LVL26:
	st.b	[%a6] 5, %d2
.LVL27:
	sub.a	%a6, %a15, %a4
	mov.d	%d2, %a6
	.loc 1 136 0
	and	%d2, %d2, 255
	jlt.u	%d2, %d4, .L16
	j	.L15
.LVL28:
.L34:
	mov.d	%d2, %a15
	and	%d15, %d2, 3
	jnz	%d15, .L18
	.loc 1 149 0
	ld.w	%d2, [%a15]0
	movh	%d15, 32639
	addi	%d15, %d15, 32639
	and	%d15, %d2
	movh	%d3, 32897
	addi	%d15, %d15, 257
	addi	%d3, %d3, -32640
	addih	%d15, %d15, 257
	and	%d2, %d3
	xor	%d15, %d2
	st.w	[%SP] 4, %d15
.L19:
.LVL29:
	.loc 1 159 0
	addsc.a	%a15, %a3, %d6, 0
	ld.bu	%d3, [%SP] 4
	ld.bu	%d15, [%a15] 5
	.loc 1 180 0
	mov	%d2, 37
	.loc 1 159 0
	jne	%d3, %d15, .L20
.LVL30:
	ld.bu	%d3, [%SP] 5
	ld.bu	%d15, [%a15] 6
	jne	%d3, %d15, .L20
.LVL31:
	ld.bu	%d3, [%SP] 6
	ld.bu	%d15, [%a15] 7
	jne	%d3, %d15, .L20
.LVL32:
	ld.bu	%d3, [%SP] 7
	ld.bu	%d15, [%a15] 8
	jne	%d3, %d15, .L20
.LVL33:
	.loc 1 172 0 discriminator 2
	ld.bu	%d15, [%a15] 4
	.loc 1 175 0 discriminator 2
	mov	%d2, 255
	.loc 1 172 0 discriminator 2
	st.b	[%a5]0, %d15
.LVL34:
.L20:
	.loc 1 184 0
	addsc.a	%a3, %a3, %d6, 0
	mov	%d15, 0
	st.b	[%a3] 9, %d15
	ret
.LVL35:
.L18:
	.loc 1 149 0
	ld.bu	%d15, [%a15]0
	add	%d15, 1
	st.b	[%SP] 4, %d15
.LVL36:
	ld.bu	%d15, [%a15] 1
	add	%d15, 1
	st.b	[%SP] 5, %d15
.LVL37:
	ld.bu	%d15, [%a15] 2
	add	%d15, 1
	st.b	[%SP] 6, %d15
.LVL38:
	ld.bu	%d15, [%a15] 3
	add	%d15, 1
	st.b	[%SP] 7, %d15
.LVL39:
	j	.L19
.LFE13:
	.size	XcpAppl_Unlock, .-XcpAppl_Unlock
.section .bss.a2.XcpAppl_SeedKeyData,"aw",@nobits
	.align 1
	.type	XcpAppl_SeedKeyData, @object
	.size	XcpAppl_SeedKeyData, 10
XcpAppl_SeedKeyData:
	.zero	10
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
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.byte	0x4
	.uaword	.LCFI0-.LFB13
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\Xcp\\api\\Xcp_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x6f9
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Xcp\\integration\\Xcp_SeedAndKey.c"
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
	.uaword	0x1cf
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
	.uaword	0x1cf
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
	.uaword	0x1c2
	.uleb128 0x5
	.byte	0x1
	.byte	0x3
	.uahalf	0x1cb
	.uaword	0x4ae
	.uleb128 0x6
	.string	"XCP_ERR_CMD_SYNCH"
	.sleb128 0
	.uleb128 0x6
	.string	"XCP_ERR_CMD_BUSY"
	.sleb128 16
	.uleb128 0x6
	.string	"XCP_ERR_DAQ_ACTIVE"
	.sleb128 17
	.uleb128 0x6
	.string	"XCP_ERR_PGM_ACTIVE"
	.sleb128 18
	.uleb128 0x6
	.string	"XCP_ERR_CMD_UNKNOWN"
	.sleb128 32
	.uleb128 0x6
	.string	"XCP_ERR_CMD_SYNTAX"
	.sleb128 33
	.uleb128 0x6
	.string	"XCP_ERR_OUT_OF_RANGE"
	.sleb128 34
	.uleb128 0x6
	.string	"XCP_ERR_WRITE_PROTECTED"
	.sleb128 35
	.uleb128 0x6
	.string	"XCP_ERR_ACCESS_DENIED"
	.sleb128 36
	.uleb128 0x6
	.string	"XCP_ERR_ACCESS_LOCKED"
	.sleb128 37
	.uleb128 0x6
	.string	"XCP_ERR_PAGE_NOT_VALID"
	.sleb128 38
	.uleb128 0x6
	.string	"XCP_ERR_MODE_NOT_VALID"
	.sleb128 39
	.uleb128 0x6
	.string	"XCP_ERR_SEGMENT_NOT_VALID"
	.sleb128 40
	.uleb128 0x6
	.string	"XCP_ERR_SEQUENCE"
	.sleb128 41
	.uleb128 0x6
	.string	"XCP_ERR_DAQ_CONFIG"
	.sleb128 42
	.uleb128 0x6
	.string	"XCP_ERR_MEMORY_OVERFLOW"
	.sleb128 48
	.uleb128 0x6
	.string	"XCP_ERR_GENERIC"
	.sleb128 49
	.uleb128 0x6
	.string	"XCP_ERR_VERIFY"
	.sleb128 50
	.uleb128 0x6
	.string	"XCP_ERR_RES_TEMP_NOT_ACCESS"
	.sleb128 51
	.uleb128 0x6
	.string	"XCP_ERR_SUBCMD_UNKNOWN"
	.sleb128 52
	.uleb128 0x6
	.string	"XCP_REPEAT_COMMAND"
	.sleb128 252
	.uleb128 0x6
	.string	"XCP_NO_ACCESS_HIDE"
	.sleb128 253
	.uleb128 0x6
	.string	"XCP_NO_RESPONSE"
	.sleb128 254
	.uleb128 0x6
	.string	"XCP_NO_ERROR"
	.sleb128 255
	.byte	0
	.uleb128 0x7
	.string	"Xcp_ErrorCode"
	.byte	0x3
	.uahalf	0x1e5
	.uaword	0x28e
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x8
	.byte	0xa
	.byte	0x1
	.byte	0x19
	.uaword	0x520
	.uleb128 0x9
	.string	"Seed"
	.byte	0x1
	.byte	0x1b
	.uaword	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.uaword	.LASF0
	.byte	0x1
	.byte	0x1c
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x9
	.string	"Key"
	.byte	0x1
	.byte	0x1d
	.uaword	0x520
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x9
	.string	"KeyLength"
	.byte	0x1
	.byte	0x1e
	.uaword	0x1c2
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.byte	0
	.uleb128 0xb
	.uaword	0x1c2
	.uaword	0x530
	.uleb128 0xc
	.uaword	0x4c4
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.string	"XcpAppl_SeedKeyData_t"
	.byte	0x1
	.byte	0x1f
	.uaword	0x4d8
	.uleb128 0xd
	.byte	0x1
	.string	"XcpAppl_GetSeed"
	.byte	0x1
	.byte	0x3c
	.byte	0x1
	.uaword	0x1c2
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5b4
	.uleb128 0xe
	.string	"SeedAdrPtr"
	.byte	0x1
	.byte	0x3c
	.uaword	0x5b4
	.byte	0x1
	.byte	0x64
	.uleb128 0xf
	.uaword	.LASF0
	.byte	0x1
	.byte	0x3c
	.uaword	0x1c2
	.byte	0x1
	.byte	0x54
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0x3c
	.uaword	0x1c2
	.uaword	.LLST0
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x43
	.uaword	0x1c2
	.uaword	.LLST1
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x288
	.uleb128 0x12
	.byte	0x1
	.string	"XcpAppl_Unlock"
	.byte	0x1
	.byte	0x71
	.byte	0x1
	.uaword	0x4ae
	.uaword	.LFB13
	.uaword	.LFE13
	.uaword	.LLST2
	.byte	0x1
	.uaword	0x6c0
	.uleb128 0x13
	.string	"KeyPtr"
	.byte	0x1
	.byte	0x71
	.uaword	0x6c0
	.uaword	.LLST3
	.uleb128 0x13
	.string	"KeyPartLength"
	.byte	0x1
	.byte	0x71
	.uaword	0x1c2
	.uaword	.LLST4
	.uleb128 0x13
	.string	"RemainingKeyLength"
	.byte	0x1
	.byte	0x71
	.uaword	0x1c2
	.uaword	.LLST5
	.uleb128 0xe
	.string	"UnlockedResource"
	.byte	0x1
	.byte	0x71
	.uaword	0x288
	.byte	0x1
	.byte	0x65
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x1
	.byte	0x71
	.uaword	0x1c2
	.uaword	.LLST6
	.uleb128 0x14
	.string	"CalculatedKey"
	.byte	0x1
	.byte	0x78
	.uaword	0x520
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x11
	.string	"i"
	.byte	0x1
	.byte	0x79
	.uaword	0x1c2
	.uaword	.LLST7
	.uleb128 0x11
	.string	"ExpectedKeyLength"
	.byte	0x1
	.byte	0x7a
	.uaword	0x1c2
	.uaword	.LLST8
	.uleb128 0x11
	.string	"Error"
	.byte	0x1
	.byte	0x7b
	.uaword	0x4ae
	.uaword	.LLST9
	.uleb128 0x11
	.string	"KeyMatching"
	.byte	0x1
	.byte	0x7c
	.uaword	0x258
	.uaword	.LLST10
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x6c6
	.uleb128 0x15
	.uaword	0x1c2
	.uleb128 0xb
	.uaword	0x530
	.uaword	0x6db
	.uleb128 0xc
	.uaword	0x4c4
	.byte	0
	.byte	0
	.uleb128 0x14
	.string	"XcpAppl_SeedKeyData"
	.byte	0x1
	.byte	0x22
	.uaword	0x6cb
	.byte	0x5
	.byte	0x3
	.uaword	XcpAppl_SeedKeyData
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
	.uleb128 0x6
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xa
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
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x15
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1
	.uaword	.LFE12
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
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
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LFB13
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE13
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL15
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x3
	.byte	0x86
	.sleb128 -4
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL28
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL21
	.uaword	.LVL24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL9
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL8
	.uaword	.LFE13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x56
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LVL20
	.uahalf	0x12
	.byte	0x74
	.sleb128 -4
	.byte	0x9
	.byte	0xfc
	.byte	0x24
	.byte	0x9
	.byte	0xfe
	.byte	0x25
	.byte	0x23
	.uleb128 0x1
	.byte	0x32
	.byte	0x24
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x23
	.uleb128 0x2
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x8f
	.sleb128 0
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x6
	.byte	0x8f
	.sleb128 -1
	.byte	0x77
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL39
	.uaword	.LFE13
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x9
	.byte	0xff
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x31
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
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.uaword	.LFB13
	.uaword	.LFE13-.LFB13
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	.LFB13
	.uaword	.LFE13
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"ResourceType"
.LASF1:
	.string	"ProtocolLayerId"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
