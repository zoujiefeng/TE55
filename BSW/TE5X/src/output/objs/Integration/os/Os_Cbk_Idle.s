	.file	"Os_Cbk_Idle.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Os_Cbk_Idle,"ax",@progbits
	.align 1
	.global	Os_Cbk_Idle
	.type	Os_Cbk_Idle, @function
Os_Cbk_Idle:
.LFB19:
	.file 1 "Integration\\os\\Os_Cbk_Idle.c"
	.loc 1 66 0
.LBB2:
	.loc 1 69 0
#APP
	# 69 "Integration\os\Os_Cbk_Idle.c" 1
	mfcr %d15,0xfe1c
	# 0 "" 2
.LVL0:
#NO_APP
.LBE2:
	.loc 1 70 0
	movh.a	%a15, hi:Os_Task_Idle_Counter
	ld.w	%d2, [%a15] lo:Os_Task_Idle_Counter
	.loc 1 69 0
	extr.u	%d15, %d15, 0, 16
.LVL1:
	.loc 1 70 0
	add	%d2, 1
	st.w	[%a15] lo:Os_Task_Idle_Counter, %d2
	.loc 1 72 0
	jz	%d15, .L8
	.loc 1 98 0
	jeq	%d15, 1, .L9
	.loc 1 110 0
	jeq	%d15, 2, .L10
	.loc 1 137 0
	mov	%d2, 0
	.loc 1 123 0
	jeq	%d15, 3, .L11
	.loc 1 139 0
	ret
.L8:
	.loc 1 74 0
	mov	%d4, 0
	call	Os_ResetIdleElapsedTime
.LVL2:
	.loc 1 76 0
	movh.a	%a15, hi:Os_const_isrs+256
	lea	%a15, [%a15] lo:Os_const_isrs+256
	mov.aa	%a4, %a15
	call	Os_GetISRMaxStackUsage
.LVL3:
	movh.a	%a2, hi:MaxStack_CAN0SR0_ISR
	lea	%a2, [%a2] lo:MaxStack_CAN0SR0_ISR
	.loc 1 77 0
	lea	%a4, [%a15] 224
	.loc 1 76 0
	st.d	[%a2]0, %e2
	.loc 1 77 0
	call	Os_GetISRMaxStackUsage
.LVL4:
	movh.a	%a2, hi:MaxStack_CAN0SR1_ISR
	lea	%a2, [%a2] lo:MaxStack_CAN0SR1_ISR
	.loc 1 78 0
	lea	%a4, [%a15] 192
	.loc 1 77 0
	st.d	[%a2]0, %e2
	.loc 1 78 0
	call	Os_GetISRMaxStackUsage
.LVL5:
	movh.a	%a2, hi:MaxStack_CAN0SR2_ISR
	lea	%a2, [%a2] lo:MaxStack_CAN0SR2_ISR
	.loc 1 79 0
	lea	%a4, [%a15] 160
	.loc 1 78 0
	st.d	[%a2]0, %e2
	.loc 1 79 0
	call	Os_GetISRMaxStackUsage
.LVL6:
	movh.a	%a2, hi:MaxStack_CAN0SR3_ISR
	lea	%a2, [%a2] lo:MaxStack_CAN0SR3_ISR
	.loc 1 80 0
	lea	%a4, [%a15] 128
	.loc 1 79 0
	st.d	[%a2]0, %e2
	.loc 1 80 0
	call	Os_GetISRMaxStackUsage
.LVL7:
	movh.a	%a2, hi:MaxStack_CAN1SR0_ISR
	lea	%a2, [%a2] lo:MaxStack_CAN1SR0_ISR
	.loc 1 81 0
	lea	%a4, [%a15] 96
	.loc 1 80 0
	st.d	[%a2]0, %e2
	.loc 1 81 0
	call	Os_GetISRMaxStackUsage
.LVL8:
	movh.a	%a2, hi:MaxStack_CAN1SR1_ISR
	lea	%a2, [%a2] lo:MaxStack_CAN1SR1_ISR
	.loc 1 82 0
	lea	%a4, [%a15] 64
	.loc 1 81 0
	st.d	[%a2]0, %e2
	.loc 1 82 0
	call	Os_GetISRMaxStackUsage
.LVL9:
	movh.a	%a2, hi:MaxStack_CAN1SR2_ISR
	lea	%a2, [%a2] lo:MaxStack_CAN1SR2_ISR
	.loc 1 83 0
	lea	%a4, [%a15] 32
	.loc 1 82 0
	st.d	[%a2]0, %e2
	.loc 1 83 0
	call	Os_GetISRMaxStackUsage
.LVL10:
	movh.a	%a15, hi:MaxStack_CAN1SR3_ISR
	lea	%a15, [%a15] lo:MaxStack_CAN1SR3_ISR
	st.d	[%a15]0, %e2
	.loc 1 85 0
	movh.a	%a15, hi:Os_const_tasks0+80
	lea	%a15, [%a15] lo:Os_const_tasks0+80
	mov.aa	%a4, %a15
	call	Os_GetTaskMaxStackUsage
.LVL11:
	movh.a	%a2, hi:MaxStack_BSW_OsTask_SwcRequest
	lea	%a2, [%a2] lo:MaxStack_BSW_OsTask_SwcRequest
	.loc 1 86 0
	lea	%a4, [%a15] 280
	.loc 1 85 0
	st.d	[%a2]0, %e2
	.loc 1 86 0
	call	Os_GetTaskMaxStackUsage
.LVL12:
	movh.a	%a2, hi:MaxStack_ECU_StartupTask
	lea	%a2, [%a2] lo:MaxStack_ECU_StartupTask
	.loc 1 87 0
	lea	%a4, [%a15] 200
	.loc 1 86 0
	st.d	[%a2]0, %e2
	.loc 1 87 0
	call	Os_GetTaskMaxStackUsage
.LVL13:
	movh.a	%a2, hi:MaxStack_OsTask_ASW_1ms
	lea	%a2, [%a2] lo:MaxStack_OsTask_ASW_1ms
	.loc 1 88 0
	lea	%a4, [%a15] 120
	.loc 1 87 0
	st.d	[%a2]0, %e2
	.loc 1 88 0
	call	Os_GetTaskMaxStackUsage
.LVL14:
	movh.a	%a2, hi:MaxStack_OsTask_ASW_10ms
	lea	%a2, [%a2] lo:MaxStack_OsTask_ASW_10ms
	.loc 1 89 0
	lea	%a4, [%a15] 160
	.loc 1 88 0
	st.d	[%a2]0, %e2
	.loc 1 89 0
	call	Os_GetTaskMaxStackUsage
.LVL15:
	movh.a	%a2, hi:MaxStack_OsTask_BSW_10ms
	lea	%a2, [%a2] lo:MaxStack_OsTask_BSW_10ms
	.loc 1 90 0
	lea	%a4, [%a15] 240
	.loc 1 89 0
	st.d	[%a2]0, %e2
	.loc 1 90 0
	call	Os_GetTaskMaxStackUsage
