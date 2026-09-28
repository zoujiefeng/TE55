	.file	"IfxScuWdt.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.IfxScuWdt_changeCpuWatchdogPassword,"ax",@progbits
	.align 1
	.global	IfxScuWdt_changeCpuWatchdogPassword
	.type	IfxScuWdt_changeCpuWatchdogPassword, @function
IfxScuWdt_changeCpuWatchdogPassword:
.LFB237:
	.file 1 "Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuWdt.c"
	.loc 1 65 0
.LVL0:
.LBB59:
.LBB60:
.LBB61:
	.file 2 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\IfxCpu.h"
	.loc 2 876 0
#APP
	# 876 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL1:
#NO_APP
.LBE61:
	.loc 2 877 0
	and	%d15, %d15, 7
.LVL2:
.LBE60:
.LBE59:
	.loc 1 66 0
	mul	%d15, %d15, 12
	mov.a	%a2, %d15
	lea	%a15, [%a2] 25164
	addih.a	%a15, %a15, 61443
.LVL3:
	.loc 1 70 0
	ld.w	%d15, [%a15]0
.LVL4:
	.loc 1 72 0
	jz.t	%d15, 1, .L2
	.loc 1 76 0
	insert	%d15, %d15, 1, 0, 2
	.loc 1 77 0
	insert	%d15, %d15, %d4, 2, 14
	.loc 1 80 0
	st.w	[%a15]0, %d15
.L2:
	.loc 1 84 0
	insert	%d15, %d15, 1, 0, 1
	.loc 1 85 0
	insert	%d15, %d15, 1, 1, 1
	.loc 1 86 0
	insert	%d15, %d15, %d5, 2, 14
	.loc 1 87 0
	st.w	[%a15]0, %d15
.L3:
	.loc 1 90 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL5:
	jz.t	%d15, 0, .L3
	.loc 1 92 0
	ret
.LFE237:
	.size	IfxScuWdt_changeCpuWatchdogPassword, .-IfxScuWdt_changeCpuWatchdogPassword
.section .text.IfxScuWdt_changeCpuWatchdogReload,"ax",@progbits
	.align 1
	.global	IfxScuWdt_changeCpuWatchdogReload
	.type	IfxScuWdt_changeCpuWatchdogReload, @function
IfxScuWdt_changeCpuWatchdogReload:
.LFB238:
	.loc 1 96 0
.LVL6:
.LBB62:
.LBB63:
.LBB64:
	.loc 2 876 0
#APP
	# 876 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL7:
#NO_APP
.LBE64:
	.loc 2 877 0
	and	%d15, %d15, 7
.LVL8:
.LBE63:
.LBE62:
	.loc 1 99 0
	mul	%d15, %d15, 12
	mov.a	%a2, %d15
	lea	%a15, [%a2] 25164
	addih.a	%a15, %a15, 61443
.LVL9:
	.loc 1 103 0
	ld.w	%d15, [%a15]0
.LVL10:
	.loc 1 105 0
	jz.t	%d15, 1, .L11
	.loc 1 109 0
	insert	%d15, %d15, 1, 0, 2
	.loc 1 110 0
	insert	%d15, %d15, %d4, 2, 14
	.loc 1 113 0
	st.w	[%a15]0, %d15
.L11:
	.loc 1 117 0
	insert	%d15, %d15, 1, 0, 1
	.loc 1 118 0
	insert	%d15, %d15, 1, 1, 1
	.loc 1 119 0
	insert	%d15, %d15, %d5, 16, 32-16
.LVL11:
	.loc 1 120 0
	st.w	[%a15]0, %d15
.L12:
	.loc 1 123 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL12:
	jz.t	%d15, 0, .L12
	.loc 1 125 0
	ret
.LFE238:
	.size	IfxScuWdt_changeCpuWatchdogReload, .-IfxScuWdt_changeCpuWatchdogReload
.section .text.IfxScuWdt_changeGlobalEndinitPassword,"ax",@progbits
	.align 1
	.global	IfxScuWdt_changeGlobalEndinitPassword
	.type	IfxScuWdt_changeGlobalEndinitPassword, @function
IfxScuWdt_changeGlobalEndinitPassword:
.LFB239:
	.loc 1 129 0
.LVL13:
	.loc 1 134 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 668
	.loc 1 136 0
	ld.w	%d2, [%a15] 668
	jnz.t	%d2, 1, .L23
.LVL14:
.L19:
	.loc 1 147 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 668
.LVL15:
	.loc 1 148 0
	insert	%d15, %d15, 1, 1, 1
.LVL16:
	.loc 1 149 0
	insert	%d15, %d15, %d5, 2, 14
	.loc 1 150 0
	st.w	[%a15] 668, %d15
.L20:
	.loc 1 153 0 discriminator 1
	ld.w	%d15, [%a15] 668
.LVL17:
	jz.t	%d15, 1, .L20
	.loc 1 155 0
	ret
.L23:
	.loc 1 139 0
	andn	%d15, %d15, ~(-3)
	.loc 1 140 0
	insert	%d15, %d15, %d4, 2, 14
.LVL18:
	.loc 1 143 0
	st.w	[%a15] 668, %d15
	j	.L19
.LFE239:
	.size	IfxScuWdt_changeGlobalEndinitPassword, .-IfxScuWdt_changeGlobalEndinitPassword
.section .text.IfxScuWdt_changeGlobalSafetyEndinitPassword,"ax",@progbits
	.align 1
	.global	IfxScuWdt_changeGlobalSafetyEndinitPassword
	.type	IfxScuWdt_changeGlobalSafetyEndinitPassword, @function
IfxScuWdt_changeGlobalSafetyEndinitPassword:
.LFB240:
	.loc 1 159 0
.LVL19:
	.loc 1 164 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 692
	.loc 1 166 0
	ld.w	%d2, [%a15] 692
	jnz.t	%d2, 1, .L29
.LVL20:
.L25:
	.loc 1 177 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 692
.LVL21:
	.loc 1 178 0
	insert	%d15, %d15, 1, 1, 1
.LVL22:
	.loc 1 179 0
	insert	%d15, %d15, %d5, 2, 14
	.loc 1 180 0
	st.w	[%a15] 692, %d15
.L26:
	.loc 1 183 0 discriminator 1
	ld.w	%d15, [%a15] 692
.LVL23:
	jz.t	%d15, 1, .L26
	.loc 1 185 0
	ret
.L29:
	.loc 1 169 0
	andn	%d15, %d15, ~(-3)
	.loc 1 170 0
	insert	%d15, %d15, %d4, 2, 14
.LVL24:
	.loc 1 173 0
	st.w	[%a15] 692, %d15
	j	.L25
.LFE240:
	.size	IfxScuWdt_changeGlobalSafetyEndinitPassword, .-IfxScuWdt_changeGlobalSafetyEndinitPassword
.section .text.IfxScuWdt_changeSafetyWatchdogPassword,"ax",@progbits
	.align 1
	.global	IfxScuWdt_changeSafetyWatchdogPassword
	.type	IfxScuWdt_changeSafetyWatchdogPassword, @function
IfxScuWdt_changeSafetyWatchdogPassword:
.LFB241:
	.loc 1 189 0
.LVL25:
	.loc 1 194 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
.LVL26:
	.loc 1 196 0
	jz.t	%d15, 1, .L31
	.loc 1 200 0
	insert	%d15, %d15, 1, 0, 2
	.loc 1 201 0
	insert	%d15, %d15, %d4, 2, 14
	.loc 1 204 0
	st.w	[%a15]0, %d15
.L31:
	.loc 1 208 0
	insert	%d15, %d15, 1, 0, 1
	.loc 1 209 0
	insert	%d15, %d15, 1, 1, 1
	.loc 1 210 0
	insert	%d15, %d15, %d5, 2, 14
	.loc 1 211 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	st.w	[%a15]0, %d15
.L32:
	.loc 1 214 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL27:
	jz.t	%d15, 0, .L32
	.loc 1 216 0
	ret
.LFE241:
	.size	IfxScuWdt_changeSafetyWatchdogPassword, .-IfxScuWdt_changeSafetyWatchdogPassword
.section .text.IfxScuWdt_changeSafetyWatchdogReload,"ax",@progbits
	.align 1
	.global	IfxScuWdt_changeSafetyWatchdogReload
	.type	IfxScuWdt_changeSafetyWatchdogReload, @function
IfxScuWdt_changeSafetyWatchdogReload:
.LFB242:
	.loc 1 220 0
.LVL28:
	.loc 1 226 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
.LVL29:
	.loc 1 228 0
	jz.t	%d15, 1, .L39
	.loc 1 232 0
	insert	%d15, %d15, 1, 0, 2
	.loc 1 233 0
	insert	%d15, %d15, %d4, 2, 14
	.loc 1 236 0
	st.w	[%a15]0, %d15
.L39:
	.loc 1 240 0
	insert	%d15, %d15, 1, 0, 1
	.loc 1 241 0
	insert	%d15, %d15, 1, 1, 1
	.loc 1 242 0
	insert	%d15, %d15, %d5, 16, 32-16
.LVL30:
	.loc 1 243 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
.LVL31:
	st.w	[%a15]0, %d15
.L40:
	.loc 1 246 0 discriminator 1
	ld.w	%d15, [%a15]0
.LVL32:
	jz.t	%d15, 0, .L40
	.loc 1 248 0
	ret
.LFE242:
	.size	IfxScuWdt_changeSafetyWatchdogReload, .-IfxScuWdt_changeSafetyWatchdogReload
.section .text.IfxScuWdt_clearCpuEndinit,"ax",@progbits
	.align 1
	.global	IfxScuWdt_clearCpuEndinit
	.type	IfxScuWdt_clearCpuEndinit, @function
IfxScuWdt_clearCpuEndinit:
.LFB243:
	.loc 1 252 0
.LVL33:
.LBB65:
.LBB66:
.LBB67:
	.loc 2 876 0
#APP
	# 876 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL34:
#NO_APP
.LBE67:
	.loc 2 877 0
	and	%d15, %d15, 7
.LVL35:
.LBE66:
.LBE65:
	.loc 1 253 0
	mul	%d15, %d15, 12
.LBB68:
.LBB69:
	.file 3 "Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuWdt.h"
	.loc 3 557 0
	sh	%d4, 2
.LVL36:
.LBE69:
.LBE68:
	.loc 1 253 0
	mov.a	%a2, %d15
	lea	%a15, [%a2] 25164
	addih.a	%a15, %a15, 61443
.LVL37:
.LBB71:
.LBB70:
	.loc 3 552 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L48
	.loc 3 558 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 557 0
	or	%d15, %d4
	.loc 3 555 0
	st.w	[%a15]0, %d15
.L48:
	.loc 3 565 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 2
	.loc 3 564 0
	or	%d4, %d15
	.loc 3 562 0
	st.w	[%a15]0, %d4
.L49:
	.loc 3 568 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L49
.LBE70:
.LBE71:
	.loc 1 254 0
	ret
.LFE243:
	.size	IfxScuWdt_clearCpuEndinit, .-IfxScuWdt_clearCpuEndinit
.section .text.IfxScuWdt_clearGlobalEndinit,"ax",@progbits
	.align 1
	.global	IfxScuWdt_clearGlobalEndinit
	.type	IfxScuWdt_clearGlobalEndinit, @function
IfxScuWdt_clearGlobalEndinit:
.LFB244:
	.loc 1 258 0
.LVL38:
	.loc 1 263 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 668
	.loc 1 265 0
	ld.w	%d2, [%a15] 668
	jnz.t	%d2, 1, .L57
.LVL39:
.L53:
	.loc 1 277 0 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
.L54:
	ld.w	%d15, [%a15] 668
.LVL40:
	jnz.t	%d15, 1, .L54
	.loc 1 279 0
	ret
.L57:
	.loc 1 269 0
	andn	%d15, %d15, ~(-3)
	.loc 1 270 0
	insert	%d15, %d15, %d4, 2, 14
.LVL41:
	.loc 1 273 0
	st.w	[%a15] 668, %d15
	j	.L53
.LFE244:
	.size	IfxScuWdt_clearGlobalEndinit, .-IfxScuWdt_clearGlobalEndinit
.section .text.IfxScuWdt_clearGlobalSafetyEndinit,"ax",@progbits
	.align 1
	.global	IfxScuWdt_clearGlobalSafetyEndinit
	.type	IfxScuWdt_clearGlobalSafetyEndinit, @function
IfxScuWdt_clearGlobalSafetyEndinit:
.LFB245:
	.loc 1 283 0
.LVL42:
	.loc 1 288 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 692
	.loc 1 290 0
	ld.w	%d2, [%a15] 692
	jnz.t	%d2, 1, .L63
.LVL43:
.L59:
	.loc 1 302 0 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
.L60:
	ld.w	%d15, [%a15] 692
.LVL44:
	jnz.t	%d15, 1, .L60
	.loc 1 304 0
	ret
.L63:
	.loc 1 294 0
	andn	%d15, %d15, ~(-3)
	.loc 1 295 0
	insert	%d15, %d15, %d4, 2, 14
.LVL45:
	.loc 1 298 0
	st.w	[%a15] 692, %d15
	j	.L59
.LFE245:
	.size	IfxScuWdt_clearGlobalSafetyEndinit, .-IfxScuWdt_clearGlobalSafetyEndinit
.section .text.IfxScuWdt_clearSafetyEndinit,"ax",@progbits
	.align 1
	.global	IfxScuWdt_clearSafetyEndinit
	.type	IfxScuWdt_clearSafetyEndinit, @function
IfxScuWdt_clearSafetyEndinit:
.LFB246:
	.loc 1 308 0
.LVL46:
.LBB72:
.LBB73:
	.loc 3 585 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	.loc 3 590 0
	sh	%d4, 2
.LVL47:
	.loc 3 585 0
	jz.t	%d15, 1, .L66
	.loc 3 591 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 590 0
	or	%d15, %d4
	.loc 3 588 0
	st.w	[%a15]0, %d15
.L66:
	.loc 3 598 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 2
	.loc 3 597 0
	or	%d4, %d15
	.loc 3 595 0
	st.w	[%a15]0, %d4
.L67:
	.loc 3 601 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L67
.LBE73:
.LBE72:
	.loc 1 310 0
	ret
.LFE246:
	.size	IfxScuWdt_clearSafetyEndinit, .-IfxScuWdt_clearSafetyEndinit
.section .text.IfxScuWdt_disableCpuWatchdog,"ax",@progbits
	.align 1
	.global	IfxScuWdt_disableCpuWatchdog
	.type	IfxScuWdt_disableCpuWatchdog, @function
IfxScuWdt_disableCpuWatchdog:
.LFB247:
	.loc 1 314 0
.LVL48:
.LBB74:
.LBB75:
.LBB76:
	.loc 2 876 0
#APP
	# 876 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL49:
#NO_APP
.LBE76:
	.loc 2 877 0
	and	%d15, %d15, 7
.LVL50:
.LBE75:
.LBE74:
	.loc 1 317 0
	mul	%d15, %d15, 12
.LBB77:
.LBB78:
	.loc 3 557 0
	sh	%d4, 2
.LVL51:
.LBE78:
.LBE77:
	.loc 1 317 0
	mov.a	%a2, %d15
	lea	%a15, [%a2] 25164
	addih.a	%a15, %a15, 61443
.LVL52:
.LBB80:
.LBB79:
	.loc 3 552 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L72
	.loc 3 558 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 557 0
	or	%d15, %d4
	.loc 3 555 0
	st.w	[%a15]0, %d15
.L72:
	.loc 3 565 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 2
	.loc 3 564 0
	or	%d15, %d4
	.loc 3 562 0
	st.w	[%a15]0, %d15
.L73:
	.loc 3 568 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L73
.LBE79:
.LBE80:
	.loc 1 320 0
	ld.w	%d15, [%a15] 4
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15] 4, %d15
.LVL53:
.LBB81:
.LBB82:
	.loc 3 660 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L74
	.loc 3 666 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 665 0
	or	%d15, %d4
	.loc 3 663 0
	st.w	[%a15]0, %d15
.L74:
	.loc 3 673 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 672 0
	or	%d4, %d15
	.loc 3 670 0
	st.w	[%a15]0, %d4
.L75:
	.loc 3 676 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L75
.LBE82:
.LBE81:
	.loc 1 322 0
	ret
.LFE247:
	.size	IfxScuWdt_disableCpuWatchdog, .-IfxScuWdt_disableCpuWatchdog
.section .text.IfxScuWdt_disableSafetyWatchdog,"ax",@progbits
	.align 1
	.global	IfxScuWdt_disableSafetyWatchdog
	.type	IfxScuWdt_disableSafetyWatchdog, @function
IfxScuWdt_disableSafetyWatchdog:
.LFB248:
	.loc 1 326 0
.LVL54:
.LBB83:
.LBB84:
	.loc 3 585 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	.loc 3 590 0
	sh	%d4, 2
.LVL55:
	.loc 3 585 0
	jz.t	%d15, 1, .L85
	.loc 3 591 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 590 0
	or	%d15, %d4
	.loc 3 588 0
	st.w	[%a15]0, %d15
.L85:
	.loc 3 598 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 2
	.loc 3 597 0
	or	%d15, %d4
	.loc 3 595 0
	st.w	[%a15]0, %d15
.L86:
	.loc 3 601 0
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 25256
	jnz.t	%d15, 0, .L86
.LBE84:
.LBE83:
	.loc 1 328 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25260
	ld.w	%d15, [%a15]0
	insert	%d15, %d15, 1, 3, 1
	st.w	[%a15]0, %d15
.LVL56:
.LBB85:
.LBB86:
	.loc 3 693 0
	ld.w	%d15, [%a2]0
	jz.t	%d15, 1, .L87
	.loc 3 699 0
	ld.hu	%d15, [%a2] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 698 0
	or	%d15, %d4
	.loc 3 696 0
	st.w	[%a2]0, %d15
.L87:
	.loc 3 706 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 705 0
	or	%d4, %d15
	.loc 3 703 0
	st.w	[%a15]0, %d4
.L88:
	.loc 3 709 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L88
.LBE86:
.LBE85:
	.loc 1 330 0
	ret
.LFE248:
	.size	IfxScuWdt_disableSafetyWatchdog, .-IfxScuWdt_disableSafetyWatchdog
.section .text.IfxScuWdt_enableCpuWatchdog,"ax",@progbits
	.align 1
	.global	IfxScuWdt_enableCpuWatchdog
	.type	IfxScuWdt_enableCpuWatchdog, @function
IfxScuWdt_enableCpuWatchdog:
.LFB249:
	.loc 1 334 0
.LVL57:
.LBB87:
.LBB88:
.LBB89:
	.loc 2 876 0
#APP
	# 876 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL58:
#NO_APP
.LBE89:
	.loc 2 877 0
	and	%d15, %d15, 7
.LVL59:
.LBE88:
.LBE87:
	.loc 1 337 0
	mul	%d15, %d15, 12
.LBB90:
.LBB91:
	.loc 3 557 0
	sh	%d4, 2
.LVL60:
.LBE91:
.LBE90:
	.loc 1 337 0
	mov.a	%a2, %d15
	lea	%a15, [%a2] 25164
	addih.a	%a15, %a15, 61443
.LVL61:
.LBB93:
.LBB92:
	.loc 3 552 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L98
	.loc 3 558 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 557 0
	or	%d15, %d4
	.loc 3 555 0
	st.w	[%a15]0, %d15
.L98:
	.loc 3 565 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 2
	.loc 3 564 0
	or	%d15, %d4
	.loc 3 562 0
	st.w	[%a15]0, %d15
.L99:
	.loc 3 568 0
	ld.w	%d15, [%a15]0
	jnz.t	%d15, 0, .L99
.LBE92:
.LBE93:
	.loc 1 340 0
	ld.w	%d15, [%a15] 4
	andn	%d15, %d15, ~(-9)
	st.w	[%a15] 4, %d15
.LVL62:
.LBB94:
.LBB95:
	.loc 3 660 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L100
	.loc 3 666 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 665 0
	or	%d15, %d4
	.loc 3 663 0
	st.w	[%a15]0, %d15
.L100:
	.loc 3 673 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 672 0
	or	%d4, %d15
	.loc 3 670 0
	st.w	[%a15]0, %d4
.L101:
	.loc 3 676 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L101
.LBE95:
.LBE94:
	.loc 1 342 0
	ret
.LFE249:
	.size	IfxScuWdt_enableCpuWatchdog, .-IfxScuWdt_enableCpuWatchdog
.section .text.IfxScuWdt_enableSafetyWatchdog,"ax",@progbits
	.align 1
	.global	IfxScuWdt_enableSafetyWatchdog
	.type	IfxScuWdt_enableSafetyWatchdog, @function
IfxScuWdt_enableSafetyWatchdog:
.LFB250:
	.loc 1 346 0
.LVL63:
.LBB96:
.LBB97:
	.loc 3 585 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	.loc 3 590 0
	sh	%d4, 2
.LVL64:
	.loc 3 585 0
	jz.t	%d15, 1, .L111
	.loc 3 591 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 590 0
	or	%d15, %d4
	.loc 3 588 0
	st.w	[%a15]0, %d15
.L111:
	.loc 3 598 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 2
	.loc 3 597 0
	or	%d15, %d4
	.loc 3 595 0
	st.w	[%a15]0, %d15
.L112:
	.loc 3 601 0
	ld.w	%d15, [%a15]0
	movh.a	%a2, 61443
	lea	%a2, [%a2] 25256
	jnz.t	%d15, 0, .L112
.LBE97:
.LBE96:
	.loc 1 348 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25260
	ld.w	%d15, [%a15]0
	andn	%d15, %d15, ~(-9)
	st.w	[%a15]0, %d15
.LVL65:
.LBB98:
.LBB99:
	.loc 3 693 0
	ld.w	%d15, [%a2]0
	jz.t	%d15, 1, .L113
	.loc 3 699 0
	ld.hu	%d15, [%a2] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 698 0
	or	%d15, %d4
	.loc 3 696 0
	st.w	[%a2]0, %d15
.L113:
	.loc 3 706 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 705 0
	or	%d4, %d15
	.loc 3 703 0
	st.w	[%a15]0, %d4
.L114:
	.loc 3 709 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L114
.LBE99:
.LBE98:
	.loc 1 350 0
	ret
.LFE250:
	.size	IfxScuWdt_enableSafetyWatchdog, .-IfxScuWdt_enableSafetyWatchdog
.section .text.IfxScuWdt_getCpuWatchdogPassword,"ax",@progbits
	.align 1
	.global	IfxScuWdt_getCpuWatchdogPassword
	.type	IfxScuWdt_getCpuWatchdogPassword, @function
IfxScuWdt_getCpuWatchdogPassword:
.LFB251:
	.loc 1 354 0
.LBB100:
.LBB101:
.LBB102:
	.loc 2 876 0
#APP
	# 876 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL66:
#NO_APP
.LBE102:
	.loc 2 877 0
	and	%d15, %d15, 7
.LVL67:
.LBE101:
.LBE100:
	.loc 1 355 0
	mul	%d15, %d15, 12
	mov.a	%a2, %d15
	lea	%a15, [%a2] 25164
	addih.a	%a15, %a15, 61443
.LVL68:
.LBB103:
.LBB104:
	.loc 3 613 0
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 2, 14
.LVL69:
.LBE104:
.LBE103:
	.loc 1 356 0
	xor	%d2, %d2, 63
	ret
.LFE251:
	.size	IfxScuWdt_getCpuWatchdogPassword, .-IfxScuWdt_getCpuWatchdogPassword
.section .text.IfxScuWdt_getCpuWatchdogEndInit,"ax",@progbits
	.align 1
	.global	IfxScuWdt_getCpuWatchdogEndInit
	.type	IfxScuWdt_getCpuWatchdogEndInit, @function
IfxScuWdt_getCpuWatchdogEndInit:
.LFB252:
	.loc 1 360 0
.LBB105:
.LBB106:
.LBB107:
	.loc 2 876 0
#APP
	# 876 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL70:
#NO_APP
.LBE107:
	.loc 2 877 0
	and	%d15, %d15, 7
.LVL71:
.LBE106:
.LBE105:
	.loc 1 361 0
	mul	%d15, %d15, 12
	mov.a	%a2, %d15
	lea	%a15, [%a2] 25164
	addih.a	%a15, %a15, 61443
.LVL72:
.LBB108:
.LBB109:
	.loc 3 622 0
	ld.w	%d2, [%a15]0
.LBE109:
.LBE108:
	.loc 1 362 0
	and	%d2, %d2, 1
	ret
.LFE252:
	.size	IfxScuWdt_getCpuWatchdogEndInit, .-IfxScuWdt_getCpuWatchdogEndInit
.section .text.IfxScuWdt_getGlobalEndinitPassword,"ax",@progbits
	.align 1
	.global	IfxScuWdt_getGlobalEndinitPassword
	.type	IfxScuWdt_getGlobalEndinitPassword, @function
IfxScuWdt_getGlobalEndinitPassword:
.LFB253:
	.loc 1 366 0
.LVL73:
	.loc 1 373 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d2, [%a15] 668
	extr.u	%d2, %d2, 2, 14
.LVL74:
	.loc 1 377 0
	xor	%d2, %d2, 63
	ret
.LFE253:
	.size	IfxScuWdt_getGlobalEndinitPassword, .-IfxScuWdt_getGlobalEndinitPassword
.section .text.IfxScuWdt_getGlobalSafetyEndinitPassword,"ax",@progbits
	.align 1
	.global	IfxScuWdt_getGlobalSafetyEndinitPassword
	.type	IfxScuWdt_getGlobalSafetyEndinitPassword, @function
IfxScuWdt_getGlobalSafetyEndinitPassword:
.LFB254:
	.loc 1 381 0
.LVL75:
	.loc 1 388 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d2, [%a15] 692
	extr.u	%d2, %d2, 2, 14
.LVL76:
	.loc 1 392 0
	xor	%d2, %d2, 63
	ret
.LFE254:
	.size	IfxScuWdt_getGlobalSafetyEndinitPassword, .-IfxScuWdt_getGlobalSafetyEndinitPassword
.section .text.IfxScuWdt_getSafetyWatchdogPassword,"ax",@progbits
	.align 1
	.global	IfxScuWdt_getSafetyWatchdogPassword
	.type	IfxScuWdt_getSafetyWatchdogPassword, @function
IfxScuWdt_getSafetyWatchdogPassword:
.LFB255:
	.loc 1 396 0
.LVL77:
.LBB110:
.LBB111:
	.loc 3 651 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d2, [%a15]0
	extr.u	%d2, %d2, 2, 14
.LVL78:
.LBE111:
.LBE110:
	.loc 1 398 0
	xor	%d2, %d2, 63
	ret
.LFE255:
	.size	IfxScuWdt_getSafetyWatchdogPassword, .-IfxScuWdt_getSafetyWatchdogPassword
.section .text.IfxScuWdt_initConfig,"ax",@progbits
	.align 1
	.global	IfxScuWdt_initConfig
	.type	IfxScuWdt_initConfig, @function
IfxScuWdt_initConfig:
.LFB256:
	.loc 1 402 0
