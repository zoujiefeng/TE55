	.file	"CDD_CORE2.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CPUUtilizationCore2_func,"ax",@progbits
	.align 1
	.global	CPUUtilizationCore2_func
	.type	CPUUtilizationCore2_func, @function
CPUUtilizationCore2_func:
.LFB19:
	.file 1 "ASW\\CDD_CORE2\\src\\CDD_CORE2.c"
	.loc 1 67 0
.LVL0:
	.loc 1 68 0
	movh.a	%a15, hi:Duration_global
	st.w	[%a15] lo:Duration_global, %d4
	.loc 1 69 0
	movh.a	%a15, hi:CPU_PercentUtilization_global
	ld.w	%d15, [%a15] lo:CPU_PercentUtilization_global
	.loc 1 70 0
	movh.a	%a15, hi:Status_global
	.loc 1 69 0
	st.w	[%a4]0, %d15
	.loc 1 70 0
	ld.bu	%d15, [%a15] lo:Status_global
	st.b	[%a5]0, %d15
	ret
.LFE19:
	.size	CPUUtilizationCore2_func, .-CPUUtilizationCore2_func
.section .text.GetMaxUserStackUtilization_Core2_func,"ax",@progbits
	.align 1
	.global	GetMaxUserStackUtilization_Core2_func
	.type	GetMaxUserStackUtilization_Core2_func, @function
GetMaxUserStackUtilization_Core2_func:
.LFB20:
	.loc 1 91 0
.LVL1:
	.loc 1 95 0
	movh.a	%a15, hi:MaxUserStackUtilization_f64
	ld.w	%d2, [%a15] lo:MaxUserStackUtilization_f64
	mov	%d15, 0
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,2, %d15,1
	jz	%d15, .L11
	.loc 1 95 0 is_stmt 0 discriminator 1
	movh	%d15, 17096
	cmp.f	%d15, %d2, %d15
	or.t	%d15, %d15,0, %d15,1
	jz	%d15, .L11
	.loc 1 97 0 is_stmt 1
	st.w	[%a4]0, %d2
	.loc 1 93 0
	mov	%d2, 0
	.loc 1 97 0
	ret
.L11:
	.loc 1 101 0
	mov	%d2, 1
.LVL2:
	.loc 1 105 0
	ret
.LFE20:
	.size	GetMaxUserStackUtilization_Core2_func, .-GetMaxUserStackUtilization_Core2_func
.section .text.CDD_CORE2_func,"ax",@progbits
	.align 1
	.global	CDD_CORE2_func
	.type	CDD_CORE2_func, @function
CDD_CORE2_func:
.LFB21:
	.loc 1 124 0
.LVL3:
	.loc 1 140 0
	movh.a	%a15, hi:StateCaculationCore2
	ld.bu	%d15, [%a15] lo:StateCaculationCore2
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
	.loc 1 149 0
	call	Get_Core2Idle_SumTime
.LVL4:
	movh.a	%a2, hi:IdleElapsed_Start.40731
	st.w	[%a2] lo:IdleElapsed_Start.40731, %d2
	.loc 1 150 0
	call	Os_Cbk_GetStopwatch
.LVL5:
	.loc 1 151 0
	mov	%d15, 2
	.loc 1 150 0
	movh.a	%a2, hi:BaseTime.40727
	st.w	[%a2] lo:BaseTime.40727, %d2
	.loc 1 151 0
	st.b	[%a15] lo:StateCaculationCore2, %d15
.L14:
	.loc 1 191 0
	movh	%d4, hi:__USTACK2
	addi	%d4, %d4, lo:__USTACK2
	movh	%d15, hi:__USTACK2_END
	.loc 1 193 0
	mov.a	%a15, %d4
	.loc 1 191 0
	addi	%d15, %d15, lo:__USTACK2_END
	sub	%d5, %d4, %d15
.LVL6:
	.loc 1 193 0
	add.a	%a15, -2
.LVL7:
	.loc 1 136 0
	mov	%d3, 0
.LVL8:
.L24:
	.loc 1 196 0
	ld.hu	%d15, [%a15] 2
	ld.hu	%d2, [%a15]0
	sh	%d15, %d15, 16
	or	%d15, %d2
	jnz	%d15, .L25
	.loc 1 198 0
	add	%d3, 1
.LVL9:
	and	%d3, %d3, 255
.LVL10:
	.loc 1 206 0
	ne	%d15, %d3, 8
	.loc 1 199 0
	add.a	%a15, -4
.LVL11:
	.loc 1 206 0
	jnz	%d15, .L24
	.loc 1 208 0
	mov.d	%d2, %a15
	addi	%d15, %d4, -32
	sub	%d15, %d2
	utof	%d2, %d15
	utof	%d15, %d5
	.loc 1 209 0
	movh.a	%a2, hi:MaxUserStackUtilization_f64
	.loc 1 208 0
	div.f	%d15, %d2, %d15
