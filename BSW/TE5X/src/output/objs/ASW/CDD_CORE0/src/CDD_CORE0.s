	.file	"CDD_CORE0.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CPUUtilizationCore0_func,"ax",@progbits
	.align 1
	.global	CPUUtilizationCore0_func
	.type	CPUUtilizationCore0_func, @function
CPUUtilizationCore0_func:
.LFB19:
	.file 1 "ASW\\CDD_CORE0\\src\\CDD_CORE0.c"
	.loc 1 74 0
.LVL0:
	.loc 1 76 0
	movh.a	%a15, hi:Duration_global
	st.w	[%a15] lo:Duration_global, %d4
	.loc 1 77 0
	movh.a	%a15, hi:CPU_PercentUtilization_global
	ld.w	%d15, [%a15] lo:CPU_PercentUtilization_global
	.loc 1 78 0
	movh.a	%a15, hi:Status_global
	.loc 1 77 0
	st.w	[%a4]0, %d15
	.loc 1 78 0
	ld.bu	%d15, [%a15] lo:Status_global
	st.b	[%a5]0, %d15
	ret
.LFE19:
	.size	CPUUtilizationCore0_func, .-CPUUtilizationCore0_func
.section .text.GetMaxUserStackUtilization_Core0_func,"ax",@progbits
	.align 1
	.global	GetMaxUserStackUtilization_Core0_func
	.type	GetMaxUserStackUtilization_Core0_func, @function
GetMaxUserStackUtilization_Core0_func:
.LFB20:
	.loc 1 99 0
.LVL1:
	.loc 1 103 0
	movh.a	%a15, hi:MaxUserStackUtilization_f64
	ld.w	%d2, [%a15] lo:MaxUserStackUtilization_f64
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L11
	.loc 1 103 0 is_stmt 0 discriminator 1
	movh	%d15, 17096
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L11
	.loc 1 105 0 is_stmt 1
	st.w	[%a4]0, %d2
	.loc 1 101 0
	mov	%d2, 0
	.loc 1 105 0
	ret
.L11:
	.loc 1 109 0
	mov	%d2, 1
.LVL2:
	.loc 1 113 0
	ret
.LFE20:
	.size	GetMaxUserStackUtilization_Core0_func, .-GetMaxUserStackUtilization_Core0_func
.section .text.CDD_CORE0_func,"ax",@progbits
	.align 1
	.global	CDD_CORE0_func
	.type	CDD_CORE0_func, @function
CDD_CORE0_func:
.LFB21:
	.loc 1 134 0
.LVL3:
	.loc 1 149 0
	movh.a	%a15, hi:StateCaculationCore0
	ld.bu	%d15, [%a15] lo:StateCaculationCore0
	jge.u	%d15, 4, .L14
	movh.a	%a2, hi:.L16
	lea	%a2, [%a2] lo:.L16
	addsc.a	%a2, %a2, %d15, 2
	ji	%a2
	.align 2
	.align 2
.L16:
	.code32
	j	.L15
	.code32
	j	.L17
	.code32
	j	.L18
	.code32
	j	.L19
.L17:
	.loc 1 157 0
	call	Get_Core0Idle_SumTime
.LVL4:
	movh.a	%a2, hi:IdleElapsed_Start.40738
	st.w	[%a2] lo:IdleElapsed_Start.40738, %d2
	.loc 1 158 0
	call	Os_Cbk_GetStopwatch
.LVL5:
	.loc 1 159 0
	mov	%d15, 2
	.loc 1 158 0
	movh.a	%a2, hi:BaseTime.40734
	st.w	[%a2] lo:BaseTime.40734, %d2
	.loc 1 159 0
	st.b	[%a15] lo:StateCaculationCore0, %d15
.L14:
	.loc 1 199 0
	movh	%d4, hi:__USTACK0
	addi	%d4, %d4, lo:__USTACK0
	movh	%d15, hi:__USTACK0_END
	.loc 1 201 0
	mov.a	%a15, %d4
	.loc 1 199 0
	addi	%d15, %d15, lo:__USTACK0_END
	sub	%d5, %d4, %d15
.LVL6:
	.loc 1 201 0
	add.a	%a15, -2
.LVL7:
	.loc 1 145 0
	mov	%d3, 0