.LVL79:
	.loc 1 403 0
	mov	%d15, 60
	st.h	[%a4]0, %d15
	.loc 1 404 0
	mov	%d15, -4
	st.h	[%a4] 2, %d15
	.loc 1 405 0
	mov	%d15, 0
	st.b	[%a4] 4, %d15
	.loc 1 406 0
	st.b	[%a4] 5, %d15
	.loc 1 407 0
	st.b	[%a4] 6, %d15
	.loc 1 408 0
	st.b	[%a4] 7, %d15
	.loc 1 409 0
	st.b	[%a4] 8, %d15
	.loc 1 410 0
	st.b	[%a4] 9, %d15
	.loc 1 411 0
	st.b	[%a4] 10, %d15
	.loc 1 412 0
	st.b	[%a4] 11, %d15
	ret
.LFE256:
	.size	IfxScuWdt_initConfig, .-IfxScuWdt_initConfig
.section .text.IfxScuWdt_initCpuWatchdog,"ax",@progbits
	.align 1
	.global	IfxScuWdt_initCpuWatchdog
	.type	IfxScuWdt_initCpuWatchdog, @function
IfxScuWdt_initCpuWatchdog:
.LFB257:
	.loc 1 417 0
.LVL80:
	.loc 1 422 0
	ld.w	%d2, [%a4]0
.LVL81:
	.loc 1 423 0
	mov	%d15, 0
.LVL82:
	.loc 1 425 0
	jz.t	%d2, 1, .L129
	.loc 1 429 0
	insert	%d2, %d2, 1, 0, 2
	.loc 1 430 0
	extr.u	%d3, %d2, 2, 14
	xor	%d3, %d3, 63
	insert	%d2, %d2, %d3, 2, 14
	.loc 1 433 0
	st.w	[%a4]0, %d2
.L129:
	.loc 1 441 0
	ld.h	%d3, [%a5]0
	.loc 1 439 0
	andn	%d2, %d2, ~(-2)
.LVL83:
	.loc 1 440 0
	insert	%d2, %d2, 1, 1, 1
.LVL84:
	.loc 1 441 0
	insert	%d2, %d2, %d3, 2, 14
	.loc 1 442 0
	ld.hu	%d3, [%a5] 2
	insert	%d2, %d2, %d3, 16, 32-16
.LVL85:
	.loc 1 445 0
	st.w	[%a4]0, %d2
.L130:
	.loc 1 448 0 discriminator 1
	ld.w	%d2, [%a4]0
.LVL86:
	jnz.t	%d2, 0, .L130
	.loc 1 452 0
	ld.bu	%d2, [%a5] 4
	jeq	%d2, 1, .L132
	jz	%d2, .L133
	.loc 1 464 0
	ne	%d2, %d2, 2
.LVL87:
	sel	%d15, %d2, %d15, 32
.LVL88:
.L131:
	.loc 1 468 0
	ld.bu	%d2, [%a5] 5
	ne	%d2, %d2, 0
	ins.t	%d15, %d15,3, %d2,0
.LVL89:
	.loc 1 469 0
	ld.bu	%d2, [%a5] 6
	ne	%d2, %d2, 0
	ins.t	%d15, %d15,6, %d2,0
	.loc 1 470 0
	ld.bu	%d2, [%a5] 7
	ne	%d2, %d2, 0
	ins.t	%d15, %d15,7, %d2,0
	.loc 1 471 0
	ld.bu	%d2, [%a5] 8
	ne	%d2, %d2, 0
	ins.t	%d15, %d15,8, %d2,0
	.loc 1 472 0
	ld.bu	%d2, [%a5] 9
	ne	%d2, %d2, 0
	insert	%d15, %d15, %d2, 9, 7
	.loc 1 475 0
	st.w	[%a4] 4, %d15
.LVL90:
.LBB120:
	.loc 1 484 0
	ld.bu	%d2, [%a5] 11
	.loc 1 482 0
	mov	%d15, 0
.LVL91:
	.loc 1 484 0
	jeq	%d2, 1, .L136
	jz	%d2, .L135
	.loc 1 496 0
	ne	%d2, %d2, 2
.LVL92:
	sel	%d15, %d2, %d15, 32
.LVL93:
.L135:
	.loc 1 500 0
	ld.bu	%d2, [%a5] 5
	.loc 1 501 0
	movh.a	%a15, 61443
	.loc 1 500 0
	ne	%d2, %d2, 0
	ins.t	%d15, %d15,3, %d2,0
.LVL94:
	.loc 1 501 0
	lea	%a15, [%a15] 24576
	st.w	[%a15] 672, %d15
.LBE120:
	.loc 1 505 0
	ld.hu	%d15, [%a5]0
.LVL95:
.LBB121:
.LBB122:
.LBB123:
.LBB124:
.LBB125:
	.loc 2 876 0
#APP
	# 876 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu.h" 1
	mfcr %d2, LO:0xFE1C
	# 0 "" 2
.LVL96:
#NO_APP
.LBE125:
	.loc 2 877 0
	and	%d2, %d2, 7
.LVL97:
.LBE124:
.LBE123:
	.loc 1 617 0
	mul	%d2, %d2, 12
.LBB126:
.LBB127:
	.loc 3 665 0
	sh	%d15, 2
.LBE127:
.LBE126:
	.loc 1 617 0
	mov.a	%a2, %d2
	lea	%a15, [%a2] 25164
	addih.a	%a15, %a15, 61443
.LVL98:
.LBB129:
.LBB128:
	.loc 3 660 0
	ld.w	%d2, [%a15]0
	jz.t	%d2, 1, .L140
	.loc 3 666 0
	ld.hu	%d2, [%a15] 2
	sh	%d2, %d2, 16
	or	%d2, %d15
	.loc 3 665 0
	or	%d2, %d2, 1
	.loc 3 663 0
	st.w	[%a15]0, %d2
.LVL99:
.L140:
	.loc 3 673 0
	ld.hu	%d2, [%a15] 2
	sh	%d2, %d2, 16
	or	%d2, %d2, 3
	.loc 3 672 0
	or	%d15, %d2
	.loc 3 670 0
	st.w	[%a15]0, %d15
.L141:
	.loc 3 676 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L141
.LBE128:
.LBE129:
.LBE122:
.LBE121:
	.loc 1 506 0
	ret
.LVL100:
.L132:
	.loc 1 459 0
	insert	%d15, %d15, 1, 2, 1
.LVL101:
	.loc 1 460 0
	andn	%d15, %d15, ~(-33)
.LVL102:
	.loc 1 461 0
	j	.L131
.LVL103:
.L136:
.LBB130:
	.loc 1 492 0
	mov	%d15, 4
	.loc 1 493 0
	j	.L135
.LVL104:
.L133:
.LBE130:
	.loc 1 456 0
	mov	%d15, 0
	.loc 1 457 0
	j	.L131
.LFE257:
	.size	IfxScuWdt_initCpuWatchdog, .-IfxScuWdt_initCpuWatchdog
.section .text.IfxScuWdt_initSafetyWatchdog,"ax",@progbits
	.align 1
	.global	IfxScuWdt_initSafetyWatchdog
	.type	IfxScuWdt_initSafetyWatchdog, @function
IfxScuWdt_initSafetyWatchdog:
.LFB258:
	.loc 1 510 0
.LVL105:
	.loc 1 515 0
	ld.w	%d2, [%a4]0
.LVL106:
	.loc 1 516 0
	mov	%d15, 0
.LVL107:
	.loc 1 518 0
	jz.t	%d2, 1, .L150
	.loc 1 522 0
	insert	%d2, %d2, 1, 0, 2
	.loc 1 523 0
	extr.u	%d3, %d2, 2, 14
	xor	%d3, %d3, 63
	insert	%d2, %d2, %d3, 2, 14
	.loc 1 526 0
	st.w	[%a4]0, %d2
.L150:
	.loc 1 534 0
	ld.h	%d3, [%a5]0
	.loc 1 532 0
	andn	%d2, %d2, ~(-2)
.LVL108:
	.loc 1 533 0
	insert	%d2, %d2, 1, 1, 1
.LVL109:
	.loc 1 534 0
	insert	%d2, %d2, %d3, 2, 14
	.loc 1 535 0
	ld.hu	%d3, [%a5] 2
	insert	%d2, %d2, %d3, 16, 32-16
.LVL110:
	.loc 1 538 0
	st.w	[%a4]0, %d2
.L151:
	.loc 1 541 0 discriminator 1
	ld.w	%d2, [%a4]0
.LVL111:
	jnz.t	%d2, 0, .L151
	.loc 1 545 0
	ld.bu	%d2, [%a5] 4
	jeq	%d2, 1, .L153
	jz	%d2, .L154
	.loc 1 557 0
	ne	%d2, %d2, 2
.LVL112:
	sel	%d15, %d2, %d15, 32
.LVL113:
.L152:
	.loc 1 561 0
	ld.bu	%d2, [%a5] 5
	ne	%d2, %d2, 0
	ins.t	%d15, %d15,3, %d2,0
.LVL114:
	.loc 1 562 0
	ld.bu	%d2, [%a5] 6
	ne	%d2, %d2, 0
	ins.t	%d15, %d15,6, %d2,0
	.loc 1 563 0
	ld.bu	%d2, [%a5] 7
	ne	%d2, %d2, 0
	ins.t	%d15, %d15,7, %d2,0
	.loc 1 564 0
	ld.bu	%d2, [%a5] 8
	ne	%d2, %d2, 0
	ins.t	%d15, %d15,8, %d2,0
	.loc 1 565 0
	ld.bu	%d2, [%a5] 9
	ne	%d2, %d2, 0
	insert	%d15, %d15, %d2, 9, 7
	.loc 1 566 0
	ld.bu	%d2, [%a5] 10
	ne	%d2, %d2, 0
	ins.t	%d15, %d15,0, %d2,0
	.loc 1 569 0
	st.w	[%a4] 4, %d15
.LVL115:
.LBB136:
	.loc 1 578 0
	ld.bu	%d2, [%a5] 11
	.loc 1 576 0
	mov	%d15, 0
.LVL116:
	.loc 1 578 0
	jeq	%d2, 1, .L157
	jz	%d2, .L156
	.loc 1 590 0
	ne	%d2, %d2, 2
.LVL117:
	sel	%d15, %d2, %d15, 32
.LVL118:
.L156:
	.loc 1 594 0
	ld.bu	%d2, [%a5] 5
	.loc 1 595 0
	movh.a	%a15, 61443
	.loc 1 594 0
	ne	%d2, %d2, 0
	ins.t	%d15, %d15,3, %d2,0
.LVL119:
	.loc 1 595 0
	lea	%a15, [%a15] 24576
	st.w	[%a15] 696, %d15
.LBE136:
.LBB137:
.LBB138:
.LBB139:
	.loc 3 693 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
.LBE139:
.LBE138:
.LBE137:
	.loc 1 599 0
	ld.hu	%d15, [%a5]0
.LVL120:
.LBB142:
.LBB141:
.LBB140:
	.loc 3 693 0
	ld.w	%d2, [%a15]0
	.loc 3 698 0
	sh	%d15, 2
	.loc 3 693 0
	jz.t	%d2, 1, .L161
	.loc 3 699 0
	ld.hu	%d2, [%a15] 2
	sh	%d2, %d2, 16
	or	%d2, %d15
	.loc 3 698 0
	or	%d2, %d2, 1
	.loc 3 696 0
	st.w	[%a15]0, %d2
.LVL121:
.L161:
	.loc 3 706 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d2, [%a15] 2
	sh	%d2, %d2, 16
	or	%d2, %d2, 3
	.loc 3 705 0
	or	%d15, %d2
	.loc 3 703 0
	st.w	[%a15]0, %d15
.L162:
	.loc 3 709 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L162
.LBE140:
.LBE141:
.LBE142:
	.loc 1 600 0
	ret
.LVL122:
.L153:
	.loc 1 552 0
	insert	%d15, %d15, 1, 2, 1
.LVL123:
	.loc 1 553 0
	andn	%d15, %d15, ~(-33)
.LVL124:
	.loc 1 554 0
	j	.L152
.LVL125:
.L157:
.LBB143:
	.loc 1 586 0
	mov	%d15, 4
	.loc 1 587 0
	j	.L156
.LVL126:
.L154:
.LBE143:
	.loc 1 549 0
	mov	%d15, 0
	.loc 1 550 0
	j	.L152
.LFE258:
	.size	IfxScuWdt_initSafetyWatchdog, .-IfxScuWdt_initSafetyWatchdog
.section .text.IfxScuWdt_serviceCpuWatchdog,"ax",@progbits
	.align 1
	.global	IfxScuWdt_serviceCpuWatchdog
	.type	IfxScuWdt_serviceCpuWatchdog, @function
IfxScuWdt_serviceCpuWatchdog:
.LFB259:
	.loc 1 604 0
.LVL127:
.LBB151:
.LBB152:
.LBB153:
.LBB154:
.LBB155:
	.loc 2 876 0
#APP
	# 876 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL128:
#NO_APP
.LBE155:
	.loc 2 877 0
	and	%d15, %d15, 7
.LVL129:
.LBE154:
.LBE153:
	.loc 1 617 0
	mul	%d15, %d15, 12
.LBB156:
.LBB157:
	.loc 3 665 0
	sh	%d4, 2
.LVL130:
.LBE157:
.LBE156:
	.loc 1 617 0
	mov.a	%a2, %d15
	lea	%a15, [%a2] 25164
	addih.a	%a15, %a15, 61443
.LVL131:
.LBB159:
.LBB158:
	.loc 3 660 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L172
	.loc 3 666 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 665 0
	or	%d15, %d4
	.loc 3 663 0
	st.w	[%a15]0, %d15
.L172:
	.loc 3 673 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 672 0
	or	%d4, %d15
	.loc 3 670 0
	st.w	[%a15]0, %d4
.L173:
	.loc 3 676 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L173
.LBE158:
.LBE159:
.LBE152:
.LBE151:
	.loc 1 606 0
	ret
.LFE259:
	.size	IfxScuWdt_serviceCpuWatchdog, .-IfxScuWdt_serviceCpuWatchdog
.section .text.IfxScuWdt_serviceSafetyWatchdog,"ax",@progbits
	.align 1
	.global	IfxScuWdt_serviceSafetyWatchdog
	.type	IfxScuWdt_serviceSafetyWatchdog, @function
IfxScuWdt_serviceSafetyWatchdog:
.LFB260:
	.loc 1 610 0
.LVL132:
.LBB164:
.LBB165:
.LBB166:
	.loc 3 693 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	.loc 3 698 0
	sh	%d4, 2
.LVL133:
	.loc 3 693 0
	jz.t	%d15, 1, .L178
	.loc 3 699 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 698 0
	or	%d15, %d4
	.loc 3 696 0
	st.w	[%a15]0, %d15
.L178:
	.loc 3 706 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 705 0
	or	%d4, %d15
	.loc 3 703 0
	st.w	[%a15]0, %d4
.L179:
	.loc 3 709 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L179
.LBE166:
.LBE165:
.LBE164:
	.loc 1 612 0
	ret
.LFE260:
	.size	IfxScuWdt_serviceSafetyWatchdog, .-IfxScuWdt_serviceSafetyWatchdog
.section .text.IfxScuWdt_setCpuEndinit,"ax",@progbits
	.align 1
	.global	IfxScuWdt_setCpuEndinit
	.type	IfxScuWdt_setCpuEndinit, @function
IfxScuWdt_setCpuEndinit:
.LFB261:
	.loc 1 616 0
.LVL134:
.LBB167:
.LBB168:
.LBB169:
	.loc 2 876 0
#APP
	# 876 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL135:
#NO_APP
.LBE169:
	.loc 2 877 0
	and	%d15, %d15, 7
.LVL136:
.LBE168:
.LBE167:
	.loc 1 617 0
	mul	%d15, %d15, 12
.LBB170:
.LBB171:
	.loc 3 665 0
	sh	%d4, 2
.LVL137:
.LBE171:
.LBE170:
	.loc 1 617 0
	mov.a	%a2, %d15
	lea	%a15, [%a2] 25164
	addih.a	%a15, %a15, 61443
.LVL138:
.LBB173:
.LBB172:
	.loc 3 660 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 1, .L184
	.loc 3 666 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 665 0
	or	%d15, %d4
	.loc 3 663 0
	st.w	[%a15]0, %d15
.L184:
	.loc 3 673 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 672 0
	or	%d4, %d15
	.loc 3 670 0
	st.w	[%a15]0, %d4
.L185:
	.loc 3 676 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L185
.LBE172:
.LBE173:
	.loc 1 618 0
	ret
.LFE261:
	.size	IfxScuWdt_setCpuEndinit, .-IfxScuWdt_setCpuEndinit
.section .text.IfxScuWdt_setGlobalEndinit,"ax",@progbits
	.align 1
	.global	IfxScuWdt_setGlobalEndinit
	.type	IfxScuWdt_setGlobalEndinit, @function
IfxScuWdt_setGlobalEndinit:
.LFB262:
	.loc 1 622 0
.LVL139:
	.loc 1 626 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 668
.LVL140:
	.loc 1 629 0
	ld.w	%d2, [%a15] 668
	jnz.t	%d2, 1, .L189
	.loc 1 632 0
	insert	%d15, %d15, 1, 1, 1
	.loc 1 633 0
	insert	%d15, %d15, %d4, 2, 14
	.loc 1 636 0
	st.w	[%a15] 668, %d15
.L189:
	.loc 1 640 0 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
.L190:
	ld.w	%d15, [%a15] 668
.LVL141:
	jz.t	%d15, 1, .L190
	.loc 1 642 0
	ret
.LFE262:
	.size	IfxScuWdt_setGlobalEndinit, .-IfxScuWdt_setGlobalEndinit
.section .text.IfxScuWdt_setGlobalSafetyEndinit,"ax",@progbits
	.align 1
	.global	IfxScuWdt_setGlobalSafetyEndinit
	.type	IfxScuWdt_setGlobalSafetyEndinit, @function
IfxScuWdt_setGlobalSafetyEndinit:
.LFB263:
	.loc 1 646 0
.LVL142:
	.loc 1 651 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
	ld.w	%d15, [%a15] 692
.LVL143:
	.loc 1 653 0
	ld.w	%d2, [%a15] 692
	jnz.t	%d2, 1, .L194
	.loc 1 657 0
	insert	%d15, %d15, 1, 1, 1
	.loc 1 658 0
	insert	%d15, %d15, %d4, 2, 14
	.loc 1 661 0
	st.w	[%a15] 692, %d15
.L194:
	.loc 1 665 0 discriminator 1
	movh.a	%a15, 61443
	lea	%a15, [%a15] 24576
.L195:
	ld.w	%d15, [%a15] 692
.LVL144:
	jz.t	%d15, 1, .L195
	.loc 1 667 0
	ret
.LFE263:
	.size	IfxScuWdt_setGlobalSafetyEndinit, .-IfxScuWdt_setGlobalSafetyEndinit
.section .text.IfxScuWdt_setSafetyEndinit,"ax",@progbits
	.align 1
	.global	IfxScuWdt_setSafetyEndinit
	.type	IfxScuWdt_setSafetyEndinit, @function
IfxScuWdt_setSafetyEndinit:
.LFB264:
	.loc 1 671 0
.LVL145:
.LBB174:
.LBB175:
	.loc 3 693 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.w	%d15, [%a15]0
	.loc 3 698 0
	sh	%d4, 2
.LVL146:
	.loc 3 693 0
	jz.t	%d15, 1, .L200
	.loc 3 699 0
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 1
	.loc 3 698 0
	or	%d15, %d4
	.loc 3 696 0
	st.w	[%a15]0, %d15
.L200:
	.loc 3 706 0
	movh.a	%a15, 61443
	lea	%a15, [%a15] 25256
	ld.hu	%d15, [%a15] 2
	sh	%d15, %d15, 16
	or	%d15, %d15, 3
	.loc 3 705 0
	or	%d4, %d15
	.loc 3 703 0
	st.w	[%a15]0, %d4
.L201:
	.loc 3 709 0
	ld.w	%d15, [%a15]0
	jz.t	%d15, 0, .L201
.LBE175:
.LBE174:
	.loc 1 673 0
	ret
.LFE264:
	.size	IfxScuWdt_setSafetyEndinit, .-IfxScuWdt_setSafetyEndinit
.section .text.IfxScuWdt_enableWatchdogWithDebugger,"ax",@progbits
	.align 1
	.global	IfxScuWdt_enableWatchdogWithDebugger
	.type	IfxScuWdt_enableWatchdogWithDebugger, @function
IfxScuWdt_enableWatchdogWithDebugger:
.LFB265:
	.loc 1 677 0
.LVL147:
	.loc 1 686 0
	ld.w	%d15, 0xf0000480
.LVL148:
	.loc 1 689 0
	jz.t	%d15, 0, .L205
.LVL149:
.L207:
	.loc 1 706 0
	mov	%d15, 12288
.LVL150:
	st.w	0xf000047c, %d15
	.loc 1 716 0
	ld.w	%d15, 0xf0000480
	.loc 1 678 0
	mov	%d2, 0
.LVL151:
	.loc 1 719 0
	extr.u	%d15, %d15, 7, 1
.LVL152:
	.loc 1 727 0
	cmovn	%d2, %d15, 1
.LVL153:
	ret
.LVL154:
.L205:
	.loc 1 693 0
	mov	%d2, 161
	st.w	0xf0000478, %d2
	.loc 1 694 0
	mov	%d15, 94
.LVL155:
	st.w	0xf0000478, %d15
	.loc 1 695 0
	st.w	0xf0000478, %d2
	.loc 1 696 0
	st.w	0xf0000478, %d15
	.loc 1 699 0
	ld.w	%d15, 0xf0000480
.LVL156:
	.loc 1 703 0
	jnz.t	%d15, 0, .L207
	.loc 1 716 0
	ld.w	%d15, 0xf0000480
.LVL157:
	.loc 1 710 0
	mov	%d2, 1
.LVL158:
	.loc 1 719 0
	extr.u	%d15, %d15, 7, 1
.LVL159:
	.loc 1 727 0
	cmovn	%d2, %d15, 1
.LVL160:
	ret
.LFE265:
	.size	IfxScuWdt_enableWatchdogWithDebugger, .-IfxScuWdt_enableWatchdogWithDebugger
.section .text.IfxScuWdt_getCpuWatchdogStatus,"ax",@progbits
	.align 1
	.global	IfxScuWdt_getCpuWatchdogStatus
	.type	IfxScuWdt_getCpuWatchdogStatus, @function
IfxScuWdt_getCpuWatchdogStatus:
.LFB266:
	.loc 1 731 0
.LVL161:
.LBB176:
.LBB177:
.LBB178:
	.loc 2 876 0
#APP
	# 876 ".\output\inc/..\..\Integration\Infineon\iLLD\TC38A\Tricore\Cpu\Std\IfxCpu.h" 1
	mfcr %d15, LO:0xFE1C
	# 0 "" 2
.LVL162:
#NO_APP
.LBE178:
.LBE177:
.LBE176:
	.loc 1 733 0
	movh	%d2, 61443
.LBB180:
.LBB179:
	.loc 2 877 0
	and	%d15, %d15, 7
.LVL163:
.LBE179:
.LBE180:
	.loc 1 733 0
	addi	%d2, %d2, 24576
	madd	%d3, %d2, %d15, 12
	mov.a	%a15, %d3
	ld.w	%d2, [%a15] 596
	.loc 1 734 0
	extr.u	%d2, %d2, 3, 1
	ret
.LFE266:
	.size	IfxScuWdt_getCpuWatchdogStatus, .-IfxScuWdt_getCpuWatchdogStatus
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
	.uaword	.LFB237
	.uaword	.LFE237-.LFB237
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB241
	.uaword	.LFE241-.LFB241
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB244
	.uaword	.LFE244-.LFB244
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB245
	.uaword	.LFE245-.LFB245
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB246
	.uaword	.LFE246-.LFB246
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB247
	.uaword	.LFE247-.LFB247
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB248
	.uaword	.LFE248-.LFB248
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB249
	.uaword	.LFE249-.LFB249
	.align 2
.LEFDE24:
.LSFDE26:
	.uaword	.LEFDE26-.LASFDE26
.LASFDE26:
	.uaword	.Lframe0
	.uaword	.LFB250
	.uaword	.LFE250-.LFB250
	.align 2
.LEFDE26:
.LSFDE28:
	.uaword	.LEFDE28-.LASFDE28
.LASFDE28:
	.uaword	.Lframe0
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.align 2
.LEFDE28:
.LSFDE30:
	.uaword	.LEFDE30-.LASFDE30
.LASFDE30:
	.uaword	.Lframe0
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.align 2
.LEFDE30:
.LSFDE32:
	.uaword	.LEFDE32-.LASFDE32
.LASFDE32:
	.uaword	.Lframe0
	.uaword	.LFB253
	.uaword	.LFE253-.LFB253
	.align 2
.LEFDE32:
.LSFDE34:
	.uaword	.LEFDE34-.LASFDE34
.LASFDE34:
	.uaword	.Lframe0
	.uaword	.LFB254
	.uaword	.LFE254-.LFB254
	.align 2
.LEFDE34:
.LSFDE36:
	.uaword	.LEFDE36-.LASFDE36
.LASFDE36:
	.uaword	.Lframe0
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.align 2
.LEFDE36:
.LSFDE38:
	.uaword	.LEFDE38-.LASFDE38
.LASFDE38:
	.uaword	.Lframe0
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.align 2
.LEFDE38:
.LSFDE40:
	.uaword	.LEFDE40-.LASFDE40
.LASFDE40:
	.uaword	.Lframe0
	.uaword	.LFB257
	.uaword	.LFE257-.LFB257
	.align 2
.LEFDE40:
.LSFDE42:
	.uaword	.LEFDE42-.LASFDE42
.LASFDE42:
	.uaword	.Lframe0
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.align 2
.LEFDE42:
.LSFDE44:
	.uaword	.LEFDE44-.LASFDE44
.LASFDE44:
	.uaword	.Lframe0
	.uaword	.LFB259
	.uaword	.LFE259-.LFB259
	.align 2
.LEFDE44:
.LSFDE46:
	.uaword	.LEFDE46-.LASFDE46
.LASFDE46:
	.uaword	.Lframe0
	.uaword	.LFB260
	.uaword	.LFE260-.LFB260
	.align 2
.LEFDE46:
.LSFDE48:
	.uaword	.LEFDE48-.LASFDE48
.LASFDE48:
	.uaword	.Lframe0
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.align 2
.LEFDE48:
.LSFDE50:
	.uaword	.LEFDE50-.LASFDE50
.LASFDE50:
	.uaword	.Lframe0
	.uaword	.LFB262
	.uaword	.LFE262-.LFB262
	.align 2
.LEFDE50:
.LSFDE52:
	.uaword	.LEFDE52-.LASFDE52
.LASFDE52:
	.uaword	.Lframe0
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.align 2
.LEFDE52:
.LSFDE54:
	.uaword	.LEFDE54-.LASFDE54
