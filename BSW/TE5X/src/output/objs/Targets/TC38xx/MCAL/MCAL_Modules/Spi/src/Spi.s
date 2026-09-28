	.file	"Spi.c"
.section .text,"ax",@progbits
.Ltext0:
.section Code.Cpu0,"ax",@progbits
	.align 1
	.type	Spi_lHwSetChannelConfig, @function
Spi_lHwSetChannelConfig:
.LFB42:
	.file 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
	.loc 1 8416 0
.LVL0:
	.loc 1 8416 0
	mov.aa	%a15, %a4
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 8422 0
	call	Mcal_GetCpuIndex
.LVL1:
	.loc 1 8423 0
	movh.a	%a2, hi:Spi_kGlobalConfigPtr
	ld.a	%a2, [%a2] lo:Spi_kGlobalConfigPtr
	addsc.a	%a2, %a2, %d2, 2
	.loc 1 8426 0
	ld.a	%a2, [%a2]0
	.loc 1 8425 0
	ld.w	%d2, [%a2] 8
.LVL2:
	madd	%d3, %d2, %d15, 12
	.loc 1 8431 0
	ld.bu	%d15, [%a15] 20
	and	%d15, %d15, 15
	sh	%d15, %d15, 8
	mov.a	%a4, %d15
	.loc 1 8434 0
	mov	%d15, 4095
	.loc 1 8431 0
	lea	%a2, [%a4] 7168
	addih.a	%a2, %a2, 61440
	.loc 1 8434 0
	st.w	[%a2] 84, %d15
	.loc 1 8439 0
	ld.bu	%d15, [%a15] 21
	.loc 1 8438 0
	ld.w	%d2, [%a15] 8
.LVL3:
	.loc 1 8425 0
	mov.a	%a3, %d3
.LVL4:
	.loc 1 8439 0
	ins.t	%d2, %d2,19, %d15,0
.LVL5:
	.loc 1 8443 0
	ld.bu	%d15, [%a15] 20
	sh	%d15, -4
	insert	%d2, %d2, %d15, 28, 4
	.loc 1 8446 0
	ld.bu	%d15, [%a3] 7
	ins.t	%d2, %d2,21, %d15,7
	.loc 1 8452 0
	and	%d15, %d15, 127
	add	%d15, -1
	insert	%d2, %d2, %d15, 23, 5
	.loc 1 8457 0
	ins.t	%d2, %d2,0, %d8,0
	.loc 1 8459 0
	insert	%d2, %d2, 0, 22, 1
.LVL6:
	.loc 1 8463 0
	insert	%d2, %d2, 15, 20, 1
.LVL7:
	ret
.LFE42:
	.size	Spi_lHwSetChannelConfig, .-Spi_lHwSetChannelConfig
	.align 1
	.global	Spi_Init
	.type	Spi_Init, @function
Spi_Init:
.LFB19:
	.loc 1 3721 0
.LVL8:
	.loc 1 3721 0
	mov.aa	%a12, %a4
	.loc 1 3740 0
	call	Mcal_GetCpuIndex
.LVL9:
	.loc 1 3744 0
	sh	%d13, %d2, 2
	.loc 1 3742 0
	movh.a	%a13, hi:Spi_kGlobalConfigPtr
	.loc 1 3744 0
	addsc.a	%a15, %a12, %d13, 0
	.loc 1 3742 0
	st.a	[%a13] lo:Spi_kGlobalConfigPtr, %a12
	.loc 1 3744 0
	ld.a	%a14, [%a15]0
.LVL10:
.LBB51:
.LBB52:
	.loc 1 6721 0
	movh	%d14, hi:Spi_RuntimeCoreVar
	.loc 1 6716 0
	jnz	%d2, .L3
	.loc 1 6721 0
	mov.a	%a3, %d14
	movh.a	%a2, hi:Spi_RuntimeCore0Var
	lea	%a2, [%a2] lo:Spi_RuntimeCore0Var
	st.a	[%a3] lo:Spi_RuntimeCoreVar, %a2
	.loc 1 6723 0
	movh.a	%a3, hi:Spi_BufferCore0
	lea	%a15, [%a3] lo:Spi_BufferCore0
	.loc 1 6734 0
	movh.a	%a5, hi:Spi_SequenceStatusCore0
	.loc 1 6735 0
	movh.a	%a4, hi:Spi_JobStatusCore0
	.loc 1 6723 0
	st.a	[%a2] 24, %a15
.LVL11:
.LBB53:
.LBB54:
	.loc 1 7340 0
	st.w	[%a3] lo:Spi_BufferCore0, %d2
	st.w	[%a15] 4, %d2
.LBE54:
.LBE53:
	.loc 1 6734 0
	lea	%a3, [%a5] lo:Spi_SequenceStatusCore0
.LBB56:
.LBB55:
	.loc 1 7340 0
	st.w	[%a15] 8, %d2
	st.w	[%a15] 12, %d2
	st.w	[%a15] 16, %d2
	st.w	[%a15] 20, %d2
	st.w	[%a15] 24, %d2
	st.w	[%a15] 28, %d2
	st.w	[%a15] 32, %d2
.LVL12:
.LBE55:
.LBE56:
	.loc 1 6735 0
	lea	%a15, [%a4] lo:Spi_JobStatusCore0
	.loc 1 6722 0
	st.w	[%a2] 4, %d2
	.loc 1 6731 0
	st.w	[%a2] 16, %d2
	.loc 1 6732 0
	st.w	[%a2] 20, %d2
	.loc 1 6734 0
	st.a	[%a2] 8, %a3
	.loc 1 6735 0
	st.a	[%a2] 12, %a15
.LVL13:
.LBB57:
.LBB58:
	.loc 1 7340 0
	st.b	[%a5] lo:Spi_SequenceStatusCore0, %d2
.LVL14:
	st.b	[%a3] 1, %d2
.LVL15:
	st.b	[%a3] 2, %d2
.LVL16:
.LBE58:
.LBE57:
.LBB59:
.LBB60:
	st.b	[%a4] lo:Spi_JobStatusCore0, %d2
.LVL17:
	st.b	[%a15] 1, %d2
.LVL18:
	st.b	[%a15] 2, %d2
.LVL19:
.L3:
.LBE60:
.LBE59:
.LBE52:
.LBE51:
.LBB61:
.LBB62:
	.loc 1 7419 0 discriminator 1
	movh	%d12, 15
.LBE62:
.LBE61:
	.loc 1 3721 0 discriminator 1
	lea	%a15, -268428288
.LBB65:
.LBB63:
	.loc 1 7410 0 discriminator 1
	mov	%e8, 0
	.loc 1 7419 0 discriminator 1
	addi	%d12, %d12, 12543
	.loc 1 7428 0 discriminator 1
	movh	%d11, 5
	.loc 1 7439 0 discriminator 1
	mov	%d15, 5200
	.loc 1 7456 0 discriminator 1
	mov.u	%d10, 40959
.LBE63:
.LBE65:
.LBB66:
.LBB67:
	.loc 1 7483 0 discriminator 1
	lea	%a13, [%a13] lo:Spi_kGlobalConfigPtr
.LVL20:
.L7:
.LBE67:
.LBE66:
.LBB69:
.LBB70:
.LBB71:
.LBB72:
	.loc 1 7248 0
	call	Mcal_GetCpuIndex
.LVL21:
	.loc 1 7247 0
	addsc.a	%a4, %a12, %d2, 2
	mul	%d2, %d8, 3
.LVL22:
	.loc 1 7249 0
	ld.a	%a2, [%a4]0
	ld.w	%d3, [%a2] 36
.LVL23:
	.loc 1 7255 0
	extr.u	%d2, %d3, %d2, 2
.LVL24:
.LBE72:
.LBE71:
.LBE70:
.LBE69:
	.loc 1 3756 0
	jeq	%d2, 1, .L9
.LVL25:
	add	%d8, 1
.LVL26:
	lea	%a15, [%a15] 256
	.loc 1 3751 0 discriminator 2
	jeq	%d8, 5, .L6
.LVL27:
.L10:
	ld.a	%a12, [%a13]0
	j	.L7
.LVL28:
.L9:
	.loc 1 3767 0
	addsc.a	%a2, %a14, %d8, 2
	mov.aa	%a4, %a15
	ld.a	%a2, [%a2] 16
	ld.bu	%d4, [%a2] 10
	call	Mcal_WritePeripEndInitProtReg
.LVL29:
.LBB73:
.LBB64:
	.loc 1 7410 0
	st.w	[%a15] 4, %d9
	.loc 1 7419 0
	st.w	[%a15] 16, %d12
	.loc 1 7428 0
	st.w	[%a15] 20, %d11
.LVL30:
	.loc 1 7439 0
	st.w	[%a15] 32, %d15
.LVL31:
	st.w	[%a15] 36, %d15
.LVL32:
	st.w	[%a15] 40, %d15
.LVL33:
	st.w	[%a15] 44, %d15
.LVL34:
	st.w	[%a15] 48, %d15
.LVL35:
	st.w	[%a15] 52, %d15
.LVL36:
	st.w	[%a15] 56, %d15
.LVL37:
	st.w	[%a15] 60, %d15
.LVL38:
	.loc 1 7450 0
	st.w	[%a15] 72, %d9
	.loc 1 7456 0
	st.w	[%a15] 84, %d10
.LVL39:
.LBE64:
.LBE73:
.LBB74:
.LBB68:
	.loc 1 7483 0
	ld.a	%a12, [%a13]0
	call	Mcal_GetCpuIndex
.LVL40:
	.loc 1 7482 0
	addsc.a	%a2, %a12, %d2, 2
	ld.a	%a2, [%a2]0
	addsc.a	%a2, %a2, %d8, 2
	add	%d8, 1
.LVL41:
	.loc 1 7492 0
	ld.a	%a3, [%a2] 16
	ld.bu	%d2, [%a3] 11
.LVL42:
	and	%d2, %d2, 7
	st.w	[%a15] 4, %d2
	.loc 1 7503 0
	ld.a	%a2, [%a2] 16
	ld.w	%d2, [%a2]0
	st.w	[%a15] 72, %d2
.LVL43:
	lea	%a15, [%a15] 256
.LBE68:
.LBE74:
	.loc 1 3751 0
	jne	%d8, 5, .L10
.LVL44:
.L6:
	.loc 1 3818 0
	mov.a	%a2, %d14
	mov	%d15, 1
	lea	%a15, [%a2] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a15, %d13, 0
	ld.a	%a15, [%a15]0
	st.b	[%a15]0, %d15
	ret
.LFE19:
	.size	Spi_Init, .-Spi_Init
	.align 1
	.global	Spi_DeInit
	.type	Spi_DeInit, @function
Spi_DeInit:
.LFB20:
	.loc 1 3858 0
.LVL45:
	.loc 1 3868 0
	call	Mcal_GetCpuIndex
.LVL46:
	mov	%d8, %d2
.LVL47:
.LBB89:
.LBB90:
	.loc 1 7659 0
	call	Mcal_GetCpuIndex
.LVL48:
	movh	%d14, hi:Spi_RuntimeCoreVar
	mov.a	%a15, %d14
	movh.a	%a2, hi:Spi_kGlobalConfigPtr
	lea	%a13, [%a15] lo:Spi_RuntimeCoreVar
	.loc 1 7687 0
	mov.d	%d3, %a13
	lea	%a12, [%a2] lo:Spi_kGlobalConfigPtr
	madd	%d9, %d3, %d2, 4
	.loc 1 7659 0
	mov	%d15, 0
.LBB91:
.LBB92:
.LBB93:
.LBB94:
	.loc 1 7248 0
	mov.aa	%a14, %a12
.LVL49:
.L15:
	ld.a	%a15, [%a12]0
	call	Mcal_GetCpuIndex
.LVL50:
	.loc 1 7247 0
	addsc.a	%a15, %a15, %d2, 2
.LVL51:
	.loc 1 7249 0
	ld.a	%a15, [%a15]0
	ld.w	%d3, [%a15] 36
.LVL52:
	.loc 1 7255 0
	extr.u	%d3, %d3, %d15, 2
.LVL53:
.LBE94:
.LBE93:
.LBE92:
.LBE91:
	.loc 1 7669 0
	jeq	%d3, 1, .L29
.LVL54:
.L13:
	add	%d15, 3
	.loc 1 7665 0
	ne	%d3, %d15, 15
	jnz	%d3, .L15
.LVL55:
.LBE90:
.LBE89:
	.loc 1 3899 0
	sh	%d13, %d8, 2
	addsc.a	%a15, %a13, %d13, 0
	mov	%d15, 0
	ld.a	%a15, [%a15]0
.LBB98:
.LBB99:
	.loc 1 7419 0
	movh	%d12, 15
	.loc 1 7410 0
	mov	%e8, 0
.LVL56:
.LBE99:
.LBE98:
	.loc 1 3899 0
	st.b	[%a15]0, %d15
.LBB103:
.LBB100:
	.loc 1 7419 0
	addi	%d12, %d12, 12543
.LBE100:
.LBE103:
	.loc 1 3899 0
	lea	%a15, -268428288
.LBB104:
.LBB101:
	.loc 1 7428 0
	movh	%d11, 5
	.loc 1 7439 0
	mov	%d15, 5200
	.loc 1 7456 0
	mov.u	%d10, 40959
.LVL57:
.L18:
.LBE101:
.LBE104:
.LBB105:
.LBB106:
.LBB107:
.LBB108:
	.loc 1 7248 0
	ld.a	%a14, [%a12]0
	call	Mcal_GetCpuIndex
.LVL58:
	.loc 1 7247 0
	addsc.a	%a2, %a14, %d2, 2
	.loc 1 7249 0
	ld.a	%a2, [%a2]0
	ld.w	%d3, [%a2] 36
.LVL59:
	.loc 1 7255 0
	extr.u	%d3, %d3, %d8, 2
.LVL60:
.LBE108:
.LBE107:
.LBE106:
.LBE105:
	.loc 1 3922 0
	jne	%d3, 1, .L17
.LVL61:
.LBB109:
.LBB102:
	.loc 1 7410 0
	st.w	[%a15] 4, %d9
.LVL62:
	.loc 1 7419 0
	st.w	[%a15] 16, %d12
	.loc 1 7428 0
	st.w	[%a15] 20, %d11
.LVL63:
	.loc 1 7439 0
	st.w	[%a15] 32, %d15
.LVL64:
	st.w	[%a15] 36, %d15
.LVL65:
	st.w	[%a15] 40, %d15
.LVL66:
	st.w	[%a15] 44, %d15
.LVL67:
	st.w	[%a15] 48, %d15
.LVL68:
	st.w	[%a15] 52, %d15
.LVL69:
	st.w	[%a15] 56, %d15
.LVL70:
	st.w	[%a15] 60, %d15
.LVL71:
	.loc 1 7450 0
	st.w	[%a15] 72, %d9
	.loc 1 7456 0
	st.w	[%a15] 84, %d10
.LBE102:
.LBE109:
	.loc 1 3942 0
	mov.aa	%a4, %a15
	mov	%d4, 1
	call	Mcal_WritePeripEndInitProtReg
.LVL72:
.L17:
	add	%d8, 3
	.loc 1 3917 0 discriminator 2
	ne	%d3, %d8, 15
	lea	%a15, [%a15] 256
	jnz	%d3, .L18
	.loc 1 3954 0
	addsc.a	%a15, %a13, %d13, 0
	mov	%d15, 0
	mov.a	%a2, %d14
	st.w	[%a15]0, %d15
.LVL73:
	ld.w	%d15, [%a2] lo:Spi_RuntimeCoreVar
	eq	%d3, %d15, 0
	ld.w	%d15, [%a13] 4
	seln	%d2, %d15, %d3, 0
	ld.w	%d15, [%a13] 8
	seln	%d3, %d15, %d2, 0
.LVL74:
	ld.w	%d2, [%a13] 12
	.loc 1 3966 0
	seln	%d15, %d2, %d3, 0
	.loc 1 3975 0
	mov	%d2, 0
	.loc 1 3966 0
	jeq	%d15, 1, .L30
	.loc 1 3986 0
	ret
.LVL75:
.L29:
.LBB110:
.LBB97:
.LBB95:
.LBB96:
	.loc 1 7248 0
	ld.a	%a15, [%a14]0
.LVL76:
	call	Mcal_GetCpuIndex
.LVL77:
	.loc 1 7247 0
	addsc.a	%a15, %a15, %d2, 2
.LVL78:
	.loc 1 7249 0
	ld.a	%a15, [%a15]0
	ld.w	%d2, [%a15] 36
.LVL79:
	.loc 1 7255 0
	extr.u	%d2, %d2, %d15, 2
.LVL80:
	.loc 1 7258 0
	jne	%d2, 1, .L13
.LVL81:
.LBE96:
.LBE95:
	.loc 1 7687 0
	mov.a	%a2, %d9
	ld.a	%a15, [%a2]0
.LVL82:
	ld.bu	%d2, [%a15]0
	jne	%d2, 2, .L13
.LBE97:
.LBE110:
	.loc 1 3982 0
	mov	%d2, 1
.LVL83:
	ret
.LVL84:
.L30:
	.loc 1 3968 0
	mov	%d3, 0
.LVL85:
	movh.a	%a2, hi:Spi_kGlobalConfigPtr
	st.w	[%a2] lo:Spi_kGlobalConfigPtr, %d3
	ret
.LFE20:
	.size	Spi_DeInit, .-Spi_DeInit
	.align 1
	.global	Spi_SyncTransmit
	.type	Spi_SyncTransmit, @function
Spi_SyncTransmit:
.LFB21:
	.loc 1 4224 0
.LVL86:
	sub.a	%SP, 96
.LCFI0:
	.loc 1 4224 0
	mov	%d15, %d4
	.loc 1 4229 0
	call	Mcal_GetCpuIndex
.LVL87:
	.loc 1 4248 0
	movh.a	%a12, hi:Spi_kGlobalConfigPtr
	ld.a	%a2, [%a12] lo:Spi_kGlobalConfigPtr
.LVL88:
	ld.a	%a3, [%a2] 16
	.loc 1 4254 0
	sh	%d2, 2
.LVL89:
	addsc.a	%a2, %a2, %d2, 0
.LVL90:
	.loc 1 4248 0
	addsc.a	%a15, %a3, %d15, 0
	.loc 1 4255 0
	ld.a	%a3, [%a2]0
.LVL91:
	ld.bu	%d3, [%a15]0
	ld.a	%a3, [%a3]0
	mul	%d8, %d3, 12
	st.w	[%SP] 60, %d3
	.loc 1 4254 0
	st.w	[%SP] 80, %d2
	.loc 1 4255 0
	addsc.a	%a3, %a3, %d8, 0
	ld.bu	%d15, [%a3] 10
.LVL92:
	st.w	[%SP] 64, %d15
.LVL93:
	.loc 1 4261 0
	call	SchM_Enter_Spi_SyncLock
.LVL94:
	.loc 1 4275 0
	ld.w	%d3, [%SP] 80
	movh.a	%a2, hi:Spi_RuntimeCoreVar
	lea	%a2, [%a2] lo:Spi_RuntimeCoreVar
	addsc.a	%a3, %a2, %d3, 0
	ld.w	%d3, [%SP] 64
	ld.a	%a15, [%a3]0
	ld.w	%d15, [%a15] 4
	and	%d3, %d15
	jnz	%d3, .L32
	.loc 1 4276 0
	ld.bu	%d3, [%a15]0
	jeq	%d3, 2, .L32
	.loc 1 4285 0
	ld.w	%d3, [%SP] 64
	or	%d15, %d3
	.loc 1 4289 0
	mov	%d3, 2
	st.b	[%a15]0, %d3
	.loc 1 4285 0
	st.w	[%a15] 4, %d15
	.loc 1 4294 0
	call	SchM_Exit_Spi_SyncLock
.LVL95:
.LBB142:
.LBB143:
	.loc 1 7847 0
	call	Mcal_GetCpuIndex
.LVL96:
	.loc 1 7848 0
	ld.a	%a3, [%a12] lo:Spi_kGlobalConfigPtr
	.loc 1 7854 0
	movh.a	%a15, hi:Spi_RuntimeCoreVar
	.loc 1 7848 0
	sh	%d2, 2
.LVL97:
	.loc 1 7854 0
	lea	%a15, [%a15] lo:Spi_RuntimeCoreVar
	.loc 1 7848 0
	addsc.a	%a2, %a3, %d2, 0
	.loc 1 7854 0
	addsc.a	%a3, %a15, %d2, 0
	ld.w	%d3, [%SP] 60
	ld.a	%a3, [%a3]0
	ld.a	%a3, [%a3] 8
	.loc 1 7848 0
	ld.a	%a4, [%a2]0
.LVL98:
.LBB144:
.LBB145:
.LBB146:
.LBB147:
.LBB148:
.LBB149:
	.loc 1 9074 0
	movh	%d1, 56
.LBE149:
.LBE148:
.LBE147:
.LBE146:
.LBE145:
.LBE144:
	.loc 1 7854 0
	addsc.a	%a3, %a3, %d3, 0
	mov	%d3, 1
	st.b	[%a3]0, %d3
	.loc 1 7857 0
	ld.a	%a3, [%a4]0
	.loc 1 7861 0
	mov	%d3, 0
.LBB218:
.LBB213:
.LBB165:
.LBB160:
.LBB154:
.LBB150:
	.loc 1 9074 0
	addi	%d1, %d1, 512
.LBE150:
.LBE154:
.LBE160:
.LBE165:
.LBE213:
.LBE218:
	.loc 1 7857 0
	addsc.a	%a3, %a3, %d8, 0
	.loc 1 7848 0
	st.w	[%SP] 76, %d2
	.loc 1 7861 0
	ld.a	%a15, [%a3] 4
	.loc 1 7857 0
	st.a	[%SP] 68, %a3
.LVL99:
	.loc 1 7861 0
	st.w	[%SP] 72, %d3
	ld.hu	%d15, [%a15]0
.LBB219:
.LBB214:
.LBB166:
.LBB161:
.LBB155:
.LBB151:
	.loc 1 9074 0
	addih	%d13, %d1, 65488
.LBE151:
.LBE155:
.LBE161:
.LBE166:
.LBE214:
.LBE219:
	.loc 1 7861 0
	st.w	[%SP] 44, %d15
.LVL100:
.L91:
	ld.w	%d15, [%SP] 72
.LBB220:
.LBB215:
	.loc 1 7979 0
	st.w	[%SP] 4, %d1
	extr.u	%d15, %d15, 0, 16
	st.w	[%SP] 84, %d15
.LVL101:
	call	Mcal_GetCpuIndex
.LVL102:
	.loc 1 7980 0
	movh.a	%a2, hi:Spi_kGlobalConfigPtr
	lea	%a2, [%a2] lo:Spi_kGlobalConfigPtr
	ld.w	%d3, [%a2]0
	sh	%d2, 2
.LVL103:
	mov.a	%a3, %d3
	addsc.a	%a2, %a3, %d2, 0
	.loc 1 7998 0
	movh.a	%a3, hi:Spi_RuntimeCoreVar
	.loc 1 7980 0
	ld.a	%a2, [%a2]0
	.loc 1 7998 0
	lea	%a3, [%a3] lo:Spi_RuntimeCoreVar
	.loc 1 7994 0
	ld.w	%d3, [%SP] 44
	ld.w	%d15, [%a2] 4
	.loc 1 7980 0
	st.a	[%SP] 48, %a2
.LVL104:
	.loc 1 7998 0
	addsc.a	%a2, %a3, %d2, 0
.LVL105:
	.loc 1 7994 0
	madd	%d3, %d15, %d3, 24
	.loc 1 7998 0
	ld.a	%a2, [%a2]0
	ld.a	%a2, [%a2] 12
	.loc 1 7994 0
	mov.a	%a13, %d3
.LVL106:
	.loc 1 7998 0
	ld.w	%d3, [%SP] 44
.LVL107:
	mov	%d15, 1
	addsc.a	%a2, %a2, %d3, 0
	.loc 1 7995 0
	ld.bu	%d8, [%a13] 22
.LVL108:
	.loc 1 7998 0
	st.b	[%a2]0, %d15
.LVL109:
	.loc 1 7980 0
	st.w	[%SP] 56, %d2
.LBB167:
.LBB168:
	.loc 1 8263 0
	call	Mcal_GetCpuIndex
.LVL110:
	.loc 1 8271 0
	ld.bu	%d15, [%a13] 20
	.loc 1 8265 0
	movh.a	%a3, hi:Spi_kGlobalConfigPtr
	.loc 1 8271 0
	and	%d3, %d15, 15
	sh	%d4, %d3, 8
	mov.a	%a2, %d4
	.loc 1 8265 0
	lea	%a3, [%a3] lo:Spi_kGlobalConfigPtr
	.loc 1 8271 0
	lea	%a15, [%a2] 7168
	.loc 1 8265 0
	ld.a	%a2, [%a3]0
	.loc 1 8271 0
	addih.a	%a15, %a15, 61440
.LVL111:
	.loc 1 8281 0
	ld.w	%d6, [%a15] 16
	.loc 1 8265 0
	addsc.a	%a2, %a2, %d2, 2
	.loc 1 8273 0
	sh	%d5, %d15, -4
.LVL112:
	.loc 1 8289 0
	ld.a	%a2, [%a2]0
	.loc 1 8281 0
	mov	%d15, 16384
	and	%d15, %d6
	.loc 1 8289 0
	addsc.a	%a2, %a2, %d3, 2
	.loc 1 8275 0
	ld.w	%d4, [%a13] 4
.LVL113:
	.loc 1 8289 0
	ld.a	%a2, [%a2] 16
	movh	%d6, 8448
	addi	%d6, %d6, 15360
	ld.bu	%d3, [%a2] 13
.LVL114:
	or	%d6, %d15
	.loc 1 8275 0
	sh	%d15, %d4, -16
.LVL115:
	.loc 1 8284 0
	or	%d15, %d6
.LVL116:
	.loc 1 8289 0
	ld.w	%d1, [%SP] 4
	jne	%d3, 1, .L33
.LVL117:
	.loc 1 8295 0
	ld.w	%d3, [%a2] 16
	sh	%d3, %d3, 16
	insert	%d3, %d3, 15, 15, 1
	or	%d15, %d3
.LVL118:
.L33:
	.loc 1 8360 0
	st.w	[%a15] 16, %d15
.LVL119:
	.loc 1 8370 0
	movh	%d15, 5888
.LVL120:
	addi	%d15, %d15, 127
	st.w	[%a15] 20, %d15
.LVL121:
	.loc 1 8378 0
	and	%d15, %d5, 7
	addi	%d15, %d15, 8
	addsc.a	%a2, %a15, %d15, 2
	.loc 1 8352 0
	insert	%d4, %d4, 0, 16, 16
.LVL122:
	.loc 1 8381 0
	mov	%d15, 4095
	.loc 1 8378 0
	st.w	[%a2]0, %d4
	.loc 1 8381 0
	st.w	[%a15] 84, %d15
.LBE168:
.LBE167:
	.loc 1 8006 0
	ld.bu	%d15, [%a13] 20
	.loc 1 8004 0
	ld.a	%a15, [%a13] 12
.LVL123:
	.loc 1 8011 0
	and	%d15, %d15, 15
	sh	%d15, %d15, 8
	.loc 1 8004 0
	ld.bu	%d3, [%a15]0
	.loc 1 8011 0
	mov.a	%a2, %d15
	.loc 1 8004 0
	st.w	[%SP] 32, %d3
.LVL124:
	.loc 1 8011 0
	lea	%a14, [%a2] 7168
	and	%d8, %d8, 1
.LVL125:
	mov	%d3, 0
	.loc 1 7973 0
	mov	%d15, 0
	.loc 1 7972 0
	mov	%d12, 1
	.loc 1 8011 0
	addih.a	%a14, %a14, 61440
.LVL126:
	st.w	[%SP] 52, %d8
	st.w	[%SP] 28, %d3
	.loc 1 7973 0
	st.w	[%SP] 24, %d15
	st.w	[%SP] 40, %d12
.LVL127:
.L79:
	ld.w	%d15, [%SP] 28
	.loc 1 8020 0
	ld.w	%d3, [%SP] 28
	and	%d15, 255
	st.w	[%SP] 36, %d15
.LVL128:
	and	%d15, %d3, 255
	addsc.a	%a15, %a15, %d15, 0
	ld.w	%d12, [%SP] 24
	ld.bu	%d15, [%a15] 1
.LBB169:
.LBB170:
	.loc 1 8422 0
	st.w	[%SP] 4, %d1
.LBE170:
.LBE169:
	.loc 1 8020 0
	eq	%d15, %d15, 255
	cmov	%d12, %d15, 1
	st.w	[%SP] 24, %d12
.LVL129:
.LBB172:
.LBB171:
	.loc 1 8422 0
	call	Mcal_GetCpuIndex
.LVL130:
	.loc 1 8423 0
	movh.a	%a2, hi:Spi_kGlobalConfigPtr
	lea	%a2, [%a2] lo:Spi_kGlobalConfigPtr
	ld.a	%a15, [%a2]0
	.loc 1 8426 0
	ld.w	%d15, [%SP] 32
	.loc 1 8457 0
	ld.w	%d3, [%SP] 52
	.loc 1 8426 0
	mul	%d9, %d15, 12
	.loc 1 8423 0
	addsc.a	%a15, %a15, %d2, 2
	.loc 1 8431 0
	ld.bu	%d15, [%a13] 20
	.loc 1 8426 0
	ld.a	%a15, [%a15]0
	.loc 1 8431 0
	and	%d15, %d15, 15
	.loc 1 8425 0
	ld.a	%a15, [%a15] 8
	.loc 1 8431 0
	sh	%d15, %d15, 8
	mov.a	%a2, %d15
	.loc 1 8425 0
	addsc.a	%a3, %a15, %d9, 0
.LVL131:
	.loc 1 8431 0
	lea	%a15, [%a2] 7168
	addih.a	%a15, %a15, 61440
.LVL132:
	.loc 1 8434 0
	mov	%d15, 4095
	st.w	[%a15] 84, %d15
.LVL133:
	.loc 1 8439 0
	ld.bu	%d2, [%a13] 21
.LVL134:
	.loc 1 8438 0
	ld.w	%d15, [%a13] 8
.LVL135:
	ld.a	%a2, [%SP] 48
	.loc 1 8439 0
	ins.t	%d15, %d15,19, %d2,0
