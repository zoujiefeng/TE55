	.file	"ADS1115.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.ADS1115_WriteConfig,"ax",@progbits
	.align 1
	.global	ADS1115_WriteConfig
	.type	ADS1115_WriteConfig, @function
ADS1115_WriteConfig:
.LFB19:
	.file 1 "bswcdd\\ADS1115\\ADS1115.c"
	.loc 1 73 0
.LBB10:
.LBB11:
	.loc 1 195 0
	movh.a	%a15, hi:ADS1115_axConfig
	lea	%a4, [%a15] lo:ADS1115_axConfig
	mov	%d8, 1
	st.b	[%a15] lo:ADS1115_axConfig, %d8
	.loc 1 197 0
	ld.bu	%d2, [%a4] 1
.LBE11:
.LBE10:
.LBB14:
.LBB15:
	.loc 1 211 0
	movh.a	%a15, hi:ADS1115_u8UserCfg_PGAC
	ld.bu	%d3, [%a15] lo:ADS1115_u8UserCfg_PGAC
	and	%d2, %d2, 126
	.loc 1 212 0
	movh.a	%a15, hi:ADS1115_u8UserCfg_MUXC
	.loc 1 211 0
	insert	%d2, %d2, %d3, 1, 3
	.loc 1 212 0
	ld.bu	%d3, [%a15] lo:ADS1115_u8UserCfg_MUXC
.LBE15:
.LBE14:
.LBB19:
.LBB12:
	.loc 1 202 0
	ld.bu	%d15, [%a4] 2
.LBE12:
.LBE19:
.LBB20:
.LBB16:
	.loc 1 212 0
	insert	%d2, %d2, %d3, 4, 3
.LBE16:
.LBE20:
.LBB21:
.LBB13:
	.loc 1 202 0
	insert	%d15, %d15, 3, 0, 2
.LBE13:
.LBE21:
.LBB22:
.LBB17:
	.loc 1 214 0
	movh.a	%a15, hi:ADS1115_u8UserCfg_DRC
	.loc 1 212 0
	st.b	[%a4] 1, %d2
	.loc 1 214 0
	ld.bu	%d2, [%a15] lo:ADS1115_u8UserCfg_DRC
	and	%d15, %d15, 227
	insert	%d15, %d15, %d2, 5, 3
.LBE17:
.LBE22:
	.loc 1 79 0
	mov	%d4, 0
.LBB23:
.LBB18:
	.loc 1 214 0
	st.b	[%a4] 2, %d15
.LBE18:
.LBE23:
	.loc 1 79 0
	mov	%d5, 3
	mov	%d6, 72
	call	I2c_SyncWrite
.LVL0:
	.loc 1 80 0
	jnz	%d2, .L2
	.loc 1 84 0
	movh.a	%a15, hi:ADS1115_CurrentPx
	st.b	[%a15] lo:ADS1115_CurrentPx, %d8
.L2:
	.loc 1 87 0
	ret
.LFE19:
	.size	ADS1115_WriteConfig, .-ADS1115_WriteConfig
.section .text.ADS1115_ReadResult,"ax",@progbits
	.align 1
	.global	ADS1115_ReadResult
	.type	ADS1115_ReadResult, @function
ADS1115_ReadResult:
.LFB20:
	.loc 1 106 0
.LVL1:
	.loc 1 109 0
	movh.a	%a13, hi:ADS1115_CurrentPx
	ld.bu	%d15, [%a13] lo:ADS1115_CurrentPx
	.loc 1 106 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 106 0
	mov.aa	%a12, %a4
	movh.a	%a15, hi:ADS1115_Success
	.loc 1 109 0
	jz	%d15, .L5
	.loc 1 111 0
	lea	%a4, [%SP] 8
.LVL2:
	mov	%d15, 0
	st.b	[+%a4]-1, %d15
	.loc 1 112 0
	mov	%d4, 0
	mov	%d5, 1
	mov	%d6, 72
	call	I2c_SyncWrite
.LVL3:
	.loc 1 113 0
	movh.a	%a15, hi:ADS1115_Success
	.loc 1 112 0
	mov	%d15, %d2
.LVL4:
	.loc 1 113 0
	st.b	[%a15] lo:ADS1115_Success, %d2
	.loc 1 114 0
	jnz	%d15, .L6
	.loc 1 116 0
	st.b	[%a13] lo:ADS1115_CurrentPx, %d15
