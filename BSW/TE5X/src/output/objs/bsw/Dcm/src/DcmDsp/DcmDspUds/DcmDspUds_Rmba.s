	.file	"DcmDspUds_Rmba.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Dcm_RMBAIni,"ax",@progbits
	.align 1
	.global	Dcm_RMBAIni
	.type	Dcm_RMBAIni, @function
Dcm_RMBAIni:
.LFB23:
	.file 1 "bsw\\Dcm\\src\\DcmDsp\\DcmDspUds\\DcmDspUds_Rmba.c"
	.loc 1 71 0
	.loc 1 73 0
	movh.a	%a15, hi:Dcm_stRmbaOpstatus_u8
	ld.bu	%d15, [%a15] lo:Dcm_stRmbaOpstatus_u8
	jeq	%d15, 1, .L4
	.loc 1 81 0
	mov	%d15, 0
	movh.a	%a2, hi:Dcm_SrvOpstatus_u8
	st.b	[%a2] lo:Dcm_SrvOpstatus_u8, %d15
	.loc 1 84 0
	st.b	[%a15] lo:Dcm_stRmbaOpstatus_u8, %d15
	ret
.L4:
	.loc 1 75 0
	movh.a	%a2, hi:Dcm_idxDspRmba_u16
	ld.hu	%d15, [%a2] lo:Dcm_idxDspRmba_u16
	movh.a	%a2, hi:Dcm_RMBAConfig_cast
	mov.d	%d3, %a2
	mov	%d4, 2
	addi	%d2, %d3, lo:Dcm_RMBAConfig_cast
	madd	%d3, %d2, %d15, 24
	mov.a	%a4, 0
	mov.a	%a5, 0
	mov.a	%a2, %d3
	.loc 1 81 0
	mov	%d15, 0
	.loc 1 75 0
	ld.bu	%d5, [%a2] 20
	movh.a	%a2, hi:Dcm_dataMemoryAddress_u32
	ld.w	%d6, [%a2] lo:Dcm_dataMemoryAddress_u32
	movh.a	%a2, hi:Dcm_nrReadMemoryLength_u32
	ld.w	%d7, [%a2] lo:Dcm_nrReadMemoryLength_u32
	call	DcmAppl_Dcm_ReadMemory
.LVL0:
	.loc 1 81 0
	movh.a	%a2, hi:Dcm_SrvOpstatus_u8
	st.b	[%a2] lo:Dcm_SrvOpstatus_u8, %d15
	.loc 1 84 0
	st.b	[%a15] lo:Dcm_stRmbaOpstatus_u8, %d15
	ret
.LFE23:
	.size	Dcm_RMBAIni, .-Dcm_RMBAIni
.section .text.Dcm_DcmReadMemoryByAddress,"ax",@progbits
	.align 1
	.global	Dcm_DcmReadMemoryByAddress
	.type	Dcm_DcmReadMemoryByAddress, @function
Dcm_DcmReadMemoryByAddress:
.LFB30:
	.loc 1 759 0
.LVL1:
	.loc 1 764 0
	mov	%d15, 0
	st.b	[%a5]0, %d15
	.loc 1 759 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 759 0
	mov.aa	%a13, %a4
	mov.aa	%a15, %a5
	.loc 1 767 0
	jeq	%d4, 2, .L49
	.loc 1 775 0
	movh.a	%a12, hi:Dcm_SrvOpstatus_u8
	ld.bu	%d15, [%a12] lo:Dcm_SrvOpstatus_u8
	jnz	%d15, .L9
	.loc 1 779 0
	ld.w	%d15, [%a4] 16
	jge.u	%d15, 3, .L50
.LVL2:
.L10:
	.loc 1 792 0
	mov	%d15, 19
	st.b	[%a15]0, %d15
	ld.bu	%d15, [%a12] lo:Dcm_SrvOpstatus_u8
.L9:
	.loc 1 796 0
	jeq	%d15, 4, .L51
.LVL3:
.L17:
	.loc 1 819 0
	jeq	%d15, 5, .L29
	.loc 1 825 0
	ld.bu	%d15, [%a15]0
	jz	%d15, .L52
.L30:
.LVL4:
	.loc 1 828 0
	mov	%d15, 0
	st.b	[%a12] lo:Dcm_SrvOpstatus_u8, %d15
.LVL5:
	.loc 1 829 0
	mov	%d2, 1
	ret
.L52:
	mov	%d2, 1
	ret
.L51:
	movh	%d8, hi:Dcm_RMBAConfig_cast
	addi	%d8, %d8, lo:Dcm_RMBAConfig_cast
	movh	%d9, hi:Dcm_idxDspRmba_u16
.L15:
	.loc 1 799 0
	mov.a	%a3, %d9
.LBB18:
.LBB19:
	.loc 1 322 0
	mov	%d2, 0
.LBE19:
.LBE18:
	.loc 1 799 0
	ld.hu	%d15, [%a3] lo:Dcm_idxDspRmba_u16
.LVL6:
.LBB32:
.LBB28:
	.loc 1 322 0
	st.b	[%a15]0, %d2
.LVL7:
	.loc 1 326 0
	madd	%d2, %d8, %d15, 24
	mov.a	%a14, %d2
	ld.w	%d15, [%a14] 12
.LVL8:
	.loc 1 327 0
	ld.w	%d11, [%a14] 8
.LVL9:
	.loc 1 330 0
	call	Dcm_DsldGetActiveSessionMask_u32
.LVL10:
	and	%d2, %d15
	jnz	%d2, .L53
.LVL11:
.L18:
	.loc 1 337 0
	mov	%d15, 49
	st.b	[%a15]0, %d15
.LVL12:
.L20:
	ld.bu	%d15, [%a12] lo:Dcm_SrvOpstatus_u8
	j	.L17
.LVL13:
.L50:
.LBE28:
.LBE32:
	.loc 1 782 0
	ld.a	%a4, [%a4] 4
.LVL14:
	movh.a	%a2, hi:Dcm_dataMemaddrsize_u8
	.loc 1 783 0
	movh.a	%a14, hi:Dcm_dataMemdatasize_u8
	.loc 1 782 0
	ld.bu	%d2, [%a4]0
	and	%d4, %d2, 15
.LVL15:
	.loc 1 783 0
	sh	%d2, -4
.LBB33:
.LBB34:
	.loc 1 165 0
	addi	%d6, %d2, -1
	addi	%d5, %d4, -1
	.loc 1 166 0
	lt.u	%d3, %d6, 4
.LBE34:
.LBE33:
	.loc 1 782 0
	st.b	[%a2] lo:Dcm_dataMemaddrsize_u8, %d4
	.loc 1 783 0
	st.b	[%a14] lo:Dcm_dataMemdatasize_u8, %d2
.LVL16:
.LBB43:
.LBB41:
	.loc 1 166 0
	and.lt.u	%d3, %d5, 4
	jz	%d3, .L13
	.loc 1 169 0
	add	%d2, %d4
	add	%d2, 1
	jne	%d15, %d2, .L10
	.loc 1 172 0
	movh	%d10, hi:Dcm_dataMemoryAddress_u32
	mov.a	%a3, %d10
	add.a	%a4, 1
	lea	%a5, [%a3] lo:Dcm_dataMemoryAddress_u32