.LVL136:
	.loc 1 8443 0
	ld.bu	%d2, [%a13] 20
	sh	%d2, -4
	insert	%d15, %d15, %d2, 28, 4
	.loc 1 8446 0
	ld.bu	%d2, [%a3] 7
	ins.t	%d15, %d15,21, %d2,7
	.loc 1 8452 0
	and	%d2, %d2, 127
	add	%d2, -1
	insert	%d15, %d15, %d2, 23, 5
	.loc 1 8457 0
	ins.t	%d15, %d15,0, %d3,0
	.loc 1 8459 0
	insert	%d15, %d15, 0, 22, 1
.LVL137:
	.loc 1 8460 0
	insert	%d15, %d15, 1, 20, 1
.LVL138:
.LBE171:
.LBE172:
	.loc 1 8034 0
	st.w	[%a14] 96, %d15
.LVL139:
	ld.w	%d15, [%a2] 8
.LVL140:
.LBB173:
.LBB174:
	.loc 1 4574 0
	ld.w	%d1, [%SP] 4
	mov.a	%a3, %d15
.LVL141:
	addsc.a	%a15, %a3, %d9, 0
.LVL142:
	ld.bu	%d15, [%a15] 7
	and	%d15, %d15, 127
	ge.u	%d2, %d15, 17
	jnz	%d2, .L35
	.loc 1 4580 0
	jlt.u	%d15, 9, .L182
.LVL143:
.LBE174:
.LBE173:
.LBB175:
.LBB176:
	.loc 1 8707 0
	st.w	[%SP] 4, %d1
.LVL144:
	call	Mcal_GetCpuIndex
.LVL145:
	.loc 1 8709 0
	movh.a	%a2, hi:Spi_kGlobalConfigPtr
	lea	%a2, [%a2] lo:Spi_kGlobalConfigPtr
	ld.a	%a4, [%a2]0
.LVL146:
	.loc 1 8708 0
	sh	%d5, %d2, 2
	.loc 1 8712 0
	ld.bu	%d3, [%a13] 20
	.loc 1 8708 0
	addsc.a	%a15, %a4, %d5, 0
.LVL147:
	.loc 1 8712 0
	and	%d3, %d3, 15
	.loc 1 8711 0
	ld.a	%a3, [%a15]0
	.loc 1 8700 0
	mov	%d0, 0
	.loc 1 8729 0
	ld.w	%d1, [%SP] 4
	.loc 1 8711 0
	ld.w	%d2, [%a3] 8
.LVL148:
	.loc 1 8717 0
	movh.a	%a3, hi:Spi_RuntimeCoreVar
	lea	%a3, [%a3] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a3, %d5, 0
.LVL149:
	ld.a	%a15, [%a15]0
	.loc 1 8718 0
	ld.a	%a15, [%a15] 24
	addsc.a	%a15, %a15, %d9, 0
	.loc 1 8723 0
	ld.w	%d11, [%a15] 4
	.loc 1 8717 0
	ld.w	%d8, [%a15]0
.LVL150:
	.loc 1 8729 0
	jz	%d11, .L183
.LVL151:
	.loc 1 8699 0
	mov	%d7, 0
	.loc 1 8742 0
	jz	%d8, .L184
.LVL152:
.L52:
	.loc 1 8761 0
	sh	%d3, %d3, 8
.LVL153:
	.loc 1 8767 0
	ld.hu	%d5, [%a13] 16
	.loc 1 8761 0
	mov.a	%a2, %d3
	.loc 1 8767 0
	ld.w	%d2, [%SP] 40
.LVL154:
	mov.u	%d3, 65535
	ne	%d3, %d5, %d3
	.loc 1 8761 0
	lea	%a12, [%a2] 7168
	.loc 1 8767 0
	and	%d2, %d3
	.loc 1 8754 0
	ld.hu	%d14, [%a15] 8
.LVL155:
	.loc 1 8761 0
	addih.a	%a12, %a12, 61440
.LVL156:
	.loc 1 8767 0
	jnz	%d2, .L185
.LVL157:
.L53:
	.loc 1 8749 0
	mov	%d9, 0
	.loc 1 8801 0
	mov	%d10, 1536
.LVL158:
.L64:
	sub	%d15, %d14, %d9
	.loc 1 8792 0
	extr.u	%d15, %d15, 0, 16
	eq	%d15, %d15, 1
	.loc 1 8794 0
	and	%d15, %d12
	jnz	%d15, .L186
.LVL159:
.L54:
	.loc 1 8805 0
	mov.a	%a2, %d8
	.loc 1 8801 0
	st.w	[%a12] 84, %d10
	.loc 1 8805 0
	ld.hu	%d15, [%a2]0
	.loc 1 8814 0
	caddn	%d8, %d7, %d8, 2
.LVL160:
	.loc 1 8805 0
	st.w	[%a12] 100, %d15
.LBB177:
.LBB178:
	.loc 1 9074 0
	ld.w	%d15, [%a12] 64
	.loc 1 9068 0
	ld.w	%d2, [%a4] 36
.LVL161:
	.loc 1 9074 0
	and	%d15, %d1
	jeq	%d15, %d13, .L56
	.loc 1 9075 0
	jz	%d2, .L57
	.loc 1 9080 0
	ld.w	%d15, [%a12] 64
	and	%d15, %d15, 127
	jnz	%d15, .L57
	.loc 1 9074 0
	ld.w	%d15, [%a12] 64
	mov.a	%a15, %d2
	and	%d15, %d1
	add.a	%a15, -1
	.loc 1 9086 0
	add	%d2, -1
.LVL162:
	.loc 1 9074 0
	jeq	%d15, %d13, .L56
.L187:
	loop	%a15, .L61
.LVL163:
.L57:
	.loc 1 9092 0
	ld.w	%d2, [%a12] 64
	mov	%d8, 1
.LVL164:
.L51:
.LBE178:
.LBE177:
.LBE176:
.LBE175:
	.loc 1 8073 0
	ld.w	%d15, [%SP] 24
	or	%d15, %d8
	jnz	%d15, .L142
.L84:
.LVL165:
	ld.w	%d15, [%SP] 36
	.loc 1 8122 0
	ld.a	%a15, [%a13] 12
	add	%d15, 1
	and	%d15, 255
	addsc.a	%a2, %a15, %d15, 0
	ld.w	%d15, [%SP] 28
	ld.bu	%d3, [%a2]0
	add	%d15, 1
	st.w	[%SP] 32, %d3
.LVL166:
	.loc 1 8068 0
	mov	%d3, 0
	st.w	[%SP] 40, %d3
	.loc 1 8153 0
	ld.w	%d3, [%SP] 32
	st.w	[%SP] 28, %d15
.LVL167:
	ne	%d15, %d3, 255
	jnz	%d15, .L79
	ld.w	%d3, [%SP] 56
	movh.a	%a2, hi:Spi_RuntimeCoreVar
	lea	%a2, [%a2] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d3, [%SP] 44
	ld.a	%a15, [%a15]0
	j	.L86
.LVL168:
.L61:
.LBB189:
.LBB185:
.LBB180:
.LBB179:
	.loc 1 9080 0
	ld.w	%d15, [%a12] 64
	and	%d15, %d15, 127
	jnz	%d15, .L57
	.loc 1 9074 0
	ld.w	%d15, [%a12] 64
	.loc 1 9086 0
	add	%d2, -1
.LVL169:
	.loc 1 9074 0
	and	%d15, %d1
	jne	%d15, %d13, .L187
.L56:
	.loc 1 9092 0
	ld.w	%d15, [%a12] 64
	eq	%d3, %d2, 0
	and	%d15, %d15, 127
	or.ne	%d3, %d15, 0
	jnz	%d3, .L110
.LBE179:
.LBE180:
	.loc 1 8825 0
	ld.w	%d15, [%a12] 144
	mov.a	%a3, %d11
	add	%d9, 1
.LVL170:
	st.h	[%a3]0, %d15
	.loc 1 8846 0
	extr.u	%d15, %d9, 0, 16
	.loc 1 8834 0
	caddn	%d11, %d0, %d11, 2
.LVL171:
	.loc 1 8846 0
	jne	%d14, %d15, .L64
.LVL172:
.L166:
.LBE185:
.LBE189:
.LBB190:
.LBB162:
	.loc 1 9036 0
	mov	%d8, 0
	j	.L51
.LVL173:
.L82:
.LBE162:
.LBE190:
.LBB191:
	.loc 1 8081 0
	ld.w	%d15, [%a14] 64
.LVL174:
	and	%d15, %d15, 127
.LVL175:
	.loc 1 8082 0
	jnz	%d15, .L81
.LVL176:
.L142:
.LBE191:
	.loc 1 8077 0
	ld.w	%d15, [%a14] 64
	sh	%d15, %d15, -28
	jnz	%d15, .L82
.L81:
	.loc 1 8089 0
	ld.hu	%d15, [%a13] 16
	mov.u	%d2, 65535
	jeq	%d15, %d2, .L83
.LVL177:
.LBB192:
.LBB193:
	.loc 1 9134 0
	and	%d3, %d15, 15
	.loc 1 9141 0
	extr.u	%d15, %d15, 4, 8
.LVL178:
.LBE193:
.LBE192:
	.loc 1 8094 0
	ld.bu	%d2, [%a13] 19
.LBB195:
.LBB194:
	.loc 1 9141 0
	sh	%d15, %d15, 8
	mov.a	%a2, %d15
	.loc 1 9133 0
	seln	%d2, %d2, %d2, 16
	.loc 1 9134 0
	add	%d3, %d2
	.loc 1 9141 0
	lea	%a15, [%a2] -24576
	.loc 1 9135 0
	mov	%d2, 1
	sh	%d2, %d2, %d3
.LVL179:
	.loc 1 9141 0
	addih.a	%a15, %a15, 61444
	st.w	[%a15] 4, %d2
.LVL180:
.L83:
.LBE194:
.LBE195:
	.loc 1 8114 0
	jz	%d8, .L84
	.loc 1 8134 0
	ld.w	%d3, [%SP] 56
	movh.a	%a2, hi:Spi_RuntimeCoreVar
	lea	%a2, [%a2] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a2, %d3, 0
	ld.w	%d3, [%SP] 44
	ld.a	%a15, [%a15]0
	ld.a	%a3, [%a15] 12
	mov	%d15, 2
	.loc 1 8148 0
	mov	%d8, 1
.LVL181:
	.loc 1 8134 0
	addsc.a	%a2, %a3, %d3, 0
	st.b	[%a2]0, %d15
	.loc 1 8140 0
	ld.w	%d15, [%a14] 16
	.loc 1 8141 0
	insert	%d15, %d15, 1, 30, 2
.LVL182:
	.loc 1 8148 0
	st.w	[%a14] 16, %d15
.LVL183:
.L86:
	.loc 1 8158 0
	ld.a	%a15, [%a15] 12
	addsc.a	%a15, %a15, %d3, 0
	ld.bu	%d15, [%a15]0
.LVL184:
	jne	%d15, 1, .L87
	.loc 1 8161 0
	mov	%d15, 0
	ld.w	%d3, [%SP] 44
	st.b	[%a15]0, %d15
.L87:
.LBE215:
.LBE220:
	.loc 1 7880 0
	ld.w	%d15, [%SP] 76
	movh.a	%a2, hi:Spi_RuntimeCoreVar
	lea	%a2, [%a2] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a2, %d15, 0
	ld.a	%a2, [%a15]0
	ld.a	%a4, [%a2] 12
	addsc.a	%a15, %a4, %d3, 0
	ld.bu	%d15, [%a15]0
	jeq	%d15, 2, .L188
.LVL185:
	ld.w	%d15, [%SP] 84
	.loc 1 7902 0
	ld.a	%a3, [%SP] 68
	add	%d15, 1
	ld.a	%a15, [%a3] 4
	extr.u	%d15, %d15, 0, 16
	addsc.a	%a15, %a15, %d15, 1
.LVL186:
	ld.w	%d15, [%SP] 72
	ld.hu	%d3, [%a15]0
.LVL187:
	add	%d15, 1
	st.w	[%SP] 72, %d15
.LVL188:
	st.w	[%SP] 44, %d3
	.loc 1 7929 0
	mov.u	%d15, 65535
	jne	%d3, %d15, .L91
	ld.a	%a3, [%a2] 8
	ld.w	%d3, [%SP] 60
.LVL189:
	addsc.a	%a15, %a3, %d3, 0
.LVL190:
	.loc 1 7936 0
	ld.bu	%d15, [%a15]0
	jne	%d15, 1, .L92
	.loc 1 7938 0
	mov	%d3, 0
	st.b	[%a15]0, %d3
.LVL191:
.L92:
.LBE143:
.LBE142:
	.loc 1 4307 0
	call	SchM_Enter_Spi_SyncLock
.LVL192:
	.loc 1 4308 0
	ld.w	%d15, [%SP] 80
	movh.a	%a2, hi:Spi_RuntimeCoreVar
	lea	%a2, [%a2] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a2, %d15, 0
	ld.w	%d15, [%SP] 64
	ld.a	%a15, [%a15]0
	not	%d15
	and	%d15, 255
	ld.w	%d2, [%a15] 4
	and	%d15, %d2
	st.w	[%a15] 4, %d15
	.loc 1 4309 0
	jnz	%d15, .L93
	.loc 1 4311 0
	mov	%d15, 1
	st.b	[%a15]0, %d15
.L93:
	.loc 1 4314 0
	call	SchM_Exit_Spi_SyncLock
.LVL193:
	.loc 1 4341 0
	mov	%d2, %d8
	ret
.LVL194:
.L110:
.LBB225:
.LBB223:
.LBB221:
.LBB216:
.LBB196:
.LBB163:
.LBB156:
.LBB152:
	.loc 1 9092 0
	mov	%d8, 1
	j	.L51
.LVL195:
.L35:
.LBE152:
.LBE156:
	.loc 1 8907 0
	st.w	[%SP] 4, %d1
.LVL196:
	call	Mcal_GetCpuIndex
.LVL197:
	.loc 1 8909 0
	movh.a	%a2, hi:Spi_kGlobalConfigPtr
	lea	%a2, [%a2] lo:Spi_kGlobalConfigPtr
	ld.a	%a3, [%a2]0
.LVL198:
	.loc 1 8908 0
	sh	%d5, %d2, 2
	.loc 1 8912 0
	ld.bu	%d3, [%a13] 20
	.loc 1 8908 0
	addsc.a	%a15, %a3, %d5, 0
.LVL199:
	.loc 1 8912 0
	and	%d3, %d3, 15
	.loc 1 8911 0
	ld.a	%a2, [%a15]0
	.loc 1 8900 0
	mov	%d7, 0
	.loc 1 8929 0
	ld.w	%d1, [%SP] 4
	.loc 1 8911 0
	ld.w	%d2, [%a2] 8
.LVL200:
	.loc 1 8916 0
	movh.a	%a2, hi:Spi_RuntimeCoreVar
	lea	%a2, [%a2] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a2, %d5, 0
.LVL201:
	ld.a	%a15, [%a15]0
	.loc 1 8917 0
	ld.a	%a15, [%a15] 24
	addsc.a	%a15, %a15, %d9, 0
	.loc 1 8922 0
	ld.w	%d11, [%a15] 4
	.loc 1 8916 0
	ld.w	%d8, [%a15]0
.LVL202:
	.loc 1 8929 0
	jz	%d11, .L189
.LVL203:
.L102:
	.loc 1 8899 0
	mov	%d6, 0
	.loc 1 8940 0
	jz	%d8, .L190
.LVL204:
.L65:
	.loc 1 8954 0
	sh	%d3, %d3, 8
.LVL205:
	.loc 1 8947 0
	ld.hu	%d14, [%a15] 8
.LVL206:
	.loc 1 8954 0
	mov.a	%a15, %d3
.LVL207:
	.loc 1 8960 0
	ld.hu	%d3, [%a13] 16
	mov.u	%d2, 65535
.LVL208:
	ld.w	%d15, [%SP] 40
	ne	%d2, %d3, %d2
	.loc 1 8954 0
	lea	%a12, [%a15] 7168
	.loc 1 8960 0
	and	%d15, %d2
	.loc 1 8954 0
	addih.a	%a12, %a12, 61440
.LVL209:
	.loc 1 8960 0
	jnz	%d15, .L191
.LVL210:
.L66:
	.loc 1 8943 0
	mov	%d9, 0
	sub	%d15, %d14, %d9
	.loc 1 8983 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 8992 0
	mov	%d10, 1536
.LVL211:
	.loc 1 8983 0
	eq	%d15, %d15, 1
	.loc 1 8985 0
	and	%d15, %d12
	jnz	%d15, .L192
.LVL212:
.L67:
	.loc 1 8995 0
	mov.a	%a2, %d8
	.loc 1 8992 0
	st.w	[%a12] 84, %d10
	.loc 1 8995 0
	ld.w	%d2, [%a2]0
.LVL213:
	.loc 1 9004 0
	caddn	%d8, %d6, %d8, 4
.LVL214:
	.loc 1 8995 0
	st.w	[%a12] 100, %d2
.LBB157:
.LBB153:
	.loc 1 9074 0
	ld.w	%d15, [%a12] 64
	.loc 1 9068 0
	ld.w	%d2, [%a3] 36
.LVL215:
	.loc 1 9074 0
	and	%d15, %d1
	jeq	%d15, %d13, .L69
	.loc 1 9075 0
	jz	%d2, .L70
	.loc 1 9080 0
	ld.w	%d15, [%a12] 64
	and	%d15, %d15, 127
	jnz	%d15, .L70
	.loc 1 9074 0
	ld.w	%d15, [%a12] 64
	mov.a	%a15, %d2
	and	%d15, %d1
	add.a	%a15, -1
	.loc 1 9086 0
	add	%d2, -1
.LVL216:
	.loc 1 9074 0
	jeq	%d15, %d13, .L69
.L193:
	loop	%a15, .L74
.L70:
	.loc 1 9092 0
	ld.w	%d15, [%a12] 64
	mov	%d8, 1
.LVL217:
	j	.L51
.LVL218:
.L74:
	.loc 1 9080 0
	ld.w	%d15, [%a12] 64
	and	%d15, %d15, 127
	jnz	%d15, .L70
	.loc 1 9074 0
	ld.w	%d15, [%a12] 64
	.loc 1 9086 0
	add	%d2, -1
.LVL219:
	.loc 1 9074 0
	and	%d15, %d1
	jne	%d15, %d13, .L193
.L69:
	.loc 1 9092 0
	ld.w	%d15, [%a12] 64
	eq	%d3, %d2, 0
	and	%d15, %d15, 127
	or.ne	%d3, %d15, 0
	jnz	%d3, .L110
.LBE153:
.LBE157:
	.loc 1 9015 0
	ld.w	%d15, [%a12] 144
	mov.a	%a15, %d11
	add	%d9, 1
	st.w	[%a15]0, %d15
	.loc 1 9036 0
	extr.u	%d15, %d9, 0, 16
	.loc 1 9024 0
	caddn	%d11, %d7, %d11, 4
.LVL220:
	.loc 1 9036 0
	jeq	%d14, %d15, .L166
.LVL221:
	sub	%d15, %d14, %d9
	.loc 1 8983 0
	extr.u	%d15, %d15, 0, 16
	eq	%d15, %d15, 1
	.loc 1 8985 0
	and	%d15, %d12
	jz	%d15, .L67
.LVL222:
.L192:
	.loc 1 8987 0
	ld.w	%d4, [%SP] 32
	mov.aa	%a4, %a13
	mov	%d5, 1
	st.w	[%SP] 4, %d1
	st.w	[%SP] 12, %d6
	st.w	[%SP] 8, %d7
	call	Spi_lHwSetChannelConfig
.LVL223:
	movh.a	%a15, hi:Spi_kGlobalConfigPtr
.LVL224:
	.loc 1 8988 0
	st.w	[%a12] 96, %d2
	lea	%a15, [%a15] lo:Spi_kGlobalConfigPtr
	ld.a	%a3, [%a15]0
	ld.w	%d7, [%SP] 8
	ld.w	%d6, [%SP] 12
	ld.w	%d1, [%SP] 4
	j	.L67
.LVL225:
.L182:
.LBE163:
.LBE196:
.LBB197:
.LBB198:
	.loc 1 8520 0
	st.w	[%SP] 4, %d1
.LVL226:
	call	Mcal_GetCpuIndex
.LVL227:
	.loc 1 8522 0
	movh.a	%a3, hi:Spi_kGlobalConfigPtr
	lea	%a3, [%a3] lo:Spi_kGlobalConfigPtr
	ld.a	%a4, [%a3]0
.LVL228:
	.loc 1 8521 0
	sh	%d6, %d2, 2
	.loc 1 8528 0
	movh.a	%a2, hi:Spi_RuntimeCoreVar
	.loc 1 8521 0
	addsc.a	%a15, %a4, %d6, 0
.LVL229:
	.loc 1 8528 0
	lea	%a2, [%a2] lo:Spi_RuntimeCoreVar
	.loc 1 8524 0
	ld.a	%a3, [%a15]0
	.loc 1 8528 0
	addsc.a	%a15, %a2, %d6, 0
.LVL230:
	.loc 1 8525 0
	ld.bu	%d5, [%a13] 20
	.loc 1 8528 0
	ld.a	%a15, [%a15]0
	.loc 1 8529 0
	ld.a	%a15, [%a15] 24
	.loc 1 8524 0
	ld.w	%d2, [%a3] 8
.LVL231:
	.loc 1 8513 0
	mov	%d0, 0
	.loc 1 8529 0
	addsc.a	%a15, %a15, %d9, 0
	.loc 1 8538 0
	ld.w	%d1, [%SP] 4
	.loc 1 8532 0
	ld.w	%d10, [%a15] 4
	.loc 1 8528 0
	ld.w	%d8, [%a15]0
.LVL232:
	.loc 1 8538 0
	jz	%d10, .L194
.LVL233:
	.loc 1 8512 0
	mov	%d7, 0
	.loc 1 8548 0
	jz	%d8, .L195
.LVL234:
.L38:
	.loc 1 8563 0
	and	%d5, %d5, 15
.LVL235:
	sh	%d5, %d5, 8
	.loc 1 8569 0
	ld.hu	%d6, [%a13] 16
	.loc 1 8556 0
	ld.hu	%d14, [%a15] 8
.LVL236:
	.loc 1 8569 0
	ld.w	%d3, [%SP] 40
	.loc 1 8563 0
	mov.a	%a15, %d5
.LVL237:
	.loc 1 8569 0
	mov.u	%d5, 65535
	ne	%d5, %d6, %d5
	.loc 1 8563 0
	lea	%a12, [%a15] 7168
	.loc 1 8569 0
	and	%d3, %d5
	.loc 1 8563 0
	addih.a	%a12, %a12, 61440
.LVL238:
	.loc 1 8569 0
	jnz	%d3, .L196
.LVL239:
.L39:
	.loc 1 8551 0
	mov	%d9, 0
	sub	%d15, %d14, %d9
	.loc 1 8592 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 8601 0
	mov	%d11, 1536
.LVL240:
	.loc 1 8592 0
	eq	%d15, %d15, 1
	.loc 1 8594 0
	and	%d15, %d12
	jnz	%d15, .L197
.LVL241:
.L40:
	.loc 1 8605 0
	mov.a	%a15, %d8
	.loc 1 8601 0
	st.w	[%a12] 84, %d11
	.loc 1 8605 0
	ld.bu	%d15, [%a15]0
	.loc 1 8614 0
	caddn	%d8, %d7, %d8, 1
.LVL242:
	.loc 1 8605 0
	st.w	[%a12] 100, %d15
.LBB199:
.LBB200:
	.loc 1 9074 0
	ld.w	%d15, [%a12] 64
	.loc 1 9068 0
	ld.w	%d2, [%a4] 36
.LVL243:
	.loc 1 9074 0
	and	%d15, %d1
	jeq	%d15, %d13, .L42
	.loc 1 9075 0
	jz	%d2, .L57
	.loc 1 9080 0
	ld.w	%d15, [%a12] 64
	and	%d15, %d15, 127
	jnz	%d15, .L57
	.loc 1 9074 0
	ld.w	%d15, [%a12] 64
	mov.a	%a15, %d2
	and	%d15, %d1
	add.a	%a15, -1
	.loc 1 9086 0
	add	%d2, -1
.LVL244:
	.loc 1 9074 0
	jeq	%d15, %d13, .L42
.L198:
	loop	%a15, .L47
	j	.L57
.L47:
	.loc 1 9080 0
	ld.w	%d15, [%a12] 64
	and	%d15, %d15, 127
	jnz	%d15, .L57
	.loc 1 9074 0
	ld.w	%d15, [%a12] 64
	.loc 1 9086 0
	add	%d2, -1
.LVL245:
	.loc 1 9074 0
	and	%d15, %d1
	jne	%d15, %d13, .L198
.L42:
	.loc 1 9092 0
	ld.w	%d15, [%a12] 64
	eq	%d3, %d2, 0
	and	%d15, %d15, 127
	or.ne	%d3, %d15, 0
	jnz	%d3, .L110
.LBE200:
.LBE199:
	.loc 1 8626 0
	ld.w	%d15, [%a12] 144
	mov.a	%a2, %d10
	add	%d9, 1
	st.b	[%a2]0, %d15
	.loc 1 8647 0
	extr.u	%d15, %d9, 0, 16
	.loc 1 8635 0
	caddn	%d10, %d0, %d10, 1
.LVL246:
	.loc 1 8647 0
	jeq	%d14, %d15, .L166
.LVL247:
	sub	%d15, %d14, %d9
	.loc 1 8592 0
	extr.u	%d15, %d15, 0, 16
	eq	%d15, %d15, 1
	.loc 1 8594 0
	and	%d15, %d12
	jz	%d15, .L40
.LVL248:
.L197:
	.loc 1 8596 0
	mov.aa	%a4, %a13
	ld.w	%d4, [%SP] 32
	mov	%d5, 1
	st.w	[%SP] 12, %d0
	st.w	[%SP] 4, %d1
	st.w	[%SP] 8, %d7
	call	Spi_lHwSetChannelConfig
.LVL249:
	movh.a	%a3, hi:Spi_kGlobalConfigPtr
.LVL250:
	.loc 1 8597 0
	st.w	[%a12] 96, %d2
	lea	%a3, [%a3] lo:Spi_kGlobalConfigPtr
	ld.a	%a4, [%a3]0
	ld.w	%d7, [%SP] 8
	ld.w	%d1, [%SP] 4
	ld.w	%d0, [%SP] 12
	j	.L40
.LVL251:
.L191:
.LBE198:
.LBE197:
.LBB207:
.LBB164:
	.loc 1 8962 0
	ld.bu	%d2, [%a13] 19
	eq	%d5, %d2, 0
.LVL252:
.LBB158:
.LBB159:
	.loc 1 9134 0
	and	%d2, %d3, 15
	.loc 1 9141 0
	extr.u	%d3, %d3, 4, 8
.LVL253:
	.loc 1 9134 0
	madd	%d2, %d2, %d5, 16
	.loc 1 9141 0
	sh	%d3, %d3, 8
	mov.a	%a2, %d3
	.loc 1 9135 0
	mov	%d5, 1
.LVL254:
	.loc 1 9141 0
	lea	%a15, [%a2] -24576
	.loc 1 9135 0
	sh	%d5, %d5, %d2
.LVL255:
	.loc 1 9141 0
	addih.a	%a15, %a15, 61444
	st.w	[%a15] 4, %d5
.LVL256:
	j	.L66
.LVL257:
.L190:
.LBE159:
.LBE158:
	.loc 1 8910 0
	add	%d8, %d2, %d9
.LVL258:
	.loc 1 8943 0
	mov	%d6, 1
	j	.L65
.LVL259:
.L189:
	.loc 1 8933 0
	mov.d	%d15, %SP
	.loc 1 8934 0
	mov	%d7, 1
	.loc 1 8933 0
	addi	%d11, %d15, 92
.LVL260:
	j	.L102
.LVL261:
.L185:
.LBE164:
.LBE207:
.LBB208:
.LBB186:
	.loc 1 8769 0
	ld.bu	%d3, [%a13] 19
.LBB181:
.LBB182:
	.loc 1 9135 0
	mov	%d6, 1
.LBE182:
.LBE181:
	.loc 1 8769 0
	eq	%d2, %d3, 0
.LVL262:
.LBB184:
.LBB183:
	.loc 1 9134 0
	and	%d3, %d5, 15
	madd	%d3, %d3, %d2, 16
	.loc 1 9141 0
	extr.u	%d2, %d5, 4, 8
.LVL263:
	sh	%d2, %d2, 8
	mov.a	%a3, %d2
	.loc 1 9135 0
	sh	%d6, %d6, %d3
.LVL264:
	.loc 1 9141 0
	lea	%a15, [%a3] -24576
.LVL265:
	addih.a	%a15, %a15, 61444
	st.w	[%a15] 4, %d6
.LVL266:
	j	.L53
.LVL267:
.L194:
.LBE183:
.LBE184:
.LBE186:
.LBE208:
.LBB209:
.LBB205:
	.loc 1 8542 0
	mov.d	%d3, %SP
	.loc 1 8543 0
	mov	%d0, 1
	.loc 1 8542 0
	addi	%d10, %d3, 92
.LVL268:
	.loc 1 8512 0
	mov	%d7, 0
	.loc 1 8548 0
	jnz	%d8, .L38
.LVL269:
.L195:
	.loc 1 8523 0
	add	%d8, %d2, %d9
.LVL270:
	.loc 1 8551 0
	mov	%d7, 1
	j	.L38
.LVL271:
.L183:
.LBE205:
.LBE209:
.LBB210:
.LBB187:
	.loc 1 8735 0
	mov.d	%d15, %SP
	.loc 1 8736 0
	mov	%d0, 1
	.loc 1 8735 0
	addi	%d11, %d15, 92
.LVL272:
	.loc 1 8699 0
	mov	%d7, 0
	.loc 1 8742 0
	jnz	%d8, .L52
.LVL273:
.L184:
	.loc 1 8710 0
	add	%d8, %d2, %d9
.LVL274:
	.loc 1 8749 0
	mov	%d7, 1
	j	.L52
.LVL275:
.L196:
.LBE187:
.LBE210:
.LBB211:
.LBB206:
	.loc 1 8571 0
	ld.bu	%d3, [%a13] 19
.LBB201:
.LBB202:
	.loc 1 9141 0
	extr.u	%d2, %d6, 4, 8
.LVL276:
.LBE202:
.LBE201:
	.loc 1 8571 0
	eq	%d5, %d3, 0
.LVL277:
.LBB204:
.LBB203:
	.loc 1 9141 0
	sh	%d2, %d2, 8
	.loc 1 9134 0
	and	%d3, %d6, 15
	madd	%d3, %d3, %d5, 16
	.loc 1 9141 0
	mov.a	%a2, %d2
	.loc 1 9135 0
	mov	%d5, 1