.LVL5:
.L5:
	.loc 1 127 0
	movh.a	%a14, hi:Local_au8Result
	lea	%a13, [%a14] lo:Local_au8Result
	mov	%d4, 0
	mov.aa	%a4, %a13
	mov	%d5, 2
	mov	%d6, 72
	call	I2c_SyncRead
.LVL6:
	.loc 1 128 0
	st.b	[%a15] lo:ADS1115_Success, %d2
	.loc 1 129 0
	jnz	%d2, .L6
	.loc 1 133 0
	ld.bu	%d15, [%a14] lo:Local_au8Result
	ld.bu	%d3, [%a13] 1
	sh	%d15, %d15, 8
	add	%d15, %d3
	st.h	[%a12]0, %d15
.LVL7:
.L6:
	.loc 1 141 0
	ret
.LFE20:
	.size	ADS1115_ReadResult, .-ADS1115_ReadResult
.section .text.ADS1115_WriteInPx,"ax",@progbits
	.align 1
	.global	ADS1115_WriteInPx
	.type	ADS1115_WriteInPx, @function
ADS1115_WriteInPx:
.LFB21:
	.loc 1 145 0
.LVL8:
	sub.a	%SP, 8
.LCFI1:
	.loc 1 145 0
	lea	%a4, [%SP] 8
	st.b	[+%a4]-1, %d4
	.loc 1 147 0
	mov	%d5, 1
	mov	%d4, 0
.LVL9:
	mov	%d6, 72
	call	I2c_SyncWrite
.LVL10:
	.loc 1 148 0
	jnz	%d2, .L13
	.loc 1 150 0
	ld.bu	%d15, [%SP] 7
	movh.a	%a15, hi:ADS1115_CurrentPx
	st.b	[%a15] lo:ADS1115_CurrentPx, %d15
.L13:
	.loc 1 153 0
	ret
.LFE21:
	.size	ADS1115_WriteInPx, .-ADS1115_WriteInPx
.section .text.ADS1115_ReadFromPx,"ax",@progbits
	.align 1
	.global	ADS1115_ReadFromPx
	.type	ADS1115_ReadFromPx, @function
ADS1115_ReadFromPx:
.LFB22:
	.loc 1 157 0
.LVL11:
	sub.a	%SP, 8
.LCFI2:
	.loc 1 157 0
	mov.aa	%a15, %a4
	.loc 1 161 0
	mov	%d4, 0
	lea	%a4, [%SP] 6
.LVL12:
	mov	%d5, 2
	mov	%d6, 72
	call	I2c_SyncRead
.LVL13:
	.loc 1 163 0
	jnz	%d2, .L15
	.loc 1 165 0
	ld.bu	%d15, [%SP] 6
	ld.bu	%d3, [%SP] 7
	sh	%d15, %d15, 8
	add	%d15, %d3
	st.h	[%a15]0, %d15
.L15:
	.loc 1 169 0
	ret
.LFE22:
	.size	ADS1115_ReadFromPx, .-ADS1115_ReadFromPx
.section .text.ADS1115_ContinuousRead,"ax",@progbits
	.align 1
	.global	ADS1115_ContinuousRead
	.type	ADS1115_ContinuousRead, @function
ADS1115_ContinuousRead:
.LFB23:
	.loc 1 172 0
.LVL14:
	.loc 1 174 0
	movh.a	%a12, hi:ADS1115_InitConfigSuccess
	ld.bu	%d15, [%a12] lo:ADS1115_InitConfigSuccess
	.loc 1 172 0
	sub.a	%SP, 8
.LCFI3:
	.loc 1 172 0
	mov.aa	%a15, %a4
	.loc 1 174 0
	jnz	%d15, .L17
.LBB32:
.LBB33:
.LBB34:
.LBB35:
	.loc 1 195 0
	movh.a	%a15, hi:ADS1115_axConfig
	lea	%a4, [%a15] lo:ADS1115_axConfig
.LVL15:
	mov	%d8, 1
	st.b	[%a15] lo:ADS1115_axConfig, %d8
	.loc 1 197 0
	ld.bu	%d2, [%a4] 1
.LBE35:
.LBE34:
.LBB38:
.LBB39:
	.loc 1 211 0
	movh.a	%a15, hi:ADS1115_u8UserCfg_PGAC
	ld.bu	%d3, [%a15] lo:ADS1115_u8UserCfg_PGAC
	and	%d2, %d2, 126
	.loc 1 212 0
	movh.a	%a15, hi:ADS1115_u8UserCfg_MUXC
	.loc 1 211 0
	insert	%d2, %d2, %d3, 1, 3
	.loc 1 212 0
	ld.bu	%d3, [%a15] lo:ADS1115_u8UserCfg_MUXC