.LVL8:
.L24:
	.loc 1 204 0
	ld.hu	%d15, [%a15] 2
	ld.hu	%d2, [%a15]0
	sh	%d15, %d15, 16
	or	%d15, %d2
	jnz	%d15, .L25
	.loc 1 206 0
	add	%d3, 1
.LVL9:
	and	%d3, %d3, 255
.LVL10:
	.loc 1 214 0
	ne	%d15, %d3, 8
	.loc 1 207 0
	add.a	%a15, -4
.LVL11:
	.loc 1 214 0
	jnz	%d15, .L24
	.loc 1 216 0
	mov.d	%d2, %a15
	addi	%d15, %d4, -32
	sub	%d15, %d2
	utof	%d2, %d15
	utof	%d15, %d5
	.loc 1 217 0
	movh.a	%a2, hi:MaxUserStackUtilization_f64
	.loc 1 216 0
	div.f	%d15, %d2, %d15
.LVL12:
	.loc 1 217 0
	ld.w	%d2, [%a2] lo:MaxUserStackUtilization_f64
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 2, .L13
	.loc 1 219 0
	st.w	[%a2] lo:MaxUserStackUtilization_f64, %d15
.L13:
	ret
.LVL13:
.L25:
	.loc 1 212 0
	lea	%a15, [%a15] -32
.LVL14:
	.loc 1 211 0
	mov	%d3, 0
	j	.L24
.LVL15:
.L18:
	.loc 1 163 0
	call	Os_Cbk_GetStopwatch
.LVL16:
	movh.a	%a2, hi:CurTime.40735
	st.w	[%a2] lo:CurTime.40735, %d2
	.loc 1 164 0
	movh.a	%a2, hi:BaseTime.40734
	ld.w	%d15, [%a2] lo:BaseTime.40734
	movh.a	%a2, hi:DTime.40736
	nor	%d4, %d15, 0
	sub	%d3, %d2, %d15
	add	%d4, %d2
	ge.u	%d2, %d15, %d2
	sel	%d2, %d2, %d4, %d3
	st.w	[%a2] lo:DTime.40736, %d2
	.loc 1 167 0
	movh.a	%a2, hi:TimeSet.40733
	ld.w	%d15, [%a2] lo:TimeSet.40733
	jge.u	%d15, %d2, .L14
	.loc 1 169 0
	call	Get_Core0Idle_SumTime
.LVL17:
	movh.a	%a2, hi:IdleElapsed_End.40739
	st.w	[%a2] lo:IdleElapsed_End.40739, %d2
	.loc 1 170 0
	movh.a	%a2, hi:IdleElapsed_Start.40738
	ld.w	%d15, [%a2] lo:IdleElapsed_Start.40738
	movh.a	%a2, hi:IdleElapsed.40737
	nor	%d4, %d15, 0
	.loc 1 172 0
	sub	%d3, %d2, %d15
	add	%d4, %d2
	ge.u	%d15, %d15, %d2
	sel	%d15, %d15, %d4, %d3
	st.w	[%a2] lo:IdleElapsed.40737, %d15
	.loc 1 178 0
	mov	%d15, 3
	st.b	[%a15] lo:StateCaculationCore0, %d15
	j	.L14
.L15:
	.loc 1 152 0
	mov	%d15, 63
	movh.a	%a2, hi:Status_global
	st.b	[%a2] lo:Status_global, %d15
	.loc 1 153 0
	movh.a	%a2, hi:Duration_global
	ld.w	%d2, [%a2] lo:Duration_global
	movh	%d15, 2
	addi	%d15, %d15, -31072
	mul	%d15, %d2
	movh.a	%a2, hi:TimeSet.40733
	st.w	[%a2] lo:TimeSet.40733, %d15
	.loc 1 154 0
	mov	%d15, 1
	st.b	[%a15] lo:StateCaculationCore0, %d15
	.loc 1 155 0
	j	.L14