.LVL278:
	.loc 1 9141 0
	lea	%a15, [%a2] -24576
	.loc 1 9135 0
	sh	%d5, %d5, %d3
.LVL279:
	.loc 1 9141 0
	addih.a	%a15, %a15, 61444
	st.w	[%a15] 4, %d5
.LVL280:
	j	.L39
.LVL281:
.L188:
.LBE203:
.LBE204:
.LBE206:
.LBE211:
.LBE216:
.LBE221:
	.loc 1 7885 0
	ld.a	%a2, [%a2] 8
	ld.w	%d3, [%SP] 60
	addsc.a	%a2, %a2, %d3, 0
	.loc 1 7890 0
	mov.u	%d3, 65535
	.loc 1 7885 0
	st.b	[%a2]0, %d15
	.loc 1 7890 0
	ld.w	%d15, [%SP] 44
	jeq	%d15, %d3, .L92
	ld.w	%d6, [%SP] 84
	ld.a	%a3, [%SP] 68
	ld.a	%a2, [%a3] 4
	mov	%d3, 0
	add	%d6, 1
	.loc 1 7893 0
	mov	%d5, 2
	.loc 1 7890 0
	mov.u	%d4, 65535
	j	.L90
.LVL282:
.L199:
	addsc.a	%a15, %a4, %d15, 0
.LVL283:
.L90:
	add	%d15, %d6, %d3
	.loc 1 7895 0
	extr.u	%d15, %d15, 0, 16
	.loc 1 7893 0
	st.b	[%a15]0, %d5
.LVL284:
	.loc 1 7895 0
	addsc.a	%a15, %a2, %d15, 1
.LVL285:
	add	%d3, 1
.LVL286:
	ld.hu	%d15, [%a15]0
.LVL287:
	.loc 1 7890 0
	jne	%d15, %d4, .L199
	j	.L92
.LVL288:
.L32:
.LBE223:
.LBE225:
	.loc 1 4322 0
	call	SchM_Exit_Spi_SyncLock
.LVL289:
	.loc 1 4228 0
	mov	%d8, 1
.LVL290:
	.loc 1 4341 0
	mov	%d2, %d8
	ret
.LVL291:
.L186:
.LBB226:
.LBB224:
.LBB222:
.LBB217:
.LBB212:
.LBB188:
	.loc 1 8796 0
	mov.aa	%a4, %a13
	ld.w	%d4, [%SP] 32
	mov	%d5, 1
	st.w	[%SP] 12, %d0
	st.w	[%SP] 4, %d1
	st.w	[%SP] 8, %d7
	call	Spi_lHwSetChannelConfig
.LVL292:
	movh.a	%a15, hi:Spi_kGlobalConfigPtr
.LVL293:
	.loc 1 8797 0
	st.w	[%a12] 96, %d2
	lea	%a15, [%a15] lo:Spi_kGlobalConfigPtr
	ld.a	%a4, [%a15]0
	ld.w	%d7, [%SP] 8
	ld.w	%d1, [%SP] 4
	ld.w	%d0, [%SP] 12
	j	.L54
.LBE188:
.LBE212:
.LBE217:
.LBE222:
.LBE224:
.LBE226:
.LFE21:
	.size	Spi_SyncTransmit, .-Spi_SyncTransmit
	.align 1
	.global	Spi_SetupEB
	.type	Spi_SetupEB, @function
Spi_SetupEB:
.LFB23:
	.loc 1 4898 0
.LVL294:
	.loc 1 4898 0
	mov	%d8, %d4
	mov.aa	%a13, %a4
	mov.aa	%a12, %a5
	mov	%d15, %d5
	.loc 1 4902 0
	call	Mcal_GetCpuIndex
.LVL295:
	.loc 1 4954 0
	movh.a	%a15, hi:Spi_RuntimeCoreVar
	lea	%a15, [%a15] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a15, %d2, 2
	ld.a	%a2, [%a15]0
	.loc 1 4950 0
	movh.a	%a15, hi:Spi_kGlobalConfigPtr
	ld.a	%a15, [%a15] lo:Spi_kGlobalConfigPtr
	ld.a	%a15, [%a15] 24
	.loc 1 4955 0
	ld.w	%d3, [%a2] 24
	.loc 1 4950 0
	addsc.a	%a15, %a15, %d8, 0
	.loc 1 4955 0
	ld.bu	%d2, [%a15]0
.LVL296:
	madd	%d4, %d3, %d2, 12
	.loc 1 4970 0
	mov	%d2, 0
	.loc 1 4955 0
	mov.a	%a15, %d4
	st.a	[%a15]0, %a13
.LVL297:
	.loc 1 4957 0
	st.a	[%a15] 4, %a12
	.loc 1 4959 0
	st.h	[%a15] 8, %d15
.LVL298:
	.loc 1 4970 0
	ret
.LFE23:
	.size	Spi_SetupEB, .-Spi_SetupEB
	.align 1
	.global	Spi_GetJobResult
	.type	Spi_GetJobResult, @function
Spi_GetJobResult:
.LFB24:
	.loc 1 5001 0
.LVL299:
	.loc 1 5001 0
	mov	%d15, %d4
	.loc 1 5005 0
	call	Mcal_GetCpuIndex
.LVL300:
	.loc 1 5063 0
	movh.a	%a15, hi:Spi_RuntimeCoreVar
	lea	%a15, [%a15] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a15, %d2, 2
	ld.a	%a2, [%a15]0
	.loc 1 5064 0
	movh.a	%a15, hi:Spi_kGlobalConfigPtr
	ld.a	%a15, [%a15] lo:Spi_kGlobalConfigPtr
	ld.a	%a15, [%a15] 20
	addsc.a	%a15, %a15, %d15, 1
	ld.hu	%d15, [%a15]0
.LVL301:
	.loc 1 5062 0
	ld.a	%a15, [%a2] 12
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 5073 0
	ld.bu	%d2, [%a15]0
.LVL302:
	ret
.LFE24:
	.size	Spi_GetJobResult, .-Spi_GetJobResult
	.align 1
	.global	Spi_GetSequenceResult
	.type	Spi_GetSequenceResult, @function
Spi_GetSequenceResult:
.LFB25:
	.loc 1 5099 0
.LVL303:
	.loc 1 5099 0
	mov	%d15, %d4
	.loc 1 5104 0
	call	Mcal_GetCpuIndex
.LVL304:
	.loc 1 5135 0
	movh.a	%a15, hi:Spi_RuntimeCoreVar
	lea	%a15, [%a15] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a15, %d2, 2
	ld.a	%a2, [%a15]0
	.loc 1 5129 0
	movh.a	%a15, hi:Spi_kGlobalConfigPtr
	ld.a	%a15, [%a15] lo:Spi_kGlobalConfigPtr
	ld.a	%a15, [%a15] 16
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 5135 0
	ld.bu	%d15, [%a15]0
.LVL305:
	ld.a	%a15, [%a2] 8
	addsc.a	%a15, %a15, %d15, 0
	.loc 1 5138 0
	ld.bu	%d2, [%a15]0
.LVL306:
	ret
.LFE25:
	.size	Spi_GetSequenceResult, .-Spi_GetSequenceResult
	.align 1
	.global	Spi_GetStatus
	.type	Spi_GetStatus, @function
Spi_GetStatus:
.LFB26:
	.loc 1 5167 0
.LVL307:
.LBB237:
.LBB238:
	.loc 1 6613 0
	call	Mcal_GetCpuIndex
.LVL308:
	.loc 1 6630 0
	movh.a	%a13, hi:Spi_RuntimeCoreVar
	lea	%a13, [%a13] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a13, %d2, 2
.LBE238:
.LBE237:
	.loc 1 5168 0
	mov	%d2, 0
.LVL309:
.LBB240:
.LBB239:
	.loc 1 6630 0
	ld.a	%a15, [%a15]0
	jz.a	%a15, .L214
	.loc 1 6636 0
	ld.bu	%d15, [%a15]0
	jnz	%d15, .L221
.L214:
.LBE239:
.LBE240:
	.loc 1 5213 0
	ret
.L221:
.LVL310:
.LBB241:
.LBB242:
	.loc 1 7659 0
	call	Mcal_GetCpuIndex
.LVL311:
	movh.a	%a12, hi:Spi_kGlobalConfigPtr
	lea	%a12, [%a12] lo:Spi_kGlobalConfigPtr
	.loc 1 7687 0
	addsc.a	%a13, %a13, %d2, 2
	.loc 1 7659 0
	mov	%d15, 0
.LBB243:
.LBB244:
.LBB245:
.LBB246:
	.loc 1 7248 0
	mov.aa	%a14, %a12
.LVL312:
.L209:
	ld.a	%a15, [%a12]0
	call	Mcal_GetCpuIndex
.LVL313:
	.loc 1 7247 0
	addsc.a	%a15, %a15, %d2, 2
.LVL314:
	.loc 1 7249 0
	ld.a	%a15, [%a15]0
	ld.w	%d3, [%a15] 36
.LVL315:
	.loc 1 7255 0
	extr.u	%d3, %d3, %d15, 2
.LVL316:
.LBE246:
.LBE245:
.LBE244:
.LBE243:
	.loc 1 7669 0
	jeq	%d3, 1, .L222
.LVL317:
.L207:
	add	%d15, 3
	.loc 1 7665 0
	ne	%d3, %d15, 15
	jnz	%d3, .L209
.LBE242:
.LBE241:
	.loc 1 5206 0
	mov	%d2, 1
	ret
.LVL318:
.L222:
.LBB250:
.LBB249:
.LBB247:
.LBB248:
	.loc 1 7248 0
	ld.a	%a15, [%a14]0
.LVL319:
	call	Mcal_GetCpuIndex
.LVL320:
	.loc 1 7247 0
	addsc.a	%a15, %a15, %d2, 2
.LVL321:
	.loc 1 7249 0
	ld.a	%a15, [%a15]0
	ld.w	%d2, [%a15] 36
.LVL322:
	.loc 1 7255 0
	extr.u	%d2, %d2, %d15, 2
.LVL323:
	.loc 1 7258 0
	jne	%d2, 1, .L207
.LVL324:
.LBE248:
.LBE247:
	.loc 1 7687 0
	ld.a	%a15, [%a13]0
.LVL325:
	ld.bu	%d2, [%a15]0
	jne	%d2, 2, .L207
.LBE249:
.LBE250:
	.loc 1 5196 0
	mov	%d2, 2
.LVL326:
	ret
.LFE26:
	.size	Spi_GetStatus, .-Spi_GetStatus
	.align 1
	.global	Spi_GetHWUnitStatus
	.type	Spi_GetHWUnitStatus, @function
Spi_GetHWUnitStatus:
.LFB27:
	.loc 1 5245 0
.LVL327:
	.loc 1 5245 0
	mov	%d15, %d4
	.loc 1 5249 0
	call	Mcal_GetCpuIndex
.LVL328:
	mov	%d8, %d2
.LVL329:
	.loc 1 5263 0
	jlt.u	%d15, 5, .L224
.LVL330:
.L226:
	.loc 1 5246 0
	mov	%d2, 0
	ret
.LVL331:
.L224:
.LBB257:
.LBB258:
.LBB259:
.LBB260:
	.loc 1 7248 0
	movh.a	%a12, hi:Spi_kGlobalConfigPtr
	ld.a	%a15, [%a12] lo:Spi_kGlobalConfigPtr
	call	Mcal_GetCpuIndex
.LVL332:
	.loc 1 7247 0
	addsc.a	%a15, %a15, %d2, 2
.LVL333:
	.loc 1 7250 0
	mul	%d9, %d15, 3
	.loc 1 7249 0
	ld.a	%a15, [%a15]0
	ld.w	%d2, [%a15] 36
.LVL334:
	.loc 1 7255 0
	extr.u	%d2, %d2, %d9, 2
.LVL335:
.LBE260:
.LBE259:
.LBE258:
.LBE257:
	.loc 1 5265 0
	jne	%d2, 1, .L226
.LVL336:
.LBB261:
.LBB262:
	.loc 1 7248 0
	ld.a	%a15, [%a12] lo:Spi_kGlobalConfigPtr
.LVL337:
	call	Mcal_GetCpuIndex
.LVL338:
	.loc 1 7247 0
	addsc.a	%a15, %a15, %d2, 2
.LVL339:
	.loc 1 7249 0
	ld.a	%a15, [%a15]0
	ld.w	%d2, [%a15] 36
.LVL340:
	.loc 1 7255 0
	extr.u	%d9, %d2, %d9, 2
.LVL341:
	.loc 1 7258 0
	jeq	%d9, 1, .L227
.LBE262:
.LBE261:
	.loc 1 5296 0
	mov	%d2, 2
.LVL342:
	ret
.LVL343:
.L227:
	.loc 1 5272 0
	movh.a	%a15, hi:Spi_RuntimeCoreVar
	lea	%a15, [%a15] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a15, %d8, 2
	ld.a	%a15, [%a15]0
	.loc 1 5273 0
	ld.w	%d2, [%a15] 4
.LVL344:
	extr.u	%d15, %d2, %d15, 1
.LVL345:
	.loc 1 5292 0
	mov	%d2, 2
	cmovn	%d2, %d15, 1
	.loc 1 5331 0
	ret
.LFE27:
	.size	Spi_GetHWUnitStatus, .-Spi_GetHWUnitStatus
	.align 1
	.global	Spi_ControlLoopBack
	.type	Spi_ControlLoopBack, @function
Spi_ControlLoopBack:
.LFB28:
	.loc 1 5486 0
.LVL346:
	.loc 1 5486 0
	mov	%d15, %d4
	mov	%d8, %d5
	.loc 1 5489 0
	call	Mcal_GetCpuIndex
.LVL347:
	.loc 1 5508 0
	lt.u	%d3, %d15, 5
	and.lt.u	%d3, %d8, 2
	.loc 1 5489 0
	mov	%d9, %d2
.LVL348:
	.loc 1 5508 0
	jnz	%d3, .L231
.LVL349:
.L234:
	.loc 1 5487 0
	mov	%d2, 1
	ret
.LVL350:
.L231:
.LBB265:
.LBB266:
	.loc 1 7248 0
	movh.a	%a15, hi:Spi_kGlobalConfigPtr
	ld.a	%a15, [%a15] lo:Spi_kGlobalConfigPtr
	call	Mcal_GetCpuIndex
.LVL351:
	.loc 1 7247 0
	addsc.a	%a15, %a15, %d2, 2
.LVL352:
	.loc 1 7250 0
	mul	%d2, %d15, 3
	.loc 1 7249 0
	ld.a	%a15, [%a15]0
	ld.w	%d3, [%a15] 36
.LVL353:
	.loc 1 7255 0
	extr.u	%d2, %d3, %d2, 2
.LVL354:
	.loc 1 7258 0
	jne	%d2, 1, .L234
.LVL355:
.LBE266:
.LBE265:
	.loc 1 5514 0
	movh.a	%a15, hi:Spi_RuntimeCoreVar
	lea	%a15, [%a15] lo:Spi_RuntimeCoreVar
	addsc.a	%a15, %a15, %d9, 2
	ld.a	%a15, [%a15]0
	.loc 1 5515 0
	ld.w	%d2, [%a15] 4
	extr.u	%d2, %d2, %d15, 1
	.loc 1 5514 0
	jnz	%d2, .L234
.LVL356:
	.loc 1 5538 0
	sh	%d15, %d15, 8
.LVL357:
	mov.a	%a2, %d15
	.loc 1 5541 0
	ne	%d8, %d8, 1
	.loc 1 5538 0
	lea	%a15, [%a2] 7168
	addih.a	%a15, %a15, 61440
	ld.w	%d15, [%a15] 16
.LVL358:
	.loc 1 5541 0
	insert	%d2, %d15, 15, 14, 1
	insert	%d15, %d15, 0, 14, 1
.LVL359:
	sel	%d15, %d8, %d15, %d2
.LVL360:
	.loc 1 5556 0
	st.w	[%a15] 16, %d15
.LVL361:
	.loc 1 5558 0
	mov	%d2, 0
.LVL362:
	ret
.LFE28:
	.size	Spi_ControlLoopBack, .-Spi_ControlLoopBack
.section ClearedData.Cpu0.32bit.Spi_JobStatusCore0,"aw",@progbits
	.align 2
	.type	Spi_JobStatusCore0, @object
	.size	Spi_JobStatusCore0, 3
Spi_JobStatusCore0:
	.zero	3
.section ClearedData.Cpu0.32bit.Spi_SequenceStatusCore0,"aw",@progbits
	.align 2
	.type	Spi_SequenceStatusCore0, @object
	.size	Spi_SequenceStatusCore0, 3
Spi_SequenceStatusCore0:
	.zero	3
.section ClearedData.Cpu0.32bit.Spi_BufferCore0,"aw",@progbits
	.align 2
	.type	Spi_BufferCore0, @object
	.size	Spi_BufferCore0, 36
Spi_BufferCore0:
	.zero	36
.section ClearedData.Cpu0.32bit.Spi_RuntimeCore0Var,"aw",@progbits
	.align 2
	.type	Spi_RuntimeCore0Var, @object
	.size	Spi_RuntimeCore0Var, 28
Spi_RuntimeCore0Var:
	.zero	28
.section ClearedData.LmuNC.32bit.Spi_kGlobalConfigPtr,"aw",@progbits
	.align 2
	.type	Spi_kGlobalConfigPtr, @object
	.size	Spi_kGlobalConfigPtr, 4
Spi_kGlobalConfigPtr:
	.zero	4
.section ClearedData.LmuNC.32bit.Spi_RuntimeCoreVar,"aw",@progbits
	.align 2
	.type	Spi_RuntimeCoreVar, @object
	.size	Spi_RuntimeCoreVar, 16