.LBE39:
.LBE38:
.LBB43:
.LBB36:
	.loc 1 202 0
	ld.bu	%d15, [%a4] 2
.LBE36:
.LBE43:
.LBB44:
.LBB40:
	.loc 1 212 0
	insert	%d2, %d2, %d3, 4, 3
.LBE40:
.LBE44:
.LBB45:
.LBB37:
	.loc 1 202 0
	insert	%d15, %d15, 3, 0, 2
.LBE37:
.LBE45:
.LBB46:
.LBB41:
	.loc 1 214 0
	movh.a	%a15, hi:ADS1115_u8UserCfg_DRC
	.loc 1 212 0
	st.b	[%a4] 1, %d2
	.loc 1 214 0
	ld.bu	%d2, [%a15] lo:ADS1115_u8UserCfg_DRC
	and	%d15, %d15, 227
	insert	%d15, %d15, %d2, 5, 3
.LBE41:
.LBE46:
	.loc 1 79 0
	mov	%d4, 0
.LBB47:
.LBB42:
	.loc 1 214 0
	st.b	[%a4] 2, %d15
.LBE42:
.LBE47:
	.loc 1 79 0
	mov	%d5, 3
	mov	%d6, 72
	call	I2c_SyncWrite
.LVL16:
.LBE33:
.LBE32:
	.loc 1 181 0
	mov	%d15, 12
.LBB49:
.LBB48:
	.loc 1 80 0
	jnz	%d2, .L18
	.loc 1 84 0
	movh.a	%a15, hi:ADS1115_CurrentPx
	st.b	[%a15] lo:ADS1115_CurrentPx, %d8
.LBE48:
.LBE49:
	.loc 1 179 0
	st.b	[%a12] lo:ADS1115_InitConfigSuccess, %d8
.LVL17:
.L18:
	.loc 1 188 0
	mov	%d2, %d15
	ret
.LVL18:
.L17:
.LBB50:
.LBB51:
	.loc 1 109 0
	movh.a	%a13, hi:ADS1115_CurrentPx
	ld.bu	%d15, [%a13] lo:ADS1115_CurrentPx
	movh.a	%a12, hi:ADS1115_Success
	jnz	%d15, .L27
.LVL19:
.L19:
	.loc 1 127 0
	movh.a	%a14, hi:Local_au8Result
	lea	%a13, [%a14] lo:Local_au8Result
	mov	%d4, 0
	mov.aa	%a4, %a13
	mov	%d5, 2
	mov	%d6, 72
	call	I2c_SyncRead
.LVL20:
	.loc 1 128 0
	st.b	[%a12] lo:ADS1115_Success, %d2
	.loc 1 129 0
	mov	%d15, %d2
	jnz	%d2, .L18
	.loc 1 133 0
	ld.bu	%d2, [%a14] lo:Local_au8Result
.LVL21:
	ld.bu	%d3, [%a13] 1
	sh	%d2, %d2, 8
	add	%d2, %d3
	st.h	[%a15]0, %d2
.LBE51:
.LBE50:
	.loc 1 188 0
	mov	%d2, %d15
	ret
.LVL22:
.L27:
.LBB53:
.LBB52:
	.loc 1 111 0
	lea	%a4, [%SP] 8
.LVL23:
	mov	%d15, 0
	st.b	[+%a4]-1, %d15
	.loc 1 112 0
	mov	%d4, 0
	mov	%d5, 1
	mov	%d6, 72
	call	I2c_SyncWrite
.LVL24:
	.loc 1 113 0
	movh.a	%a12, hi:ADS1115_Success
	st.b	[%a12] lo:ADS1115_Success, %d2
	.loc 1 114 0
	mov	%d15, %d2
	jnz	%d2, .L18
	.loc 1 116 0
	st.b	[%a13] lo:ADS1115_CurrentPx, %d2
	j	.L19
.LBE52:
.LBE53:
.LFE23:
	.size	ADS1115_ContinuousRead, .-ADS1115_ContinuousRead
	.global	Local_au8Result
.section .bss.a1.Local_au8Result,"aw",@nobits
	.type	Local_au8Result, @object
	.size	Local_au8Result, 2
Local_au8Result:
	.zero	2
	.global	ADS1115_Success
.section .bss.a1.ADS1115_Success,"aw",@nobits
	.type	ADS1115_Success, @object
	.size	ADS1115_Success, 1
ADS1115_Success:
	.zero	1
	.global	ADS1115_InitConfigSuccess