.LVL12:
	.loc 1 209 0
	ld.w	%d2, [%a2] lo:MaxUserStackUtilization_f64
	cmp.f	%d2, %d15, %d2
	jz.t	%d2, 2, .L13
	.loc 1 211 0
	st.w	[%a2] lo:MaxUserStackUtilization_f64, %d15
.L13:
	ret
.LVL13:
.L25:
	.loc 1 204 0
	lea	%a15, [%a15] -32
.LVL14:
	.loc 1 203 0
	mov	%d3, 0
	j	.L24
.LVL15:
.L18:
	.loc 1 155 0
	call	Os_Cbk_GetStopwatch
.LVL16:
	movh.a	%a2, hi:CurTime.40728
	st.w	[%a2] lo:CurTime.40728, %d2
	.loc 1 156 0
	movh.a	%a2, hi:BaseTime.40727
	ld.w	%d15, [%a2] lo:BaseTime.40727
	movh.a	%a2, hi:DTime.40729
	nor	%d4, %d15, 0
	sub	%d3, %d2, %d15
	add	%d4, %d2
	ge.u	%d2, %d15, %d2
	sel	%d2, %d2, %d4, %d3
	st.w	[%a2] lo:DTime.40729, %d2
	.loc 1 159 0
	movh.a	%a2, hi:TimeSet.40726
	ld.w	%d15, [%a2] lo:TimeSet.40726
	jge.u	%d15, %d2, .L14
	.loc 1 161 0
	call	Get_Core2Idle_SumTime
.LVL17:
	movh.a	%a2, hi:IdleElapsed_End.40732
	st.w	[%a2] lo:IdleElapsed_End.40732, %d2
	.loc 1 162 0
	movh.a	%a2, hi:IdleElapsed_Start.40731
	ld.w	%d15, [%a2] lo:IdleElapsed_Start.40731
	movh.a	%a2, hi:IdleElapsed.40730
	nor	%d4, %d15, 0
	.loc 1 164 0
	sub	%d3, %d2, %d15
	add	%d4, %d2
	ge.u	%d15, %d15, %d2
	sel	%d15, %d15, %d4, %d3
	st.w	[%a2] lo:IdleElapsed.40730, %d15
	.loc 1 170 0
	mov	%d15, 3
	st.b	[%a15] lo:StateCaculationCore2, %d15
	j	.L14
.L15:
	.loc 1 143 0
	mov	%d15, 63
	movh.a	%a2, hi:Status_global
	st.b	[%a2] lo:Status_global, %d15
	.loc 1 144 0
	movh.a	%a2, hi:Duration_global
	ld.w	%d2, [%a2] lo:Duration_global
	movh	%d15, 2
	addi	%d15, %d15, -31072
	mul	%d15, %d2
	movh.a	%a2, hi:TimeSet.40726
	st.w	[%a2] lo:TimeSet.40726, %d15
	.loc 1 145 0
	mov	%d15, 1
	st.b	[%a15] lo:StateCaculationCore2, %d15
	.loc 1 146 0
	j	.L14
.L19:
	.loc 1 175 0
	movh.a	%a3, hi:DTime.40729
	movh.a	%a2, hi:IdleElapsed.40730
	ld.w	%d3, [%a3] lo:DTime.40729
	ld.w	%d2, [%a2] lo:IdleElapsed.40730
	movh.a	%a4, hi:CPU_PercentUtilization_global
	sub	%d2, %d3, %d2
	utof	%d15, %d2
	movh	%d2, 17096
	mul.f	%d2, %d15, %d2
	utof	%d15, %d3
	div.f	%d15, %d2, %d15
	st.w	[%a4] lo:CPU_PercentUtilization_global, %d15
	.loc 1 176 0
	mov	%d15, 0
	st.b	[%a15] lo:StateCaculationCore2, %d15
	.loc 1 177 0
	movh.a	%a15, hi:Status_global
	st.b	[%a15] lo:Status_global, %d15
	.loc 1 179 0
	mov	%d15, 0
	movh.a	%a15, hi:TimeSet.40726
	st.w	[%a15] lo:TimeSet.40726, %d15
	.loc 1 180 0
	movh.a	%a15, hi:BaseTime.40727
	st.w	[%a15] lo:BaseTime.40727, %d15
	.loc 1 181 0
	movh.a	%a15, hi:CurTime.40728
	st.w	[%a15] lo:CurTime.40728, %d15
	.loc 1 184 0
	movh.a	%a15, hi:IdleElapsed_Start.40731
	st.w	[%a15] lo:IdleElapsed_Start.40731, %d15
	.loc 1 185 0
	movh.a	%a15, hi:IdleElapsed_End.40732
	.loc 1 182 0
	st.w	[%a3] lo:DTime.40729, %d15
	.loc 1 183 0
	st.w	[%a2] lo:IdleElapsed.40730, %d15
	.loc 1 185 0
	st.w	[%a15] lo:IdleElapsed_End.40732, %d15
	.loc 1 186 0
	j	.L14