Spi_RuntimeCoreVar:
	.zero	16
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
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.byte	0x4
	.uaword	.LCFI0-.LFB21
	.byte	0xe
	.uleb128 0x60
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
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.align 2
.LEFDE18:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\inc\\Spi.h"
	.file 5 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxQspi_regdef.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\mcal\\SchM_Spi.h"
	.file 9 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x69ab
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Targets\\TC38xx\\MCAL\\MCAL_Modules\\Spi\\src\\Spi.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x248
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
	.uaword	0x1d9
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
	.uaword	0x205
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
	.uaword	0x241
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
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x1cc
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0x9e
	.uaword	0x2e1
	.uleb128 0x5
	.string	"SPI_UNINIT"
	.sleb128 0
	.uleb128 0x5
	.string	"SPI_IDLE"
	.sleb128 1
	.uleb128 0x5
	.string	"SPI_BUSY"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"Spi_StatusType"
	.byte	0x4
	.byte	0xa2
	.uaword	0x2b5
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0xab
	.uaword	0x341
	.uleb128 0x5
	.string	"SPI_JOB_OK"
	.sleb128 0
	.uleb128 0x5
	.string	"SPI_JOB_PENDING"
	.sleb128 1
	.uleb128 0x5
	.string	"SPI_JOB_FAILED"
	.sleb128 2
	.uleb128 0x5
	.string	"SPI_JOB_QUEUED"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"Spi_JobResultType"
	.byte	0x4
	.byte	0xb0
	.uaword	0x2f7
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0xb9
	.uaword	0x3a6
	.uleb128 0x5
	.string	"SPI_SEQ_OK"
	.sleb128 0
	.uleb128 0x5
	.string	"SPI_SEQ_PENDING"
	.sleb128 1
	.uleb128 0x5
	.string	"SPI_SEQ_FAILED"
	.sleb128 2
	.uleb128 0x5
	.string	"SPI_SEQ_CANCELED"
	.sleb128 3
	.byte	0
	.uleb128 0x3
	.string	"Spi_SeqResultType"
	.byte	0x4
	.byte	0xbe
	.uaword	0x35a
	.uleb128 0x4
	.byte	0x1
	.byte	0x4
	.byte	0xc5
	.uaword	0x3f5
	.uleb128 0x5
	.string	"SPI_LOOPBACK_DISABLE"
	.sleb128 0
	.uleb128 0x5
	.string	"SPI_LOOPBACK_ENABLE"
	.sleb128 1
	.byte	0
	.uleb128 0x3
	.string	"Spi_LoopBackType"
	.byte	0x4
	.byte	0xc8
	.uaword	0x3bf
	.uleb128 0x3
	.string	"Spi_DataBufferType"
	.byte	0x4
	.byte	0xd7
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Spi_NumberOfDataType"
	.byte	0x4
	.byte	0xde
	.uaword	0x1f7
	.uleb128 0x3
	.string	"Spi_ChannelType"
	.byte	0x4
	.byte	0xe4
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Spi_JobType"
	.byte	0x4
	.byte	0xea
	.uaword	0x1f7
	.uleb128 0x3
	.string	"Spi_SequenceType"
	.byte	0x4
	.byte	0xf0
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Spi_HWUnitType"
	.byte	0x4
	.byte	0xf6
	.uaword	0x1cc
	.uleb128 0x3
	.string	"Spi_QSPIHwMapConfigType"
	.byte	0x4
	.byte	0xfa
	.uaword	0x233
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.uahalf	0x11d
	.uaword	0x53a
	.uleb128 0x7
	.string	"SequenceId"
	.byte	0x4
	.uahalf	0x11f
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"JobLinkPtrPhysical"
	.byte	0x4
	.uahalf	0x127
	.uaword	0x53a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"NoOfJobInSeq"
	.byte	0x4
	.uahalf	0x12f
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"HwModuleUsed"
	.byte	0x4
	.uahalf	0x139
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"u8Comm"
	.byte	0x4
	.uahalf	0x13b
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x540
	.uleb128 0x9
	.uaword	0x45a
	.uleb128 0xa
	.string	"Spi_SequenceConfigType"
	.byte	0x4
	.uahalf	0x13d
	.uaword	0x4ba
	.uleb128 0x6
	.byte	0x18
	.byte	0x4
	.uahalf	0x144
	.uaword	0x65b
	.uleb128 0x7
	.string	"JobId"
	.byte	0x4
	.uahalf	0x146
	.uaword	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"BaudRateAndClockParam"
	.byte	0x4
	.uahalf	0x150
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"IdleLeadTrailDelay"
	.byte	0x4
	.uahalf	0x155
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"ChnlLinkPtrPhysical"
	.byte	0x4
	.uahalf	0x158
	.uaword	0x65b
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"CSPortPin"
	.byte	0x4
	.uahalf	0x15d
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"JobPriority"
	.byte	0x4
	.uahalf	0x161
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x12
	.uleb128 0xb
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x164
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x13
	.uleb128 0x7
	.string	"HwUnit"
	.byte	0x4
	.uahalf	0x167
	.uaword	0x485
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"ParitySupport"
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x15
	.uleb128 0x7
	.string	"FramebasedCs"
	.byte	0x4
	.uahalf	0x16c
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x16
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x661
	.uleb128 0x9
	.uaword	0x443
	.uleb128 0xa
	.string	"Spi_JobConfigType"
	.byte	0x4
	.uahalf	0x16d
	.uaword	0x564
	.uleb128 0x6
	.byte	0x14
	.byte	0x4
	.uahalf	0x175
	.uaword	0x763
	.uleb128 0x7
	.string	"ActiveChipSelectLevel"
	.byte	0x4
	.uahalf	0x17a
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"IBBufferSize"
	.byte	0x4
	.uahalf	0x17e
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"JobQueueLength"
	.byte	0x4
	.uahalf	0x181
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"ClockSetting"
	.byte	0x4
	.uahalf	0x191
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x7
	.string	"MasterReceivePortPin"
	.byte	0x4
	.uahalf	0x194
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x7
	.string	"MaxSequence"
	.byte	0x4
	.uahalf	0x196
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"ExternalDemuxEnabled"
	.byte	0x4
	.uahalf	0x199
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x7
	.string	"StrobeDelay"
	.byte	0x4
	.uahalf	0x19c
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.byte	0
	.uleb128 0xa
	.string	"Spi_QspiHwConfigType"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x680
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.uahalf	0x1a6
	.uaword	0x7f9
	.uleb128 0x7
	.string	"Defaultdata"
	.byte	0x4
	.uahalf	0x1aa
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"NoOfDataElements"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"ChannelType"
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x7
	.string	"DataConfig"
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x1cc
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xb
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xa
	.string	"Spi_ChannelConfigType"
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x780
	.uleb128 0x6
	.byte	0xc
	.byte	0x4
	.uahalf	0x1c8
	.uaword	0x860
	.uleb128 0x7
	.string	"SrcPtr"
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x860
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"DestPtr"
	.byte	0x4
	.uahalf	0x1ce
	.uaword	0x860
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"TransferLength"
	.byte	0x4
	.uahalf	0x1d1
	.uaword	0x427
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x866
	.uleb128 0x9
	.uaword	0x40d
	.uleb128 0xa
	.string	"Spi_BufferType"
	.byte	0x4
	.uahalf	0x1d3
	.uaword	0x817
	.uleb128 0x6
	.byte	0x4
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0x8c3
	.uleb128 0x7
	.string	"ChannelOffset"
	.byte	0x4
	.uahalf	0x1db
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"DataTransferLength"
	.byte	0x4
	.uahalf	0x1dc
	.uaword	0x1f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0xa
	.string	"Spi_CoreChannelOffsetType"
	.byte	0x4
	.uahalf	0x1dd
	.uaword	0x882
	.uleb128 0x6
	.byte	0x30
	.byte	0x4
	.uahalf	0x1e0
	.uaword	0x9a4
	.uleb128 0x7
	.string	"SequenceConfigPtr"
	.byte	0x4
	.uahalf	0x1e3
	.uaword	0x9a4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xb
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x1e6
	.uaword	0x9af
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xb
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x9ba
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"ChannelOffsetInfo"
	.byte	0x4
	.uahalf	0x1ec
	.uaword	0x9c5
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"QSPIHwConfigPtr"
	.byte	0x4
	.uahalf	0x1f0
	.uaword	0x9d0
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"QSPIHwMap"
	.byte	0x4
	.uahalf	0x1f4
	.uaword	0x9f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x1f7
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x1fa
	.uaword	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x2a
	.uleb128 0xb
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x1fd
	.uaword	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x9aa
	.uleb128 0x9
	.uaword	0x545
	.uleb128 0x8
	.byte	0x4
	.uaword	0x9b5
	.uleb128 0x9
	.uaword	0x666
	.uleb128 0x8
	.byte	0x4
	.uaword	0x9c0
	.uleb128 0x9
	.uaword	0x7f9
	.uleb128 0x8
	.byte	0x4
	.uaword	0x9cb
	.uleb128 0x9
	.uaword	0x8c3
	.uleb128 0xc
	.uaword	0x9ec
	.uaword	0x9e0
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x4
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x8
	.byte	0x4
	.uaword	0x9f2
	.uleb128 0x9
	.uaword	0x763
	.uleb128 0x9
	.uaword	0x49b
	.uleb128 0xa
	.string	"Spi_CoreConfigType"
	.byte	0x4
	.uahalf	0x1ff
	.uaword	0x8e5
	.uleb128 0x6
	.byte	0x28
	.byte	0x4
	.uahalf	0x203
	.uaword	0xabc
	.uleb128 0xb
	.uaword	.LASF7
	.byte	0x4
	.uahalf	0x205
	.uaword	0xabc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"SequenceLookup"
	.byte	0x4
	.uahalf	0x208
	.uaword	0xad7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"JobLookup"
	.byte	0x4
	.uahalf	0x20b
	.uaword	0xae2
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"ChannelLookup"
	.byte	0x4
	.uahalf	0x20e
	.uaword	0xad7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xb
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x211
	.uaword	0x46d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x214
	.uaword	0x45a
	.byte	0x2
	.byte	0x23
	.uleb128 0x1e
	.uleb128 0xb
	.uaword	.LASF6
	.byte	0x4
	.uahalf	0x217
	.uaword	0x443
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"SyncTimeout"
	.byte	0x4
	.uahalf	0x21a
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.byte	0
	.uleb128 0xc
	.uaword	0xacc
	.uaword	0xacc
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0xad2
	.uleb128 0x9
	.uaword	0x9fc
	.uleb128 0x8
	.byte	0x4
	.uaword	0xadd
	.uleb128 0x9
	.uaword	0x1cc
	.uleb128 0x8
	.byte	0x4
	.uaword	0xae8
	.uleb128 0x9
	.uaword	0x1f7
	.uleb128 0xa
	.string	"Spi_ConfigType"
	.byte	0x4
	.uahalf	0x21b
	.uaword	0xa17
	.uleb128 0x3
	.string	"Ifx_UReg_8Bit"
	.byte	0x5
	.byte	0x60
	.uaword	0x1d9
	.uleb128 0x3
	.string	"Ifx_UReg_32Bit"
	.byte	0x5
	.byte	0x62
	.uaword	0x241
	.uleb128 0x3
	.string	"Ifx_SReg_32Bit"
	.byte	0x5
	.byte	0x65
	.uaword	0x21b
	.uleb128 0xe
	.string	"_Ifx_QSPI_ACCEN0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x44
	.uaword	0xd9a
	.uleb128 0xf
	.string	"EN0"
	.byte	0x6
	.byte	0x46
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN1"
	.byte	0x6
	.byte	0x47
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN2"
	.byte	0x6
	.byte	0x48
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN3"
	.byte	0x6
	.byte	0x49
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN4"
	.byte	0x6
	.byte	0x4a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN5"
	.byte	0x6
	.byte	0x4b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN6"
	.byte	0x6
	.byte	0x4c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN7"
	.byte	0x6
	.byte	0x4d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN8"
	.byte	0x6
	.byte	0x4e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN9"
	.byte	0x6
	.byte	0x4f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN10"
	.byte	0x6
	.byte	0x50
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN11"
	.byte	0x6
	.byte	0x51
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN12"
	.byte	0x6
	.byte	0x52
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN13"
	.byte	0x6
	.byte	0x53
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN14"
	.byte	0x6
	.byte	0x54
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN15"
	.byte	0x6
	.byte	0x55
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN16"
	.byte	0x6
	.byte	0x56
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN17"
	.byte	0x6
	.byte	0x57
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN18"
	.byte	0x6
	.byte	0x58
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN19"
	.byte	0x6
	.byte	0x59
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN20"
	.byte	0x6
	.byte	0x5a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN21"
	.byte	0x6
	.byte	0x5b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN22"
	.byte	0x6
	.byte	0x5c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN23"
	.byte	0x6
	.byte	0x5d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN24"
	.byte	0x6
	.byte	0x5e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN25"
	.byte	0x6
	.byte	0x5f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN26"
	.byte	0x6
	.byte	0x60
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN27"
	.byte	0x6
	.byte	0x61
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN28"
	.byte	0x6
	.byte	0x62
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN29"
	.byte	0x6
	.byte	0x63
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN30"
	.byte	0x6
	.byte	0x64
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN31"
	.byte	0x6
	.byte	0x65
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ACCEN0_Bits"
	.byte	0x6
	.byte	0x66
	.uaword	0xb45
	.uleb128 0xe
	.string	"_Ifx_QSPI_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x69
	.uaword	0xde6
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x6
	.byte	0x6b
	.uaword	0xb19
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ACCEN1_Bits"
	.byte	0x6
	.byte	0x6c
	.uaword	0xdb6
	.uleb128 0xe
	.string	"_Ifx_QSPI_BACON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x6f
	.uaword	0xf08
	.uleb128 0xf
	.string	"LAST"
	.byte	0x6
	.byte	0x71
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"IPRE"
	.byte	0x6
	.byte	0x72
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"IDLE"
	.byte	0x6
	.byte	0x73
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"LPRE"
	.byte	0x6
	.byte	0x74
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"LEAD"
	.byte	0x6
	.byte	0x75
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TPRE"
	.byte	0x6
	.byte	0x76
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TRAIL"
	.byte	0x6
	.byte	0x77
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PARTYP"
	.byte	0x6
	.byte	0x78
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"UINT"
	.byte	0x6
	.byte	0x79
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MSB"
	.byte	0x6
	.byte	0x7a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"BYTE"
	.byte	0x6
	.byte	0x7b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"DL"
	.byte	0x6
	.byte	0x7c
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CS"
	.byte	0x6
	.byte	0x7d
	.uaword	0xb19
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_BACON_Bits"
	.byte	0x6
	.byte	0x7e
	.uaword	0xe02
	.uleb128 0xe
	.string	"_Ifx_QSPI_BACONENTRY_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x81
	.uaword	0xf55
	.uleb128 0xf
	.string	"E"
	.byte	0x6
	.byte	0x83
	.uaword	0xb19
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_BACONENTRY_Bits"
	.byte	0x6
	.byte	0x84
	.uaword	0xf23
	.uleb128 0xe
	.string	"_Ifx_QSPI_CLC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x87
	.uaword	0xfe9
	.uleb128 0xf
	.string	"DISR"
	.byte	0x6
	.byte	0x89
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"DISS"
	.byte	0x6
	.byte	0x8a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x6
	.byte	0x8b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EDIS"
	.byte	0x6
	.byte	0x8c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF10
	.byte	0x6
	.byte	0x8d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_CLC_Bits"
	.byte	0x6
	.byte	0x8e
	.uaword	0xf75
	.uleb128 0xe
	.string	"_Ifx_QSPI_DATAENTRY_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x91
	.uaword	0x1033
	.uleb128 0xf
	.string	"E"
	.byte	0x6
	.byte	0x93
	.uaword	0xb19
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_DATAENTRY_Bits"
	.byte	0x6
	.byte	0x94
	.uaword	0x1002
	.uleb128 0xe
	.string	"_Ifx_QSPI_ECON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0x97
	.uaword	0x1102
	.uleb128 0xf
	.string	"Q"
	.byte	0x6
	.byte	0x99
	.uaword	0xb19
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"A"
	.byte	0x6
	.byte	0x9a
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"B"
	.byte	0x6
	.byte	0x9b
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"C"
	.byte	0x6
	.byte	0x9c
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CPH"
	.byte	0x6
	.byte	0x9d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CPOL"
	.byte	0x6
	.byte	0x9e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PAREN"
	.byte	0x6
	.byte	0x9f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x6
	.byte	0xa0
	.uaword	0xb19
	.byte	0x4
	.byte	0xf
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"BE"
	.byte	0x6
	.byte	0xa1
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ECON_Bits"
	.byte	0x6
	.byte	0xa2
	.uaword	0x1052
	.uleb128 0xe
	.string	"_Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xa5
	.uaword	0x11e3
	.uleb128 0xf
	.string	"ERRORCLEARS"
	.byte	0x6
	.byte	0xa7
	.uaword	0xb19
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TXC"
	.byte	0x6
	.byte	0xa8
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"RXC"
	.byte	0x6
	.byte	0xa9
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PT1C"
	.byte	0x6
	.byte	0xaa
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PT2C"
	.byte	0x6
	.byte	0xab
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF12
	.byte	0x6
	.byte	0xac
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x6
	.byte	0xad
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"USRC"
	.byte	0x6
	.byte	0xae
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x6
	.byte	0xaf
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_FLAGSCLEAR_Bits"
	.byte	0x6
	.byte	0xb0
	.uaword	0x111c
	.uleb128 0xe
	.string	"_Ifx_QSPI_GLOBALCON_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xb3
	.uaword	0x1347
	.uleb128 0xf
	.string	"TQ"
	.byte	0x6
	.byte	0xb5
	.uaword	0xb19
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x6
	.byte	0xb6
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"SI"
	.byte	0x6
	.byte	0xb7
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EXPECT"
	.byte	0x6
	.byte	0xb8
	.uaword	0xb19
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"LB"
	.byte	0x6
	.byte	0xb9
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"DEL0"
	.byte	0x6
	.byte	0xba
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"STROBE"
	.byte	0x6
	.byte	0xbb
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"SRF"
	.byte	0x6
	.byte	0xbc
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"STIP"
	.byte	0x6
	.byte	0xbd
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"reserved_23"
	.byte	0x6
	.byte	0xbe
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN"
	.byte	0x6
	.byte	0xbf
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MS"
	.byte	0x6
	.byte	0xc0
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"AREN"
	.byte	0x6
	.byte	0xc1
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x6
	.byte	0xc2
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CLKSEL"
	.byte	0x6
	.byte	0xc3
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"RESETS"
	.byte	0x6
	.byte	0xc4
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_GLOBALCON_Bits"
	.byte	0x6
	.byte	0xc5
	.uaword	0x1203
	.uleb128 0xe
	.string	"_Ifx_QSPI_GLOBALCON1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xc8
	.uaword	0x14bc
	.uleb128 0xf
	.string	"ERRORENS"
	.byte	0x6
	.byte	0xca
	.uaword	0xb19
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TXEN"
	.byte	0x6
	.byte	0xcb
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"RXEN"
	.byte	0x6
	.byte	0xcc
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PT1EN"
	.byte	0x6
	.byte	0xcd
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PT2EN"
	.byte	0x6
	.byte	0xce
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF12
	.byte	0x6
	.byte	0xcf
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x6
	.byte	0xd0
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"USREN"
	.byte	0x6
	.byte	0xd1
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TXFIFOINT"
	.byte	0x6
	.byte	0xd2
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"RXFIFOINT"
	.byte	0x6
	.byte	0xd3
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PT1"
	.byte	0x6
	.byte	0xd4
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PT2"
	.byte	0x6
	.byte	0xd5
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TXFM"
	.byte	0x6
	.byte	0xd6
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"RXFM"
	.byte	0x6
	.byte	0xd7
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF17
	.byte	0x6
	.byte	0xd8
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"reserved_31"
	.byte	0x6
	.byte	0xd9
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_GLOBALCON1_Bits"
	.byte	0x6
	.byte	0xda
	.uaword	0x1366
	.uleb128 0xe
	.string	"_Ifx_QSPI_ID_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xdd
	.uaword	0x1531
	.uleb128 0xf
	.string	"MODREV"
	.byte	0x6
	.byte	0xdf
	.uaword	0xb19
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MODTYPE"
	.byte	0x6
	.byte	0xe0
	.uaword	0xb19
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF18
	.byte	0x6
	.byte	0xe1
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_ID_Bits"
	.byte	0x6
	.byte	0xe2
	.uaword	0x14dc
	.uleb128 0xe
	.string	"_Ifx_QSPI_KRST0_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xe5
	.uaword	0x159e
	.uleb128 0xf
	.string	"RST"
	.byte	0x6
	.byte	0xe7
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"RSTSTAT"
	.byte	0x6
	.byte	0xe8
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x6
	.byte	0xe9
	.uaword	0xb19
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_KRST0_Bits"
	.byte	0x6
	.byte	0xea
	.uaword	0x1549
	.uleb128 0xe
	.string	"_Ifx_QSPI_KRST1_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xed
	.uaword	0x15f9
	.uleb128 0xf
	.string	"RST"
	.byte	0x6
	.byte	0xef
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF19
	.byte	0x6
	.byte	0xf0
	.uaword	0xb19
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_KRST1_Bits"
	.byte	0x6
	.byte	0xf1
	.uaword	0x15b9
	.uleb128 0xe
	.string	"_Ifx_QSPI_KRSTCLR_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xf4
	.uaword	0x1656
	.uleb128 0xf
	.string	"CLR"
	.byte	0x6
	.byte	0xf6
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF19
	.byte	0x6
	.byte	0xf7
	.uaword	0xb19
	.byte	0x4
	.byte	0x1f
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_QSPI_KRSTCLR_Bits"
	.byte	0x6
	.byte	0xf8
	.uaword	0x1614
	.uleb128 0xe
	.string	"_Ifx_QSPI_MC_Bits"
	.byte	0x4
	.byte	0x6
	.byte	0xfb
	.uaword	0x16e2
	.uleb128 0xf
	.string	"MCOUNT"
	.byte	0x6
	.byte	0xfd
	.uaword	0xb19
	.byte	0x4
	.byte	0xd
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF12
	.byte	0x6
	.byte	0xfe
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"CURRENT"
	.byte	0x6
	.byte	0xff
	.uaword	0xb19
	.byte	0x4
	.byte	0xd
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_29"
	.byte	0x6
	.uahalf	0x100
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_MC_Bits"
	.byte	0x6
	.uahalf	0x101
	.uaword	0x1673
	.uleb128 0x12
	.string	"_Ifx_QSPI_MCCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x104
	.uaword	0x182e
	.uleb128 0x11
	.string	"TPRE2"
	.byte	0x6
	.uahalf	0x106
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TRAIL2"
	.byte	0x6
	.uahalf	0x107
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_6"
	.byte	0x6
	.uahalf	0x108
	.uaword	0xb19
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IBLEN"
	.byte	0x6
	.uahalf	0x109
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IBLF"
	.byte	0x6
	.uahalf	0x10a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IBLC"
	.byte	0x6
	.uahalf	0x10b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IBLS"
	.byte	0x6
	.uahalf	0x10c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IALEN"
	.byte	0x6
	.uahalf	0x10d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IALF"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IALC"
	.byte	0x6
	.uahalf	0x10f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"IALS"
	.byte	0x6
	.uahalf	0x110
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF20
	.byte	0x6
	.uahalf	0x111
	.uaword	0xb19
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"T2EN"
	.byte	0x6
	.uahalf	0x112
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"MCEN"
	.byte	0x6
	.uahalf	0x113
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_MCCON_Bits"
	.byte	0x6
	.uahalf	0x114
	.uaword	0x16fb
	.uleb128 0x12
	.string	"_Ifx_QSPI_MIXENTRY_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x117
	.uaword	0x187c
	.uleb128 0x11
	.string	"E"
	.byte	0x6
	.uahalf	0x119
	.uaword	0xb19
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_MIXENTRY_Bits"
	.byte	0x6
	.uahalf	0x11a
	.uaword	0x184a
	.uleb128 0x12
	.string	"_Ifx_QSPI_OCS_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x11d
	.uaword	0x1929
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x6
	.uahalf	0x11f
	.uaword	0xb19
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0x6
	.uahalf	0x120
	.uaword	0xb19
	.byte	0x4
	.byte	0x14
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUS"
	.byte	0x6
	.uahalf	0x121
	.uaword	0xb19
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUS_P"
	.byte	0x6
	.uahalf	0x122
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SUSSTA"
	.byte	0x6
	.uahalf	0x123
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF17
	.byte	0x6
	.uahalf	0x124
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_OCS_Bits"
	.byte	0x6
	.uahalf	0x125
	.uaword	0x189b
	.uleb128 0x12
	.string	"_Ifx_QSPI_PISEL_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x128
	.uaword	0x1a0d
	.uleb128 0x11
	.string	"MRIS"
	.byte	0x6
	.uahalf	0x12a
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_3"
	.byte	0x6
	.uahalf	0x12b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SRIS"
	.byte	0x6
	.uahalf	0x12c
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_7"
	.byte	0x6
	.uahalf	0x12d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SCIS"
	.byte	0x6
	.uahalf	0x12e
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_11"
	.byte	0x6
	.uahalf	0x12f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SLSIS"
	.byte	0x6
	.uahalf	0x130
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF11
	.byte	0x6
	.uahalf	0x131
	.uaword	0xb19
	.byte	0x4
	.byte	0x11
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_PISEL_Bits"
	.byte	0x6
	.uahalf	0x132
	.uaword	0x1943
	.uleb128 0x12
	.string	"_Ifx_QSPI_RXEXIT_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x135
	.uaword	0x1a59
	.uleb128 0x11
	.string	"E"
	.byte	0x6
	.uahalf	0x137
	.uaword	0xb19
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_RXEXIT_Bits"
	.byte	0x6
	.uahalf	0x138
	.uaword	0x1a29
	.uleb128 0x12
	.string	"_Ifx_QSPI_RXEXITD_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x13b
	.uaword	0x1aa7
	.uleb128 0x11
	.string	"E"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0xb19
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_RXEXITD_Bits"
	.byte	0x6
	.uahalf	0x13e
	.uaword	0x1a76
	.uleb128 0x12
	.string	"_Ifx_QSPI_SSOC_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x141
	.uaword	0x1b07
	.uleb128 0x11
	.string	"AOL"
	.byte	0x6
	.uahalf	0x143
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"OEN"
	.byte	0x6
	.uahalf	0x144
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_SSOC_Bits"
	.byte	0x6
	.uahalf	0x145
	.uaword	0x1ac5
	.uleb128 0x12
	.string	"_Ifx_QSPI_STATUS_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x148
	.uaword	0x1c5f
	.uleb128 0x11
	.string	"ERRORFLAGS"
	.byte	0x6
	.uahalf	0x14a
	.uaword	0xb19
	.byte	0x4
	.byte	0x9
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TXF"
	.byte	0x6
	.uahalf	0x14b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RXF"
	.byte	0x6
	.uahalf	0x14c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PT1F"
	.byte	0x6
	.uahalf	0x14d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PT2F"
	.byte	0x6
	.uahalf	0x14e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF12
	.byte	0x6
	.uahalf	0x14f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF13
	.byte	0x6
	.uahalf	0x150
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"USRF"
	.byte	0x6
	.uahalf	0x151
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TXFIFOLEVEL"
	.byte	0x6
	.uahalf	0x152
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RXFIFOLEVEL"
	.byte	0x6
	.uahalf	0x153
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SLAVESEL"
	.byte	0x6
	.uahalf	0x154
	.uaword	0xb19
	.byte	0x4
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"RPV"
	.byte	0x6
	.uahalf	0x155
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"TPV"
	.byte	0x6
	.uahalf	0x156
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PHASE"
	.byte	0x6
	.uahalf	0x157
	.uaword	0xb19
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_STATUS_Bits"
	.byte	0x6
	.uahalf	0x158
	.uaword	0x1b22
	.uleb128 0x12
	.string	"_Ifx_QSPI_STATUS1_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x15b
	.uaword	0x1d12
	.uleb128 0x11
	.string	"BITCOUNT"
	.byte	0x6
	.uahalf	0x15d
	.uaword	0xb19
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF15
	.byte	0x6
	.uahalf	0x15e
	.uaword	0xb19
	.byte	0x4
	.byte	0x14
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BRDEN"
	.byte	0x6
	.uahalf	0x15f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BRD"
	.byte	0x6
	.uahalf	0x160
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SPDEN"
	.byte	0x6
	.uahalf	0x161
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SPD"
	.byte	0x6
	.uahalf	0x162
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_STATUS1_Bits"
	.byte	0x6
	.uahalf	0x163
	.uaword	0x1c7c
	.uleb128 0x12
	.string	"_Ifx_QSPI_XXLCON_Bits"
	.byte	0x4
	.byte	0x6
	.uahalf	0x166
	.uaword	0x1d7a
	.uleb128 0x11
	.string	"XDL"
	.byte	0x6
	.uahalf	0x168
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"BYTECOUNT"
	.byte	0x6
	.uahalf	0x169
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_XXLCON_Bits"
	.byte	0x6
	.uahalf	0x16a
	.uaword	0x1d30
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x172
	.uaword	0x1dbf
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x174
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x175
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x176
	.uaword	0xd9a
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_ACCEN0"
	.byte	0x6
	.uahalf	0x177
	.uaword	0x1d97
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x17a
	.uaword	0x1dff
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x17c
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x17d
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x17e
	.uaword	0xde6
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_ACCEN1"
	.byte	0x6
	.uahalf	0x17f
	.uaword	0x1dd7
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x182
	.uaword	0x1e3f
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x184
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x185
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x186
	.uaword	0xf08
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_BACON"
	.byte	0x6
	.uahalf	0x187
	.uaword	0x1e17
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x18a
	.uaword	0x1e7e
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x18c
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x18d
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x18e
	.uaword	0xf55
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_BACONENTRY"
	.byte	0x6
	.uahalf	0x18f
	.uaword	0x1e56
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x192
	.uaword	0x1ec2
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x194
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x195
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x196
	.uaword	0xfe9
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_CLC"
	.byte	0x6
	.uahalf	0x197
	.uaword	0x1e9a
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x19a
	.uaword	0x1eff
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x19c
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x19d
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x19e
	.uaword	0x1033
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_DATAENTRY"
	.byte	0x6
	.uahalf	0x19f
	.uaword	0x1ed7
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1a2
	.uaword	0x1f42
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1a4
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1a5
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1a6
	.uaword	0x1102
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_ECON"
	.byte	0x6
	.uahalf	0x1a7
	.uaword	0x1f1a
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1aa
	.uaword	0x1f80
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1ac
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1ad
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1ae
	.uaword	0x11e3
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x1af
	.uaword	0x1f58
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1b2
	.uaword	0x1fc4
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1b4
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1b5
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1b6
	.uaword	0x1347
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_GLOBALCON"
	.byte	0x6
	.uahalf	0x1b7
	.uaword	0x1f9c
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ba
	.uaword	0x2007
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1bc
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1bd
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1be
	.uaword	0x14bc
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_GLOBALCON1"
	.byte	0x6
	.uahalf	0x1bf
	.uaword	0x1fdf
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1c2
	.uaword	0x204b
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1c4
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1c5
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1c6
	.uaword	0x1531
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_ID"
	.byte	0x6
	.uahalf	0x1c7
	.uaword	0x2023
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x2087
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1cc
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1cd
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1ce
	.uaword	0x159e
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_KRST0"
	.byte	0x6
	.uahalf	0x1cf
	.uaword	0x205f
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1d2
	.uaword	0x20c6
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1d5
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1d6
	.uaword	0x15f9
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_KRST1"
	.byte	0x6
	.uahalf	0x1d7
	.uaword	0x209e
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1da
	.uaword	0x2105
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1dc
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1dd
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1de
	.uaword	0x1656
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_KRSTCLR"
	.byte	0x6
	.uahalf	0x1df
	.uaword	0x20dd
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1e2
	.uaword	0x2146
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1e4
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1e5
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1e6
	.uaword	0x16e2
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_MC"
	.byte	0x6
	.uahalf	0x1e7
	.uaword	0x211e
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1ea
	.uaword	0x2182
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1ec
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1ed
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1ee
	.uaword	0x182e
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_MCCON"
	.byte	0x6
	.uahalf	0x1ef
	.uaword	0x215a
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1f2
	.uaword	0x21c1
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1f4
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1f5
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1f6
	.uaword	0x187c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_MIXENTRY"
	.byte	0x6
	.uahalf	0x1f7
	.uaword	0x2199
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x1fa
	.uaword	0x2203
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x1fc
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x1fd
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x1fe
	.uaword	0x1929
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_OCS"
	.byte	0x6
	.uahalf	0x1ff
	.uaword	0x21db
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x202
	.uaword	0x2240
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x204
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x205
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x206
	.uaword	0x1a0d
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_PISEL"
	.byte	0x6
	.uahalf	0x207
	.uaword	0x2218
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x20a
	.uaword	0x227f
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x20c
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x20d
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x20e
	.uaword	0x1a59
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_RXEXIT"
	.byte	0x6
	.uahalf	0x20f
	.uaword	0x2257
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x212
	.uaword	0x22bf
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x214
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x215
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x216
	.uaword	0x1aa7
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_RXEXITD"
	.byte	0x6
	.uahalf	0x217
	.uaword	0x2297
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x21a
	.uaword	0x2300
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x21c
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x21d
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x21e
	.uaword	0x1b07
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_SSOC"
	.byte	0x6
	.uahalf	0x21f
	.uaword	0x22d8
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x222
	.uaword	0x233e
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x224
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x225
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x226
	.uaword	0x1c5f
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_STATUS"
	.byte	0x6
	.uahalf	0x227
	.uaword	0x2316
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x22a
	.uaword	0x237e
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x22c
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x22d
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x22e
	.uaword	0x1d12
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_STATUS1"
	.byte	0x6
	.uahalf	0x22f
	.uaword	0x2356
	.uleb128 0x14
	.byte	0x4
	.byte	0x6
	.uahalf	0x232
	.uaword	0x23bf
	.uleb128 0x15
	.string	"U"
	.byte	0x6
	.uahalf	0x234
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x6
	.uahalf	0x235
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x6
	.uahalf	0x236
	.uaword	0x1d7a
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI_XXLCON"
	.byte	0x6
	.uahalf	0x237
	.uaword	0x2397
	.uleb128 0x16
	.string	"_Ifx_QSPI"
	.uahalf	0x100
	.byte	0x6
	.uahalf	0x243
	.uaword	0x2635
	.uleb128 0x7
	.string	"CLC"
	.byte	0x6
	.uahalf	0x245
	.uaword	0x1ec2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"PISEL"
	.byte	0x6
	.uahalf	0x246
	.uaword	0x2240
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"ID"
	.byte	0x6
	.uahalf	0x247
	.uaword	0x204b
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.uaword	.LASF21
	.byte	0x6
	.uahalf	0x248
	.uaword	0x2635
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"GLOBALCON"
	.byte	0x6
	.uahalf	0x249
	.uaword	0x1fc4
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"GLOBALCON1"
	.byte	0x6
	.uahalf	0x24a
	.uaword	0x2007
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"BACON"
	.byte	0x6
	.uahalf	0x24b
	.uaword	0x1e3f
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"reserved_1C"
	.byte	0x6
	.uahalf	0x24c
	.uaword	0x2635
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x7
	.string	"ECON"
	.byte	0x6
	.uahalf	0x24d
	.uaword	0x2645
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"STATUS"
	.byte	0x6
	.uahalf	0x24e
	.uaword	0x233e
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"STATUS1"
	.byte	0x6
	.uahalf	0x24f
	.uaword	0x237e
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"SSOC"
	.byte	0x6
	.uahalf	0x250
	.uaword	0x2300
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"reserved_4C"
	.byte	0x6
	.uahalf	0x251
	.uaword	0x2655
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x7
	.string	"FLAGSCLEAR"
	.byte	0x6
	.uahalf	0x252
	.uaword	0x1f80
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"XXLCON"
	.byte	0x6
	.uahalf	0x253
	.uaword	0x23bf
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x7
	.string	"MIXENTRY"
	.byte	0x6
	.uahalf	0x254
	.uaword	0x21c1
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x7
	.string	"BACONENTRY"
	.byte	0x6
	.uahalf	0x255
	.uaword	0x1e7e
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"DATAENTRY"
	.byte	0x6
	.uahalf	0x256
	.uaword	0x2665
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"reserved_84"
	.byte	0x6
	.uahalf	0x257
	.uaword	0x2675
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"RXEXIT"
	.byte	0x6
	.uahalf	0x258
	.uaword	0x227f
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x7
	.string	"RXEXITD"
	.byte	0x6
	.uahalf	0x259
	.uaword	0x22bf
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.uaword	.LASF22
	.byte	0x6
	.uahalf	0x25a
	.uaword	0x2675
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x7
	.string	"MC"
	.byte	0x6
	.uahalf	0x25b
	.uaword	0x2146
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x7
	.string	"MCCON"
	.byte	0x6
	.uahalf	0x25c
	.uaword	0x2182
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x7
	.string	"reserved_AC"
	.byte	0x6
	.uahalf	0x25d
	.uaword	0x2685
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x7
	.string	"OCS"
	.byte	0x6
	.uahalf	0x25e
	.uaword	0x2203
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x7
	.string	"KRSTCLR"
	.byte	0x6
	.uahalf	0x25f
	.uaword	0x2105
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x7
	.string	"KRST1"
	.byte	0x6
	.uahalf	0x260
	.uaword	0x20c6
	.byte	0x3
	.byte	0x23
	.uleb128 0xf0
	.uleb128 0x7
	.string	"KRST0"
	.byte	0x6
	.uahalf	0x261
	.uaword	0x2087
	.byte	0x3
	.byte	0x23
	.uleb128 0xf4
	.uleb128 0x7
	.string	"ACCEN1"
	.byte	0x6
	.uahalf	0x262
	.uaword	0x1dff
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x7
	.string	"ACCEN0"
	.byte	0x6
	.uahalf	0x263
	.uaword	0x1dbf
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0xc
	.uaword	0xb04
	.uaword	0x2645
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x3
	.byte	0
	.uleb128 0xc
	.uaword	0x1f42
	.uaword	0x2655
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.uaword	0xb04
	.uaword	0x2665
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.uaword	0x1eff
	.uaword	0x2675
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.uaword	0xb04
	.uaword	0x2685
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0xb
	.byte	0
	.uleb128 0xc
	.uaword	0xb04
	.uaword	0x2695
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x3b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_QSPI"
	.byte	0x6
	.uahalf	0x264
	.uaword	0x26a6
	.uleb128 0x17
	.uaword	0x23d7
	.uleb128 0xe
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x44
	.uaword	0x28fd
	.uleb128 0xf
	.string	"EN0"
	.byte	0x7
	.byte	0x46
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN1"
	.byte	0x7
	.byte	0x47
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN2"
	.byte	0x7
	.byte	0x48
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN3"
	.byte	0x7
	.byte	0x49
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN4"
	.byte	0x7
	.byte	0x4a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN5"
	.byte	0x7
	.byte	0x4b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN6"
	.byte	0x7
	.byte	0x4c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN7"
	.byte	0x7
	.byte	0x4d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN8"
	.byte	0x7
	.byte	0x4e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN9"
	.byte	0x7
	.byte	0x4f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN10"
	.byte	0x7
	.byte	0x50
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN11"
	.byte	0x7
	.byte	0x51
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN12"
	.byte	0x7
	.byte	0x52
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN13"
	.byte	0x7
	.byte	0x53
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN14"
	.byte	0x7
	.byte	0x54
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN15"
	.byte	0x7
	.byte	0x55
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN16"
	.byte	0x7
	.byte	0x56
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN17"
	.byte	0x7
	.byte	0x57
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN18"
	.byte	0x7
	.byte	0x58
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN19"
	.byte	0x7
	.byte	0x59
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN20"
	.byte	0x7
	.byte	0x5a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN21"
	.byte	0x7
	.byte	0x5b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN22"
	.byte	0x7
	.byte	0x5c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN23"
	.byte	0x7
	.byte	0x5d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN24"
	.byte	0x7
	.byte	0x5e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN25"
	.byte	0x7
	.byte	0x5f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN26"
	.byte	0x7
	.byte	0x60
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN27"
	.byte	0x7
	.byte	0x61
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN28"
	.byte	0x7
	.byte	0x62
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN29"
	.byte	0x7
	.byte	0x63
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN30"
	.byte	0x7
	.byte	0x64
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN31"
	.byte	0x7
	.byte	0x65
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x7
	.byte	0x66
	.uaword	0x26ab
	.uleb128 0xe
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x69
	.uaword	0x2943
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x7
	.byte	0x6b
	.uaword	0xb19
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x7
	.byte	0x6c
	.uaword	0x2916
	.uleb128 0xe
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x6f
	.uaword	0x2a9c
	.uleb128 0xf
	.string	"EN0"
	.byte	0x7
	.byte	0x71
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN1"
	.byte	0x7
	.byte	0x72
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN2"
	.byte	0x7
	.byte	0x73
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN3"
	.byte	0x7
	.byte	0x74
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN4"
	.byte	0x7
	.byte	0x75
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN5"
	.byte	0x7
	.byte	0x76
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN6"
	.byte	0x7
	.byte	0x77
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN7"
	.byte	0x7
	.byte	0x78
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN8"
	.byte	0x7
	.byte	0x79
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN9"
	.byte	0x7
	.byte	0x7a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN10"
	.byte	0x7
	.byte	0x7b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN11"
	.byte	0x7
	.byte	0x7c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN12"
	.byte	0x7
	.byte	0x7d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN13"
	.byte	0x7
	.byte	0x7e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN14"
	.byte	0x7
	.byte	0x7f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"EN15"
	.byte	0x7
	.byte	0x80
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x7
	.byte	0x81
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ESR_Bits"
	.byte	0x7
	.byte	0x82
	.uaword	0x295c
	.uleb128 0xe
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x85
	.uaword	0x2b04
	.uleb128 0xf
	.string	"MODREV"
	.byte	0x7
	.byte	0x87
	.uaword	0xb19
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"MODTYPE"
	.byte	0x7
	.byte	0x88
	.uaword	0xb19
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF18
	.byte	0x7
	.byte	0x89
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_ID_Bits"
	.byte	0x7
	.byte	0x8a
	.uaword	0x2ab2
	.uleb128 0xe
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0x8d
	.uaword	0x2c48
	.uleb128 0xf
	.string	"P0"
	.byte	0x7
	.byte	0x8f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P1"
	.byte	0x7
	.byte	0x90
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P2"
	.byte	0x7
	.byte	0x91
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P3"
	.byte	0x7
	.byte	0x92
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P4"
	.byte	0x7
	.byte	0x93
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P5"
	.byte	0x7
	.byte	0x94
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P6"
	.byte	0x7
	.byte	0x95
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P7"
	.byte	0x7
	.byte	0x96
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P8"
	.byte	0x7
	.byte	0x97
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P9"
	.byte	0x7
	.byte	0x98
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P10"
	.byte	0x7
	.byte	0x99
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P11"
	.byte	0x7
	.byte	0x9a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P12"
	.byte	0x7
	.byte	0x9b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P13"
	.byte	0x7
	.byte	0x9c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P14"
	.byte	0x7
	.byte	0x9d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"P15"
	.byte	0x7
	.byte	0x9e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x7
	.byte	0x9f
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IN_Bits"
	.byte	0x7
	.byte	0xa0
	.uaword	0x2b19
	.uleb128 0xe
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xa3
	.uaword	0x2d00
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x7
	.byte	0xa5
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC0"
	.byte	0x7
	.byte	0xa6
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x7
	.byte	0xa7
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC1"
	.byte	0x7
	.byte	0xa8
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x7
	.byte	0xa9
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC2"
	.byte	0x7
	.byte	0xaa
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x7
	.byte	0xab
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC3"
	.byte	0x7
	.byte	0xac
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x7
	.byte	0xad
	.uaword	0x2c5d
	.uleb128 0xe
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xb0
	.uaword	0x2dc0
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x7
	.byte	0xb2
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC12"
	.byte	0x7
	.byte	0xb3
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x7
	.byte	0xb4
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC13"
	.byte	0x7
	.byte	0xb5
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x7
	.byte	0xb6
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC14"
	.byte	0x7
	.byte	0xb7
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x7
	.byte	0xb8
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC15"
	.byte	0x7
	.byte	0xb9
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x7
	.byte	0xba
	.uaword	0x2d18
	.uleb128 0xe
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xbd
	.uaword	0x2e7c
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x7
	.byte	0xbf
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC4"
	.byte	0x7
	.byte	0xc0
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x7
	.byte	0xc1
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC5"
	.byte	0x7
	.byte	0xc2
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x7
	.byte	0xc3
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC6"
	.byte	0x7
	.byte	0xc4
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x7
	.byte	0xc5
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC7"
	.byte	0x7
	.byte	0xc6
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x7
	.byte	0xc7
	.uaword	0x2dd9
	.uleb128 0xe
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xca
	.uaword	0x2f39
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x7
	.byte	0xcc
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC8"
	.byte	0x7
	.byte	0xcd
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x7
	.byte	0xce
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC9"
	.byte	0x7
	.byte	0xcf
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x7
	.byte	0xd0
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC10"
	.byte	0x7
	.byte	0xd1
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x7
	.byte	0xd2
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PC11"
	.byte	0x7
	.byte	0xd3
	.uaword	0xb19
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x7
	.byte	0xd4
	.uaword	0x2e94
	.uleb128 0xe
	.string	"_Ifx_P_LPCR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xd7
	.uaword	0x307f
	.uleb128 0xf
	.string	"REN_CTRL"
	.byte	0x7
	.byte	0xd9
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"RX_EN"
	.byte	0x7
	.byte	0xda
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TERM"
	.byte	0x7
	.byte	0xdb
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"LRXTERM"
	.byte	0x7
	.byte	0xdc
	.uaword	0xb19
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"LVDSM"
	.byte	0x7
	.byte	0xdd
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PS"
	.byte	0x7
	.byte	0xde
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TEN_CTRL"
	.byte	0x7
	.byte	0xdf
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TX_EN"
	.byte	0x7
	.byte	0xe0
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"VDIFFADJ"
	.byte	0x7
	.byte	0xe1
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"VOSDYN"
	.byte	0x7
	.byte	0xe2
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"VOSEXT"
	.byte	0x7
	.byte	0xe3
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TX_PD"
	.byte	0x7
	.byte	0xe4
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"TX_PWDPD"
	.byte	0x7
	.byte	0xe5
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x7
	.byte	0xe6
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_LPCR_Bits"
	.byte	0x7
	.byte	0xe7
	.uaword	0x2f51
	.uleb128 0xe
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x7
	.byte	0xea
	.uaword	0x31e7
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x7
	.byte	0xec
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL0"
	.byte	0x7
	.byte	0xed
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL1"
	.byte	0x7
	.byte	0xee
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL2"
	.byte	0x7
	.byte	0xef
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL3"
	.byte	0x7
	.byte	0xf0
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL4"
	.byte	0x7
	.byte	0xf1
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL5"
	.byte	0x7
	.byte	0xf2
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL6"
	.byte	0x7
	.byte	0xf3
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL7"
	.byte	0x7
	.byte	0xf4
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL8"
	.byte	0x7
	.byte	0xf5
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL9"
	.byte	0x7
	.byte	0xf6
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL10"
	.byte	0x7
	.byte	0xf7
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL11"
	.byte	0x7
	.byte	0xf8
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL12"
	.byte	0x7
	.byte	0xf9
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL13"
	.byte	0x7
	.byte	0xfa
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL14"
	.byte	0x7
	.byte	0xfb
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xf
	.string	"PCL15"
	.byte	0x7
	.byte	0xfc
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x3
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x7
	.byte	0xfd
	.uaword	0x3096
	.uleb128 0x12
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x100
	.uaword	0x328a
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x102
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x103
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x104
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL2"
	.byte	0x7
	.uahalf	0x105
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL3"
	.byte	0x7
	.uahalf	0x106
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x107
	.uaword	0xb19
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x7
	.uahalf	0x108
	.uaword	0x31fe
	.uleb128 0x12
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x10b
	.uaword	0x3322
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x10d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL12"
	.byte	0x7
	.uahalf	0x10e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL13"
	.byte	0x7
	.uahalf	0x10f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL14"
	.byte	0x7
	.uahalf	0x110
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL15"
	.byte	0x7
	.uahalf	0x111
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x7
	.uahalf	0x112
	.uaword	0x32a3
	.uleb128 0x12
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x115
	.uaword	0x33c8
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x117
	.uaword	0xb19
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL4"
	.byte	0x7
	.uahalf	0x118
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL5"
	.byte	0x7
	.uahalf	0x119
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL6"
	.byte	0x7
	.uahalf	0x11a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL7"
	.byte	0x7
	.uahalf	0x11b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF20
	.byte	0x7
	.uahalf	0x11c
	.uaword	0xb19
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x7
	.uahalf	0x11d
	.uaword	0x333c
	.uleb128 0x12
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x120
	.uaword	0x346f
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x122
	.uaword	0xb19
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL8"
	.byte	0x7
	.uahalf	0x123
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL9"
	.byte	0x7
	.uahalf	0x124
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL10"
	.byte	0x7
	.uahalf	0x125
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL11"
	.byte	0x7
	.uahalf	0x126
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x127
	.uaword	0xb19
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x7
	.uahalf	0x128
	.uaword	0x33e1
	.uleb128 0x12
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x12b
	.uaword	0x36fe
	.uleb128 0x11
	.string	"PS0"
	.byte	0x7
	.uahalf	0x12d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS1"
	.byte	0x7
	.uahalf	0x12e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS2"
	.byte	0x7
	.uahalf	0x12f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS3"
	.byte	0x7
	.uahalf	0x130
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS4"
	.byte	0x7
	.uahalf	0x131
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS5"
	.byte	0x7
	.uahalf	0x132
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS6"
	.byte	0x7
	.uahalf	0x133
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS7"
	.byte	0x7
	.uahalf	0x134
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS8"
	.byte	0x7
	.uahalf	0x135
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS9"
	.byte	0x7
	.uahalf	0x136
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS10"
	.byte	0x7
	.uahalf	0x137
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS11"
	.byte	0x7
	.uahalf	0x138
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS12"
	.byte	0x7
	.uahalf	0x139
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS13"
	.byte	0x7
	.uahalf	0x13a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS14"
	.byte	0x7
	.uahalf	0x13b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS15"
	.byte	0x7
	.uahalf	0x13c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL0"
	.byte	0x7
	.uahalf	0x13d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL1"
	.byte	0x7
	.uahalf	0x13e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL2"
	.byte	0x7
	.uahalf	0x13f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL3"
	.byte	0x7
	.uahalf	0x140
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL4"
	.byte	0x7
	.uahalf	0x141
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL5"
	.byte	0x7
	.uahalf	0x142
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL6"
	.byte	0x7
	.uahalf	0x143
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL7"
	.byte	0x7
	.uahalf	0x144
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL8"
	.byte	0x7
	.uahalf	0x145
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL9"
	.byte	0x7
	.uahalf	0x146
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL10"
	.byte	0x7
	.uahalf	0x147
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL11"
	.byte	0x7
	.uahalf	0x148
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL12"
	.byte	0x7
	.uahalf	0x149
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL13"
	.byte	0x7
	.uahalf	0x14a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL14"
	.byte	0x7
	.uahalf	0x14b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PCL15"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMR_Bits"
	.byte	0x7
	.uahalf	0x14d
	.uaword	0x3488
	.uleb128 0x12
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x150
	.uaword	0x3868
	.uleb128 0x11
	.string	"PS0"
	.byte	0x7
	.uahalf	0x152
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS1"
	.byte	0x7
	.uahalf	0x153
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS2"
	.byte	0x7
	.uahalf	0x154
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS3"
	.byte	0x7
	.uahalf	0x155
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS4"
	.byte	0x7
	.uahalf	0x156
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS5"
	.byte	0x7
	.uahalf	0x157
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS6"
	.byte	0x7
	.uahalf	0x158
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS7"
	.byte	0x7
	.uahalf	0x159
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS8"
	.byte	0x7
	.uahalf	0x15a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS9"
	.byte	0x7
	.uahalf	0x15b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS10"
	.byte	0x7
	.uahalf	0x15c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS11"
	.byte	0x7
	.uahalf	0x15d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS12"
	.byte	0x7
	.uahalf	0x15e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS13"
	.byte	0x7
	.uahalf	0x15f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS14"
	.byte	0x7
	.uahalf	0x160
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS15"
	.byte	0x7
	.uahalf	0x161
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x162
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x7
	.uahalf	0x163
	.uaword	0x3715
	.uleb128 0x12
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x166
	.uaword	0x38f6
	.uleb128 0x11
	.string	"PS0"
	.byte	0x7
	.uahalf	0x168
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS1"
	.byte	0x7
	.uahalf	0x169
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS2"
	.byte	0x7
	.uahalf	0x16a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS3"
	.byte	0x7
	.uahalf	0x16b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF10
	.byte	0x7
	.uahalf	0x16c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x7
	.uahalf	0x16d
	.uaword	0x3880
	.uleb128 0x12
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x170
	.uaword	0x399c
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x172
	.uaword	0xb19
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS12"
	.byte	0x7
	.uahalf	0x173
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS13"
	.byte	0x7
	.uahalf	0x174
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS14"
	.byte	0x7
	.uahalf	0x175
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS15"
	.byte	0x7
	.uahalf	0x176
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x177
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x7
	.uahalf	0x178
	.uaword	0x390f
	.uleb128 0x12
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x17b
	.uaword	0x3a3e
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x17d
	.uaword	0xb19
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS4"
	.byte	0x7
	.uahalf	0x17e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS5"
	.byte	0x7
	.uahalf	0x17f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS6"
	.byte	0x7
	.uahalf	0x180
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS7"
	.byte	0x7
	.uahalf	0x181
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF15
	.byte	0x7
	.uahalf	0x182
	.uaword	0xb19
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x39b6
	.uleb128 0x12
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x186
	.uaword	0x3ae9
	.uleb128 0x13
	.uaword	.LASF8
	.byte	0x7
	.uahalf	0x188
	.uaword	0xb19
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS8"
	.byte	0x7
	.uahalf	0x189
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS9"
	.byte	0x7
	.uahalf	0x18a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS10"
	.byte	0x7
	.uahalf	0x18b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PS11"
	.byte	0x7
	.uahalf	0x18c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"reserved_12"
	.byte	0x7
	.uahalf	0x18d
	.uaword	0xb19
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x7
	.uahalf	0x18e
	.uaword	0x3a57
	.uleb128 0x12
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x191
	.uaword	0x3c44
	.uleb128 0x11
	.string	"P0"
	.byte	0x7
	.uahalf	0x193
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P1"
	.byte	0x7
	.uahalf	0x194
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P2"
	.byte	0x7
	.uahalf	0x195
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P3"
	.byte	0x7
	.uahalf	0x196
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P4"
	.byte	0x7
	.uahalf	0x197
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P5"
	.byte	0x7
	.uahalf	0x198
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P6"
	.byte	0x7
	.uahalf	0x199
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P7"
	.byte	0x7
	.uahalf	0x19a
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P8"
	.byte	0x7
	.uahalf	0x19b
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P9"
	.byte	0x7
	.uahalf	0x19c
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P10"
	.byte	0x7
	.uahalf	0x19d
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P11"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P12"
	.byte	0x7
	.uahalf	0x19f
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P13"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P14"
	.byte	0x7
	.uahalf	0x1a1
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"P15"
	.byte	0x7
	.uahalf	0x1a2
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x1a3
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OUT_Bits"
	.byte	0x7
	.uahalf	0x1a4
	.uaword	0x3b02
	.uleb128 0x12
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1a7
	.uaword	0x3dd0
	.uleb128 0x11
	.string	"SEL0"
	.byte	0x7
	.uahalf	0x1a9
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL1"
	.byte	0x7
	.uahalf	0x1aa
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL2"
	.byte	0x7
	.uahalf	0x1ab
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL3"
	.byte	0x7
	.uahalf	0x1ac
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL4"
	.byte	0x7
	.uahalf	0x1ad
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL5"
	.byte	0x7
	.uahalf	0x1ae
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL6"
	.byte	0x7
	.uahalf	0x1af
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL7"
	.byte	0x7
	.uahalf	0x1b0
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL8"
	.byte	0x7
	.uahalf	0x1b1
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL9"
	.byte	0x7
	.uahalf	0x1b2
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL10"
	.byte	0x7
	.uahalf	0x1b3
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL11"
	.byte	0x7
	.uahalf	0x1b4
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL12"
	.byte	0x7
	.uahalf	0x1b5
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL13"
	.byte	0x7
	.uahalf	0x1b6
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL14"
	.byte	0x7
	.uahalf	0x1b7
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"SEL15"
	.byte	0x7
	.uahalf	0x1b8
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x1b9
	.uaword	0xb19
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"LCK"
	.byte	0x7
	.uahalf	0x1ba
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x7
	.uahalf	0x1bb
	.uaword	0x3c5b
	.uleb128 0x12
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1be
	.uaword	0x3f5c
	.uleb128 0x11
	.string	"PDIS0"
	.byte	0x7
	.uahalf	0x1c0
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS1"
	.byte	0x7
	.uahalf	0x1c1
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS2"
	.byte	0x7
	.uahalf	0x1c2
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS3"
	.byte	0x7
	.uahalf	0x1c3
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS4"
	.byte	0x7
	.uahalf	0x1c4
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS5"
	.byte	0x7
	.uahalf	0x1c5
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS6"
	.byte	0x7
	.uahalf	0x1c6
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS7"
	.byte	0x7
	.uahalf	0x1c7
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS8"
	.byte	0x7
	.uahalf	0x1c8
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS9"
	.byte	0x7
	.uahalf	0x1c9
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS10"
	.byte	0x7
	.uahalf	0x1ca
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS11"
	.byte	0x7
	.uahalf	0x1cb
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS12"
	.byte	0x7
	.uahalf	0x1cc
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS13"
	.byte	0x7
	.uahalf	0x1cd
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS14"
	.byte	0x7
	.uahalf	0x1ce
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PDIS15"
	.byte	0x7
	.uahalf	0x1cf
	.uaword	0xb19
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.uaword	.LASF14
	.byte	0x7
	.uahalf	0x1d0
	.uaword	0xb19
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x7
	.uahalf	0x1d1
	.uaword	0x3de8
	.uleb128 0x12
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1d4
	.uaword	0x40b0
	.uleb128 0x11
	.string	"PD0"
	.byte	0x7
	.uahalf	0x1d6
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL0"
	.byte	0x7
	.uahalf	0x1d7
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD1"
	.byte	0x7
	.uahalf	0x1d8
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL1"
	.byte	0x7
	.uahalf	0x1d9
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD2"
	.byte	0x7
	.uahalf	0x1da
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL2"
	.byte	0x7
	.uahalf	0x1db
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD3"
	.byte	0x7
	.uahalf	0x1dc
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL3"
	.byte	0x7
	.uahalf	0x1dd
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD4"
	.byte	0x7
	.uahalf	0x1de
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL4"
	.byte	0x7
	.uahalf	0x1df
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD5"
	.byte	0x7
	.uahalf	0x1e0
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL5"
	.byte	0x7
	.uahalf	0x1e1
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD6"
	.byte	0x7
	.uahalf	0x1e2
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL6"
	.byte	0x7
	.uahalf	0x1e3
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD7"
	.byte	0x7
	.uahalf	0x1e4
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL7"
	.byte	0x7
	.uahalf	0x1e5
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x7
	.uahalf	0x1e6
	.uaword	0x3f75
	.uleb128 0x12
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x7
	.uahalf	0x1e9
	.uaword	0x420f
	.uleb128 0x11
	.string	"PD8"
	.byte	0x7
	.uahalf	0x1eb
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL8"
	.byte	0x7
	.uahalf	0x1ec
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD9"
	.byte	0x7
	.uahalf	0x1ed
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL9"
	.byte	0x7
	.uahalf	0x1ee
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD10"
	.byte	0x7
	.uahalf	0x1ef
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL10"
	.byte	0x7
	.uahalf	0x1f0
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD11"
	.byte	0x7
	.uahalf	0x1f1
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL11"
	.byte	0x7
	.uahalf	0x1f2
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD12"
	.byte	0x7
	.uahalf	0x1f3
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL12"
	.byte	0x7
	.uahalf	0x1f4
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD13"
	.byte	0x7
	.uahalf	0x1f5
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL13"
	.byte	0x7
	.uahalf	0x1f6
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD14"
	.byte	0x7
	.uahalf	0x1f7
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL14"
	.byte	0x7
	.uahalf	0x1f8
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PD15"
	.byte	0x7
	.uahalf	0x1f9
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x11
	.string	"PL15"
	.byte	0x7
	.uahalf	0x1fa
	.uaword	0xb19
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x7
	.uahalf	0x1fb
	.uaword	0x40c8
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x203
	.uaword	0x424f
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x205
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x206
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x207
	.uaword	0x28fd
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_ACCEN0"
	.byte	0x7
	.uahalf	0x208
	.uaword	0x4227
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x20b
	.uaword	0x428c
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x20d
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x20e
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x20f
	.uaword	0x2943
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_ACCEN1"
	.byte	0x7
	.uahalf	0x210
	.uaword	0x4264
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x213
	.uaword	0x42c9
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x215
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x216
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x217
	.uaword	0x2a9c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_ESR"
	.byte	0x7
	.uahalf	0x218
	.uaword	0x42a1
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x21b
	.uaword	0x4303
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x21d
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x21e
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x21f
	.uaword	0x2b04
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_ID"
	.byte	0x7
	.uahalf	0x220
	.uaword	0x42db
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x223
	.uaword	0x433c
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x225
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x226
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x227
	.uaword	0x2c48
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IN"
	.byte	0x7
	.uahalf	0x228
	.uaword	0x4314
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x22b
	.uaword	0x4375
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x22d
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x22e
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x22f
	.uaword	0x2d00
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IOCR0"
	.byte	0x7
	.uahalf	0x230
	.uaword	0x434d
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x233
	.uaword	0x43b1
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x235
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x236
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x237
	.uaword	0x2dc0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IOCR12"
	.byte	0x7
	.uahalf	0x238
	.uaword	0x4389
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x23b
	.uaword	0x43ee
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x23d
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x23e
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x23f
	.uaword	0x2e7c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IOCR4"
	.byte	0x7
	.uahalf	0x240
	.uaword	0x43c6
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x243
	.uaword	0x442a
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x245
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x246
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x247
	.uaword	0x2f39
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IOCR8"
	.byte	0x7
	.uahalf	0x248
	.uaword	0x4402
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x24b
	.uaword	0x4466
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x24d
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x24e
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x24f
	.uaword	0x307f
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_LPCR"
	.byte	0x7
	.uahalf	0x250
	.uaword	0x443e
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x253
	.uaword	0x44a1
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x255
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x256
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x257
	.uaword	0x31e7
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR"
	.byte	0x7
	.uahalf	0x258
	.uaword	0x4479
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x25b
	.uaword	0x44dc
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x25d
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x25e
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x25f
	.uaword	0x328a
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR0"
	.byte	0x7
	.uahalf	0x260
	.uaword	0x44b4
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x263
	.uaword	0x4518
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x265
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x266
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x267
	.uaword	0x3322
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR12"
	.byte	0x7
	.uahalf	0x268
	.uaword	0x44f0
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x26b
	.uaword	0x4555
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x26d
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x26e
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x26f
	.uaword	0x33c8
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR4"
	.byte	0x7
	.uahalf	0x270
	.uaword	0x452d
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x273
	.uaword	0x4591
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x275
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x276
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x277
	.uaword	0x346f
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR8"
	.byte	0x7
	.uahalf	0x278
	.uaword	0x4569
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x27b
	.uaword	0x45cd
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x27d
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x27e
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x27f
	.uaword	0x36fe
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMR"
	.byte	0x7
	.uahalf	0x280
	.uaword	0x45a5
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x283
	.uaword	0x4607
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x285
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x286
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x287
	.uaword	0x3868
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR"
	.byte	0x7
	.uahalf	0x288
	.uaword	0x45df
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x28b
	.uaword	0x4642
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x28d
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x28e
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x28f
	.uaword	0x38f6
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR0"
	.byte	0x7
	.uahalf	0x290
	.uaword	0x461a
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x293
	.uaword	0x467e
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x295
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x296
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x297
	.uaword	0x399c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR12"
	.byte	0x7
	.uahalf	0x298
	.uaword	0x4656
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x29b
	.uaword	0x46bb
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x29d
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x29e
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x29f
	.uaword	0x3a3e
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR4"
	.byte	0x7
	.uahalf	0x2a0
	.uaword	0x4693
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2a3
	.uaword	0x46f7
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2a5
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2a6
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2a7
	.uaword	0x3ae9
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR8"
	.byte	0x7
	.uahalf	0x2a8
	.uaword	0x46cf
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2ab
	.uaword	0x4733
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2ad
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2ae
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2af
	.uaword	0x3c44
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OUT"
	.byte	0x7
	.uahalf	0x2b0
	.uaword	0x470b
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2b3
	.uaword	0x476d
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2b5
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2b6
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2b7
	.uaword	0x3dd0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PCSR"
	.byte	0x7
	.uahalf	0x2b8
	.uaword	0x4745
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2bb
	.uaword	0x47a8
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2bd
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2be
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2bf
	.uaword	0x3f5c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDISC"
	.byte	0x7
	.uahalf	0x2c0
	.uaword	0x4780
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2c3
	.uaword	0x47e4
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2c5
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2c6
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2c7
	.uaword	0x40b0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDR0"
	.byte	0x7
	.uahalf	0x2c8
	.uaword	0x47bc
	.uleb128 0x14
	.byte	0x4
	.byte	0x7
	.uahalf	0x2cb
	.uaword	0x481f
	.uleb128 0x15
	.string	"U"
	.byte	0x7
	.uahalf	0x2cd
	.uaword	0xb19
	.uleb128 0x15
	.string	"I"
	.byte	0x7
	.uahalf	0x2ce
	.uaword	0xb2f
	.uleb128 0x15
	.string	"B"
	.byte	0x7
	.uahalf	0x2cf
	.uaword	0x420f
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDR1"
	.byte	0x7
	.uahalf	0x2d0
	.uaword	0x47f7
	.uleb128 0x16
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x7
	.uahalf	0x2dc
	.uaword	0x4a94
	.uleb128 0x7
	.string	"OUT"
	.byte	0x7
	.uahalf	0x2de
	.uaword	0x4733
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"OMR"
	.byte	0x7
	.uahalf	0x2df
	.uaword	0x45cd
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"ID"
	.byte	0x7
	.uahalf	0x2e0
	.uaword	0x4303
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xb
	.uaword	.LASF21
	.byte	0x7
	.uahalf	0x2e1
	.uaword	0x2635
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"IOCR0"
	.byte	0x7
	.uahalf	0x2e2
	.uaword	0x4375
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"IOCR4"
	.byte	0x7
	.uahalf	0x2e3
	.uaword	0x43ee
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"IOCR8"
	.byte	0x7
	.uahalf	0x2e4
	.uaword	0x442a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x7
	.string	"IOCR12"
	.byte	0x7
	.uahalf	0x2e5
	.uaword	0x43b1
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xb
	.uaword	.LASF23
	.byte	0x7
	.uahalf	0x2e6
	.uaword	0x2635
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x7
	.string	"IN"
	.byte	0x7
	.uahalf	0x2e7
	.uaword	0x433c
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xb
	.uaword	.LASF16
	.byte	0x7
	.uahalf	0x2e8
	.uaword	0x4a94
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x7
	.string	"PDR0"
	.byte	0x7
	.uahalf	0x2e9
	.uaword	0x47e4
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x7
	.string	"PDR1"
	.byte	0x7
	.uahalf	0x2ea
	.uaword	0x481f
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x7
	.string	"reserved_48"
	.byte	0x7
	.uahalf	0x2eb
	.uaword	0x2655
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x7
	.string	"ESR"
	.byte	0x7
	.uahalf	0x2ec
	.uaword	0x42c9
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x7
	.string	"reserved_54"
	.byte	0x7
	.uahalf	0x2ed
	.uaword	0x2675
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x7
	.string	"PDISC"
	.byte	0x7
	.uahalf	0x2ee
	.uaword	0x47a8
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x7
	.string	"PCSR"
	.byte	0x7
	.uahalf	0x2ef
	.uaword	0x476d
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x7
	.string	"reserved_68"
	.byte	0x7
	.uahalf	0x2f0
	.uaword	0x2655
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x7
	.string	"OMSR0"
	.byte	0x7
	.uahalf	0x2f1
	.uaword	0x4642
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x7
	.string	"OMSR4"
	.byte	0x7
	.uahalf	0x2f2
	.uaword	0x46bb
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0x7
	.string	"OMSR8"
	.byte	0x7
	.uahalf	0x2f3
	.uaword	0x46f7
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x7
	.string	"OMSR12"
	.byte	0x7
	.uahalf	0x2f4
	.uaword	0x467e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x7
	.string	"OMCR0"
	.byte	0x7
	.uahalf	0x2f5
	.uaword	0x44dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x7
	.string	"OMCR4"
	.byte	0x7
	.uahalf	0x2f6
	.uaword	0x4555
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x7
	.string	"OMCR8"
	.byte	0x7
	.uahalf	0x2f7
	.uaword	0x4591
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x7
	.string	"OMCR12"
	.byte	0x7
	.uahalf	0x2f8
	.uaword	0x4518
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x7
	.string	"OMSR"
	.byte	0x7
	.uahalf	0x2f9
	.uaword	0x4607
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x7
	.string	"OMCR"
	.byte	0x7
	.uahalf	0x2fa
	.uaword	0x44a1
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xb
	.uaword	.LASF22
	.byte	0x7
	.uahalf	0x2fb
	.uaword	0x2655
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0x7
	.string	"LPCR"
	.byte	0x7
	.uahalf	0x2fc
	.uaword	0x4aa4
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x7
	.string	"reserved_C0"
	.byte	0x7
	.uahalf	0x2fd
	.uaword	0x4ab4
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x7
	.string	"ACCEN1"
	.byte	0x7
	.uahalf	0x2fe
	.uaword	0x428c
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0x7
	.string	"ACCEN0"
	.byte	0x7
	.uahalf	0x2ff
	.uaword	0x424f
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0xc
	.uaword	0xb04
	.uaword	0x4aa4
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x17
	.byte	0
	.uleb128 0xc
	.uaword	0x4466
	.uaword	0x4ab4
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x7
	.byte	0
	.uleb128 0xc
	.uaword	0xb04
	.uaword	0x4ac4
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x37
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P"
	.byte	0x7
	.uahalf	0x300
	.uaword	0x4ad2
	.uleb128 0x17
	.uaword	0x4832
	.uleb128 0x18
	.byte	0x1
	.byte	0x1
	.uahalf	0x1a6
	.uaword	0x4b0f
	.uleb128 0x5
	.string	"SPI_SYNC_COMMS"
	.sleb128 1
	.uleb128 0x5
	.string	"SPI_ASYNC_COMMS"
	.sleb128 2
	.uleb128 0x5
	.string	"SPI_BOTH"
	.sleb128 3
	.byte	0
	.uleb128 0xa
	.string	"SpiCommsTypes"
	.byte	0x1
	.uahalf	0x1aa
	.uaword	0x4ad7
	.uleb128 0x6
	.byte	0x1c
	.byte	0x1
	.uahalf	0x216
	.uaword	0x4bcb
	.uleb128 0x7
	.string	"SyncStatus"
	.byte	0x1
	.uahalf	0x219
	.uaword	0x2e1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"KernelLock"
	.byte	0x1
	.uahalf	0x21d
	.uaword	0x233
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x7
	.string	"SeqStatus"
	.byte	0x1
	.uahalf	0x226
	.uaword	0x4bcb
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x7
	.string	"JobStatus"
	.byte	0x1
	.uahalf	0x229
	.uaword	0x4bd1
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x7
	.string	"TxBuffer"
	.byte	0x1
	.uahalf	0x22c
	.uaword	0x860
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x7
	.string	"RxBuffer"
	.byte	0x1
	.uahalf	0x22f
	.uaword	0x860
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x7
	.string	"ChannelBufPointers"
	.byte	0x1
	.uahalf	0x232
	.uaword	0x4bd7
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x3a6
	.uleb128 0x8
	.byte	0x4
	.uaword	0x341
	.uleb128 0x8
	.byte	0x4
	.uaword	0x86b
	.uleb128 0xa
	.string	"Spi_RunTimeCoreConfigType"
	.byte	0x1
	.uahalf	0x233
	.uaword	0x4b25
	.uleb128 0x19
	.string	"Spi_lGetChannelDataWidth"
	.byte	0x1
	.uahalf	0x11d5
	.byte	0x1
	.uaword	0x1cc
	.byte	0x1
	.uaword	0x4c53
	.uleb128 0x1a
	.string	"ChnlConfigPtr"
	.byte	0x1
	.uahalf	0x11d6
	.uaword	0x4c53
	.uleb128 0x1b
	.string	"SizeofElement"
	.byte	0x1
	.uahalf	0x11d8
	.uaword	0x1cc
	.byte	0
	.uleb128 0x9
	.uaword	0x9ba
	.uleb128 0x19
	.string	"Spi_lGetTotalIBChannelsInCore"
	.byte	0x1
	.uahalf	0x1aee
	.byte	0x1
	.uaword	0x1cc
	.byte	0x1
	.uaword	0x4ca9
	.uleb128 0x1c
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x1aee
	.uaword	0x4ca9
	.uleb128 0x1b
	.string	"TotalIbChannels"
	.byte	0x1
	.uahalf	0x1af0
	.uaword	0x1cc
	.byte	0
	.uleb128 0x9
	.uaword	0x233
	.uleb128 0x1d
	.string	"Spi_lClearMem"
	.byte	0x1
	.uahalf	0x1ca5
	.byte	0x1
	.byte	0x1
	.uaword	0x4cfe
	.uleb128 0x1a
	.string	"BufferPtr"
	.byte	0x1
	.uahalf	0x1ca5
	.uaword	0x4cfe
	.uleb128 0x1a
	.string	"BufferSize"
	.byte	0x1
	.uahalf	0x1ca5
	.uaword	0x4ca9
	.uleb128 0x1b
	.string	"LoopCount"
	.byte	0x1
	.uahalf	0x1ca9
	.uaword	0x233
	.byte	0
	.uleb128 0x9
	.uaword	0x4d03
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1cc
	.uleb128 0x19
	.string	"Spi_lIsQSPIHwConfigured"
	.byte	0x1
	.uahalf	0x1c77
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x4d48
	.uleb128 0x1c
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x1c77
	.uaword	0xadd
	.uleb128 0x1e
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x1c79
	.uaword	0x29f
	.byte	0
	.uleb128 0x1d
	.string	"Spi_lHwSetJobConfig"
	.byte	0x1
	.uahalf	0x2030
	.byte	0x1
	.byte	0x1
	.uaword	0x4e29
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2032
	.uaword	0x4e29
	.uleb128 0x1a
	.string	"IsAsynchronous"
	.byte	0x1
	.uahalf	0x2033
	.uaword	0xadd
	.uleb128 0x1e
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x2036
	.uaword	0x4e2e
	.uleb128 0x1e
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x2038
	.uaword	0x1fc4
	.uleb128 0x1b
	.string	"GlobalCon1Reg"
	.byte	0x1
	.uahalf	0x203a
	.uaword	0x2007
	.uleb128 0x1b
	.string	"EconReg"
	.byte	0x1
	.uahalf	0x203c
	.uaword	0x1f42
	.uleb128 0x1b
	.string	"HwChannelno"
	.byte	0x1
	.uahalf	0x203d
	.uaword	0x1cc
	.uleb128 0x1b
	.string	"HwUnitNum"
	.byte	0x1
	.uahalf	0x203e
	.uaword	0x1cc
	.uleb128 0x1b
	.string	"Strobe"
	.byte	0x1
	.uahalf	0x203f
	.uaword	0x233
	.uleb128 0x1b
	.string	"LBbitstatus"
	.byte	0x1
	.uahalf	0x2040
	.uaword	0x233
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2041
	.uaword	0xacc
	.uleb128 0x1e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x2047
	.uaword	0x233
	.byte	0
	.uleb128 0x9
	.uaword	0x9af
	.uleb128 0x8
	.byte	0x4
	.uaword	0x2695
	.uleb128 0x1d
	.string	"Spi_lSetCsViaGpio"
	.byte	0x1
	.uahalf	0x23a5
	.byte	0x1
	.byte	0x1
	.uaword	0x4e8b
	.uleb128 0x1a
	.string	"Port"
	.byte	0x1
	.uahalf	0x23a5
	.uaword	0xadd
	.uleb128 0x1a
	.string	"Pin"
	.byte	0x1
	.uahalf	0x23a6
	.uaword	0xadd
	.uleb128 0x1a
	.string	"Level"
	.byte	0x1
	.uahalf	0x23a6
	.uaword	0xadd
	.uleb128 0x1b
	.string	"PortOmrVal"
	.byte	0x1
	.uahalf	0x23a8
	.uaword	0x233
	.byte	0
	.uleb128 0x19
	.string	"Spi_lCheckInitStatus"
	.byte	0x1
	.uahalf	0x19cd
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x4ee6
	.uleb128 0x1a
	.string	"ApiId"
	.byte	0x1
	.uahalf	0x19cd
	.uaword	0xadd
	.uleb128 0x1a
	.string	"DetRaise"
	.byte	0x1
	.uahalf	0x19ce
	.uaword	0xadd
	.uleb128 0x1e
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x19d0
	.uaword	0x29f
	.uleb128 0x1e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x19d5
	.uaword	0x233
	.byte	0
	.uleb128 0x1d
	.string	"Spi_lQSPIHwResetInit"
	.byte	0x1
	.uahalf	0x1ce5
	.byte	0x1
	.byte	0x1
	.uaword	0x4f1e
	.uleb128 0x1c
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x1ce5
	.uaword	0xadd
	.uleb128 0x1e
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x1ce7
	.uaword	0x1cc
	.byte	0
	.uleb128 0x19
	.string	"Spi_lIsStatusBusy"
	.byte	0x1
	.uahalf	0x1de4
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x4f7a
	.uleb128 0x1a
	.string	"CheckCommsType"
	.byte	0x1
	.uahalf	0x1de4
	.uaword	0x4f7a
	.uleb128 0x1e
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x1de6
	.uaword	0x29f
	.uleb128 0x1e
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0x1de7
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x1deb
	.uaword	0x233
	.byte	0
	.uleb128 0x9
	.uaword	0x4b0f
	.uleb128 0x19
	.string	"Spi_lHwSetChannelConfig"
	.byte	0x1
	.uahalf	0x20da
	.byte	0x1
	.uaword	0x1e3f
	.byte	0x1
	.uaword	0x500f
	.uleb128 0x1a
	.string	"SpiChId"
	.byte	0x1
	.uahalf	0x20dc
	.uaword	0x661
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x20dd
	.uaword	0x4e29
	.uleb128 0x1c
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x20de
	.uaword	0xadd
	.uleb128 0x1b
	.string	"BaconReg"
	.byte	0x1
	.uahalf	0x20e2
	.uaword	0x1e3f
	.uleb128 0x1e
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x20e3
	.uaword	0x4e2e
	.uleb128 0x1e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x20e6
	.uaword	0x233
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x20e7
	.uaword	0xacc
	.uleb128 0x1e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x20e9
	.uaword	0x9ba
	.byte	0
	.uleb128 0x1f
	.uaword	0x4f7f
	.uaword	.LFB42
	.uaword	.LFE42
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5072
	.uleb128 0x20
	.uaword	0x4fa5
	.uaword	.LLST0
	.uleb128 0x20
	.uaword	0x4fb5
	.uaword	.LLST1
	.uleb128 0x20
	.uaword	0x4fc1
	.uaword	.LLST2
	.uleb128 0x21
	.uaword	0x4fcd
	.uaword	.LLST3
	.uleb128 0x22
	.uaword	0x4fde
	.byte	0x1
	.byte	0x62
	.uleb128 0x21
	.uaword	0x4fea
	.uaword	.LLST4
	.uleb128 0x21
	.uaword	0x4ff6
	.uaword	.LLST5
	.uleb128 0x22
	.uaword	0x5002
	.byte	0x1
	.byte	0x53
	.uleb128 0x23
	.uaword	.LVL1
	.uaword	0x6917
	.byte	0
	.uleb128 0x1d
	.string	"Spi_lCoreInit"
	.byte	0x1
	.uahalf	0x1a36
	.byte	0x1
	.byte	0x1
	.uaword	0x5097
	.uleb128 0x1c
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x1a36
	.uaword	0x4ca9
	.byte	0
	.uleb128 0x19
	.string	"Spi_lIsQSPIHwConfiguredSync"
	.byte	0x1
	.uahalf	0x1c4a
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x50f5
	.uleb128 0x1c
	.uaword	.LASF25
	.byte	0x1
	.uahalf	0x1c4a
	.uaword	0xadd
	.uleb128 0x1e
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x1c4d
	.uaword	0x29f
	.uleb128 0x1b
	.string	"HWType"
	.byte	0x1
	.uahalf	0x1c4e
	.uaword	0x49b
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1c4f
	.uaword	0xacc
	.byte	0
	.uleb128 0x1d
	.string	"Spi_lQSPIHwInit"
	.byte	0x1
	.uahalf	0x1d38
	.byte	0x1
	.byte	0x1
	.uaword	0x5128
	.uleb128 0x1c
	.uaword	.LASF29
	.byte	0x1
	.uahalf	0x1d38
	.uaword	0xadd
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1d3a
	.uaword	0xacc
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"Spi_Init"
	.byte	0x1
	.uahalf	0xe88
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x533a
	.uleb128 0x25
	.string	"ConfigPtr"
	.byte	0x1
	.uahalf	0xe88
	.uaword	0x533a
	.uaword	.LLST6
	.uleb128 0x26
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0xe8a
	.uaword	0x233
	.uaword	.LLST7
	.uleb128 0x26
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0xe8b
	.uaword	0xacc
	.uaword	.LLST8
	.uleb128 0x27
	.string	"HwMap"
	.byte	0x1
	.uahalf	0xe8c
	.uaword	0x1cc
	.uaword	.LLST9
	.uleb128 0x28
	.uaword	0x5072
	.uaword	.LBB51
	.uaword	.LBE51
	.byte	0x1
	.uahalf	0xea5
	.uaword	0x5247
	.uleb128 0x20
	.uaword	0x508a
	.uaword	.LLST10
	.uleb128 0x29
	.uaword	0x4cae
	.uaword	.LBB53
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x1a44
	.uaword	0x51de
	.uleb128 0x20
	.uaword	0x4cd8
	.uaword	.LLST11
	.uleb128 0x20
	.uaword	0x4cc6
	.uaword	.LLST12
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x2b
	.uaword	0x4ceb
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x4cae
	.uaword	.LBB57
	.uaword	.LBE57
	.byte	0x1
	.uahalf	0x1a50
	.uaword	0x5218
	.uleb128 0x20
	.uaword	0x4cd8
	.uaword	.LLST13
	.uleb128 0x20
	.uaword	0x4cc6
	.uaword	.LLST14
	.uleb128 0x2c
	.uaword	.LBB58
	.uaword	.LBE58
	.uleb128 0x21
	.uaword	0x4ceb
	.uaword	.LLST15
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uaword	0x4cae
	.uaword	.LBB59
	.uaword	.LBE59
	.byte	0x1
	.uahalf	0x1a52
	.uleb128 0x2e
	.uaword	0x4cd8
	.uleb128 0x2e
	.uaword	0x4cc6
	.uleb128 0x2c
	.uaword	.LBB60
	.uaword	.LBE60
	.uleb128 0x21
	.uaword	0x4ceb
	.uaword	.LLST16
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x4ee6
	.uaword	.LBB61
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0xebd
	.uaword	0x5274
	.uleb128 0x20
	.uaword	0x4f05
	.uaword	.LLST17
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x21
	.uaword	0x4f11
	.uaword	.LLST18
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x50f5
	.uaword	.LBB66
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.uahalf	0xec3
	.uaword	0x52aa
	.uleb128 0x20
	.uaword	0x510f
	.uaword	.LLST19
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x21
	.uaword	0x511b
	.uaword	.LLST20
	.uleb128 0x23
	.uaword	.LVL40
	.uaword	0x6917
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x4d09
	.uaword	.LBB69
	.uaword	.LBE69
	.byte	0x1
	.uahalf	0xeac
	.uaword	0x5320
	.uleb128 0x20
	.uaword	0x4d2f
	.uaword	.LLST21
	.uleb128 0x2c
	.uaword	.LBB70
	.uaword	.LBE70
	.uleb128 0x21
	.uaword	0x4d3b
	.uaword	.LLST22
	.uleb128 0x2d
	.uaword	0x5097
	.uaword	.LBB71
	.uaword	.LBE71
	.byte	0x1
	.uahalf	0x1c7e
	.uleb128 0x20
	.uaword	0x50c1
	.uaword	.LLST21
	.uleb128 0x2c
	.uaword	.LBB72
	.uaword	.LBE72
	.uleb128 0x2f
	.uaword	0x50cd
	.byte	0x1
	.uleb128 0x21
	.uaword	0x50d9
	.uaword	.LLST24
	.uleb128 0x21
	.uaword	0x50e8
	.uaword	.LLST25
	.uleb128 0x23
	.uaword	.LVL21
	.uaword	0x6917
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL9
	.uaword	0x6917
	.uleb128 0x30
	.uaword	.LVL29
	.uaword	0x6933
	.uleb128 0x31
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x9
	.uaword	0x533f
	.uleb128 0x8
	.byte	0x4
	.uaword	0x5345
	.uleb128 0x9
	.uaword	0xaed
	.uleb128 0x32
	.byte	0x1
	.string	"Spi_DeInit"
	.byte	0x1
	.uahalf	0xf11
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5579
	.uleb128 0x26
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0xf13
	.uaword	0x29f
	.uaword	.LLST26
	.uleb128 0x26
	.uaword	.LASF30
	.byte	0x1
	.uahalf	0xf17
	.uaword	0x1cc
	.uaword	.LLST27
	.uleb128 0x26
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0xf1c
	.uaword	0x233
	.uaword	.LLST28
	.uleb128 0x33
	.string	"temp"
	.byte	0x1
	.uahalf	0xf1d
	.uaword	0x4b0f
	.byte	0x3
	.uleb128 0x27
	.string	"ClearGlobalPtr"
	.byte	0x1
	.uahalf	0xf1f
	.uaword	0x1cc
	.uaword	.LLST29
	.uleb128 0x29
	.uaword	0x4f1e
	.uaword	.LBB89
	.uaword	.Ldebug_ranges0+0x50
	.byte	0x1
	.uahalf	0xf36
	.uaword	0x54c0
	.uleb128 0x34
	.uaword	0x4f3e
	.byte	0x3
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x50
	.uleb128 0x2f
	.uaword	0x4f55
	.byte	0x1
	.uleb128 0x21
	.uaword	0x4f61
	.uaword	.LLST30
	.uleb128 0x21
	.uaword	0x4f6d
	.uaword	.LLST31
	.uleb128 0x28
	.uaword	0x4d09
	.uaword	.LBB91
	.uaword	.LBE91
	.byte	0x1
	.uahalf	0x1df5
	.uaword	0x546d
	.uleb128 0x2e
	.uaword	0x4d2f
	.uleb128 0x2c
	.uaword	.LBB92
	.uaword	.LBE92
	.uleb128 0x21
	.uaword	0x4d3b
	.uaword	.LLST32
	.uleb128 0x2d
	.uaword	0x5097
	.uaword	.LBB93
	.uaword	.LBE93
	.byte	0x1
	.uahalf	0x1c7e
	.uleb128 0x2e
	.uaword	0x50c1
	.uleb128 0x2c
	.uaword	.LBB94
	.uaword	.LBE94
	.uleb128 0x2f
	.uaword	0x50cd
	.byte	0x1
	.uleb128 0x21
	.uaword	0x50d9
	.uaword	.LLST33
	.uleb128 0x21
	.uaword	0x50e8
	.uaword	.LLST34
	.uleb128 0x23
	.uaword	.LVL50
	.uaword	0x6917
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x5097
	.uaword	.LBB95
	.uaword	.LBE95
	.byte	0x1
	.uahalf	0x1e04
	.uaword	0x54b5
	.uleb128 0x2e
	.uaword	0x50c1
	.uleb128 0x2c
	.uaword	.LBB96
	.uaword	.LBE96
	.uleb128 0x21
	.uaword	0x50cd
	.uaword	.LLST35
	.uleb128 0x21
	.uaword	0x50d9
	.uaword	.LLST36
	.uleb128 0x21
	.uaword	0x50e8
	.uaword	.LLST37
	.uleb128 0x23
	.uaword	.LVL77
	.uaword	0x6917
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL48
	.uaword	0x6917
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x4ee6
	.uaword	.LBB98
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.uahalf	0xf5e
	.uaword	0x54e9
	.uleb128 0x2e
	.uaword	0x4f05
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x21
	.uaword	0x4f11
	.uaword	.LLST38
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x4d09
	.uaword	.LBB105
	.uaword	.LBE105
	.byte	0x1
	.uahalf	0xf52
	.uaword	0x555a
	.uleb128 0x2e
	.uaword	0x4d2f
	.uleb128 0x2c
	.uaword	.LBB106
	.uaword	.LBE106
	.uleb128 0x21
	.uaword	0x4d3b
	.uaword	.LLST39
	.uleb128 0x2d
	.uaword	0x5097
	.uaword	.LBB107
	.uaword	.LBE107
	.byte	0x1
	.uahalf	0x1c7e
	.uleb128 0x2e
	.uaword	0x50c1
	.uleb128 0x2c
	.uaword	.LBB108
	.uaword	.LBE108
	.uleb128 0x21
	.uaword	0x50cd
	.uaword	.LLST40
	.uleb128 0x21
	.uaword	0x50d9
	.uaword	.LLST41
	.uleb128 0x21
	.uaword	0x50e8
	.uaword	.LLST42
	.uleb128 0x23
	.uaword	.LVL58
	.uaword	0x6917
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL46
	.uaword	0x6917
	.uleb128 0x30
	.uaword	.LVL72
	.uaword	0x6933
	.uleb128 0x31
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.uleb128 0x31
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"Spi_lSyncTransmit"
	.byte	0x1
	.uahalf	0x1ea0
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x55fe
	.uleb128 0x1c
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x1ea0
	.uaword	0x55fe
	.uleb128 0x1b
	.string	"SeqConfigPtr"
	.byte	0x1
	.uahalf	0x1ea2
	.uaword	0x9a4
	.uleb128 0x1b
	.string	"JobId"
	.byte	0x1
	.uahalf	0x1ea3
	.uaword	0x45a
	.uleb128 0x1b
	.string	"JobIndex"
	.byte	0x1
	.uahalf	0x1ea3
	.uaword	0x45a
	.uleb128 0x1e
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x1ea4
	.uaword	0x29f
	.uleb128 0x1e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x1ea7
	.uaword	0x233
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1ea8
	.uaword	0xacc
	.byte	0
	.uleb128 0x9
	.uaword	0x46d
	.uleb128 0x19
	.string	"Spi_lSyncStartJob"
	.byte	0x1
	.uahalf	0x1f1e
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x5726
	.uleb128 0x1a
	.string	"JobId"
	.byte	0x1
	.uahalf	0x1f1e
	.uaword	0x540
	.uleb128 0x1e
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x1f20
	.uaword	0x9af
	.uleb128 0x1e
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1f21
	.uaword	0x443
	.uleb128 0x1b
	.string	"ChnlTxErr"
	.byte	0x1
	.uahalf	0x1f22
	.uaword	0x29f
	.uleb128 0x1b
	.string	"ChannelIndex"
	.byte	0x1
	.uahalf	0x1f23
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x1f24
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x1f25
	.uaword	0x1cc
	.uleb128 0x1b
	.string	"DataWidth"
	.byte	0x1
	.uahalf	0x1f26
	.uaword	0x1cc
	.uleb128 0x1b
	.string	"HwId"
	.byte	0x1
	.uahalf	0x1f27
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x1f28
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x1f2b
	.uaword	0x233
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1f2c
	.uaword	0xacc
	.uleb128 0x1e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x1f2e
	.uaword	0x9ba
	.uleb128 0x1e
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x1f30
	.uaword	0x1fc4
	.uleb128 0x1e
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x1f31
	.uaword	0x5726
	.uleb128 0x1b
	.string	"port"
	.byte	0x1
	.uahalf	0x1f32
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x1f34
	.uaword	0x1e3f
	.uleb128 0x1e
	.uaword	.LASF31
	.byte	0x1
	.uahalf	0x1f3b
	.uaword	0x1cc
	.uleb128 0x35
	.uleb128 0x1b
	.string	"u32Sts"
	.byte	0x1
	.uahalf	0x1f91
	.uaword	0x233
	.byte	0
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x572c
	.uleb128 0x9
	.uaword	0x2695
	.uleb128 0x19
	.string	"Spi_lSyncTransmitData8Bit"
	.byte	0x1
	.uahalf	0x2131
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x584f
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x2133
	.uaword	0x661
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x2134
	.uaword	0x4e29
	.uleb128 0x1c
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x2135
	.uaword	0xadd
	.uleb128 0x1c
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x2136
	.uaword	0xadd
	.uleb128 0x1e
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x2139
	.uaword	0x4e2e
	.uleb128 0x1b
	.string	"Src8BitPtr"
	.byte	0x1
	.uahalf	0x213a
	.uaword	0xad7
	.uleb128 0x1b
	.string	"Dest8BitPtr"
	.byte	0x1
	.uahalf	0x213b
	.uaword	0x4d03
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x213c
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x213d
	.uaword	0x427
	.uleb128 0x1e
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x213e
	.uaword	0x29f
	.uleb128 0x1b
	.string	"HwId"
	.byte	0x1
	.uahalf	0x213f
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x2140
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x2141
	.uaword	0x1cc
	.uleb128 0x1b
	.string	"port"
	.byte	0x1
	.uahalf	0x2142
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x2143
	.uaword	0x233
	.uleb128 0x1e
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x2145
	.uaword	0x1e3f
	.uleb128 0x1e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x2148
	.uaword	0x233
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2149
	.uaword	0xacc
	.uleb128 0x1e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x214b
	.uaword	0x9ba
	.byte	0
	.uleb128 0x19
	.string	"Spi_lSynTransErrCheck"
	.byte	0x1
	.uahalf	0x236a
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x58a0
	.uleb128 0x1c
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x236a
	.uaword	0x58a0
	.uleb128 0x1b
	.string	"LoopCounter"
	.byte	0x1
	.uahalf	0x236c
	.uaword	0x233
	.uleb128 0x1e
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x236d
	.uaword	0x29f
	.byte	0
	.uleb128 0x9
	.uaword	0x5726
	.uleb128 0x19
	.string	"Spi_lSyncTransmitData16Bit"
	.byte	0x1
	.uahalf	0x21ec
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x59c6
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x21ee
	.uaword	0x661
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x21ef
	.uaword	0x4e29
	.uleb128 0x1c
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x21f0
	.uaword	0xadd
	.uleb128 0x1c
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x21f1
	.uaword	0xadd
	.uleb128 0x1e
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x21f4
	.uaword	0x4e2e
	.uleb128 0x1b
	.string	"Src16BitPtr"
	.byte	0x1
	.uahalf	0x21f5
	.uaword	0xae2
	.uleb128 0x1b
	.string	"Dest16BitPtr"
	.byte	0x1
	.uahalf	0x21f6
	.uaword	0x59c6
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x21f7
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x21f8
	.uaword	0x427
	.uleb128 0x1e
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x21f9
	.uaword	0x29f
	.uleb128 0x1b
	.string	"HwId"
	.byte	0x1
	.uahalf	0x21fa
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x21fb
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x21fc
	.uaword	0x1cc
	.uleb128 0x1b
	.string	"port"
	.byte	0x1
	.uahalf	0x21fd
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x21fe
	.uaword	0x233
	.uleb128 0x1e
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x2200
	.uaword	0x1e3f
	.uleb128 0x1e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x2203
	.uaword	0x233
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x2204
	.uaword	0xacc
	.uleb128 0x1e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x2206
	.uaword	0x9ba
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x1f7
	.uleb128 0x19
	.string	"Spi_lSyncTransmitData32Bit"
	.byte	0x1
	.uahalf	0x22b3
	.byte	0x1
	.uaword	0x29f
	.byte	0x1
	.uaword	0x5aed
	.uleb128 0x1c
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x22b5
	.uaword	0x661
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0x1
	.uahalf	0x22b6
	.uaword	0x4e29
	.uleb128 0x1c
	.uaword	.LASF33
	.byte	0x1
	.uahalf	0x22b7
	.uaword	0xadd
	.uleb128 0x1c
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x22b8
	.uaword	0xadd
	.uleb128 0x1e
	.uaword	.LASF27
	.byte	0x1
	.uahalf	0x22bb
	.uaword	0x4e2e
	.uleb128 0x1b
	.string	"Src32BitPtr"
	.byte	0x1
	.uahalf	0x22bc
	.uaword	0x5aed
	.uleb128 0x1b
	.string	"Dest32BitPtr"
	.byte	0x1
	.uahalf	0x22bd
	.uaword	0x5af3
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x1
	.uahalf	0x22be
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF36
	.byte	0x1
	.uahalf	0x22c0
	.uaword	0x427
	.uleb128 0x1e
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x22c1
	.uaword	0x29f
	.uleb128 0x1b
	.string	"HwId"
	.byte	0x1
	.uahalf	0x22c2
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF37
	.byte	0x1
	.uahalf	0x22c3
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x22c4
	.uaword	0x1cc
	.uleb128 0x1b
	.string	"port"
	.byte	0x1
	.uahalf	0x22c5
	.uaword	0x1cc
	.uleb128 0x1e
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x22c6
	.uaword	0x233
	.uleb128 0x1e
	.uaword	.LASF35
	.byte	0x1
	.uahalf	0x22c8
	.uaword	0x1e3f
	.uleb128 0x1e
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x22cb
	.uaword	0x233
	.uleb128 0x1e
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x22cc
	.uaword	0xacc
	.uleb128 0x1e
	.uaword	.LASF3
	.byte	0x1
	.uahalf	0x22ce
	.uaword	0x9ba
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x4ca9
	.uleb128 0x8
	.byte	0x4
	.uaword	0x233
	.uleb128 0x36
	.byte	0x1
	.string	"Spi_SyncTransmit"
	.byte	0x1
	.uahalf	0x107f
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LLST43
	.byte	0x1
	.uaword	0x6297
	.uleb128 0x37
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x107f
	.uaword	0x55fe
	.uaword	.LLST44
	.uleb128 0x26
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x1084
	.uaword	0x29f
	.uaword	.LLST45
	.uleb128 0x26
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x1085
	.uaword	0x233
	.uaword	.LLST46
	.uleb128 0x26
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x1086
	.uaword	0xacc
	.uaword	.LLST47
	.uleb128 0x27
	.string	"PhysicalSeqId"
	.byte	0x1
	.uahalf	0x1087
	.uaword	0x1cc
	.uaword	.LLST48
	.uleb128 0x38
	.string	"temp"
	.byte	0x1
	.uahalf	0x1088
	.uaword	0x1cc
	.byte	0x2
	.byte	0x91
	.sleb128 -32
	.uleb128 0x29
	.uaword	0x5579
	.uaword	.LBB142
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x10ce
	.uaword	0x6260
	.uleb128 0x2e
	.uaword	0x5599
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x21
	.uaword	0x55a5
	.uaword	.LLST49
	.uleb128 0x21
	.uaword	0x55ba
	.uaword	.LLST50
	.uleb128 0x21
	.uaword	0x55c8
	.uaword	.LLST51
	.uleb128 0x21
	.uaword	0x55d9
	.uaword	.LLST52
	.uleb128 0x21
	.uaword	0x55e5
	.uaword	.LLST53
	.uleb128 0x21
	.uaword	0x55f1
	.uaword	.LLST54
	.uleb128 0x29
	.uaword	0x5603
	.uaword	.LBB144
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.uahalf	0x1ec3
	.uaword	0x6255
	.uleb128 0x20
	.uaword	0x5623
	.uaword	.LLST55
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x21
	.uaword	0x5631
	.uaword	.LLST56
	.uleb128 0x21
	.uaword	0x563d
	.uaword	.LLST57
	.uleb128 0x21
	.uaword	0x5649
	.uaword	.LLST58
	.uleb128 0x21
	.uaword	0x565b
	.uaword	.LLST59
	.uleb128 0x21
	.uaword	0x5670
	.uaword	.LLST60
	.uleb128 0x21
	.uaword	0x567c
	.uaword	.LLST61
	.uleb128 0x21
	.uaword	0x5688
	.uaword	.LLST62
	.uleb128 0x21
	.uaword	0x569a
	.uaword	.LLST63
	.uleb128 0x21
	.uaword	0x56a7
	.uaword	.LLST64
	.uleb128 0x21
	.uaword	0x56b3
	.uaword	.LLST65
	.uleb128 0x21
	.uaword	0x56bf
	.uaword	.LLST66
	.uleb128 0x21
	.uaword	0x56cb
	.uaword	.LLST67
	.uleb128 0x21
	.uaword	0x56d7
	.uaword	.LLST68
	.uleb128 0x21
	.uaword	0x56e3
	.uaword	.LLST69
	.uleb128 0x21
	.uaword	0x56ef
	.uaword	.LLST70
	.uleb128 0x21
	.uaword	0x56fc
	.uaword	.LLST71
	.uleb128 0x21
	.uaword	0x5708
	.uaword	.LLST72
	.uleb128 0x29
	.uaword	0x59cc
	.uaword	.LBB146
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.uahalf	0x1f80
	.uaword	0x5e02
	.uleb128 0x20
	.uaword	0x5a19
	.uaword	.LLST73
	.uleb128 0x20
	.uaword	0x5a0d
	.uaword	.LLST74
	.uleb128 0x20
	.uaword	0x5a01
	.uaword	.LLST75
	.uleb128 0x20
	.uaword	0x59f5
	.uaword	.LLST76
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0xe8
	.uleb128 0x21
	.uaword	0x5a25
	.uaword	.LLST77
	.uleb128 0x21
	.uaword	0x5a31
	.uaword	.LLST78
	.uleb128 0x21
	.uaword	0x5a45
	.uaword	.LLST79
	.uleb128 0x21
	.uaword	0x5a5a
	.uaword	.LLST80
	.uleb128 0x21
	.uaword	0x5a66
	.uaword	.LLST81
	.uleb128 0x21
	.uaword	0x5a72
	.uaword	.LLST82
	.uleb128 0x21
	.uaword	0x5a7e
	.uaword	.LLST83
	.uleb128 0x21
	.uaword	0x5a8b
	.uaword	.LLST84
	.uleb128 0x21
	.uaword	0x5a97
	.uaword	.LLST85
	.uleb128 0x21
	.uaword	0x5aa3
	.uaword	.LLST86
	.uleb128 0x22
	.uaword	0x5ab0
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x21
	.uaword	0x5abc
	.uaword	.LLST87
	.uleb128 0x21
	.uaword	0x5ac8
	.uaword	.LLST88
	.uleb128 0x21
	.uaword	0x5ad4
	.uaword	.LLST89
	.uleb128 0x21
	.uaword	0x5ae0
	.uaword	.LLST90
	.uleb128 0x29
	.uaword	0x584f
	.uaword	.LBB148
	.uaword	.Ldebug_ranges0+0x120
	.byte	0x1
	.uahalf	0x2334
	.uaword	0x5d97
	.uleb128 0x20
	.uaword	0x5873
	.uaword	.LLST91
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x120
	.uleb128 0x21
	.uaword	0x587f
	.uaword	.LLST92
	.uleb128 0x21
	.uaword	0x5893
	.uaword	.LLST93
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x4e34
	.uaword	.LBB158
	.uaword	.LBE158
	.byte	0x1
	.uahalf	0x230b
	.uaword	0x5dda
	.uleb128 0x20
	.uaword	0x4e69
	.uaword	.LLST94
	.uleb128 0x20
	.uaword	0x4e5d
	.uaword	.LLST95
	.uleb128 0x20
	.uaword	0x4e50
	.uaword	.LLST86
	.uleb128 0x2c
	.uaword	.LBB159
	.uaword	.LBE159
	.uleb128 0x21
	.uaword	0x4e77
	.uaword	.LLST97
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL197
	.uaword	0x6917
	.uleb128 0x30
	.uaword	.LVL223
	.uaword	0x4f7f
	.uleb128 0x31
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x31
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x31
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x91
	.sleb128 -64
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x4d48
	.uaword	.LBB167
	.uaword	.LBE167
	.byte	0x1
	.uahalf	0x1f41
	.uaword	0x5e97
	.uleb128 0x20
	.uaword	0x4d66
	.uaword	.LLST98
	.uleb128 0x20
	.uaword	0x4d66
	.uaword	.LLST98
	.uleb128 0x20
	.uaword	0x4d72
	.uaword	.LLST100
	.uleb128 0x2c
	.uaword	.LBB168
	.uaword	.LBE168
	.uleb128 0x21
	.uaword	0x4d89
	.uaword	.LLST101
	.uleb128 0x21
	.uaword	0x4d95
	.uaword	.LLST102
	.uleb128 0x2b
	.uaword	0x4da1
	.uleb128 0x2b
	.uaword	0x4db7
	.uleb128 0x21
	.uaword	0x4dc7
	.uaword	.LLST103
	.uleb128 0x21
	.uaword	0x4ddb
	.uaword	.LLST104
	.uleb128 0x21
	.uaword	0x4ded
	.uaword	.LLST105
	.uleb128 0x21
	.uaword	0x4dfc
	.uaword	.LLST106
	.uleb128 0x21
	.uaword	0x4e10
	.uaword	.LLST107
	.uleb128 0x21
	.uaword	0x4e1c
	.uaword	.LLST108
	.uleb128 0x23
	.uaword	.LVL110
	.uaword	0x6917
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x4f7f
	.uaword	.LBB169
	.uaword	.Ldebug_ranges0+0x150
	.byte	0x1
	.uahalf	0x1f5b
	.uaword	0x5eff
	.uleb128 0x2e
	.uaword	0x4fc1
	.uleb128 0x20
	.uaword	0x4fb5
	.uaword	.LLST109
	.uleb128 0x20
	.uaword	0x4fa5
	.uaword	.LLST110
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x150
	.uleb128 0x21
	.uaword	0x4fcd
	.uaword	.LLST111
	.uleb128 0x21
	.uaword	0x4fde
	.uaword	.LLST112
	.uleb128 0x21
	.uaword	0x4fea
	.uaword	.LLST113
	.uleb128 0x21
	.uaword	0x4ff6
	.uaword	.LLST114
	.uleb128 0x21
	.uaword	0x5002
	.uaword	.LLST115
	.uleb128 0x23
	.uaword	.LVL130
	.uaword	0x6917
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x4bff
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x1
	.uahalf	0x1f67
	.uaword	0x5f30
	.uleb128 0x20
	.uaword	0x4c26
	.uaword	.LLST67
	.uleb128 0x2c
	.uaword	.LBB174
	.uaword	.LBE174
	.uleb128 0x21
	.uaword	0x4c3c
	.uaword	.LLST117
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x58a5
	.uaword	.LBB175
	.uaword	.Ldebug_ranges0+0x168
	.byte	0x1
	.uahalf	0x1f7a
	.uaword	0x6090
	.uleb128 0x20
	.uaword	0x58f2
	.uaword	.LLST118
	.uleb128 0x20
	.uaword	0x58e6
	.uaword	.LLST119
	.uleb128 0x20
	.uaword	0x58da
	.uaword	.LLST120
	.uleb128 0x20
	.uaword	0x58ce
	.uaword	.LLST121
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x168
	.uleb128 0x21
	.uaword	0x58fe
	.uaword	.LLST122
	.uleb128 0x21
	.uaword	0x590a
	.uaword	.LLST123
	.uleb128 0x21
	.uaword	0x591e
	.uaword	.LLST124
	.uleb128 0x21
	.uaword	0x5933
	.uaword	.LLST125
	.uleb128 0x21
	.uaword	0x593f
	.uaword	.LLST126
	.uleb128 0x21
	.uaword	0x594b
	.uaword	.LLST127
	.uleb128 0x21
	.uaword	0x5957
	.uaword	.LLST128
	.uleb128 0x21
	.uaword	0x5964
	.uaword	.LLST129
	.uleb128 0x21
	.uaword	0x5970
	.uaword	.LLST130
	.uleb128 0x21
	.uaword	0x597c
	.uaword	.LLST131
	.uleb128 0x22
	.uaword	0x5989
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x21
	.uaword	0x5995
	.uaword	.LLST132
	.uleb128 0x21
	.uaword	0x59a1
	.uaword	.LLST133
	.uleb128 0x21
	.uaword	0x59ad
	.uaword	.LLST134
	.uleb128 0x21
	.uaword	0x59b9
	.uaword	.LLST135
	.uleb128 0x29
	.uaword	0x584f
	.uaword	.LBB177
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.uahalf	0x2276
	.uaword	0x6029
	.uleb128 0x20
	.uaword	0x5873
	.uaword	.LLST136
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x198
	.uleb128 0x21
	.uaword	0x587f
	.uaword	.LLST137
	.uleb128 0x21
	.uaword	0x5893
	.uaword	.LLST138
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x4e34
	.uaword	.LBB181
	.uaword	.Ldebug_ranges0+0x1b0
	.byte	0x1
	.uahalf	0x224b
	.uaword	0x6068
	.uleb128 0x20
	.uaword	0x4e69
	.uaword	.LLST139
	.uleb128 0x20
	.uaword	0x4e5d
	.uaword	.LLST140
	.uleb128 0x20
	.uaword	0x4e50
	.uaword	.LLST131
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x1b0
	.uleb128 0x21
	.uaword	0x4e77
	.uaword	.LLST142
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL145
	.uaword	0x6917
	.uleb128 0x30
	.uaword	.LVL292
	.uaword	0x4f7f
	.uleb128 0x31
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x31
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x31
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x91
	.sleb128 -64
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x39
	.uaword	.LBB191
	.uaword	.LBE191
	.uaword	0x60a7
	.uleb128 0x21
	.uaword	0x5715
	.uaword	.LLST143
	.byte	0
	.uleb128 0x29
	.uaword	0x4e34
	.uaword	.LBB192
	.uaword	.Ldebug_ranges0+0x1c8
	.byte	0x1
	.uahalf	0x1fa9
	.uaword	0x60e6
	.uleb128 0x20
	.uaword	0x4e69
	.uaword	.LLST64
	.uleb128 0x20
	.uaword	0x4e5d
	.uaword	.LLST145
	.uleb128 0x20
	.uaword	0x4e50
	.uaword	.LLST70
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x1c8
	.uleb128 0x21
	.uaword	0x4e77
	.uaword	.LLST147
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x5731
	.uaword	.LBB197
	.uaword	.Ldebug_ranges0+0x1e0
	.byte	0x1
	.uahalf	0x1f72
	.uaword	0x624a
	.uleb128 0x20
	.uaword	0x577d
	.uaword	.LLST148
	.uleb128 0x20
	.uaword	0x5771
	.uaword	.LLST149
	.uleb128 0x20
	.uaword	0x5765
	.uaword	.LLST150
	.uleb128 0x20
	.uaword	0x5759
	.uaword	.LLST151
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x1e0
	.uleb128 0x21
	.uaword	0x5789
	.uaword	.LLST152
	.uleb128 0x21
	.uaword	0x5795
	.uaword	.LLST153
	.uleb128 0x21
	.uaword	0x57a8
	.uaword	.LLST154
	.uleb128 0x21
	.uaword	0x57bc
	.uaword	.LLST155
	.uleb128 0x21
	.uaword	0x57c8
	.uaword	.LLST156
	.uleb128 0x21
	.uaword	0x57d4
	.uaword	.LLST157
	.uleb128 0x21
	.uaword	0x57e0
	.uaword	.LLST158
	.uleb128 0x21
	.uaword	0x57ed
	.uaword	.LLST159
	.uleb128 0x21
	.uaword	0x57f9
	.uaword	.LLST160
	.uleb128 0x21
	.uaword	0x5805
	.uaword	.LLST161
	.uleb128 0x22
	.uaword	0x5812
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.uleb128 0x21
	.uaword	0x581e
	.uaword	.LLST162
	.uleb128 0x21
	.uaword	0x582a
	.uaword	.LLST163
	.uleb128 0x21
	.uaword	0x5836
	.uaword	.LLST164
	.uleb128 0x21
	.uaword	0x5842
	.uaword	.LLST165
	.uleb128 0x28
	.uaword	0x584f
	.uaword	.LBB199
	.uaword	.LBE199
	.byte	0x1
	.uahalf	0x21ae
	.uaword	0x61e3
	.uleb128 0x20
	.uaword	0x5873
	.uaword	.LLST166
	.uleb128 0x2c
	.uaword	.LBB200
	.uaword	.LBE200
	.uleb128 0x21
	.uaword	0x587f
	.uaword	.LLST167
	.uleb128 0x21
	.uaword	0x5893
	.uaword	.LLST168
	.byte	0
	.byte	0
	.uleb128 0x29
	.uaword	0x4e34
	.uaword	.LBB201
	.uaword	.Ldebug_ranges0+0x200
	.byte	0x1
	.uahalf	0x2184
	.uaword	0x6222
	.uleb128 0x20
	.uaword	0x4e69
	.uaword	.LLST169
	.uleb128 0x20
	.uaword	0x4e5d
	.uaword	.LLST170
	.uleb128 0x20
	.uaword	0x4e50
	.uaword	.LLST161
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x200
	.uleb128 0x21
	.uaword	0x4e77
	.uaword	.LLST172
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL227
	.uaword	0x6917
	.uleb128 0x30
	.uaword	.LVL249
	.uaword	0x4f7f
	.uleb128 0x31
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x31
	.uleb128 0x31
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8d
	.sleb128 0
	.uleb128 0x31
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x91
	.sleb128 -64
	.byte	0x94
	.byte	0x1
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL102
	.uaword	0x6917
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL96
	.uaword	0x6917
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL87
	.uaword	0x6917
	.uleb128 0x23
	.uaword	.LVL94
	.uaword	0x6973
	.uleb128 0x23
	.uaword	.LVL95
	.uaword	0x6991
	.uleb128 0x23
	.uaword	.LVL192
	.uaword	0x6973
	.uleb128 0x23
	.uaword	.LVL193
	.uaword	0x6991
	.uleb128 0x23
	.uaword	.LVL289
	.uaword	0x6991
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"Spi_SetupEB"
	.byte	0x1
	.uahalf	0x131b
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6358
	.uleb128 0x25
	.string	"Channel"
	.byte	0x1
	.uahalf	0x131d
	.uaword	0x661
	.uaword	.LLST173
	.uleb128 0x25
	.string	"SrcDataBufferPtr"
	.byte	0x1
	.uahalf	0x131e
	.uaword	0x6358
	.uaword	.LLST174
	.uleb128 0x25
	.string	"DesDataBufferPtr"
	.byte	0x1
	.uahalf	0x131f
	.uaword	0x6358
	.uaword	.LLST175
	.uleb128 0x25
	.string	"Length"
	.byte	0x1
	.uahalf	0x1320
	.uaword	0x635d
	.uaword	.LLST176
	.uleb128 0x26
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x1323
	.uaword	0x29f
	.uaword	.LLST177
	.uleb128 0x26
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x1326
	.uaword	0x233
	.uaword	.LLST178
	.uleb128 0x26
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x1327
	.uaword	0x1cc
	.uaword	.LLST179
	.uleb128 0x23
	.uaword	.LVL295
	.uaword	0x6917
	.byte	0
	.uleb128 0x9
	.uaword	0x860
	.uleb128 0x9
	.uaword	0x427
	.uleb128 0x32
	.byte	0x1
	.string	"Spi_GetJobResult"
	.byte	0x1
	.uahalf	0x1388
	.byte	0x1
	.uaword	0x341
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x63cd
	.uleb128 0x25
	.string	"Job"
	.byte	0x1
	.uahalf	0x1388
	.uaword	0x540
	.uaword	.LLST180
	.uleb128 0x27
	.string	"JobResult"
	.byte	0x1
	.uahalf	0x138a
	.uaword	0x341
	.uaword	.LLST181
	.uleb128 0x26
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x138d
	.uaword	0x233
	.uaword	.LLST182
	.uleb128 0x23
	.uaword	.LVL300
	.uaword	0x6917
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"Spi_GetSequenceResult"
	.byte	0x1
	.uahalf	0x13ea
	.byte	0x1
	.uaword	0x3a6
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6452
	.uleb128 0x37
	.uaword	.LASF32
	.byte	0x1
	.uahalf	0x13ea
	.uaword	0x55fe
	.uaword	.LLST183
	.uleb128 0x27
	.string	"SeqResult"
	.byte	0x1
	.uahalf	0x13ec
	.uaword	0x3a6
	.uaword	.LLST184
	.uleb128 0x26
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x13f0
	.uaword	0x233
	.uaword	.LLST185
	.uleb128 0x27
	.string	"SeqIndex"
	.byte	0x1
	.uahalf	0x13f1
	.uaword	0x1cc
	.uaword	.LLST186
	.uleb128 0x23
	.uaword	.LVL304
	.uaword	0x6917
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"Spi_GetStatus"
	.byte	0x1
	.uahalf	0x142e
	.byte	0x1
	.uaword	0x2e1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x65cc
	.uleb128 0x26
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x1430
	.uaword	0x2e1
	.uaword	.LLST187
	.uleb128 0x33
	.string	"temp"
	.byte	0x1
	.uahalf	0x1431
	.uaword	0x4b0f
	.byte	0x3
	.uleb128 0x29
	.uaword	0x4e8b
	.uaword	.LBB237
	.uaword	.Ldebug_ranges0+0x218
	.byte	0x1
	.uahalf	0x143d
	.uaword	0x64d7
	.uleb128 0x34
	.uaword	0x4eae
	.byte	0x6
	.uleb128 0x34
	.uaword	0x4ebc
	.byte	0
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x218
	.uleb128 0x2f
	.uaword	0x4ecd
	.byte	0
	.uleb128 0x21
	.uaword	0x4ed9
	.uaword	.LLST188
	.uleb128 0x23
	.uaword	.LVL308
	.uaword	0x6917
	.byte	0
	.byte	0
	.uleb128 0x3a
	.uaword	0x4f1e
	.uaword	.LBB241
	.uaword	.Ldebug_ranges0+0x230
	.byte	0x1
	.uahalf	0x1444
	.uleb128 0x34
	.uaword	0x4f3e
	.byte	0x3
	.uleb128 0x2a
	.uaword	.Ldebug_ranges0+0x230
	.uleb128 0x2f
	.uaword	0x4f55
	.byte	0x1
	.uleb128 0x21
	.uaword	0x4f61
	.uaword	.LLST189
	.uleb128 0x21
	.uaword	0x4f6d
	.uaword	.LLST190
	.uleb128 0x28
	.uaword	0x4d09
	.uaword	.LBB243
	.uaword	.LBE243
	.byte	0x1
	.uahalf	0x1df5
	.uaword	0x6578
	.uleb128 0x2e
	.uaword	0x4d2f
	.uleb128 0x2c
	.uaword	.LBB244
	.uaword	.LBE244
	.uleb128 0x21
	.uaword	0x4d3b
	.uaword	.LLST191
	.uleb128 0x2d
	.uaword	0x5097
	.uaword	.LBB245
	.uaword	.LBE245
	.byte	0x1
	.uahalf	0x1c7e
	.uleb128 0x2e
	.uaword	0x50c1
	.uleb128 0x2c
	.uaword	.LBB246
	.uaword	.LBE246
	.uleb128 0x2f
	.uaword	0x50cd
	.byte	0x1
	.uleb128 0x21
	.uaword	0x50d9
	.uaword	.LLST192
	.uleb128 0x21
	.uaword	0x50e8
	.uaword	.LLST193
	.uleb128 0x23
	.uaword	.LVL313
	.uaword	0x6917
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x5097
	.uaword	.LBB247
	.uaword	.LBE247
	.byte	0x1
	.uahalf	0x1e04
	.uaword	0x65c0
	.uleb128 0x2e
	.uaword	0x50c1
	.uleb128 0x2c
	.uaword	.LBB248
	.uaword	.LBE248
	.uleb128 0x21
	.uaword	0x50cd
	.uaword	.LLST194
	.uleb128 0x21
	.uaword	0x50d9
	.uaword	.LLST195
	.uleb128 0x21
	.uaword	0x50e8
	.uaword	.LLST196
	.uleb128 0x23
	.uaword	.LVL320
	.uaword	0x6917
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL311
	.uaword	0x6917
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.byte	0x1
	.string	"Spi_GetHWUnitStatus"
	.byte	0x1
	.uahalf	0x147c
	.byte	0x1
	.uaword	0x2e1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6706
	.uleb128 0x25
	.string	"HWUnit"
	.byte	0x1
	.uahalf	0x147c
	.uaword	0x6706
	.uaword	.LLST197
	.uleb128 0x3b
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x147e
	.uaword	0x2e1
	.byte	0
	.uleb128 0x33
	.string	"HwIdle"
	.byte	0x1
	.uahalf	0x147f
	.uaword	0x1cc
	.byte	0
	.uleb128 0x26
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x1481
	.uaword	0x233
	.uaword	.LLST198
	.uleb128 0x28
	.uaword	0x4d09
	.uaword	.LBB257
	.uaword	.LBE257
	.byte	0x1
	.uahalf	0x1491
	.uaword	0x66b0
	.uleb128 0x20
	.uaword	0x4d2f
	.uaword	.LLST199
	.uleb128 0x2c
	.uaword	.LBB258
	.uaword	.LBE258
	.uleb128 0x21
	.uaword	0x4d3b
	.uaword	.LLST200
	.uleb128 0x2d
	.uaword	0x5097
	.uaword	.LBB259
	.uaword	.LBE259
	.byte	0x1
	.uahalf	0x1c7e
	.uleb128 0x20
	.uaword	0x50c1
	.uaword	.LLST199
	.uleb128 0x2c
	.uaword	.LBB260
	.uaword	.LBE260
	.uleb128 0x2f
	.uaword	0x50cd
	.byte	0x1
	.uleb128 0x21
	.uaword	0x50d9
	.uaword	.LLST202
	.uleb128 0x21
	.uaword	0x50e8
	.uaword	.LLST203
	.uleb128 0x23
	.uaword	.LVL332
	.uaword	0x6917
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x28
	.uaword	0x5097
	.uaword	.LBB261
	.uaword	.LBE261
	.byte	0x1
	.uahalf	0x1495
	.uaword	0x66fc
	.uleb128 0x20
	.uaword	0x50c1
	.uaword	.LLST204
	.uleb128 0x2c
	.uaword	.LBB262
	.uaword	.LBE262
	.uleb128 0x21
	.uaword	0x50cd
	.uaword	.LLST205
	.uleb128 0x21
	.uaword	0x50d9
	.uaword	.LLST206
	.uleb128 0x21
	.uaword	0x50e8
	.uaword	.LLST207
	.uleb128 0x23
	.uaword	.LVL338
	.uaword	0x6917
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL328
	.uaword	0x6917
	.byte	0
	.uleb128 0x9
	.uaword	0x485
	.uleb128 0x32
	.byte	0x1
	.string	"Spi_ControlLoopBack"
	.byte	0x1
	.uahalf	0x156c
	.byte	0x1
	.uaword	0x29f
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6801
	.uleb128 0x25
	.string	"HWUnit"
	.byte	0x1
	.uahalf	0x156c
	.uaword	0x6706
	.uaword	.LLST208
	.uleb128 0x25
	.string	"EnableOrDisable"
	.byte	0x1
	.uahalf	0x156d
	.uaword	0x6801
	.uaword	.LLST209
	.uleb128 0x26
	.uaword	.LASF26
	.byte	0x1
	.uahalf	0x156f
	.uaword	0x29f
	.uaword	.LLST210
	.uleb128 0x26
	.uaword	.LASF24
	.byte	0x1
	.uahalf	0x1571
	.uaword	0x233
	.uaword	.LLST211
	.uleb128 0x27
	.string	"HwIdle"
	.byte	0x1
	.uahalf	0x1573
	.uaword	0x1cc
	.uaword	.LLST212
	.uleb128 0x26
	.uaword	.LASF28
	.byte	0x1
	.uahalf	0x1575
	.uaword	0x1fc4
	.uaword	.LLST213
	.uleb128 0x28
	.uaword	0x5097
	.uaword	.LBB265
	.uaword	.LBE265
	.byte	0x1
	.uahalf	0x1588
	.uaword	0x67f7
	.uleb128 0x20
	.uaword	0x50c1
	.uaword	.LLST214
	.uleb128 0x2c
	.uaword	.LBB266
	.uaword	.LBE266
	.uleb128 0x21
	.uaword	0x50cd
	.uaword	.LLST215
	.uleb128 0x21
	.uaword	0x50d9
	.uaword	.LLST216
	.uleb128 0x21
	.uaword	0x50e8
	.uaword	.LLST217
	.uleb128 0x23
	.uaword	.LVL351
	.uaword	0x6917
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	.LVL347
	.uaword	0x6917
	.byte	0
	.uleb128 0x9
	.uaword	0x3f5
	.uleb128 0xc
	.uaword	0x6816
	.uaword	0x6816
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x3
	.byte	0
	.uleb128 0x8
	.byte	0x4
	.uaword	0x4bdd
	.uleb128 0x38
	.string	"Spi_RuntimeCoreVar"
	.byte	0x1
	.uahalf	0x376
	.uaword	0x6806
	.byte	0x5
	.byte	0x3
	.uaword	Spi_RuntimeCoreVar
	.uleb128 0x38
	.string	"Spi_kGlobalConfigPtr"
	.byte	0x1
	.uahalf	0x37d
	.uaword	0x533f
	.byte	0x5
	.byte	0x3
	.uaword	Spi_kGlobalConfigPtr
	.uleb128 0x38
	.string	"Spi_RuntimeCore0Var"
	.byte	0x1
	.uahalf	0x399
	.uaword	0x4bdd
	.byte	0x5
	.byte	0x3
	.uaword	Spi_RuntimeCore0Var
	.uleb128 0xc
	.uaword	0x86b
	.uaword	0x6892
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x2
	.byte	0
	.uleb128 0x38
	.string	"Spi_BufferCore0"
	.byte	0x1
	.uahalf	0x39d
	.uaword	0x6882
	.byte	0x5
	.byte	0x3
	.uaword	Spi_BufferCore0
	.uleb128 0xc
	.uaword	0x3a6
	.uaword	0x68c0
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x2
	.byte	0
	.uleb128 0x38
	.string	"Spi_SequenceStatusCore0"
	.byte	0x1
	.uahalf	0x3ac
	.uaword	0x68b0
	.byte	0x5
	.byte	0x3
	.uaword	Spi_SequenceStatusCore0
	.uleb128 0xc
	.uaword	0x341
	.uaword	0x68f6
	.uleb128 0xd
	.uaword	0x9e0
	.byte	0x2
	.byte	0
	.uleb128 0x38
	.string	"Spi_JobStatusCore0"
	.byte	0x1
	.uahalf	0x3ae
	.uaword	0x68e6
	.byte	0x5
	.byte	0x3
	.uaword	Spi_JobStatusCore0
	.uleb128 0x3c
	.byte	0x1
	.string	"Mcal_GetCpuIndex"
	.byte	0x9
	.uahalf	0x335
	.byte	0x1
	.uaword	0x233
	.byte	0x1
	.uleb128 0x3d
	.byte	0x1
	.string	"Mcal_WritePeripEndInitProtReg"
	.byte	0x9
	.uahalf	0x223
	.byte	0x1
	.byte	0x1
	.uaword	0x6967
	.uleb128 0x3e
	.uaword	0x6967
	.uleb128 0x3e
	.uaword	0x4ca9
	.byte	0
	.uleb128 0x9
	.uaword	0x696c
	.uleb128 0x8
	.byte	0x4
	.uaword	0x6972
	.uleb128 0x3f
	.uleb128 0x40
	.byte	0x1
	.string	"SchM_Enter_Spi_SyncLock"
	.byte	0x8
	.byte	0x96
	.byte	0x1
	.byte	0x1
	.uleb128 0x40
	.byte	0x1
	.string	"SchM_Exit_Spi_SyncLock"
	.byte	0x8
	.byte	0xad
	.byte	0x1
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
	.uleb128 0x5
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x13
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0xb
	.uleb128 0x5
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0x5
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x17
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x21
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x22
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x23
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0x27
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
	.uleb128 0x28
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
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x35
	.uleb128 0xb
	.byte	0x1
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
	.uleb128 0x37
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
	.uleb128 0x38
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
	.uleb128 0x39
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
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3d
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3e
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3f
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL1-1
	.uaword	.LFE42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL1-1
	.uaword	.LFE42
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL0
	.uaword	.LVL1-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL1-1
	.uaword	.LFE42
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL5
	.uaword	.LVL7
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Spi_kGlobalConfigPtr
	.byte	0x6
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL8
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL9-1
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL20
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL8
	.uaword	.LVL20
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL25
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x78
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL10
	.uaword	.LVL20
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL11
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x8
	.byte	0x24
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL11
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x3
	.uaword	Spi_BufferCore0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL13
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL13
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x3
	.uaword	Spi_SequenceStatusCore0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL29
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL35
	.uaword	.LVL36
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL38
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL39
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL40
	.uaword	.LVL42
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL20
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL41
	.uaword	.LVL44
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x1e
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0xc
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 -1
	.byte	0x33
	.byte	0x1e
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL44
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL20
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x1e
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 -1
	.byte	0x33
	.byte	0x1e
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL28
	.uaword	.LVL29-1
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x33
	.byte	0x1e
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL45
	.uaword	.LVL55
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL83
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL83
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL45
	.uaword	.LVL57
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL47
	.uaword	.LVL48-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL48-1
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL75
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL47
	.uaword	.LVL73
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL74
	.uaword	.LVL75
	.uahalf	0x11
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x3
	.uaword	Spi_RuntimeCoreVar+12
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LVL85
	.uahalf	0x11
	.byte	0x73
	.sleb128 0
	.byte	0x30
	.byte	0x3
	.uaword	Spi_RuntimeCoreVar+12
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL85
	.uaword	.LFE20
	.uahalf	0x33
	.byte	0x3
	.uaword	Spi_RuntimeCoreVar
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x30
	.byte	0x3
	.uaword	Spi_RuntimeCoreVar+4
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x30
	.byte	0x3
	.uaword	Spi_RuntimeCoreVar+8
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x30
	.byte	0x3
	.uaword	Spi_RuntimeCoreVar+12
	.byte	0x6
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL47
	.uaword	.LVL49
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL48
	.uaword	.LVL49
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0xb
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL49
	.uaword	.LVL52
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x9
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL76
	.uahalf	0x9
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL75
	.uaword	.LVL81
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL81
	.uaword	.LVL84
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL75
	.uaword	.LVL79
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL82
	.uahalf	0x9
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL77
	.uaword	.LVL78
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL66
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x2
	.byte	0x33
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL69
	.uahalf	0x2
	.byte	0x35
	.byte	0x9f
	.uaword	.LVL69
	.uaword	.LVL70
	.uahalf	0x2
	.byte	0x36
	.byte	0x9f
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL71
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x38
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0xb
	.byte	0x82
	.sleb128 36
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL72
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL57
	.uaword	.LVL75
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL84
	.uaword	.LFE20
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL57
	.uaword	.LVL59
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x78
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL62
	.uahalf	0x9
	.byte	0x82
	.sleb128 36
	.byte	0x6
	.byte	0x78
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL58
	.uaword	.LVL62
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8e
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LFB21
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE21
	.uahalf	0x3
	.byte	0x8a
	.sleb128 96
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL86
	.uaword	.LVL87-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL87-1
	.uaword	.LFE21
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL86
	.uaword	.LVL191
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL194
	.uaword	.LVL290
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL290
	.uaword	.LVL291
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL87
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL88
	.uaword	.LVL89
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.uaword	.LVL90
	.uaword	.LVL94-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL88
	.uaword	.LVL90
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x82
	.sleb128 16
	.byte	0x6
	.byte	0x22
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x8
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.uaword	.LVL91
	.uaword	.LVL92
	.uahalf	0xf
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	Spi_kGlobalConfigPtr
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x6
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL100
	.uaword	.LVL288
	.uahalf	0x2
	.byte	0x91
	.sleb128 -28
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -28
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL101
	.uaword	.LVL186
	.uahalf	0x2
	.byte	0x91
	.sleb128 -52
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL187
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL189
	.uaword	.LVL190
	.uahalf	0x2
	.byte	0x91
	.sleb128 -52
	.uaword	.LVL194
	.uaword	.LVL282
	.uahalf	0x2
	.byte	0x91
	.sleb128 -52
	.uaword	.LVL282
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL285
	.uaword	.LVL287
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL287
	.uaword	.LVL288
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -52
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL99
	.uaword	.LVL100
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL101
	.uaword	.LVL185
	.uahalf	0x2
	.byte	0x91
	.sleb128 -24
	.uaword	.LVL185
	.uaword	.LVL188
	.uahalf	0x7
	.byte	0x91
	.sleb128 -24
	.byte	0x94
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL194
	.uaword	.LVL282
	.uahalf	0x2
	.byte	0x91
	.sleb128 -24
	.uaword	.LVL282
	.uaword	.LVL283
	.uahalf	0xa
	.byte	0x73
	.sleb128 -1
	.byte	0x91
	.sleb128 -24
	.byte	0x94
	.byte	0x2
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL283
	.uaword	.LVL284
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x91
	.sleb128 -24
	.byte	0x94
	.byte	0x2
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL284
	.uaword	.LVL286
	.uahalf	0xa
	.byte	0x91
	.sleb128 -24
	.byte	0x94
	.byte	0x2
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL286
	.uaword	.LVL288
	.uahalf	0xa
	.byte	0x73
	.sleb128 -1
	.byte	0x91
	.sleb128 -24
	.byte	0x94
	.byte	0x2
	.byte	0x22
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -24
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL95
	.uaword	.LVL100
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL98
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL101
	.uaword	.LVL186
	.uahalf	0x2
	.byte	0x91
	.sleb128 -52
	.uaword	.LVL186
	.uaword	.LVL187
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL187
	.uaword	.LVL189
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL189
	.uaword	.LVL191
	.uahalf	0x2
	.byte	0x91
	.sleb128 -52
	.uaword	.LVL194
	.uaword	.LVL282
	.uahalf	0x2
	.byte	0x91
	.sleb128 -52
	.uaword	.LVL282
	.uaword	.LVL283
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL285
	.uaword	.LVL287
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL287
	.uaword	.LVL288
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -52
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL106
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL107
	.uaword	.LVL288
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL124
	.uaword	.LVL183
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	.LVL194
	.uaword	.LVL281
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL101
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL164
	.uaword	.LVL168
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL173
	.uaword	.LVL181
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL101
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL165
	.uahalf	0x3
	.byte	0x91
	.sleb128 -68
	.uaword	.LVL165
	.uaword	.LVL167
	.uahalf	0x8
	.byte	0x91
	.sleb128 -68
	.byte	0x94
	.byte	0x1
	.byte	0x23
	.uleb128 0x1
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL183
	.uahalf	0x3
	.byte	0x91
	.sleb128 -68
	.uaword	.LVL194
	.uaword	.LVL281
	.uahalf	0x3
	.byte	0x91
	.sleb128 -68
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x3
	.byte	0x91
	.sleb128 -68
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL101
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL164
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	.LVL164
	.uaword	.LVL168
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL173
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	.LVL173
	.uaword	.LVL194
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL194
	.uaword	.LVL281
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	.LVL281
	.uaword	.LVL288
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL101
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL288
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL101
	.uaword	.LVL127
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL124
	.uaword	.LVL127
	.uahalf	0x7
	.byte	0x8d
	.sleb128 20
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL177
	.uaword	.LVL180
	.uahalf	0x7
	.byte	0x8d
	.sleb128 19
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL104
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL105
	.uaword	.LVL110-1
	.uahalf	0x9
	.byte	0x3
	.uaword	Spi_kGlobalConfigPtr
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.uaword	.LVL110-1
	.uaword	.LVL288
	.uahalf	0x2
	.byte	0x91
	.sleb128 -48
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -48
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL139
	.uaword	.LVL142
	.uahalf	0x7
	.byte	0x82
	.sleb128 8
	.byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL142
	.uaword	.LVL147
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL195
	.uaword	.LVL199
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL225
	.uaword	.LVL229
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL182
	.uaword	.LVL184
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL126
	.uaword	.LVL288
	.uahalf	0x1
	.byte	0x6e
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6e
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL178
	.uaword	.LVL180
	.uahalf	0x7
	.byte	0x8d
	.sleb128 16
	.byte	0x94
	.byte	0x2
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL138
	.uaword	.LVL140
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL140
	.uaword	.LVL144
	.uahalf	0x5
	.byte	0x8e
	.sleb128 96
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL195
	.uaword	.LVL196
	.uahalf	0x5
	.byte	0x8e
	.sleb128 96
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL225
	.uaword	.LVL226
	.uahalf	0x5
	.byte	0x8e
	.sleb128 96
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL108
	.uaword	.LVL125
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL195
	.uaword	.LVL225
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	.LVL251
	.uaword	.LVL261
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL195
	.uaword	.LVL225
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	.LVL251
	.uaword	.LVL261
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL195
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL251
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL195
	.uaword	.LVL225
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	.LVL251
	.uaword	.LVL261
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL209
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL251
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL195
	.uaword	.LVL202
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL202
	.uaword	.LVL217
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL217
	.uaword	.LVL218
	.uahalf	0xf
	.byte	0x34
	.byte	0x30
	.byte	0x76
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x82
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL218
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL251
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL195
	.uaword	.LVL202
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL202
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL251
	.uaword	.LVL260
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL260
	.uaword	.LVL261
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL195
	.uaword	.LVL210
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL251
	.uaword	.LVL256
	.uahalf	0x7
	.byte	0x8d
	.sleb128 19
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL257
	.uaword	.LVL261
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL206
	.uaword	.LVL207
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL207
	.uaword	.LVL210
	.uahalf	0xe
	.byte	0x82
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uaword	.LVL210
	.uaword	.LVL211
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL211
	.uaword	.LVL212
	.uahalf	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL221
	.uaword	.LVL222
	.uahalf	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL251
	.uaword	.LVL252
	.uahalf	0xe
	.byte	0x82
	.sleb128 0
	.byte	0x75
	.sleb128 0
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x8
	.uaword	.LVL252
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL195
	.uaword	.LVL212
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL251
	.uaword	.LVL261
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL200
	.uaword	.LVL205
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL205
	.uaword	.LVL210
	.uahalf	0x7
	.byte	0x8d
	.sleb128 20
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL251
	.uaword	.LVL256
	.uahalf	0x7
	.byte	0x8d
	.sleb128 20
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL257
	.uaword	.LVL261
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL195
	.uaword	.LVL204
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL204
	.uaword	.LVL212
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL251
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x56
	.uaword	.LVL257
	.uaword	.LVL258
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL258
	.uaword	.LVL259
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL259
	.uaword	.LVL261
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL195
	.uaword	.LVL203
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL203
	.uaword	.LVL212
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL251
	.uaword	.LVL259
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL259
	.uaword	.LVL261
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL251
	.uaword	.LVL253
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL253
	.uaword	.LVL256
	.uahalf	0x7
	.byte	0x8d
	.sleb128 16
	.byte	0x94
	.byte	0x2
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL212
	.uaword	.LVL213
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL224
	.uaword	.LVL225
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL197
	.uaword	.LVL200
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL198
	.uaword	.LVL199
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x83
	.sleb128 0
	.byte	0x22
	.uaword	.LVL199
	.uaword	.LVL201
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL200
	.uaword	.LVL208
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL257
	.uaword	.LVL261
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL214
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL215
	.uaword	.LVL222
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL215
	.uaword	.LVL222
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST94:
	.uaword	.LVL251
	.uaword	.LVL256
	.uahalf	0x7
	.byte	0x8d
	.sleb128 19
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST95:
	.uaword	.LVL251
	.uaword	.LVL253
	.uahalf	0x5
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL253
	.uaword	.LVL256
	.uahalf	0x7
	.byte	0x8d
	.sleb128 16
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST97:
	.uaword	.LVL252
	.uaword	.LVL253
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x73
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL253
	.uaword	.LVL254
	.uahalf	0xf
	.byte	0x75
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x8d
	.sleb128 16
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL254
	.uaword	.LVL255
	.uahalf	0x16
	.byte	0x8d
	.sleb128 19
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x34
	.byte	0x24
	.byte	0x8d
	.sleb128 16
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL255
	.uaword	.LVL257
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST98:
	.uaword	.LVL109
	.uaword	.LVL288
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST100:
	.uaword	.LVL109
	.uaword	.LVL288
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST101:
	.uaword	.LVL111
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST102:
	.uaword	.LVL113
	.uaword	.LVL116
	.uahalf	0xd
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0xc
	.uaword	0x21003c00
	.byte	0x21
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL116
	.uaword	.LVL117
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x8000
	.byte	0x21
	.byte	0x9f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL118
	.uaword	.LVL120
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x4
	.byte	0x8f
	.sleb128 16
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST103:
	.uaword	.LVL112
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST104:
	.uaword	.LVL111
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL114
	.uaword	.LVL119
	.uahalf	0x7
	.byte	0x8d
	.sleb128 20
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST105:
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x2
	.byte	0x82
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST106:
	.uaword	.LVL113
	.uaword	.LVL115
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST107:
	.uaword	.LVL109
	.uaword	.LVL110
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL119
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Spi_kGlobalConfigPtr
	.byte	0x6
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST108:
	.uaword	.LVL110
	.uaword	.LVL127
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST109:
	.uaword	.LVL129
	.uaword	.LVL288
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST110:
	.uaword	.LVL129
	.uaword	.LVL166
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	.LVL168
	.uaword	.LVL183
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	.LVL194
	.uaword	.LVL281
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	0
	.uaword	0