.LVL16:
	movh.a	%a2, hi:MaxStack_OsTask_BSW_1ms
	lea	%a2, [%a2] lo:MaxStack_OsTask_BSW_1ms
	.loc 1 91 0
	lea	%a4, [%a15] 80
	.loc 1 90 0
	st.d	[%a2]0, %e2
	.loc 1 91 0
	call	Os_GetTaskMaxStackUsage
.LVL17:
	movh.a	%a2, hi:MaxStack_OsTask_BSW_50ms
	lea	%a2, [%a2] lo:MaxStack_OsTask_BSW_50ms
	.loc 1 92 0
	lea	%a4, [%a15] 40
	.loc 1 91 0
	st.d	[%a2]0, %e2
	.loc 1 92 0
	call	Os_GetTaskMaxStackUsage
.LVL18:
	movh.a	%a2, hi:MaxStack_OsTask_BSW_100ms
	lea	%a2, [%a2] lo:MaxStack_OsTask_BSW_100ms
	.loc 1 93 0
	lea	%a4, [%a15] -80
	.loc 1 92 0
	st.d	[%a2]0, %e2
	.loc 1 93 0
	call	Os_GetTaskMaxStackUsage
.LVL19:
	movh.a	%a15, hi:MaxStack_OsTask_Background_1ms
	lea	%a15, [%a15] lo:MaxStack_OsTask_Background_1ms
	.loc 1 95 0
	mov	%d4, 0
	.loc 1 93 0
	st.d	[%a15]0, %e2
	.loc 1 95 0
	call	Os_GetIdleElapsedTime
.LVL20:
	movh.a	%a15, hi:Os_Core0_IdelElapsedTime
	ld.w	%d15, [%a15] lo:Os_Core0_IdelElapsedTime
.LVL21:
	add	%d2, %d15
	st.w	[%a15] lo:Os_Core0_IdelElapsedTime, %d2
	.loc 1 96 0
	mov	%d2, 1
	ret
.LVL22:
.L11:
	.loc 1 125 0
	mov	%d4, 3
	call	Os_ResetIdleElapsedTime
.LVL23:
	.loc 1 127 0
	movh.a	%a15, hi:Os_const_tasks3+40
	lea	%a15, [%a15] lo:Os_const_tasks3+40
	mov.aa	%a4, %a15
	call	Os_GetTaskMaxStackUsage
.LVL24:
	movh.a	%a2, hi:MaxStack_Core3_OsTask_ASW_1ms
	lea	%a2, [%a2] lo:MaxStack_Core3_OsTask_ASW_1ms
	.loc 1 128 0
	lea	%a4, [%a15] -40
	.loc 1 127 0
	st.d	[%a2]0, %e2
	.loc 1 128 0
	call	Os_GetTaskMaxStackUsage
.LVL25:
	movh.a	%a2, hi:MaxStack_Core3_OsTask_ASW_5ms
	lea	%a2, [%a2] lo:MaxStack_Core3_OsTask_ASW_5ms
	.loc 1 129 0
	lea	%a4, [%a15] 40
	.loc 1 128 0
	st.d	[%a2]0, %e2
	.loc 1 129 0
	call	Os_GetTaskMaxStackUsage
.LVL26:
	movh.a	%a15, hi:MaxStack_Core3_OsTask_BSW_10ms
	lea	%a15, [%a15] lo:MaxStack_Core3_OsTask_BSW_10ms
	.loc 1 131 0
	mov	%d4, 3
	.loc 1 129 0
	st.d	[%a15]0, %e2
	.loc 1 131 0
	call	Os_GetIdleElapsedTime
.LVL27:
	movh.a	%a15, hi:Os_Core3_IdelElapsedTime
	ld.w	%d15, [%a15] lo:Os_Core3_IdelElapsedTime
.LVL28:
	add	%d2, %d15
	st.w	[%a15] lo:Os_Core3_IdelElapsedTime, %d2
	.loc 1 132 0
	mov	%d2, 1
	.loc 1 139 0
	ret
.LVL29:
.L9:
	.loc 1 100 0
	mov	%d4, 1
	call	Os_ResetIdleElapsedTime
.LVL30:
	.loc 1 102 0
	movh.a	%a15, hi:Os_const_tasks1+120
	lea	%a15, [%a15] lo:Os_const_tasks1+120
	mov.aa	%a4, %a15
	call	Os_GetTaskMaxStackUsage
.LVL31:
	movh.a	%a2, hi:MaxStack_Core1_OsTask_ASW_1ms
	lea	%a2, [%a2] lo:MaxStack_Core1_OsTask_ASW_1ms
	.loc 1 103 0
	lea	%a4, [%a15] -80
	.loc 1 102 0
	st.d	[%a2]0, %e2
	.loc 1 103 0
	call	Os_GetTaskMaxStackUsage
.LVL32:
	movh.a	%a2, hi:MaxStack_Core1_OsTask_ASW_10ms
	lea	%a2, [%a2] lo:MaxStack_Core1_OsTask_ASW_10ms
	.loc 1 104 0
	lea	%a4, [%a15] -120
	.loc 1 103 0
	st.d	[%a2]0, %e2
	.loc 1 104 0
	call	Os_GetTaskMaxStackUsage
.LVL33:
	movh.a	%a2, hi:MaxStack_Core1_OsTask_ASW_100ms
	lea	%a2, [%a2] lo:MaxStack_Core1_OsTask_ASW_100ms
	.loc 1 105 0
	lea	%a4, [%a15] -40
	.loc 1 104 0
	st.d	[%a2]0, %e2
	.loc 1 105 0
	call	Os_GetTaskMaxStackUsage
.LVL34:
	movh.a	%a15, hi:MaxStack_Core1_OsTask_BSW_10ms
	lea	%a15, [%a15] lo:MaxStack_Core1_OsTask_BSW_10ms
	.loc 1 107 0
	mov	%d4, 1
	.loc 1 105 0
	st.d	[%a15]0, %e2
	.loc 1 107 0
	call	Os_GetIdleElapsedTime
.LVL35:
	movh.a	%a15, hi:Os_Core1_IdelElapsedTime
	ld.w	%d15, [%a15] lo:Os_Core1_IdelElapsedTime
.LVL36:
	add	%d2, %d15
	st.w	[%a15] lo:Os_Core1_IdelElapsedTime, %d2
	.loc 1 108 0
	mov	%d2, 1
	ret
.LVL37:
.L10:
	.loc 1 112 0
	mov	%d4, 2
	call	Os_ResetIdleElapsedTime
.LVL38:
	.loc 1 114 0
	movh.a	%a15, hi:Os_const_tasks2+120
	lea	%a15, [%a15] lo:Os_const_tasks2+120
	mov.aa	%a4, %a15
	call	Os_GetTaskMaxStackUsage