.LFE21:
	.size	CDD_CORE2_func, .-CDD_CORE2_func
.section .bss.a4.IdleElapsed.40730,"aw",@nobits
	.align 2
	.type	IdleElapsed.40730, @object
	.size	IdleElapsed.40730, 4
IdleElapsed.40730:
	.zero	4
.section .bss.a4.IdleElapsed_End.40732,"aw",@nobits
	.align 2
	.type	IdleElapsed_End.40732, @object
	.size	IdleElapsed_End.40732, 4
IdleElapsed_End.40732:
	.zero	4
.section .bss.a4.DTime.40729,"aw",@nobits
	.align 2
	.type	DTime.40729, @object
	.size	DTime.40729, 4
DTime.40729:
	.zero	4
.section .bss.a4.CurTime.40728,"aw",@nobits
	.align 2
	.type	CurTime.40728, @object
	.size	CurTime.40728, 4
CurTime.40728:
	.zero	4
.section .bss.a4.BaseTime.40727,"aw",@nobits
	.align 2
	.type	BaseTime.40727, @object
	.size	BaseTime.40727, 4
BaseTime.40727:
	.zero	4
.section .bss.a4.IdleElapsed_Start.40731,"aw",@nobits
	.align 2
	.type	IdleElapsed_Start.40731, @object
	.size	IdleElapsed_Start.40731, 4
IdleElapsed_Start.40731:
	.zero	4
.section .bss.a4.TimeSet.40726,"aw",@nobits
	.align 2
	.type	TimeSet.40726, @object
	.size	TimeSet.40726, 4
TimeSet.40726:
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
.section .bss.a1.Status_global,"aw",@nobits
	.type	Status_global, @object
	.size	Status_global, 1
Status_global:
	.zero	1
.section .bss.a1.StateCaculationCore2,"aw",@nobits
	.type	StateCaculationCore2, @object
	.size	StateCaculationCore2, 1