.LLST111:
	.uaword	.LVL136
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL138
	.uaword	.LVL140
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST112:
	.uaword	.LVL132
	.uaword	.LVL142
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST113:
	.uaword	.LVL130
	.uaword	.LVL134
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST114:
	.uaword	.LVL130
	.uaword	.LVL133
	.uahalf	0xb
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Spi_kGlobalConfigPtr
	.byte	0x6
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST115:
	.uaword	.LVL131
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST117:
	.uaword	.LVL139
	.uaword	.LVL143
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL143
	.uaword	.LVL163
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL195
	.uaword	.LVL225
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL225
	.uaword	.LVL251
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL251
	.uaword	.LVL261
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	.LVL261
	.uaword	.LVL267
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL267
	.uaword	.LVL271
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL271
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST118:
	.uaword	.LVL143
	.uaword	.LVL163
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	.LVL168
	.uaword	.LVL172
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	.LVL261
	.uaword	.LVL267
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	.LVL271
	.uaword	.LVL275
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	0
	.uaword	0
.LLST119:
	.uaword	.LVL143
	.uaword	.LVL163
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	.LVL168
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	.LVL261
	.uaword	.LVL267
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	.LVL271
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	0
	.uaword	0
.LLST120:
	.uaword	.LVL143
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL168
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL261
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL271
	.uaword	.LVL275
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST121:
	.uaword	.LVL143
	.uaword	.LVL163
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	.LVL168
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	.LVL261
	.uaword	.LVL267
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	.LVL271
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	0
	.uaword	0