.LVL39:
	movh.a	%a12, hi:MaxStack_Core2_OsTask_ASW_1ms
	lea	%a12, [%a12] lo:MaxStack_Core2_OsTask_ASW_1ms
	.loc 1 115 0
	lea	%a4, [%a15] -40
	.loc 1 114 0
	st.d	[%a12]0, %e2
	.loc 1 115 0
	call	Os_GetTaskMaxStackUsage
.LVL40:
	movh.a	%a2, hi:MaxStack_Core2_OsTask_ASW_5ms
	lea	%a2, [%a2] lo:MaxStack_Core2_OsTask_ASW_5ms
	.loc 1 116 0
	lea	%a4, [%a15] -80
	.loc 1 115 0
	st.d	[%a2]0, %e2
	.loc 1 116 0
	call	Os_GetTaskMaxStackUsage
.LVL41:
	movh.a	%a2, hi:MaxStack_Core2_OsTask_ASW_10ms
	lea	%a2, [%a2] lo:MaxStack_Core2_OsTask_ASW_10ms
	.loc 1 117 0
	lea	%a4, [%a15] -120
	.loc 1 116 0
	st.d	[%a2]0, %e2
	.loc 1 117 0
	call	Os_GetTaskMaxStackUsage
.LVL42:
	.loc 1 118 0
	lea	%a4, [%a15] 40
	.loc 1 117 0
	st.d	[%a12]0, %e2
	.loc 1 118 0
	call	Os_GetTaskMaxStackUsage
.LVL43:
	movh.a	%a15, hi:MaxStack_Core2_OsTask_BSW_10ms
	lea	%a15, [%a15] lo:MaxStack_Core2_OsTask_BSW_10ms
	.loc 1 120 0
	mov	%d4, 2
	.loc 1 118 0
	st.d	[%a15]0, %e2
	.loc 1 120 0
	call	Os_GetIdleElapsedTime
.LVL44:
	movh.a	%a15, hi:Os_Core2_IdelElapsedTime
	ld.w	%d15, [%a15] lo:Os_Core2_IdelElapsedTime
.LVL45:
	add	%d2, %d15
	st.w	[%a15] lo:Os_Core2_IdelElapsedTime, %d2
	.loc 1 121 0
	mov	%d2, 1
	ret
.LFE19:
	.size	Os_Cbk_Idle, .-Os_Cbk_Idle
.section .text.Get_Core0Idle_SumTime,"ax",@progbits
	.align 1
	.global	Get_Core0Idle_SumTime
	.type	Get_Core0Idle_SumTime, @function
Get_Core0Idle_SumTime:
.LFB20:
	.loc 1 142 0
	.loc 1 144 0
	movh.a	%a15, hi:Os_Core0_IdelElapsedTime
	ld.w	%d2, [%a15] lo:Os_Core0_IdelElapsedTime
	ret
.LFE20:
	.size	Get_Core0Idle_SumTime, .-Get_Core0Idle_SumTime
.section .text.Get_Core1Idle_SumTime,"ax",@progbits
	.align 1
	.global	Get_Core1Idle_SumTime
	.type	Get_Core1Idle_SumTime, @function
Get_Core1Idle_SumTime:
.LFB21:
	.loc 1 147 0
	.loc 1 149 0
	movh.a	%a15, hi:Os_Core1_IdelElapsedTime
	ld.w	%d2, [%a15] lo:Os_Core1_IdelElapsedTime
	ret
.LFE21:
	.size	Get_Core1Idle_SumTime, .-Get_Core1Idle_SumTime
.section .text.Get_Core2Idle_SumTime,"ax",@progbits
	.align 1
	.global	Get_Core2Idle_SumTime
	.type	Get_Core2Idle_SumTime, @function
Get_Core2Idle_SumTime:
.LFB22:
	.loc 1 152 0
	.loc 1 154 0
	movh.a	%a15, hi:Os_Core2_IdelElapsedTime
	ld.w	%d2, [%a15] lo:Os_Core2_IdelElapsedTime
	ret
.LFE22:
	.size	Get_Core2Idle_SumTime, .-Get_Core2Idle_SumTime
.section .text.Get_Core3Idle_SumTime,"ax",@progbits
	.align 1
	.global	Get_Core3Idle_SumTime
	.type	Get_Core3Idle_SumTime, @function
Get_Core3Idle_SumTime:
.LFB23:
	.loc 1 157 0
	.loc 1 159 0
	movh.a	%a15, hi:Os_Core3_IdelElapsedTime
	ld.w	%d2, [%a15] lo:Os_Core3_IdelElapsedTime
	ret
.LFE23:
	.size	Get_Core3Idle_SumTime, .-Get_Core3Idle_SumTime
.section .bss.a4.Os_Core3_IdelElapsedTime,"aw",@nobits
	.align 2
	.type	Os_Core3_IdelElapsedTime, @object
	.size	Os_Core3_IdelElapsedTime, 4
Os_Core3_IdelElapsedTime:
	.zero	4
.section .bss.a4.Os_Core2_IdelElapsedTime,"aw",@nobits
	.align 2
	.type	Os_Core2_IdelElapsedTime, @object
	.size	Os_Core2_IdelElapsedTime, 4
Os_Core2_IdelElapsedTime:
	.zero	4
.section .bss.a4.Os_Core1_IdelElapsedTime,"aw",@nobits
	.align 2
	.type	Os_Core1_IdelElapsedTime, @object
	.size	Os_Core1_IdelElapsedTime, 4
Os_Core1_IdelElapsedTime:
	.zero	4
.section .bss.a4.Os_Core0_IdelElapsedTime,"aw",@nobits
	.align 2
	.type	Os_Core0_IdelElapsedTime, @object
	.size	Os_Core0_IdelElapsedTime, 4
Os_Core0_IdelElapsedTime:
	.zero	4
	.global	Os_Task_Idle_Counter
.section .bss.a4.Os_Task_Idle_Counter,"aw",@nobits
	.align 2
	.type	Os_Task_Idle_Counter, @object
	.size	Os_Task_Idle_Counter, 4
Os_Task_Idle_Counter:
	.zero	4
	.global	MaxStack_OsTask_Background_1ms
.section .bss.a4.MaxStack_OsTask_Background_1ms,"aw",@nobits
	.align 2
	.type	MaxStack_OsTask_Background_1ms, @object
	.size	MaxStack_OsTask_Background_1ms, 8
MaxStack_OsTask_Background_1ms:
	.zero	8
	.global	MaxStack_OsTask_BSW_100ms
.section .bss.a4.MaxStack_OsTask_BSW_100ms,"aw",@nobits
	.align 2
	.type	MaxStack_OsTask_BSW_100ms, @object
	.size	MaxStack_OsTask_BSW_100ms, 8
MaxStack_OsTask_BSW_100ms:
	.zero	8
	.global	MaxStack_OsTask_BSW_50ms
.section .bss.a4.MaxStack_OsTask_BSW_50ms,"aw",@nobits
	.align 2
	.type	MaxStack_OsTask_BSW_50ms, @object
	.size	MaxStack_OsTask_BSW_50ms, 8