.section .bss.a1.ADS1115_InitConfigSuccess,"aw",@nobits
	.type	ADS1115_InitConfigSuccess, @object
	.size	ADS1115_InitConfigSuccess, 1
ADS1115_InitConfigSuccess:
	.zero	1
	.global	ADS1115_CurrentPx
.section .bss.a1.ADS1115_CurrentPx,"aw",@nobits
	.type	ADS1115_CurrentPx, @object
	.size	ADS1115_CurrentPx, 1
ADS1115_CurrentPx:
	.zero	1
	.global	ADS1115_axConfig
.section .bss.a1.ADS1115_axConfig,"aw",@nobits
	.type	ADS1115_axConfig, @object
	.size	ADS1115_axConfig, 3
ADS1115_axConfig:
	.zero	3
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
	.byte	0x4
	.uaword	.LCFI0-.LFB20
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.byte	0x4
	.uaword	.LCFI1-.LFB21
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.byte	0x4
	.uaword	.LCFI2-.LFB22
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.byte	0x4
	.uaword	.LCFI3-.LFB23
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\I2c\\inc\\I2c.h"
	.file 4 "bswcdd\\ADS1115\\ADS1115.h"
	.file 5 "bswcdd\\ADS1115\\ADS1115_Calib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xefe
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\ADS1115\\ADS1115.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xc0
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
	.uaword	0x1c3
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
	.uaword	0x1ef
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
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.uaword	0x1b6
	.uleb128 0x5
	.uaword	0x1b6
	.uaword	0x29c
	.uleb128 0x6
	.uaword	0x27b
	.byte	0x1
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x1e1
	.uleb128 0x3
	.string	"I2c_ChannelType"
	.byte	0x3
	.byte	0x81
	.uaword	0x1b6
	.uleb128 0x3
	.string	"I2c_SizeType"
	.byte	0x3
	.byte	0x83
	.uaword	0x1e1
	.uleb128 0x3
	.string	"I2c_DataType"
	.byte	0x3
	.byte	0x85
	.uaword	0x1b6
	.uleb128 0x3
	.string	"I2c_SlaveAddrType"
	.byte	0x3
	.byte	0x87
	.uaword	0x1e1
	.uleb128 0x8
	.byte	0x1
	.byte	0x3
	.byte	0x9a
	.uaword	0x3fa
	.uleb128 0x9
	.string	"I2C_NO_ERR"
	.sleb128 0
	.uleb128 0x9
	.string	"I2C_TX_UNDERFLOW"
	.sleb128 1
	.uleb128 0x9
	.string	"I2C_TX_OVERFLOW"
	.sleb128 2
	.uleb128 0x9
	.string	"I2C_RX_UNDERFLOW"
	.sleb128 3
	.uleb128 0x9
	.string	"I2C_RX_OVERFLOW"
	.sleb128 4
	.uleb128 0x9
	.string	"I2C_NO_ACK"
	.sleb128 5
	.uleb128 0x9
	.string	"I2C_ARBITRATION_LOST"
	.sleb128 6
	.uleb128 0x9
	.string	"I2C_INVALID_CHANNEL"
	.sleb128 7
	.uleb128 0x9
	.string	"I2C_INVALID_SIZE"
	.sleb128 8
	.uleb128 0x9
	.string	"I2C_INVALID_ADDRESS"
	.sleb128 9
	.uleb128 0x9
	.string	"I2C_NULL_PTR"
	.sleb128 10
	.uleb128 0x9
	.string	"I2C_IS_UNINIT"
	.sleb128 11
	.uleb128 0x9
	.string	"I2C_IS_BUSY"
	.sleb128 12
	.uleb128 0x9
	.string	"I2C_ERR_OTHER"
	.sleb128 13
	.byte	0
	.uleb128 0x3
	.string	"I2c_ErrorType"
	.byte	0x3
	.byte	0xa9
	.uaword	0x2fa
	.uleb128 0x3
	.string	"ADS1115_Px"
	.byte	0x4
	.byte	0x32
	.uaword	0x1b6
	.uleb128 0xa
	.byte	0x1
	.byte	0x4
	.byte	0x36
	.uaword	0x46e
	.uleb128 0xb
	.string	"MODE"
	.byte	0x4
	.byte	0x37
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"PGA"
	.byte	0x4
	.byte	0x38
	.uaword	0x1b6
	.byte	0x1
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"MUX"
	.byte	0x4
	.byte	0x39
	.uaword	0x1b6
	.byte	0x1
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"OS"
	.byte	0x4
	.byte	0x3a
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4
	.byte	0x34
	.uaword	0x48d
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.byte	0x35
	.uaword	0x1b6
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.byte	0x3b
	.uaword	0x421
	.byte	0
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x4
	.byte	0x3c
	.uaword	0x46e
	.uleb128 0xa
	.byte	0x1
	.byte	0x4
	.byte	0x40
	.uaword	0x50a
	.uleb128 0xb
	.string	"COMP_QUE"
	.byte	0x4
	.byte	0x41
	.uaword	0x1b6
	.byte	0x1
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"COMP_LAT"
	.byte	0x4
	.byte	0x42
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"COMP_POL"
	.byte	0x4
	.byte	0x43
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"COMP_MODE"
	.byte	0x4
	.byte	0x44
	.uaword	0x1b6
	.byte	0x1
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.string	"DR"
	.byte	0x4
	.byte	0x45
	.uaword	0x1b6
	.byte	0x1
	.byte	0x3
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	.LASF1
	.byte	0x1
	.byte	0x4
	.byte	0x3e
	.uaword	0x529
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.byte	0x3f
	.uaword	0x1b6
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.byte	0x46
	.uaword	0x498
	.byte	0
	.uleb128 0xe
	.uaword	.LASF1
	.byte	0x4
	.byte	0x47
	.uaword	0x50a
	.uleb128 0xa
	.byte	0x1
	.byte	0x4
	.byte	0x4b
	.uaword	0x54e
	.uleb128 0xf
	.string	"u8Byte"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	.LASF2
	.byte	0x1
	.byte	0x4
	.byte	0x49
	.uaword	0x56d
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.byte	0x4a
	.uaword	0x1b6
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.byte	0x4d
	.uaword	0x534
	.byte	0
	.uleb128 0xe
	.uaword	.LASF2
	.byte	0x4
	.byte	0x4e
	.uaword	0x54e
	.uleb128 0xa
	.byte	0x1
	.byte	0x4
	.byte	0x52
	.uaword	0x592
	.uleb128 0xf
	.string	"u8Byte"
	.byte	0x4
	.byte	0x53
	.uaword	0x1b6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xc
	.uaword	.LASF3
	.byte	0x1
	.byte	0x4
	.byte	0x50
	.uaword	0x5b1
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.byte	0x51
	.uaword	0x1b6
	.uleb128 0xd
	.string	"B"
	.byte	0x4
	.byte	0x54
	.uaword	0x578
	.byte	0
	.uleb128 0xe
	.uaword	.LASF3
	.byte	0x4
	.byte	0x55
	.uaword	0x592
	.uleb128 0xc
	.uaword	.LASF4
	.byte	0x1
	.byte	0x4
	.byte	0x57
	.uaword	0x622
	.uleb128 0xd
	.string	"U"
	.byte	0x4
	.byte	0x58
	.uaword	0x1b6
	.uleb128 0xd
	.string	"Px"
	.byte	0x4
	.byte	0x59
	.uaword	0x40f
	.uleb128 0xd
	.string	"tCfgRegH"
	.byte	0x4
	.byte	0x5a
	.uaword	0x48d
	.uleb128 0xd
	.string	"tCfgRegL"
	.byte	0x4
	.byte	0x5b
	.uaword	0x529
	.uleb128 0xd
	.string	"tThreshRegH"
	.byte	0x4
	.byte	0x5c
	.uaword	0x56d
	.uleb128 0xd
	.string	"tThreshRegL"
	.byte	0x4
	.byte	0x5d
	.uaword	0x5b1
	.byte	0
	.uleb128 0xe
	.uaword	.LASF4
	.byte	0x4
	.byte	0x5e
	.uaword	0x5bc
	.uleb128 0x10
	.string	"ADS1115_PxDefinition"
	.byte	0x1
	.byte	0x4
	.byte	0x63
	.uaword	0x6a5
	.uleb128 0x9
	.string	"eADS1115_RESULT_PX"
	.sleb128 0
	.uleb128 0x9
	.string	"eADS1115_CONFIG_PX"
	.sleb128 1
	.uleb128 0x9
	.string	"eADS1115_LO_THRESH_PX"
	.sleb128 2
	.uleb128 0x9
	.string	"eADS1115_HI_THRESH_PX"
	.sleb128 3
	.byte	0
	.uleb128 0x10
	.string	"ADS1115_InputMuxCfg"
	.byte	0x1
	.byte	0x4
	.byte	0x6a
	.uaword	0x786
	.uleb128 0x9
	.string	"eADS1115_CFG_MUX_A0A1"
	.sleb128 0
	.uleb128 0x9
	.string	"eADS1115_CFG_MUX_A0A3"
	.sleb128 1
	.uleb128 0x9
	.string	"eADS1115_CFG_MUX_A1A3"
	.sleb128 2
	.uleb128 0x9
	.string	"eADS1115_CFG_MUX_A2A3"
	.sleb128 3
	.uleb128 0x9
	.string	"eADS1115_CFG_MUX_A0GND"
	.sleb128 4
	.uleb128 0x9
	.string	"eADS1115_CFG_MUX_A1GND"
	.sleb128 5
	.uleb128 0x9
	.string	"eADS1115_CFG_MUX_A2GND"
	.sleb128 6
	.uleb128 0x9
	.string	"eADS1115_CFG_MUX_A3GND"
	.sleb128 7
	.byte	0
	.uleb128 0x10
	.string	"ADS1115_PGACfg"
	.byte	0x1
	.byte	0x4
	.byte	0x75
	.uaword	0x88c
	.uleb128 0x9
	.string	"eADS1115_CFG_PGA_FSR_6_144"
	.sleb128 0
	.uleb128 0x9
	.string	"eADS1115_CFG_PGA_FSR_4_096"
	.sleb128 1
	.uleb128 0x9
	.string	"eADS1115_CFG_PGA_FSR_2_048"
	.sleb128 2
	.uleb128 0x9
	.string	"eADS1115_CFG_PGA_FSR_1_024"
	.sleb128 3
	.uleb128 0x9
	.string	"eADS1115_CFG_PGA_FSR_0_512"
	.sleb128 4
	.uleb128 0x9
	.string	"eADS1115_CFG_PGA_FSR_0_256_1"
	.sleb128 5
	.uleb128 0x9
	.string	"eADS1115_CFG_PGA_FSR_0_256_2"
	.sleb128 6
	.uleb128 0x9
	.string	"eADS1115_CFG_PGA_FSR_0_256_3"
	.sleb128 7
	.byte	0
	.uleb128 0x10
	.string	"ADS1115_SPSCfg"
	.byte	0x1
	.byte	0x4
	.byte	0x80
	.uaword	0x96f
	.uleb128 0x9
	.string	"eADS1115_CFG_DR_8_SPS"
	.sleb128 0
	.uleb128 0x9
	.string	"eADS1115_CFG_DR_16_SPS"
	.sleb128 1
	.uleb128 0x9
	.string	"eADS1115_CFG_DR_32_SPS"
	.sleb128 2
	.uleb128 0x9
	.string	"eADS1115_CFG_DR_64_SPS"
	.sleb128 3
	.uleb128 0x9
	.string	"eADS1115_CFG_DR_128_SPS"
	.sleb128 4
	.uleb128 0x9
	.string	"eADS1115_CFG_DR_250_SPS"
	.sleb128 5
	.uleb128 0x9
	.string	"eADS1115_CFG_DR_475_SPS"
	.sleb128 6
	.uleb128 0x9
	.string	"eADS1115_CFG_DR_860_SPS"
	.sleb128 7
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.byte	0x1
	.byte	0x1b
	.uaword	0x9f1
	.uleb128 0x9
	.string	"eADS1115_CFG_PX_FRAME_INDEX"
	.sleb128 0
	.uleb128 0x9
	.string	"eADS1115_CFG_HIGH_FRAME_INDEX"
	.sleb128 1
	.uleb128 0x9
	.string	"eADS1115_CFG_LOW_FRAME_INDEX"
	.sleb128 2
	.uleb128 0x9
	.string	"eADS1115_CFG_FRAME_MAX_NO"
	.sleb128 3
	.byte	0
	.uleb128 0x11
	.string	"ADS1115_vidReloadConfig"
	.byte	0x1
	.byte	0xc1
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"ADS1115_vidLoadUserConfig"
	.byte	0x1
	.byte	0xd1
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.byte	0x1
	.string	"ADS1115_WriteConfig"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	0x3fa
	.byte	0x1
	.uaword	0xa5b
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.byte	0x4a
	.uaword	0x3fa
	.byte	0
	.uleb128 0x14
	.uaword	0xa2d
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xab9
	.uleb128 0x15
	.uaword	0xa4f
	.byte	0x1
	.byte	0x52
	.uleb128 0x16
	.uaword	0x9f1
	.uaword	.LBB10
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4c
	.uleb128 0x16
	.uaword	0xa0e
	.uaword	.LBB14
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x4d
	.uleb128 0x17
	.uaword	.LVL0
	.uaword	0xe88
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	ADS1115_axConfig
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x12
	.byte	0x1
	.string	"ADS1115_ReadResult"
	.byte	0x1
	.byte	0x69
	.byte	0x1
	.uaword	0x3fa
	.byte	0x1
	.uaword	0xb03
	.uleb128 0x19
	.uaword	.LASF6
	.byte	0x1
	.byte	0x69
	.uaword	0x29c
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.byte	0x6b
	.uaword	0x3fa
	.uleb128 0x1a
	.string	"Local_u8Px"
	.byte	0x1
	.byte	0x6c
	.uaword	0x1b6
	.byte	0
	.uleb128 0x1b
	.uaword	0xab9
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LLST0
	.byte	0x1
	.uaword	0xb78
	.uleb128 0x1c
	.uaword	0xada
	.uaword	.LLST1
	.uleb128 0x1d
	.uaword	0xae5
	.uaword	.LLST2
	.uleb128 0x15
	.uaword	0xaf0
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1e
	.uaword	.LVL3
	.uaword	0xe88
	.uaword	0xb57
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.uaword	.LVL6
	.uaword	0xed4
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"ADS1115_WriteInPx"
	.byte	0x1
	.byte	0x90
	.byte	0x1
	.uaword	0x3fa
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LLST3
	.byte	0x1
	.uaword	0xbe6
	.uleb128 0x20
	.string	"TargetPx"
	.byte	0x1
	.byte	0x90
	.uaword	0x1b6
	.uaword	.LLST4
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.byte	0x92
	.uaword	0x3fa
	.byte	0x1
	.byte	0x52
	.uleb128 0x17
	.uaword	.LVL10
	.uaword	0xe88
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"ADS1115_ReadFromPx"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x3fa
	.uaword	.LFB22
	.uaword	.LFE22
	.uaword	.LLST5
	.byte	0x1
	.uaword	0xc5e
	.uleb128 0x22
	.uaword	.LASF6
	.byte	0x1
	.byte	0x9c
	.uaword	0x29c
	.uaword	.LLST6
	.uleb128 0x21
	.uaword	.LASF5
	.byte	0x1
	.byte	0x9e
	.uaword	0x3fa
	.byte	0x1
	.byte	0x52
	.uleb128 0x21
	.uaword	.LASF7
	.byte	0x1
	.byte	0x9f
	.uaword	0x28c
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x17
	.uaword	.LVL13
	.uaword	0xed4
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -2
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"ADS1115_ContinuousRead"
	.byte	0x1
	.byte	0xab
	.byte	0x1
	.uaword	0x3fa
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LLST7
	.byte	0x1
	.uaword	0xd82
	.uleb128 0x22
	.uaword	.LASF6
	.byte	0x1
	.byte	0xab
	.uaword	0x29c
	.uaword	.LLST8
	.uleb128 0x13
	.uaword	.LASF5
	.byte	0x1
	.byte	0xad
	.uaword	0x3fa
	.uleb128 0x23
	.uaword	0xa2d
	.uaword	.LBB32
	.uaword	.Ldebug_ranges0+0x48
	.byte	0x1
	.byte	0xb0
	.uaword	0xd0d
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x48
	.uleb128 0x1d
	.uaword	0xa4f
	.uaword	.LLST9
	.uleb128 0x16
	.uaword	0x9f1
	.uaword	.LBB34
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0x4c
	.uleb128 0x16
	.uaword	0xa0e
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0x4d
	.uleb128 0x17
	.uaword	.LVL16
	.uaword	0xe88
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x33
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	ADS1115_axConfig
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0xab9
	.uaword	.LBB50
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.byte	0xb9
	.uleb128 0x1c
	.uaword	0xada
	.uaword	.LLST10
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0xa8
	.uleb128 0x1d
	.uaword	0xae5
	.uaword	.LLST11
	.uleb128 0x15
	.uaword	0xaf0
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1e
	.uaword	.LVL20
	.uaword	0xed4
	.uaword	0xd5f
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x17
	.uaword	.LVL24
	.uaword	0xe88
	.uleb128 0x18
	.byte	0x1
	.byte	0x56
	.byte	0x2
	.byte	0x8
	.byte	0x48
	.uleb128 0x18
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x18
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x18
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.string	"ADS1115_u8UserCfg_PGAC"
	.byte	0x5
	.byte	0x26
	.uaword	0x287
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"ADS1115_u8UserCfg_MUXC"
	.byte	0x5
	.byte	0x27
	.uaword	0x287
	.byte	0x1
	.byte	0x1
	.uleb128 0x26
	.string	"ADS1115_u8UserCfg_DRC"
	.byte	0x5
	.byte	0x28
	.uaword	0x287
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x622
	.uaword	0xdf1
	.uleb128 0x6
	.uaword	0x27b
	.byte	0x2
	.byte	0
	.uleb128 0x27
	.string	"ADS1115_axConfig"
	.byte	0x1
	.byte	0x26
	.uaword	0xde1
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ADS1115_axConfig
	.uleb128 0x27
	.string	"ADS1115_CurrentPx"
	.byte	0x1
	.byte	0x28
	.uaword	0x1b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ADS1115_CurrentPx
	.uleb128 0x27
	.string	"ADS1115_InitConfigSuccess"
	.byte	0x1
	.byte	0x29
	.uaword	0x1b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ADS1115_InitConfigSuccess
	.uleb128 0x27
	.string	"ADS1115_Success"
	.byte	0x1
	.byte	0x2a
	.uaword	0x1b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	ADS1115_Success
	.uleb128 0x28
	.uaword	.LASF7
	.byte	0x1
	.byte	0x2c
	.uaword	0x28c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Local_au8Result
	.uleb128 0x29
	.byte	0x1
	.string	"I2c_SyncWrite"
	.byte	0x3
	.uahalf	0x136
	.byte	0x1
	.uaword	0x3fa
	.byte	0x1
	.uaword	0xeba
	.uleb128 0x2a
	.uaword	0xeba
	.uleb128 0x2a
	.uaword	0xebf
	.uleb128 0x2a
	.uaword	0xeca
	.uleb128 0x2a
	.uaword	0xecf
	.byte	0
	.uleb128 0x4
	.uaword	0x2a2
	.uleb128 0x4
	.uaword	0xec4
	.uleb128 0x7
	.byte	0x4
	.uaword	0x2cd
	.uleb128 0x4
	.uaword	0x2b9
	.uleb128 0x4
	.uaword	0x2e1
	.uleb128 0x2b
	.byte	0x1
	.string	"I2c_SyncRead"
	.byte	0x3
	.uahalf	0x159
	.byte	0x1
	.uaword	0x3fa
	.byte	0x1
	.uleb128 0x2a
	.uaword	0xeba
	.uleb128 0x2a
	.uaword	0xebf
	.uleb128 0x2a
	.uaword	0xeca
	.uleb128 0x2a
	.uaword	0xecf
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
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
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
	.uleb128 0x9
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xc
	.uleb128 0x17
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x2e
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.byte	0
	.byte	0
	.uleb128 0x14
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x15
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x16
	.uleb128 0x1d
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x19
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
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x31
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
	.uleb128 0x1c
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x25
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x52
	.uleb128 0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uaword	.LFB20
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LFB21
	.uaword	.LCFI1
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI1
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9
	.uaword	.LVL10-1
	.uahalf	0x2
	.byte	0x84
	.sleb128 0
	.uaword	.LVL10-1
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -1
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LFB22
	.uaword	.LCFI2
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI2
	.uaword	.LFE22
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL12
	.uaword	.LFE22
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LFB23
	.uaword	.LCFI3
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI3
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL15
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL23
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x52
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB10
	.uaword	.LBE10
	.uaword	.LBB19
	.uaword	.LBE19
	.uaword	.LBB21
	.uaword	.LBE21
	.uaword	0
	.uaword	0
	.uaword	.LBB14
	.uaword	.LBE14
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB22
	.uaword	.LBE22
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB34
	.uaword	.LBE34
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	0
	.uaword	0
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	0
	.uaword	0
	.uaword	.LBB50
	.uaword	.LBE50
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	0
	.uaword	0
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF4:
	.string	"ADS1115_RegMap"
.LASF6:
	.string	"ResultPtr"
.LASF0:
	.string	"ADS1115_CfgRegH"
.LASF2:
	.string	"ADS1115_ThreshRegH"
.LASF7:
	.string	"Local_au8Result"
.LASF3:
	.string	"ADS1115_ThreshRegL"
.LASF5:
	.string	"Returnvalue"
.LASF1:
	.string	"ADS1115_CfgRegL"
	.extern	I2c_SyncRead,STT_FUNC,0
	.extern	I2c_SyncWrite,STT_FUNC,0
	.extern	ADS1115_u8UserCfg_DRC,STT_OBJECT,1
	.extern	ADS1115_u8UserCfg_MUXC,STT_OBJECT,1
	.extern	ADS1115_u8UserCfg_PGAC,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
