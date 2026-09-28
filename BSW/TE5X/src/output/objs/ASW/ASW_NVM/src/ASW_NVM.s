	.file	"ASW_NVM.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.RE_ASW_NVM_func,"ax",@progbits
	.align 1
	.global	RE_ASW_NVM_func
	.type	RE_ASW_NVM_func, @function
RE_ASW_NVM_func:
.LFB36:
	.file 1 "ASW\\ASW_NVM\\src\\ASW_NVM.c"
	.loc 1 77 0
	ret
.LFE36:
	.size	RE_ASW_NVM_func, .-RE_ASW_NVM_func
.section .text.UpdatePIMWithValue,"ax",@progbits
	.align 1
	.global	UpdatePIMWithValue
	.type	UpdatePIMWithValue, @function
UpdatePIMWithValue:
.LFB37:
	.loc 1 308 0
.LVL0:
	.loc 1 310 0
	jz	%d4, .L2
	mov.d	%d15, %a4
	rsub	%d15
	and	%d15, %d15, 3
	min.u	%d15, %d15, %d4
	jge.u	%d4, 7, .L31
	mov	%d15, %d4
.L4:
	.loc 1 312 0
	mov.aa	%a15, %a4
	st.b	[%a15+]1, %d5
.LVL1:
	.loc 1 310 0
	mov	%d6, 1
	jeq	%d15, 1, .L6
	.loc 1 312 0
	st.b	[%a4] 1, %d5
.LVL2:
	.loc 1 313 0
	lea	%a15, [%a4] 2
.LVL3:
	.loc 1 310 0
	mov	%d6, 2
	jeq	%d15, 2, .L6
	.loc 1 312 0
	st.b	[%a4] 2, %d5
.LVL4:
	.loc 1 313 0
	lea	%a15, [%a4] 3
.LVL5:
	.loc 1 310 0
	mov	%d6, 3
	jeq	%d15, 3, .L6
	.loc 1 312 0
	st.b	[%a4] 3, %d5
.LVL6:
	.loc 1 313 0
	lea	%a15, [%a4] 4
.LVL7:
	.loc 1 310 0
	mov	%d6, 4
	jeq	%d15, 4, .L6
	.loc 1 312 0
	st.b	[%a4] 4, %d5
.LVL8:
	.loc 1 313 0
	lea	%a15, [%a4] 5
.LVL9:
	.loc 1 310 0
	mov	%d6, 5
	jne	%d15, 6, .L6
	.loc 1 312 0
	st.b	[%a4] 5, %d5
.LVL10:
	.loc 1 313 0
	lea	%a15, [%a4] 6
.LVL11:
	.loc 1 310 0
	mov	%d6, 6
.LVL12:
.L6:
	jeq	%d4, %d15, .L2
.LVL13:
.L5:
	sub	%d0, %d4, %d15
	addi	%d3, %d0, -4
	sh	%d3, -2
	addi	%d2, %d4, -1
	addi	%d7, %d3, 1
	sub	%d2, %d15
	sh	%d7, 2
	jlt.u	%d2, 3, .L8
	mov	%d2, 0
	insert	%d2, %d2, %d5, 0, 8
	insert	%d2, %d2, %d5, 8, 8
	insert	%d2, %d2, %d5, 16, 8
	addsc.a	%a4, %a4, %d15, 0
	insert	%d2, %d2, %d5, 24, 8
	ne	%d15, %d3, -1
	cmovn	%d3, %d15, 0
.L9:
	.loc 1 312 0 discriminator 3
	st.w	[%a4+]4, %d2
	jned	%d3, 0, .L9
	addsc.a	%a15, %a15, %d7, 0
	add	%d6, %d7
	jeq	%d0, %d7, .L2
.L8:
	.loc 1 312 0 is_stmt 0
	st.b	[%a15]0, %d5
	.loc 1 310 0 is_stmt 1
	add	%d15, %d6, 1
	jge.u	%d15, %d4, .L2
	.loc 1 312 0
	st.b	[%a15] 1, %d5
	.loc 1 310 0
	add	%d6, 2
	jge.u	%d6, %d4, .L2
	.loc 1 312 0
	st.b	[%a15] 2, %d5
	ret
.L2:
	ret
.LVL14:
.L31:
	.loc 1 310 0
	mov.aa	%a15, %a4
	mov	%d6, 0
	jz	%d15, .L5
	j	.L4
.LFE37:
	.size	UpdatePIMWithValue, .-UpdatePIMWithValue
.section .text.NvM_SwcIModifyNvBlock,"ax",@progbits
	.align 1
	.global	NvM_SwcIModifyNvBlock
	.type	NvM_SwcIModifyNvBlock, @function
NvM_SwcIModifyNvBlock:
.LFB38:
	.loc 1 330 0