MaxStack_OsTask_BSW_50ms:
	.zero	8
	.global	MaxStack_OsTask_BSW_1ms
.section .bss.a4.MaxStack_OsTask_BSW_1ms,"aw",@nobits
	.align 2
	.type	MaxStack_OsTask_BSW_1ms, @object
	.size	MaxStack_OsTask_BSW_1ms, 8
MaxStack_OsTask_BSW_1ms:
	.zero	8
	.global	MaxStack_OsTask_BSW_10ms
.section .bss.a4.MaxStack_OsTask_BSW_10ms,"aw",@nobits
	.align 2
	.type	MaxStack_OsTask_BSW_10ms, @object
	.size	MaxStack_OsTask_BSW_10ms, 8
MaxStack_OsTask_BSW_10ms:
	.zero	8
	.global	MaxStack_OsTask_ASW_1ms
.section .bss.a4.MaxStack_OsTask_ASW_1ms,"aw",@nobits
	.align 2
	.type	MaxStack_OsTask_ASW_1ms, @object
	.size	MaxStack_OsTask_ASW_1ms, 8
MaxStack_OsTask_ASW_1ms:
	.zero	8
	.global	MaxStack_OsTask_ASW_10ms
.section .bss.a4.MaxStack_OsTask_ASW_10ms,"aw",@nobits
	.align 2
	.type	MaxStack_OsTask_ASW_10ms, @object
	.size	MaxStack_OsTask_ASW_10ms, 8
MaxStack_OsTask_ASW_10ms:
	.zero	8
	.global	MaxStack_OsTask_ASW_100ms
.section .bss.a4.MaxStack_OsTask_ASW_100ms,"aw",@nobits
	.align 2
	.type	MaxStack_OsTask_ASW_100ms, @object
	.size	MaxStack_OsTask_ASW_100ms, 8
MaxStack_OsTask_ASW_100ms:
	.zero	8
	.global	MaxStack_Core3_OsTask_BSW_10ms
.section .bss.a4.MaxStack_Core3_OsTask_BSW_10ms,"aw",@nobits
	.align 2
	.type	MaxStack_Core3_OsTask_BSW_10ms, @object
	.size	MaxStack_Core3_OsTask_BSW_10ms, 8
MaxStack_Core3_OsTask_BSW_10ms:
	.zero	8
	.global	MaxStack_Core3_OsTask_ASW_5ms
.section .bss.a4.MaxStack_Core3_OsTask_ASW_5ms,"aw",@nobits
	.align 2
	.type	MaxStack_Core3_OsTask_ASW_5ms, @object
	.size	MaxStack_Core3_OsTask_ASW_5ms, 8
MaxStack_Core3_OsTask_ASW_5ms:
	.zero	8
	.global	MaxStack_Core3_OsTask_ASW_1ms
.section .bss.a4.MaxStack_Core3_OsTask_ASW_1ms,"aw",@nobits
	.align 2
	.type	MaxStack_Core3_OsTask_ASW_1ms, @object
	.size	MaxStack_Core3_OsTask_ASW_1ms, 8
MaxStack_Core3_OsTask_ASW_1ms:
	.zero	8
	.global	MaxStack_Core2_OsTask_BSW_10ms
.section .bss.a4.MaxStack_Core2_OsTask_BSW_10ms,"aw",@nobits
	.align 2
	.type	MaxStack_Core2_OsTask_BSW_10ms, @object
	.size	MaxStack_Core2_OsTask_BSW_10ms, 8
MaxStack_Core2_OsTask_BSW_10ms:
	.zero	8
	.global	MaxStack_Core2_OsTask_ASW_100ms
.section .bss.a4.MaxStack_Core2_OsTask_ASW_100ms,"aw",@nobits
	.align 2
	.type	MaxStack_Core2_OsTask_ASW_100ms, @object
	.size	MaxStack_Core2_OsTask_ASW_100ms, 8
MaxStack_Core2_OsTask_ASW_100ms:
	.zero	8
	.global	MaxStack_Core2_OsTask_ASW_10ms
.section .bss.a4.MaxStack_Core2_OsTask_ASW_10ms,"aw",@nobits
	.align 2
	.type	MaxStack_Core2_OsTask_ASW_10ms, @object
	.size	MaxStack_Core2_OsTask_ASW_10ms, 8
MaxStack_Core2_OsTask_ASW_10ms:
	.zero	8
	.global	MaxStack_Core2_OsTask_ASW_5ms
.section .bss.a4.MaxStack_Core2_OsTask_ASW_5ms,"aw",@nobits
	.align 2
	.type	MaxStack_Core2_OsTask_ASW_5ms, @object
	.size	MaxStack_Core2_OsTask_ASW_5ms, 8
MaxStack_Core2_OsTask_ASW_5ms:
	.zero	8
	.global	MaxStack_Core2_OsTask_ASW_1ms
.section .bss.a4.MaxStack_Core2_OsTask_ASW_1ms,"aw",@nobits
	.align 2
	.type	MaxStack_Core2_OsTask_ASW_1ms, @object
	.size	MaxStack_Core2_OsTask_ASW_1ms, 8
MaxStack_Core2_OsTask_ASW_1ms:
	.zero	8
	.global	MaxStack_Core1_OsTask_BSW_10ms
.section .bss.a4.MaxStack_Core1_OsTask_BSW_10ms,"aw",@nobits
	.align 2
	.type	MaxStack_Core1_OsTask_BSW_10ms, @object
	.size	MaxStack_Core1_OsTask_BSW_10ms, 8
MaxStack_Core1_OsTask_BSW_10ms:
	.zero	8
	.global	MaxStack_Core1_OsTask_ASW_100ms
.section .bss.a4.MaxStack_Core1_OsTask_ASW_100ms,"aw",@nobits
	.align 2
	.type	MaxStack_Core1_OsTask_ASW_100ms, @object
	.size	MaxStack_Core1_OsTask_ASW_100ms, 8
MaxStack_Core1_OsTask_ASW_100ms:
	.zero	8
	.global	MaxStack_Core1_OsTask_ASW_10ms
.section .bss.a4.MaxStack_Core1_OsTask_ASW_10ms,"aw",@nobits
	.align 2
	.type	MaxStack_Core1_OsTask_ASW_10ms, @object
	.size	MaxStack_Core1_OsTask_ASW_10ms, 8
MaxStack_Core1_OsTask_ASW_10ms:
	.zero	8
	.global	MaxStack_Core1_OsTask_ASW_1ms
.section .bss.a4.MaxStack_Core1_OsTask_ASW_1ms,"aw",@nobits
	.align 2
	.type	MaxStack_Core1_OsTask_ASW_1ms, @object
	.size	MaxStack_Core1_OsTask_ASW_1ms, 8
MaxStack_Core1_OsTask_ASW_1ms:
	.zero	8
	.global	MaxStack_ECU_StartupTask
.section .bss.a4.MaxStack_ECU_StartupTask,"aw",@nobits
	.align 2
	.type	MaxStack_ECU_StartupTask, @object
	.size	MaxStack_ECU_StartupTask, 8