.LASFDE54:
	.uaword	.Lframe0
	.uaword	.LFB264
	.uaword	.LFE264-.LFB264
	.align 2
.LEFDE54:
.LSFDE56:
	.uaword	.LEFDE56-.LASFDE56
.LASFDE56:
	.uaword	.Lframe0
	.uaword	.LFB265
	.uaword	.LFE265-.LFB265
	.align 2
.LEFDE56:
.LSFDE58:
	.uaword	.LEFDE58-.LASFDE58
.LASFDE58:
	.uaword	.Lframe0
	.uaword	.LFB266
	.uaword	.LFE266-.LFB266
	.align 2
.LEFDE58:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxScu_cfg.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 6 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Cpu\\Std\\Ifx_Types.h"
	.file 7 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 8 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxScu_regdef.h"
	.file 9 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxCpu_regdef.h"
	.file 10 ".\\output\\inc/..\\..\\Integration\\Infineon\\iLLD\\TC38A\\Tricore\\_Impl\\IfxCpu_cfg.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x8cf8
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\Infineon\\iLLD\\TC38A\\Tricore\\Scu\\Std\\IfxScuWdt.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xf0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x4
	.uahalf	0x52b
	.uaword	0x22c
	.uleb128 0x3
	.string	"IfxScu_WDTCON1_IR_divBy16384"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxScu_WDTCON1_IR_divBy256"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxScu_WDTCON1_IR_divBy64"
	.sleb128 2
	.byte	0
	.uleb128 0x4
	.string	"IfxScu_WDTCON1_IR"
	.byte	0x4
	.uahalf	0x52f
	.uaword	0x1ca
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x5
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.string	"char"
	.uleb128 0x5
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x6
	.string	"uint8"
	.byte	0x5
	.byte	0x51
	.uaword	0x2cd
	.uleb128 0x5
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x5
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x6
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x2f9
	.uleb128 0x5
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x6
	.string	"sint32"
	.byte	0x5
	.byte	0x60
	.uaword	0x292
	.uleb128 0x6
	.string	"uint32"
	.byte	0x5
	.byte	0x6a
	.uaword	0x299
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x5
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x6
	.string	"boolean"
	.byte	0x5
	.byte	0x80
	.uaword	0x2cd
	.uleb128 0x7
	.byte	0x4
	.uaword	0x353
	.uleb128 0x8
	.uleb128 0x9
	.byte	0x8
	.byte	0x6
	.byte	0x8c
	.uaword	0x37e
	.uleb128 0xa
	.string	"module"
	.byte	0x6
	.byte	0x8e
	.uaword	0x34d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xa
	.string	"index"
	.byte	0x6
	.byte	0x8f
	.uaword	0x30f
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x6
	.string	"IfxModule_IndexMap"
	.byte	0x6
	.byte	0x90
	.uaword	0x354
	.uleb128 0x6
	.string	"Ifx_UReg_8Bit"
	.byte	0x7
	.byte	0x60
	.uaword	0x2cd
	.uleb128 0x6
	.string	"Ifx_UReg_32Bit"
	.byte	0x7
	.byte	0x62
	.uaword	0x299
	.uleb128 0x6
	.string	"Ifx_SReg_32Bit"
	.byte	0x7
	.byte	0x65
	.uaword	0x292
	.uleb128 0xb
	.string	"_Ifx_SCU_ACCEN00_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x44
	.uaword	0x62e
	.uleb128 0xc
	.string	"EN0"
	.byte	0x8
	.byte	0x46
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN1"
	.byte	0x8
	.byte	0x47
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN2"
	.byte	0x8
	.byte	0x48
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN3"
	.byte	0x8
	.byte	0x49
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN4"
	.byte	0x8
	.byte	0x4a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN5"
	.byte	0x8
	.byte	0x4b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN6"
	.byte	0x8
	.byte	0x4c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN7"
	.byte	0x8
	.byte	0x4d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN8"
	.byte	0x8
	.byte	0x4e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN9"
	.byte	0x8
	.byte	0x4f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN10"
	.byte	0x8
	.byte	0x50
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN11"
	.byte	0x8
	.byte	0x51
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN12"
	.byte	0x8
	.byte	0x52
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN13"
	.byte	0x8
	.byte	0x53
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN14"
	.byte	0x8
	.byte	0x54
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN15"
	.byte	0x8
	.byte	0x55
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN16"
	.byte	0x8
	.byte	0x56
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN17"
	.byte	0x8
	.byte	0x57
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN18"
	.byte	0x8
	.byte	0x58
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN19"
	.byte	0x8
	.byte	0x59
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN20"
	.byte	0x8
	.byte	0x5a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN21"
	.byte	0x8
	.byte	0x5b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN22"
	.byte	0x8
	.byte	0x5c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN23"
	.byte	0x8
	.byte	0x5d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN24"
	.byte	0x8
	.byte	0x5e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN25"
	.byte	0x8
	.byte	0x5f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN26"
	.byte	0x8
	.byte	0x60
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN27"
	.byte	0x8
	.byte	0x61
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN28"
	.byte	0x8
	.byte	0x62
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN29"
	.byte	0x8
	.byte	0x63
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN30"
	.byte	0x8
	.byte	0x64
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN31"
	.byte	0x8
	.byte	0x65
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_ACCEN00_Bits"
	.byte	0x8
	.byte	0x66
	.uaword	0x3d9
	.uleb128 0xb
	.string	"_Ifx_SCU_ACCEN01_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x69
	.uaword	0x67a
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x8
	.byte	0x6b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_ACCEN01_Bits"
	.byte	0x8
	.byte	0x6c
	.uaword	0x64a
	.uleb128 0xb
	.string	"_Ifx_SCU_ACCEN10_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x6f
	.uaword	0x8eb
	.uleb128 0xc
	.string	"EN0"
	.byte	0x8
	.byte	0x71
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN1"
	.byte	0x8
	.byte	0x72
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN2"
	.byte	0x8
	.byte	0x73
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN3"
	.byte	0x8
	.byte	0x74
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN4"
	.byte	0x8
	.byte	0x75
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN5"
	.byte	0x8
	.byte	0x76
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN6"
	.byte	0x8
	.byte	0x77
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN7"
	.byte	0x8
	.byte	0x78
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN8"
	.byte	0x8
	.byte	0x79
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN9"
	.byte	0x8
	.byte	0x7a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN10"
	.byte	0x8
	.byte	0x7b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN11"
	.byte	0x8
	.byte	0x7c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN12"
	.byte	0x8
	.byte	0x7d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN13"
	.byte	0x8
	.byte	0x7e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN14"
	.byte	0x8
	.byte	0x7f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN15"
	.byte	0x8
	.byte	0x80
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN16"
	.byte	0x8
	.byte	0x81
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN17"
	.byte	0x8
	.byte	0x82
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN18"
	.byte	0x8
	.byte	0x83
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN19"
	.byte	0x8
	.byte	0x84
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN20"
	.byte	0x8
	.byte	0x85
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN21"
	.byte	0x8
	.byte	0x86
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN22"
	.byte	0x8
	.byte	0x87
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN23"
	.byte	0x8
	.byte	0x88
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN24"
	.byte	0x8
	.byte	0x89
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN25"
	.byte	0x8
	.byte	0x8a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN26"
	.byte	0x8
	.byte	0x8b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN27"
	.byte	0x8
	.byte	0x8c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN28"
	.byte	0x8
	.byte	0x8d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN29"
	.byte	0x8
	.byte	0x8e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN30"
	.byte	0x8
	.byte	0x8f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"EN31"
	.byte	0x8
	.byte	0x90
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_ACCEN10_Bits"
	.byte	0x8
	.byte	0x91
	.uaword	0x696
	.uleb128 0xb
	.string	"_Ifx_SCU_ACCEN11_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x94
	.uaword	0x937
	.uleb128 0xd
	.uaword	.LASF0
	.byte	0x8
	.byte	0x96
	.uaword	0x3ad
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_ACCEN11_Bits"
	.byte	0x8
	.byte	0x97
	.uaword	0x907
	.uleb128 0xb
	.string	"_Ifx_SCU_ARSTDIS_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0x9a
	.uaword	0xa0a
	.uleb128 0xc
	.string	"STM0DIS"
	.byte	0x8
	.byte	0x9c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"STM1DIS"
	.byte	0x8
	.byte	0x9d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"STM2DIS"
	.byte	0x8
	.byte	0x9e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"STM3DIS"
	.byte	0x8
	.byte	0x9f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x8
	.byte	0xa0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x8
	.byte	0xa1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x8
	.byte	0xa2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x8
	.byte	0xa3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_ARSTDIS_Bits"
	.byte	0x8
	.byte	0xa4
	.uaword	0x953
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON0_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xa7
	.uaword	0xb2b
	.uleb128 0xc
	.string	"STMDIV"
	.byte	0x8
	.byte	0xa9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"GTMDIV"
	.byte	0x8
	.byte	0xaa
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SRIDIV"
	.byte	0x8
	.byte	0xab
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"LPDIV"
	.byte	0x8
	.byte	0xac
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF5
	.byte	0x8
	.byte	0xad
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SPBDIV"
	.byte	0x8
	.byte	0xae
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"BBBDIV"
	.byte	0x8
	.byte	0xaf
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"FSIDIV"
	.byte	0x8
	.byte	0xb0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"FSI2DIV"
	.byte	0x8
	.byte	0xb1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"CLKSEL"
	.byte	0x8
	.byte	0xb2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"UP"
	.byte	0x8
	.byte	0xb3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"LCK"
	.byte	0x8
	.byte	0xb4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_CCUCON0_Bits"
	.byte	0x8
	.byte	0xb5
	.uaword	0xa26
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON1_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xb8
	.uaword	0xc6c
	.uleb128 0xc
	.string	"MCANDIV"
	.byte	0x8
	.byte	0xba
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"CLKSELMCAN"
	.byte	0x8
	.byte	0xbb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF3
	.byte	0x8
	.byte	0xbc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"PLL1DIVDIS"
	.byte	0x8
	.byte	0xbd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"I2CDIV"
	.byte	0x8
	.byte	0xbe
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x8
	.byte	0xbf
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"MSCDIV"
	.byte	0x8
	.byte	0xc0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"CLKSELMSC"
	.byte	0x8
	.byte	0xc1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF7
	.byte	0x8
	.byte	0xc2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"QSPIDIV"
	.byte	0x8
	.byte	0xc3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"CLKSELQSPI"
	.byte	0x8
	.byte	0xc4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF8
	.byte	0x8
	.byte	0xc5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"LCK"
	.byte	0x8
	.byte	0xc6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_CCUCON1_Bits"
	.byte	0x8
	.byte	0xc7
	.uaword	0xb47
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON2_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xca
	.uaword	0xd6f
	.uleb128 0xc
	.string	"ASCLINFDIV"
	.byte	0x8
	.byte	0xcc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0x8
	.byte	0xcd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"ASCLINSDIV"
	.byte	0x8
	.byte	0xce
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"CLKSELASCLINS"
	.byte	0x8
	.byte	0xcf
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF9
	.byte	0x8
	.byte	0xd0
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x8
	.byte	0xd1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"ERAYPERON"
	.byte	0x8
	.byte	0xd2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0x8
	.byte	0xd3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF12
	.byte	0x8
	.byte	0xd4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"LCK"
	.byte	0x8
	.byte	0xd5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_CCUCON2_Bits"
	.byte	0x8
	.byte	0xd6
	.uaword	0xc88
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON3_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xd9
	.uaword	0xee7
	.uleb128 0xc
	.string	"PLL0MONEN"
	.byte	0x8
	.byte	0xdb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"PLL1MONEN"
	.byte	0x8
	.byte	0xdc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"PLL2MONEN"
	.byte	0x8
	.byte	0xdd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SPBMONEN"
	.byte	0x8
	.byte	0xde
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"BACKMONEN"
	.byte	0x8
	.byte	0xdf
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF2
	.byte	0x8
	.byte	0xe0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"PLL0MONTST"
	.byte	0x8
	.byte	0xe1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"PLL1MONTST"
	.byte	0x8
	.byte	0xe2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"PLL2MONTST"
	.byte	0x8
	.byte	0xe3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"SPBMONTST"
	.byte	0x8
	.byte	0xe4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"BACKMONTST"
	.byte	0x8
	.byte	0xe5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF13
	.byte	0x8
	.byte	0xe6
	.uaword	0x3ad
	.byte	0x4
	.byte	0xb
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF10
	.byte	0x8
	.byte	0xe7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"UP"
	.byte	0x8
	.byte	0xe8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"LCK"
	.byte	0x8
	.byte	0xe9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_CCUCON3_Bits"
	.byte	0x8
	.byte	0xea
	.uaword	0xd8b
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON4_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xed
	.uaword	0xfa1
	.uleb128 0xc
	.string	"LOTHR"
	.byte	0x8
	.byte	0xef
	.uaword	0x3ad
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"UPTHR"
	.byte	0x8
	.byte	0xf0
	.uaword	0x3ad
	.byte	0x4
	.byte	0xc
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"MONEN"
	.byte	0x8
	.byte	0xf1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"MONTST"
	.byte	0x8
	.byte	0xf2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF11
	.byte	0x8
	.byte	0xf3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"UP"
	.byte	0x8
	.byte	0xf4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"LCK"
	.byte	0x8
	.byte	0xf5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_SCU_CCUCON4_Bits"
	.byte	0x8
	.byte	0xf6
	.uaword	0xf03
	.uleb128 0xb
	.string	"_Ifx_SCU_CCUCON5_Bits"
	.byte	0x4
	.byte	0x8
	.byte	0xf9
	.uaword	0x104b
	.uleb128 0xc
	.string	"GETHDIV"
	.byte	0x8
	.byte	0xfb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"MCANHDIV"
	.byte	0x8
	.byte	0xfc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF4
	.byte	0x8
	.byte	0xfd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF6
	.byte	0x8
	.byte	0xfe
	.uaword	0x3ad
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xc
	.string	"UP"
	.byte	0x8
	.byte	0xff
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x8
	.uahalf	0x100
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON5_Bits"
	.byte	0x8
	.uahalf	0x101
	.uaword	0xfbd
	.uleb128 0xf
	.string	"_Ifx_SCU_CCUCON6_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x104
	.uaword	0x10b0
	.uleb128 0xe
	.string	"CPU0DIV"
	.byte	0x8
	.uahalf	0x106
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x107
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON6_Bits"
	.byte	0x8
	.uahalf	0x108
	.uaword	0x1068
	.uleb128 0xf
	.string	"_Ifx_SCU_CCUCON7_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x1115
	.uleb128 0xe
	.string	"CPU1DIV"
	.byte	0x8
	.uahalf	0x10d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x10e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON7_Bits"
	.byte	0x8
	.uahalf	0x10f
	.uaword	0x10cd
	.uleb128 0xf
	.string	"_Ifx_SCU_CCUCON8_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x112
	.uaword	0x117a
	.uleb128 0xe
	.string	"CPU2DIV"
	.byte	0x8
	.uahalf	0x114
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x115
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON8_Bits"
	.byte	0x8
	.uahalf	0x116
	.uaword	0x1132
	.uleb128 0xf
	.string	"_Ifx_SCU_CCUCON9_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x119
	.uaword	0x11df
	.uleb128 0xe
	.string	"CPU3DIV"
	.byte	0x8
	.uahalf	0x11b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x11c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON9_Bits"
	.byte	0x8
	.uahalf	0x11d
	.uaword	0x1197
	.uleb128 0xf
	.string	"_Ifx_SCU_CHIPID_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x120
	.uaword	0x12c8
	.uleb128 0xe
	.string	"CHREV"
	.byte	0x8
	.uahalf	0x122
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CHTEC"
	.byte	0x8
	.uahalf	0x123
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CHPK"
	.byte	0x8
	.uahalf	0x124
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CHID"
	.byte	0x8
	.uahalf	0x125
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EEA"
	.byte	0x8
	.uahalf	0x126
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"UCODE"
	.byte	0x8
	.uahalf	0x127
	.uaword	0x3ad
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FSIZE"
	.byte	0x8
	.uahalf	0x128
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"VART"
	.byte	0x8
	.uahalf	0x129
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SEC"
	.byte	0x8
	.uahalf	0x12a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CHIPID_Bits"
	.byte	0x8
	.uahalf	0x12b
	.uaword	0x11fc
	.uleb128 0xf
	.string	"_Ifx_SCU_DTSCLIM_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x12e
	.uaword	0x13bf
	.uleb128 0xe
	.string	"LOWER"
	.byte	0x8
	.uahalf	0x130
	.uaword	0x3ad
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x131
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"BGPOK"
	.byte	0x8
	.uahalf	0x132
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EN"
	.byte	0x8
	.uahalf	0x133
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LLU"
	.byte	0x8
	.uahalf	0x134
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"UPPER"
	.byte	0x8
	.uahalf	0x135
	.uaword	0x3ad
	.byte	0x4
	.byte	0xc
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"INTEN"
	.byte	0x8
	.uahalf	0x136
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x137
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"INT"
	.byte	0x8
	.uahalf	0x138
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"UOF"
	.byte	0x8
	.uahalf	0x139
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_DTSCLIM_Bits"
	.byte	0x8
	.uahalf	0x13a
	.uaword	0x12e4
	.uleb128 0xf
	.string	"_Ifx_SCU_DTSCSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x13d
	.uaword	0x1424
	.uleb128 0xe
	.string	"RESULT"
	.byte	0x8
	.uahalf	0x13f
	.uaword	0x3ad
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x140
	.uaword	0x3ad
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_DTSCSTAT_Bits"
	.byte	0x8
	.uahalf	0x141
	.uaword	0x13dc
	.uleb128 0xf
	.string	"_Ifx_SCU_EICON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x144
	.uaword	0x14a9
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x146
	.uaword	0x14a9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x147
	.uaword	0x14a9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EPW"
	.byte	0x8
	.uahalf	0x148
	.uaword	0x14a9
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"REL"
	.byte	0x8
	.uahalf	0x149
	.uaword	0x14a9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x11
	.uaword	0x299
	.uleb128 0x4
	.string	"Ifx_SCU_EICON0_Bits"
	.byte	0x8
	.uahalf	0x14a
	.uaword	0x1442
	.uleb128 0xf
	.string	"_Ifx_SCU_EICON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x14d
	.uaword	0x1566
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x14f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x150
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IR0"
	.byte	0x8
	.uahalf	0x151
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DR"
	.byte	0x8
	.uahalf	0x152
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x153
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IR1"
	.byte	0x8
	.uahalf	0x154
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x155
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EICON1_Bits"
	.byte	0x8
	.uahalf	0x156
	.uaword	0x14ca
	.uleb128 0xf
	.string	"_Ifx_SCU_EICR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x159
	.uaword	0x16e3
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EXIS0"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF17
	.byte	0x8
	.uahalf	0x15d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FEN0"
	.byte	0x8
	.uahalf	0x15e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"REN0"
	.byte	0x8
	.uahalf	0x15f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LDEN0"
	.byte	0x8
	.uahalf	0x160
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EIEN0"
	.byte	0x8
	.uahalf	0x161
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"INP0"
	.byte	0x8
	.uahalf	0x162
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x163
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EXIS1"
	.byte	0x8
	.uahalf	0x164
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF18
	.byte	0x8
	.uahalf	0x165
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FEN1"
	.byte	0x8
	.uahalf	0x166
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"REN1"
	.byte	0x8
	.uahalf	0x167
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LDEN1"
	.byte	0x8
	.uahalf	0x168
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EIEN1"
	.byte	0x8
	.uahalf	0x169
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"INP1"
	.byte	0x8
	.uahalf	0x16a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF19
	.byte	0x8
	.uahalf	0x16b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EICR_Bits"
	.byte	0x8
	.uahalf	0x16c
	.uaword	0x1582
	.uleb128 0xf
	.string	"_Ifx_SCU_EIFILT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x16f
	.uaword	0x18ce
	.uleb128 0xe
	.string	"FILRQ0A"
	.byte	0x8
	.uahalf	0x171
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ5A"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ2A"
	.byte	0x8
	.uahalf	0x173
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ3A"
	.byte	0x8
	.uahalf	0x174
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ0C"
	.byte	0x8
	.uahalf	0x175
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ1C"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ3C"
	.byte	0x8
	.uahalf	0x177
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ2C"
	.byte	0x8
	.uahalf	0x178
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ4A"
	.byte	0x8
	.uahalf	0x179
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ6A"
	.byte	0x8
	.uahalf	0x17a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ1A"
	.byte	0x8
	.uahalf	0x17b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ7A"
	.byte	0x8
	.uahalf	0x17c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ6D"
	.byte	0x8
	.uahalf	0x17d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ4D"
	.byte	0x8
	.uahalf	0x17e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ2B"
	.byte	0x8
	.uahalf	0x17f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ3B"
	.byte	0x8
	.uahalf	0x180
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILRQ7C"
	.byte	0x8
	.uahalf	0x181
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x182
	.uaword	0x3ad
	.byte	0x4
	.byte	0x7
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FILTDIV"
	.byte	0x8
	.uahalf	0x183
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DEPTH"
	.byte	0x8
	.uahalf	0x184
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EIFILT_Bits"
	.byte	0x8
	.uahalf	0x185
	.uaword	0x16fd
	.uleb128 0xf
	.string	"_Ifx_SCU_EIFR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x188
	.uaword	0x19b9
	.uleb128 0xe
	.string	"INTF0"
	.byte	0x8
	.uahalf	0x18a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"INTF1"
	.byte	0x8
	.uahalf	0x18b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"INTF2"
	.byte	0x8
	.uahalf	0x18c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"INTF3"
	.byte	0x8
	.uahalf	0x18d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"INTF4"
	.byte	0x8
	.uahalf	0x18e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"INTF5"
	.byte	0x8
	.uahalf	0x18f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"INTF6"
	.byte	0x8
	.uahalf	0x190
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"INTF7"
	.byte	0x8
	.uahalf	0x191
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x192
	.uaword	0x3ad
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EIFR_Bits"
	.byte	0x8
	.uahalf	0x193
	.uaword	0x18ea
	.uleb128 0xf
	.string	"_Ifx_SCU_EISR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x196
	.uaword	0x1a7c
	.uleb128 0xe
	.string	"AE"
	.byte	0x8
	.uahalf	0x198
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OE"
	.byte	0x8
	.uahalf	0x199
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IS0"
	.byte	0x8
	.uahalf	0x19a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DS"
	.byte	0x8
	.uahalf	0x19b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TO"
	.byte	0x8
	.uahalf	0x19c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IS1"
	.byte	0x8
	.uahalf	0x19d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x19e
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TIM"
	.byte	0x8
	.uahalf	0x19f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EISR_Bits"
	.byte	0x8
	.uahalf	0x1a0
	.uaword	0x19d3
	.uleb128 0xf
	.string	"_Ifx_SCU_EMSR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1a3
	.uaword	0x1b49
	.uleb128 0xe
	.string	"POL"
	.byte	0x8
	.uahalf	0x1a5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"MODE"
	.byte	0x8
	.uahalf	0x1a6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ENON"
	.byte	0x8
	.uahalf	0x1a7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PSEL"
	.byte	0x8
	.uahalf	0x1a8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x1a9
	.uaword	0x3ad
	.byte	0x4
	.byte	0xc
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EMSF"
	.byte	0x8
	.uahalf	0x1aa
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SEMSF"
	.byte	0x8
	.uahalf	0x1ab
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x1ac
	.uaword	0x3ad
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EMSR_Bits"
	.byte	0x8
	.uahalf	0x1ad
	.uaword	0x1a96
	.uleb128 0xf
	.string	"_Ifx_SCU_EMSSW_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1b0
	.uaword	0x1bce
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x1b2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EMSFM"
	.byte	0x8
	.uahalf	0x1b3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SEMSFM"
	.byte	0x8
	.uahalf	0x1b4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x1b5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EMSSW_Bits"
	.byte	0x8
	.uahalf	0x1b6
	.uaword	0x1b63
	.uleb128 0xf
	.string	"_Ifx_SCU_ESRCFGX_ESRCFGX_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1b9
	.uaword	0x1c49
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x1bb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x7
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EDCON"
	.byte	0x8
	.uahalf	0x1bc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x1bd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x17
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_ESRCFGX_ESRCFGX_Bits"
	.byte	0x8
	.uahalf	0x1be
	.uaword	0x1be9
	.uleb128 0xf
	.string	"_Ifx_SCU_ESROCFG_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1c1
	.uaword	0x1cc4
	.uleb128 0xe
	.string	"ARI"
	.byte	0x8
	.uahalf	0x1c3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ARC"
	.byte	0x8
	.uahalf	0x1c4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x1c5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_ESROCFG_Bits"
	.byte	0x8
	.uahalf	0x1c6
	.uaword	0x1c6e
	.uleb128 0xf
	.string	"_Ifx_SCU_EXTCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1c9
	.uaword	0x1da6
	.uleb128 0xe
	.string	"EN0"
	.byte	0x8
	.uahalf	0x1cb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x1cc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SEL0"
	.byte	0x8
	.uahalf	0x1cd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x1ce
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EN1"
	.byte	0x8
	.uahalf	0x1cf
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"NSEL"
	.byte	0x8
	.uahalf	0x1d0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SEL1"
	.byte	0x8
	.uahalf	0x1d1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x1d2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DIV1"
	.byte	0x8
	.uahalf	0x1d3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EXTCON_Bits"
	.byte	0x8
	.uahalf	0x1d4
	.uaword	0x1ce1
	.uleb128 0xf
	.string	"_Ifx_SCU_FDR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1d7
	.uaword	0x1e50
	.uleb128 0xe
	.string	"STEP"
	.byte	0x8
	.uahalf	0x1d9
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF25
	.byte	0x8
	.uahalf	0x1da
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DM"
	.byte	0x8
	.uahalf	0x1db
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"RESULT"
	.byte	0x8
	.uahalf	0x1dc
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x1dd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DISCLK"
	.byte	0x8
	.uahalf	0x1de
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_FDR_Bits"
	.byte	0x8
	.uahalf	0x1df
	.uaword	0x1dc2
	.uleb128 0xf
	.string	"_Ifx_SCU_FMR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1e2
	.uaword	0x1fc9
	.uleb128 0xe
	.string	"FS0"
	.byte	0x8
	.uahalf	0x1e4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FS1"
	.byte	0x8
	.uahalf	0x1e5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FS2"
	.byte	0x8
	.uahalf	0x1e6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FS3"
	.byte	0x8
	.uahalf	0x1e7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FS4"
	.byte	0x8
	.uahalf	0x1e8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FS5"
	.byte	0x8
	.uahalf	0x1e9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FS6"
	.byte	0x8
	.uahalf	0x1ea
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FS7"
	.byte	0x8
	.uahalf	0x1eb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x1ec
	.uaword	0x3ad
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FC0"
	.byte	0x8
	.uahalf	0x1ed
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FC1"
	.byte	0x8
	.uahalf	0x1ee
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FC2"
	.byte	0x8
	.uahalf	0x1ef
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FC3"
	.byte	0x8
	.uahalf	0x1f0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FC4"
	.byte	0x8
	.uahalf	0x1f1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FC5"
	.byte	0x8
	.uahalf	0x1f2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FC6"
	.byte	0x8
	.uahalf	0x1f3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FC7"
	.byte	0x8
	.uahalf	0x1f4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x1f5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_FMR_Bits"
	.byte	0x8
	.uahalf	0x1f6
	.uaword	0x1e69
	.uleb128 0xf
	.string	"_Ifx_SCU_ID_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x1f9
	.uaword	0x2040
	.uleb128 0xe
	.string	"MODREV"
	.byte	0x8
	.uahalf	0x1fb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"MODTYPE"
	.byte	0x8
	.uahalf	0x1fc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"MODNUMBER"
	.byte	0x8
	.uahalf	0x1fd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_ID_Bits"
	.byte	0x8
	.uahalf	0x1fe
	.uaword	0x1fe2
	.uleb128 0xf
	.string	"_Ifx_SCU_IGCR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x201
	.uaword	0x2237
	.uleb128 0xe
	.string	"IPEN00"
	.byte	0x8
	.uahalf	0x203
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN01"
	.byte	0x8
	.uahalf	0x204
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN02"
	.byte	0x8
	.uahalf	0x205
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN03"
	.byte	0x8
	.uahalf	0x206
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN04"
	.byte	0x8
	.uahalf	0x207
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN05"
	.byte	0x8
	.uahalf	0x208
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN06"
	.byte	0x8
	.uahalf	0x209
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN07"
	.byte	0x8
	.uahalf	0x20a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x20b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"GEEN0"
	.byte	0x8
	.uahalf	0x20c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IGP0"
	.byte	0x8
	.uahalf	0x20d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN10"
	.byte	0x8
	.uahalf	0x20e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN11"
	.byte	0x8
	.uahalf	0x20f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN12"
	.byte	0x8
	.uahalf	0x210
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN13"
	.byte	0x8
	.uahalf	0x211
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN14"
	.byte	0x8
	.uahalf	0x212
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN15"
	.byte	0x8
	.uahalf	0x213
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN16"
	.byte	0x8
	.uahalf	0x214
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IPEN17"
	.byte	0x8
	.uahalf	0x215
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF10
	.byte	0x8
	.uahalf	0x216
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"GEEN1"
	.byte	0x8
	.uahalf	0x217
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IGP1"
	.byte	0x8
	.uahalf	0x218
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_IGCR_Bits"
	.byte	0x8
	.uahalf	0x219
	.uaword	0x2058
	.uleb128 0xf
	.string	"_Ifx_SCU_IN_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x21c
	.uaword	0x22a0
	.uleb128 0xe
	.string	"P0"
	.byte	0x8
	.uahalf	0x21e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"P1"
	.byte	0x8
	.uahalf	0x21f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x220
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_IN_Bits"
	.byte	0x8
	.uahalf	0x221
	.uaword	0x2251
	.uleb128 0xf
	.string	"_Ifx_SCU_IOCR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x224
	.uaword	0x232f
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x226
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PC0"
	.byte	0x8
	.uahalf	0x227
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x228
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PC1"
	.byte	0x8
	.uahalf	0x229
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x22a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_IOCR_Bits"
	.byte	0x8
	.uahalf	0x22b
	.uaword	0x22b8
	.uleb128 0xf
	.string	"_Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x22e
	.uaword	0x2421
	.uleb128 0xe
	.string	"LBISTREQ"
	.byte	0x8
	.uahalf	0x230
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LBISTRES"
	.byte	0x8
	.uahalf	0x231
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PATTERNS"
	.byte	0x8
	.uahalf	0x232
	.uaword	0x3ad
	.byte	0x4
	.byte	0x12
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF27
	.byte	0x8
	.uahalf	0x233
	.uaword	0x3ad
	.byte	0x4
	.byte	0x8
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LBISTDONE"
	.byte	0x8
	.uahalf	0x234
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF14
	.byte	0x8
	.uahalf	0x235
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LBISTERRINJ"
	.byte	0x8
	.uahalf	0x236
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LBISTREQRED"
	.byte	0x8
	.uahalf	0x237
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LBISTCTRL0_Bits"
	.byte	0x8
	.uahalf	0x238
	.uaword	0x2349
	.uleb128 0xf
	.string	"_Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x23b
	.uaword	0x24cb
	.uleb128 0xe
	.string	"SEED"
	.byte	0x8
	.uahalf	0x23d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x13
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF28
	.byte	0x8
	.uahalf	0x23e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SPLITSH"
	.byte	0x8
	.uahalf	0x23f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"BODY"
	.byte	0x8
	.uahalf	0x240
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LBISTFREQU"
	.byte	0x8
	.uahalf	0x241
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LBISTCTRL1_Bits"
	.byte	0x8
	.uahalf	0x242
	.uaword	0x2441
	.uleb128 0xf
	.string	"_Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x245
	.uaword	0x2535
	.uleb128 0xe
	.string	"LENGTH"
	.byte	0x8
	.uahalf	0x247
	.uaword	0x3ad
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x248
	.uaword	0x3ad
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LBISTCTRL2_Bits"
	.byte	0x8
	.uahalf	0x249
	.uaword	0x24eb
	.uleb128 0xf
	.string	"_Ifx_SCU_LBISTCTRL3_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x24c
	.uaword	0x2590
	.uleb128 0xe
	.string	"SIGNATURE"
	.byte	0x8
	.uahalf	0x24e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LBISTCTRL3_Bits"
	.byte	0x8
	.uahalf	0x24f
	.uaword	0x2555
	.uleb128 0xf
	.string	"_Ifx_SCU_LCLCON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x252
	.uaword	0x263e
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x254
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x255
	.uaword	0x3ad
	.byte	0x4
	.byte	0xe
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x256
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LS0"
	.byte	0x8
	.uahalf	0x257
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x258
	.uaword	0x3ad
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LSEN0"
	.byte	0x8
	.uahalf	0x259
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LCLCON0_Bits"
	.byte	0x8
	.uahalf	0x25a
	.uaword	0x25b0
	.uleb128 0xf
	.string	"_Ifx_SCU_LCLCON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x25d
	.uaword	0x26e9
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x25f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x260
	.uaword	0x3ad
	.byte	0x4
	.byte	0xe
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x261
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LS1"
	.byte	0x8
	.uahalf	0x262
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x263
	.uaword	0x3ad
	.byte	0x4
	.byte	0xe
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LSEN1"
	.byte	0x8
	.uahalf	0x264
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LCLCON1_Bits"
	.byte	0x8
	.uahalf	0x265
	.uaword	0x265b
	.uleb128 0xf
	.string	"_Ifx_SCU_LCLTEST_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x268
	.uaword	0x2836
	.uleb128 0xe
	.string	"LCLT0"
	.byte	0x8
	.uahalf	0x26a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LCLT1"
	.byte	0x8
	.uahalf	0x26b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LCLT2"
	.byte	0x8
	.uahalf	0x26c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LCLT3"
	.byte	0x8
	.uahalf	0x26d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x26e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x26f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x270
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PLCLT0"
	.byte	0x8
	.uahalf	0x271
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PLCLT1"
	.byte	0x8
	.uahalf	0x272
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PLCLT2"
	.byte	0x8
	.uahalf	0x273
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PLCLT3"
	.byte	0x8
	.uahalf	0x274
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF27
	.byte	0x8
	.uahalf	0x275
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF29
	.byte	0x8
	.uahalf	0x276
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x277
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LCLTEST_Bits"
	.byte	0x8
	.uahalf	0x278
	.uaword	0x2706
	.uleb128 0xf
	.string	"_Ifx_SCU_MANID_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x27b
	.uaword	0x28aa
	.uleb128 0xe
	.string	"DEPT"
	.byte	0x8
	.uahalf	0x27d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"MANUF"
	.byte	0x8
	.uahalf	0x27e
	.uaword	0x3ad
	.byte	0x4
	.byte	0xb
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x27f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_MANID_Bits"
	.byte	0x8
	.uahalf	0x280
	.uaword	0x2853
	.uleb128 0xf
	.string	"_Ifx_SCU_OMR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x283
	.uaword	0x294f
	.uleb128 0xe
	.string	"PS0"
	.byte	0x8
	.uahalf	0x285
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PS1"
	.byte	0x8
	.uahalf	0x286
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x287
	.uaword	0x3ad
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PCL0"
	.byte	0x8
	.uahalf	0x288
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PCL1"
	.byte	0x8
	.uahalf	0x289
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x28a
	.uaword	0x3ad
	.byte	0x4
	.byte	0xe
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_OMR_Bits"
	.byte	0x8
	.uahalf	0x28b
	.uaword	0x28c5
	.uleb128 0xf
	.string	"_Ifx_SCU_OSCCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x28e
	.uaword	0x2b03
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x290
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PLLLV"
	.byte	0x8
	.uahalf	0x291
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OSCRES"
	.byte	0x8
	.uahalf	0x292
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"GAINSEL"
	.byte	0x8
	.uahalf	0x293
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"MODE"
	.byte	0x8
	.uahalf	0x294
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SHBY"
	.byte	0x8
	.uahalf	0x295
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PLLHV"
	.byte	0x8
	.uahalf	0x296
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"HYSEN"
	.byte	0x8
	.uahalf	0x297
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"HYSCTL"
	.byte	0x8
	.uahalf	0x298
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"AMPCTL"
	.byte	0x8
	.uahalf	0x299
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x29a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OSCVAL"
	.byte	0x8
	.uahalf	0x29b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF29
	.byte	0x8
	.uahalf	0x29c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"APREN"
	.byte	0x8
	.uahalf	0x29d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CAP0EN"
	.byte	0x8
	.uahalf	0x29e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CAP1EN"
	.byte	0x8
	.uahalf	0x29f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CAP2EN"
	.byte	0x8
	.uahalf	0x2a0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CAP3EN"
	.byte	0x8
	.uahalf	0x2a1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x2a2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_OSCCON_Bits"
	.byte	0x8
	.uahalf	0x2a3
	.uaword	0x2968
	.uleb128 0xf
	.string	"_Ifx_SCU_OUT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2a6
	.uaword	0x2b6f
	.uleb128 0xe
	.string	"P0"
	.byte	0x8
	.uahalf	0x2a8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"P1"
	.byte	0x8
	.uahalf	0x2a9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x2aa
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_OUT_Bits"
	.byte	0x8
	.uahalf	0x2ab
	.uaword	0x2b1f
	.uleb128 0xf
	.string	"_Ifx_SCU_OVCCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ae
	.uaword	0x2cbb
	.uleb128 0xe
	.string	"CSEL0"
	.byte	0x8
	.uahalf	0x2b0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CSEL1"
	.byte	0x8
	.uahalf	0x2b1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CSEL2"
	.byte	0x8
	.uahalf	0x2b2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CSEL3"
	.byte	0x8
	.uahalf	0x2b3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x2b4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x2b5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x2b6
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OVSTRT"
	.byte	0x8
	.uahalf	0x2b7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OVSTP"
	.byte	0x8
	.uahalf	0x2b8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DCINVAL"
	.byte	0x8
	.uahalf	0x2b9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF28
	.byte	0x8
	.uahalf	0x2ba
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OVCONF"
	.byte	0x8
	.uahalf	0x2bb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"POVCONF"
	.byte	0x8
	.uahalf	0x2bc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x2bd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_OVCCON_Bits"
	.byte	0x8
	.uahalf	0x2be
	.uaword	0x2b88
	.uleb128 0xf
	.string	"_Ifx_SCU_OVCENABLE_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2c1
	.uaword	0x2d7f
	.uleb128 0xe
	.string	"OVEN0"
	.byte	0x8
	.uahalf	0x2c3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OVEN1"
	.byte	0x8
	.uahalf	0x2c4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OVEN2"
	.byte	0x8
	.uahalf	0x2c5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OVEN3"
	.byte	0x8
	.uahalf	0x2c6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x2c7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x2c8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x2c9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_OVCENABLE_Bits"
	.byte	0x8
	.uahalf	0x2ca
	.uaword	0x2cd7
	.uleb128 0xf
	.string	"_Ifx_SCU_PDISC_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2cd
	.uaword	0x2df6
	.uleb128 0xe
	.string	"PDIS0"
	.byte	0x8
	.uahalf	0x2cf
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PDIS1"
	.byte	0x8
	.uahalf	0x2d0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x2d1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1e
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PDISC_Bits"
	.byte	0x8
	.uahalf	0x2d2
	.uaword	0x2d9e
	.uleb128 0xf
	.string	"_Ifx_SCU_PDR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2d5
	.uaword	0x2e87
	.uleb128 0xe
	.string	"PD0"
	.byte	0x8
	.uahalf	0x2d7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PL0"
	.byte	0x8
	.uahalf	0x2d8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PD1"
	.byte	0x8
	.uahalf	0x2d9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PL1"
	.byte	0x8
	.uahalf	0x2da
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x2db
	.uaword	0x3ad
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PDR_Bits"
	.byte	0x8
	.uahalf	0x2dc
	.uaword	0x2e11
	.uleb128 0xf
	.string	"_Ifx_SCU_PDRR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2df
	.uaword	0x2f67
	.uleb128 0xe
	.string	"PDR0"
	.byte	0x8
	.uahalf	0x2e1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PDR1"
	.byte	0x8
	.uahalf	0x2e2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PDR2"
	.byte	0x8
	.uahalf	0x2e3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PDR3"
	.byte	0x8
	.uahalf	0x2e4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PDR4"
	.byte	0x8
	.uahalf	0x2e5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PDR5"
	.byte	0x8
	.uahalf	0x2e6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PDR6"
	.byte	0x8
	.uahalf	0x2e7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PDR7"
	.byte	0x8
	.uahalf	0x2e8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x2e9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PDRR_Bits"
	.byte	0x8
	.uahalf	0x2ea
	.uaword	0x2ea0
	.uleb128 0xf
	.string	"_Ifx_SCU_PERPLLCON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2ed
	.uaword	0x304f
	.uleb128 0xe
	.string	"DIVBY"
	.byte	0x8
	.uahalf	0x2ef
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x2f0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x8
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"NDIV"
	.byte	0x8
	.uahalf	0x2f1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PLLPWD"
	.byte	0x8
	.uahalf	0x2f2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x2f3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"RESLD"
	.byte	0x8
	.uahalf	0x2f4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF28
	.byte	0x8
	.uahalf	0x2f5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PDIV"
	.byte	0x8
	.uahalf	0x2f6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF12
	.byte	0x8
	.uahalf	0x2f7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PERPLLCON0_Bits"
	.byte	0x8
	.uahalf	0x2f8
	.uaword	0x2f81
	.uleb128 0xf
	.string	"_Ifx_SCU_PERPLLCON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x2fb
	.uaword	0x30de
	.uleb128 0xe
	.string	"K2DIV"
	.byte	0x8
	.uahalf	0x2fd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x2fe
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"K3DIV"
	.byte	0x8
	.uahalf	0x2ff
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x300
	.uaword	0x3ad
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PERPLLCON1_Bits"
	.byte	0x8
	.uahalf	0x301
	.uaword	0x306f
	.uleb128 0xf
	.string	"_Ifx_SCU_PERPLLSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x304
	.uaword	0x31ba
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x306
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PWDSTAT"
	.byte	0x8
	.uahalf	0x307
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LOCK"
	.byte	0x8
	.uahalf	0x308
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x309
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"K3RDY"
	.byte	0x8
	.uahalf	0x30a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"K2RDY"
	.byte	0x8
	.uahalf	0x30b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x30c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF17
	.byte	0x8
	.uahalf	0x30d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x19
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PERPLLSTAT_Bits"
	.byte	0x8
	.uahalf	0x30e
	.uaword	0x30fe
	.uleb128 0xf
	.string	"_Ifx_SCU_PMCSR0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x311
	.uaword	0x3241
	.uleb128 0x10
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x313
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x314
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x315
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x316
	.uaword	0x3ad
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMCSR0_Bits"
	.byte	0x8
	.uahalf	0x317
	.uaword	0x31da
	.uleb128 0xf
	.string	"_Ifx_SCU_PMCSR1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x31a
	.uaword	0x32c4
	.uleb128 0x10
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x31c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x31d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x31e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x31f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMCSR1_Bits"
	.byte	0x8
	.uahalf	0x320
	.uaword	0x325d
	.uleb128 0xf
	.string	"_Ifx_SCU_PMCSR2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x323
	.uaword	0x3347
	.uleb128 0x10
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x325
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x326
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x327
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x328
	.uaword	0x3ad
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMCSR2_Bits"
	.byte	0x8
	.uahalf	0x329
	.uaword	0x32e0
	.uleb128 0xf
	.string	"_Ifx_SCU_PMCSR3_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x32c
	.uaword	0x33ca
	.uleb128 0x10
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x32e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x32f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x330
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x331
	.uaword	0x3ad
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMCSR3_Bits"
	.byte	0x8
	.uahalf	0x332
	.uaword	0x3363
	.uleb128 0xf
	.string	"_Ifx_SCU_PMCSR4_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x335
	.uaword	0x344d
	.uleb128 0x10
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x337
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x338
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x339
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x33a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMCSR4_Bits"
	.byte	0x8
	.uahalf	0x33b
	.uaword	0x33e6
	.uleb128 0xf
	.string	"_Ifx_SCU_PMCSR5_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x33e
	.uaword	0x34d0
	.uleb128 0x10
	.uaword	.LASF32
	.byte	0x8
	.uahalf	0x340
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x341
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF33
	.byte	0x8
	.uahalf	0x342
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x343
	.uaword	0x3ad
	.byte	0x4
	.byte	0x15
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMCSR5_Bits"
	.byte	0x8
	.uahalf	0x344
	.uaword	0x3469
	.uleb128 0xf
	.string	"_Ifx_SCU_PMSTAT0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x347
	.uaword	0x35f6
	.uleb128 0xe
	.string	"CPU0"
	.byte	0x8
	.uahalf	0x349
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU1"
	.byte	0x8
	.uahalf	0x34a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU2"
	.byte	0x8
	.uahalf	0x34b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU3"
	.byte	0x8
	.uahalf	0x34c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU4"
	.byte	0x8
	.uahalf	0x34d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU5"
	.byte	0x8
	.uahalf	0x34e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x34f
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU0LS"
	.byte	0x8
	.uahalf	0x350
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU1LS"
	.byte	0x8
	.uahalf	0x351
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU2LS"
	.byte	0x8
	.uahalf	0x352
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU3LS"
	.byte	0x8
	.uahalf	0x353
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF27
	.byte	0x8
	.uahalf	0x354
	.uaword	0x3ad
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMSTAT0_Bits"
	.byte	0x8
	.uahalf	0x355
	.uaword	0x34ec
	.uleb128 0xf
	.string	"_Ifx_SCU_PMSWCR1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x358
	.uaword	0x36e9
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x35a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPUIDLSEL"
	.byte	0x8
	.uahalf	0x35b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x35c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IRADIS"
	.byte	0x8
	.uahalf	0x35d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x35e
	.uaword	0x3ad
	.byte	0x4
	.byte	0xb
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPUSEL"
	.byte	0x8
	.uahalf	0x35f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"STBYEVEN"
	.byte	0x8
	.uahalf	0x360
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"STBYEV"
	.byte	0x8
	.uahalf	0x361
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF19
	.byte	0x8
	.uahalf	0x362
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMSWCR1_Bits"
	.byte	0x8
	.uahalf	0x363
	.uaword	0x3613
	.uleb128 0xf
	.string	"_Ifx_SCU_PMTRCSR0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x366
	.uaword	0x388a
	.uleb128 0xe
	.string	"LJTEN"
	.byte	0x8
	.uahalf	0x368
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LJTOVEN"
	.byte	0x8
	.uahalf	0x369
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LJTOVIEN"
	.byte	0x8
	.uahalf	0x36a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LJTSTRT"
	.byte	0x8
	.uahalf	0x36b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LJTSTP"
	.byte	0x8
	.uahalf	0x36c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LJTCLR"
	.byte	0x8
	.uahalf	0x36d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x36e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SDSTEP"
	.byte	0x8
	.uahalf	0x36f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"VDTEN"
	.byte	0x8
	.uahalf	0x370
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"VDTOVEN"
	.byte	0x8
	.uahalf	0x371
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"VDTOVIEN"
	.byte	0x8
	.uahalf	0x372
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"VDTSTRT"
	.byte	0x8
	.uahalf	0x373
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"VDTSTP"
	.byte	0x8
	.uahalf	0x374
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"VDTCLR"
	.byte	0x8
	.uahalf	0x375
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x376
	.uaword	0x3ad
	.byte	0x4
	.byte	0x7
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LPSLPEN"
	.byte	0x8
	.uahalf	0x377
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF8
	.byte	0x8
	.uahalf	0x378
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMTRCSR0_Bits"
	.byte	0x8
	.uahalf	0x379
	.uaword	0x3706
	.uleb128 0xf
	.string	"_Ifx_SCU_PMTRCSR1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x37c
	.uaword	0x3903
	.uleb128 0xe
	.string	"LJTCV"
	.byte	0x8
	.uahalf	0x37e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"VDTCV"
	.byte	0x8
	.uahalf	0x37f
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x380
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMTRCSR1_Bits"
	.byte	0x8
	.uahalf	0x381
	.uaword	0x38a8
	.uleb128 0xf
	.string	"_Ifx_SCU_PMTRCSR2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x384
	.uaword	0x39f6
	.uleb128 0xe
	.string	"LDJMPREQ"
	.byte	0x8
	.uahalf	0x386
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x387
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LJTRUN"
	.byte	0x8
	.uahalf	0x388
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x389
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LJTOV"
	.byte	0x8
	.uahalf	0x38a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x38b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LJTOVCLR"
	.byte	0x8
	.uahalf	0x38c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x38d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LJTCNT"
	.byte	0x8
	.uahalf	0x38e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMTRCSR2_Bits"
	.byte	0x8
	.uahalf	0x38f
	.uaword	0x3921
	.uleb128 0xf
	.string	"_Ifx_SCU_PMTRCSR3_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x392
	.uaword	0x3afc
	.uleb128 0xe
	.string	"VDROOPREQ"
	.byte	0x8
	.uahalf	0x394
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x395
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"VDTRUN"
	.byte	0x8
	.uahalf	0x396
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x397
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"VDTOV"
	.byte	0x8
	.uahalf	0x398
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x399
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"VDTOVCLR"
	.byte	0x8
	.uahalf	0x39a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x39b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"VDTCNT"
	.byte	0x8
	.uahalf	0x39c
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF11
	.byte	0x8
	.uahalf	0x39d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMTRCSR3_Bits"
	.byte	0x8
	.uahalf	0x39e
	.uaword	0x3a14
	.uleb128 0xf
	.string	"_Ifx_SCU_RSTCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3a1
	.uaword	0x3c16
	.uleb128 0xe
	.string	"ESR0"
	.byte	0x8
	.uahalf	0x3a3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ESR1"
	.byte	0x8
	.uahalf	0x3a4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x3a5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SMU"
	.byte	0x8
	.uahalf	0x3a6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SW"
	.byte	0x8
	.uahalf	0x3a7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"STM0"
	.byte	0x8
	.uahalf	0x3a8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"STM1"
	.byte	0x8
	.uahalf	0x3a9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"STM2"
	.byte	0x8
	.uahalf	0x3aa
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"STM3"
	.byte	0x8
	.uahalf	0x3ab
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x3ac
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF27
	.byte	0x8
	.uahalf	0x3ad
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x3ae
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_RSTCON_Bits"
	.byte	0x8
	.uahalf	0x3af
	.uaword	0x3b1a
	.uleb128 0xf
	.string	"_Ifx_SCU_RSTCON2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3b2
	.uaword	0x3d31
	.uleb128 0xe
	.string	"FRTO"
	.byte	0x8
	.uahalf	0x3b4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CLRC"
	.byte	0x8
	.uahalf	0x3b5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x3b6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x3b7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x3b8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x3b9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x3ba
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CSSX"
	.byte	0x8
	.uahalf	0x3bb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF13
	.byte	0x8
	.uahalf	0x3bc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF9
	.byte	0x8
	.uahalf	0x3bd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF5
	.byte	0x8
	.uahalf	0x3be
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"USRINFO"
	.byte	0x8
	.uahalf	0x3bf
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_RSTCON2_Bits"
	.byte	0x8
	.uahalf	0x3c0
	.uaword	0x3c32
	.uleb128 0xf
	.string	"_Ifx_SCU_RSTCON3_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3c3
	.uaword	0x3d80
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x3c5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_RSTCON3_Bits"
	.byte	0x8
	.uahalf	0x3c6
	.uaword	0x3d4e
	.uleb128 0xf
	.string	"_Ifx_SCU_RSTSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3c9
	.uaword	0x3fca
	.uleb128 0xe
	.string	"ESR0"
	.byte	0x8
	.uahalf	0x3cb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ESR1"
	.byte	0x8
	.uahalf	0x3cc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x3cd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SMU"
	.byte	0x8
	.uahalf	0x3ce
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SW"
	.byte	0x8
	.uahalf	0x3cf
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"STM0"
	.byte	0x8
	.uahalf	0x3d0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"STM1"
	.byte	0x8
	.uahalf	0x3d1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"STM2"
	.byte	0x8
	.uahalf	0x3d2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"STM3"
	.byte	0x8
	.uahalf	0x3d3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x3d4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF25
	.byte	0x8
	.uahalf	0x3d5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF31
	.byte	0x8
	.uahalf	0x3d6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PORST"
	.byte	0x8
	.uahalf	0x3d7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x3d8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CB0"
	.byte	0x8
	.uahalf	0x3d9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CB1"
	.byte	0x8
	.uahalf	0x3da
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CB3"
	.byte	0x8
	.uahalf	0x3db
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF29
	.byte	0x8
	.uahalf	0x3dc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x3dd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EVRC"
	.byte	0x8
	.uahalf	0x3de
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EVR33"
	.byte	0x8
	.uahalf	0x3df
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SWD"
	.byte	0x8
	.uahalf	0x3e0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"HSMS"
	.byte	0x8
	.uahalf	0x3e1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"HSMA"
	.byte	0x8
	.uahalf	0x3e2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"STBYR"
	.byte	0x8
	.uahalf	0x3e3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LBPORST"
	.byte	0x8
	.uahalf	0x3e4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LBTERM"
	.byte	0x8
	.uahalf	0x3e5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF19
	.byte	0x8
	.uahalf	0x3e6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_RSTSTAT_Bits"
	.byte	0x8
	.uahalf	0x3e7
	.uaword	0x3d9d
	.uleb128 0xf
	.string	"_Ifx_SCU_SEICON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3ea
	.uaword	0x404f
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x3ec
	.uaword	0x14a9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x3ed
	.uaword	0x14a9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"EPW"
	.byte	0x8
	.uahalf	0x3ee
	.uaword	0x14a9
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"REL"
	.byte	0x8
	.uahalf	0x3ef
	.uaword	0x14a9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SEICON0_Bits"
	.byte	0x8
	.uahalf	0x3f0
	.uaword	0x3fe7
	.uleb128 0xf
	.string	"_Ifx_SCU_SEICON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3f3
	.uaword	0x4109
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x3f5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x3f6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IR0"
	.byte	0x8
	.uahalf	0x3f7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DR"
	.byte	0x8
	.uahalf	0x3f8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x3f9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IR1"
	.byte	0x8
	.uahalf	0x3fa
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x3fb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1a
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SEICON1_Bits"
	.byte	0x8
	.uahalf	0x3fc
	.uaword	0x406c
	.uleb128 0xf
	.string	"_Ifx_SCU_SEISR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x3ff
	.uaword	0x41d0
	.uleb128 0xe
	.string	"AE"
	.byte	0x8
	.uahalf	0x401
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OE"
	.byte	0x8
	.uahalf	0x402
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IS0"
	.byte	0x8
	.uahalf	0x403
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DS"
	.byte	0x8
	.uahalf	0x404
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TO"
	.byte	0x8
	.uahalf	0x405
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IS1"
	.byte	0x8
	.uahalf	0x406
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x407
	.uaword	0x3ad
	.byte	0x4
	.byte	0xa
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TIM"
	.byte	0x8
	.uahalf	0x408
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SEISR_Bits"
	.byte	0x8
	.uahalf	0x409
	.uaword	0x4126
	.uleb128 0xf
	.string	"_Ifx_SCU_STCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x40c
	.uaword	0x4269
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x40e
	.uaword	0x3ad
	.byte	0x4
	.byte	0xd
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SFCBAE"
	.byte	0x8
	.uahalf	0x40f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CFCBAE"
	.byte	0x8
	.uahalf	0x410
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"STP"
	.byte	0x8
	.uahalf	0x411
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x412
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STCON_Bits"
	.byte	0x8
	.uahalf	0x413
	.uaword	0x41eb
	.uleb128 0xf
	.string	"_Ifx_SCU_STMEM1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x416
	.uaword	0x42b5
	.uleb128 0xe
	.string	"MEM"
	.byte	0x8
	.uahalf	0x418
	.uaword	0x3ad
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STMEM1_Bits"
	.byte	0x8
	.uahalf	0x419
	.uaword	0x4284
	.uleb128 0xf
	.string	"_Ifx_SCU_STMEM2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x41c
	.uaword	0x4302
	.uleb128 0xe
	.string	"MEM"
	.byte	0x8
	.uahalf	0x41e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STMEM2_Bits"
	.byte	0x8
	.uahalf	0x41f
	.uaword	0x42d1
	.uleb128 0xf
	.string	"_Ifx_SCU_STMEM3_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x422
	.uaword	0x434f
	.uleb128 0xe
	.string	"MEM"
	.byte	0x8
	.uahalf	0x424
	.uaword	0x3ad
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STMEM3_Bits"
	.byte	0x8
	.uahalf	0x425
	.uaword	0x431e
	.uleb128 0xf
	.string	"_Ifx_SCU_STMEM4_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x428
	.uaword	0x439c
	.uleb128 0xe
	.string	"MEM"
	.byte	0x8
	.uahalf	0x42a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STMEM4_Bits"
	.byte	0x8
	.uahalf	0x42b
	.uaword	0x436b
	.uleb128 0xf
	.string	"_Ifx_SCU_STMEM5_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x42e
	.uaword	0x43e9
	.uleb128 0xe
	.string	"MEM"
	.byte	0x8
	.uahalf	0x430
	.uaword	0x3ad
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STMEM5_Bits"
	.byte	0x8
	.uahalf	0x431
	.uaword	0x43b8
	.uleb128 0xf
	.string	"_Ifx_SCU_STMEM6_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x434
	.uaword	0x4436
	.uleb128 0xe
	.string	"MEM"
	.byte	0x8
	.uahalf	0x436
	.uaword	0x3ad
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STMEM6_Bits"
	.byte	0x8
	.uahalf	0x437
	.uaword	0x4405
	.uleb128 0xf
	.string	"_Ifx_SCU_STSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x43a
	.uaword	0x4583
	.uleb128 0xe
	.string	"HWCFG"
	.byte	0x8
	.uahalf	0x43c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FTM"
	.byte	0x8
	.uahalf	0x43d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x7
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"MODE"
	.byte	0x8
	.uahalf	0x43e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"FCBAE"
	.byte	0x8
	.uahalf	0x43f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LUDIS"
	.byte	0x8
	.uahalf	0x440
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF21
	.byte	0x8
	.uahalf	0x441
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TRSTL"
	.byte	0x8
	.uahalf	0x442
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SPDEN"
	.byte	0x8
	.uahalf	0x443
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF29
	.byte	0x8
	.uahalf	0x444
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF7
	.byte	0x8
	.uahalf	0x445
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF18
	.byte	0x8
	.uahalf	0x446
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"RAMINT"
	.byte	0x8
	.uahalf	0x447
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"reserved_25"
	.byte	0x8
	.uahalf	0x448
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x449
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STSTAT_Bits"
	.byte	0x8
	.uahalf	0x44a
	.uaword	0x4452
	.uleb128 0xf
	.string	"_Ifx_SCU_SWAPCTRL_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x44d
	.uaword	0x45fc
	.uleb128 0xe
	.string	"ADDRCFG"
	.byte	0x8
	.uahalf	0x44f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SPARE"
	.byte	0x8
	.uahalf	0x450
	.uaword	0x3ad
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x451
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SWAPCTRL_Bits"
	.byte	0x8
	.uahalf	0x452
	.uaword	0x459f
	.uleb128 0xf
	.string	"_Ifx_SCU_SWRSTCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x455
	.uaword	0x469a
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x457
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SWRSTREQ"
	.byte	0x8
	.uahalf	0x458
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF24
	.byte	0x8
	.uahalf	0x459
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x45a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x45b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SWRSTCON_Bits"
	.byte	0x8
	.uahalf	0x45c
	.uaword	0x461a
	.uleb128 0xf
	.string	"_Ifx_SCU_SYSCON_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x45f
	.uaword	0x4798
	.uleb128 0xe
	.string	"CCTRIG0"
	.byte	0x8
	.uahalf	0x461
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x462
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"RAMINTM"
	.byte	0x8
	.uahalf	0x463
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SETLUDIS"
	.byte	0x8
	.uahalf	0x464
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF2
	.byte	0x8
	.uahalf	0x465
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x466
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF17
	.byte	0x8
	.uahalf	0x467
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DDC"
	.byte	0x8
	.uahalf	0x468
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF23
	.byte	0x8
	.uahalf	0x469
	.uaword	0x3ad
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x46a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SYSCON_Bits"
	.byte	0x8
	.uahalf	0x46b
	.uaword	0x46b8
	.uleb128 0xf
	.string	"_Ifx_SCU_SYSPLLCON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x46e
	.uaword	0x48a8
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x470
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"MODEN"
	.byte	0x8
	.uahalf	0x471
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x472
	.uaword	0x3ad
	.byte	0x4
	.byte	0x6
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"NDIV"
	.byte	0x8
	.uahalf	0x473
	.uaword	0x3ad
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PLLPWD"
	.byte	0x8
	.uahalf	0x474
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF20
	.byte	0x8
	.uahalf	0x475
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"RESLD"
	.byte	0x8
	.uahalf	0x476
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF28
	.byte	0x8
	.uahalf	0x477
	.uaword	0x3ad
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PDIV"
	.byte	0x8
	.uahalf	0x478
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF12
	.byte	0x8
	.uahalf	0x479
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"INSEL"
	.byte	0x8
	.uahalf	0x47a
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SYSPLLCON0_Bits"
	.byte	0x8
	.uahalf	0x47b
	.uaword	0x47b4
	.uleb128 0xf
	.string	"_Ifx_SCU_SYSPLLCON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x47e
	.uaword	0x4911
	.uleb128 0xe
	.string	"K2DIV"
	.byte	0x8
	.uahalf	0x480
	.uaword	0x3ad
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x481
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SYSPLLCON1_Bits"
	.byte	0x8
	.uahalf	0x482
	.uaword	0x48c8
	.uleb128 0xf
	.string	"_Ifx_SCU_SYSPLLCON2_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x485
	.uaword	0x497b
	.uleb128 0xe
	.string	"MODCFG"
	.byte	0x8
	.uahalf	0x487
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x488
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SYSPLLCON2_Bits"
	.byte	0x8
	.uahalf	0x489
	.uaword	0x4931
	.uleb128 0xf
	.string	"_Ifx_SCU_SYSPLLSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x48c
	.uaword	0x4a58
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x48e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PWDSTAT"
	.byte	0x8
	.uahalf	0x48f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LOCK"
	.byte	0x8
	.uahalf	0x490
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF30
	.byte	0x8
	.uahalf	0x491
	.uaword	0x3ad
	.byte	0x4
	.byte	0x2
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"K2RDY"
	.byte	0x8
	.uahalf	0x492
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF3
	.byte	0x8
	.uahalf	0x493
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"MODRUN"
	.byte	0x8
	.uahalf	0x494
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x495
	.uaword	0x3ad
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SYSPLLSTAT_Bits"
	.byte	0x8
	.uahalf	0x496
	.uaword	0x499b
	.uleb128 0xf
	.string	"_Ifx_SCU_TRAPCLR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x499
	.uaword	0x4af9
	.uleb128 0xe
	.string	"ESR0T"
	.byte	0x8
	.uahalf	0x49b
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ESR1T"
	.byte	0x8
	.uahalf	0x49c
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TRAP2"
	.byte	0x8
	.uahalf	0x49d
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SMUT"
	.byte	0x8
	.uahalf	0x49e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x49f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_TRAPCLR_Bits"
	.byte	0x8
	.uahalf	0x4a0
	.uaword	0x4a78
	.uleb128 0xf
	.string	"_Ifx_SCU_TRAPDIS0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4a3
	.uaword	0x4cff
	.uleb128 0xe
	.string	"CPU0ESR0T"
	.byte	0x8
	.uahalf	0x4a5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU0ESR1T"
	.byte	0x8
	.uahalf	0x4a6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU0TRAP2T"
	.byte	0x8
	.uahalf	0x4a7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU0SMUT"
	.byte	0x8
	.uahalf	0x4a8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4a9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU1ESR0T"
	.byte	0x8
	.uahalf	0x4aa
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU1ESR1T"
	.byte	0x8
	.uahalf	0x4ab
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU1TRAP2T"
	.byte	0x8
	.uahalf	0x4ac
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU1SMUT"
	.byte	0x8
	.uahalf	0x4ad
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x4ae
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU2ESR0T"
	.byte	0x8
	.uahalf	0x4af
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU2ESR1T"
	.byte	0x8
	.uahalf	0x4b0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU2TRAP2T"
	.byte	0x8
	.uahalf	0x4b1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU2SMUT"
	.byte	0x8
	.uahalf	0x4b2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF27
	.byte	0x8
	.uahalf	0x4b3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU3ESR0T"
	.byte	0x8
	.uahalf	0x4b4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU3ESR1T"
	.byte	0x8
	.uahalf	0x4b5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU3TRAP2T"
	.byte	0x8
	.uahalf	0x4b6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"CPU3SMUT"
	.byte	0x8
	.uahalf	0x4b7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF22
	.byte	0x8
	.uahalf	0x4b8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_TRAPDIS0_Bits"
	.byte	0x8
	.uahalf	0x4b9
	.uaword	0x4b16
	.uleb128 0xf
	.string	"_Ifx_SCU_TRAPDIS1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4bc
	.uaword	0x4d98
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x4be
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4bf
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF4
	.byte	0x8
	.uahalf	0x4c0
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF6
	.byte	0x8
	.uahalf	0x4c1
	.uaword	0x3ad
	.byte	0x4
	.byte	0x4
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x4c2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_TRAPDIS1_Bits"
	.byte	0x8
	.uahalf	0x4c3
	.uaword	0x4d1d
	.uleb128 0xf
	.string	"_Ifx_SCU_TRAPSET_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4c6
	.uaword	0x4e37
	.uleb128 0xe
	.string	"ESR0T"
	.byte	0x8
	.uahalf	0x4c8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ESR1T"
	.byte	0x8
	.uahalf	0x4c9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TRAP2"
	.byte	0x8
	.uahalf	0x4ca
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SMUT"
	.byte	0x8
	.uahalf	0x4cb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4cc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_TRAPSET_Bits"
	.byte	0x8
	.uahalf	0x4cd
	.uaword	0x4db6
	.uleb128 0xf
	.string	"_Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4d0
	.uaword	0x4ed6
	.uleb128 0xe
	.string	"ESR0T"
	.byte	0x8
	.uahalf	0x4d2
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"ESR1T"
	.byte	0x8
	.uahalf	0x4d3
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TRAP2"
	.byte	0x8
	.uahalf	0x4d4
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"SMUT"
	.byte	0x8
	.uahalf	0x4d5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4d6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_TRAPSTAT_Bits"
	.byte	0x8
	.uahalf	0x4d7
	.uaword	0x4e54
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4da
	.uaword	0x4f5f
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x4dc
	.uaword	0x14a9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x8
	.uahalf	0x4dd
	.uaword	0x14a9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PW"
	.byte	0x8
	.uahalf	0x4de
	.uaword	0x14a9
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"REL"
	.byte	0x8
	.uahalf	0x4df
	.uaword	0x14a9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTCPU_CON0_Bits"
	.byte	0x8
	.uahalf	0x4e0
	.uaword	0x4ef4
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4e3
	.uaword	0x5069
	.uleb128 0x10
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x4e5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x4e6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IR0"
	.byte	0x8
	.uahalf	0x4e7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DR"
	.byte	0x8
	.uahalf	0x4e8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x4e9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IR1"
	.byte	0x8
	.uahalf	0x4ea
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"UR"
	.byte	0x8
	.uahalf	0x4eb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PAR"
	.byte	0x8
	.uahalf	0x4ec
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TCR"
	.byte	0x8
	.uahalf	0x4ed
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TCTR"
	.byte	0x8
	.uahalf	0x4ee
	.uaword	0x3ad
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x4ef
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTCPU_CON1_Bits"
	.byte	0x8
	.uahalf	0x4f0
	.uaword	0x4f80
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x4f3
	.uaword	0x516d
	.uleb128 0xe
	.string	"AE"
	.byte	0x8
	.uahalf	0x4f5
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OE"
	.byte	0x8
	.uahalf	0x4f6
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IS0"
	.byte	0x8
	.uahalf	0x4f7
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DS"
	.byte	0x8
	.uahalf	0x4f8
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TO"
	.byte	0x8
	.uahalf	0x4f9
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IS1"
	.byte	0x8
	.uahalf	0x4fa
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"US"
	.byte	0x8
	.uahalf	0x4fb
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PAS"
	.byte	0x8
	.uahalf	0x4fc
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TCS"
	.byte	0x8
	.uahalf	0x4fd
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TCT"
	.byte	0x8
	.uahalf	0x4fe
	.uaword	0x3ad
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TIM"
	.byte	0x8
	.uahalf	0x4ff
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTCPU_SR_Bits"
	.byte	0x8
	.uahalf	0x500
	.uaword	0x508a
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x503
	.uaword	0x51f5
	.uleb128 0x10
	.uaword	.LASF15
	.byte	0x8
	.uahalf	0x505
	.uaword	0x14a9
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LCK"
	.byte	0x8
	.uahalf	0x506
	.uaword	0x14a9
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PW"
	.byte	0x8
	.uahalf	0x507
	.uaword	0x14a9
	.byte	0x4
	.byte	0xe
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"REL"
	.byte	0x8
	.uahalf	0x508
	.uaword	0x14a9
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTS_CON0_Bits"
	.byte	0x8
	.uahalf	0x509
	.uaword	0x518c
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x50c
	.uaword	0x52fe
	.uleb128 0xe
	.string	"CLRIRF"
	.byte	0x8
	.uahalf	0x50e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF16
	.byte	0x8
	.uahalf	0x50f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IR0"
	.byte	0x8
	.uahalf	0x510
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DR"
	.byte	0x8
	.uahalf	0x511
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF1
	.byte	0x8
	.uahalf	0x512
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IR1"
	.byte	0x8
	.uahalf	0x513
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"UR"
	.byte	0x8
	.uahalf	0x514
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PAR"
	.byte	0x8
	.uahalf	0x515
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TCR"
	.byte	0x8
	.uahalf	0x516
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TCTR"
	.byte	0x8
	.uahalf	0x517
	.uaword	0x3ad
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x10
	.uaword	.LASF26
	.byte	0x8
	.uahalf	0x518
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTS_CON1_Bits"
	.byte	0x8
	.uahalf	0x519
	.uaword	0x5214
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTS_SR_Bits"
	.byte	0x4
	.byte	0x8
	.uahalf	0x51c
	.uaword	0x53fe
	.uleb128 0xe
	.string	"AE"
	.byte	0x8
	.uahalf	0x51e
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OE"
	.byte	0x8
	.uahalf	0x51f
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IS0"
	.byte	0x8
	.uahalf	0x520
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"DS"
	.byte	0x8
	.uahalf	0x521
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TO"
	.byte	0x8
	.uahalf	0x522
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"IS1"
	.byte	0x8
	.uahalf	0x523
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"US"
	.byte	0x8
	.uahalf	0x524
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PAS"
	.byte	0x8
	.uahalf	0x525
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TCS"
	.byte	0x8
	.uahalf	0x526
	.uaword	0x3ad
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TCT"
	.byte	0x8
	.uahalf	0x527
	.uaword	0x3ad
	.byte	0x4
	.byte	0x7
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"TIM"
	.byte	0x8
	.uahalf	0x528
	.uaword	0x3ad
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTS_SR_Bits"
	.byte	0x8
	.uahalf	0x529
	.uaword	0x531d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x531
	.uaword	0x5443
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x533
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x534
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x535
	.uaword	0x62e
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_ACCEN00"
	.byte	0x8
	.uahalf	0x536
	.uaword	0x541b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x539
	.uaword	0x5483
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x53b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x53c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x53d
	.uaword	0x67a
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_ACCEN01"
	.byte	0x8
	.uahalf	0x53e
	.uaword	0x545b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x541
	.uaword	0x54c3
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x543
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x544
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x545
	.uaword	0x8eb
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_ACCEN10"
	.byte	0x8
	.uahalf	0x546
	.uaword	0x549b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x549
	.uaword	0x5503
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x54b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x54c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x54d
	.uaword	0x937
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_ACCEN11"
	.byte	0x8
	.uahalf	0x54e
	.uaword	0x54db
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x551
	.uaword	0x5543
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x553
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x554
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x555
	.uaword	0xa0a
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_ARSTDIS"
	.byte	0x8
	.uahalf	0x556
	.uaword	0x551b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x559
	.uaword	0x5583
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x55b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x55c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x55d
	.uaword	0xb2b
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON0"
	.byte	0x8
	.uahalf	0x55e
	.uaword	0x555b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x561
	.uaword	0x55c3
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x563
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x564
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x565
	.uaword	0xc6c
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON1"
	.byte	0x8
	.uahalf	0x566
	.uaword	0x559b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x569
	.uaword	0x5603
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x56b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x56c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x56d
	.uaword	0xd6f
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON2"
	.byte	0x8
	.uahalf	0x56e
	.uaword	0x55db
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x571
	.uaword	0x5643
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x573
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x574
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x575
	.uaword	0xee7
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON3"
	.byte	0x8
	.uahalf	0x576
	.uaword	0x561b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x579
	.uaword	0x5683
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x57b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x57c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x57d
	.uaword	0xfa1
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON4"
	.byte	0x8
	.uahalf	0x57e
	.uaword	0x565b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x581
	.uaword	0x56c3
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x583
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x584
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x585
	.uaword	0x104b
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON5"
	.byte	0x8
	.uahalf	0x586
	.uaword	0x569b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x589
	.uaword	0x5703
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x58b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x58c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x58d
	.uaword	0x10b0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON6"
	.byte	0x8
	.uahalf	0x58e
	.uaword	0x56db
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x591
	.uaword	0x5743
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x593
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x594
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x595
	.uaword	0x1115
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON7"
	.byte	0x8
	.uahalf	0x596
	.uaword	0x571b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x599
	.uaword	0x5783
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x59b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x59c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x59d
	.uaword	0x117a
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON8"
	.byte	0x8
	.uahalf	0x59e
	.uaword	0x575b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5a1
	.uaword	0x57c3
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5a3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5a4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5a5
	.uaword	0x11df
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CCUCON9"
	.byte	0x8
	.uahalf	0x5a6
	.uaword	0x579b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5a9
	.uaword	0x5803
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5ab
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5ac
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5ad
	.uaword	0x12c8
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_CHIPID"
	.byte	0x8
	.uahalf	0x5ae
	.uaword	0x57db
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5b1
	.uaword	0x5842
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5b3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5b4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5b5
	.uaword	0x13bf
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_DTSCLIM"
	.byte	0x8
	.uahalf	0x5b6
	.uaword	0x581a
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5b9
	.uaword	0x5882
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5bb
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5bc
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5bd
	.uaword	0x1424
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_DTSCSTAT"
	.byte	0x8
	.uahalf	0x5be
	.uaword	0x585a
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5c1
	.uaword	0x58c3
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5c3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5c4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5c5
	.uaword	0x14ae
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EICON0"
	.byte	0x8
	.uahalf	0x5c6
	.uaword	0x589b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5c9
	.uaword	0x5902
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5cb
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5cc
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5cd
	.uaword	0x1566
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EICON1"
	.byte	0x8
	.uahalf	0x5ce
	.uaword	0x58da
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5d1
	.uaword	0x5941
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5d3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5d4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5d5
	.uaword	0x16e3
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EICR"
	.byte	0x8
	.uahalf	0x5d6
	.uaword	0x5919
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5d9
	.uaword	0x597e
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5db
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5dc
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5dd
	.uaword	0x18ce
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EIFILT"
	.byte	0x8
	.uahalf	0x5de
	.uaword	0x5956
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5e1
	.uaword	0x59bd
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5e3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5e4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5e5
	.uaword	0x19b9
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EIFR"
	.byte	0x8
	.uahalf	0x5e6
	.uaword	0x5995
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5e9
	.uaword	0x59fa
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5eb
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5ec
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5ed
	.uaword	0x1a7c
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EISR"
	.byte	0x8
	.uahalf	0x5ee
	.uaword	0x59d2
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5f1
	.uaword	0x5a37
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5f3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5f4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5f5
	.uaword	0x1b49
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EMSR"
	.byte	0x8
	.uahalf	0x5f6
	.uaword	0x5a0f
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x5f9
	.uaword	0x5a74
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x5fb
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x5fc
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x5fd
	.uaword	0x1bce
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EMSSW"
	.byte	0x8
	.uahalf	0x5fe
	.uaword	0x5a4c
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x601
	.uaword	0x5ab2
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x603
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x604
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x605
	.uaword	0x1c49
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_ESRCFGX_ESRCFGX"
	.byte	0x8
	.uahalf	0x606
	.uaword	0x5a8a
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x609
	.uaword	0x5afa
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x60b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x60c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x60d
	.uaword	0x1cc4
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_ESROCFG"
	.byte	0x8
	.uahalf	0x60e
	.uaword	0x5ad2
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x611
	.uaword	0x5b3a
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x613
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x614
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x615
	.uaword	0x1da6
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_EXTCON"
	.byte	0x8
	.uahalf	0x616
	.uaword	0x5b12
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x619
	.uaword	0x5b79
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x61b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x61c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x61d
	.uaword	0x1e50
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_FDR"
	.byte	0x8
	.uahalf	0x61e
	.uaword	0x5b51
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x621
	.uaword	0x5bb5
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x623
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x624
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x625
	.uaword	0x1fc9
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_FMR"
	.byte	0x8
	.uahalf	0x626
	.uaword	0x5b8d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x629
	.uaword	0x5bf1
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x62b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x62c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x62d
	.uaword	0x2040
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_ID"
	.byte	0x8
	.uahalf	0x62e
	.uaword	0x5bc9
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x631
	.uaword	0x5c2c
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x633
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x634
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x635
	.uaword	0x2237
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_IGCR"
	.byte	0x8
	.uahalf	0x636
	.uaword	0x5c04
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x639
	.uaword	0x5c69
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x63b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x63c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x63d
	.uaword	0x22a0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_IN"
	.byte	0x8
	.uahalf	0x63e
	.uaword	0x5c41
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x641
	.uaword	0x5ca4
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x643
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x644
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x645
	.uaword	0x232f
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_IOCR"
	.byte	0x8
	.uahalf	0x646
	.uaword	0x5c7c
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x649
	.uaword	0x5ce1
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x64b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x64c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x64d
	.uaword	0x2421
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LBISTCTRL0"
	.byte	0x8
	.uahalf	0x64e
	.uaword	0x5cb9
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x651
	.uaword	0x5d24
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x653
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x654
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x655
	.uaword	0x24cb
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LBISTCTRL1"
	.byte	0x8
	.uahalf	0x656
	.uaword	0x5cfc
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x659
	.uaword	0x5d67
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x65b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x65c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x65d
	.uaword	0x2535
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LBISTCTRL2"
	.byte	0x8
	.uahalf	0x65e
	.uaword	0x5d3f
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x661
	.uaword	0x5daa
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x663
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x664
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x665
	.uaword	0x2590
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LBISTCTRL3"
	.byte	0x8
	.uahalf	0x666
	.uaword	0x5d82
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x669
	.uaword	0x5ded
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x66b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x66c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x66d
	.uaword	0x263e
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LCLCON0"
	.byte	0x8
	.uahalf	0x66e
	.uaword	0x5dc5
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x671
	.uaword	0x5e2d
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x673
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x674
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x675
	.uaword	0x26e9
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LCLCON1"
	.byte	0x8
	.uahalf	0x676
	.uaword	0x5e05
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x679
	.uaword	0x5e6d
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x67b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x67c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x67d
	.uaword	0x2836
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_LCLTEST"
	.byte	0x8
	.uahalf	0x67e
	.uaword	0x5e45
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x681
	.uaword	0x5ead
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x683
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x684
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x685
	.uaword	0x28aa
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_MANID"
	.byte	0x8
	.uahalf	0x686
	.uaword	0x5e85
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x689
	.uaword	0x5eeb
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x68b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x68c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x68d
	.uaword	0x294f
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_OMR"
	.byte	0x8
	.uahalf	0x68e
	.uaword	0x5ec3
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x691
	.uaword	0x5f27
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x693
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x694
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x695
	.uaword	0x2b03
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_OSCCON"
	.byte	0x8
	.uahalf	0x696
	.uaword	0x5eff
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x699
	.uaword	0x5f66
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x69b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x69c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x69d
	.uaword	0x2b6f
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_OUT"
	.byte	0x8
	.uahalf	0x69e
	.uaword	0x5f3e
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6a1
	.uaword	0x5fa2
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6a3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6a4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6a5
	.uaword	0x2cbb
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_OVCCON"
	.byte	0x8
	.uahalf	0x6a6
	.uaword	0x5f7a
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6a9
	.uaword	0x5fe1
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6ab
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6ac
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6ad
	.uaword	0x2d7f
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_OVCENABLE"
	.byte	0x8
	.uahalf	0x6ae
	.uaword	0x5fb9
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6b1
	.uaword	0x6023
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6b3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6b4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6b5
	.uaword	0x2df6
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PDISC"
	.byte	0x8
	.uahalf	0x6b6
	.uaword	0x5ffb
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6b9
	.uaword	0x6061
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6bb
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6bc
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6bd
	.uaword	0x2e87
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PDR"
	.byte	0x8
	.uahalf	0x6be
	.uaword	0x6039
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6c1
	.uaword	0x609d
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6c3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6c4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6c5
	.uaword	0x2f67
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PDRR"
	.byte	0x8
	.uahalf	0x6c6
	.uaword	0x6075
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6c9
	.uaword	0x60da
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6cb
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6cc
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6cd
	.uaword	0x304f
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PERPLLCON0"
	.byte	0x8
	.uahalf	0x6ce
	.uaword	0x60b2
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6d1
	.uaword	0x611d
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6d3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6d4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6d5
	.uaword	0x30de
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PERPLLCON1"
	.byte	0x8
	.uahalf	0x6d6
	.uaword	0x60f5
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6d9
	.uaword	0x6160
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6db
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6dc
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6dd
	.uaword	0x31ba
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PERPLLSTAT"
	.byte	0x8
	.uahalf	0x6de
	.uaword	0x6138
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6e1
	.uaword	0x61a3
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6e3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6e4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6e5
	.uaword	0x3241
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMCSR0"
	.byte	0x8
	.uahalf	0x6e6
	.uaword	0x617b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6e9
	.uaword	0x61e2
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6eb
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6ec
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6ed
	.uaword	0x32c4
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMCSR1"
	.byte	0x8
	.uahalf	0x6ee
	.uaword	0x61ba
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6f1
	.uaword	0x6221
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6f3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6f4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6f5
	.uaword	0x3347
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMCSR2"
	.byte	0x8
	.uahalf	0x6f6
	.uaword	0x61f9
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x6f9
	.uaword	0x6260
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x6fb
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x6fc
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x6fd
	.uaword	0x33ca
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMCSR3"
	.byte	0x8
	.uahalf	0x6fe
	.uaword	0x6238
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x701
	.uaword	0x629f
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x703
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x704
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x705
	.uaword	0x344d
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMCSR4"
	.byte	0x8
	.uahalf	0x706
	.uaword	0x6277
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x709
	.uaword	0x62de
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x70b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x70c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x70d
	.uaword	0x34d0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMCSR5"
	.byte	0x8
	.uahalf	0x70e
	.uaword	0x62b6
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x711
	.uaword	0x631d
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x713
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x714
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x715
	.uaword	0x35f6
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMSTAT0"
	.byte	0x8
	.uahalf	0x716
	.uaword	0x62f5
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x719
	.uaword	0x635d
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x71b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x71c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x71d
	.uaword	0x36e9
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMSWCR1"
	.byte	0x8
	.uahalf	0x71e
	.uaword	0x6335
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x721
	.uaword	0x639d
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x723
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x724
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x725
	.uaword	0x388a
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMTRCSR0"
	.byte	0x8
	.uahalf	0x726
	.uaword	0x6375
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x729
	.uaword	0x63de
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x72b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x72c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x72d
	.uaword	0x3903
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMTRCSR1"
	.byte	0x8
	.uahalf	0x72e
	.uaword	0x63b6
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x731
	.uaword	0x641f
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x733
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x734
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x735
	.uaword	0x39f6
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMTRCSR2"
	.byte	0x8
	.uahalf	0x736
	.uaword	0x63f7
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x739
	.uaword	0x6460
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x73b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x73c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x73d
	.uaword	0x3afc
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_PMTRCSR3"
	.byte	0x8
	.uahalf	0x73e
	.uaword	0x6438
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x741
	.uaword	0x64a1
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x743
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x744
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x745
	.uaword	0x3c16
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_RSTCON"
	.byte	0x8
	.uahalf	0x746
	.uaword	0x6479
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x749
	.uaword	0x64e0
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x74b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x74c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x74d
	.uaword	0x3d31
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_RSTCON2"
	.byte	0x8
	.uahalf	0x74e
	.uaword	0x64b8
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x751
	.uaword	0x6520
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x753
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x754
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x755
	.uaword	0x3d80
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_RSTCON3"
	.byte	0x8
	.uahalf	0x756
	.uaword	0x64f8
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x759
	.uaword	0x6560
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x75b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x75c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x75d
	.uaword	0x3fca
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_RSTSTAT"
	.byte	0x8
	.uahalf	0x75e
	.uaword	0x6538
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x761
	.uaword	0x65a0
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x763
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x764
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x765
	.uaword	0x404f
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SEICON0"
	.byte	0x8
	.uahalf	0x766
	.uaword	0x6578
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x769
	.uaword	0x65e0
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x76b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x76c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x76d
	.uaword	0x4109
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SEICON1"
	.byte	0x8
	.uahalf	0x76e
	.uaword	0x65b8
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x771
	.uaword	0x6620
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x773
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x774
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x775
	.uaword	0x41d0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SEISR"
	.byte	0x8
	.uahalf	0x776
	.uaword	0x65f8
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x779
	.uaword	0x665e
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x77b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x77c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x77d
	.uaword	0x4269
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STCON"
	.byte	0x8
	.uahalf	0x77e
	.uaword	0x6636
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x781
	.uaword	0x669c
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x783
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x784
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x785
	.uaword	0x42b5
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STMEM1"
	.byte	0x8
	.uahalf	0x786
	.uaword	0x6674
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x789
	.uaword	0x66db
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x78b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x78c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x78d
	.uaword	0x4302
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STMEM2"
	.byte	0x8
	.uahalf	0x78e
	.uaword	0x66b3
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x791
	.uaword	0x671a
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x793
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x794
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x795
	.uaword	0x434f
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STMEM3"
	.byte	0x8
	.uahalf	0x796
	.uaword	0x66f2
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x799
	.uaword	0x6759
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x79b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x79c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x79d
	.uaword	0x439c
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STMEM4"
	.byte	0x8
	.uahalf	0x79e
	.uaword	0x6731
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7a1
	.uaword	0x6798
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7a3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7a4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7a5
	.uaword	0x43e9
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STMEM5"
	.byte	0x8
	.uahalf	0x7a6
	.uaword	0x6770
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7a9
	.uaword	0x67d7
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7ab
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7ac
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7ad
	.uaword	0x4436
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STMEM6"
	.byte	0x8
	.uahalf	0x7ae
	.uaword	0x67af
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7b1
	.uaword	0x6816
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7b3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7b4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7b5
	.uaword	0x4583
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_STSTAT"
	.byte	0x8
	.uahalf	0x7b6
	.uaword	0x67ee
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7b9
	.uaword	0x6855
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7bb
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7bc
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7bd
	.uaword	0x45fc
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SWAPCTRL"
	.byte	0x8
	.uahalf	0x7be
	.uaword	0x682d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7c1
	.uaword	0x6896
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7c3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7c4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7c5
	.uaword	0x469a
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SWRSTCON"
	.byte	0x8
	.uahalf	0x7c6
	.uaword	0x686e
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7c9
	.uaword	0x68d7
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7cb
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7cc
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7cd
	.uaword	0x4798
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SYSCON"
	.byte	0x8
	.uahalf	0x7ce
	.uaword	0x68af
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7d1
	.uaword	0x6916
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7d3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7d4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7d5
	.uaword	0x48a8
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SYSPLLCON0"
	.byte	0x8
	.uahalf	0x7d6
	.uaword	0x68ee
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7d9
	.uaword	0x6959
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7db
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7dc
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7dd
	.uaword	0x4911
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SYSPLLCON1"
	.byte	0x8
	.uahalf	0x7de
	.uaword	0x6931
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7e1
	.uaword	0x699c
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7e3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7e4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7e5
	.uaword	0x497b
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SYSPLLCON2"
	.byte	0x8
	.uahalf	0x7e6
	.uaword	0x6974
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7e9
	.uaword	0x69df
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7eb
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7ec
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7ed
	.uaword	0x4a58
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_SYSPLLSTAT"
	.byte	0x8
	.uahalf	0x7ee
	.uaword	0x69b7
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7f1
	.uaword	0x6a22
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7f3
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7f4
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7f5
	.uaword	0x4af9
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_TRAPCLR"
	.byte	0x8
	.uahalf	0x7f6
	.uaword	0x69fa
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x7f9
	.uaword	0x6a62
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x7fb
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x7fc
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x7fd
	.uaword	0x4cff
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_TRAPDIS0"
	.byte	0x8
	.uahalf	0x7fe
	.uaword	0x6a3a
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x801
	.uaword	0x6aa3
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x803
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x804
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x805
	.uaword	0x4d98
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_TRAPDIS1"
	.byte	0x8
	.uahalf	0x806
	.uaword	0x6a7b
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x809
	.uaword	0x6ae4
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x80b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x80c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x80d
	.uaword	0x4e37
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_TRAPSET"
	.byte	0x8
	.uahalf	0x80e
	.uaword	0x6abc
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x811
	.uaword	0x6b24
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x813
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x814
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x815
	.uaword	0x4ed6
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_TRAPSTAT"
	.byte	0x8
	.uahalf	0x816
	.uaword	0x6afc
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x819
	.uaword	0x6b65
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x81b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x81c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x81d
	.uaword	0x4f5f
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTCPU_CON0"
	.byte	0x8
	.uahalf	0x81e
	.uaword	0x6b3d
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x821
	.uaword	0x6ba9
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x823
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x824
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x825
	.uaword	0x5069
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTCPU_CON1"
	.byte	0x8
	.uahalf	0x826
	.uaword	0x6b81
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x829
	.uaword	0x6bed
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x82b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x82c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x82d
	.uaword	0x516d
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTCPU_SR"
	.byte	0x8
	.uahalf	0x82e
	.uaword	0x6bc5
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x831
	.uaword	0x6c2f
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x833
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x834
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x835
	.uaword	0x51f5
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTS_CON0"
	.byte	0x8
	.uahalf	0x836
	.uaword	0x6c07
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x839
	.uaword	0x6c71
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x83b
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x83c
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x83d
	.uaword	0x52fe
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTS_CON1"
	.byte	0x8
	.uahalf	0x83e
	.uaword	0x6c49
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x841
	.uaword	0x6cb3
	.uleb128 0x13
	.string	"U"
	.byte	0x8
	.uahalf	0x843
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x8
	.uahalf	0x844
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x8
	.uahalf	0x845
	.uaword	0x53fe
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTS_SR"
	.byte	0x8
	.uahalf	0x846
	.uaword	0x6c8b
	.uleb128 0xf
	.string	"_Ifx_SCU_ESRCFGX"
	.byte	0x4
	.byte	0x8
	.uahalf	0x852
	.uaword	0x6cf9
	.uleb128 0x14
	.string	"ESRCFGX"
	.byte	0x8
	.uahalf	0x854
	.uaword	0x5ab2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_ESRCFGX"
	.byte	0x8
	.uahalf	0x855
	.uaword	0x6d11
	.uleb128 0x11
	.uaword	0x6ccb
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTCPU"
	.byte	0xc
	.byte	0x8
	.uahalf	0x864
	.uaword	0x6d5e
	.uleb128 0x14
	.string	"CON0"
	.byte	0x8
	.uahalf	0x866
	.uaword	0x6b65
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CON1"
	.byte	0x8
	.uahalf	0x867
	.uaword	0x6ba9
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"SR"
	.byte	0x8
	.uahalf	0x868
	.uaword	0x6bed
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTCPU"
	.byte	0x8
	.uahalf	0x869
	.uaword	0x6d75
	.uleb128 0x11
	.uaword	0x6d16
	.uleb128 0xf
	.string	"_Ifx_SCU_WDTS"
	.byte	0xc
	.byte	0x8
	.uahalf	0x878
	.uaword	0x6dc0
	.uleb128 0x14
	.string	"CON0"
	.byte	0x8
	.uahalf	0x87a
	.uaword	0x6c2f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"CON1"
	.byte	0x8
	.uahalf	0x87b
	.uaword	0x6c71
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x14
	.string	"SR"
	.byte	0x8
	.uahalf	0x87c
	.uaword	0x6cb3
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU_WDTS"
	.byte	0x8
	.uahalf	0x87d
	.uaword	0x6dd5
	.uleb128 0x11
	.uaword	0x6d7a
	.uleb128 0x15
	.string	"_Ifx_SCU"
	.uahalf	0x400
	.byte	0x8
	.uahalf	0x88c
	.uaword	0x76dc
	.uleb128 0x16
	.uaword	.LASF0
	.byte	0x8
	.uahalf	0x88e
	.uaword	0x76dc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.string	"ID"
	.byte	0x8
	.uahalf	0x88f
	.uaword	0x5bf1
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x14
	.string	"reserved_C"
	.byte	0x8
	.uahalf	0x890
	.uaword	0x76f8
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x14
	.string	"OSCCON"
	.byte	0x8
	.uahalf	0x891
	.uaword	0x5f27
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x14
	.string	"SYSPLLSTAT"
	.byte	0x8
	.uahalf	0x892
	.uaword	0x69df
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x14
	.string	"SYSPLLCON0"
	.byte	0x8
	.uahalf	0x893
	.uaword	0x6916
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x14
	.string	"SYSPLLCON1"
	.byte	0x8
	.uahalf	0x894
	.uaword	0x6959
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x14
	.string	"SYSPLLCON2"
	.byte	0x8
	.uahalf	0x895
	.uaword	0x699c
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x14
	.string	"PERPLLSTAT"
	.byte	0x8
	.uahalf	0x896
	.uaword	0x6160
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x14
	.string	"PERPLLCON0"
	.byte	0x8
	.uahalf	0x897
	.uaword	0x60da
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x14
	.string	"PERPLLCON1"
	.byte	0x8
	.uahalf	0x898
	.uaword	0x611d
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x14
	.string	"CCUCON0"
	.byte	0x8
	.uahalf	0x899
	.uaword	0x5583
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x14
	.string	"CCUCON1"
	.byte	0x8
	.uahalf	0x89a
	.uaword	0x55c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x14
	.string	"FDR"
	.byte	0x8
	.uahalf	0x89b
	.uaword	0x5b79
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x14
	.string	"EXTCON"
	.byte	0x8
	.uahalf	0x89c
	.uaword	0x5b3a
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.uleb128 0x14
	.string	"CCUCON2"
	.byte	0x8
	.uahalf	0x89d
	.uaword	0x5603
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0x14
	.string	"CCUCON3"
	.byte	0x8
	.uahalf	0x89e
	.uaword	0x5643
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0x14
	.string	"CCUCON4"
	.byte	0x8
	.uahalf	0x89f
	.uaword	0x5683
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0x14
	.string	"CCUCON5"
	.byte	0x8
	.uahalf	0x8a0
	.uaword	0x56c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x4c
	.uleb128 0x14
	.string	"RSTSTAT"
	.byte	0x8
	.uahalf	0x8a1
	.uaword	0x6560
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0x14
	.string	"reserved_54"
	.byte	0x8
	.uahalf	0x8a2
	.uaword	0x76f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0x14
	.string	"RSTCON"
	.byte	0x8
	.uahalf	0x8a3
	.uaword	0x64a1
	.byte	0x2
	.byte	0x23
	.uleb128 0x58
	.uleb128 0x14
	.string	"ARSTDIS"
	.byte	0x8
	.uahalf	0x8a4
	.uaword	0x5543
	.byte	0x2
	.byte	0x23
	.uleb128 0x5c
	.uleb128 0x14
	.string	"SWRSTCON"
	.byte	0x8
	.uahalf	0x8a5
	.uaword	0x6896
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0x14
	.string	"RSTCON2"
	.byte	0x8
	.uahalf	0x8a6
	.uaword	0x64e0
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0x14
	.string	"RSTCON3"
	.byte	0x8
	.uahalf	0x8a7
	.uaword	0x6520
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0x14
	.string	"reserved_6C"
	.byte	0x8
	.uahalf	0x8a8
	.uaword	0x76f8
	.byte	0x2
	.byte	0x23
	.uleb128 0x6c
	.uleb128 0x14
	.string	"ESRCFGX"
	.byte	0x8
	.uahalf	0x8a9
	.uaword	0x7718
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0x14
	.string	"ESROCFG"
	.byte	0x8
	.uahalf	0x8aa
	.uaword	0x5afa
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0x14
	.string	"SYSCON"
	.byte	0x8
	.uahalf	0x8ab
	.uaword	0x68d7
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0x14
	.string	"CCUCON6"
	.byte	0x8
	.uahalf	0x8ac
	.uaword	0x5703
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0x14
	.string	"CCUCON7"
	.byte	0x8
	.uahalf	0x8ad
	.uaword	0x5743
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0x14
	.string	"CCUCON8"
	.byte	0x8
	.uahalf	0x8ae
	.uaword	0x5783
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0x14
	.string	"CCUCON9"
	.byte	0x8
	.uahalf	0x8af
	.uaword	0x57c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0x14
	.string	"reserved_90"
	.byte	0x8
	.uahalf	0x8b0
	.uaword	0x771d
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0x14
	.string	"PDR"
	.byte	0x8
	.uahalf	0x8b1
	.uaword	0x6061
	.byte	0x3
	.byte	0x23
	.uleb128 0x9c
	.uleb128 0x14
	.string	"IOCR"
	.byte	0x8
	.uahalf	0x8b2
	.uaword	0x5ca4
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0x14
	.string	"OUT"
	.byte	0x8
	.uahalf	0x8b3
	.uaword	0x5f66
	.byte	0x3
	.byte	0x23
	.uleb128 0xa4
	.uleb128 0x14
	.string	"OMR"
	.byte	0x8
	.uahalf	0x8b4
	.uaword	0x5eeb
	.byte	0x3
	.byte	0x23
	.uleb128 0xa8
	.uleb128 0x14
	.string	"IN"
	.byte	0x8
	.uahalf	0x8b5
	.uaword	0x5c69
	.byte	0x3
	.byte	0x23
	.uleb128 0xac
	.uleb128 0x14
	.string	"reserved_B0"
	.byte	0x8
	.uahalf	0x8b6
	.uaword	0x772d
	.byte	0x3
	.byte	0x23
	.uleb128 0xb0
	.uleb128 0x14
	.string	"STSTAT"
	.byte	0x8
	.uahalf	0x8b7
	.uaword	0x6816
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0x14
	.string	"STCON"
	.byte	0x8
	.uahalf	0x8b8
	.uaword	0x665e
	.byte	0x3
	.byte	0x23
	.uleb128 0xc4
	.uleb128 0x14
	.string	"PMCSR0"
	.byte	0x8
	.uahalf	0x8b9
	.uaword	0x61a3
	.byte	0x3
	.byte	0x23
	.uleb128 0xc8
	.uleb128 0x14
	.string	"PMCSR1"
	.byte	0x8
	.uahalf	0x8ba
	.uaword	0x61e2
	.byte	0x3
	.byte	0x23
	.uleb128 0xcc
	.uleb128 0x14
	.string	"PMCSR2"
	.byte	0x8
	.uahalf	0x8bb
	.uaword	0x6221
	.byte	0x3
	.byte	0x23
	.uleb128 0xd0
	.uleb128 0x14
	.string	"PMCSR3"
	.byte	0x8
	.uahalf	0x8bc
	.uaword	0x6260
	.byte	0x3
	.byte	0x23
	.uleb128 0xd4
	.uleb128 0x14
	.string	"PMCSR4"
	.byte	0x8
	.uahalf	0x8bd
	.uaword	0x629f
	.byte	0x3
	.byte	0x23
	.uleb128 0xd8
	.uleb128 0x14
	.string	"PMCSR5"
	.byte	0x8
	.uahalf	0x8be
	.uaword	0x62de
	.byte	0x3
	.byte	0x23
	.uleb128 0xdc
	.uleb128 0x14
	.string	"reserved_E0"
	.byte	0x8
	.uahalf	0x8bf
	.uaword	0x76f8
	.byte	0x3
	.byte	0x23
	.uleb128 0xe0
	.uleb128 0x14
	.string	"PMSTAT0"
	.byte	0x8
	.uahalf	0x8c0
	.uaword	0x631d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe4
	.uleb128 0x14
	.string	"PMSWCR1"
	.byte	0x8
	.uahalf	0x8c1
	.uaword	0x635d
	.byte	0x3
	.byte	0x23
	.uleb128 0xe8
	.uleb128 0x14
	.string	"reserved_EC"
	.byte	0x8
	.uahalf	0x8c2
	.uaword	0x772d
	.byte	0x3
	.byte	0x23
	.uleb128 0xec
	.uleb128 0x14
	.string	"EMSR"
	.byte	0x8
	.uahalf	0x8c3
	.uaword	0x5a37
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.uleb128 0x14
	.string	"EMSSW"
	.byte	0x8
	.uahalf	0x8c4
	.uaword	0x5a74
	.byte	0x3
	.byte	0x23
	.uleb128 0x100
	.uleb128 0x14
	.string	"DTSCSTAT"
	.byte	0x8
	.uahalf	0x8c5
	.uaword	0x5882
	.byte	0x3
	.byte	0x23
	.uleb128 0x104
	.uleb128 0x14
	.string	"DTSCLIM"
	.byte	0x8
	.uahalf	0x8c6
	.uaword	0x5842
	.byte	0x3
	.byte	0x23
	.uleb128 0x108
	.uleb128 0x14
	.string	"reserved_10C"
	.byte	0x8
	.uahalf	0x8c7
	.uaword	0x773d
	.byte	0x3
	.byte	0x23
	.uleb128 0x10c
	.uleb128 0x14
	.string	"TRAPDIS1"
	.byte	0x8
	.uahalf	0x8c8
	.uaword	0x6aa3
	.byte	0x3
	.byte	0x23
	.uleb128 0x120
	.uleb128 0x14
	.string	"TRAPSTAT"
	.byte	0x8
	.uahalf	0x8c9
	.uaword	0x6b24
	.byte	0x3
	.byte	0x23
	.uleb128 0x124
	.uleb128 0x14
	.string	"TRAPSET"
	.byte	0x8
	.uahalf	0x8ca
	.uaword	0x6ae4
	.byte	0x3
	.byte	0x23
	.uleb128 0x128
	.uleb128 0x14
	.string	"TRAPCLR"
	.byte	0x8
	.uahalf	0x8cb
	.uaword	0x6a22
	.byte	0x3
	.byte	0x23
	.uleb128 0x12c
	.uleb128 0x14
	.string	"TRAPDIS0"
	.byte	0x8
	.uahalf	0x8cc
	.uaword	0x6a62
	.byte	0x3
	.byte	0x23
	.uleb128 0x130
	.uleb128 0x14
	.string	"LCLCON0"
	.byte	0x8
	.uahalf	0x8cd
	.uaword	0x5ded
	.byte	0x3
	.byte	0x23
	.uleb128 0x134
	.uleb128 0x14
	.string	"LCLCON1"
	.byte	0x8
	.uahalf	0x8ce
	.uaword	0x5e2d
	.byte	0x3
	.byte	0x23
	.uleb128 0x138
	.uleb128 0x14
	.string	"LCLTEST"
	.byte	0x8
	.uahalf	0x8cf
	.uaword	0x5e6d
	.byte	0x3
	.byte	0x23
	.uleb128 0x13c
	.uleb128 0x14
	.string	"CHIPID"
	.byte	0x8
	.uahalf	0x8d0
	.uaword	0x5803
	.byte	0x3
	.byte	0x23
	.uleb128 0x140
	.uleb128 0x14
	.string	"MANID"
	.byte	0x8
	.uahalf	0x8d1
	.uaword	0x5ead
	.byte	0x3
	.byte	0x23
	.uleb128 0x144
	.uleb128 0x14
	.string	"reserved_148"
	.byte	0x8
	.uahalf	0x8d2
	.uaword	0x76f8
	.byte	0x3
	.byte	0x23
	.uleb128 0x148
	.uleb128 0x14
	.string	"SWAPCTRL"
	.byte	0x8
	.uahalf	0x8d3
	.uaword	0x6855
	.byte	0x3
	.byte	0x23
	.uleb128 0x14c
	.uleb128 0x14
	.string	"reserved_150"
	.byte	0x8
	.uahalf	0x8d4
	.uaword	0x773d
	.byte	0x3
	.byte	0x23
	.uleb128 0x150
	.uleb128 0x14
	.string	"LBISTCTRL0"
	.byte	0x8
	.uahalf	0x8d5
	.uaword	0x5ce1
	.byte	0x3
	.byte	0x23
	.uleb128 0x164
	.uleb128 0x14
	.string	"LBISTCTRL1"
	.byte	0x8
	.uahalf	0x8d6
	.uaword	0x5d24
	.byte	0x3
	.byte	0x23
	.uleb128 0x168
	.uleb128 0x14
	.string	"LBISTCTRL2"
	.byte	0x8
	.uahalf	0x8d7
	.uaword	0x5d67
	.byte	0x3
	.byte	0x23
	.uleb128 0x16c
	.uleb128 0x14
	.string	"LBISTCTRL3"
	.byte	0x8
	.uahalf	0x8d8
	.uaword	0x5daa
	.byte	0x3
	.byte	0x23
	.uleb128 0x170
	.uleb128 0x14
	.string	"reserved_174"
	.byte	0x8
	.uahalf	0x8d9
	.uaword	0x772d
	.byte	0x3
	.byte	0x23
	.uleb128 0x174
	.uleb128 0x14
	.string	"STMEM1"
	.byte	0x8
	.uahalf	0x8da
	.uaword	0x669c
	.byte	0x3
	.byte	0x23
	.uleb128 0x184
	.uleb128 0x14
	.string	"STMEM2"
	.byte	0x8
	.uahalf	0x8db
	.uaword	0x66db
	.byte	0x3
	.byte	0x23
	.uleb128 0x188
	.uleb128 0x14
	.string	"PDISC"
	.byte	0x8
	.uahalf	0x8dc
	.uaword	0x6023
	.byte	0x3
	.byte	0x23
	.uleb128 0x18c
	.uleb128 0x14
	.string	"reserved_190"
	.byte	0x8
	.uahalf	0x8dd
	.uaword	0x76dc
	.byte	0x3
	.byte	0x23
	.uleb128 0x190
	.uleb128 0x14
	.string	"PMTRCSR0"
	.byte	0x8
	.uahalf	0x8de
	.uaword	0x639d
	.byte	0x3
	.byte	0x23
	.uleb128 0x198
	.uleb128 0x14
	.string	"PMTRCSR1"
	.byte	0x8
	.uahalf	0x8df
	.uaword	0x63de
	.byte	0x3
	.byte	0x23
	.uleb128 0x19c
	.uleb128 0x14
	.string	"PMTRCSR2"
	.byte	0x8
	.uahalf	0x8e0
	.uaword	0x641f
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a0
	.uleb128 0x14
	.string	"PMTRCSR3"
	.byte	0x8
	.uahalf	0x8e1
	.uaword	0x6460
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a4
	.uleb128 0x14
	.string	"reserved_1A8"
	.byte	0x8
	.uahalf	0x8e2
	.uaword	0x774d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1a8
	.uleb128 0x14
	.string	"STMEM3"
	.byte	0x8
	.uahalf	0x8e3
	.uaword	0x671a
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c0
	.uleb128 0x14
	.string	"STMEM4"
	.byte	0x8
	.uahalf	0x8e4
	.uaword	0x6759
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c4
	.uleb128 0x14
	.string	"STMEM5"
	.byte	0x8
	.uahalf	0x8e5
	.uaword	0x6798
	.byte	0x3
	.byte	0x23
	.uleb128 0x1c8
	.uleb128 0x14
	.string	"STMEM6"
	.byte	0x8
	.uahalf	0x8e6
	.uaword	0x67d7
	.byte	0x3
	.byte	0x23
	.uleb128 0x1cc
	.uleb128 0x14
	.string	"reserved_1D0"
	.byte	0x8
	.uahalf	0x8e7
	.uaword	0x772d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1d0
	.uleb128 0x14
	.string	"OVCENABLE"
	.byte	0x8
	.uahalf	0x8e8
	.uaword	0x5fe1
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e0
	.uleb128 0x14
	.string	"OVCCON"
	.byte	0x8
	.uahalf	0x8e9
	.uaword	0x5fa2
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e4
	.uleb128 0x14
	.string	"reserved_1E8"
	.byte	0x8
	.uahalf	0x8ea
	.uaword	0x775d
	.byte	0x3
	.byte	0x23
	.uleb128 0x1e8
	.uleb128 0x14
	.string	"EIFILT"
	.byte	0x8
	.uahalf	0x8eb
	.uaword	0x597e
	.byte	0x3
	.byte	0x23
	.uleb128 0x20c
	.uleb128 0x14
	.string	"EICR"
	.byte	0x8
	.uahalf	0x8ec
	.uaword	0x776d
	.byte	0x3
	.byte	0x23
	.uleb128 0x210
	.uleb128 0x14
	.string	"EIFR"
	.byte	0x8
	.uahalf	0x8ed
	.uaword	0x59bd
	.byte	0x3
	.byte	0x23
	.uleb128 0x220
	.uleb128 0x14
	.string	"FMR"
	.byte	0x8
	.uahalf	0x8ee
	.uaword	0x5bb5
	.byte	0x3
	.byte	0x23
	.uleb128 0x224
	.uleb128 0x14
	.string	"PDRR"
	.byte	0x8
	.uahalf	0x8ef
	.uaword	0x609d
	.byte	0x3
	.byte	0x23
	.uleb128 0x228
	.uleb128 0x14
	.string	"IGCR"
	.byte	0x8
	.uahalf	0x8f0
	.uaword	0x777d
	.byte	0x3
	.byte	0x23
	.uleb128 0x22c
	.uleb128 0x14
	.string	"reserved_23C"
	.byte	0x8
	.uahalf	0x8f1
	.uaword	0x772d
	.byte	0x3
	.byte	0x23
	.uleb128 0x23c
	.uleb128 0x14
	.string	"WDTCPU"
	.byte	0x8
	.uahalf	0x8f2
	.uaword	0x779d
	.byte	0x3
	.byte	0x23
	.uleb128 0x24c
	.uleb128 0x14
	.string	"reserved_27C"
	.byte	0x8
	.uahalf	0x8f3
	.uaword	0x77a2
	.byte	0x3
	.byte	0x23
	.uleb128 0x27c
	.uleb128 0x14
	.string	"EICON0"
	.byte	0x8
	.uahalf	0x8f4
	.uaword	0x58c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x29c
	.uleb128 0x14
	.string	"EICON1"
	.byte	0x8
	.uahalf	0x8f5
	.uaword	0x5902
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a0
	.uleb128 0x14
	.string	"EISR"
	.byte	0x8
	.uahalf	0x8f6
	.uaword	0x59fa
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a4
	.uleb128 0x14
	.string	"WDTS"
	.byte	0x8
	.uahalf	0x8f7
	.uaword	0x6dc0
	.byte	0x3
	.byte	0x23
	.uleb128 0x2a8
	.uleb128 0x14
	.string	"SEICON0"
	.byte	0x8
	.uahalf	0x8f8
	.uaword	0x65a0
	.byte	0x3
	.byte	0x23
	.uleb128 0x2b4
	.uleb128 0x14
	.string	"SEICON1"
	.byte	0x8
	.uahalf	0x8f9
	.uaword	0x65e0
	.byte	0x3
	.byte	0x23
	.uleb128 0x2b8
	.uleb128 0x14
	.string	"SEISR"
	.byte	0x8
	.uahalf	0x8fa
	.uaword	0x6620
	.byte	0x3
	.byte	0x23
	.uleb128 0x2bc
	.uleb128 0x14
	.string	"reserved_2C0"
	.byte	0x8
	.uahalf	0x8fb
	.uaword	0x77b2
	.byte	0x3
	.byte	0x23
	.uleb128 0x2c0
	.uleb128 0x14
	.string	"ACCEN11"
	.byte	0x8
	.uahalf	0x8fc
	.uaword	0x5503
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f0
	.uleb128 0x14
	.string	"ACCEN10"
	.byte	0x8
	.uahalf	0x8fd
	.uaword	0x54c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f4
	.uleb128 0x14
	.string	"ACCEN01"
	.byte	0x8
	.uahalf	0x8fe
	.uaword	0x5483
	.byte	0x3
	.byte	0x23
	.uleb128 0x3f8
	.uleb128 0x14
	.string	"ACCEN00"
	.byte	0x8
	.uahalf	0x8ff
	.uaword	0x5443
	.byte	0x3
	.byte	0x23
	.uleb128 0x3fc
	.byte	0
	.uleb128 0x17
	.uaword	0x398
	.uaword	0x76ec
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0x7
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x17
	.uaword	0x398
	.uaword	0x7708
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.uaword	0x6cf9
	.uaword	0x7718
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0x1
	.byte	0
	.uleb128 0x11
	.uaword	0x7708
	.uleb128 0x17
	.uaword	0x398
	.uaword	0x772d
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0xb
	.byte	0
	.uleb128 0x17
	.uaword	0x398
	.uaword	0x773d
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0xf
	.byte	0
	.uleb128 0x17
	.uaword	0x398
	.uaword	0x774d
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0x13
	.byte	0
	.uleb128 0x17
	.uaword	0x398
	.uaword	0x775d
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0x17
	.byte	0
	.uleb128 0x17
	.uaword	0x398
	.uaword	0x776d
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0x23
	.byte	0
	.uleb128 0x17
	.uaword	0x5941
	.uaword	0x777d
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.uaword	0x5c2c
	.uaword	0x778d
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0x3
	.byte	0
	.uleb128 0x17
	.uaword	0x6d5e
	.uaword	0x779d
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0x3
	.byte	0
	.uleb128 0x11
	.uaword	0x778d
	.uleb128 0x17
	.uaword	0x398
	.uaword	0x77b2
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0x1f
	.byte	0
	.uleb128 0x17
	.uaword	0x398
	.uaword	0x77c3
	.uleb128 0x19
	.uaword	0x76ec
	.uahalf	0x12f
	.byte	0
	.uleb128 0x4
	.string	"Ifx_SCU"
	.byte	0x8
	.uahalf	0x900
	.uaword	0x77d3
	.uleb128 0x11
	.uaword	0x6dda
	.uleb128 0x9
	.byte	0xc
	.byte	0x3
	.byte	0x58
	.uaword	0x78fb
	.uleb128 0x1a
	.uaword	.LASF34
	.byte	0x3
	.byte	0x5a
	.uaword	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x1a
	.uaword	.LASF35
	.byte	0x3
	.byte	0x5b
	.uaword	0x2eb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0xa
	.string	"inputFrequency"
	.byte	0x3
	.byte	0x5c
	.uaword	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xa
	.string	"disableWatchdog"
	.byte	0x3
	.byte	0x5d
	.uaword	0x33e
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0xa
	.string	"enableSmuRestriction"
	.byte	0x3
	.byte	0x5e
	.uaword	0x33e
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0xa
	.string	"enableAutomaticPasswordChange"
	.byte	0x3
	.byte	0x5f
	.uaword	0x33e
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0xa
	.string	"enableTimerCheck"
	.byte	0x3
	.byte	0x60
	.uaword	0x33e
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xa
	.string	"enableTimerCheckTolerance"
	.byte	0x3
	.byte	0x61
	.uaword	0x33e
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0xa
	.string	"clrInternalResetFlag"
	.byte	0x3
	.byte	0x62
	.uaword	0x33e
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0xa
	.string	"globalEndInitInputFrequency"
	.byte	0x3
	.byte	0x63
	.uaword	0x22c
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.byte	0
	.uleb128 0x6
	.string	"IfxScuWdt_Config"
	.byte	0x3
	.byte	0x64
	.uaword	0x77d8
	.uleb128 0xb
	.string	"_Ifx_CPU_CORE_ID_Bits"
	.byte	0x4
	.byte	0x9
	.byte	0x8f
	.uaword	0x7958
	.uleb128 0xc
	.string	"CORE_ID"
	.byte	0x9
	.byte	0x91
	.uaword	0x14a9
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xd
	.uaword	.LASF30
	.byte	0x9
	.byte	0x92
	.uaword	0x14a9
	.byte	0x4
	.byte	0x1d
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x6
	.string	"Ifx_CPU_CORE_ID_Bits"
	.byte	0x9
	.byte	0x93
	.uaword	0x7913
	.uleb128 0x12
	.byte	0x4
	.byte	0x9
	.uahalf	0x574
	.uaword	0x799c
	.uleb128 0x13
	.string	"U"
	.byte	0x9
	.uahalf	0x576
	.uaword	0x3ad
	.uleb128 0x13
	.string	"I"
	.byte	0x9
	.uahalf	0x577
	.uaword	0x3c3
	.uleb128 0x13
	.string	"B"
	.byte	0x9
	.uahalf	0x578
	.uaword	0x7958
	.byte	0
	.uleb128 0x4
	.string	"Ifx_CPU_CORE_ID"
	.byte	0x9
	.uahalf	0x579
	.uaword	0x7974
	.uleb128 0x1b
	.byte	0x1
	.byte	0xa
	.byte	0x9e
	.uaword	0x7a33
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu_0"
	.sleb128 0
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu_1"
	.sleb128 1
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu_2"
	.sleb128 2
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu_3"
	.sleb128 3
	.uleb128 0x3
	.string	"IfxCpu_ResourceCpu_none"
	.sleb128 4
	.byte	0
	.uleb128 0x6
	.string	"IfxCpu_ResourceCpu"
	.byte	0xa
	.byte	0xa4
	.uaword	0x79b4
	.uleb128 0x7
	.byte	0x4
	.uaword	0x77c3
	.uleb128 0x1c
	.string	"IfxCpu_getCoreIndex"
	.byte	0x2
	.uahalf	0x369
	.byte	0x1
	.uaword	0x7a33
	.byte	0x3
	.uaword	0x7a92
	.uleb128 0x1d
	.string	"reg"
	.byte	0x2
	.uahalf	0x36b
	.uaword	0x799c
	.uleb128 0x1e
	.uleb128 0x1d
	.string	"__res"
	.byte	0x2
	.uahalf	0x36c
	.uaword	0x299
	.byte	0
	.byte	0
	.uleb128 0x1f
	.string	"IfxScuWdt_clearCpuEndinitInline"
	.byte	0x3
	.uahalf	0x226
	.byte	0x1
	.byte	0x3
	.uaword	0x7ad5
	.uleb128 0x20
	.uaword	.LASF36
	.byte	0x3
	.uahalf	0x226
	.uaword	0x7ad5
	.uleb128 0x20
	.uaword	.LASF34
	.byte	0x3
	.uahalf	0x226
	.uaword	0x2eb
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x6d5e
	.uleb128 0x1f
	.string	"IfxScuWdt_clearSafetyEndinitInline"
	.byte	0x3
	.uahalf	0x247
	.byte	0x1
	.byte	0x3
	.uaword	0x7b15
	.uleb128 0x20
	.uaword	.LASF34
	.byte	0x3
	.uahalf	0x247
	.uaword	0x2eb
	.byte	0
	.uleb128 0x1f
	.string	"IfxScuWdt_setCpuEndinitInline"
	.byte	0x3
	.uahalf	0x292
	.byte	0x1
	.byte	0x3
	.uaword	0x7b56
	.uleb128 0x20
	.uaword	.LASF36
	.byte	0x3
	.uahalf	0x292
	.uaword	0x7ad5
	.uleb128 0x20
	.uaword	.LASF34
	.byte	0x3
	.uahalf	0x292
	.uaword	0x2eb
	.byte	0
	.uleb128 0x1f
	.string	"IfxScuWdt_setSafetyEndinitInline"
	.byte	0x3
	.uahalf	0x2b3
	.byte	0x1
	.byte	0x3
	.uaword	0x7b8e
	.uleb128 0x20
	.uaword	.LASF34
	.byte	0x3
	.uahalf	0x2b3
	.uaword	0x2eb
	.byte	0
	.uleb128 0x1c
	.string	"IfxScuWdt_getCpuWatchdogPasswordInline"
	.byte	0x3
	.uahalf	0x25e
	.byte	0x1
	.uaword	0x2eb
	.byte	0x3
	.uaword	0x7bdc
	.uleb128 0x20
	.uaword	.LASF36
	.byte	0x3
	.uahalf	0x25e
	.uaword	0x7ad5
	.uleb128 0x21
	.uaword	.LASF34
	.byte	0x3
	.uahalf	0x260
	.uaword	0x2eb
	.byte	0
	.uleb128 0x1c
	.string	"IfxScuWdt_getCpuWatchdogEndInitInline"
	.byte	0x3
	.uahalf	0x26c
	.byte	0x1
	.uaword	0x33e
	.byte	0x3
	.uaword	0x7c1d
	.uleb128 0x20
	.uaword	.LASF36
	.byte	0x3
	.uahalf	0x26c
	.uaword	0x7ad5
	.byte	0
	.uleb128 0x1c
	.string	"IfxScuWdt_getSafetyWatchdogPasswordInline"
	.byte	0x3
	.uahalf	0x283
	.byte	0x1
	.uaword	0x2eb
	.byte	0x3
	.uaword	0x7c6e
	.uleb128 0x21
	.uaword	.LASF34
	.byte	0x3
	.uahalf	0x285
	.uaword	0x2eb
	.uleb128 0x21
	.uaword	.LASF36
	.byte	0x3
	.uahalf	0x286
	.uaword	0x7c6e
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x6dc0
	.uleb128 0x22
	.byte	0x1
	.string	"IfxScuWdt_changeCpuWatchdogPassword"
	.byte	0x1
	.byte	0x40
	.byte	0x1
	.uaword	.LFB237
	.uaword	.LFE237
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7d16
	.uleb128 0x23
	.uaword	.LASF34
	.byte	0x1
	.byte	0x40
	.uaword	0x2eb
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.uaword	.LASF37
	.byte	0x1
	.byte	0x40
	.uaword	0x2eb
	.byte	0x1
	.byte	0x55
	.uleb128 0x24
	.uaword	.LASF36
	.byte	0x1
	.byte	0x42
	.uaword	0x7ad5
	.byte	0x1
	.byte	0x6f
	.uleb128 0x25
	.uaword	.LASF38
	.byte	0x1
	.byte	0x45
	.uaword	0x6b65
	.uaword	.LLST0
	.uleb128 0x26
	.uaword	0x7a53
	.uaword	.LBB59
	.uaword	.LBE59
	.byte	0x1
	.byte	0x42
	.uleb128 0x27
	.uaword	.LBB60
	.uaword	.LBE60
	.uleb128 0x28
	.uaword	0x7a75
	.uleb128 0x27
	.uaword	.LBB61
	.uaword	.LBE61
	.uleb128 0x29
	.uaword	0x7a82
	.uaword	.LLST1
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IfxScuWdt_changeCpuWatchdogReload"
	.byte	0x1
	.byte	0x5f
	.byte	0x1
	.uaword	.LFB238
	.uaword	.LFE238
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7dc1
	.uleb128 0x23
	.uaword	.LASF34
	.byte	0x1
	.byte	0x5f
	.uaword	0x2eb
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.uaword	.LASF35
	.byte	0x1
	.byte	0x5f
	.uaword	0x2eb
	.byte	0x1
	.byte	0x55
	.uleb128 0x2a
	.uaword	.LASF39
	.byte	0x1
	.byte	0x62
	.uaword	0x31d
	.uleb128 0x2b
	.string	"wdt"
	.byte	0x1
	.byte	0x63
	.uaword	0x7ad5
	.byte	0x1
	.byte	0x6f
	.uleb128 0x25
	.uaword	.LASF38
	.byte	0x1
	.byte	0x66
	.uaword	0x6b65
	.uaword	.LLST2
	.uleb128 0x26
	.uaword	0x7a53
	.uaword	.LBB62
	.uaword	.LBE62
	.byte	0x1
	.byte	0x62
	.uleb128 0x27
	.uaword	.LBB63
	.uaword	.LBE63
	.uleb128 0x28
	.uaword	0x7a75
	.uleb128 0x27
	.uaword	.LBB64
	.uaword	.LBE64
	.uleb128 0x29
	.uaword	0x7a82
	.uaword	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IfxScuWdt_changeGlobalEndinitPassword"
	.byte	0x1
	.byte	0x80
	.byte	0x1
	.uaword	.LFB239
	.uaword	.LFE239
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7e36
	.uleb128 0x23
	.uaword	.LASF34
	.byte	0x1
	.byte	0x80
	.uaword	0x2eb
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.uaword	.LASF37
	.byte	0x1
	.byte	0x80
	.uaword	0x2eb
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.string	"scu"
	.byte	0x1
	.byte	0x82
	.uaword	0x7a4d
	.sleb128 -268214272
	.uleb128 0x25
	.uaword	.LASF40
	.byte	0x1
	.byte	0x85
	.uaword	0x58c3
	.uaword	.LLST4
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IfxScuWdt_changeGlobalSafetyEndinitPassword"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.uaword	.LFB240
	.uaword	.LFE240
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7eb1
	.uleb128 0x23
	.uaword	.LASF34
	.byte	0x1
	.byte	0x9e
	.uaword	0x2eb
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.uaword	.LASF37
	.byte	0x1
	.byte	0x9e
	.uaword	0x2eb
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.string	"scu"
	.byte	0x1
	.byte	0xa0
	.uaword	0x7a4d
	.sleb128 -268214272
	.uleb128 0x25
	.uaword	.LASF41
	.byte	0x1
	.byte	0xa3
	.uaword	0x65a0
	.uaword	.LLST5
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IfxScuWdt_changeSafetyWatchdogPassword"
	.byte	0x1
	.byte	0xbc
	.byte	0x1
	.uaword	.LFB241
	.uaword	.LFE241
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7f27
	.uleb128 0x23
	.uaword	.LASF34
	.byte	0x1
	.byte	0xbc
	.uaword	0x2eb
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.uaword	.LASF37
	.byte	0x1
	.byte	0xbc
	.uaword	0x2eb
	.byte	0x1
	.byte	0x55
	.uleb128 0x2d
	.uaword	.LASF36
	.byte	0x1
	.byte	0xbe
	.uaword	0x7c6e
	.sleb128 -268213592
	.uleb128 0x25
	.uaword	.LASF38
	.byte	0x1
	.byte	0xc1
	.uaword	0x6c2f
	.uaword	.LLST6
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IfxScuWdt_changeSafetyWatchdogReload"
	.byte	0x1
	.byte	0xdb
	.byte	0x1
	.uaword	.LFB242
	.uaword	.LFE242
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x7f9b
	.uleb128 0x23
	.uaword	.LASF34
	.byte	0x1
	.byte	0xdb
	.uaword	0x2eb
	.byte	0x1
	.byte	0x54
	.uleb128 0x23
	.uaword	.LASF35
	.byte	0x1
	.byte	0xdb
	.uaword	0x2eb
	.byte	0x1
	.byte	0x55
	.uleb128 0x2c
	.string	"wdt"
	.byte	0x1
	.byte	0xde
	.uaword	0x7c6e
	.sleb128 -268213592
	.uleb128 0x25
	.uaword	.LASF38
	.byte	0x1
	.byte	0xe1
	.uaword	0x6c2f
	.uaword	.LLST7
	.byte	0
	.uleb128 0x22
	.byte	0x1
	.string	"IfxScuWdt_clearCpuEndinit"
	.byte	0x1
	.byte	0xfb
	.byte	0x1
	.uaword	.LFB243
	.uaword	.LFE243
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x802c
	.uleb128 0x2e
	.uaword	.LASF34
	.byte	0x1
	.byte	0xfb
	.uaword	0x2eb
	.uaword	.LLST8
	.uleb128 0x2f
	.uaword	0x7a53
	.uaword	.LBB65
	.uaword	.LBE65
	.byte	0x1
	.byte	0xfd
	.uaword	0x800f
	.uleb128 0x27
	.uaword	.LBB66
	.uaword	.LBE66
	.uleb128 0x28
	.uaword	0x7a75
	.uleb128 0x27
	.uaword	.LBB67
	.uaword	.LBE67
	.uleb128 0x29
	.uaword	0x7a82
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x7a92
	.uaword	.LBB68
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xfd
	.uleb128 0x31
	.uaword	0x7ac8
	.uleb128 0x32
	.uaword	0x7abc
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_clearGlobalEndinit"
	.byte	0x1
	.uahalf	0x101
	.byte	0x1
	.uaword	.LFB244
	.uaword	.LFE244
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x808f
	.uleb128 0x34
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x101
	.uaword	0x2eb
	.byte	0x1
	.byte	0x54
	.uleb128 0x35
	.string	"scu"
	.byte	0x1
	.uahalf	0x103
	.uaword	0x7a4d
	.sleb128 -268214272
	.uleb128 0x36
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x106
	.uaword	0x58c3
	.uaword	.LLST10
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_clearGlobalSafetyEndinit"
	.byte	0x1
	.uahalf	0x11a
	.byte	0x1
	.uaword	.LFB245
	.uaword	.LFE245
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x80f8
	.uleb128 0x34
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x11a
	.uaword	0x2eb
	.byte	0x1
	.byte	0x54
	.uleb128 0x35
	.string	"scu"
	.byte	0x1
	.uahalf	0x11c
	.uaword	0x7a4d
	.sleb128 -268214272
	.uleb128 0x36
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x11f
	.uaword	0x65a0
	.uaword	.LLST11
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_clearSafetyEndinit"
	.byte	0x1
	.uahalf	0x133
	.byte	0x1
	.uaword	.LFB246
	.uaword	.LFE246
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8156
	.uleb128 0x37
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x133
	.uaword	0x2eb
	.uaword	.LLST12
	.uleb128 0x38
	.uaword	0x7adb
	.uaword	.LBB72
	.uaword	.LBE72
	.byte	0x1
	.uahalf	0x135
	.uleb128 0x39
	.uaword	0x7b08
	.uaword	.LLST13
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_disableCpuWatchdog"
	.byte	0x1
	.uahalf	0x139
	.byte	0x1
	.uaword	.LFB247
	.uaword	.LFE247
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8229
	.uleb128 0x37
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x139
	.uaword	0x2eb
	.uaword	.LLST14
	.uleb128 0x21
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x31d
	.uleb128 0x3a
	.string	"wdt"
	.byte	0x1
	.uahalf	0x13d
	.uaword	0x7ad5
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3b
	.uaword	0x7a53
	.uaword	.LBB74
	.uaword	.LBE74
	.byte	0x1
	.uahalf	0x13c
	.uaword	0x81ea
	.uleb128 0x27
	.uaword	.LBB75
	.uaword	.LBE75
	.uleb128 0x28
	.uaword	0x7a75
	.uleb128 0x27
	.uaword	.LBB76
	.uaword	.LBE76
	.uleb128 0x29
	.uaword	0x7a82
	.uaword	.LLST15
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0x7a92
	.uaword	.LBB77
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x13f
	.uaword	0x820b
	.uleb128 0x31
	.uaword	0x7ac8
	.uleb128 0x32
	.uaword	0x7abc
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x38
	.uaword	0x7b15
	.uaword	.LBB81
	.uaword	.LBE81
	.byte	0x1
	.uahalf	0x141
	.uleb128 0x31
	.uaword	0x7b49
	.uleb128 0x32
	.uaword	0x7b3d
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_disableSafetyWatchdog"
	.byte	0x1
	.uahalf	0x145
	.byte	0x1
	.uaword	.LFB248
	.uaword	.LFE248
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x82a4
	.uleb128 0x37
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x145
	.uaword	0x2eb
	.uaword	.LLST16
	.uleb128 0x3b
	.uaword	0x7adb
	.uaword	.LBB83
	.uaword	.LBE83
	.byte	0x1
	.uahalf	0x147
	.uaword	0x828d
	.uleb128 0x39
	.uaword	0x7b08
	.uaword	.LLST17
	.byte	0
	.uleb128 0x38
	.uaword	0x7b56
	.uaword	.LBB85
	.uaword	.LBE85
	.byte	0x1
	.uahalf	0x149
	.uleb128 0x31
	.uaword	0x7b81
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_enableCpuWatchdog"
	.byte	0x1
	.uahalf	0x14d
	.byte	0x1
	.uaword	.LFB249
	.uaword	.LFE249
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8376
	.uleb128 0x37
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x14d
	.uaword	0x2eb
	.uaword	.LLST18
	.uleb128 0x21
	.uaword	.LASF39
	.byte	0x1
	.uahalf	0x150
	.uaword	0x31d
	.uleb128 0x3a
	.string	"wdt"
	.byte	0x1
	.uahalf	0x151
	.uaword	0x7ad5
	.byte	0x1
	.byte	0x6f
	.uleb128 0x3b
	.uaword	0x7a53
	.uaword	.LBB87
	.uaword	.LBE87
	.byte	0x1
	.uahalf	0x150
	.uaword	0x8337
	.uleb128 0x27
	.uaword	.LBB88
	.uaword	.LBE88
	.uleb128 0x28
	.uaword	0x7a75
	.uleb128 0x27
	.uaword	.LBB89
	.uaword	.LBE89
	.uleb128 0x29
	.uaword	0x7a82
	.uaword	.LLST19
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uaword	0x7a92
	.uaword	.LBB90
	.uaword	.Ldebug_ranges0+0x30
	.byte	0x1
	.uahalf	0x153
	.uaword	0x8358
	.uleb128 0x31
	.uaword	0x7ac8
	.uleb128 0x32
	.uaword	0x7abc
	.byte	0x1
	.byte	0x6f
	.byte	0
	.uleb128 0x38
	.uaword	0x7b15
	.uaword	.LBB94
	.uaword	.LBE94
	.byte	0x1
	.uahalf	0x155
	.uleb128 0x31
	.uaword	0x7b49
	.uleb128 0x32
	.uaword	0x7b3d
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_enableSafetyWatchdog"
	.byte	0x1
	.uahalf	0x159
	.byte	0x1
	.uaword	.LFB250
	.uaword	.LFE250
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x83f0
	.uleb128 0x37
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x159
	.uaword	0x2eb
	.uaword	.LLST20
	.uleb128 0x3b
	.uaword	0x7adb
	.uaword	.LBB96
	.uaword	.LBE96
	.byte	0x1
	.uahalf	0x15b
	.uaword	0x83d9
	.uleb128 0x39
	.uaword	0x7b08
	.uaword	.LLST21
	.byte	0
	.uleb128 0x38
	.uaword	0x7b56
	.uaword	.LBB98
	.uaword	.LBE98
	.byte	0x1
	.uahalf	0x15d
	.uleb128 0x31
	.uaword	0x7b81
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogPassword"
	.byte	0x1
	.uahalf	0x161
	.byte	0x1
	.uaword	0x2eb
	.uaword	.LFB251
	.uaword	.LFE251
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x848a
	.uleb128 0x3b
	.uaword	0x7a53
	.uaword	.LBB100
	.uaword	.LBE100
	.byte	0x1
	.uahalf	0x163
	.uaword	0x8462
	.uleb128 0x27
	.uaword	.LBB101
	.uaword	.LBE101
	.uleb128 0x28
	.uaword	0x7a75
	.uleb128 0x27
	.uaword	.LBB102
	.uaword	.LBE102
	.uleb128 0x29
	.uaword	0x7a82
	.uaword	.LLST22
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x7b8e
	.uaword	.LBB103
	.uaword	.LBE103
	.byte	0x1
	.uahalf	0x163
	.uleb128 0x32
	.uaword	0x7bc3
	.byte	0x1
	.byte	0x6f
	.uleb128 0x27
	.uaword	.LBB104
	.uaword	.LBE104
	.uleb128 0x28
	.uaword	0x7bcf
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogEndInit"
	.byte	0x1
	.uahalf	0x167
	.byte	0x1
	.uaword	0x33e
	.uaword	.LFB252
	.uaword	.LFE252
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8514
	.uleb128 0x3b
	.uaword	0x7a53
	.uaword	.LBB105
	.uaword	.LBE105
	.byte	0x1
	.uahalf	0x169
	.uaword	0x84fb
	.uleb128 0x27
	.uaword	.LBB106
	.uaword	.LBE106
	.uleb128 0x28
	.uaword	0x7a75
	.uleb128 0x27
	.uaword	.LBB107
	.uaword	.LBE107
	.uleb128 0x29
	.uaword	0x7a82
	.uaword	.LLST23
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x38
	.uaword	0x7bdc
	.uaword	.LBB108
	.uaword	.LBE108
	.byte	0x1
	.uahalf	0x169
	.uleb128 0x32
	.uaword	0x7c10
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"IfxScuWdt_getGlobalEndinitPassword"
	.byte	0x1
	.uahalf	0x16d
	.byte	0x1
	.uaword	0x2eb
	.uaword	.LFB253
	.uaword	.LFE253
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x856f
	.uleb128 0x35
	.string	"scu"
	.byte	0x1
	.uahalf	0x16f
	.uaword	0x7a4d
	.sleb128 -268214272
	.uleb128 0x21
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x170
	.uaword	0x2eb
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"IfxScuWdt_getGlobalSafetyEndinitPassword"
	.byte	0x1
	.uahalf	0x17c
	.byte	0x1
	.uaword	0x2eb
	.uaword	.LFB254
	.uaword	.LFE254
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x85d0
	.uleb128 0x35
	.string	"scu"
	.byte	0x1
	.uahalf	0x17e
	.uaword	0x7a4d
	.sleb128 -268214272
	.uleb128 0x21
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x17f
	.uaword	0x2eb
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"IfxScuWdt_getSafetyWatchdogPassword"
	.byte	0x1
	.uahalf	0x18b
	.byte	0x1
	.uaword	0x2eb
	.uaword	.LFB255
	.uaword	.LFE255
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8639
	.uleb128 0x38
	.uaword	0x7c1d
	.uaword	.LBB110
	.uaword	.LBE110
	.byte	0x1
	.uahalf	0x18d
	.uleb128 0x27
	.uaword	.LBB111
	.uaword	.LBE111
	.uleb128 0x28
	.uaword	0x7c55
	.uleb128 0x3e
	.uaword	0x7c61
	.sleb128 -268213592
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_initConfig"
	.byte	0x1
	.uahalf	0x191
	.byte	0x1
	.uaword	.LFB256
	.uaword	.LFE256
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8673
	.uleb128 0x34
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x191
	.uaword	0x8673
	.byte	0x1
	.byte	0x64
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x78fb
	.uleb128 0x3f
	.byte	0x1
	.string	"IfxScuWdt_setCpuEndinit"
	.byte	0x1
	.uahalf	0x267
	.byte	0x1
	.byte	0x1
	.uaword	0x86a9
	.uleb128 0x20
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x267
	.uaword	0x2eb
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_initCpuWatchdog"
	.byte	0x1
	.uahalf	0x1a0
	.byte	0x1
	.uaword	.LFB257
	.uaword	.LFE257
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x87b3
	.uleb128 0x40
	.string	"wdt"
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x7ad5
	.byte	0x1
	.byte	0x64
	.uleb128 0x34
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x87b3
	.byte	0x1
	.byte	0x65
	.uleb128 0x36
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0x6b65
	.uaword	.LLST24
	.uleb128 0x36
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x1a3
	.uaword	0x6ba9
	.uaword	.LLST25
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x48
	.uaword	0x8742
	.uleb128 0x42
	.string	"eicon1"
	.byte	0x1
	.uahalf	0x1df
	.uaword	0x5902
	.uaword	.LLST26
	.uleb128 0x42
	.string	"scu"
	.byte	0x1
	.uahalf	0x1e0
	.uaword	0x7a4d
	.uaword	.LLST27
	.byte	0
	.uleb128 0x38
	.uaword	0x8679
	.uaword	.LBB121
	.uaword	.LBE121
	.byte	0x1
	.uahalf	0x1f9
	.uleb128 0x39
	.uaword	0x869c
	.uaword	.LLST28
	.uleb128 0x3b
	.uaword	0x7a53
	.uaword	.LBB123
	.uaword	.LBE123
	.byte	0x1
	.uahalf	0x269
	.uaword	0x8792
	.uleb128 0x27
	.uaword	.LBB124
	.uaword	.LBE124
	.uleb128 0x28
	.uaword	0x7a75
	.uleb128 0x27
	.uaword	.LBB125
	.uaword	.LBE125
	.uleb128 0x29
	.uaword	0x7a82
	.uaword	.LLST29
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	0x7b15
	.uaword	.LBB126
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.uahalf	0x269
	.uleb128 0x31
	.uaword	0x7b49
	.uleb128 0x39
	.uaword	0x7b3d
	.uaword	.LLST30
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x87b9
	.uleb128 0x44
	.uaword	0x78fb
	.uleb128 0x3f
	.byte	0x1
	.string	"IfxScuWdt_setSafetyEndinit"
	.byte	0x1
	.uahalf	0x29e
	.byte	0x1
	.byte	0x1
	.uaword	0x87f1
	.uleb128 0x20
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x29e
	.uaword	0x2eb
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_initSafetyWatchdog"
	.byte	0x1
	.uahalf	0x1fd
	.byte	0x1
	.uaword	.LFB258
	.uaword	.LFE258
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x88c3
	.uleb128 0x40
	.string	"wdt"
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0x7c6e
	.byte	0x1
	.byte	0x64
	.uleb128 0x34
	.uaword	.LASF42
	.byte	0x1
	.uahalf	0x1fd
	.uaword	0x87b3
	.byte	0x1
	.byte	0x65
	.uleb128 0x36
	.uaword	.LASF38
	.byte	0x1
	.uahalf	0x1ff
	.uaword	0x6c2f
	.uaword	.LLST31
	.uleb128 0x36
	.uaword	.LASF43
	.byte	0x1
	.uahalf	0x200
	.uaword	0x6c71
	.uaword	.LLST32
	.uleb128 0x41
	.uaword	.Ldebug_ranges0+0x78
	.uaword	0x888e
	.uleb128 0x42
	.string	"seicon1"
	.byte	0x1
	.uahalf	0x23d
	.uaword	0x65e0
	.uaword	.LLST33
	.uleb128 0x42
	.string	"scu"
	.byte	0x1
	.uahalf	0x23e
	.uaword	0x7a4d
	.uaword	.LLST34
	.byte	0
	.uleb128 0x43
	.uaword	0x87be
	.uaword	.LBB137
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x257
	.uleb128 0x39
	.uaword	0x87e4
	.uaword	.LLST35
	.uleb128 0x43
	.uaword	0x7b56
	.uaword	.LBB138
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x2a0
	.uleb128 0x39
	.uaword	0x7b81
	.uaword	.LLST35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_serviceCpuWatchdog"
	.byte	0x1
	.uahalf	0x25b
	.byte	0x1
	.uaword	.LFB259
	.uaword	.LFE259
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8975
	.uleb128 0x37
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x25b
	.uaword	0x2eb
	.uaword	.LLST37
	.uleb128 0x38
	.uaword	0x8679
	.uaword	.LBB151
	.uaword	.LBE151
	.byte	0x1
	.uahalf	0x25d
	.uleb128 0x39
	.uaword	0x869c
	.uaword	.LLST38
	.uleb128 0x3b
	.uaword	0x7a53
	.uaword	.LBB153
	.uaword	.LBE153
	.byte	0x1
	.uahalf	0x269
	.uaword	0x8956
	.uleb128 0x27
	.uaword	.LBB154
	.uaword	.LBE154
	.uleb128 0x28
	.uaword	0x7a75
	.uleb128 0x27
	.uaword	.LBB155
	.uaword	.LBE155
	.uleb128 0x29
	.uaword	0x7a82
	.uaword	.LLST39
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	0x7b15
	.uaword	.LBB156
	.uaword	.Ldebug_ranges0+0xa8
	.byte	0x1
	.uahalf	0x269
	.uleb128 0x31
	.uaword	0x7b49
	.uleb128 0x32
	.uaword	0x7b3d
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_serviceSafetyWatchdog"
	.byte	0x1
	.uahalf	0x261
	.byte	0x1
	.uaword	.LFB260
	.uaword	.LFE260
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x89f0
	.uleb128 0x37
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x261
	.uaword	0x2eb
	.uaword	.LLST40
	.uleb128 0x38
	.uaword	0x87be
	.uaword	.LBB164
	.uaword	.LBE164
	.byte	0x1
	.uahalf	0x263
	.uleb128 0x39
	.uaword	0x87e4
	.uaword	.LLST41
	.uleb128 0x38
	.uaword	0x7b56
	.uaword	.LBB165
	.uaword	.LBE165
	.byte	0x1
	.uahalf	0x2a0
	.uleb128 0x39
	.uaword	0x7b81
	.uaword	.LLST41
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x45
	.uaword	0x8679
	.uaword	.LFB261
	.uaword	.LFE261
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8a63
	.uleb128 0x39
	.uaword	0x869c
	.uaword	.LLST43
	.uleb128 0x3b
	.uaword	0x7a53
	.uaword	.LBB167
	.uaword	.LBE167
	.byte	0x1
	.uahalf	0x269
	.uaword	0x8a45
	.uleb128 0x27
	.uaword	.LBB168
	.uaword	.LBE168
	.uleb128 0x28
	.uaword	0x7a75
	.uleb128 0x27
	.uaword	.LBB169
	.uaword	.LBE169
	.uleb128 0x29
	.uaword	0x7a82
	.uaword	.LLST44
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x43
	.uaword	0x7b15
	.uaword	.LBB170
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.uahalf	0x269
	.uleb128 0x31
	.uaword	0x7b49
	.uleb128 0x32
	.uaword	0x7b3d
	.byte	0x1
	.byte	0x6f
	.byte	0
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_setGlobalEndinit"
	.byte	0x1
	.uahalf	0x26d
	.byte	0x1
	.uaword	.LFB262
	.uaword	.LFE262
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8ac4
	.uleb128 0x34
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x26d
	.uaword	0x2eb
	.byte	0x1
	.byte	0x54
	.uleb128 0x35
	.string	"scu"
	.byte	0x1
	.uahalf	0x26f
	.uaword	0x7a4d
	.sleb128 -268214272
	.uleb128 0x36
	.uaword	.LASF40
	.byte	0x1
	.uahalf	0x271
	.uaword	0x58c3
	.uaword	.LLST45
	.byte	0
	.uleb128 0x33
	.byte	0x1
	.string	"IfxScuWdt_setGlobalSafetyEndinit"
	.byte	0x1
	.uahalf	0x285
	.byte	0x1
	.uaword	.LFB263
	.uaword	.LFE263
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8b2b
	.uleb128 0x34
	.uaword	.LASF34
	.byte	0x1
	.uahalf	0x285
	.uaword	0x2eb
	.byte	0x1
	.byte	0x54
	.uleb128 0x35
	.string	"scu"
	.byte	0x1
	.uahalf	0x287
	.uaword	0x7a4d
	.sleb128 -268214272
	.uleb128 0x36
	.uaword	.LASF41
	.byte	0x1
	.uahalf	0x28a
	.uaword	0x65a0
	.uaword	.LLST46
	.byte	0
	.uleb128 0x45
	.uaword	0x87be
	.uaword	.LFB264
	.uaword	.LFE264
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8b64
	.uleb128 0x39
	.uaword	0x87e4
	.uaword	.LLST47
	.uleb128 0x38
	.uaword	0x7b56
	.uaword	.LBB174
	.uaword	.LBE174
	.byte	0x1
	.uahalf	0x2a0
	.uleb128 0x39
	.uaword	0x7b81
	.uaword	.LLST48
	.byte	0
	.byte	0
	.uleb128 0x3d
	.byte	0x1
	.string	"IfxScuWdt_enableWatchdogWithDebugger"
	.byte	0x1
	.uahalf	0x2a4
	.byte	0x1
	.uaword	0x33e
	.uaword	.LFB265
	.uaword	.LFE265
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8c44
	.uleb128 0x42
	.string	"status"
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0x33e
	.uaword	.LLST49
	.uleb128 0x42
	.string	"oenEnabled"
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0x33e
	.uaword	.LLST50
	.uleb128 0x42
	.string	"watchdogEnabled"
	.byte	0x1
	.uahalf	0x2a6
	.uaword	0x33e
	.uaword	.LLST51
	.uleb128 0x42
	.string	"ostateValue"
	.byte	0x1
	.uahalf	0x2a7
	.uaword	0x31d
	.uaword	.LLST52
	.uleb128 0x35
	.string	"oecPtr"
	.byte	0x1
	.uahalf	0x2a9
	.uaword	0x8c44
	.sleb128 -268434312
	.uleb128 0x35
	.string	"ostatePtr"
	.byte	0x1
	.uahalf	0x2aa
	.uaword	0x8c44
	.sleb128 -268434304
	.uleb128 0x35
	.string	"ocntrlPtr"
	.byte	0x1
	.uahalf	0x2ab
	.uaword	0x8c44
	.sleb128 -268434308
	.byte	0
	.uleb128 0x7
	.byte	0x4
	.uaword	0x8c4a
	.uleb128 0x11
	.uaword	0x31d
	.uleb128 0x3d
	.byte	0x1
	.string	"IfxScuWdt_getCpuWatchdogStatus"
	.byte	0x1
	.uahalf	0x2da
	.byte	0x1
	.uaword	0x2c0
	.uaword	.LFB266
	.uaword	.LFE266
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8cc9
	.uleb128 0x35
	.string	"scu"
	.byte	0x1
	.uahalf	0x2dc
	.uaword	0x7a4d
	.sleb128 -268214272
	.uleb128 0x43
	.uaword	0x7a53
	.uaword	.LBB176
	.uaword	.Ldebug_ranges0+0xd8
	.byte	0x1
	.uahalf	0x2dd
	.uleb128 0x46
	.uaword	.Ldebug_ranges0+0xd8
	.uleb128 0x28
	.uaword	0x7a75
	.uleb128 0x27
	.uaword	.LBB178
	.uaword	.LBE178
	.uleb128 0x29
	.uaword	0x7a82
	.uaword	.LLST53
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x17
	.uaword	0x37e
	.uaword	0x8cd9
	.uleb128 0x18
	.uaword	0x76ec
	.byte	0x3
	.byte	0
	.uleb128 0x47
	.string	"IfxCpu_cfg_indexMap"
	.byte	0xa
	.byte	0xaa
	.uaword	0x8cf6
	.byte	0x1
	.byte	0x1
	.uleb128 0x44
	.uaword	0x8cc9
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
	.uleb128 0x3
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x4
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
	.uleb128 0x5
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
	.uleb128 0x6
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
	.uleb128 0x35
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0xb
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
	.uleb128 0xd
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
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x12
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
	.uleb128 0x13
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
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0x5
	.byte	0
	.byte	0
	.uleb128 0x1a
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
	.uleb128 0x1b
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
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x1d
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
	.uleb128 0x1e
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x23
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
	.uleb128 0x24
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
	.uleb128 0x25
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
	.uleb128 0x26
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2d
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
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x2e
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
	.uleb128 0x2f
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
	.uleb128 0xb
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
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x33
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
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x39
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
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
	.uleb128 0x3c
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
	.uleb128 0x3e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x3f
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x40
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
	.uleb128 0x41
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x42
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
	.uleb128 0x43
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
	.uleb128 0x44
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x45
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
	.uleb128 0x46
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x47
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
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LFE239
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL22
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL24
	.uaword	.LFE240
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL33
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL36
	.uaword	.LFE243
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL41
	.uaword	.LFE244
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL43
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL45
	.uaword	.LFE245
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL47
	.uaword	.LFE246
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL46
	.uaword	.LVL47
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL48
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL51
	.uaword	.LFE247
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL55
	.uaword	.LFE248
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL54
	.uaword	.LVL55
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL57
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL60
	.uaword	.LFE249
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL64
	.uaword	.LFE250
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL66
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL70
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL81
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL84
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL89
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL101
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL94
	.uaword	.LVL95
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL90
	.uaword	.LVL100
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	.LVL103
	.uaword	.LVL104
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL95
	.uaword	.LVL99
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL96
	.uaword	.LVL97
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL98
	.uaword	.LVL100
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL106
	.uaword	.LVL108
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL109
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL112
	.uaword	.LVL113
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL114
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL119
	.uaword	.LVL120
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL115
	.uaword	.LVL122
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	.LVL125
	.uaword	.LVL126
	.uahalf	0x6
	.byte	0x9e
	.uleb128 0x4
	.uaword	0xf0036000
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x2
	.byte	0x85
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL127
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL130
	.uaword	.LFE259
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL127
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL128
	.uaword	.LVL129
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL133
	.uaword	.LFE260
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL132
	.uaword	.LVL133
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL134
	.uaword	.LVL137
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL137
	.uaword	.LFE261
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL135
	.uaword	.LVL136
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL140
	.uaword	.LVL141
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL143
	.uaword	.LVL144
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL146
	.uaword	.LFE264
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL145
	.uaword	.LVL146
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL147
	.uaword	.LVL151
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL152
	.uaword	.LVL153
	.uahalf	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL153
	.uaword	.LVL154
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x30
	.byte	0x29
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LVL158
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL159
	.uaword	.LVL160
	.uahalf	0xd
	.byte	0x72
	.sleb128 0
	.byte	0x31
	.byte	0x7f
	.sleb128 0
	.byte	0x30
	.byte	0x2e
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	.LVL160
	.uaword	.LFE265
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL147
	.uaword	.LVL148
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL148
	.uaword	.LVL149
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL147
	.uaword	.LVL151
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0x80
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL154
	.uaword	.LVL158
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x9
	.byte	0x80
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL148
	.uaword	.LVL150
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL151
	.uaword	.LVL152
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL154
	.uaword	.LVL155
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL156
	.uaword	.LVL157
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL158
	.uaword	.LVL159
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL162
	.uaword	.LVL163
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x104
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB237
	.uaword	.LFE237-.LFB237
	.uaword	.LFB238
	.uaword	.LFE238-.LFB238
	.uaword	.LFB239
	.uaword	.LFE239-.LFB239
	.uaword	.LFB240
	.uaword	.LFE240-.LFB240
	.uaword	.LFB241
	.uaword	.LFE241-.LFB241
	.uaword	.LFB242
	.uaword	.LFE242-.LFB242
	.uaword	.LFB243
	.uaword	.LFE243-.LFB243
	.uaword	.LFB244
	.uaword	.LFE244-.LFB244
	.uaword	.LFB245
	.uaword	.LFE245-.LFB245
	.uaword	.LFB246
	.uaword	.LFE246-.LFB246
	.uaword	.LFB247
	.uaword	.LFE247-.LFB247
	.uaword	.LFB248
	.uaword	.LFE248-.LFB248
	.uaword	.LFB249
	.uaword	.LFE249-.LFB249
	.uaword	.LFB250
	.uaword	.LFE250-.LFB250
	.uaword	.LFB251
	.uaword	.LFE251-.LFB251
	.uaword	.LFB252
	.uaword	.LFE252-.LFB252
	.uaword	.LFB253
	.uaword	.LFE253-.LFB253
	.uaword	.LFB254
	.uaword	.LFE254-.LFB254
	.uaword	.LFB255
	.uaword	.LFE255-.LFB255
	.uaword	.LFB256
	.uaword	.LFE256-.LFB256
	.uaword	.LFB257
	.uaword	.LFE257-.LFB257
	.uaword	.LFB258
	.uaword	.LFE258-.LFB258
	.uaword	.LFB259
	.uaword	.LFE259-.LFB259
	.uaword	.LFB260
	.uaword	.LFE260-.LFB260
	.uaword	.LFB261
	.uaword	.LFE261-.LFB261
	.uaword	.LFB262
	.uaword	.LFE262-.LFB262
	.uaword	.LFB263
	.uaword	.LFE263-.LFB263
	.uaword	.LFB264
	.uaword	.LFE264-.LFB264
	.uaword	.LFB265
	.uaword	.LFE265-.LFB265
	.uaword	.LFB266
	.uaword	.LFE266-.LFB266
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	.LBB71
	.uaword	.LBE71
	.uaword	0
	.uaword	0
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	.LBB80
	.uaword	.LBE80
	.uaword	0
	.uaword	0
	.uaword	.LBB90
	.uaword	.LBE90
	.uaword	.LBB93
	.uaword	.LBE93
	.uaword	0
	.uaword	0
	.uaword	.LBB120
	.uaword	.LBE120
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	0
	.uaword	0
	.uaword	.LBB126
	.uaword	.LBE126
	.uaword	.LBB129
	.uaword	.LBE129
	.uaword	0
	.uaword	0
	.uaword	.LBB136
	.uaword	.LBE136
	.uaword	.LBB143
	.uaword	.LBE143
	.uaword	0
	.uaword	0
	.uaword	.LBB137
	.uaword	.LBE137
	.uaword	.LBB142
	.uaword	.LBE142
	.uaword	0
	.uaword	0
	.uaword	.LBB156
	.uaword	.LBE156
	.uaword	.LBB159
	.uaword	.LBE159
	.uaword	0
	.uaword	0
	.uaword	.LBB170
	.uaword	.LBE170
	.uaword	.LBB173
	.uaword	.LBE173
	.uaword	0
	.uaword	0
	.uaword	.LBB176
	.uaword	.LBE176
	.uaword	.LBB180
	.uaword	.LBE180
	.uaword	0
	.uaword	0
	.uaword	.LFB237
	.uaword	.LFE237
	.uaword	.LFB238
	.uaword	.LFE238
	.uaword	.LFB239
	.uaword	.LFE239
	.uaword	.LFB240
	.uaword	.LFE240
	.uaword	.LFB241
	.uaword	.LFE241
	.uaword	.LFB242
	.uaword	.LFE242
	.uaword	.LFB243
	.uaword	.LFE243
	.uaword	.LFB244
	.uaword	.LFE244
	.uaword	.LFB245
	.uaword	.LFE245
	.uaword	.LFB246
	.uaword	.LFE246
	.uaword	.LFB247
	.uaword	.LFE247
	.uaword	.LFB248
	.uaword	.LFE248
	.uaword	.LFB249
	.uaword	.LFE249
	.uaword	.LFB250
	.uaword	.LFE250
	.uaword	.LFB251
	.uaword	.LFE251
	.uaword	.LFB252
	.uaword	.LFE252
	.uaword	.LFB253
	.uaword	.LFE253
	.uaword	.LFB254
	.uaword	.LFE254
	.uaword	.LFB255
	.uaword	.LFE255
	.uaword	.LFB256
	.uaword	.LFE256
	.uaword	.LFB257
	.uaword	.LFE257
	.uaword	.LFB258
	.uaword	.LFE258
	.uaword	.LFB259
	.uaword	.LFE259
	.uaword	.LFB260
	.uaword	.LFE260
	.uaword	.LFB261
	.uaword	.LFE261
	.uaword	.LFB262
	.uaword	.LFE262
	.uaword	.LFB263
	.uaword	.LFE263
	.uaword	.LFB264
	.uaword	.LFE264
	.uaword	.LFB265
	.uaword	.LFE265
	.uaword	.LFB266
	.uaword	.LFE266
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF37:
	.string	"newPassword"