.LLST122:
	.uaword	.LVL156
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL168
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL261
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST123:
	.uaword	.LVL143
	.uaword	.LVL150
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL150
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL168
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL261
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL271
	.uaword	.LVL275
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST124:
	.uaword	.LVL143
	.uaword	.LVL150
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL150
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL168
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL261
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL271
	.uaword	.LVL275
	.uahalf	0x1
	.byte	0x5b
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x5b
	.uaword	0
	.uaword	0
.LLST125:
	.uaword	.LVL143
	.uaword	.LVL157
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL261
	.uaword	.LVL266
	.uahalf	0x7
	.byte	0x8d
	.sleb128 19
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL271
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST126:
	.uaword	.LVL155
	.uaword	.LVL157
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL157
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL158
	.uaword	.LVL163
	.uahalf	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL170
	.uahalf	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL170
	.uaword	.LVL171
	.uahalf	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x79
	.sleb128 -1
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL261
	.uaword	.LVL265
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL265
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL291
	.uaword	.LFE21
	.uahalf	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST127:
	.uaword	.LVL143
	.uaword	.LVL158
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL261
	.uaword	.LVL267
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL271
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST128:
	.uaword	.LVL148
	.uaword	.LVL153
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL153
	.uaword	.LVL157
	.uahalf	0x7
	.byte	0x8d
	.sleb128 20
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL261
	.uaword	.LVL266
	.uahalf	0x7
	.byte	0x8d
	.sleb128 20
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL271
	.uaword	.LVL275
	.uahalf	0x1
	.byte	0x53
	.uaword	0
	.uaword	0