.LVL17:
	st.a	[%SP] 4, %a2
	call	Dcm_GetMemoryInfo
.LVL18:
	.loc 1 174 0
	ld.a	%a2, [%SP] 4
	ld.bu	%d4, [%a14] lo:Dcm_dataMemdatasize_u8
	ld.bu	%d15, [%a2] lo:Dcm_dataMemaddrsize_u8
	ld.a	%a2, [%a13] 4
	mov.a	%a4, %d15
	movh	%d15, hi:Dcm_nrReadMemoryLength_u32
	mov.a	%a3, %d15
	add.a	%a4, 1
	add.a	%a4, %a2
	lea	%a5, [%a3] lo:Dcm_nrReadMemoryLength_u32
	call	Dcm_GetMemoryInfo
.LVL19:
	.loc 1 178 0
	mov.a	%a3, %d15
	mov.a	%a2, %d10
	ld.w	%d10, [%a3] lo:Dcm_nrReadMemoryLength_u32
	ld.w	%d9, [%a2] lo:Dcm_dataMemoryAddress_u32
.LVL20:
.LBB35:
.LBB36:
	.loc 1 126 0
	jz	%d10, .L13
	nor	%d15, %d9, 0
	jlt.u	%d15, %d10, .L13
	.loc 1 128 0
	call	Dcm_RmbacalculateTableSize_u16
.LVL21:
	.loc 1 129 0
	jz	%d2, .L13
	movh	%d8, hi:Dcm_RMBAConfig_cast
	.loc 1 132 0
	add	%d10, %d9
.LVL22:
	.loc 1 129 0
	mov	%d15, 0
	addi	%d8, %d8, lo:Dcm_RMBAConfig_cast
	mov	%d3, 0
	.loc 1 132 0
	add	%d10, -1
.LVL23:
.L16:
	.loc 1 131 0
	madd	%d4, %d8, %d15, 24
	mov.a	%a2, %d4
	ld.w	%d4, [%a2]0
	jlt.u	%d9, %d4, .L14
	ld.w	%d4, [%a2] 4
	jge.u	%d4, %d10, .L54
.L14:
.LVL24:
	add	%d15, 1
.LVL25:
	.loc 1 129 0
	extr.u	%d3, %d15, 0, 16
	jlt.u	%d3, %d2, .L16
.LVL26:
.L13:
.LBE36:
.LBE35:
	.loc 1 191 0
	mov	%d15, 49
	st.b	[%a15]0, %d15
	ld.bu	%d15, [%a12] lo:Dcm_SrvOpstatus_u8
.LBE41:
.LBE43:
	.loc 1 796 0
	jne	%d15, 4, .L17
	j	.L51
.LVL27:
.L29:
	movh	%d15, hi:Dcm_nrReadMemoryLength_u32
	mov.a	%a3, %d15
	movh	%d8, hi:Dcm_RMBAConfig_cast
	ld.w	%d7, [%a3] lo:Dcm_nrReadMemoryLength_u32
	addi	%d8, %d8, lo:Dcm_RMBAConfig_cast
	movh	%d9, hi:Dcm_idxDspRmba_u16
	movh	%d10, hi:Dcm_dataMemoryAddress_u32
.L27:
.LVL28:
.LBB44:
.LBB45:
.LBB46:
.LBB47:
	.loc 1 661 0
	mov.a	%a2, %d9
	ld.a	%a4, [%a13]0
	ld.hu	%d2, [%a2] lo:Dcm_idxDspRmba_u16
	movh.a	%a14, hi:Dcm_stRmbaOpstatus_u8
	madd	%d3, %d8, %d2, 24
	ld.bu	%d4, [%a14] lo:Dcm_stRmbaOpstatus_u8
	mov.aa	%a5, %a15
	mov.a	%a2, %d3
	ld.bu	%d5, [%a2] 20
	mov.a	%a2, %d10
	ld.w	%d6, [%a2] lo:Dcm_dataMemoryAddress_u32
	call	DcmAppl_Dcm_ReadMemory
.LVL29:
	.loc 1 665 0
	jz	%d2, .L55
	.loc 1 676 0
	jeq	%d2, 2, .L56
	.loc 1 682 0
	jeq	%d2, 3, .L57
	.loc 1 690 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L35
	.loc 1 693 0
	mov	%d15, 16
	st.b	[%a15]0, %d15
.L35:
	.loc 1 697 0
	mov	%d15, 0
	st.b	[%a14] lo:Dcm_stRmbaOpstatus_u8, %d15
	j	.L30
.LVL30:
.L49:
.LBE47:
.LBE46:
.LBE45:
.LBE44:
.LBB54:
.LBB55:
	.loc 1 73 0
	movh.a	%a14, hi:Dcm_stRmbaOpstatus_u8
	ld.bu	%d15, [%a14] lo:Dcm_stRmbaOpstatus_u8
	jeq	%d15, 1, .L58
.LVL31:
.L7:
	.loc 1 81 0
	mov	%d15, 0
	movh.a	%a15, hi:Dcm_SrvOpstatus_u8
	st.b	[%a15] lo:Dcm_SrvOpstatus_u8, %d15
	.loc 1 84 0
	st.b	[%a14] lo:Dcm_stRmbaOpstatus_u8, %d15
.LBE55:
.LBE54:
	.loc 1 770 0
	mov	%d2, 0
	ret
.LVL32:
.L56:
.LBB57:
.LBB52:
.LBB50:
.LBB48:
	.loc 1 678 0
	mov	%d15, 1
	st.b	[%a14] lo:Dcm_stRmbaOpstatus_u8, %d15
	.loc 1 679 0
	mov	%d15, 0
	st.b	[%a15]0, %d15
.LVL33:
	.loc 1 680 0
	mov	%d2, 10
.LVL34:
	ret
.LVL35:
.L55:
	.loc 1 669 0
	mov.a	%a3, %d15
	.loc 1 672 0
	st.b	[%a12] lo:Dcm_SrvOpstatus_u8, %d2
	.loc 1 669 0
	ld.w	%d15, [%a3] lo:Dcm_nrReadMemoryLength_u32
	.loc 1 673 0
	st.b	[%a14] lo:Dcm_stRmbaOpstatus_u8, %d2
	.loc 1 669 0
	st.w	[%a13] 12, %d15
	.loc 1 674 0
	st.b	[%a15]0, %d2
	ret
.LVL36:
.L53:
.LBE48:
.LBE50:
.LBE52:
.LBE57:
.LBB58:
.LBB29:
	.loc 1 333 0
	movh	%d10, hi:Dcm_dataMemoryAddress_u32
	movh	%d15, hi:Dcm_nrReadMemoryLength_u32