.LVL15:
	.loc 1 333 0
	movh.a	%a12, hi:MDF_State.14446
	ld.bu	%d15, [%a12] lo:MDF_State.14446
	.loc 1 332 0
	mov	%d2, 1
	.loc 1 333 0
	jge.u	%d15, 7, .L33
	movh.a	%a15, hi:.L35
	lea	%a15, [%a15] lo:.L35
	addsc.a	%a15, %a15, %d15, 2
	ji	%a15
	.align 2
	.align 2
.L35:
	.code32
	j	.L34
	.code32
	j	.L46
	.code32
	j	.L37
	.code32
	j	.L38
	.code32
	j	.L39
	.code32
	j	.L40
	.code32
	j	.L41
.L41:
	.loc 1 367 0
	call	Fls_17_Dmu_GetJobResult
.LVL16:
	jnz	%d2, .L49
	.loc 1 368 0
	st.b	[%a12] lo:MDF_State.14446, %d2
.LVL17:
.L33:
	.loc 1 376 0
	ret
.LVL18:
.L46:
	.loc 1 333 0
	movh.a	%a3, hi:InvalidData
	movh.a	%a2, 44800
	lea	%a3, [%a3] lo:InvalidData
	lea	%a2, [%a2] 96
.LBB10:
.LBB11:
.LBB12:
.LBB13:
	.loc 1 396 0
	lea	%a15, 1399
.L36:
.LVL19:
	.loc 1 398 0
	ld.bu	%d15, [%a2+]1
.LVL20:
	st.b	[%a3+]1, %d15
.LVL21:
	.loc 1 396 0
	loop	%a15, .L36
	movh.a	%a3, hi:MngData
.LVL22:
	lea	%a3, [%a3] lo:MngData
	movh.a	%a2, 44800
.LVL23:
.LBE13:
.LBE12:
.LBE11:
.LBE10:
.LBB14:
.LBB15:
.LBB16:
.LBB17:
	lea	%a15, 95
.L42:
.LVL24:
	.loc 1 398 0
	ld.bu	%d15, [%a2+]1
.LVL25:
	st.b	[%a3+]1, %d15
.LVL26:
	.loc 1 396 0
	loop	%a15, .L42
.LBE17:
.LBE16:
.LBE15:
.LBE14:
	.loc 1 341 0
	mov	%d15, 2
	st.b	[%a12] lo:MDF_State.14446, %d15
	.loc 1 332 0
	mov	%d2, 1
	.loc 1 342 0
	ret
.LVL27:
.L37:
	.loc 1 344 0
	call	Fls_17_Dmu_GetJobResult
.LVL28:
	jz	%d2, .L50
.L49:
	.loc 1 332 0
	mov	%d2, 1
	ret
.LVL29:
.L38:
	.loc 1 351 0
	movh.a	%a15, hi:InvalidData
	lea	%a15, [%a15] lo:InvalidData
	addsc.a	%a15, %a15, %d4, 0
	mov	%d15, -54
	st.b	[%a15]0, %d15
	.loc 1 352 0
	mov	%d15, 5
	st.b	[%a12] lo:MDF_State.14446, %d15
	.loc 1 332 0
	mov	%d2, 1
	.loc 1 353 0
	ret
.L39:
	.loc 1 361 0
	call	Fls_17_Dmu_GetJobResult
.LVL30:
	jnz	%d2, .L49
	.loc 1 362 0
	movh.a	%a4, hi:InvalidData
	mov	%d4, 96
	lea	%a4, [%a4] lo:InvalidData
	mov	%d5, 1400
	call	Fls_17_Dmu_Write
.LVL31:
	.loc 1 363 0
	mov	%d15, 6
	st.b	[%a12] lo:MDF_State.14446, %d15
	.loc 1 332 0
	mov	%d2, 1
	ret
.LVL32:
.L40:
	.loc 1 355 0
	call	Fls_17_Dmu_GetJobResult
.LVL33:
	jnz	%d2, .L49
	.loc 1 356 0
	movh.a	%a4, hi:MngData
	mov	%d4, 0
	lea	%a4, [%a4] lo:MngData
	mov	%d5, 96
	call	Fls_17_Dmu_Write
.LVL34:
	.loc 1 357 0
	mov	%d15, 4
	st.b	[%a12] lo:MDF_State.14446, %d15
	.loc 1 332 0
	mov	%d2, 1
	ret
.LVL35:
.L34:
	.loc 1 336 0
	mov	%d15, 1
	st.b	[%a12] lo:MDF_State.14446, %d15
	.loc 1 332 0
	mov	%d2, 1
	.loc 1 337 0
	ret
.LVL36:
.L50:
	.loc 1 346 0
	mov	%d4, 0
	movh	%d5, 2
	.loc 1 347 0
	mov	%d15, 3
	.loc 1 346 0
	call	Fls_17_Dmu_Erase
.LVL37:
	.loc 1 347 0
	st.b	[%a12] lo:MDF_State.14446, %d15
	j	.L49