StateCaculationCore2:
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\os\\Os.h"
	.file 5 ".\\output\\inc/..\\..\\ASW\\CDD_CORE2\\api\\CDD_CORE2.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x6b5
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"ASW\\CDD_CORE2\\src\\CDD_CORE2.c"
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
	.uaword	0x270
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
	.uaword	0x212
	.uleb128 0x4
	.byte	0x4
	.uaword	0x212
	.uleb128 0x5
	.byte	0x4
	.uleb128 0x4
	.byte	0x4
	.uaword	0x230
	.uleb128 0x6
	.string	"Os_StopwatchTickType"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x1d3
	.uleb128 0x4
	.byte	0x4
	.uaword	0x261
	.uleb128 0x7
	.string	"StateCaculation_type"
	.byte	0x1
	.byte	0x5
	.byte	0x20
	.uaword	0x349
	.uleb128 0x8
	.string	"PREPARE"
	.sleb128 0
	.uleb128 0x8
	.string	"START_CACULATION"
	.sleb128 1
	.uleb128 0x8
	.string	"WAIT_CACULATION"
	.sleb128 2
	.uleb128 0x8
	.string	"FINISH_START_CACULATION"
	.sleb128 3
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"CPUUtilizationCore2_func"
	.byte	0x1
	.byte	0x3d
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3be
	.uleb128 0xa
	.string	"Duration_u32"
	.byte	0x1
	.byte	0x3f
	.uaword	0x230
	.byte	0x1
	.byte	0x54
	.uleb128 0xa
	.string	"CPU_PercentUtilization"
	.byte	0x1
	.byte	0x40
	.uaword	0x2dc
	.byte	0x1
	.byte	0x64
	.uleb128 0xa
	.string	"Status"
	.byte	0x1
	.byte	0x41
	.uaword	0x2b1
	.byte	0x1
	.byte	0x65
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"GetMaxUserStackUtilization_Core2_func"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	0x29b
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x433
	.uleb128 0xa
	.string	"MaxUserStackUtilization"
	.byte	0x1
	.byte	0x59
	.uaword	0x2dc
	.byte	0x1
	.byte	0x64
	.uleb128 0xc
	.string	"retValue"
	.byte	0x1
	.byte	0x5d
	.uaword	0x29b
	.uaword	.LLST0
	.byte	0
	.uleb128 0x9
	.byte	0x1
	.string	"CDD_CORE2_func"
	.byte	0x1
	.byte	0x78
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x5a1
	.uleb128 0xd
	.string	"TimeSet"
	.byte	0x1
	.byte	0x7e
	.uaword	0x230
	.byte	0x5
	.byte	0x3
	.uaword	TimeSet.40726
	.uleb128 0xd
	.string	"BaseTime"
	.byte	0x1
	.byte	0x7f
	.uaword	0x230
	.byte	0x5
	.byte	0x3
	.uaword	BaseTime.40727
	.uleb128 0xd
	.string	"CurTime"
	.byte	0x1
	.byte	0x80
	.uaword	0x230
	.byte	0x5
	.byte	0x3
	.uaword	CurTime.40728
	.uleb128 0xd
	.string	"DTime"
	.byte	0x1
	.byte	0x81
	.uaword	0x230
	.byte	0x5
	.byte	0x3
	.uaword	DTime.40729
	.uleb128 0xd
	.string	"IdleElapsed"
	.byte	0x1
	.byte	0x82
	.uaword	0x230
	.byte	0x5
	.byte	0x3
	.uaword	IdleElapsed.40730
	.uleb128 0xd
	.string	"IdleElapsed_Start"
	.byte	0x1
	.byte	0x83
	.uaword	0x230
	.byte	0x5
	.byte	0x3
	.uaword	IdleElapsed_Start.40731
	.uleb128 0xd
	.string	"IdleElapsed_End"
	.byte	0x1
	.byte	0x84
	.uaword	0x230
	.byte	0x5
	.byte	0x3
	.uaword	IdleElapsed_End.40732
	.uleb128 0xc
	.string	"stack_pos"
	.byte	0x1
	.byte	0x86
	.uaword	0x2b9
	.uaword	.LLST1
	.uleb128 0xc
	.string	"stack_start"
	.byte	0x1
	.byte	0x87
	.uaword	0x230
	.uaword	.LLST2
	.uleb128 0xc
	.string	"empty_accu"
	.byte	0x1
	.byte	0x88
	.uaword	0x212
	.uaword	.LLST3
	.uleb128 0xc
	.string	"UStack_Size"
	.byte	0x1
	.byte	0x89
	.uaword	0x230
	.uaword	.LLST4
	.uleb128 0xc
	.string	"UserStackUtilization_f64"
	.byte	0x1
	.byte	0x8a
	.uaword	0x261
	.uaword	.LLST5
	.uleb128 0xe
	.uaword	.LVL4
	.uaword	0x679
	.uleb128 0xe
	.uaword	.LVL5
	.uaword	0x699
	.uleb128 0xe
	.uaword	.LVL16
	.uaword	0x699
	.uleb128 0xe
	.uaword	.LVL17
	.uaword	0x679
	.byte	0
	.uleb128 0xd
	.string	"StateCaculationCore2"
	.byte	0x1
	.byte	0x1a
	.uaword	0x2e2
	.byte	0x5
	.byte	0x3
	.uaword	StateCaculationCore2
	.uleb128 0xd
	.string	"Status_global"
	.byte	0x1
	.byte	0x20
	.uaword	0x212
	.byte	0x5
	.byte	0x3
	.uaword	Status_global
	.uleb128 0xd
	.string	"Duration_global"
	.byte	0x1
	.byte	0x26
	.uaword	0x230
	.byte	0x5
	.byte	0x3
	.uaword	Duration_global
	.uleb128 0xd
	.string	"CPU_PercentUtilization_global"
	.byte	0x1
	.byte	0x2c
	.uaword	0x261
	.byte	0x5
	.byte	0x3
	.uaword	CPU_PercentUtilization_global
	.uleb128 0xd
	.string	"MaxUserStackUtilization_f64"
	.byte	0x1
	.byte	0x2d
	.uaword	0x261
	.byte	0x5
	.byte	0x3
	.uaword	MaxUserStackUtilization_f64
	.uleb128 0xf
	.string	"__USTACK2"
	.byte	0x5
	.byte	0x2d
	.uaword	0x2b7
	.byte	0x1
	.byte	0x1
	.uleb128 0xf
	.string	"__USTACK2_END"
	.byte	0x5
	.byte	0x2e
	.uaword	0x2b7
	.byte	0x1
	.byte	0x1
	.uleb128 0x10
	.byte	0x1
	.string	"Get_Core2Idle_SumTime"
	.byte	0x1
	.byte	0x30
	.byte	0x1
	.uaword	0x230
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"Os_Cbk_GetStopwatch"
	.byte	0x4
	.uahalf	0x3e4
	.byte	0x1
	.uaword	0x2bf
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
	.uleb128 0x8
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
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
	.uleb128 0xb
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
	.uleb128 0xc
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
.section .debug_aranges,"",@progbits
	.uaword	0x2c
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	__USTACK2_END,STT_OBJECT,4
	.extern	__USTACK2,STT_OBJECT,4
	.extern	Os_Cbk_GetStopwatch,STT_FUNC,0
	.extern	Get_Core2Idle_SumTime,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