.LASF34:
	.string	"password"
.LASF36:
	.string	"watchdog"
.LASF38:
	.string	"wdt_con0"
.LASF43:
	.string	"wdt_con1"
.LASF39:
	.string	"coreId"
.LASF25:
	.string	"reserved_10"
.LASF31:
	.string	"reserved_11"
.LASF6:
	.string	"reserved_12"
.LASF13:
	.string	"reserved_13"
.LASF9:
	.string	"reserved_14"
.LASF5:
	.string	"reserved_15"
.LASF26:
	.string	"reserved_16"
.LASF20:
	.string	"reserved_17"
.LASF21:
	.string	"reserved_18"
.LASF28:
	.string	"reserved_19"
.LASF35:
	.string	"reload"
.LASF27:
	.string	"reserved_20"
.LASF29:
	.string	"reserved_21"
.LASF7:
	.string	"reserved_22"
.LASF18:
	.string	"reserved_23"
.LASF10:
	.string	"reserved_24"
.LASF11:
	.string	"reserved_26"
.LASF12:
	.string	"reserved_27"
.LASF22:
	.string	"reserved_28"
.LASF14:
	.string	"reserved_29"
.LASF32:
	.string	"REQSLP"
.LASF0:
	.string	"reserved_0"
.LASF16:
	.string	"reserved_1"
.LASF24:
	.string	"reserved_2"
.LASF30:
	.string	"reserved_3"
.LASF1:
	.string	"reserved_4"
.LASF2:
	.string	"reserved_5"
.LASF3:
	.string	"reserved_6"
.LASF17:
	.string	"reserved_7"
.LASF4:
	.string	"reserved_8"
.LASF23:
	.string	"reserved_9"
.LASF8:
	.string	"reserved_30"
.LASF19:
	.string	"reserved_31"
.LASF40:
	.string	"eicon0"
.LASF41:
	.string	"seicon0"
.LASF42:
	.string	"config"
.LASF33:
	.string	"PMST"
.LASF15:
	.string	"ENDINIT"
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