.LLST129:
	.uaword	.LVL143
	.uaword	.LVL152
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL152
	.uaword	.LVL158
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL261
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL271
	.uaword	.LVL274
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL274
	.uaword	.LVL275
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST130:
	.uaword	.LVL143
	.uaword	.LVL151
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL271
	.uaword	.LVL272
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL272
	.uaword	.LVL273
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST131:
	.uaword	.LVL261
	.uaword	.LVL267
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST132:
	.uaword	.LVL159
	.uaword	.LVL161
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL293
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST133:
	.uaword	.LVL145
	.uaword	.LVL148
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST134:
	.uaword	.LVL146
	.uaword	.LVL147
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.uaword	.LVL147
	.uaword	.LVL149
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST135:
	.uaword	.LVL148
	.uaword	.LVL154
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL271
	.uaword	.LVL275
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST136:
	.uaword	.LVL160
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL168
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST137:
	.uaword	.LVL161
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL168
	.uaword	.LVL172
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST138:
	.uaword	.LVL161
	.uaword	.LVL164
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL168
	.uaword	.LVL172
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST139:
	.uaword	.LVL261
	.uaword	.LVL266
	.uahalf	0x7
	.byte	0x8d
	.sleb128 19
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST140:
	.uaword	.LVL261
	.uaword	.LVL267
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST142:
	.uaword	.LVL262
	.uaword	.LVL263
	.uahalf	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL263
	.uaword	.LVL264
	.uahalf	0x14
	.byte	0x8d
	.sleb128 19
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x34
	.byte	0x24
	.byte	0x75
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL264
	.uaword	.LVL267
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST143:
	.uaword	.LVL174
	.uaword	.LVL175
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x7f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL175
	.uaword	.LVL176
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST145:
	.uaword	.LVL177
	.uaword	.LVL178
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL178
	.uaword	.LVL180
	.uahalf	0x7
	.byte	0x8d
	.sleb128 16
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST147:
	.uaword	.LVL179
	.uaword	.LVL180
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST148:
	.uaword	.LVL225
	.uaword	.LVL251
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	.LVL267
	.uaword	.LVL271
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x3
	.byte	0x91
	.sleb128 -72
	.uaword	0
	.uaword	0