.L19:
	.loc 1 182 0
	movh.a	%a3, hi:DTime.40736
	movh.a	%a2, hi:IdleElapsed.40737
	ld.w	%d3, [%a3] lo:DTime.40736
	ld.w	%d2, [%a2] lo:IdleElapsed.40737
	movh.a	%a4, hi:CPU_PercentUtilization_global
	sub	%d2, %d3, %d2
	utof	%d15, %d2
	movh	%d2, 17096
	mul.f	%d2, %d15, %d2
	utof	%d15, %d3
	div.f	%d15, %d2, %d15
	st.w	[%a4] lo:CPU_PercentUtilization_global, %d15
	.loc 1 183 0
	mov	%d15, 0
	st.b	[%a15] lo:StateCaculationCore0, %d15
	.loc 1 184 0
	movh.a	%a15, hi:Status_global
	st.b	[%a15] lo:Status_global, %d15
	.loc 1 186 0
	mov	%d15, 0
	movh.a	%a15, hi:TimeSet.40733
	st.w	[%a15] lo:TimeSet.40733, %d15
	.loc 1 187 0
	movh.a	%a15, hi:BaseTime.40734
	st.w	[%a15] lo:BaseTime.40734, %d15
	.loc 1 188 0
	movh.a	%a15, hi:CurTime.40735
	st.w	[%a15] lo:CurTime.40735, %d15
	.loc 1 191 0
	movh.a	%a15, hi:IdleElapsed_Start.40738
	st.w	[%a15] lo:IdleElapsed_Start.40738, %d15
	.loc 1 192 0
	movh.a	%a15, hi:IdleElapsed_End.40739
	.loc 1 189 0
	st.w	[%a3] lo:DTime.40736, %d15
	.loc 1 190 0
	st.w	[%a2] lo:IdleElapsed.40737, %d15
	.loc 1 192 0
	st.w	[%a15] lo:IdleElapsed_End.40739, %d15
	.loc 1 193 0
	j	.L14
.LFE21:
	.size	CDD_CORE0_func, .-CDD_CORE0_func
.section .text.RE_CORE0_SERVER_func,"ax",@progbits
	.align 1
	.global	RE_CORE0_SERVER_func
	.type	RE_CORE0_SERVER_func, @function
RE_CORE0_SERVER_func:
.LFB22:
	.loc 1 245 0
.LVL18:
	.loc 1 247 0
	movh.a	%a15, hi:DataReceiverCore0_ClientServer
	st.h	[%a15] lo:DataReceiverCore0_ClientServer, %d4
	.loc 1 248 0
	movh.a	%a15, hi:CounterServerTest.40758
	ld.hu	%d15, [%a15] lo:CounterServerTest.40758
	add	%d2, %d15, 1
	.loc 1 250 0
	add	%d15, 2
	extr.u	%d15, %d15, 0, 16
	.loc 1 248 0
	st.h	[%a15] lo:CounterServerTest.40758, %d2
	.loc 1 250 0
	st.h	[%a4]0, %d15
	.loc 1 251 0
	st.h	[%a5]0, %d15
	ret
.LFE22:
	.size	RE_CORE0_SERVER_func, .-RE_CORE0_SERVER_func
.section .text.RE_OsShell_TriggerBg_func,"ax",@progbits
	.align 1
	.global	RE_OsShell_TriggerBg_func
	.type	RE_OsShell_TriggerBg_func, @function
RE_OsShell_TriggerBg_func:
.LFB23:
	.loc 1 271 0
	sub.a	%SP, 8
.LCFI0:
	.loc 1 275 0
	movh.a	%a15, hi:Os_const_tasks0
	.loc 1 272 0
	lea	%a5, [%SP] 8
	mov	%d15, 0
	.loc 1 275 0
	lea	%a15, [%a15] lo:Os_const_tasks0
	.loc 1 272 0
	st.b	[+%a5]-1, %d15
	.loc 1 275 0
	mov.aa	%a4, %a15
	call	Os_GetTaskState
.LVL19:
	.loc 1 277 0
	ld.bu	%d15, [%SP] 7
	jz	%d15, .L36
	ret
.L36:
	.loc 1 280 0
	mov.aa	%a4, %a15
	call	Os_ActivateTask
.LVL20:
	ret
.LFE23:
	.size	RE_OsShell_TriggerBg_func, .-RE_OsShell_TriggerBg_func
.section .bss.a2.CounterServerTest.40758,"aw",@nobits
	.align 1
	.type	CounterServerTest.40758, @object
	.size	CounterServerTest.40758, 2
CounterServerTest.40758:
	.zero	2