.LFE38:
	.size	NvM_SwcIModifyNvBlock, .-NvM_SwcIModifyNvBlock
.section .text.NvM_SwcICopyDataToRam,"ax",@progbits
	.align 1
	.global	NvM_SwcICopyDataToRam
	.type	NvM_SwcICopyDataToRam, @function
NvM_SwcICopyDataToRam:
.LFB39:
	.loc 1 390 0
.LVL38:
	.loc 1 390 0
	mov.d	%d15, %a5
.LVL39:
	.loc 1 392 0
	mov.d	%d2, %a4
	eq	%d3, %d15, 0
	or.eq	%d3, %d4, 0
	or.eq	%d3, %d2, 0
	.loc 1 394 0
	mov	%d2, 1
	.loc 1 392 0
	jnz	%d3, .L52
	mov.d	%d3, %a4
	mov.d	%d6, %a4
	add	%d3, 4
	ge.u	%d2, %d15, %d3
	add	%d5, %d15, 4
	or.ge.u	%d2, %d6, %d5
	ge.u	%d3, %d4, 10
	and	%d3, %d2
	mov.d	%d2, %a4
	or	%d2, %d15
	and	%d2, %d2, 3
	eq	%d2, %d2, 0
	and	%d2, %d3
	jz	%d2, .L53
	addi	%d2, %d4, -4
	sh	%d2, -2
	addi	%d3, %d2, 1
	ne	%d5, %d2, -1
	sh	%d3, 2
	mov.aa	%a2, %a5
	mov.aa	%a15, %a4
	sel	%d2, %d5, %d2, 0
.LVL40:
.L54:
.LBB20:
.LBB21:
	.loc 1 398 0
	ld.w	%d5, [%a2+]4
	st.w	[%a15+]4, %d5
.LVL41:
	jned	%d2, 0, .L54
	mov.a	%a2, %d15
	addsc.a	%a15, %a2, %d3, 0
	addsc.a	%a4, %a4, %d3, 0
	sub	%d15, %d4, %d3
.LVL42:
	jeq	%d4, %d3, .L59
.LVL43:
	ld.bu	%d2, [%a15]0
	st.b	[%a4]0, %d2
.LVL44:
	.loc 1 396 0
	jeq	%d15, 1, .L59
	.loc 1 398 0
	ld.bu	%d2, [%a15] 1
	st.b	[%a4] 1, %d2
.LVL45:
	.loc 1 396 0
	jeq	%d15, 2, .L59
	.loc 1 398 0
	ld.bu	%d15, [%a15] 2
.LVL46:
	st.b	[%a4] 2, %d15
.LVL47:
.L59:
.LBE21:
.LBE20:
	.loc 1 394 0
	mov	%d2, 0
.LVL48:
.L52:
	.loc 1 406 0
	ret
.LVL49:
.L53:
	add	%d4, %d15
.LVL50:
	nor	%d2, %d15, 0
	mov.a	%a2, %d4
	addsc.a	%a15, %a2, %d2, 0
.LVL51:
.L58:
.LBB23:
.LBB22:
	.loc 1 398 0
	mov.a	%a2, %d15
	add	%d15, 1
.LVL52:
	ld.bu	%d2, [%a2+]1
.LVL53:
	st.b	[%a4+]1, %d2
.LVL54:
	.loc 1 400 0
	loop	%a15, .L58
.LBE22:
.LBE23:
	.loc 1 394 0
	mov	%d2, 0
	j	.L52
.LFE39:
	.size	NvM_SwcICopyDataToRam, .-NvM_SwcICopyDataToRam
.section .bss.a1.MDF_State.14446,"aw",@nobits
	.type	MDF_State.14446, @object
	.size	MDF_State.14446, 1
MDF_State.14446:
	.zero	1
.section .bss.a1.MngData,"aw",@nobits
	.type	MngData, @object
	.size	MngData, 96
MngData:
	.zero	96
.section .bss.a1.InvalidData,"aw",@nobits
	.type	InvalidData, @object
	.size	InvalidData, 1400
InvalidData:
	.zero	1400
	.global	NvM_Test
.section .bss.a1.NvM_Test,"aw",@nobits
	.type	NvM_Test, @object
	.size	NvM_Test, 1
NvM_Test:
	.zero	1
	.global	status_NvM_test
.section .bss.a1.status_NvM_test,"aw",@nobits
	.type	status_NvM_test, @object
	.size	status_NvM_test, 1
status_NvM_test:
	.zero	1
	.global	CounterWriteBlock
.section .bss.a1.CounterWriteBlock,"aw",@nobits
	.type	CounterWriteBlock, @object
	.size	CounterWriteBlock, 1
CounterWriteBlock:
	.zero	1
	.global	TEST_DATA_NVM_NATIVE_1024_2
.section .bss.a1.TEST_DATA_NVM_NATIVE_1024_2,"aw",@nobits
	.type	TEST_DATA_NVM_NATIVE_1024_2, @object
	.size	TEST_DATA_NVM_NATIVE_1024_2, 1024