.LLST149:
	.uaword	.LVL225
	.uaword	.LVL251
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	.LVL267
	.uaword	.LVL271
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x2
	.byte	0x91
	.sleb128 -56
	.uaword	0
	.uaword	0
.LLST150:
	.uaword	.LVL225
	.uaword	.LVL251
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL267
	.uaword	.LVL271
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST151:
	.uaword	.LVL225
	.uaword	.LVL251
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	.LVL267
	.uaword	.LVL271
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x2
	.byte	0x91
	.sleb128 -64
	.uaword	0
	.uaword	0
.LLST152:
	.uaword	.LVL238
	.uaword	.LVL251
	.uahalf	0x1
	.byte	0x6c
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST153:
	.uaword	.LVL225
	.uaword	.LVL232
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL251
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL267
	.uaword	.LVL271
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST154:
	.uaword	.LVL225
	.uaword	.LVL232
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL232
	.uaword	.LVL251
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL267
	.uaword	.LVL271
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST155:
	.uaword	.LVL225
	.uaword	.LVL239
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL267
	.uaword	.LVL271
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL280
	.uahalf	0x7
	.byte	0x8d
	.sleb128 19
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST156:
	.uaword	.LVL236
	.uaword	.LVL237
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL237
	.uaword	.LVL240
	.uahalf	0x1
	.byte	0x5e
	.uaword	.LVL240
	.uaword	.LVL241
	.uahalf	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL247
	.uaword	.LVL248
	.uahalf	0x6
	.byte	0x7e
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x5e
	.uaword	0
	.uaword	0
.LLST157:
	.uaword	.LVL225
	.uaword	.LVL241
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL267
	.uaword	.LVL271
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST158:
	.uaword	.LVL231
	.uaword	.LVL235
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL235
	.uaword	.LVL239
	.uahalf	0x7
	.byte	0x8d
	.sleb128 20
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL267
	.uaword	.LVL271
	.uahalf	0x5
	.byte	0x75
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL280
	.uahalf	0x7
	.byte	0x8d
	.sleb128 20
	.byte	0x94
	.byte	0x1
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST159:
	.uaword	.LVL225
	.uaword	.LVL234
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL234
	.uaword	.LVL241
	.uahalf	0x1
	.byte	0x57
	.uaword	.LVL267
	.uaword	.LVL270
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL270
	.uaword	.LVL271
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST160:
	.uaword	.LVL225
	.uaword	.LVL233
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL233
	.uaword	.LVL234
	.uahalf	0x1
	.byte	0x50
	.uaword	.LVL267
	.uaword	.LVL268
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL268
	.uaword	.LVL269
	.uahalf	0x1
	.byte	0x50
	.uaword	0
	.uaword	0
.LLST161:
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST162:
	.uaword	.LVL241
	.uaword	.LVL243
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL250
	.uaword	.LVL251
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST163:
	.uaword	.LVL227
	.uaword	.LVL231
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST164:
	.uaword	.LVL228
	.uaword	.LVL229
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x84
	.sleb128 0
	.byte	0x22
	.uaword	.LVL229
	.uaword	.LVL230
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL230
	.uaword	.LVL241
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL267
	.uaword	.LVL271
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x63
	.uaword	0
	.uaword	0
.LLST165:
	.uaword	.LVL231
	.uaword	.LVL239
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL267
	.uaword	.LVL271
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL275
	.uaword	.LVL276
	.uahalf	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL276
	.uaword	.LVL280
	.uahalf	0x7
	.byte	0x83
	.sleb128 8
	.byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST166:
	.uaword	.LVL242
	.uaword	.LVL248
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST167:
	.uaword	.LVL243
	.uaword	.LVL248
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST168:
	.uaword	.LVL243
	.uaword	.LVL248
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST169:
	.uaword	.LVL275
	.uaword	.LVL280
	.uahalf	0x7
	.byte	0x8d
	.sleb128 19
	.byte	0x94
	.byte	0x1
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST170:
	.uaword	.LVL275
	.uaword	.LVL281
	.uahalf	0x5
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST172:
	.uaword	.LVL277
	.uaword	.LVL278
	.uahalf	0xd
	.byte	0x75
	.sleb128 0
	.byte	0x34
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL278
	.uaword	.LVL279
	.uahalf	0x14
	.byte	0x8d
	.sleb128 19
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x29
	.byte	0x34
	.byte	0x24
	.byte	0x76
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL279
	.uaword	.LVL281
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST173:
	.uaword	.LVL294
	.uaword	.LVL295-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL295-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST174:
	.uaword	.LVL294
	.uaword	.LVL295-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL295-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST175:
	.uaword	.LVL294
	.uaword	.LVL295-1
	.uahalf	0x1
	.byte	0x65
	.uaword	.LVL295-1
	.uaword	.LFE23
	.uahalf	0x1
	.byte	0x6c
	.uaword	0
	.uaword	0
.LLST176:
	.uaword	.LVL294
	.uaword	.LVL295-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL295-1
	.uaword	.LFE23
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST177:
	.uaword	.LVL294
	.uaword	.LVL298
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL298
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST178:
	.uaword	.LVL295
	.uaword	.LVL296
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST179:
	.uaword	.LVL295
	.uaword	.LVL297
	.uahalf	0xf
	.byte	0x78
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	Spi_kGlobalConfigPtr
	.byte	0x6
	.byte	0x23
	.uleb128 0x18
	.byte	0x6
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST180:
	.uaword	.LVL299
	.uaword	.LVL300-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL300-1
	.uaword	.LFE24
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST181:
	.uaword	.LVL299
	.uaword	.LVL300
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL300
	.uaword	.LVL301
	.uahalf	0x27
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Spi_kGlobalConfigPtr
	.byte	0x6
	.byte	0x23
	.uleb128 0x14
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Spi_RuntimeCoreVar
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0xc
	.byte	0x6
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST182:
	.uaword	.LVL300
	.uaword	.LVL302
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST183:
	.uaword	.LVL303
	.uaword	.LVL304-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL304-1
	.uaword	.LFE25
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST184:
	.uaword	.LVL303
	.uaword	.LVL304
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL304
	.uaword	.LVL305
	.uahalf	0x23
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	Spi_kGlobalConfigPtr
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x6
	.byte	0x22
	.byte	0x94
	.byte	0x1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x3
	.uaword	Spi_RuntimeCoreVar
	.byte	0x22
	.byte	0x6
	.byte	0x23
	.uleb128 0x8
	.byte	0x6
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST185:
	.uaword	.LVL304
	.uaword	.LVL306
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST186:
	.uaword	.LVL304
	.uaword	.LVL305
	.uahalf	0xf
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x3
	.uaword	Spi_kGlobalConfigPtr
	.byte	0x6
	.byte	0x23
	.uleb128 0x10
	.byte	0x6
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST187:
	.uaword	.LVL307
	.uaword	.LVL326
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL326
	.uaword	.LFE26
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST188:
	.uaword	.LVL308
	.uaword	.LVL309
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST189:
	.uaword	.LVL310
	.uaword	.LVL312
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST190:
	.uaword	.LVL311
	.uaword	.LVL312
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST191:
	.uaword	.LVL312
	.uaword	.LVL315
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL315
	.uaword	.LVL316
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL316
	.uaword	.LVL317
	.uahalf	0xb
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL318
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST192:
	.uaword	.LVL312
	.uaword	.LVL315
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL315
	.uaword	.LVL316
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL316
	.uaword	.LVL317
	.uahalf	0x9
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL318
	.uaword	.LVL319
	.uahalf	0x9
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST193:
	.uaword	.LVL313
	.uaword	.LVL314
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST194:
	.uaword	.LVL318
	.uaword	.LVL324
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL324
	.uaword	.LFE26
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST195:
	.uaword	.LVL318
	.uaword	.LVL322
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL322
	.uaword	.LVL323
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL323
	.uaword	.LVL325
	.uahalf	0x9
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST196:
	.uaword	.LVL320
	.uaword	.LVL321
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST197:
	.uaword	.LVL327
	.uaword	.LVL328-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL328-1
	.uaword	.LFE27
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST198:
	.uaword	.LVL329
	.uaword	.LVL330
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL330
	.uaword	.LVL331
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL331
	.uaword	.LVL332-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL332-1
	.uaword	.LFE27
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST199:
	.uaword	.LVL331
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST200:
	.uaword	.LVL331
	.uaword	.LVL334
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL335
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL335
	.uaword	.LVL336
	.uahalf	0xb
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x31
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL336
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST202:
	.uaword	.LVL331
	.uaword	.LVL334
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL334
	.uaword	.LVL335
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL335
	.uaword	.LVL337
	.uahalf	0x9
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x79
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST203:
	.uaword	.LVL332
	.uaword	.LVL333
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST204:
	.uaword	.LVL336
	.uaword	.LVL345
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST205:
	.uaword	.LVL336
	.uaword	.LVL343
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL343
	.uaword	.LFE27
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST206:
	.uaword	.LVL336
	.uaword	.LVL340
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL340
	.uaword	.LVL341
	.uahalf	0x8
	.byte	0x72
	.sleb128 0
	.byte	0x79
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL341
	.uaword	.LVL342
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x1e
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL342
	.uaword	.LVL343
	.uahalf	0xb
	.byte	0x8f
	.sleb128 36
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x1e
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL343
	.uaword	.LVL344
	.uahalf	0xa
	.byte	0x72
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x1e
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST207:
	.uaword	.LVL338
	.uaword	.LVL339
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST208:
	.uaword	.LVL346
	.uaword	.LVL347-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL347-1
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST209:
	.uaword	.LVL346
	.uaword	.LVL347-1
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL347-1
	.uaword	.LFE28
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST210:
	.uaword	.LVL346
	.uaword	.LVL361
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL361
	.uaword	.LVL362
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL362
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST211:
	.uaword	.LVL348
	.uaword	.LVL349
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL349
	.uaword	.LVL350
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL350
	.uaword	.LVL351-1
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL351-1
	.uaword	.LFE28
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST212:
	.uaword	.LVL348
	.uaword	.LVL356
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST213:
	.uaword	.LVL358
	.uaword	.LVL359
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	.LVL360
	.uaword	.LFE28
	.uahalf	0x3
	.byte	0x5f
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST214:
	.uaword	.LVL350
	.uaword	.LVL357
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST215:
	.uaword	.LVL350
	.uaword	.LVL355
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL355
	.uaword	.LFE28
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST216:
	.uaword	.LVL350
	.uaword	.LVL353
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL353
	.uaword	.LVL354
	.uahalf	0x8
	.byte	0x73
	.sleb128 0
	.byte	0x72
	.sleb128 0
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL354
	.uaword	.LVL357
	.uahalf	0xa
	.byte	0x73
	.sleb128 0
	.byte	0x7f
	.sleb128 0
	.byte	0x33
	.byte	0x1e
	.byte	0x25
	.byte	0x33
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST217:
	.uaword	.LVL351
	.uaword	.LVL352
	.uahalf	0x7
	.byte	0x72
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x8f
	.sleb128 0
	.byte	0x22
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x64
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB42
	.uaword	.LFE42-.LFB42
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB23
	.uaword	.LFE23-.LFB23
	.uaword	.LFB24
	.uaword	.LFE24-.LFB24
	.uaword	.LFB25
	.uaword	.LFE25-.LFB25
	.uaword	.LFB26
	.uaword	.LFE26-.LFB26
	.uaword	.LFB27
	.uaword	.LFE27-.LFB27
	.uaword	.LFB28
	.uaword	.LFE28-.LFB28
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB53
	.uaword	.LBE53
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	0
	.uaword	0
	.uaword	.LBB61
	.uaword	.LBE61
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	.LBB73
	.uaword	.LBE73
	.uaword	0
	.uaword	0
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	0
	.uaword	0
	.uaword	.LBB89
	.uaword	.LBE89
	.uaword	.LBB110
	.uaword	.LBE110
	.uaword	0
	.uaword	0
	.uaword	.LBB98
	.uaword	.LBE98
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	.LBB109
	.uaword	.LBE109
	.uaword	0
	.uaword	0
	.uaword	.LBB142
	.uaword	.LBE142
	.uaword	.LBB225
	.uaword	.LBE225
	.uaword	.LBB226
	.uaword	.LBE226
	.uaword	0
	.uaword	0
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	.LBB218
	.uaword	.LBE218
	.uaword	.LBB219
	.uaword	.LBE219
	.uaword	.LBB220
	.uaword	.LBE220
	.uaword	.LBB221
	.uaword	.LBE221
	.uaword	.LBB222
	.uaword	.LBE222
	.uaword	0
	.uaword	0
	.uaword	.LBB146
	.uaword	.LBE146
	.uaword	.LBB165
	.uaword	.LBE165
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	.LBB190
	.uaword	.LBE190
	.uaword	.LBB196
	.uaword	.LBE196
	.uaword	.LBB207
	.uaword	.LBE207
	.uaword	0
	.uaword	0
	.uaword	.LBB148
	.uaword	.LBE148
	.uaword	.LBB154
	.uaword	.LBE154
	.uaword	.LBB155
	.uaword	.LBE155
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	.LBB157
	.uaword	.LBE157
	.uaword	0
	.uaword	0
	.uaword	.LBB169
	.uaword	.LBE169
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	0
	.uaword	0
	.uaword	.LBB175
	.uaword	.LBE175
	.uaword	.LBB189
	.uaword	.LBE189
	.uaword	.LBB208
	.uaword	.LBE208
	.uaword	.LBB210
	.uaword	.LBE210
	.uaword	.LBB212
	.uaword	.LBE212
	.uaword	0
	.uaword	0
	.uaword	.LBB177
	.uaword	.LBE177
	.uaword	.LBB180
	.uaword	.LBE180
	.uaword	0
	.uaword	0
	.uaword	.LBB181
	.uaword	.LBE181
	.uaword	.LBB184
	.uaword	.LBE184
	.uaword	0
	.uaword	0
	.uaword	.LBB192
	.uaword	.LBE192
	.uaword	.LBB195
	.uaword	.LBE195
	.uaword	0
	.uaword	0
	.uaword	.LBB197
	.uaword	.LBE197
	.uaword	.LBB209
	.uaword	.LBE209
	.uaword	.LBB211
	.uaword	.LBE211
	.uaword	0
	.uaword	0
	.uaword	.LBB201
	.uaword	.LBE201
	.uaword	.LBB204
	.uaword	.LBE204
	.uaword	0
	.uaword	0
	.uaword	.LBB237
	.uaword	.LBE237
	.uaword	.LBB240
	.uaword	.LBE240
	.uaword	0
	.uaword	0
	.uaword	.LBB241
	.uaword	.LBE241
	.uaword	.LBB250
	.uaword	.LBE250
	.uaword	0
	.uaword	0
	.uaword	.LFB42
	.uaword	.LFE42
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LFB20
	.uaword	.LFE20
	.uaword	.LFB21
	.uaword	.LFE21
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LFB24
	.uaword	.LFE24
	.uaword	.LFB25
	.uaword	.LFE25
	.uaword	.LFB26
	.uaword	.LFE26
	.uaword	.LFB27
	.uaword	.LFE27
	.uaword	.LFB28
	.uaword	.LFE28
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF25:
	.string	"HwModule"
.LASF18:
	.string	"MODNUMBER"
.LASF4:
	.string	"NoOfSequences"
.LASF37:
	.string	"SrcBufferNull"
.LASF33:
	.string	"IsFirstChnl"
.LASF26:
	.string	"RetVal"
.LASF39:
	.string	"SyncDummyRead"
.LASF35:
	.string	"lBacon"
.LASF3:
	.string	"ChannelConfigPtr"
.LASF2:
	.string	"JobConfigPtr"
.LASF36:
	.string	"TransferCount"
.LASF5:
	.string	"NoOfJobs"
.LASF12:
	.string	"reserved_13"
.LASF13:
	.string	"reserved_14"
.LASF11:
	.string	"reserved_15"
.LASF14:
	.string	"reserved_16"
.LASF24:
	.string	"CoreId"
.LASF1:
	.string	"ChannelId"
.LASF22:
	.string	"reserved_98"
.LASF23:
	.string	"reserved_20"
.LASF20:
	.string	"reserved_24"
.LASF16:
	.string	"reserved_28"
.LASF29:
	.string	"ModIndex"
.LASF0:
	.string	"CsPolarity"
.LASF27:
	.string	"ModulePtr"
.LASF8:
	.string	"reserved_0"
.LASF19:
	.string	"reserved_1"
.LASF9:
	.string	"reserved_2"
.LASF10:
	.string	"reserved_4"
.LASF15:
	.string	"reserved_8"
.LASF6:
	.string	"NoOfChannels"
.LASF30:
	.string	"LoopIndex"
.LASF21:
	.string	"reserved_C"
.LASF17:
	.string	"reserved_30"
.LASF38:
	.string	"DestBufferNull"
.LASF31:
	.string	"ToggleCs"
.LASF7:
	.string	"CoreConfigPtr"
.LASF28:
	.string	"GlobalConReg"
.LASF32:
	.string	"Sequence"
.LASF34:
	.string	"IsLastChnl"
	.extern	SchM_Exit_Spi_SyncLock,STT_FUNC,0
	.extern	SchM_Enter_Spi_SyncLock,STT_FUNC,0
	.extern	Mcal_WritePeripEndInitProtReg,STT_FUNC,0
	.extern	Mcal_GetCpuIndex,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