.section .bss.a4.IdleElapsed.40737,"aw",@nobits
	.align 2
	.type	IdleElapsed.40737, @object
	.size	IdleElapsed.40737, 4
IdleElapsed.40737:
	.zero	4
.section .bss.a4.IdleElapsed_End.40739,"aw",@nobits
	.align 2
	.type	IdleElapsed_End.40739, @object
	.size	IdleElapsed_End.40739, 4
IdleElapsed_End.40739:
	.zero	4
.section .bss.a4.DTime.40736,"aw",@nobits
	.align 2
	.type	DTime.40736, @object
	.size	DTime.40736, 4
DTime.40736:
	.zero	4
.section .bss.a4.CurTime.40735,"aw",@nobits
	.align 2
	.type	CurTime.40735, @object
	.size	CurTime.40735, 4
CurTime.40735:
	.zero	4
.section .bss.a4.BaseTime.40734,"aw",@nobits
	.align 2
	.type	BaseTime.40734, @object
	.size	BaseTime.40734, 4
BaseTime.40734:
	.zero	4
.section .bss.a4.IdleElapsed_Start.40738,"aw",@nobits
	.align 2
	.type	IdleElapsed_Start.40738, @object
	.size	IdleElapsed_Start.40738, 4
IdleElapsed_Start.40738:
	.zero	4
.section .bss.a4.TimeSet.40733,"aw",@nobits
	.align 2
	.type	TimeSet.40733, @object
	.size	TimeSet.40733, 4
TimeSet.40733:
	.zero	4
.section .bss.a4.MaxUserStackUtilization_f64,"aw",@nobits
	.align 2
	.type	MaxUserStackUtilization_f64, @object
	.size	MaxUserStackUtilization_f64, 4
MaxUserStackUtilization_f64:
	.zero	4
.section .bss.a4.CPU_PercentUtilization_global,"aw",@nobits
	.align 2
	.type	CPU_PercentUtilization_global, @object
	.size	CPU_PercentUtilization_global, 4
CPU_PercentUtilization_global:
	.zero	4
.section .bss.a4.Duration_global,"aw",@nobits
	.align 2
	.type	Duration_global, @object
	.size	Duration_global, 4
Duration_global:
	.zero	4
.section .bss.a2.DataReceiverCore0_ClientServer,"aw",@nobits
	.align 1
	.type	DataReceiverCore0_ClientServer, @object
	.size	DataReceiverCore0_ClientServer, 2
DataReceiverCore0_ClientServer:
	.zero	2
.section .bss.a1.Status_global,"aw",@nobits
	.type	Status_global, @object
	.size	Status_global, 1
Status_global:
	.zero	1
.section .bss.a1.StateCaculationCore0,"aw",@nobits
	.type	StateCaculationCore0, @object
	.size	StateCaculationCore0, 1
StateCaculationCore0:
	.zero	1
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
	.byte	0x4
	.uaword	.LCFI0-.LFB23
	.byte	0xe
	.uleb128 0x8
	.align 2