MaxStack_ECU_StartupTask:
	.zero	8
	.global	MaxStack_BSW_OsTask_SwcRequest
.section .bss.a4.MaxStack_BSW_OsTask_SwcRequest,"aw",@nobits
	.align 2
	.type	MaxStack_BSW_OsTask_SwcRequest, @object
	.size	MaxStack_BSW_OsTask_SwcRequest, 8
MaxStack_BSW_OsTask_SwcRequest:
	.zero	8
	.global	MaxStack_CAN1SR3_ISR
.section .bss.a4.MaxStack_CAN1SR3_ISR,"aw",@nobits
	.align 2
	.type	MaxStack_CAN1SR3_ISR, @object
	.size	MaxStack_CAN1SR3_ISR, 8
MaxStack_CAN1SR3_ISR:
	.zero	8
	.global	MaxStack_CAN1SR2_ISR
.section .bss.a4.MaxStack_CAN1SR2_ISR,"aw",@nobits
	.align 2
	.type	MaxStack_CAN1SR2_ISR, @object
	.size	MaxStack_CAN1SR2_ISR, 8
MaxStack_CAN1SR2_ISR:
	.zero	8
	.global	MaxStack_CAN1SR1_ISR
.section .bss.a4.MaxStack_CAN1SR1_ISR,"aw",@nobits
	.align 2
	.type	MaxStack_CAN1SR1_ISR, @object
	.size	MaxStack_CAN1SR1_ISR, 8
MaxStack_CAN1SR1_ISR:
	.zero	8
	.global	MaxStack_CAN1SR0_ISR
.section .bss.a4.MaxStack_CAN1SR0_ISR,"aw",@nobits
	.align 2
	.type	MaxStack_CAN1SR0_ISR, @object
	.size	MaxStack_CAN1SR0_ISR, 8
MaxStack_CAN1SR0_ISR:
	.zero	8
	.global	MaxStack_CAN0SR3_ISR
.section .bss.a4.MaxStack_CAN0SR3_ISR,"aw",@nobits
	.align 2
	.type	MaxStack_CAN0SR3_ISR, @object
	.size	MaxStack_CAN0SR3_ISR, 8
MaxStack_CAN0SR3_ISR:
	.zero	8
	.global	MaxStack_CAN0SR2_ISR
.section .bss.a4.MaxStack_CAN0SR2_ISR,"aw",@nobits
	.align 2
	.type	MaxStack_CAN0SR2_ISR, @object
	.size	MaxStack_CAN0SR2_ISR, 8
MaxStack_CAN0SR2_ISR:
	.zero	8
	.global	MaxStack_CAN0SR1_ISR
.section .bss.a4.MaxStack_CAN0SR1_ISR,"aw",@nobits
	.align 2
	.type	MaxStack_CAN0SR1_ISR, @object
	.size	MaxStack_CAN0SR1_ISR, 8
MaxStack_CAN0SR1_ISR:
	.zero	8
	.global	MaxStack_CAN0SR0_ISR
.section .bss.a4.MaxStack_CAN0SR0_ISR,"aw",@nobits
	.align 2
	.type	MaxStack_CAN0SR0_ISR, @object
	.size	MaxStack_CAN0SR0_ISR, 8