TEST_DATA_NVM_NATIVE_1024_2:
	.zero	1024
	.global	TEST_DATA_NVM_NATIVE_1024_1
.section .bss.a1.TEST_DATA_NVM_NATIVE_1024_1,"aw",@nobits
	.type	TEST_DATA_NVM_NATIVE_1024_1, @object
	.size	TEST_DATA_NVM_NATIVE_1024_1, 1024
TEST_DATA_NVM_NATIVE_1024_1:
	.zero	1024
	.global	Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_2
.section .rodata.a1.Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_2,"a",@progbits
	.type	Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_2, @object
	.size	Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_2, 1024
Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_2:
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.byte	2
	.global	Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_1
.section .rodata.a1.Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_1,"a",@progbits
	.type	Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_1, @object
	.size	Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_1, 1024
Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_1:
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
	.byte	51
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
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\ASW\\ASW_NVM\\api\\ASW_NVM.h"
	.file 5 ".\\output\\inc/..\\..\\main\\_MainModule\\CalibData\\MAIN_CalibData.h"
	.file 6 ".\\output\\inc/..\\..\\bsw\\MemIf\\api\\MemIf_Types.h"
	.file 7 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Fls_17_Dmu\\inc\\Fls_17_Dmu.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\Rba_FeeFs1\\src\\rba_FeeFs1_Prv.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x12ea
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\ASW_NVM\\src\\ASW_NVM.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x18
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
	.uaword	0x1a8
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1b9
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1cf
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
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x20e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x20e
	.uleb128 0x5
	.uaword	0x20e
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2bd
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x5
	.uaword	0x2c4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x2b2
	.uleb128 0x7
	.uaword	0x20e
	.uaword	0x2db
	.uleb128 0x8
	.uaword	0x202
	.uahalf	0x3ff
	.byte	0
	.uleb128 0x9
	.uaword	.LASF0
	.byte	0x1
	.byte	0x4
	.byte	0x1f
	.uaword	0x4ec
	.uleb128 0xa
	.string	"SWC_ZERO"
	.sleb128 0
	.uleb128 0xa
	.string	"ASW_WRITE_BLOCKNATIVE_1024_1"
	.sleb128 1
	.uleb128 0xa
	.string	"ASW_READ_BLOCKNATIVE_1024_1"
	.sleb128 2
	.uleb128 0xa
	.string	"ASW_WRITE_BLOCKNATIVE_1024_2"
	.sleb128 3
	.uleb128 0xa
	.string	"ASW_READ_BLOCKNATIVE_1024_2"
	.sleb128 4
	.uleb128 0xa
	.string	"ASW_WRITE_ALL_BLOCK_1024"
	.sleb128 5
	.uleb128 0xa
	.string	"ASW_READ_ALL_BLOCK_1024"
	.sleb128 6
	.uleb128 0xa
	.string	"ASW_CORRUPT_BLOCKNATIVE_1024_1"
	.sleb128 7
	.uleb128 0xa
	.string	"ASW_CORRUPT_BLOCKNATIVE_1024_2"
	.sleb128 8
	.uleb128 0xa
	.string	"ASW_WRITE_ALL_BLKS_REQ"
	.sleb128 9
	.uleb128 0xa
	.string	"SWITCH_PAGE"
	.sleb128 10
	.uleb128 0xa
	.string	"ERASE_BANK"
	.sleb128 11
	.uleb128 0xa
	.string	"ERASE_SECTOR_0"
	.sleb128 12
	.uleb128 0xa
	.string	"ERASE_SECTOR_1"
	.sleb128 13
	.uleb128 0xa
	.string	"ERASE_SECTOR_2"
	.sleb128 14
	.uleb128 0xa
	.string	"ERASE_SECTOR_3"
	.sleb128 15
	.uleb128 0xa
	.string	"ASW_FILL_SECTOR_WITH_FULL_DATA"
	.sleb128 16
	.uleb128 0xa
	.string	"ASW_WAIT_FOR_BLOCK_REQUEST_FINISHED"
	.sleb128 17
	.uleb128 0xa
	.string	"ASW_WRITE_BLOCK_AND_CALCULATE_TIME"
	.sleb128 18
	.uleb128 0xa
	.string	"ASW_READ_BLOCK_AND_CALCULATE_TIME"
	.sleb128 19
	.byte	0
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.byte	0x34
	.uaword	0x2db
	.uleb128 0xc
	.string	"NvM_SwcIModifyNvBlock_State_t"
	.byte	0x1
	.byte	0x4
	.byte	0x36
	.uaword	0x5a2
	.uleb128 0xa
	.string	"MDF_NONE"
	.sleb128 0
	.uleb128 0xa
	.string	"MDF_INIT_STATE"
	.sleb128 1
	.uleb128 0xa
	.string	"MDF_ERASE_BANK"
	.sleb128 2
	.uleb128 0xa
	.string	"MDF_MODIFY_DATA"
	.sleb128 3
	.uleb128 0xa
	.string	"MDF_UPDATE_DATA"
	.sleb128 4
	.uleb128 0xa
	.string	"MDF_UPDATE_MANANGMENT_INFO"
	.sleb128 5
	.uleb128 0xa
	.string	"MDF_UPDATE_COMPLETE"
	.sleb128 6
	.byte	0
	.uleb128 0x3
	.string	"MDF_State_t"
	.byte	0x4
	.byte	0x3e
	.uaword	0x4f7
	.uleb128 0xc
	.string	"eCalibIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x15
	.uaword	0x670
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
	.uleb128 0xd
	.byte	0x1
	.byte	0x5
	.byte	0x1f
	.uaword	0x6e8
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
	.uleb128 0xc
	.string	"eRcGainIndex"
	.byte	0x1
	.byte	0x5
	.byte	0x27
	.uaword	0x925
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
	.uleb128 0xd
	.byte	0x1
	.byte	0x6
	.byte	0x20
	.uaword	0x9aa
	.uleb128 0xa
	.string	"MEMIF_JOB_OK"
	.sleb128 0
	.uleb128 0xa
	.string	"MEMIF_JOB_FAILED"
	.sleb128 1
	.uleb128 0xa
	.string	"MEMIF_JOB_PENDING"
	.sleb128 2
	.uleb128 0xa
	.string	"MEMIF_JOB_CANCELED"
	.sleb128 3
	.uleb128 0xa
	.string	"MEMIF_BLOCK_INCONSISTENT"
	.sleb128 4
	.uleb128 0xa
	.string	"MEMIF_BLOCK_INVALID"
	.sleb128 5
	.byte	0
	.uleb128 0x3
	.string	"MemIf_JobResultType"
	.byte	0x6
	.byte	0x27
	.uaword	0x925
	.uleb128 0xe
	.string	"Fls_17_Dmu_AddressType"
	.byte	0x7
	.uahalf	0xa21
	.uaword	0x23a
	.uleb128 0xe
	.string	"Fls_17_Dmu_LengthType"
	.byte	0x7
	.uahalf	0xa25
	.uaword	0x23a
	.uleb128 0x5
	.uaword	0x2b7
	.uleb128 0xd
	.byte	0x1
	.byte	0x8
	.byte	0x9a
	.uaword	0xa51
	.uleb128 0xa
	.string	"NVM_RB_STATUS_UNINIT"
	.sleb128 0
	.uleb128 0xa
	.string	"NVM_RB_STATUS_IDLE"
	.sleb128 1
	.uleb128 0xa
	.string	"NVM_RB_STATUS_BUSY"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"NvM_Rb_StatusType"
	.byte	0x8
	.byte	0x9e
	.uaword	0xa07
	.uleb128 0xd
	.byte	0x1
	.byte	0x9
	.byte	0xa9
	.uaword	0xab7
	.uleb128 0xa
	.string	"FEE_INTERNAL_JOB"
	.sleb128 0
	.uleb128 0xa
	.string	"FEE_NVM_JOB"
	.sleb128 1
	.uleb128 0xa
	.string	"FEE_ADAPTER_JOB"
	.sleb128 2
	.uleb128 0xa
	.string	"FEE_QUEUE_SIZE"
	.sleb128 3
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x9
	.byte	0xdb
	.uaword	0xc11
	.uleb128 0xa
	.string	"FEE_ERASED_MARKER_ID_E"
	.sleb128 1
	.uleb128 0xa
	.string	"FEE_USED_MARKER_ID_E"
	.sleb128 2
	.uleb128 0xa
	.string	"FEE_FULL_MARKER_ID_E"
	.sleb128 3
	.uleb128 0xa
	.string	"FEE_ERASE_REQUEST_ID_E"
	.sleb128 4
	.uleb128 0xa
	.string	"FEE_START_MARKER_ID_E"
	.sleb128 5
	.uleb128 0xa
	.string	"FEE_CLONE_START_MARKER_ID_E"
	.sleb128 6
	.uleb128 0xa
	.string	"FEE_RESERVED_MARKER_ID1_E"
	.sleb128 7
	.uleb128 0xa
	.string	"FEE_RESERVED_MARKER_ID2_E"
	.sleb128 8
	.uleb128 0xa
	.string	"FEE_RESERVED_MARKER_ID3_E"
	.sleb128 9
	.uleb128 0xa
	.string	"FEE_RESERVED_MARKER_ID4_E"
	.sleb128 10
	.uleb128 0xa
	.string	"FEE_RESERVED_MARKER_ID5_E"
	.sleb128 11
	.uleb128 0xa
	.string	"FEE_ERASE_START_FLAG_ID_E"
	.sleb128 12
	.uleb128 0xa
	.string	"FEE_NUM_MARKER_E"
	.sleb128 13
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.byte	0x9
	.uahalf	0x116
	.uaword	0xce8
	.uleb128 0xa
	.string	"FEE_ORDER_PENDING_E"
	.sleb128 0
	.uleb128 0xa
	.string	"FEE_ORDER_FINISHED_E"
	.sleb128 1
	.uleb128 0xa
	.string	"FEE_BLOCK_INVALIDATED_E"
	.sleb128 2
	.uleb128 0xa
	.string	"FEE_ERROR_E"
	.sleb128 3
	.uleb128 0xa
	.string	"FEE_SECTORCHANGE_E"
	.sleb128 4
	.uleb128 0xa
	.string	"FEE_SECTORFULL_E"
	.sleb128 5
	.uleb128 0xa
	.string	"FEE_ABORTED_E"
	.sleb128 6
	.uleb128 0xa
	.string	"FEE_ERASE_SECTOR_E"
	.sleb128 7
	.uleb128 0xa
	.string	"FEE_SEARCH_ABORTED_E"
	.sleb128 8
	.uleb128 0xa
	.string	"FEE_NUM_RET_VAL_E"
	.sleb128 9
	.byte	0
	.uleb128 0x10
	.byte	0x10
	.byte	0x9
	.uahalf	0x14c
	.uaword	0xd84
	.uleb128 0x11
	.string	"BlockPersistentId_u16"
	.byte	0x9
	.uahalf	0x14e
	.uaword	0x21b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"Flags_u16"
	.byte	0x9
	.uahalf	0x14f
	.uaword	0x21b
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x11
	.string	"Length_u16"
	.byte	0x9
	.uahalf	0x150
	.uaword	0x21b
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x11
	.string	"JobEndNotification_pfn"
	.byte	0x9
	.uahalf	0x151
	.uaword	0xa02
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x11
	.string	"JobErrorNotification_pfn"
	.byte	0x9
	.uahalf	0x152
	.uaword	0xa02
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0xe
	.string	"Fee_BlockPropertiesType_tst"
	.byte	0x9
	.uahalf	0x153
	.uaword	0xce8
	.uleb128 0x12
	.byte	0x1
	.string	"NvM_SwcICopyDataToRam"
	.byte	0x1
	.uahalf	0x185
	.byte	0x1
	.uaword	0x20e
	.byte	0x1
	.uaword	0xe0d
	.uleb128 0x13
	.string	"dest_addr"
	.byte	0x1
	.uahalf	0x185
	.uaword	0x2ac
	.uleb128 0x13
	.string	"src_addr"
	.byte	0x1
	.uahalf	0x185
	.uaword	0x2ac
	.uleb128 0x13
	.string	"size"
	.byte	0x1
	.uahalf	0x185
	.uaword	0x23a
	.uleb128 0x14
	.string	"retVal"
	.byte	0x1
	.uahalf	0x187
	.uaword	0x20e
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"RE_ASW_NVM_func"
	.byte	0x1
	.byte	0x49
	.byte	0x1
	.uaword	.LFB36
	.uaword	.LFE36
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"UpdatePIMWithValue"
	.byte	0x1
	.uahalf	0x133
	.byte	0x1
	.uaword	.LFB37
	.uaword	.LFE37
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xe99
	.uleb128 0x17
	.string	"dst"
	.byte	0x1
	.uahalf	0x133
	.uaword	0x2ac
	.uaword	.LLST0
	.uleb128 0x18
	.string	"length"
	.byte	0x1
	.uahalf	0x133
	.uaword	0x23a
	.byte	0x1
	.byte	0x54
	.uleb128 0x18
	.string	"Value"
	.byte	0x1
	.uahalf	0x133
	.uaword	0x20e
	.byte	0x1
	.byte	0x55
	.uleb128 0x19
	.string	"Cnt"
	.byte	0x1
	.uahalf	0x135
	.uaword	0x23a
	.uaword	.LLST1
	.byte	0
	.uleb128 0x1a
	.byte	0x1
	.string	"NvM_SwcIModifyNvBlock"
	.byte	0x1
	.uahalf	0x149
	.byte	0x1
	.uaword	0x20e
	.uaword	.LFB38
	.uaword	.LFE38
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x104d
	.uleb128 0x17
	.string	"addr"
	.byte	0x1
	.uahalf	0x149
	.uaword	0x23a
	.uaword	.LLST2
	.uleb128 0x1b
	.string	"MDF_State"
	.byte	0x1
	.uahalf	0x14b
	.uaword	0x5a2
	.byte	0x5
	.byte	0x3
	.uaword	MDF_State.14446
	.uleb128 0x19
	.string	"ret_val"
	.byte	0x1
	.uahalf	0x14c
	.uaword	0x20e
	.uaword	.LLST3
	.uleb128 0x1c
	.uaword	0xda8
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x1
	.uahalf	0x153
	.uaword	0xf69
	.uleb128 0x1d
	.uaword	0xdf0
	.uleb128 0x1d
	.uaword	0xddf
	.uleb128 0x1d
	.uaword	0xdcd
	.uleb128 0x1e
	.uaword	.LBB11
	.uaword	.LBE11
	.uleb128 0x1f
	.uaword	0xdfd
	.uleb128 0x1e
	.uaword	.LBB12
	.uaword	.LBE12
	.uleb128 0x1d
	.uaword	0xdf0
	.uleb128 0x20
	.uaword	0xddf
	.uaword	.LLST4
	.uleb128 0x20
	.uaword	0xdcd
	.uaword	.LLST5
	.uleb128 0x1e
	.uaword	.LBB13
	.uaword	.LBE13
	.uleb128 0x1f
	.uaword	0xdfd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uaword	0xda8
	.uaword	.LBB14
	.uaword	.LBE14
	.byte	0x1
	.uahalf	0x154
	.uaword	0xfcc
	.uleb128 0x1d
	.uaword	0xdf0
	.uleb128 0x1d
	.uaword	0xddf
	.uleb128 0x1d
	.uaword	0xdcd
	.uleb128 0x1e
	.uaword	.LBB15
	.uaword	.LBE15
	.uleb128 0x1f
	.uaword	0xdfd
	.uleb128 0x1e
	.uaword	.LBB16
	.uaword	.LBE16
	.uleb128 0x1d
	.uaword	0xdf0
	.uleb128 0x20
	.uaword	0xddf
	.uaword	.LLST6
	.uleb128 0x20
	.uaword	0xdcd
	.uaword	.LLST7
	.uleb128 0x1e
	.uaword	.LBB17
	.uaword	.LBE17
	.uleb128 0x1f
	.uaword	0xdfd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
	.uaword	.LVL16
	.uaword	0x1269
	.uleb128 0x21
	.uaword	.LVL28
	.uaword	0x1269
	.uleb128 0x21
	.uaword	.LVL30
	.uaword	0x1269
	.uleb128 0x22
	.uaword	.LVL31
	.uaword	0x128c
	.uaword	0x100b
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0xa
	.uahalf	0x578
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	InvalidData
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.byte	0
	.uleb128 0x21
	.uaword	.LVL33
	.uaword	0x1269
	.uleb128 0x22
	.uaword	.LVL34
	.uaword	0x128c
	.uaword	0x1036
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x2
	.byte	0x8
	.byte	0x60
	.uleb128 0x23
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	MngData
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x24
	.uaword	.LVL37
	.uaword	0x12c6
	.uleb128 0x23
	.byte	0x1
	.byte	0x55
	.byte	0x3
	.byte	0x40
	.byte	0x3d
	.byte	0x24
	.uleb128 0x23
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0xda8
	.uaword	.LFB39
	.uaword	.LFE39
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x10b0
	.uleb128 0x20
	.uaword	0xdcd
	.uaword	.LLST8
	.uleb128 0x20
	.uaword	0xddf
	.uaword	.LLST9
	.uleb128 0x20
	.uaword	0xdf0
	.uaword	.LLST10
	.uleb128 0x26
	.uaword	0xdfd
	.byte	0x1
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x20
	.uaword	0xdf0
	.uaword	.LLST11
	.uleb128 0x20
	.uaword	0xddf
	.uaword	.LLST12
	.uleb128 0x20
	.uaword	0xdcd
	.uaword	.LLST13
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1f
	.uaword	0xdfd
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.string	"CorruptData"
	.byte	0x1
	.byte	0x1f
	.uaword	0x2b2
	.sleb128 -54
	.uleb128 0x7
	.uaword	0x20e
	.uaword	0x10d5
	.uleb128 0x8
	.uaword	0x202
	.uahalf	0x577
	.byte	0
	.uleb128 0x29
	.string	"InvalidData"
	.byte	0x1
	.byte	0x40
	.uaword	0x10c4
	.byte	0x5
	.byte	0x3
	.uaword	InvalidData
	.uleb128 0x7
	.uaword	0x20e
	.uaword	0x10fe
	.uleb128 0x2a
	.uaword	0x202
	.byte	0x5f
	.byte	0
	.uleb128 0x29
	.string	"MngData"
	.byte	0x1
	.byte	0x41
	.uaword	0x10ee
	.byte	0x5
	.byte	0x3
	.uaword	MngData
	.uleb128 0x2b
	.string	"Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_1"
	.byte	0x4
	.byte	0x45
	.uaword	0x114c
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_1
	.uleb128 0x5
	.uaword	0x2ca
	.uleb128 0x2b
	.string	"Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_2"
	.byte	0x4
	.byte	0x7b
	.uaword	0x118a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Rte_ROM_ASW_NVM_ASW_NVM_BlockNative_1024_2
	.uleb128 0x5
	.uaword	0x2ca
	.uleb128 0x7
	.uaword	0xd84
	.uaword	0x119f
	.uleb128 0x2a
	.uaword	0x202
	.byte	0x39
	.byte	0
	.uleb128 0x2c
	.string	"Fee_BlockProperties_st"
	.byte	0x9
	.uahalf	0x464
	.uaword	0x118f
	.byte	0x1
	.byte	0x1
	.uleb128 0x2b
	.string	"TEST_DATA_NVM_NATIVE_1024_1"
	.byte	0x1
	.byte	0x1d
	.uaword	0x2ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TEST_DATA_NVM_NATIVE_1024_1
	.uleb128 0x2b
	.string	"TEST_DATA_NVM_NATIVE_1024_2"
	.byte	0x1
	.byte	0x1e
	.uaword	0x2ca
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	TEST_DATA_NVM_NATIVE_1024_2
	.uleb128 0x2b
	.string	"CounterWriteBlock"
	.byte	0x1
	.byte	0x24
	.uaword	0x20e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	CounterWriteBlock
	.uleb128 0x2b
	.string	"status_NvM_test"
	.byte	0x1
	.byte	0x39
	.uaword	0xa51
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	status_NvM_test
	.uleb128 0x2b
	.string	"NvM_Test"
	.byte	0x1
	.byte	0x3a
	.uaword	0x4ec
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Test
	.uleb128 0x2d
	.byte	0x1
	.string	"Fls_17_Dmu_GetJobResult"
	.byte	0x7
	.uahalf	0xc11
	.byte	0x1
	.uaword	0x9aa
	.byte	0x1
	.uleb128 0x2e
	.byte	0x1
	.string	"Fls_17_Dmu_Write"
	.byte	0x7
	.uahalf	0xb4b
	.byte	0x1
	.uaword	0x296
	.byte	0x1
	.uaword	0x12bc
	.uleb128 0x2f
	.uaword	0x12bc
	.uleb128 0x2f
	.uaword	0x2bf
	.uleb128 0x2f
	.uaword	0x12c1
	.byte	0
	.uleb128 0x5
	.uaword	0x9c5
	.uleb128 0x5
	.uaword	0x9e4
	.uleb128 0x30
	.byte	0x1
	.string	"Fls_17_Dmu_Erase"
	.byte	0x7
	.uahalf	0xb2c
	.byte	0x1
	.uaword	0x296
	.byte	0x1
	.uleb128 0x2f
	.uaword	0x12bc
	.uleb128 0x2f
	.uaword	0x12c1
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
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x1c
	.uleb128 0x1d
	.byte	0x1
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x58
	.uleb128 0xb
	.uleb128 0x59
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x22
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
	.uleb128 0x23
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x24
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2b
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
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x3
	.byte	0x84
	.sleb128 3
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL6
	.uaword	.LVL7
	.uahalf	0x3
	.byte	0x84
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x3
	.byte	0x84
	.sleb128 5
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x3
	.byte	0x84
	.sleb128 6
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL14
	.uaword	.LFE37
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL3
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL7
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LFE37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL15
	.uaword	.LVL16-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL16-1
	.uaword	.LVL18
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL28-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL28-1
	.uaword	.LVL29
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL30-1
	.uaword	.LVL32
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL33-1
	.uaword	.LVL35
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36
	.uaword	.LFE38
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL18
	.uaword	.LFE38
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL19
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x3
	.byte	0x82
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL19
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL24
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x82
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL24
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL40
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LFE39
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL43
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL49
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL51
	.uaword	.LFE39
	.uahalf	0x1
	.byte	0x65
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL38
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL50
	.uaword	.LFE39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -2
	.byte	0x9f
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x8
	.byte	0x74
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x1c
	.byte	0x32
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LFE39
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x8f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x3
	.byte	0x8f
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LVL52
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LFE39
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x3
	.byte	0x84
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL47
	.uahalf	0x3
	.byte	0x84
	.sleb128 2
	.byte	0x9f
	.uaword	.LVL51
	.uaword	.LFE39
	.uahalf	0x1
	.byte	0x64
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
	.uaword	.LFB36
	.uaword	.LFE36-.LFB36
	.uaword	.LFB37
	.uaword	.LFE37-.LFB37
	.uaword	.LFB38
	.uaword	.LFE38-.LFB38
	.uaword	.LFB39
	.uaword	.LFE39-.LFB39
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB23
	.uaword	.LBE23
	.uaword	0
	.uaword	0
	.uaword	.LFB36
	.uaword	.LFE36
	.uaword	.LFB37
	.uaword	.LFE37
	.uaword	.LFB38
	.uaword	.LFE38
	.uaword	.LFB39
	.uaword	.LFE39
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"NvM_Test_t"
	.extern	Fls_17_Dmu_Erase,STT_FUNC,0
	.extern	Fls_17_Dmu_Write,STT_FUNC,0
	.extern	Fls_17_Dmu_GetJobResult,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