.LVL37:
	mov.a	%a2, %d10
	mov.a	%a3, %d15
	ld.w	%d4, [%a2] lo:Dcm_dataMemoryAddress_u32
	ld.w	%d5, [%a3] lo:Dcm_nrReadMemoryLength_u32
	mov	%d6, 0
	call	DcmAppl_DcmGetPermissionForMemoryAccess_u8
.LVL38:
	.loc 1 335 0
	jnz	%d2, .L18
.LVL39:
.LBB20:
.LBB21:
	.loc 1 231 0
	st.b	[%a15]0, %d2
.LVL40:
	.loc 1 235 0
	call	Dcm_DsldGetActiveSecurityMask_u32
.LVL41:
	and	%d2, %d11
	jnz	%d2, .L59
	.loc 1 284 0
	mov	%d15, 51
	st.b	[%a15]0, %d15
.LVL42:
	j	.L20
.LVL43:
.L57:
.LBE21:
.LBE20:
.LBE29:
.LBE58:
.LBB59:
.LBB53:
.LBB51:
.LBB49:
	.loc 1 685 0
	mov	%d15, 0
	.loc 1 684 0
	st.b	[%a14] lo:Dcm_stRmbaOpstatus_u8, %d2
	.loc 1 685 0
	st.b	[%a15]0, %d15
.LVL44:
	.loc 1 686 0
	mov	%d2, 12
.LVL45:
	ret
.LVL46:
.L58:
.LBE49:
.LBE51:
.LBE53:
.LBE59:
.LBB60:
.LBB56:
	.loc 1 75 0
	movh.a	%a15, hi:Dcm_idxDspRmba_u16
	ld.hu	%d15, [%a15] lo:Dcm_idxDspRmba_u16
	movh.a	%a15, hi:Dcm_RMBAConfig_cast
	mov.d	%d3, %a15
	mov.a	%a4, 0
.LVL47:
	addi	%d2, %d3, lo:Dcm_RMBAConfig_cast
	madd	%d3, %d2, %d15, 24
	mov.a	%a5, 0
.LVL48:
	mov.a	%a15, %d3
	ld.bu	%d5, [%a15] 20
	movh.a	%a15, hi:Dcm_dataMemoryAddress_u32
	ld.w	%d6, [%a15] lo:Dcm_dataMemoryAddress_u32
	movh.a	%a15, hi:Dcm_nrReadMemoryLength_u32
	ld.w	%d7, [%a15] lo:Dcm_nrReadMemoryLength_u32
	call	DcmAppl_Dcm_ReadMemory
.LVL49:
	j	.L7
.LVL50:
.L59:
.LBE56:
.LBE60:
.LBB61:
.LBB30:
.LBB25:
.LBB22:
	.loc 1 238 0
	ld.a	%a2, [%a14] 16
	.loc 1 241 0
	mov.aa	%a4, %a15
	.loc 1 238 0
	jz.a	%a2, .L22
.LVL51:
	.loc 1 241 0
	mov.a	%a3, %d10
	mov	%d6, 0
	ld.w	%d4, [%a3] lo:Dcm_dataMemoryAddress_u32
	mov.a	%a3, %d15
	ld.w	%d5, [%a3] lo:Dcm_nrReadMemoryLength_u32
	calli	%a2
.LVL52:
.L23:
	.loc 1 254 0
	jz	%d2, .L24
	.loc 1 256 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L20
	.loc 1 258 0
	mov	%d15, 34
	st.b	[%a15]0, %d15
	j	.L20
.L24:
.LBE22:
.LBE25:
	.loc 1 356 0
	mov.a	%a2, %d15
.LBB26:
.LBB23:
	.loc 1 264 0
	st.b	[%a15]0, %d2
.LBE23:
.LBE26:
	.loc 1 356 0
	ld.w	%d7, [%a2] lo:Dcm_nrReadMemoryLength_u32
	ld.w	%d2, [%a13] 20
.LVL53:
	jge.u	%d2, %d7, .L60
	.loc 1 362 0
	mov	%d2, 20
	st.b	[%a15]0, %d2
.LBE30:
.LBE61:
	.loc 1 819 0
	ld.bu	%d2, [%a12] lo:Dcm_SrvOpstatus_u8
	jne	%d2, 5, .L30
	movh.a	%a2, hi:Dcm_nrReadMemoryLength_u32
	ld.w	%d7, [%a2] lo:Dcm_nrReadMemoryLength_u32
	j	.L27
.L60:
.LBB62:
.LBB31:
	.loc 1 358 0
	mov	%d2, 5
	st.b	[%a12] lo:Dcm_SrvOpstatus_u8, %d2
	j	.L27
.LVL54:
.L22:
.LBB27:
.LBB24:
	.loc 1 248 0
	mov.a	%a2, %d10
	mov.a	%a3, %d15
	ld.w	%d4, [%a2] lo:Dcm_dataMemoryAddress_u32
	ld.w	%d5, [%a3] lo:Dcm_nrReadMemoryLength_u32
	mov	%d6, 0
	call	DcmAppl_UserMemoryRangeModeRuleService
.LVL55:
	j	.L23
.LVL56:
.L54:
.LBE24:
.LBE27:
.LBE31:
.LBE62:
.LBB63:
.LBB42:
.LBB39:
.LBB37:
	.loc 1 135 0
	movh	%d9, hi:Dcm_idxDspRmba_u16
.LVL57:
	mov.a	%a2, %d9
.LBE37:
.LBE39:
	.loc 1 185 0
	mov	%d15, 4
.LBB40:
.LBB38:
	.loc 1 135 0
	st.h	[%a2] lo:Dcm_idxDspRmba_u16, %d3
.LVL58:
.LBE38:
.LBE40:
	.loc 1 185 0
	st.b	[%a12] lo:Dcm_SrvOpstatus_u8, %d15
	j	.L15
.LBE42:
.LBE63:
.LFE30:
	.size	Dcm_DcmReadMemoryByAddress, .-Dcm_DcmReadMemoryByAddress
.section .bss.a1.Dcm_dataMemaddrsize_u8,"aw",@nobits
	.type	Dcm_dataMemaddrsize_u8, @object
	.size	Dcm_dataMemaddrsize_u8, 1
Dcm_dataMemaddrsize_u8:
	.zero	1
.section .bss.a1.Dcm_dataMemdatasize_u8,"aw",@nobits
	.type	Dcm_dataMemdatasize_u8, @object
	.size	Dcm_dataMemdatasize_u8, 1
Dcm_dataMemdatasize_u8:
	.zero	1
.section .bss.a1.Dcm_stRmbaOpstatus_u8,"aw",@nobits
	.type	Dcm_stRmbaOpstatus_u8, @object
	.size	Dcm_stRmbaOpstatus_u8, 1
Dcm_stRmbaOpstatus_u8:
	.zero	1
.section .bss.a2.Dcm_idxDspRmba_u16,"aw",@nobits
	.align 1
	.type	Dcm_idxDspRmba_u16, @object
	.size	Dcm_idxDspRmba_u16, 2
Dcm_idxDspRmba_u16:
	.zero	2