MaxStack_CAN0SR0_ISR:
	.zero	8
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\os\\Os.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1384
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\os\\Os_Cbk_Idle.c"
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
	.uaword	0x1c7
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
	.uaword	0x1f3
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
	.uaword	0x22f
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
	.uaword	0x1c7
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x3
	.string	"StatusType"
	.byte	0x3
	.byte	0x48
	.uaword	0x1c7
	.uleb128 0x4
	.byte	0x44
	.byte	0x4
	.byte	0xc7
	.uaword	0x2c7
	.uleb128 0x5
	.string	"store"
	.byte	0x4
	.byte	0xc8
	.uaword	0x2c7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.uaword	0x221
	.uaword	0x2d7
	.uleb128 0x7
	.uaword	0x2d7
	.byte	0x10
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x3
	.string	"Os_JumpBufType"
	.byte	0x4
	.byte	0xc9
	.uaword	0x2f9
	.uleb128 0x6
	.uaword	0x2ae
	.uaword	0x309
	.uleb128 0x7
	.uaword	0x2d7
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Os_StackTraceType"
	.byte	0x4
	.byte	0xdb
	.uaword	0x22f
	.uleb128 0x4
	.byte	0x8
	.byte	0x4
	.byte	0xdc
	.uaword	0x346
	.uleb128 0x5
	.string	"sp"
	.byte	0x4
	.byte	0xdc
	.uaword	0x309
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"ctx"
	.byte	0x4
	.byte	0xdc
	.uaword	0x309
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Os_StackValueType"
	.byte	0x4
	.byte	0xdc
	.uaword	0x322
	.uleb128 0x3
	.string	"Os_StackSizeType"
	.byte	0x4
	.byte	0xdd
	.uaword	0x346
	.uleb128 0x3
	.string	"Os_VoidVoidFunctionType"
	.byte	0x4
	.byte	0xe0
	.uaword	0x396
	.uleb128 0x8
	.byte	0x4
	.uaword	0x39c
	.uleb128 0x9
	.byte	0x1
	.uleb128 0x3
	.string	"ApplicationType"
	.byte	0x4
	.byte	0xee
	.uaword	0x1c7
	.uleb128 0xa
	.string	"Os_StopwatchTickType"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x22f
	.uleb128 0xa
	.string	"CoreIdType"
	.byte	0x4
	.uahalf	0x11b
	.uaword	0x1e5
	.uleb128 0xa
	.string	"Os_IdleType"
	.byte	0x4
	.uahalf	0x16f
	.uaword	0x1e5
	.uleb128 0xb
	.string	"Os_MeterInfoType_s"
	.byte	0x30
	.byte	0x4
	.uahalf	0x172
	.uaword	0x4b0
	.uleb128 0xc
	.string	"elapsed"
	.byte	0x4
	.uahalf	0x173
	.uaword	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"previous"
	.byte	0x4
	.uahalf	0x174
	.uaword	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"max"
	.byte	0x4
	.uahalf	0x175
	.uaword	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"cumulative"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x3b5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"stackbase"
	.byte	0x4
	.uahalf	0x177
	.uaword	0x346
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"stackusage"
	.byte	0x4
	.uahalf	0x178
	.uaword	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xc
	.string	"stackmax"
	.byte	0x4
	.uahalf	0x179
	.uaword	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x17a
	.uaword	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xa
	.string	"Os_MeterInfoType"
	.byte	0x4
	.uahalf	0x17b
	.uaword	0x3f9
	.uleb128 0xa
	.string	"Os_imaskType"
	.byte	0x4
	.uahalf	0x184
	.uaword	0x221
	.uleb128 0xb
	.string	"Os_ISRDynType_s"
	.byte	0x34
	.byte	0x4
	.uahalf	0x186
	.uaword	0x520
	.uleb128 0xc
	.string	"terminating"
	.byte	0x4
	.uahalf	0x187
	.uaword	0x26c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"meter"
	.byte	0x4
	.uahalf	0x188
	.uaword	0x4b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0xa
	.string	"Os_ISRDynType"
	.byte	0x4
	.uahalf	0x189
	.uaword	0x4de
	.uleb128 0xa
	.string	"Os_IsrTerminatedFunctionType"
	.byte	0x4
	.uahalf	0x18a
	.uaword	0x396
	.uleb128 0xb
	.string	"Os_ISRType_s"
	.byte	0x20
	.byte	0x4
	.uahalf	0x18b
	.uaword	0x605
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x18c
	.uaword	0x377
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"terminated_function"
	.byte	0x4
	.uahalf	0x18d
	.uaword	0x536
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"dynamic"
	.byte	0x4
	.uahalf	0x18e
	.uaword	0x605
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"imask"
	.byte	0x4
	.uahalf	0x18f
	.uaword	0x4c9
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"index"
	.byte	0x4
	.uahalf	0x190
	.uaword	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x191
	.uaword	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"access"
	.byte	0x4
	.uahalf	0x192
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x193
	.uaword	0x39e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1d
	.byte	0
	.uleb128 0xe
	.uaword	0x60a
	.uleb128 0x8
	.byte	0x4
	.uaword	0x520
	.uleb128 0xa
	.string	"Os_ISRType"
	.byte	0x4
	.uahalf	0x194
	.uaword	0x55b
	.uleb128 0xa
	.string	"ISRType"
	.byte	0x4
	.uahalf	0x195
	.uaword	0x633
	.uleb128 0x8
	.byte	0x4
	.uaword	0x639
	.uleb128 0xe
	.uaword	0x610
	.uleb128 0xa
	.string	"Os_bitmask"
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x22f
	.uleb128 0xa
	.string	"Os_pset0Type"
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x63e
	.uleb128 0xa
	.string	"Os_pset1Type"
	.byte	0x4
	.uahalf	0x1a9
	.uaword	0x63e
	.uleb128 0xa
	.string	"Os_pset2Type"
	.byte	0x4
	.uahalf	0x1aa
	.uaword	0x63e
	.uleb128 0xa
	.string	"Os_pset3Type"
	.byte	0x4
	.uahalf	0x1ab
	.uaword	0x63e
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x6db
	.uleb128 0x10
	.string	"p0"
	.byte	0x4
	.uahalf	0x1ad
	.uaword	0x651
	.uleb128 0x10
	.string	"p1"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x666
	.uleb128 0x10
	.string	"p2"
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x67b
	.uleb128 0x10
	.string	"p3"
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x690
	.byte	0
	.uleb128 0xa
	.string	"Os_psetType"
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x6a5
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.uahalf	0x1b3
	.uaword	0x725
	.uleb128 0x10
	.string	"t0"
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0x63e
	.uleb128 0x10
	.string	"t1"
	.byte	0x4
	.uahalf	0x1b5
	.uaword	0x63e
	.uleb128 0x10
	.string	"t2"
	.byte	0x4
	.uahalf	0x1b6
	.uaword	0x63e
	.uleb128 0x10
	.string	"t3"
	.byte	0x4
	.uahalf	0x1b7
	.uaword	0x63e
	.byte	0
	.uleb128 0xa
	.string	"Os_tpmaskType"
	.byte	0x4
	.uahalf	0x1b8
	.uaword	0x6ef
	.uleb128 0xb
	.string	"Os_TaskDynType_s"
	.byte	0x78
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0x7a2
	.uleb128 0xc
	.string	"terminate_jump_buf"
	.byte	0x4
	.uahalf	0x1bb
	.uaword	0x2e3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"meter"
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x4b0
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xc
	.string	"termination_state"
	.byte	0x4
	.uahalf	0x1bd
	.uaword	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0
	.uleb128 0xa
	.string	"Os_TaskDynType"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x73b
	.uleb128 0xb
	.string	"Os_TaskType_s"
	.byte	0x28
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x880
	.uleb128 0xc
	.string	"dynamic"
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x880
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x377
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xc
	.string	"pset"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x6db
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xc
	.string	"base_tpmask"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xc
	.string	"tpmask"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x725
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xc
	.string	"core_id"
	.byte	0x4
	.uahalf	0x1c6
	.uaword	0x3d2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xc
	.string	"index"
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x221
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x1c8
	.uaword	0x35f
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xc
	.string	"access"
	.byte	0x4
	.uahalf	0x1c9
	.uaword	0x1ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x39e
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.byte	0
	.uleb128 0xe
	.uaword	0x885
	.uleb128 0x8
	.byte	0x4
	.uaword	0x7a2
	.uleb128 0xa
	.string	"Os_TaskType"
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x7b9
	.uleb128 0xa
	.string	"TaskType"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x8b0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x8b6
	.uleb128 0xe
	.uaword	0x88b
	.uleb128 0x11
	.uaword	0x221
	.uleb128 0x12
	.byte	0x1
	.string	"Os_Cbk_Idle"
	.byte	0x1
	.byte	0x41
	.byte	0x1
	.uaword	0x26c
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc01
	.uleb128 0x13
	.string	"u16CoreID"
	.byte	0x1
	.byte	0x43
	.uaword	0x1e5
	.uaword	.LLST0
	.uleb128 0x14
	.uaword	.LBB2
	.uaword	.LBE2
	.uaword	0x917
	.uleb128 0x13
	.string	"res"
	.byte	0x1
	.byte	0x45
	.uaword	0x22f
	.uaword	.LLST1
	.byte	0
	.uleb128 0x15
	.uaword	.LVL2
	.uaword	0x12da
	.uaword	0x92a
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.uaword	.LVL3
	.uaword	0x1307
	.uaword	0x93e
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL4
	.uaword	0x1307
	.uaword	0x953
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 224
	.byte	0
	.uleb128 0x15
	.uaword	.LVL5
	.uaword	0x1307
	.uaword	0x968
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 192
	.byte	0
	.uleb128 0x15
	.uaword	.LVL6
	.uaword	0x1307
	.uaword	0x97d
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 160
	.byte	0
	.uleb128 0x15
	.uaword	.LVL7
	.uaword	0x1307
	.uaword	0x992
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 128
	.byte	0
	.uleb128 0x15
	.uaword	.LVL8
	.uaword	0x1307
	.uaword	0x9a7
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 96
	.byte	0
	.uleb128 0x15
	.uaword	.LVL9
	.uaword	0x1307
	.uaword	0x9bc
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 64
	.byte	0
	.uleb128 0x15
	.uaword	.LVL10
	.uaword	0x1307
	.uaword	0x9d0
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 32
	.byte	0
	.uleb128 0x15
	.uaword	.LVL11
	.uaword	0x1333
	.uaword	0x9e4
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL12
	.uaword	0x1333
	.uaword	0x9f9
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 280
	.byte	0
	.uleb128 0x15
	.uaword	.LVL13
	.uaword	0x1333
	.uaword	0xa0e
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 200
	.byte	0
	.uleb128 0x15
	.uaword	.LVL14
	.uaword	0x1333
	.uaword	0xa23
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 120
	.byte	0
	.uleb128 0x15
	.uaword	.LVL15
	.uaword	0x1333
	.uaword	0xa38
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 160
	.byte	0
	.uleb128 0x15
	.uaword	.LVL16
	.uaword	0x1333
	.uaword	0xa4d
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 240
	.byte	0
	.uleb128 0x15
	.uaword	.LVL17
	.uaword	0x1333
	.uaword	0xa62
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 80
	.byte	0
	.uleb128 0x15
	.uaword	.LVL18
	.uaword	0x1333
	.uaword	0xa76
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 40
	.byte	0
	.uleb128 0x15
	.uaword	.LVL19
	.uaword	0x1333
	.uaword	0xa8b
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 -80
	.byte	0
	.uleb128 0x15
	.uaword	.LVL20
	.uaword	0x1360
	.uaword	0xa9e
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x15
	.uaword	.LVL23
	.uaword	0x12da
	.uaword	0xab1
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x15
	.uaword	.LVL24
	.uaword	0x1333
	.uaword	0xac5
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL25
	.uaword	0x1333
	.uaword	0xad9
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 -40
	.byte	0
	.uleb128 0x15
	.uaword	.LVL26
	.uaword	0x1333
	.uaword	0xaed
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 40
	.byte	0
	.uleb128 0x15
	.uaword	.LVL27
	.uaword	0x1360
	.uaword	0xb00
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x33
	.byte	0
	.uleb128 0x15
	.uaword	.LVL30
	.uaword	0x12da
	.uaword	0xb13
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.uaword	.LVL31
	.uaword	0x1333
	.uaword	0xb27
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL32
	.uaword	0x1333
	.uaword	0xb3c
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 -80
	.byte	0
	.uleb128 0x15
	.uaword	.LVL33
	.uaword	0x1333
	.uaword	0xb51
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 -120
	.byte	0
	.uleb128 0x15
	.uaword	.LVL34
	.uaword	0x1333
	.uaword	0xb65
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 -40
	.byte	0
	.uleb128 0x15
	.uaword	.LVL35
	.uaword	0x1360
	.uaword	0xb78
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x15
	.uaword	.LVL38
	.uaword	0x12da
	.uaword	0xb8b
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.uleb128 0x15
	.uaword	.LVL39
	.uaword	0x1333
	.uaword	0xb9f
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x15
	.uaword	.LVL40
	.uaword	0x1333
	.uaword	0xbb3
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 -40
	.byte	0
	.uleb128 0x15
	.uaword	.LVL41
	.uaword	0x1333
	.uaword	0xbc8
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 -80
	.byte	0
	.uleb128 0x15
	.uaword	.LVL42
	.uaword	0x1333
	.uaword	0xbdd
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8f
	.sleb128 -120
	.byte	0
	.uleb128 0x15
	.uaword	.LVL43
	.uaword	0x1333
	.uaword	0xbf1
	.uleb128 0x16
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 40
	.byte	0
	.uleb128 0x17
	.uaword	.LVL44
	.uaword	0x1360
	.uleb128 0x16
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x32
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x1
	.string	"Get_Core0Idle_SumTime"
	.byte	0x1
	.byte	0x8d
	.byte	0x1
	.uaword	0x221
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"Get_Core1Idle_SumTime"
	.byte	0x1
	.byte	0x92
	.byte	0x1
	.uaword	0x221
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"Get_Core2Idle_SumTime"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.uaword	0x221
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x18
	.byte	0x1
	.string	"Get_Core3Idle_SumTime"
	.byte	0x1
	.byte	0x9c
	.byte	0x1
	.uaword	0x221
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x19
	.string	"Os_Core0_IdelElapsedTime"
	.byte	0x1
	.byte	0x38
	.uaword	0x221
	.byte	0x5
	.byte	0x3
	.uaword	Os_Core0_IdelElapsedTime
	.uleb128 0x19
	.string	"Os_Core1_IdelElapsedTime"
	.byte	0x1
	.byte	0x39
	.uaword	0x221
	.byte	0x5
	.byte	0x3
	.uaword	Os_Core1_IdelElapsedTime
	.uleb128 0x19
	.string	"Os_Core2_IdelElapsedTime"
	.byte	0x1
	.byte	0x3a
	.uaword	0x221
	.byte	0x5
	.byte	0x3
	.uaword	Os_Core2_IdelElapsedTime
	.uleb128 0x19
	.string	"Os_Core3_IdelElapsedTime"
	.byte	0x1
	.byte	0x3b
	.uaword	0x221
	.byte	0x5
	.byte	0x3
	.uaword	Os_Core3_IdelElapsedTime
	.uleb128 0x6
	.uaword	0x610
	.uaword	0xd50
	.uleb128 0x1a
	.byte	0
	.uleb128 0x1b
	.string	"Os_const_isrs"
	.byte	0x4
	.uahalf	0x45c
	.uaword	0xd68
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0xd45
	.uleb128 0x6
	.uaword	0x88b
	.uaword	0xd78
	.uleb128 0x1a
	.byte	0
	.uleb128 0x1b
	.string	"Os_const_tasks0"
	.byte	0x4
	.uahalf	0x461
	.uaword	0xd92
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0xd6d
	.uleb128 0x1b
	.string	"Os_const_tasks1"
	.byte	0x4
	.uahalf	0x462
	.uaword	0xdb1
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0xd6d
	.uleb128 0x1b
	.string	"Os_const_tasks2"
	.byte	0x4
	.uahalf	0x463
	.uaword	0xdd0
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0xd6d
	.uleb128 0x1b
	.string	"Os_const_tasks3"
	.byte	0x4
	.uahalf	0x464
	.uaword	0xdef
	.byte	0x1
	.byte	0x1
	.uleb128 0xe
	.uaword	0xd6d
	.uleb128 0x1c
	.string	"MaxStack_CAN0SR0_ISR"
	.byte	0x1
	.byte	0x12
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_CAN0SR0_ISR
	.uleb128 0x1c
	.string	"MaxStack_CAN0SR1_ISR"
	.byte	0x1
	.byte	0x13
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_CAN0SR1_ISR
	.uleb128 0x1c
	.string	"MaxStack_CAN0SR2_ISR"
	.byte	0x1
	.byte	0x14
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_CAN0SR2_ISR
	.uleb128 0x1c
	.string	"MaxStack_CAN0SR3_ISR"
	.byte	0x1
	.byte	0x15
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_CAN0SR3_ISR
	.uleb128 0x1c
	.string	"MaxStack_CAN1SR0_ISR"
	.byte	0x1
	.byte	0x16
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_CAN1SR0_ISR
	.uleb128 0x1c
	.string	"MaxStack_CAN1SR1_ISR"
	.byte	0x1
	.byte	0x17
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_CAN1SR1_ISR
	.uleb128 0x1c
	.string	"MaxStack_CAN1SR2_ISR"
	.byte	0x1
	.byte	0x18
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_CAN1SR2_ISR
	.uleb128 0x1c
	.string	"MaxStack_CAN1SR3_ISR"
	.byte	0x1
	.byte	0x19
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_CAN1SR3_ISR
	.uleb128 0x1c
	.string	"MaxStack_BSW_OsTask_SwcRequest"
	.byte	0x1
	.byte	0x1b
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_BSW_OsTask_SwcRequest
	.uleb128 0x1c
	.string	"MaxStack_ECU_StartupTask"
	.byte	0x1
	.byte	0x1c
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_ECU_StartupTask
	.uleb128 0x1c
	.string	"MaxStack_Core1_OsTask_ASW_1ms"
	.byte	0x1
	.byte	0x1d
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_Core1_OsTask_ASW_1ms
	.uleb128 0x1c
	.string	"MaxStack_Core1_OsTask_ASW_10ms"
	.byte	0x1
	.byte	0x1e
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_Core1_OsTask_ASW_10ms
	.uleb128 0x1c
	.string	"MaxStack_Core1_OsTask_ASW_100ms"
	.byte	0x1
	.byte	0x1f
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_Core1_OsTask_ASW_100ms
	.uleb128 0x1c
	.string	"MaxStack_Core1_OsTask_BSW_10ms"
	.byte	0x1
	.byte	0x20
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_Core1_OsTask_BSW_10ms
	.uleb128 0x1c
	.string	"MaxStack_Core2_OsTask_ASW_1ms"
	.byte	0x1
	.byte	0x21
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_Core2_OsTask_ASW_1ms
	.uleb128 0x1c
	.string	"MaxStack_Core2_OsTask_ASW_5ms"
	.byte	0x1
	.byte	0x22
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_Core2_OsTask_ASW_5ms
	.uleb128 0x1c
	.string	"MaxStack_Core2_OsTask_ASW_10ms"
	.byte	0x1
	.byte	0x23
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_Core2_OsTask_ASW_10ms
	.uleb128 0x1c
	.string	"MaxStack_Core2_OsTask_ASW_100ms"
	.byte	0x1
	.byte	0x24
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_Core2_OsTask_ASW_100ms
	.uleb128 0x1c
	.string	"MaxStack_Core2_OsTask_BSW_10ms"
	.byte	0x1
	.byte	0x25
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_Core2_OsTask_BSW_10ms
	.uleb128 0x1c
	.string	"MaxStack_Core3_OsTask_ASW_1ms"
	.byte	0x1
	.byte	0x26
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_Core3_OsTask_ASW_1ms
	.uleb128 0x1c
	.string	"MaxStack_Core3_OsTask_ASW_5ms"
	.byte	0x1
	.byte	0x27
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_Core3_OsTask_ASW_5ms
	.uleb128 0x1c
	.string	"MaxStack_Core3_OsTask_BSW_10ms"
	.byte	0x1
	.byte	0x28
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_Core3_OsTask_BSW_10ms
	.uleb128 0x1c
	.string	"MaxStack_OsTask_ASW_100ms"
	.byte	0x1
	.byte	0x2b
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_OsTask_ASW_100ms
	.uleb128 0x1c
	.string	"MaxStack_OsTask_ASW_10ms"
	.byte	0x1
	.byte	0x2c
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_OsTask_ASW_10ms
	.uleb128 0x1c
	.string	"MaxStack_OsTask_ASW_1ms"
	.byte	0x1
	.byte	0x2d
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_OsTask_ASW_1ms
	.uleb128 0x1c
	.string	"MaxStack_OsTask_BSW_10ms"
	.byte	0x1
	.byte	0x2e
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_OsTask_BSW_10ms
	.uleb128 0x1c
	.string	"MaxStack_OsTask_BSW_1ms"
	.byte	0x1
	.byte	0x2f
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_OsTask_BSW_1ms
	.uleb128 0x1c
	.string	"MaxStack_OsTask_BSW_50ms"
	.byte	0x1
	.byte	0x30
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_OsTask_BSW_50ms
	.uleb128 0x1c
	.string	"MaxStack_OsTask_BSW_100ms"
	.byte	0x1
	.byte	0x31
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_OsTask_BSW_100ms
	.uleb128 0x1c
	.string	"MaxStack_OsTask_Background_1ms"
	.byte	0x1
	.byte	0x32
	.uaword	0x35f
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	MaxStack_OsTask_Background_1ms
	.uleb128 0x1c
	.string	"Os_Task_Idle_Counter"
	.byte	0x1
	.byte	0x37
	.uaword	0x8bb
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Os_Task_Idle_Counter
	.uleb128 0x1d
	.byte	0x1
	.string	"Os_ResetIdleElapsedTime"
	.byte	0x4
	.uahalf	0x3fd
	.byte	0x1
	.uaword	0x29c
	.byte	0x1
	.uaword	0x1307
	.uleb128 0x1e
	.uaword	0x3e5
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Os_GetISRMaxStackUsage"
	.byte	0x4
	.uahalf	0x400
	.byte	0x1
	.uaword	0x35f
	.byte	0x1
	.uaword	0x1333
	.uleb128 0x1e
	.uaword	0x623
	.byte	0
	.uleb128 0x1d
	.byte	0x1
	.string	"Os_GetTaskMaxStackUsage"
	.byte	0x4
	.uahalf	0x3ff
	.byte	0x1
	.uaword	0x35f
	.byte	0x1
	.uaword	0x1360
	.uleb128 0x1e
	.uaword	0x89f
	.byte	0
	.uleb128 0x1f
	.byte	0x1
	.string	"Os_GetIdleElapsedTime"
	.byte	0x4
	.uahalf	0x3fa
	.byte	0x1
	.uaword	0x3b5
	.byte	0x1
	.uleb128 0x1e
	.uaword	0x3e5
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xa
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
	.uleb128 0xb
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
	.uleb128 0x17
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
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0xa
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x21
	.byte	0
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
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
	.uaword	.LVL1
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LVL28
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL29
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x1
	.byte	0x5f
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
.LASF1:
	.string	"entry_function"
.LASF0:
	.string	"stackbudget"
.LASF2:
	.string	"application"
	.extern	Os_const_tasks2,STT_OBJECT,-1
	.extern	Os_const_tasks1,STT_OBJECT,-1
	.extern	Os_const_tasks3,STT_OBJECT,-1
	.extern	Os_GetIdleElapsedTime,STT_FUNC,0
	.extern	Os_GetTaskMaxStackUsage,STT_FUNC,0
	.extern	Os_const_tasks0,STT_OBJECT,-1
	.extern	Os_GetISRMaxStackUsage,STT_FUNC,0
	.extern	Os_const_isrs,STT_OBJECT,-1
	.extern	Os_ResetIdleElapsedTime,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