.LEFDE8:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 5 ".\\output\\inc/..\\..\\ASW\\CDD_CORE0\\api\\CDD_CORE0.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xd5a
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\CDD_CORE0\\src\\CDD_CORE0.c"
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
	.uaword	0x1ac
	.uleb128 0x3
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1bd
	.uleb128 0x2
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x1d3
	.uleb128 0x2
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.string	"float64"
	.byte	0x2
	.byte	0x78
	.uaword	0x27e
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
	.string	"StatusType"
	.byte	0x3
	.byte	0x48
	.uaword	0x1ac
	.uleb128 0x3
	.string	"Std_ReturnType"
	.byte	0x3
	.byte	0x60
	.uaword	0x212
	.uleb128 0x4
	.byte	0x4
	.uaword	0x212
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x6
	.byte	0x44
	.byte	0x4
	.byte	0xc7
	.uaword	0x2f2
	.uleb128 0x7
	.string	"store"
	.byte	0x4
	.byte	0xc8
	.uaword	0x2f2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x8
	.uaword	0x23e
	.uaword	0x302
	.uleb128 0x9
	.uaword	0x206
	.byte	0x10
	.byte	0
	.uleb128 0x3
	.string	"Os_JumpBufType"
	.byte	0x4
	.byte	0xc9
	.uaword	0x318
	.uleb128 0x8
	.uaword	0x2d9
	.uaword	0x328
	.uleb128 0x9
	.uaword	0x206
	.byte	0
	.byte	0
	.uleb128 0x3
	.string	"Os_StackTraceType"
	.byte	0x4
	.byte	0xdb
	.uaword	0x1d3
	.uleb128 0x6
	.byte	0x8
	.byte	0x4
	.byte	0xdc
	.uaword	0x365
	.uleb128 0x7
	.string	"sp"
	.byte	0x4
	.byte	0xdc
	.uaword	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x7
	.string	"ctx"
	.byte	0x4
	.byte	0xdc
	.uaword	0x328
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"Os_StackValueType"
	.byte	0x4
	.byte	0xdc
	.uaword	0x341
	.uleb128 0x3
	.string	"Os_StackSizeType"
	.byte	0x4
	.byte	0xdd
	.uaword	0x365
	.uleb128 0x3
	.string	"Os_VoidVoidFunctionType"
	.byte	0x4
	.byte	0xe0
	.uaword	0x3b5
	.uleb128 0x4
	.byte	0x4
	.uaword	0x3bb
	.uleb128 0xa
	.byte	0x1
	.uleb128 0x3
	.string	"ApplicationType"
	.byte	0x4
	.byte	0xee
	.uaword	0x1ac
	.uleb128 0x4
	.byte	0x4
	.uaword	0x21f
	.uleb128 0x4
	.byte	0x4
	.uaword	0x23e
	.uleb128 0xb
	.string	"Os_StopwatchTickType"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x1d3
	.uleb128 0xb
	.string	"CoreIdType"
	.byte	0x4
	.uahalf	0x11b
	.uaword	0x21f
	.uleb128 0xc
	.string	"Os_MeterInfoType_s"
	.byte	0x30
	.byte	0x4
	.uahalf	0x172
	.uaword	0x4c7
	.uleb128 0xd
	.string	"elapsed"
	.byte	0x4
	.uahalf	0x173
	.uaword	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"previous"
	.byte	0x4
	.uahalf	0x174
	.uaword	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"max"
	.byte	0x4
	.uahalf	0x175
	.uaword	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"cumulative"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x3e0
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"stackbase"
	.byte	0x4
	.uahalf	0x177
	.uaword	0x365
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"stackusage"
	.byte	0x4
	.uahalf	0x178
	.uaword	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xd
	.string	"stackmax"
	.byte	0x4
	.uahalf	0x179
	.uaword	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x17a
	.uaword	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.byte	0
	.uleb128 0xb
	.string	"Os_MeterInfoType"
	.byte	0x4
	.uahalf	0x17b
	.uaword	0x410
	.uleb128 0xb
	.string	"Os_bitmask"
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x1d3
	.uleb128 0xb
	.string	"Os_pset0Type"
	.byte	0x4
	.uahalf	0x1a8
	.uaword	0x4e0
	.uleb128 0xb
	.string	"Os_pset1Type"
	.byte	0x4
	.uahalf	0x1a9
	.uaword	0x4e0
	.uleb128 0xb
	.string	"Os_pset2Type"
	.byte	0x4
	.uahalf	0x1aa
	.uaword	0x4e0
	.uleb128 0xb
	.string	"Os_pset3Type"
	.byte	0x4
	.uahalf	0x1ab
	.uaword	0x4e0
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x57d
	.uleb128 0x10
	.string	"p0"
	.byte	0x4
	.uahalf	0x1ad
	.uaword	0x4f3
	.uleb128 0x10
	.string	"p1"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x508
	.uleb128 0x10
	.string	"p2"
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x51d
	.uleb128 0x10
	.string	"p3"
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x532
	.byte	0
	.uleb128 0xb
	.string	"Os_psetType"
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x547
	.uleb128 0xf
	.byte	0x4
	.byte	0x4
	.uahalf	0x1b3
	.uaword	0x5c7
	.uleb128 0x10
	.string	"t0"
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0x4e0
	.uleb128 0x10
	.string	"t1"
	.byte	0x4
	.uahalf	0x1b5
	.uaword	0x4e0
	.uleb128 0x10
	.string	"t2"
	.byte	0x4
	.uahalf	0x1b6
	.uaword	0x4e0
	.uleb128 0x10
	.string	"t3"
	.byte	0x4
	.uahalf	0x1b7
	.uaword	0x4e0
	.byte	0
	.uleb128 0xb
	.string	"Os_tpmaskType"
	.byte	0x4
	.uahalf	0x1b8
	.uaword	0x591
	.uleb128 0xc
	.string	"Os_TaskDynType_s"
	.byte	0x78
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0x644
	.uleb128 0xd
	.string	"terminate_jump_buf"
	.byte	0x4
	.uahalf	0x1bb
	.uaword	0x302
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"meter"
	.byte	0x4
	.uahalf	0x1bc
	.uaword	0x4c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xd
	.string	"termination_state"
	.byte	0x4
	.uahalf	0x1bd
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.byte	0
	.uleb128 0xb
	.string	"Os_TaskDynType"
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x5dd
	.uleb128 0xc
	.string	"Os_TaskType_s"
	.byte	0x28
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x735
	.uleb128 0xd
	.string	"dynamic"
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x735
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.string	"entry_function"
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x396
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xd
	.string	"pset"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x57d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xd
	.string	"base_tpmask"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xd
	.string	"tpmask"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x5c7
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xd
	.string	"core_id"
	.byte	0x4
	.uahalf	0x1c6
	.uaword	0x3fd
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xd
	.string	"index"
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x23e
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x1c8
	.uaword	0x37e
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xd
	.string	"access"
	.byte	0x4
	.uahalf	0x1c9
	.uaword	0x212
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xd
	.string	"application"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x3bd
	.byte	0x2
	.byte	0x23
	.uleb128 0x25
	.byte	0
	.uleb128 0x11
	.uaword	0x73a
	.uleb128 0x4
	.byte	0x4
	.uaword	0x644
	.uleb128 0xb
	.string	"Os_TaskType"
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x65b
	.uleb128 0xb
	.string	"TaskType"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x765
	.uleb128 0x4
	.byte	0x4
	.uaword	0x76b
	.uleb128 0x11
	.uaword	0x740
	.uleb128 0x12
	.string	"Os_TaskStateType"
	.byte	0x1
	.byte	0x4
	.uahalf	0x1d4
	.uaword	0x7b3
	.uleb128 0x13
	.string	"SUSPENDED"
	.sleb128 0
	.uleb128 0x13
	.string	"READY"
	.sleb128 1
	.uleb128 0x13
	.string	"WAITING"
	.sleb128 2
	.uleb128 0x13
	.string	"RUNNING"
	.sleb128 3
	.byte	0
	.uleb128 0xb
	.string	"TaskStateType"
	.byte	0x4
	.uahalf	0x1d5
	.uaword	0x770
	.uleb128 0xb
	.string	"TaskStateRefType"
	.byte	0x4
	.uahalf	0x1d6
	.uaword	0x7e2
	.uleb128 0x4
	.byte	0x4
	.uaword	0x7b3
	.uleb128 0x4
	.byte	0x4
	.uaword	0x26f
	.uleb128 0x14
	.string	"StateCaculation_type"
	.byte	0x1
	.byte	0x5
	.byte	0x20
	.uaword	0x855
	.uleb128 0x13
	.string	"PREPARE"
	.sleb128 0
	.uleb128 0x13
	.string	"START_CACULATION"
	.sleb128 1
	.uleb128 0x13
	.string	"WAIT_CACULATION"
	.sleb128 2
	.uleb128 0x13
	.string	"FINISH_START_CACULATION"
	.sleb128 3
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"CPUUtilizationCore0_func"
	.byte	0x1
	.byte	0x44
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8ca
	.uleb128 0x16
	.string	"Duration_u32"
	.byte	0x1
	.byte	0x46
	.uaword	0x23e
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"CPU_PercentUtilization"
	.byte	0x1
	.byte	0x47
	.uaword	0x7e8
	.byte	0x1
	.byte	0x64
	.uleb128 0x16
	.string	"Status"
	.byte	0x1
	.byte	0x48
	.uaword	0x2d1
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.string	"GetMaxUserStackUtilization_Core0_func"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	0x2bb
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x93f
	.uleb128 0x16
	.string	"MaxUserStackUtilization"
	.byte	0x1
	.byte	0x61
	.uaword	0x7e8
	.byte	0x1
	.byte	0x64
	.uleb128 0x18
	.string	"retValue"
	.byte	0x1
	.byte	0x65
	.uaword	0x2bb
	.uaword	.LLST0
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"CDD_CORE0_func"
	.byte	0x1
	.byte	0x82
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xaad
	.uleb128 0x19
	.string	"TimeSet"
	.byte	0x1
	.byte	0x87
	.uaword	0x23e
	.byte	0x5
	.byte	0x3
	.uaword	TimeSet.40733
	.uleb128 0x19
	.string	"BaseTime"
	.byte	0x1
	.byte	0x88
	.uaword	0x23e
	.byte	0x5
	.byte	0x3
	.uaword	BaseTime.40734
	.uleb128 0x19
	.string	"CurTime"
	.byte	0x1
	.byte	0x89
	.uaword	0x23e
	.byte	0x5
	.byte	0x3
	.uaword	CurTime.40735
	.uleb128 0x19
	.string	"DTime"
	.byte	0x1
	.byte	0x8a
	.uaword	0x23e
	.byte	0x5
	.byte	0x3
	.uaword	DTime.40736
	.uleb128 0x19
	.string	"IdleElapsed"
	.byte	0x1
	.byte	0x8b
	.uaword	0x23e
	.byte	0x5
	.byte	0x3
	.uaword	IdleElapsed.40737
	.uleb128 0x19
	.string	"IdleElapsed_Start"
	.byte	0x1
	.byte	0x8c
	.uaword	0x23e
	.byte	0x5
	.byte	0x3
	.uaword	IdleElapsed_Start.40738
	.uleb128 0x19
	.string	"IdleElapsed_End"
	.byte	0x1
	.byte	0x8d
	.uaword	0x23e
	.byte	0x5
	.byte	0x3
	.uaword	IdleElapsed_End.40739
	.uleb128 0x18
	.string	"stack_pos"
	.byte	0x1
	.byte	0x8f
	.uaword	0x3da
	.uaword	.LLST1
	.uleb128 0x18
	.string	"stack_start"
	.byte	0x1
	.byte	0x90
	.uaword	0x23e
	.uaword	.LLST2
	.uleb128 0x18
	.string	"empty_accu"
	.byte	0x1
	.byte	0x91
	.uaword	0x212
	.uaword	.LLST3
	.uleb128 0x18
	.string	"UStack_Size"
	.byte	0x1
	.byte	0x92
	.uaword	0x23e
	.uaword	.LLST4
	.uleb128 0x18
	.string	"UserStackUtilization_f64"
	.byte	0x1
	.byte	0x93
	.uaword	0x26f
	.uaword	.LLST5
	.uleb128 0x1a
	.uaword	.LVL4
	.uaword	0xcd3
	.uleb128 0x1a
	.uaword	.LVL5
	.uaword	0xcf3
	.uleb128 0x1a
	.uaword	.LVL16
	.uaword	0xcf3
	.uleb128 0x1a
	.uaword	.LVL17
	.uaword	0xcd3
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"RE_CORE0_SERVER_func"
	.byte	0x1
	.byte	0xef
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xb32
	.uleb128 0x16
	.string	"CoreStatus"
	.byte	0x1
	.byte	0xf1
	.uaword	0x3d4
	.byte	0x1
	.byte	0x64
	.uleb128 0x16
	.string	"Data2Core"
	.byte	0x1
	.byte	0xf2
	.uaword	0x21f
	.byte	0x1
	.byte	0x54
	.uleb128 0x16
	.string	"DataOfCore"
	.byte	0x1
	.byte	0xf3
	.uaword	0x3d4
	.byte	0x1
	.byte	0x65
	.uleb128 0x19
	.string	"CounterServerTest"
	.byte	0x1
	.byte	0xf6
	.uaword	0x21f
	.byte	0x5
	.byte	0x3
	.uaword	CounterServerTest.40758
	.byte	0
	.uleb128 0x1b
	.byte	0x1
	.string	"RE_OsShell_TriggerBg_func"
	.byte	0x1
	.uahalf	0x10b
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.uaword	.LLST6
	.byte	0x1
	.uaword	0xba5
	.uleb128 0x1c
	.string	"stTaskState"
	.byte	0x1
	.uahalf	0x110
	.uaword	0x7b3
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1d
	.uaword	.LVL19
	.uaword	0xd12
	.uaword	0xb94
	.uleb128 0x1e
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -1
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL20
	.uaword	0xd3c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"StateCaculationCore0"
	.byte	0x1
	.byte	0x1b
	.uaword	0x7ee
	.byte	0x5
	.byte	0x3
	.uaword	StateCaculationCore0
	.uleb128 0x19
	.string	"Status_global"
	.byte	0x1
	.byte	0x21
	.uaword	0x212
	.byte	0x5
	.byte	0x3
	.uaword	Status_global
	.uleb128 0x19
	.string	"DataReceiverCore0_ClientServer"
	.byte	0x1
	.byte	0x27
	.uaword	0x21f
	.byte	0x5
	.byte	0x3
	.uaword	DataReceiverCore0_ClientServer
	.uleb128 0x19
	.string	"Duration_global"
	.byte	0x1
	.byte	0x2d
	.uaword	0x23e
	.byte	0x5
	.byte	0x3
	.uaword	Duration_global
	.uleb128 0x19
	.string	"CPU_PercentUtilization_global"
	.byte	0x1
	.byte	0x33
	.uaword	0x26f
	.byte	0x5
	.byte	0x3
	.uaword	CPU_PercentUtilization_global
	.uleb128 0x19
	.string	"MaxUserStackUtilization_f64"
	.byte	0x1
	.byte	0x34
	.uaword	0x26f
	.byte	0x5
	.byte	0x3
	.uaword	MaxUserStackUtilization_f64
	.uleb128 0x8
	.uaword	0x740
	.uaword	0xc8a
	.uleb128 0x20
	.byte	0
	.uleb128 0x21
	.string	"Os_const_tasks0"
	.byte	0x4
	.uahalf	0x461
	.uaword	0xca4
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.uaword	0xc7f
	.uleb128 0x22
	.string	"__USTACK0"
	.byte	0x5
	.byte	0x2d
	.uaword	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x22
	.string	"__USTACK0_END"
	.byte	0x5
	.byte	0x2e
	.uaword	0x2d7
	.byte	0x1
	.byte	0x1
	.uleb128 0x23
	.byte	0x1
	.string	"Get_Core0Idle_SumTime"
	.byte	0x1
	.byte	0x37
	.byte	0x1
	.uaword	0x23e
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"Os_Cbk_GetStopwatch"
	.byte	0x4
	.uahalf	0x3e4
	.byte	0x1
	.uaword	0x3e0
	.byte	0x1
	.uleb128 0x25
	.byte	0x1
	.string	"Os_GetTaskState"
	.byte	0x4
	.uahalf	0x407
	.byte	0x1
	.uaword	0x2a9
	.byte	0x1
	.uaword	0xd3c
	.uleb128 0x26
	.uaword	0x754
	.uleb128 0x26
	.uaword	0x7c9
	.byte	0
	.uleb128 0x27
	.byte	0x1
	.string	"Os_ActivateTask"
	.byte	0x4
	.uahalf	0x405
	.byte	0x1
	.uaword	0x2a9
	.byte	0x1
	.uleb128 0x26
	.uaword	0x754
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
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
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
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x4
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
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
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
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
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
	.uleb128 0x5
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1f
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x20
	.uleb128 0x21
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL7
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL6
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL3
	.uaword	.LVL8
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x73
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL13
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL15
	.uaword	.LFE21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL3
	.uaword	.LVL12
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL13
	.uaword	.LFE21
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LFB23
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE23
	.uahalf	0x2
	.byte	0x8a
	.sleb128 8
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
.LASF0:
	.string	"stackbudget"
	.extern	Os_ActivateTask,STT_FUNC,0
	.extern	Os_GetTaskState,STT_FUNC,0
	.extern	Os_const_tasks0,STT_OBJECT,-1
	.extern	__USTACK0_END,STT_OBJECT,4
	.extern	__USTACK0,STT_OBJECT,4
	.extern	Os_Cbk_GetStopwatch,STT_FUNC,0
	.extern	Get_Core0Idle_SumTime,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