.section .bss.a4.Dcm_nrReadMemoryLength_u32,"aw",@nobits
	.align 2
	.type	Dcm_nrReadMemoryLength_u32, @object
	.size	Dcm_nrReadMemoryLength_u32, 4
Dcm_nrReadMemoryLength_u32:
	.zero	4
.section .bss.a4.Dcm_dataMemoryAddress_u32,"aw",@nobits
	.align 2
	.type	Dcm_dataMemoryAddress_u32, @object
	.size	Dcm_dataMemoryAddress_u32, 4
Dcm_dataMemoryAddress_u32:
	.zero	4
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
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.byte	0x4
	.uaword	.LCFI0-.LFB30
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE2:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\ComStack\\ComStack_Cfg.h"
	.file 5 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmCore_DslDsd_Pub.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Rmba_Pub.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\Dcm\\api\\DcmDspUds_Uds_Pub.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\Dsd\\Dcm_Dsd.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmCore\\DcmCoreDslDsd\\DcmCore_DslDsd_Prot.h"
	.file 11 "bsw\\Dcm\\src\\DcmDsp\\DcmDspUds\\DcmDspUds_Rmba_Prot.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\Dcm\\integration\\DcmAppl.h"
	.file 13 ".\\output\\inc/..\\..\\bsw\\Dcm\\Dcm_Lcfg_DslDsd.h"
	.file 14 ".\\output\\inc/..\\..\\bsw\\Dcm\\src\\DcmDsp\\DcmDspLib\\DcmDspUds_Memaddress_Calc_Prot.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x17df
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Dcm\\src\\DcmDsp\\DcmDspUds\\DcmDspUds_Rmba.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xd0
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
	.uaword	0x1d8
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
	.uaword	0x204
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
	.uaword	0x240
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
	.uaword	0x1d8
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
	.uaword	0x1cb
	.uleb128 0x3
	.string	"PduIdType"
	.byte	0x4
	.byte	0x2c
	.uaword	0x1f6
	.uleb128 0x3
	.string	"PduLengthType"
	.byte	0x4
	.byte	0x30
	.uaword	0x1f6
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1cb
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.uaword	0x1cb
	.uleb128 0x6
	.string	"Dcm_ConfirmationStatusType"
	.byte	0x5
	.uahalf	0x107
	.uaword	0x1cb
	.uleb128 0x6
	.string	"Dcm_NegativeResponseCodeType"
	.byte	0x5
	.uahalf	0x118
	.uaword	0x1cb
	.uleb128 0x6
	.string	"Dcm_OpStatusType"
	.byte	0x5
	.uahalf	0x11a
	.uaword	0x1cb
	.uleb128 0x4
	.byte	0x4
	.uaword	0x1f6
	.uleb128 0x4
	.byte	0x4
	.uaword	0x323
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2fb
	.uleb128 0x3
	.string	"Dcm_SrvOpStatusType"
	.byte	0x6
	.byte	0x3e
	.uaword	0x1cb
	.uleb128 0x6
	.string	"Dcm_MsgItemType"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x1cb
	.uleb128 0x6
	.string	"Dcm_MsgType"
	.byte	0x6
	.uahalf	0x108
	.uaword	0x3ba
	.uleb128 0x4
	.byte	0x4
	.uaword	0x38e
	.uleb128 0x6
	.string	"Dcm_MsgLenType"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x232
	.uleb128 0x7
	.byte	0x4
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x42e
	.uleb128 0x8
	.string	"reqType"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"suppressPosResponse"
	.byte	0x6
	.uahalf	0x122
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"sourceofRequest"
	.byte	0x6
	.uahalf	0x126
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x6
	.string	"Dcm_MsgAddInfoType"
	.byte	0x6
	.uahalf	0x127
	.uaword	0x3d7
	.uleb128 0x6
	.string	"Dcm_IdContextType"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0x1cb
	.uleb128 0x7
	.byte	0x1c
	.byte	0x6
	.uahalf	0x13c
	.uaword	0x519
	.uleb128 0x8
	.string	"resData"
	.byte	0x6
	.uahalf	0x143
	.uaword	0x3a6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"reqData"
	.byte	0x6
	.uahalf	0x149
	.uaword	0x3a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"msgAddInfo"
	.byte	0x6
	.uahalf	0x14f
	.uaword	0x42e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"resDataLen"
	.byte	0x6
	.uahalf	0x155
	.uaword	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"reqDataLen"
	.byte	0x6
	.uahalf	0x15a
	.uaword	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"resMaxDataLen"
	.byte	0x6
	.uahalf	0x16c
	.uaword	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"idContext"
	.byte	0x6
	.uahalf	0x177
	.uaword	0x449
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"dcmRxPduId"
	.byte	0x6
	.uahalf	0x186
	.uaword	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1a
	.byte	0
	.uleb128 0x6
	.string	"Dcm_MsgContextType"
	.byte	0x6
	.uahalf	0x188
	.uaword	0x463
	.uleb128 0x6
	.string	"Dcm_ConfirmationApiType"
	.byte	0x6
	.uahalf	0x2e1
	.uaword	0x554
	.uleb128 0x4
	.byte	0x4
	.uaword	0x55a
	.uleb128 0x9
	.byte	0x1
	.uaword	0x575
	.uleb128 0xa
	.uaword	0x449
	.uleb128 0xa
	.uaword	0x2c3
	.uleb128 0xa
	.uaword	0x1f6
	.uleb128 0xa
	.uaword	0x300
	.byte	0
	.uleb128 0x7
	.byte	0x14
	.byte	0x6
	.uahalf	0x2ee
	.uaword	0x616
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x2f0
	.uaword	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x2f1
	.uaword	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"adrUserSubServiceModeRule_pfct"
	.byte	0x6
	.uahalf	0x2f5
	.uaword	0x630
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"SubFunc_fp"
	.byte	0x6
	.uahalf	0x2f6
	.uaword	0x656
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"subservice_id_u8"
	.byte	0x6
	.uahalf	0x2f7
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"isDspRDTCSubFnc_b"
	.byte	0x6
	.uahalf	0x2f8
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2ad
	.uaword	0x630
	.uleb128 0xa
	.uaword	0x367
	.uleb128 0xa
	.uaword	0x1cb
	.uleb128 0xa
	.uaword	0x1cb
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x616
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2ad
	.uaword	0x650
	.uleb128 0xa
	.uaword	0x373
	.uleb128 0xa
	.uaword	0x650
	.uleb128 0xa
	.uaword	0x367
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x519
	.uleb128 0x4
	.byte	0x4
	.uaword	0x636
	.uleb128 0x6
	.string	"Dcm_Dsld_SubServiceType"
	.byte	0x6
	.uahalf	0x2f9
	.uaword	0x575
	.uleb128 0x7
	.byte	0x24
	.byte	0x6
	.uahalf	0x30a
	.uaword	0x7ad
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x6
	.uahalf	0x30c
	.uaword	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x6
	.uahalf	0x30d
	.uaword	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"service_handler_fp"
	.byte	0x6
	.uahalf	0x312
	.uaword	0x656
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"Service_init_fp"
	.byte	0x6
	.uahalf	0x313
	.uaword	0x7af
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"sid_u8"
	.byte	0x6
	.uahalf	0x314
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"subfunction_exist_b"
	.byte	0x6
	.uahalf	0x315
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.string	"servicelocator_b"
	.byte	0x6
	.uahalf	0x316
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.string	"ptr_subservice_table_pcs"
	.byte	0x6
	.uahalf	0x317
	.uaword	0x7b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"num_sf_u8"
	.byte	0x6
	.uahalf	0x318
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"adrUserServiceModeRule_pfct"
	.byte	0x6
	.uahalf	0x319
	.uaword	0x7d5
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"Dcm_ConfirmationService"
	.byte	0x6
	.uahalf	0x31b
	.uaword	0x534
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7ad
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7bb
	.uleb128 0x5
	.uaword	0x65c
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2ad
	.uaword	0x7d5
	.uleb128 0xa
	.uaword	0x367
	.uleb128 0xa
	.uaword	0x1cb
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7c0
	.uleb128 0x6
	.string	"Dcm_Dsld_ServiceType"
	.byte	0x6
	.uahalf	0x31c
	.uaword	0x67c
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7fe
	.uleb128 0x5
	.uaword	0x7db
	.uleb128 0x4
	.byte	0x4
	.uaword	0x232
	.uleb128 0xe
	.byte	0x1
	.byte	0x7
	.byte	0x10
	.uaword	0x897
	.uleb128 0xf
	.string	"DCM_RMBA_SUPPORT_OK"
	.sleb128 0
	.uleb128 0xf
	.string	"DCM_RMBA_SUPPORT_SESSION_VIOLATED"
	.sleb128 1
	.uleb128 0xf
	.string	"DCM_RMBA_SUPPORT_SECURITY_VIOLATED"
	.sleb128 2
	.uleb128 0xf
	.string	"DCM_RMBA_SUPPORT_CONDITION_VIOLATED"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"Dcm_RmbaSupportRet_t"
	.byte	0x7
	.byte	0x15
	.uaword	0x809
	.uleb128 0xe
	.byte	0x1
	.byte	0x8
	.byte	0xd0
	.uaword	0x8fb
	.uleb128 0xf
	.string	"DCM_SUPPORT_READ"
	.sleb128 0
	.uleb128 0xf
	.string	"DCM_SUPPORT_WRITE"
	.sleb128 1
	.uleb128 0xf
	.string	"DCM_SUPPORT_IOCONTROL"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"Dcm_Direction_t"
	.byte	0x8
	.byte	0xd4
	.uaword	0x8b3
	.uleb128 0x10
	.byte	0x1
	.byte	0x8
	.uahalf	0x1c5
	.uaword	0x97f
	.uleb128 0xf
	.string	"DCM_READ_OK"
	.sleb128 0
	.uleb128 0xf
	.string	"DCM_READ_FAILED"
	.sleb128 1
	.uleb128 0xf
	.string	"DCM_READ_PENDING"
	.sleb128 2
	.uleb128 0xf
	.string	"DCM_READ_FORCE_RCRRP"
	.sleb128 3
	.uleb128 0xf
	.string	"DCM_READ_NOT_AVAILABLE"
	.sleb128 4
	.byte	0
	.uleb128 0x6
	.string	"Dcm_ReadMemoryRet_t"
	.byte	0x8
	.uahalf	0x1cb
	.uaword	0x912
	.uleb128 0x6
	.string	"Dcm_ReturnReadMemoryType"
	.byte	0x8
	.uahalf	0x1cd
	.uaword	0x97f
	.uleb128 0xe
	.byte	0x1
	.byte	0x9
	.byte	0x16
	.uaword	0xa2a
	.uleb128 0xf
	.string	"DSD_IDLE"
	.sleb128 0
	.uleb128 0xf
	.string	"DSD_VERIFY_DIAGNOSTIC_DATA"
	.sleb128 1
	.uleb128 0xf
	.string	"DSD_CALL_SERVICE"
	.sleb128 2
	.uleb128 0xf
	.string	"DSD_WAITFORTXCONF"
	.sleb128 3
	.uleb128 0xf
	.string	"DSD_SENDTXCONF_APPL"
	.sleb128 4
	.byte	0
	.uleb128 0x3
	.string	"Dcm_DsdStatesType_ten"
	.byte	0x9
	.byte	0x1c
	.uaword	0x9bc
	.uleb128 0x10
	.byte	0x1
	.byte	0xa
	.uahalf	0x17f
	.uaword	0xa81
	.uleb128 0xf
	.string	"DCM_DSLD_POS_RESPONSE"
	.sleb128 0
	.uleb128 0xf
	.string	"DCM_DSLD_NEG_RESPONSE"
	.sleb128 1
	.byte	0
	.uleb128 0x6
	.string	"Dcm_DsldResponseType_ten"
	.byte	0xa
	.uahalf	0x182
	.uaword	0xa47
	.uleb128 0x7
	.byte	0x30
	.byte	0xa
	.uahalf	0x18c
	.uaword	0xdbd
	.uleb128 0x8
	.string	"dataActiveRxPduId_u8"
	.byte	0xa
	.uahalf	0x191
	.uaword	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"nrActiveConn_u8"
	.byte	0xa
	.uahalf	0x192
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x8
	.string	"idxActiveSession_u8"
	.byte	0xa
	.uahalf	0x193
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x8
	.string	"flgMonitorP3timer_b"
	.byte	0xa
	.uahalf	0x194
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"idxCurrentProtocol_u8"
	.byte	0xa
	.uahalf	0x195
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x8
	.string	"dataActiveTxPduId_u8"
	.byte	0xa
	.uahalf	0x196
	.uaword	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x8
	.string	"datActiveSrvtable_u8"
	.byte	0xa
	.uahalf	0x197
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"flgCommActive_b"
	.byte	0xa
	.uahalf	0x198
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x8
	.string	"cntrWaitpendCounter_u8"
	.byte	0xa
	.uahalf	0x199
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x8
	.string	"stResponseType_en"
	.byte	0xa
	.uahalf	0x19a
	.uaword	0xa81
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x8
	.string	"idxActiveSecurity_u8"
	.byte	0xa
	.uahalf	0x19b
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"dataResult_u8"
	.byte	0xa
	.uahalf	0x19c
	.uaword	0x2ad
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x8
	.string	"idxService_u8"
	.byte	0xa
	.uahalf	0x19d
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x8
	.string	"dataResponseByDsd_b"
	.byte	0xa
	.uahalf	0x19e
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.uleb128 0x8
	.string	"dataSid_u8"
	.byte	0xa
	.uahalf	0x19f
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"flgPagedBufferTxOn_b"
	.byte	0xa
	.uahalf	0x1a4
	.uaword	0x27d
	.byte	0x2
	.byte	0x23
	.uleb128 0x11
	.uleb128 0x8
	.string	"dataNewRxPduId_u8"
	.byte	0xa
	.uahalf	0x1a7
	.uaword	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0x8
	.string	"dataRequestLength_u16"
	.byte	0xa
	.uahalf	0x1ac
	.uaword	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"dataOldtxPduId_u8"
	.byte	0xa
	.uahalf	0x1ad
	.uaword	0x2c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.uleb128 0x8
	.string	"dataCurrentPageRespLength_u32"
	.byte	0xa
	.uahalf	0x1af
	.uaword	0x3c0
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x8
	.string	"dataNewdataRequestLength_u16"
	.byte	0xa
	.uahalf	0x1b2
	.uaword	0x2d4
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x8
	.string	"adrActiveTxBuffer_tpu8"
	.byte	0xa
	.uahalf	0x1ba
	.uaword	0x3a6
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x8
	.string	"dataTimeoutMonitor_u32"
	.byte	0xa
	.uahalf	0x1bb
	.uaword	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x8
	.string	"dataPagedBufferTimeout_u32"
	.byte	0xa
	.uahalf	0x1c0
	.uaword	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x8
	.string	"PreviousSessionIndex"
	.byte	0xa
	.uahalf	0x1c2
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x6
	.string	"Dcm_DsldInternalStructureType_tst"
	.byte	0xa
	.uahalf	0x1c4
	.uaword	0xaa2
	.uleb128 0x11
	.byte	0x18
	.byte	0xb
	.byte	0x11
	.uaword	0xec1
	.uleb128 0x12
	.string	"dataReadMemoryRangeLow_u32"
	.byte	0xb
	.byte	0x13
	.uaword	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x12
	.string	"dataReadMemoryRangeHigh_u32"
	.byte	0xb
	.byte	0x14
	.uaword	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x12
	.string	"dataAllowedSecRead_u32"
	.byte	0xb
	.byte	0x15
	.uaword	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x12
	.string	"dataAllowedSessRead_u32"
	.byte	0xb
	.byte	0x16
	.uaword	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x12
	.string	"adrUserMemReadModeRule_pfct"
	.byte	0xb
	.byte	0x17
	.uaword	0xee0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x12
	.string	"dataMemoryValue_u8"
	.byte	0xb
	.byte	0x1b
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.byte	0
	.uleb128 0xc
	.byte	0x1
	.uaword	0x2ad
	.uaword	0xee0
	.uleb128 0xa
	.uaword	0x367
	.uleb128 0xa
	.uaword	0x232
	.uleb128 0xa
	.uaword	0x232
	.uleb128 0xa
	.uaword	0x8fb
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xec1
	.uleb128 0x3
	.string	"Dcm_RMBAConfig_tst"
	.byte	0xb
	.byte	0x1c
	.uaword	0xde7
	.uleb128 0x13
	.string	"Dcm_Prv_NormalRmbaReadMemory"
	.byte	0x1
	.uahalf	0x289
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uaword	0xf6d
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x28a
	.uaword	0x650
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x28b
	.uaword	0x367
	.uleb128 0x15
	.string	"dataReadReturnVal_en"
	.byte	0x1
	.uahalf	0x28d
	.uaword	0x97f
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x28e
	.uaword	0x2ad
	.byte	0
	.uleb128 0x17
	.string	"Dcm_Prv_RmbaTotalCheckLength"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.byte	0x3
	.uaword	0xfc6
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x1
	.byte	0x9f
	.uaword	0xfc6
	.uleb128 0x18
	.uaword	.LASF3
	.byte	0x1
	.byte	0xa0
	.uaword	0x367
	.uleb128 0x19
	.string	"dataRetGetIdxRMBA_u8"
	.byte	0x1
	.byte	0xa2
	.uaword	0x2ad
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0xfcc
	.uleb128 0x5
	.uaword	0x519
	.uleb128 0x1a
	.string	"Dcm_Prv_RmbaActiveSecurityLevel"
	.byte	0x1
	.byte	0xdf
	.byte	0x1
	.uaword	0x897
	.byte	0x3
	.uaword	0x1047
	.uleb128 0x18
	.uaword	.LASF5
	.byte	0x1
	.byte	0xe0
	.uaword	0x232
	.uleb128 0x18
	.uaword	.LASF6
	.byte	0x1
	.byte	0xe1
	.uaword	0x1047
	.uleb128 0x18
	.uaword	.LASF7
	.byte	0x1
	.byte	0xe2
	.uaword	0x367
	.uleb128 0x19
	.string	"dataModeChkRetval_u8"
	.byte	0x1
	.byte	0xe4
	.uaword	0x2ad
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x1
	.byte	0xe5
	.uaword	0x897
	.byte	0
	.uleb128 0x4
	.byte	0x4
	.uaword	0x104d
	.uleb128 0x5
	.uaword	0xee6
	.uleb128 0x1c
	.string	"Dcm_Prv_RmbaAccessCheck_u8"
	.byte	0x1
	.uahalf	0x135
	.byte	0x1
	.byte	0x1
	.uaword	0x10f6
	.uleb128 0x14
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x135
	.uaword	0x1f6
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x136
	.uaword	0xfc6
	.uleb128 0x14
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x137
	.uaword	0x367
	.uleb128 0x15
	.string	"dataSessionMask_u32"
	.byte	0x1
	.uahalf	0x13a
	.uaword	0x232
	.uleb128 0x16
	.uaword	.LASF5
	.byte	0x1
	.uahalf	0x13b
	.uaword	0x232
	.uleb128 0x16
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x1047
	.uleb128 0x16
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x897
	.uleb128 0x15
	.string	"stGetMemAccess_u8"
	.byte	0x1
	.uahalf	0x13e
	.uaword	0x2ad
	.byte	0
	.uleb128 0x13
	.string	"Dcm_Prv_RmbaReadMemory"
	.byte	0x1
	.uahalf	0x2cc
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uaword	0x1140
	.uleb128 0x14
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2cd
	.uaword	0x650
	.uleb128 0x14
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2ce
	.uaword	0x367
	.uleb128 0x16
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2d0
	.uaword	0x2ad
	.byte	0
	.uleb128 0x1a
	.string	"Dcm_Prv_GetAddressRangeIndex_u8"
	.byte	0x1
	.byte	0x72
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uaword	0x11e3
	.uleb128 0x1d
	.string	"dataMemAddr_u32"
	.byte	0x1
	.byte	0x72
	.uaword	0x232
	.uleb128 0x1d
	.string	"nrMemLength_u32"
	.byte	0x1
	.byte	0x73
	.uaword	0x232
	.uleb128 0x18
	.uaword	.LASF9
	.byte	0x1
	.byte	0x74
	.uaword	0x361
	.uleb128 0x19
	.string	"dataSize_u16"
	.byte	0x1
	.byte	0x77
	.uaword	0x1f6
	.uleb128 0x19
	.string	"idxLoop_u16"
	.byte	0x1
	.byte	0x78
	.uaword	0x1f6
	.uleb128 0x19
	.string	"dataRetVal_u8"
	.byte	0x1
	.byte	0x79
	.uaword	0x2ad
	.byte	0
	.uleb128 0x1e
	.byte	0x1
	.string	"Dcm_RMBAIni"
	.byte	0x1
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uleb128 0x1f
	.uaword	0x11e3
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1224
	.uleb128 0x20
	.uaword	.LVL0
	.uaword	0x1663
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"Dcm_DcmReadMemoryByAddress"
	.byte	0x1
	.uahalf	0x2f4
	.byte	0x1
	.uaword	0x2ad
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x14ed
	.uleb128 0x23
	.string	"OpStatus"
	.byte	0x1
	.uahalf	0x2f4
	.uaword	0x373
	.uaword	.LLST1
	.uleb128 0x24
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2f5
	.uaword	0x650
	.uaword	.LLST2
	.uleb128 0x24
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2f6
	.uaword	0x367
	.uaword	.LLST3
	.uleb128 0x25
	.uaword	.LASF4
	.byte	0x1
	.uahalf	0x2f8
	.uaword	0x2ad
	.uaword	.LLST4
	.uleb128 0x26
	.uaword	0x1052
	.uaword	.LBB18
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x31f
	.uaword	0x1387
	.uleb128 0x27
	.uaword	0x1083
	.uaword	.LLST5
	.uleb128 0x27
	.uaword	0x108f
	.uaword	.LLST6
	.uleb128 0x27
	.uaword	0x1077
	.uaword	.LLST7
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x29
	.uaword	0x109b
	.uaword	.LLST8
	.uleb128 0x29
	.uaword	0x10b7
	.uaword	.LLST9
	.uleb128 0x2a
	.uaword	0x10c3
	.uleb128 0x29
	.uaword	0x10cf
	.uaword	.LLST10
	.uleb128 0x29
	.uaword	0x10db
	.uaword	.LLST11
	.uleb128 0x26
	.uaword	0xfd1
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x157
	.uaword	0x136d
	.uleb128 0x2b
	.uaword	0x1009
	.uleb128 0x27
	.uaword	0x1014
	.uaword	.LLST12
	.uleb128 0x27
	.uaword	0xffe
	.uaword	.LLST13
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x30
	.uleb128 0x29
	.uaword	0x101f
	.uaword	.LLST14
	.uleb128 0x29
	.uaword	0x103b
	.uaword	.LLST15
	.uleb128 0x2c
	.uaword	.LVL41
	.uaword	0x16a7
	.uleb128 0x2d
	.uaword	.LVL52
	.uaword	0x135c
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x20
	.uaword	.LVL55
	.uaword	0x16d3
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL10
	.uaword	0x171d
	.uleb128 0x20
	.uaword	.LVL38
	.uaword	0x1748
	.uleb128 0x21
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0xf6d
	.uaword	.LBB33
	.uaword	.Ldebug_ranges0+0x58
	.byte	0x1
	.uahalf	0x313
	.uaword	0x1445
	.uleb128 0x27
	.uaword	0xf93
	.uaword	.LLST16
	.uleb128 0x27
	.uaword	0xf93
	.uaword	.LLST16
	.uleb128 0x27
	.uaword	0xf9e
	.uaword	.LLST18
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x58
	.uleb128 0x2a
	.uaword	0xfa9
	.uleb128 0x2e
	.uaword	0x1140
	.uaword	.LBB35
	.uaword	.Ldebug_ranges0+0x78
	.byte	0x1
	.byte	0xb2
	.uaword	0x1419
	.uleb128 0x27
	.uaword	0x119b
	.uaword	.LLST19
	.uleb128 0x27
	.uaword	0x1184
	.uaword	.LLST20
	.uleb128 0x27
	.uaword	0x116d
	.uaword	.LLST21
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x78
	.uleb128 0x29
	.uaword	0x11a6
	.uaword	.LLST22
	.uleb128 0x29
	.uaword	0x11ba
	.uaword	.LLST23
	.uleb128 0x29
	.uaword	0x11cd
	.uaword	.LLST24
	.uleb128 0x2c
	.uaword	.LVL21
	.uaword	0x1791
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.LVL18
	.uaword	0x17ba
	.uaword	0x1430
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_dataMemoryAddress_u32
	.byte	0
	.uleb128 0x20
	.uaword	.LVL19
	.uaword	0x17ba
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_nrReadMemoryLength_u32
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	0x10f6
	.uaword	.LBB44
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.uahalf	0x335
	.uaword	0x14c7
	.uleb128 0x27
	.uaword	0x1127
	.uaword	.LLST25
	.uleb128 0x27
	.uaword	0x111b
	.uaword	.LLST26
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x29
	.uaword	0x1133
	.uaword	.LLST27
	.uleb128 0x30
	.uaword	0xf00
	.uaword	.LBB46
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x1
	.uahalf	0x2db
	.uleb128 0x2b
	.uaword	0xf2b
	.uleb128 0x2b
	.uaword	0xf2b
	.uleb128 0x27
	.uaword	0xf37
	.uaword	.LLST25
	.uleb128 0x28
	.uaword	.Ldebug_ranges0+0x98
	.uleb128 0x29
	.uaword	0xf43
	.uaword	.LLST29
	.uleb128 0x29
	.uaword	0xf60
	.uaword	.LLST30
	.uleb128 0x20
	.uaword	.LVL29
	.uaword	0x1663
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x11e3
	.uaword	.LBB54
	.uaword	.Ldebug_ranges0+0xb8
	.byte	0x1
	.uahalf	0x301
	.uleb128 0x20
	.uaword	.LVL49
	.uaword	0x1663
	.uleb128 0x21
	.byte	0x1
	.byte	0x65
	.byte	0x1
	.byte	0x30
	.uleb128 0x21
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x31
	.string	"Dcm_dataMemoryAddress_u32"
	.byte	0x1
	.byte	0x27
	.uaword	0x232
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_dataMemoryAddress_u32
	.uleb128 0x31
	.string	"Dcm_nrReadMemoryLength_u32"
	.byte	0x1
	.byte	0x28
	.uaword	0x232
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_nrReadMemoryLength_u32
	.uleb128 0x31
	.string	"Dcm_idxDspRmba_u16"
	.byte	0x1
	.byte	0x2d
	.uaword	0x1f6
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_idxDspRmba_u16
	.uleb128 0x31
	.string	"Dcm_stRmbaOpstatus_u8"
	.byte	0x1
	.byte	0x33
	.uaword	0x348
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_stRmbaOpstatus_u8
	.uleb128 0x31
	.string	"Dcm_dataMemdatasize_u8"
	.byte	0x1
	.byte	0x34
	.uaword	0x1cb
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_dataMemdatasize_u8
	.uleb128 0x31
	.string	"Dcm_dataMemaddrsize_u8"
	.byte	0x1
	.byte	0x35
	.uaword	0x1cb
	.byte	0x5
	.byte	0x3
	.uaword	Dcm_dataMemaddrsize_u8
	.uleb128 0x32
	.string	"stDsdState_en"
	.byte	0x9
	.byte	0x25
	.uaword	0xa2a
	.byte	0x1
	.byte	0x1
	.uleb128 0x32
	.string	"Dcm_SrvOpstatus_u8"
	.byte	0xa
	.byte	0xb0
	.uaword	0x373
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"Dcm_DsldGlobal_st"
	.byte	0xa
	.uahalf	0x287
	.uaword	0xdbd
	.byte	0x1
	.byte	0x1
	.uleb128 0x33
	.string	"Dcm_DsldSrvTable_pcst"
	.byte	0xa
	.uahalf	0x2ad
	.uaword	0x7f8
	.byte	0x1
	.byte	0x1
	.uleb128 0x34
	.uaword	0xee6
	.uaword	0x1641
	.uleb128 0x35
	.byte	0
	.uleb128 0x32
	.string	"Dcm_RMBAConfig_cast"
	.byte	0xb
	.byte	0x1f
	.uaword	0x165e
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.uaword	0x1636
	.uleb128 0x36
	.byte	0x1
	.string	"DcmAppl_Dcm_ReadMemory"
	.byte	0xc
	.byte	0xd3
	.byte	0x1
	.uaword	0x99b
	.byte	0x1
	.uaword	0x16a7
	.uleb128 0xa
	.uaword	0x348
	.uleb128 0xa
	.uaword	0x1cb
	.uleb128 0xa
	.uaword	0x232
	.uleb128 0xa
	.uaword	0x232
	.uleb128 0xa
	.uaword	0x2e9
	.uleb128 0xa
	.uaword	0x367
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Dcm_DsldGetActiveSecurityMask_u32"
	.byte	0xa
	.byte	0xca
	.byte	0x1
	.uaword	0x232
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"DcmAppl_UserMemoryRangeModeRuleService"
	.byte	0xd
	.byte	0x30
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uaword	0x171d
	.uleb128 0xa
	.uaword	0x367
	.uleb128 0xa
	.uaword	0x232
	.uleb128 0xa
	.uaword	0x232
	.uleb128 0xa
	.uaword	0x8fb
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Dcm_DsldGetActiveSessionMask_u32"
	.byte	0xa
	.byte	0xcb
	.byte	0x1
	.uaword	0x232
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"DcmAppl_DcmGetPermissionForMemoryAccess_u8"
	.byte	0xc
	.byte	0xca
	.byte	0x1
	.uaword	0x2ad
	.byte	0x1
	.uaword	0x1791
	.uleb128 0xa
	.uaword	0x232
	.uleb128 0xa
	.uaword	0x232
	.uleb128 0xa
	.uaword	0x8fb
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"Dcm_RmbacalculateTableSize_u16"
	.byte	0xb
	.byte	0x24
	.byte	0x1
	.uaword	0x1f6
	.byte	0x1
	.uleb128 0x38
	.byte	0x1
	.string	"Dcm_GetMemoryInfo"
	.byte	0xe
	.byte	0x53
	.byte	0x1
	.byte	0x1
	.uleb128 0xa
	.uaword	0x1cb
	.uleb128 0xa
	.uaword	0x36d
	.uleb128 0xa
	.uaword	0x803
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
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x13
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0xd
	.byte	0
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.byte	0
	.byte	0
	.uleb128 0x16
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
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.byte	0
	.byte	0
	.uleb128 0x1e
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0x30
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
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uaword	.LFB30
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE30
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL2
	.uaword	.LVL13
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LVL30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL31
	.uaword	.LVL46
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL49-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL49-1
	.uaword	.LFE30
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL14
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL31
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL47
	.uaword	.LFE30
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL3
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL13
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL17
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL48
	.uaword	.LVL50
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x65
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL51
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL52-1
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL54
	.uaword	.LVL55-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55-1
	.uaword	.LFE30
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL4
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL46
	.uaword	.LFE30
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL6
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL36
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL50
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL6
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL36
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL51
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL52-1
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL54
	.uaword	.LVL55-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55-1
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x5
	.byte	0x3
	.uaword	Dcm_idxDspRmba_u16
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x8e
	.sleb128 12
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x8e
	.sleb128 12
	.uaword	.LVL50
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x8e
	.sleb128 12
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL9
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL36
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL50
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL6
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL38
	.uaword	.LVL41-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL39
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL51
	.uaword	.LVL52-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL52-1
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL54
	.uaword	.LVL55-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55-1
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL39
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL50
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL16
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL56
	.uaword	.LFE30
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL17
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL56
	.uaword	.LFE30
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL20
	.uaword	.LVL26
	.uahalf	0x6
	.byte	0x3
	.uaword	Dcm_idxDspRmba_u16
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LFE30
	.uahalf	0x6
	.byte	0x3
	.uaword	Dcm_idxDspRmba_u16
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL20
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL20
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL21
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL56
	.uaword	.LFE30
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL20
	.uaword	.LVL27
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL58
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL58
	.uaword	.LFE30
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL32
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL32
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL32
	.uaword	.LVL34
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x3a
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL44
	.uaword	.LVL46
	.uahalf	0x2
	.byte	0x3c
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
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB30
	.uaword	.LFE30-.LFB30
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB18
	.uaword	.LBE18
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB62
	.uaword	.LBE62
	.uaword	0
	.uaword	0
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	.LBB26
	.uaword	.LBE26
	.uaword	.LBB27
	.uaword	.LBE27
	.uaword	0
	.uaword	0
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	.LBB43
	.uaword	.LBE43
	.uaword	.LBB63
	.uaword	.LBE63
	.uaword	0
	.uaword	0
	.uaword	.LBB35
	.uaword	.LBE35
	.uaword	.LBB39
	.uaword	.LBE39
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	0
	.uaword	0
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB60
	.uaword	.LBE60
	.uaword	0
	.uaword	0
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB30
	.uaword	.LFE30
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"dataNegRespCode_u8"
.LASF1:
	.string	"allowed_security_b32"
.LASF5:
	.string	"dataSecurityMask_u32"
.LASF9:
	.string	"idxIndex_u16"
.LASF0:
	.string	"allowed_session_b32"
.LASF2:
	.string	"pMsgContext"
.LASF4:
	.string	"dataServRet_u8"
.LASF7:
	.string	"adrNegRespCode_pu8"
.LASF6:
	.string	"adrRmbaConfig_pcst"
.LASF8:
	.string	"dataRetVal_en"
	.extern	DcmAppl_UserMemoryRangeModeRuleService,STT_FUNC,0
	.extern	Dcm_DsldGetActiveSecurityMask_u32,STT_FUNC,0
	.extern	DcmAppl_DcmGetPermissionForMemoryAccess_u8,STT_FUNC,0
	.extern	Dcm_RmbacalculateTableSize_u16,STT_FUNC,0
	.extern	Dcm_GetMemoryInfo,STT_FUNC,0
	.extern	Dcm_DsldGetActiveSessionMask_u32,STT_FUNC,0
	.extern	DcmAppl_Dcm_ReadMemory,STT_FUNC,0
	.extern	Dcm_RMBAConfig_cast,STT_OBJECT,-1
	.extern	Dcm_SrvOpstatus_u8,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
