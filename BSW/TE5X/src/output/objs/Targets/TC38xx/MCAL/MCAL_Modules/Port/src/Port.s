	.file	"Port.c"
.section .text,"ax",@progbits
.Ltext0:
.section Code.Cpu0,"ax",@progbits
	.align 1
	.global	Port_Init
	.type	Port_Init, @function
Port_Init:
.LFB19:
	.file 1 "Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
	.loc 1 645 0
.LVL0:
	.loc 1 682 0
	movh.a	%a2, hi:Port_kConfigPtr
	lea	%a13, [%a2] lo:Port_kConfigPtr
	movh.a	%a15, 61444
.LBB161:
.LBB162:
.LBB163:
.LBB164:
.LBB165:
.LBB166:
.LBB167:
.LBB168:
	.loc 1 1876 0
	movh	%d8, 241
.LBE168:
.LBE167:
.LBE166:
.LBE165:
.LBB180:
.LBB181:
	.loc 1 2153 0
	movh.a	%a14, hi:Port_kAvailablePins
.LBE181:
.LBE180:
	.loc 1 1802 0
	mov.d	%d11, %a13
.LBE164:
.LBE163:
.LBE162:
.LBE161:
	.loc 1 645 0
	sub.a	%SP, 16
.LCFI0:
	.loc 1 682 0
	st.a	[%a2] lo:Port_kConfigPtr, %a4
.LVL1:
	lea	%a15, [%a15] -24512
.LBB248:
.LBB247:
.LBB192:
.LBB189:
	.loc 1 1758 0
	mov	%d9, 0
	.loc 1 1763 0
	mov	%d15, 0
.LBB184:
.LBB177:
.LBB172:
.LBB169:
	.loc 1 1876 0
	addi	%d8, %d8, -1017
.LBE169:
.LBE172:
.LBE177:
.LBE184:
.LBB185:
.LBB182:
	.loc 1 2153 0
	lea	%a14, [%a14] lo:Port_kAvailablePins
.LVL2:
.L6:
.LBE182:
.LBE185:
.LBB186:
.LBB178:
.LBB173:
.LBB170:
	.loc 1 1876 0
	mov	%d2, 1
	sh	%d2, %d2, %d15
.LBE170:
.LBE173:
	.loc 1 1958 0
	lt.u	%d3, %d15, 32
.LBB174:
.LBB171:
	.loc 1 1876 0
	and	%d2, %d8
.LBE171:
.LBE174:
	.loc 1 1958 0
	jz	%d3, .L63
.LVL3:
.LBE178:
.LBE186:
	.loc 1 1770 0
	jnz	%d2, .L64
.LVL4:
.L4:
	.loc 1 1764 0
	add	%d15, 1
.LVL5:
	.loc 1 1763 0
	ne	%d2, %d15, 41
	lea	%a15, [%a15] 256
	jnz	%d2, .L6
.LVL6:
.LBE189:
.LBE192:
	.loc 1 1494 0
	ld.a	%a15, [%a4] 8
	.loc 1 1500 0
	ld.a	%a2, [%a4] 12
	.loc 1 1505 0
	ld.a	%a4, [%a4] 4
	movh.a	%a12, 61444
	.loc 1 1489 0
	mov	%d2, 0
.LBB193:
.LBB194:
.LBB195:
.LBB196:
	.loc 1 2497 0
	movh	%d13, 96
.LBE196:
.LBE195:
.LBE194:
.LBE193:
	.loc 1 1494 0
	st.a	[%SP] 4, %a15
.LVL7:
	.loc 1 1500 0
	st.a	[%SP] 12, %a2
.LVL8:
	.loc 1 1505 0
	st.a	[%SP] 8, %a4
.LVL9:
	lea	%a12, [%a12] -24576
	.loc 1 1489 0
	st.w	[%SP]0, %d2
	.loc 1 1510 0
	mov	%d8, 0
.LBB203:
.LBB201:
.LBB199:
.LBB197:
	.loc 1 2497 0
	addi	%d13, %d13, 24576
.LBE197:
.LBE199:
.LBE201:
.LBE203:
.LBB204:
.LBB205:
.LBB206:
	.file 2 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\Mcal_Compiler.h"
	.loc 2 615 0
	mov	%d12, 1
.LVL10:
.L21:
.LBE206:
.LBE205:
.LBE204:
.LBB209:
.LBB210:
	.loc 1 1958 0
	lt.u	%d15, %d8, 32
	jz	%d15, .L65
.LVL11:
.LBB211:
.LBB212:
	.loc 1 1876 0
	movh	%d15, 241
	addi	%d15, %d15, -1017
	extr.u	%d15, %d15, %d8, 1
.LBE212:
.LBE211:
.LBE210:
.LBE209:
	.loc 1 1518 0
	jz	%d15, .L9
	.loc 1 1522 0
	movh.a	%a2, hi:Port_kConfigPtr
	ld.a	%a15, [%a2] lo:Port_kConfigPtr
	ld.w	%d2, [%SP]0
	ld.w	%d15, [%a15]0
	madd	%d2, %d15, %d2, 56
	mov.a	%a15, %d2
.LVL12:
.L22:
	.loc 1 1555 0
	ld.w	%d3, [%a15] 16
	st.w	[%a12]0, %d3
.LVL13:
.L23:
	.loc 1 1569 0
	lea	%a4, [%a12] 80
	ld.w	%d4, [%a15] 52
	call	Mcal_WritePeripEndInitProtReg
.LVL14:
.LBB216:
.LBB217:
	.loc 1 2189 0
	movh.a	%a3, hi:Port_kAvailablePins
	lea	%a3, [%a3] lo:Port_kAvailablePins
.LBE217:
.LBE216:
	.loc 1 1574 0
	ld.w	%d15, [%a15]0
.LBB220:
.LBB218:
	.loc 1 2189 0
	addsc.a	%a2, %a3, %d8, 1
.LBE218:
.LBE220:
	.loc 1 1574 0
	st.w	[%a12] 16, %d15
.LVL15:
.LBB221:
.LBB219:
	.loc 1 2189 0
	ld.hu	%d15, [%a2]0
.LVL16:
.LBE219:
.LBE221:
	.loc 1 1582 0
	and	%d2, %d15, 240
	jz	%d2, .L11
	.loc 1 1587 0
	ld.w	%d2, [%a15] 4
	st.w	[%a12] 20, %d2
.L11:
.LVL17:
.LBB222:
.LBB223:
	.loc 1 2189 0
	mov	%d2, 3840
	and	%d2, %d15
.LBE223:
.LBE222:
	.loc 1 1593 0
	jz	%d2, .L12
	.loc 1 1598 0
	ld.w	%d3, [%a15] 8
	st.w	[%a12] 24, %d3
.L12:
.LVL18:
.LBB224:
.LBB225:
	.loc 1 2189 0
	insert	%d15, %d15, 0, 0, 12
.LVL19:
.LBE225:
.LBE224:
	.loc 1 1604 0
	jz	%d15, .L13
	.loc 1 1606 0
	ld.w	%d15, [%a15] 12
	st.w	[%a12] 28, %d15
.L13:
.LVL20:
.LBB226:
.LBB202:
	.loc 1 2574 0
	ge.u	%d15, %d8, 32
	jnz	%d15, .L14
.LVL21:
.LBB200:
.LBB198:
	.loc 1 2497 0
	mov	%d10, 1
	sh	%d10, %d10, %d8
.LVL22:
	and	%d15, %d10, %d13
.LBE198:
.LBE200:
.LBE202:
.LBE226:
	.loc 1 1616 0
	jz	%d15, .L15
	ld.a	%a13, [%SP] 4
	lea	%a15, [%a12] 160
.LVL23:
	lea	%a14, [%a12] 188
	.loc 1 1631 0
	mov	%d9, 0
.LBB227:
	.loc 1 1641 0
	eq	%d11, %d8, 14
.LVL24:
.L18:
.LBE227:
	.loc 1 1636 0
	ld.w	%d4, [%a13]0
.LVL25:
.LBB228:
.LBB229:
	.loc 1 2723 0
	sh	%d15, %d4, -16
.LVL26:
.LBE229:
.LBE228:
	.loc 1 1636 0
	jnz	%d15, .L16
.LBB230:
	.loc 1 1641 0
	eq	%d15, %d9, 5
.LVL27:
	and	%d15, %d11
	jz	%d15, .L17
.LVL28:
.LBB208:
.LBB207:
	.loc 2 615 0
#APP
	# 615 ".\output\inc/..\..\Targets\TC38xx\MCAL\MCAL_Modules\McalLib\inc\Mcal_Compiler.h" 1
	mov %d14,%d12  
                     mov %d15,%d12  
                     extr.u %d2,%d4,%e14
	# 0 "" 2
.LVL29:
#NO_APP
.LBE207:
.LBE208:
	.loc 1 1643 0
	jeq	%d2, 1, .L66
.LVL30:
.L17:
	.loc 1 1657 0
	mov.aa	%a4, %a15
	call	Mcal_WritePeripEndInitProtReg
.LVL31:
.L16:
.LBE230:
	.loc 1 1660 0
	add.a	%a15, 4
.LVL32:
	.loc 1 1661 0
	add.a	%a13, 4
.LVL33:
	.loc 1 1631 0
	add	%d9, 1
.LVL34:
	jne.a	%a15, %a14, .L18
	ld.a	%a15, [%SP] 4
.LVL35:
	lea	%a15, [%a15] 28
	st.a	[%SP] 4, %a15
.LVL36:
.L15:
.LBB231:
.LBB232:
.LBB233:
.LBB234:
	.loc 1 2608 0
	mov	%d15, 2049
	and	%d15, %d10
.LVL37:
.LBE234:
.LBE233:
.LBE232:
.LBE231:
	.loc 1 1674 0
	jnz	%d15, .L67
.L26:
.LVL38:
.LBB238:
.LBB239:
.LBB240:
.LBB241:
	.loc 1 2846 0
	and	%d10, %d10, 7
.LVL39:
.L19:
.LBE241:
.LBE240:
.LBE239:
.LBE238:
	.loc 1 1698 0
	jnz	%d10, .L68
.LVL40:
.L20:
	.loc 1 1719 0
	ld.w	%d2, [%SP]0
	add	%d2, 1
	st.w	[%SP]0, %d2
.LVL41:
.L9:
	.loc 1 1510 0
	add	%d8, 1
.LVL42:
	ne	%d15, %d8, 41
	lea	%a12, [%a12] 256
	jnz	%d15, .L21
	ret
.LVL43:
.L63:
	addi	%d3, %d15, -32
.LBB242:
.LBB190:
.LBB187:
.LBB179:
.LBB175:
.LBB176:
	.loc 1 1912 0
	mov	%d2, 1
	sh	%d2, %d2, %d3
	and	%d2, %d2, 263
.LVL44:
.LBE176:
.LBE175:
.LBE179:
.LBE187:
	.loc 1 1770 0
	jz	%d2, .L4
.LVL45:
.L64:
	.loc 1 1783 0
	ld.a	%a2, [%a4]0
	mul	%d10, %d9, 56
	mov.aa	%a4, %a15
	mov.aa	%a12, %a13
	addsc.a	%a2, %a2, %d10, 0
	ld.w	%d4, [%a2] 20
	call	Mcal_WritePeripEndInitProtReg
.LVL46:
.LBB188:
.LBB183:
	.loc 1 2153 0
	addsc.a	%a2, %a14, %d15, 1
	.loc 1 2152 0
	ld.h	%d2, [%a2]0
	andn	%d2, %d2, ~(-256)
.LBE183:
.LBE188:
	.loc 1 1793 0
	extr.u	%d2, %d2, 0, 16
	jnz	%d2, .L69
.L5:
	.loc 1 1806 0
	add	%d9, 1
.LVL47:
	ld.a	%a4, [%a12]0
	j	.L4
.LVL48:
.L65:
	addi	%d2, %d8, -32
.LBE190:
.LBE242:
.LBB243:
.LBB215:
.LBB213:
.LBB214:
	.loc 1 1912 0
	mov	%d15, 1
	sh	%d15, %d15, %d2
.LVL49:
	and	%d2, %d15, 263
.LVL50:
.LBE214:
.LBE213:
.LBE215:
.LBE243:
	.loc 1 1518 0
	jz	%d2, .L9
	.loc 1 1522 0
	movh.a	%a2, hi:Port_kConfigPtr
	ld.a	%a15, [%a2] lo:Port_kConfigPtr
	ld.w	%d3, [%SP]0
	ld.w	%d2, [%a15]0
.LVL51:
	madd	%d3, %d2, %d3, 56
	mov.a	%a15, %d3
.LVL52:
	.loc 1 1549 0
	jnz.t	%d15, 8, .L23
	j	.L22
.LVL53:
.L68:
	.loc 1 1715 0
	ld.a	%a2, [%SP] 8
	lea	%a4, [%a12] 96
.LVL54:
	ld.w	%d4, [%a2+]4
	st.a	[%SP] 8, %a2
	call	Mcal_WritePeripEndInitProtReg
.LVL55:
	j	.L20
.LVL56:
.L67:
	.loc 1 1692 0
	ld.a	%a2, [%SP] 12
	lea	%a4, [%a12] 100
.LVL57:
	ld.w	%d4, [%a2+]4
	st.a	[%SP] 12, %a2
	call	Mcal_WriteSafetyEndInitProtReg
.LVL58:
	j	.L26
.LVL59:
.L14:
	addi	%d15, %d8, -32
.LBB244:
.LBB237:
.LBB235:
.LBB236:
	.loc 1 2641 0
	mov	%d10, 1
	sh	%d10, %d10, %d15
	and	%d10, %d10, 262
.LVL60:
.LBE236:
.LBE235:
.LBE237:
.LBE244:
	.loc 1 1674 0
	jz	%d10, .L20
.LVL61:
	.loc 1 1692 0
	ld.a	%a3, [%SP] 12
	lea	%a4, [%a12] 100
.LVL62:
	ld.w	%d4, [%a3+]4
	st.a	[%SP] 12, %a3
.LVL63:
	call	Mcal_WriteSafetyEndInitProtReg
.LVL64:
	j	.L19
.LVL65:
.L69:
.LBB245:
.LBB191:
	.loc 1 1802 0
	mov.a	%a3, %d11
	lea	%a4, [%a15] 4
	ld.a	%a2, [%a3]0
	ld.a	%a2, [%a2]0
	addsc.a	%a2, %a2, %d10, 0
	ld.w	%d4, [%a2] 24
	call	Mcal_WritePeripEndInitProtReg
.LVL66:
	j	.L5
.LVL67:
.L66:
.LBE191:
.LBE245:
.LBB246:
	.loc 1 1645 0
	movh.a	%a2, 61444
	lea	%a2, [%a2] -20896
	ld.w	%d4, [%a2]0
.LVL68:
	.loc 1 1646 0
	mov.aa	%a4, %a2
	insert	%d4, %d4, 0, 11, 1
.LVL69:
	call	Mcal_WritePeripEndInitProtReg
.LVL70:
	.loc 1 1647 0
	movh.a	%a3, 61444
	lea	%a3, [%a3] -20968
	ld.w	%d15, [%a3]0
	insert	%d15, %d15, 2, 27, 5
	st.w	[%a3]0, %d15
	ld.w	%d4, [%a13]0
	j	.L17
.LBE246:
.LBE247:
.LBE248:
.LFE19:
	.size	Port_Init, .-Port_Init
	.align 1
	.global	Port_SetPinDirection
	.type	Port_SetPinDirection, @function
Port_SetPinDirection:
.LFB20:
	.loc 1 743 0
.LVL71:
.LBB249:
.LBB250:
	.loc 1 2318 0
	extr.u	%d1, %d4, 4, 8
.LVL72:
.LBE250:
.LBE249:
.LBB251:
.LBB252:
	.loc 1 2352 0
	and	%d8, %d4, 15
.LVL73:
.LBE252:
.LBE251:
	.loc 1 828 0
	mov	%d2, 0
	jz	%d1, .L71
.LBB253:
.LBB254:
.LBB255:
.LBB256:
	.loc 1 1876 0
	mov.a	%a15, %d1
	movh	%d0, 241
.LBE256:
.LBE255:
.LBE254:
.LBE253:
	.loc 1 828 0
	mov	%d15, 0
.LBB268:
.LBB267:
.LBB260:
.LBB257:
	.loc 1 1876 0
	addi	%d0, %d0, -1017
	add.a	%a15, -1
.LVL74:
.L72:
	addi	%d3, %d15, -32
.LBE257:
.LBE260:
.LBB261:
.LBB262:
	.loc 1 1912 0
	mov	%d6, 1
	sh	%d6, %d6, %d3
.LBE262:
.LBE261:
.LBB264:
.LBB258:
	.loc 1 1876 0
	mov	%d3, 1
	sh	%d3, %d3, %d15
	ge.u	%d7, %d15, 32
.LBE258:
.LBE264:
.LBB265:
.LBB263:
	.loc 1 1912 0
	and	%d6, %d6, 263
.LBE263:
.LBE265:
.LBB266:
.LBB259:
	.loc 1 1876 0
	and	%d3, %d0
	sel	%d3, %d7, %d6, %d3
	cadd	%d2, %d3, %d2, 1
.LVL75:
.LBE259:
.LBE266:
.LBE267:
.LBE268:
	.loc 1 828 0
	add	%d15, 1
.LVL76:
	loop	%a15, .L72
	mul	%d2, %d2, 56
.LVL77:
.L71:
	.loc 1 848 0
	movh.a	%a15, hi:Port_kConfigPtr
	ld.a	%a15, [%a15] lo:Port_kConfigPtr
	.loc 1 847 0
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d2, 0
.LVL78:
	.loc 1 862 0
	ld.w	%d15, [%a15] 32
	extr.u	%d15, %d15, %d8, 1
	.loc 1 861 0
	jz	%d15, .L70
.LVL79:
	.loc 1 896 0
	and	%d15, %d8, 12
.LBB269:
.LBB270:
	.loc 1 1842 0
	sh	%d1, %d1, 8
.LVL80:
.LBE270:
.LBE269:
	.loc 1 902 0
	addsc.a	%a15, %a15, %d8, 0
.LVL81:
	add	%d1, %d15
	.loc 1 896 0
	mov.a	%a3, %d1
	.loc 1 902 0
	ld.bu	%d2, [%a15]0
.LVL82:
	.loc 1 896 0
	lea	%a2, [%a3] -24560
	.loc 1 902 0
	andn	%d15, %d2, ~(-128)
	.loc 1 896 0
	addih.a	%a2, %a2, 61444
.LVL83:
	.loc 1 902 0
	jeq	%d15, %d5, .L81
.LBB271:
	.loc 1 912 0
	and	%d4, %d4, 3
.LVL84:
	ld.bu	%d15, [%a15] 36
	sh	%d4, 3
#APP
	# 912 "Targets\TC38xx\MCAL\MCAL_Modules\Port\src\Port.c" 1
	imask %e4,%d15,%d4,8
	# 0 "" 2
.LVL85:
	# 912 "Targets\TC38xx\MCAL\MCAL_Modules\Port\src\Port.c" 1
	ldmst [%a2]0,%e4
	# 0 "" 2
.LVL86:
#NO_APP
.L70:
	ret
.LVL87:
.L81:
.LBE271:
.LBB272:
	.loc 1 905 0
	and	%d4, %d4, 3
.LVL88:
	sh	%d4, 3
#APP
	# 905 "Targets\TC38xx\MCAL\MCAL_Modules\Port\src\Port.c" 1
	imask %e2,%d2,%d4,8
	# 0 "" 2
.LVL89:
	# 905 "Targets\TC38xx\MCAL\MCAL_Modules\Port\src\Port.c" 1
	ldmst [%a2]0,%e2
	# 0 "" 2
#NO_APP
.LBE272:
	ret
.LFE20:
	.size	Port_SetPinDirection, .-Port_SetPinDirection
	.align 1
	.global	Port_RefreshPortDirection
	.type	Port_RefreshPortDirection, @function
Port_RefreshPortDirection:
.LFB21:
	.loc 1 953 0
.LVL90:
	.loc 1 1011 0
	movh.a	%a15, hi:Port_kConfigPtr
	ld.a	%a7, [%a15] lo:Port_kConfigPtr
	movh.a	%a3, 61444
.LBB273:
.LBB274:
.LBB275:
.LBB276:
	.loc 1 1876 0
	movh	%d0, 241
	movh.a	%a12, hi:Port_kAvailablePins
.LBE276:
.LBE275:
.LBE274:
.LBE273:
	.loc 1 1011 0
	lea	%a3, [%a3] -24560
	.loc 1 987 0
	mov	%d7, 0
	.loc 1 986 0
	mov	%d5, 0
.LBB288:
.LBB285:
.LBB280:
.LBB277:
	.loc 1 1876 0
	addi	%d0, %d0, -1017
	lea	%a12, [%a12] lo:Port_kAvailablePins
.LBE277:
.LBE280:
.LBE285:
.LBE288:
	.loc 1 1066 0
	lea	%a5, 40
.LVL91:
.L88:
.LBB289:
.LBB286:
.LBB281:
.LBB278:
	.loc 1 1876 0
	mov	%d15, 1
	sh	%d15, %d15, %d5
.LBE278:
.LBE281:
	.loc 1 1958 0
	lt.u	%d2, %d5, 32
.LBB282:
.LBB279:
	.loc 1 1876 0
	and	%d15, %d0
.LBE279:
.LBE282:
	.loc 1 1958 0
	jz	%d2, .L97
.L84:
.LVL92:
.LBE286:
.LBE289:
	.loc 1 1000 0
	jz	%d15, .L85
	.loc 1 1003 0
	ld.w	%d15, [%a7]0
.LVL93:
	addsc.a	%a15, %a12, %d5, 1
	madd	%d2, %d15, %d7, 56
	ld.hu	%d4, [%a15]0
	.loc 1 1062 0
	mov	%d15, 1
	.loc 1 1003 0
	mov.a	%a4, %d2
.LVL94:
	.loc 1 1066 0
	mov.a	%a15, 15
	.loc 1 1022 0
	ld.w	%d6, [%a4] 32
.LVL95:
	.loc 1 1066 0
	mov	%d2, 0
.LVL96:
.L87:
	.loc 1 1072 0
	extr.u	%d3, %d4, %d2, 1
	addsc.a	%a6, %a3, %d2, 0
	addsc.a	%a2, %a4, %d2, 0
.LVL97:
	jz	%d3, .L86
	.loc 1 1082 0
	and	%d3, %d15, %d6
	jnz	%d3, .L86
	.loc 1 1086 0
	ld.bu	%d3, [%a2]0
	st.b	[%a6]0, %d3
.L86:
.LVL98:
	.loc 1 1109 0
	sh	%d15, 1
.LVL99:
	.loc 1 1112 0
	add	%d2, 1
.LVL100:
	.loc 1 1113 0
	loop	%a15, .L87
	.loc 1 1114 0
	add	%d7, 1
.LVL101:
.L85:
	.loc 1 1116 0
	add	%d5, 1
.LVL102:
	lea	%a3, [%a3] 256
	.loc 1 1117 0
	loop	%a5, .L88
	.loc 1 1119 0
	ret
.LVL103:
.L97:
	addi	%d2, %d5, -32
.LBB290:
.LBB287:
.LBB283:
.LBB284:
	.loc 1 1912 0
	mov	%d15, 1
	sh	%d15, %d15, %d2
	and	%d15, %d15, 263
.LVL104:
	j	.L84
.LBE284:
.LBE283:
.LBE287:
.LBE290:
.LFE21:
	.size	Port_RefreshPortDirection, .-Port_RefreshPortDirection
	.align 1
	.global	Port_SetPinMode
	.type	Port_SetPinMode, @function
Port_SetPinMode:
.LFB22:
	.loc 1 1156 0
.LVL105:
.LBB291:
.LBB292:
	.loc 1 2318 0
	extr.u	%d1, %d4, 4, 8
.LVL106:
.LBE292:
.LBE291:
.LBB293:
.LBB294:
	.loc 1 2352 0
	and	%d8, %d4, 15
.LVL107:
.LBE294:
.LBE293:
	.loc 1 1238 0
	mov	%d2, 0
	jz	%d1, .L99
.LBB295:
.LBB296:
.LBB297:
.LBB298:
	.loc 1 1876 0
	mov.a	%a15, %d1
	movh	%d0, 241
.LBE298:
.LBE297:
.LBE296:
.LBE295:
	.loc 1 1238 0
	mov	%d15, 0
.LBB310:
.LBB309:
.LBB302:
.LBB299:
	.loc 1 1876 0
	addi	%d0, %d0, -1017
	add.a	%a15, -1
.LVL108:
.L100:
	addi	%d3, %d15, -32
.LBE299:
.LBE302:
.LBB303:
.LBB304:
	.loc 1 1912 0
	mov	%d6, 1
	sh	%d6, %d6, %d3
.LBE304:
.LBE303:
.LBB306:
.LBB300:
	.loc 1 1876 0
	mov	%d3, 1
	sh	%d3, %d3, %d15
	ge.u	%d7, %d15, 32
.LBE300:
.LBE306:
.LBB307:
.LBB305:
	.loc 1 1912 0
	and	%d6, %d6, 263
.LBE305:
.LBE307:
.LBB308:
.LBB301:
	.loc 1 1876 0
	and	%d3, %d0
	sel	%d3, %d7, %d6, %d3
	cadd	%d2, %d3, %d2, 1
.LVL109:
.LBE301:
.LBE308:
.LBE309:
.LBE310:
	.loc 1 1238 0
	add	%d15, 1
.LVL110:
	loop	%a15, .L100
	mul	%d2, %d2, 56
.LVL111:
.L99:
	.loc 1 1256 0
	movh.a	%a15, hi:Port_kConfigPtr
	ld.a	%a15, [%a15] lo:Port_kConfigPtr
	.loc 1 1279 0
	ld.a	%a15, [%a15]0
	addsc.a	%a15, %a15, %d2, 0
.LVL112:
	.loc 1 1281 0
	ld.w	%d15, [%a15] 28
	extr.u	%d15, %d15, %d8, 1
	.loc 1 1279 0
	jz	%d15, .L98
	.loc 1 1272 0
	and	%d8, %d8, 12
.LVL113:
.LBB311:
.LBB312:
	.loc 1 1842 0
	sh	%d1, %d1, 8
.LVL114:
	add	%d1, %d8
.LVL115:
.LBE312:
.LBE311:
	.loc 1 1271 0
	mov.a	%a2, %d1
	.loc 1 1322 0
	and	%d15, %d4, 3
	.loc 1 1271 0
	lea	%a15, [%a2] -24560
.LVL116:
	addih.a	%a15, %a15, 61444
	.loc 1 1322 0
	addsc.a	%a2, %a15, %d15, 0
	ld.bu	%d4, [%a2]0
.LVL117:
	.loc 1 1324 0
	andn	%d4, %d4, ~(-64)
.LVL118:
	or	%d5, %d4
.LVL119:
.LBB313:
	.loc 1 1329 0
	sh	%d4, %d15, 3
#APP
	# 1329 "Targets\TC38xx\MCAL\MCAL_Modules\Port\src\Port.c" 1
	imask %e4,%d5,%d4,8
	# 0 "" 2
.LVL120:
	# 1329 "Targets\TC38xx\MCAL\MCAL_Modules\Port\src\Port.c" 1
	ldmst [%a15]0,%e4
	# 0 "" 2
.LVL121:
#NO_APP
.L98:
	ret
.LBE313:
.LFE22:
	.size	Port_SetPinMode, .-Port_SetPinMode
.section ClearedData.LmuNC.32bit.Port_kConfigPtr,"aw",@progbits
	.align 2
	.type	Port_kConfigPtr, @object
	.size	Port_kConfigPtr, 4
Port_kConfigPtr:
	.zero	4
.section Const.Cpu0.16bit.Port_kAvailablePins,"a",@progbits
	.align 1
	.type	Port_kAvailablePins, @object
	.size	Port_kAvailablePins, 82
Port_kAvailablePins:
	.short	8191
	.short	248
	.short	4095
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	511
	.short	-1
	.short	3
	.short	15
	.short	2047
	.short	511
	.short	0
	.short	0
	.short	0
	.short	0
	.short	32719
	.short	255
	.short	4095
	.short	255
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	255
	.short	-1
	.short	62
	.short	0
	.short	0
	.short	0
	.short	0
	.short	0
	.short	32767
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
	.byte	0x4
	.uaword	.LCFI0-.LFB19
	.byte	0xe
	.uleb128 0x10
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
.section .text,"ax",@progbits
.Letext0:
	.file 3 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\Ifx_TypesReg.h"
	.file 4 ".\\output\\inc/..\\..\\Integration\\Infineon\\Infra\\Sfr\\TC38A\\_Reg\\IfxPort_regdef.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 6 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\inc\\Port.h"
	.file 7 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\McalLib\\inc\\McalLib.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3f47
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Targets\\TC38xx\\MCAL\\MCAL_Modules\\Port\\src\\Port.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x280
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"Ifx_UReg_8Bit"
	.byte	0x3
	.byte	0x60
	.uaword	0x1d4
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x2
	.string	"Ifx_UReg_32Bit"
	.byte	0x3
	.byte	0x62
	.uaword	0x211
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"Ifx_SReg_32Bit"
	.byte	0x3
	.byte	0x65
	.uaword	0x253
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x4
	.string	"_Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x44
	.uaword	0x4ac
	.uleb128 0x5
	.string	"EN0"
	.byte	0x4
	.byte	0x46
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN1"
	.byte	0x4
	.byte	0x47
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN2"
	.byte	0x4
	.byte	0x48
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN3"
	.byte	0x4
	.byte	0x49
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN4"
	.byte	0x4
	.byte	0x4a
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN5"
	.byte	0x4
	.byte	0x4b
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN6"
	.byte	0x4
	.byte	0x4c
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN7"
	.byte	0x4
	.byte	0x4d
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN8"
	.byte	0x4
	.byte	0x4e
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN9"
	.byte	0x4
	.byte	0x4f
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN10"
	.byte	0x4
	.byte	0x50
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN11"
	.byte	0x4
	.byte	0x51
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN12"
	.byte	0x4
	.byte	0x52
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN13"
	.byte	0x4
	.byte	0x53
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN14"
	.byte	0x4
	.byte	0x54
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN15"
	.byte	0x4
	.byte	0x55
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN16"
	.byte	0x4
	.byte	0x56
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN17"
	.byte	0x4
	.byte	0x57
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN18"
	.byte	0x4
	.byte	0x58
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN19"
	.byte	0x4
	.byte	0x59
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN20"
	.byte	0x4
	.byte	0x5a
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN21"
	.byte	0x4
	.byte	0x5b
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN22"
	.byte	0x4
	.byte	0x5c
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN23"
	.byte	0x4
	.byte	0x5d
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN24"
	.byte	0x4
	.byte	0x5e
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN25"
	.byte	0x4
	.byte	0x5f
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN26"
	.byte	0x4
	.byte	0x60
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN27"
	.byte	0x4
	.byte	0x61
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN28"
	.byte	0x4
	.byte	0x62
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN29"
	.byte	0x4
	.byte	0x63
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN30"
	.byte	0x4
	.byte	0x64
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN31"
	.byte	0x4
	.byte	0x65
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_P_ACCEN0_Bits"
	.byte	0x4
	.byte	0x66
	.uaword	0x25a
	.uleb128 0x4
	.string	"_Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x69
	.uaword	0x4f2
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0x6b
	.uaword	0x1fb
	.byte	0x4
	.byte	0x20
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_P_ACCEN1_Bits"
	.byte	0x4
	.byte	0x6c
	.uaword	0x4c5
	.uleb128 0x4
	.string	"_Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x6f
	.uaword	0x64b
	.uleb128 0x5
	.string	"EN0"
	.byte	0x4
	.byte	0x71
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN1"
	.byte	0x4
	.byte	0x72
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN2"
	.byte	0x4
	.byte	0x73
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN3"
	.byte	0x4
	.byte	0x74
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN4"
	.byte	0x4
	.byte	0x75
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN5"
	.byte	0x4
	.byte	0x76
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN6"
	.byte	0x4
	.byte	0x77
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN7"
	.byte	0x4
	.byte	0x78
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN8"
	.byte	0x4
	.byte	0x79
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN9"
	.byte	0x4
	.byte	0x7a
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN10"
	.byte	0x4
	.byte	0x7b
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN11"
	.byte	0x4
	.byte	0x7c
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN12"
	.byte	0x4
	.byte	0x7d
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN13"
	.byte	0x4
	.byte	0x7e
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN14"
	.byte	0x4
	.byte	0x7f
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"EN15"
	.byte	0x4
	.byte	0x80
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0x81
	.uaword	0x1fb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_P_ESR_Bits"
	.byte	0x4
	.byte	0x82
	.uaword	0x50b
	.uleb128 0x4
	.string	"_Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x85
	.uaword	0x6b9
	.uleb128 0x5
	.string	"MODREV"
	.byte	0x4
	.byte	0x87
	.uaword	0x1fb
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MODTYPE"
	.byte	0x4
	.byte	0x88
	.uaword	0x1fb
	.byte	0x4
	.byte	0x8
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"MODNUMBER"
	.byte	0x4
	.byte	0x89
	.uaword	0x1fb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_P_ID_Bits"
	.byte	0x4
	.byte	0x8a
	.uaword	0x661
	.uleb128 0x4
	.string	"_Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0x8d
	.uaword	0x7fd
	.uleb128 0x5
	.string	"P0"
	.byte	0x4
	.byte	0x8f
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P1"
	.byte	0x4
	.byte	0x90
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P2"
	.byte	0x4
	.byte	0x91
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P3"
	.byte	0x4
	.byte	0x92
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P4"
	.byte	0x4
	.byte	0x93
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P5"
	.byte	0x4
	.byte	0x94
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P6"
	.byte	0x4
	.byte	0x95
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P7"
	.byte	0x4
	.byte	0x96
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P8"
	.byte	0x4
	.byte	0x97
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P9"
	.byte	0x4
	.byte	0x98
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P10"
	.byte	0x4
	.byte	0x99
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P11"
	.byte	0x4
	.byte	0x9a
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P12"
	.byte	0x4
	.byte	0x9b
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P13"
	.byte	0x4
	.byte	0x9c
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P14"
	.byte	0x4
	.byte	0x9d
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P15"
	.byte	0x4
	.byte	0x9e
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0x9f
	.uaword	0x1fb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_P_IN_Bits"
	.byte	0x4
	.byte	0xa0
	.uaword	0x6ce
	.uleb128 0x4
	.string	"_Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xa3
	.uaword	0x8b5
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0xa5
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC0"
	.byte	0x4
	.byte	0xa6
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.byte	0xa7
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC1"
	.byte	0x4
	.byte	0xa8
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0xa9
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC2"
	.byte	0x4
	.byte	0xaa
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x4
	.byte	0xab
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC3"
	.byte	0x4
	.byte	0xac
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_P_IOCR0_Bits"
	.byte	0x4
	.byte	0xad
	.uaword	0x812
	.uleb128 0x4
	.string	"_Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xb0
	.uaword	0x975
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0xb2
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC12"
	.byte	0x4
	.byte	0xb3
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.byte	0xb4
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC13"
	.byte	0x4
	.byte	0xb5
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0xb6
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC14"
	.byte	0x4
	.byte	0xb7
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x4
	.byte	0xb8
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC15"
	.byte	0x4
	.byte	0xb9
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_P_IOCR12_Bits"
	.byte	0x4
	.byte	0xba
	.uaword	0x8cd
	.uleb128 0x4
	.string	"_Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xbd
	.uaword	0xa31
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0xbf
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC4"
	.byte	0x4
	.byte	0xc0
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.byte	0xc1
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC5"
	.byte	0x4
	.byte	0xc2
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0xc3
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC6"
	.byte	0x4
	.byte	0xc4
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x4
	.byte	0xc5
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC7"
	.byte	0x4
	.byte	0xc6
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_P_IOCR4_Bits"
	.byte	0x4
	.byte	0xc7
	.uaword	0x98e
	.uleb128 0x4
	.string	"_Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xca
	.uaword	0xaee
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0xcc
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC8"
	.byte	0x4
	.byte	0xcd
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF2
	.byte	0x4
	.byte	0xce
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC9"
	.byte	0x4
	.byte	0xcf
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0xd0
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC10"
	.byte	0x4
	.byte	0xd1
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF3
	.byte	0x4
	.byte	0xd2
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PC11"
	.byte	0x4
	.byte	0xd3
	.uaword	0x1fb
	.byte	0x4
	.byte	0x5
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_P_IOCR8_Bits"
	.byte	0x4
	.byte	0xd4
	.uaword	0xa49
	.uleb128 0x4
	.string	"_Ifx_P_LPCR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xd7
	.uaword	0xc34
	.uleb128 0x5
	.string	"REN_CTRL"
	.byte	0x4
	.byte	0xd9
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"RX_EN"
	.byte	0x4
	.byte	0xda
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TERM"
	.byte	0x4
	.byte	0xdb
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"LRXTERM"
	.byte	0x4
	.byte	0xdc
	.uaword	0x1fb
	.byte	0x4
	.byte	0x3
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"LVDSM"
	.byte	0x4
	.byte	0xdd
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PS"
	.byte	0x4
	.byte	0xde
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TEN_CTRL"
	.byte	0x4
	.byte	0xdf
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TX_EN"
	.byte	0x4
	.byte	0xe0
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"VDIFFADJ"
	.byte	0x4
	.byte	0xe1
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"VOSDYN"
	.byte	0x4
	.byte	0xe2
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"VOSEXT"
	.byte	0x4
	.byte	0xe3
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TX_PD"
	.byte	0x4
	.byte	0xe4
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"TX_PWDPD"
	.byte	0x4
	.byte	0xe5
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x6
	.uaword	.LASF1
	.byte	0x4
	.byte	0xe6
	.uaword	0x1fb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_P_LPCR_Bits"
	.byte	0x4
	.byte	0xe7
	.uaword	0xb06
	.uleb128 0x4
	.string	"_Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0x4
	.byte	0xea
	.uaword	0xd9c
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x4
	.byte	0xec
	.uaword	0x1fb
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL0"
	.byte	0x4
	.byte	0xed
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL1"
	.byte	0x4
	.byte	0xee
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL2"
	.byte	0x4
	.byte	0xef
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL3"
	.byte	0x4
	.byte	0xf0
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL4"
	.byte	0x4
	.byte	0xf1
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL5"
	.byte	0x4
	.byte	0xf2
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL6"
	.byte	0x4
	.byte	0xf3
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL7"
	.byte	0x4
	.byte	0xf4
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL8"
	.byte	0x4
	.byte	0xf5
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL9"
	.byte	0x4
	.byte	0xf6
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL10"
	.byte	0x4
	.byte	0xf7
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL11"
	.byte	0x4
	.byte	0xf8
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL12"
	.byte	0x4
	.byte	0xf9
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL13"
	.byte	0x4
	.byte	0xfa
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL14"
	.byte	0x4
	.byte	0xfb
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PCL15"
	.byte	0x4
	.byte	0xfc
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Ifx_P_OMCR_Bits"
	.byte	0x4
	.byte	0xfd
	.uaword	0xc4b
	.uleb128 0x7
	.string	"_Ifx_P_OMCR0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x100
	.uaword	0xe3f
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x102
	.uaword	0x1fb
	.byte	0x4
	.byte	0x10
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL0"
	.byte	0x4
	.uahalf	0x103
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL1"
	.byte	0x4
	.uahalf	0x104
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL2"
	.byte	0x4
	.uahalf	0x105
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL3"
	.byte	0x4
	.uahalf	0x106
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x107
	.uaword	0x1fb
	.byte	0x4
	.byte	0xc
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR0_Bits"
	.byte	0x4
	.uahalf	0x108
	.uaword	0xdb3
	.uleb128 0x7
	.string	"_Ifx_P_OMCR12_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x10b
	.uaword	0xed7
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x10d
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1c
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL12"
	.byte	0x4
	.uahalf	0x10e
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL13"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL14"
	.byte	0x4
	.uahalf	0x110
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL15"
	.byte	0x4
	.uahalf	0x111
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR12_Bits"
	.byte	0x4
	.uahalf	0x112
	.uaword	0xe58
	.uleb128 0x7
	.string	"_Ifx_P_OMCR4_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x115
	.uaword	0xf7d
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x117
	.uaword	0x1fb
	.byte	0x4
	.byte	0x14
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL4"
	.byte	0x4
	.uahalf	0x118
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL5"
	.byte	0x4
	.uahalf	0x119
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL6"
	.byte	0x4
	.uahalf	0x11a
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL7"
	.byte	0x4
	.uahalf	0x11b
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF3
	.byte	0x4
	.uahalf	0x11c
	.uaword	0x1fb
	.byte	0x4
	.byte	0x8
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR4_Bits"
	.byte	0x4
	.uahalf	0x11d
	.uaword	0xef1
	.uleb128 0x7
	.string	"_Ifx_P_OMCR8_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x120
	.uaword	0x1024
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x122
	.uaword	0x1fb
	.byte	0x4
	.byte	0x18
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL8"
	.byte	0x4
	.uahalf	0x123
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL9"
	.byte	0x4
	.uahalf	0x124
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL10"
	.byte	0x4
	.uahalf	0x125
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL11"
	.byte	0x4
	.uahalf	0x126
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x127
	.uaword	0x1fb
	.byte	0x4
	.byte	0x4
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR8_Bits"
	.byte	0x4
	.uahalf	0x128
	.uaword	0xf96
	.uleb128 0x7
	.string	"_Ifx_P_OMR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x12b
	.uaword	0x12b3
	.uleb128 0x9
	.string	"PS0"
	.byte	0x4
	.uahalf	0x12d
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS1"
	.byte	0x4
	.uahalf	0x12e
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS2"
	.byte	0x4
	.uahalf	0x12f
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS3"
	.byte	0x4
	.uahalf	0x130
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS4"
	.byte	0x4
	.uahalf	0x131
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS5"
	.byte	0x4
	.uahalf	0x132
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS6"
	.byte	0x4
	.uahalf	0x133
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS7"
	.byte	0x4
	.uahalf	0x134
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS8"
	.byte	0x4
	.uahalf	0x135
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS9"
	.byte	0x4
	.uahalf	0x136
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS10"
	.byte	0x4
	.uahalf	0x137
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS11"
	.byte	0x4
	.uahalf	0x138
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS12"
	.byte	0x4
	.uahalf	0x139
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS13"
	.byte	0x4
	.uahalf	0x13a
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS14"
	.byte	0x4
	.uahalf	0x13b
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS15"
	.byte	0x4
	.uahalf	0x13c
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL0"
	.byte	0x4
	.uahalf	0x13d
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xf
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL1"
	.byte	0x4
	.uahalf	0x13e
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL2"
	.byte	0x4
	.uahalf	0x13f
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xd
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL3"
	.byte	0x4
	.uahalf	0x140
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL4"
	.byte	0x4
	.uahalf	0x141
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xb
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL5"
	.byte	0x4
	.uahalf	0x142
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL6"
	.byte	0x4
	.uahalf	0x143
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL7"
	.byte	0x4
	.uahalf	0x144
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL8"
	.byte	0x4
	.uahalf	0x145
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x7
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL9"
	.byte	0x4
	.uahalf	0x146
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL10"
	.byte	0x4
	.uahalf	0x147
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x5
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL11"
	.byte	0x4
	.uahalf	0x148
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL12"
	.byte	0x4
	.uahalf	0x149
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x3
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL13"
	.byte	0x4
	.uahalf	0x14a
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL14"
	.byte	0x4
	.uahalf	0x14b
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PCL15"
	.byte	0x4
	.uahalf	0x14c
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMR_Bits"
	.byte	0x4
	.uahalf	0x14d
	.uaword	0x103d
	.uleb128 0x7
	.string	"_Ifx_P_OMSR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x150
	.uaword	0x141d
	.uleb128 0x9
	.string	"PS0"
	.byte	0x4
	.uahalf	0x152
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS1"
	.byte	0x4
	.uahalf	0x153
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS2"
	.byte	0x4
	.uahalf	0x154
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS3"
	.byte	0x4
	.uahalf	0x155
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS4"
	.byte	0x4
	.uahalf	0x156
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS5"
	.byte	0x4
	.uahalf	0x157
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS6"
	.byte	0x4
	.uahalf	0x158
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS7"
	.byte	0x4
	.uahalf	0x159
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS8"
	.byte	0x4
	.uahalf	0x15a
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS9"
	.byte	0x4
	.uahalf	0x15b
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS10"
	.byte	0x4
	.uahalf	0x15c
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS11"
	.byte	0x4
	.uahalf	0x15d
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS12"
	.byte	0x4
	.uahalf	0x15e
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS13"
	.byte	0x4
	.uahalf	0x15f
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS14"
	.byte	0x4
	.uahalf	0x160
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS15"
	.byte	0x4
	.uahalf	0x161
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x162
	.uaword	0x1fb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR_Bits"
	.byte	0x4
	.uahalf	0x163
	.uaword	0x12ca
	.uleb128 0x7
	.string	"_Ifx_P_OMSR0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x166
	.uaword	0x14b2
	.uleb128 0x9
	.string	"PS0"
	.byte	0x4
	.uahalf	0x168
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS1"
	.byte	0x4
	.uahalf	0x169
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS2"
	.byte	0x4
	.uahalf	0x16a
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS3"
	.byte	0x4
	.uahalf	0x16b
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_4"
	.byte	0x4
	.uahalf	0x16c
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1c
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR0_Bits"
	.byte	0x4
	.uahalf	0x16d
	.uaword	0x1435
	.uleb128 0x7
	.string	"_Ifx_P_OMSR12_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x170
	.uaword	0x1558
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x172
	.uaword	0x1fb
	.byte	0x4
	.byte	0xc
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS12"
	.byte	0x4
	.uahalf	0x173
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS13"
	.byte	0x4
	.uahalf	0x174
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS14"
	.byte	0x4
	.uahalf	0x175
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS15"
	.byte	0x4
	.uahalf	0x176
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x177
	.uaword	0x1fb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR12_Bits"
	.byte	0x4
	.uahalf	0x178
	.uaword	0x14cb
	.uleb128 0x7
	.string	"_Ifx_P_OMSR4_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x17b
	.uaword	0x15fa
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x17d
	.uaword	0x1fb
	.byte	0x4
	.byte	0x4
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS4"
	.byte	0x4
	.uahalf	0x17e
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS5"
	.byte	0x4
	.uahalf	0x17f
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS6"
	.byte	0x4
	.uahalf	0x180
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS7"
	.byte	0x4
	.uahalf	0x181
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF2
	.byte	0x4
	.uahalf	0x182
	.uaword	0x1fb
	.byte	0x4
	.byte	0x18
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR4_Bits"
	.byte	0x4
	.uahalf	0x183
	.uaword	0x1572
	.uleb128 0x7
	.string	"_Ifx_P_OMSR8_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x186
	.uaword	0x16a5
	.uleb128 0x8
	.uaword	.LASF0
	.byte	0x4
	.uahalf	0x188
	.uaword	0x1fb
	.byte	0x4
	.byte	0x8
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS8"
	.byte	0x4
	.uahalf	0x189
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS9"
	.byte	0x4
	.uahalf	0x18a
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS10"
	.byte	0x4
	.uahalf	0x18b
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PS11"
	.byte	0x4
	.uahalf	0x18c
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"reserved_12"
	.byte	0x4
	.uahalf	0x18d
	.uaword	0x1fb
	.byte	0x4
	.byte	0x14
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR8_Bits"
	.byte	0x4
	.uahalf	0x18e
	.uaword	0x1613
	.uleb128 0x7
	.string	"_Ifx_P_OUT_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x191
	.uaword	0x1800
	.uleb128 0x9
	.string	"P0"
	.byte	0x4
	.uahalf	0x193
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P1"
	.byte	0x4
	.uahalf	0x194
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P2"
	.byte	0x4
	.uahalf	0x195
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P3"
	.byte	0x4
	.uahalf	0x196
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P4"
	.byte	0x4
	.uahalf	0x197
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P5"
	.byte	0x4
	.uahalf	0x198
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P6"
	.byte	0x4
	.uahalf	0x199
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P7"
	.byte	0x4
	.uahalf	0x19a
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P8"
	.byte	0x4
	.uahalf	0x19b
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P9"
	.byte	0x4
	.uahalf	0x19c
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P10"
	.byte	0x4
	.uahalf	0x19d
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P11"
	.byte	0x4
	.uahalf	0x19e
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P12"
	.byte	0x4
	.uahalf	0x19f
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P13"
	.byte	0x4
	.uahalf	0x1a0
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P14"
	.byte	0x4
	.uahalf	0x1a1
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"P15"
	.byte	0x4
	.uahalf	0x1a2
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1a3
	.uaword	0x1fb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OUT_Bits"
	.byte	0x4
	.uahalf	0x1a4
	.uaword	0x16be
	.uleb128 0x7
	.string	"_Ifx_P_PCSR_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1a7
	.uaword	0x198c
	.uleb128 0x9
	.string	"SEL0"
	.byte	0x4
	.uahalf	0x1a9
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL1"
	.byte	0x4
	.uahalf	0x1aa
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL2"
	.byte	0x4
	.uahalf	0x1ab
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL3"
	.byte	0x4
	.uahalf	0x1ac
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL4"
	.byte	0x4
	.uahalf	0x1ad
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL5"
	.byte	0x4
	.uahalf	0x1ae
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL6"
	.byte	0x4
	.uahalf	0x1af
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL7"
	.byte	0x4
	.uahalf	0x1b0
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL8"
	.byte	0x4
	.uahalf	0x1b1
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL9"
	.byte	0x4
	.uahalf	0x1b2
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL10"
	.byte	0x4
	.uahalf	0x1b3
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL11"
	.byte	0x4
	.uahalf	0x1b4
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL12"
	.byte	0x4
	.uahalf	0x1b5
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL13"
	.byte	0x4
	.uahalf	0x1b6
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL14"
	.byte	0x4
	.uahalf	0x1b7
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"SEL15"
	.byte	0x4
	.uahalf	0x1b8
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1b9
	.uaword	0x1fb
	.byte	0x4
	.byte	0xf
	.byte	0x1
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"LCK"
	.byte	0x4
	.uahalf	0x1ba
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PCSR_Bits"
	.byte	0x4
	.uahalf	0x1bb
	.uaword	0x1817
	.uleb128 0x7
	.string	"_Ifx_P_PDISC_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1be
	.uaword	0x1b18
	.uleb128 0x9
	.string	"PDIS0"
	.byte	0x4
	.uahalf	0x1c0
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS1"
	.byte	0x4
	.uahalf	0x1c1
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS2"
	.byte	0x4
	.uahalf	0x1c2
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS3"
	.byte	0x4
	.uahalf	0x1c3
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS4"
	.byte	0x4
	.uahalf	0x1c4
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS5"
	.byte	0x4
	.uahalf	0x1c5
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS6"
	.byte	0x4
	.uahalf	0x1c6
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS7"
	.byte	0x4
	.uahalf	0x1c7
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS8"
	.byte	0x4
	.uahalf	0x1c8
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS9"
	.byte	0x4
	.uahalf	0x1c9
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS10"
	.byte	0x4
	.uahalf	0x1ca
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS11"
	.byte	0x4
	.uahalf	0x1cb
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS12"
	.byte	0x4
	.uahalf	0x1cc
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS13"
	.byte	0x4
	.uahalf	0x1cd
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS14"
	.byte	0x4
	.uahalf	0x1ce
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PDIS15"
	.byte	0x4
	.uahalf	0x1cf
	.uaword	0x1fb
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.uaword	.LASF1
	.byte	0x4
	.uahalf	0x1d0
	.uaword	0x1fb
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDISC_Bits"
	.byte	0x4
	.uahalf	0x1d1
	.uaword	0x19a4
	.uleb128 0x7
	.string	"_Ifx_P_PDR0_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1d4
	.uaword	0x1c6c
	.uleb128 0x9
	.string	"PD0"
	.byte	0x4
	.uahalf	0x1d6
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL0"
	.byte	0x4
	.uahalf	0x1d7
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD1"
	.byte	0x4
	.uahalf	0x1d8
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL1"
	.byte	0x4
	.uahalf	0x1d9
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD2"
	.byte	0x4
	.uahalf	0x1da
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL2"
	.byte	0x4
	.uahalf	0x1db
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD3"
	.byte	0x4
	.uahalf	0x1dc
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL3"
	.byte	0x4
	.uahalf	0x1dd
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD4"
	.byte	0x4
	.uahalf	0x1de
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL4"
	.byte	0x4
	.uahalf	0x1df
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD5"
	.byte	0x4
	.uahalf	0x1e0
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL5"
	.byte	0x4
	.uahalf	0x1e1
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD6"
	.byte	0x4
	.uahalf	0x1e2
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL6"
	.byte	0x4
	.uahalf	0x1e3
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD7"
	.byte	0x4
	.uahalf	0x1e4
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL7"
	.byte	0x4
	.uahalf	0x1e5
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDR0_Bits"
	.byte	0x4
	.uahalf	0x1e6
	.uaword	0x1b31
	.uleb128 0x7
	.string	"_Ifx_P_PDR1_Bits"
	.byte	0x4
	.byte	0x4
	.uahalf	0x1e9
	.uaword	0x1dcb
	.uleb128 0x9
	.string	"PD8"
	.byte	0x4
	.uahalf	0x1eb
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL8"
	.byte	0x4
	.uahalf	0x1ec
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD9"
	.byte	0x4
	.uahalf	0x1ed
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL9"
	.byte	0x4
	.uahalf	0x1ee
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD10"
	.byte	0x4
	.uahalf	0x1ef
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL10"
	.byte	0x4
	.uahalf	0x1f0
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD11"
	.byte	0x4
	.uahalf	0x1f1
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL11"
	.byte	0x4
	.uahalf	0x1f2
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD12"
	.byte	0x4
	.uahalf	0x1f3
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0xe
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL12"
	.byte	0x4
	.uahalf	0x1f4
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0xc
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD13"
	.byte	0x4
	.uahalf	0x1f5
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0xa
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL13"
	.byte	0x4
	.uahalf	0x1f6
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x8
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD14"
	.byte	0x4
	.uahalf	0x1f7
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL14"
	.byte	0x4
	.uahalf	0x1f8
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x4
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PD15"
	.byte	0x4
	.uahalf	0x1f9
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0x2
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x9
	.string	"PL15"
	.byte	0x4
	.uahalf	0x1fa
	.uaword	0x1fb
	.byte	0x4
	.byte	0x2
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDR1_Bits"
	.byte	0x4
	.uahalf	0x1fb
	.uaword	0x1c84
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x203
	.uaword	0x1e0b
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x205
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x206
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x207
	.uaword	0x4ac
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_ACCEN0"
	.byte	0x4
	.uahalf	0x208
	.uaword	0x1de3
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x20b
	.uaword	0x1e48
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x20d
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x20e
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x20f
	.uaword	0x4f2
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_ACCEN1"
	.byte	0x4
	.uahalf	0x210
	.uaword	0x1e20
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x213
	.uaword	0x1e85
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x215
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x216
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x217
	.uaword	0x64b
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_ESR"
	.byte	0x4
	.uahalf	0x218
	.uaword	0x1e5d
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x21b
	.uaword	0x1ebf
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x21d
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x21e
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x21f
	.uaword	0x6b9
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_ID"
	.byte	0x4
	.uahalf	0x220
	.uaword	0x1e97
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x223
	.uaword	0x1ef8
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x225
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x226
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x227
	.uaword	0x7fd
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IN"
	.byte	0x4
	.uahalf	0x228
	.uaword	0x1ed0
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x22b
	.uaword	0x1f31
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x22d
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x22e
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x22f
	.uaword	0x8b5
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IOCR0"
	.byte	0x4
	.uahalf	0x230
	.uaword	0x1f09
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x233
	.uaword	0x1f6d
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x235
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x236
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x237
	.uaword	0x975
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IOCR12"
	.byte	0x4
	.uahalf	0x238
	.uaword	0x1f45
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x23b
	.uaword	0x1faa
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x23d
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x23e
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x23f
	.uaword	0xa31
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IOCR4"
	.byte	0x4
	.uahalf	0x240
	.uaword	0x1f82
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x243
	.uaword	0x1fe6
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x245
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x246
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x247
	.uaword	0xaee
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_IOCR8"
	.byte	0x4
	.uahalf	0x248
	.uaword	0x1fbe
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x24b
	.uaword	0x2022
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x24d
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x24e
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x24f
	.uaword	0xc34
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_LPCR"
	.byte	0x4
	.uahalf	0x250
	.uaword	0x1ffa
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x253
	.uaword	0x205d
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x255
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x256
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x257
	.uaword	0xd9c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR"
	.byte	0x4
	.uahalf	0x258
	.uaword	0x2035
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x25b
	.uaword	0x2098
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x25d
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x25e
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x25f
	.uaword	0xe3f
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR0"
	.byte	0x4
	.uahalf	0x260
	.uaword	0x2070
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x263
	.uaword	0x20d4
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x265
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x266
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x267
	.uaword	0xed7
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR12"
	.byte	0x4
	.uahalf	0x268
	.uaword	0x20ac
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x26b
	.uaword	0x2111
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x26d
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x26e
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x26f
	.uaword	0xf7d
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR4"
	.byte	0x4
	.uahalf	0x270
	.uaword	0x20e9
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x273
	.uaword	0x214d
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x275
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x276
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x277
	.uaword	0x1024
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMCR8"
	.byte	0x4
	.uahalf	0x278
	.uaword	0x2125
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x27b
	.uaword	0x2189
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x27d
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x27e
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x27f
	.uaword	0x12b3
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMR"
	.byte	0x4
	.uahalf	0x280
	.uaword	0x2161
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x283
	.uaword	0x21c3
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x285
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x286
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x287
	.uaword	0x141d
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR"
	.byte	0x4
	.uahalf	0x288
	.uaword	0x219b
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x28b
	.uaword	0x21fe
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x28d
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x28e
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x28f
	.uaword	0x14b2
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR0"
	.byte	0x4
	.uahalf	0x290
	.uaword	0x21d6
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x293
	.uaword	0x223a
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x295
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x296
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x297
	.uaword	0x1558
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR12"
	.byte	0x4
	.uahalf	0x298
	.uaword	0x2212
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x29b
	.uaword	0x2277
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x29d
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x29e
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x29f
	.uaword	0x15fa
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR4"
	.byte	0x4
	.uahalf	0x2a0
	.uaword	0x224f
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x2a3
	.uaword	0x22b3
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x2a5
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x2a6
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x2a7
	.uaword	0x16a5
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OMSR8"
	.byte	0x4
	.uahalf	0x2a8
	.uaword	0x228b
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x2ab
	.uaword	0x22ef
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x2ad
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x2ae
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x2af
	.uaword	0x1800
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_OUT"
	.byte	0x4
	.uahalf	0x2b0
	.uaword	0x22c7
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x2b3
	.uaword	0x2329
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x2b5
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x2b6
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x2b7
	.uaword	0x198c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PCSR"
	.byte	0x4
	.uahalf	0x2b8
	.uaword	0x2301
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x2bb
	.uaword	0x2364
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x2bd
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x2be
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x2bf
	.uaword	0x1b18
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDISC"
	.byte	0x4
	.uahalf	0x2c0
	.uaword	0x233c
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x2c3
	.uaword	0x23a0
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x2c5
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x2c6
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x2c7
	.uaword	0x1c6c
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDR0"
	.byte	0x4
	.uahalf	0x2c8
	.uaword	0x2378
	.uleb128 0xb
	.byte	0x4
	.byte	0x4
	.uahalf	0x2cb
	.uaword	0x23db
	.uleb128 0xc
	.string	"U"
	.byte	0x4
	.uahalf	0x2cd
	.uaword	0x1fb
	.uleb128 0xc
	.string	"I"
	.byte	0x4
	.uahalf	0x2ce
	.uaword	0x23d
	.uleb128 0xc
	.string	"B"
	.byte	0x4
	.uahalf	0x2cf
	.uaword	0x1dcb
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P_PDR1"
	.byte	0x4
	.uahalf	0x2d0
	.uaword	0x23b3
	.uleb128 0xd
	.string	"_Ifx_P"
	.uahalf	0x100
	.byte	0x4
	.uahalf	0x2dc
	.uaword	0x265f
	.uleb128 0xe
	.string	"OUT"
	.byte	0x4
	.uahalf	0x2de
	.uaword	0x22ef
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"OMR"
	.byte	0x4
	.uahalf	0x2df
	.uaword	0x2189
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"ID"
	.byte	0x4
	.uahalf	0x2e0
	.uaword	0x1ebf
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"reserved_C"
	.byte	0x4
	.uahalf	0x2e1
	.uaword	0x265f
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"IOCR0"
	.byte	0x4
	.uahalf	0x2e2
	.uaword	0x1f31
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"IOCR4"
	.byte	0x4
	.uahalf	0x2e3
	.uaword	0x1faa
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"IOCR8"
	.byte	0x4
	.uahalf	0x2e4
	.uaword	0x1fe6
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"IOCR12"
	.byte	0x4
	.uahalf	0x2e5
	.uaword	0x1f6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xf
	.uaword	.LASF4
	.byte	0x4
	.uahalf	0x2e6
	.uaword	0x265f
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"IN"
	.byte	0x4
	.uahalf	0x2e7
	.uaword	0x1ef8
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xf
	.uaword	.LASF5
	.byte	0x4
	.uahalf	0x2e8
	.uaword	0x267b
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0xe
	.string	"PDR0"
	.byte	0x4
	.uahalf	0x2e9
	.uaword	0x23a0
	.byte	0x2
	.byte	0x23
	.uleb128 0x40
	.uleb128 0xe
	.string	"PDR1"
	.byte	0x4
	.uahalf	0x2ea
	.uaword	0x23db
	.byte	0x2
	.byte	0x23
	.uleb128 0x44
	.uleb128 0xe
	.string	"reserved_48"
	.byte	0x4
	.uahalf	0x2eb
	.uaword	0x268b
	.byte	0x2
	.byte	0x23
	.uleb128 0x48
	.uleb128 0xe
	.string	"ESR"
	.byte	0x4
	.uahalf	0x2ec
	.uaword	0x1e85
	.byte	0x2
	.byte	0x23
	.uleb128 0x50
	.uleb128 0xe
	.string	"reserved_54"
	.byte	0x4
	.uahalf	0x2ed
	.uaword	0x269b
	.byte	0x2
	.byte	0x23
	.uleb128 0x54
	.uleb128 0xe
	.string	"PDISC"
	.byte	0x4
	.uahalf	0x2ee
	.uaword	0x2364
	.byte	0x2
	.byte	0x23
	.uleb128 0x60
	.uleb128 0xe
	.string	"PCSR"
	.byte	0x4
	.uahalf	0x2ef
	.uaword	0x2329
	.byte	0x2
	.byte	0x23
	.uleb128 0x64
	.uleb128 0xe
	.string	"reserved_68"
	.byte	0x4
	.uahalf	0x2f0
	.uaword	0x268b
	.byte	0x2
	.byte	0x23
	.uleb128 0x68
	.uleb128 0xe
	.string	"OMSR0"
	.byte	0x4
	.uahalf	0x2f1
	.uaword	0x21fe
	.byte	0x2
	.byte	0x23
	.uleb128 0x70
	.uleb128 0xe
	.string	"OMSR4"
	.byte	0x4
	.uahalf	0x2f2
	.uaword	0x2277
	.byte	0x2
	.byte	0x23
	.uleb128 0x74
	.uleb128 0xe
	.string	"OMSR8"
	.byte	0x4
	.uahalf	0x2f3
	.uaword	0x22b3
	.byte	0x2
	.byte	0x23
	.uleb128 0x78
	.uleb128 0xe
	.string	"OMSR12"
	.byte	0x4
	.uahalf	0x2f4
	.uaword	0x223a
	.byte	0x2
	.byte	0x23
	.uleb128 0x7c
	.uleb128 0xe
	.string	"OMCR0"
	.byte	0x4
	.uahalf	0x2f5
	.uaword	0x2098
	.byte	0x3
	.byte	0x23
	.uleb128 0x80
	.uleb128 0xe
	.string	"OMCR4"
	.byte	0x4
	.uahalf	0x2f6
	.uaword	0x2111
	.byte	0x3
	.byte	0x23
	.uleb128 0x84
	.uleb128 0xe
	.string	"OMCR8"
	.byte	0x4
	.uahalf	0x2f7
	.uaword	0x214d
	.byte	0x3
	.byte	0x23
	.uleb128 0x88
	.uleb128 0xe
	.string	"OMCR12"
	.byte	0x4
	.uahalf	0x2f8
	.uaword	0x20d4
	.byte	0x3
	.byte	0x23
	.uleb128 0x8c
	.uleb128 0xe
	.string	"OMSR"
	.byte	0x4
	.uahalf	0x2f9
	.uaword	0x21c3
	.byte	0x3
	.byte	0x23
	.uleb128 0x90
	.uleb128 0xe
	.string	"OMCR"
	.byte	0x4
	.uahalf	0x2fa
	.uaword	0x205d
	.byte	0x3
	.byte	0x23
	.uleb128 0x94
	.uleb128 0xe
	.string	"reserved_98"
	.byte	0x4
	.uahalf	0x2fb
	.uaword	0x268b
	.byte	0x3
	.byte	0x23
	.uleb128 0x98
	.uleb128 0xe
	.string	"LPCR"
	.byte	0x4
	.uahalf	0x2fc
	.uaword	0x26ab
	.byte	0x3
	.byte	0x23
	.uleb128 0xa0
	.uleb128 0xe
	.string	"reserved_C0"
	.byte	0x4
	.uahalf	0x2fd
	.uaword	0x26bb
	.byte	0x3
	.byte	0x23
	.uleb128 0xc0
	.uleb128 0xe
	.string	"ACCEN1"
	.byte	0x4
	.uahalf	0x2fe
	.uaword	0x1e48
	.byte	0x3
	.byte	0x23
	.uleb128 0xf8
	.uleb128 0xe
	.string	"ACCEN0"
	.byte	0x4
	.uahalf	0x2ff
	.uaword	0x1e0b
	.byte	0x3
	.byte	0x23
	.uleb128 0xfc
	.byte	0
	.uleb128 0x10
	.uaword	0x1bf
	.uaword	0x266f
	.uleb128 0x11
	.uaword	0x266f
	.byte	0x3
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x10
	.uaword	0x1bf
	.uaword	0x268b
	.uleb128 0x11
	.uaword	0x266f
	.byte	0x17
	.byte	0
	.uleb128 0x10
	.uaword	0x1bf
	.uaword	0x269b
	.uleb128 0x11
	.uaword	0x266f
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.uaword	0x1bf
	.uaword	0x26ab
	.uleb128 0x11
	.uaword	0x266f
	.byte	0xb
	.byte	0
	.uleb128 0x10
	.uaword	0x2022
	.uaword	0x26bb
	.uleb128 0x11
	.uaword	0x266f
	.byte	0x7
	.byte	0
	.uleb128 0x10
	.uaword	0x1bf
	.uaword	0x26cb
	.uleb128 0x11
	.uaword	0x266f
	.byte	0x37
	.byte	0
	.uleb128 0xa
	.string	"Ifx_P"
	.byte	0x4
	.uahalf	0x300
	.uaword	0x26d9
	.uleb128 0x12
	.uaword	0x23ee
	.uleb128 0x2
	.string	"uint8"
	.byte	0x5
	.byte	0x51
	.uaword	0x1d4
	.uleb128 0x2
	.string	"uint16"
	.byte	0x5
	.byte	0x5b
	.uaword	0x1e5
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x5
	.byte	0x6a
	.uaword	0x211
	.uleb128 0x3
	.byte	0x8
	.byte	0x7
	.string	"long long unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"float"
	.uleb128 0x3
	.byte	0x4
	.byte	0x4
	.string	"double"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x2
	.string	"unsigned_int"
	.byte	0x2
	.byte	0x4b
	.uaword	0x211
	.uleb128 0x2
	.string	"Port_PinType"
	.byte	0x6
	.byte	0xa4
	.uaword	0x26eb
	.uleb128 0x13
	.byte	0x1
	.byte	0x6
	.byte	0xaa
	.uaword	0x27b5
	.uleb128 0x14
	.string	"PORT_PIN_IN"
	.sleb128 0
	.uleb128 0x14
	.string	"PORT_PIN_OUT"
	.sleb128 128
	.byte	0
	.uleb128 0x2
	.string	"Port_PinDirectionType"
	.byte	0x6
	.byte	0xad
	.uaword	0x278e
	.uleb128 0x2
	.string	"Port_PinModeType"
	.byte	0x6
	.byte	0xb2
	.uaword	0x26de
	.uleb128 0x15
	.byte	0x10
	.byte	0x6
	.byte	0xb8
	.uaword	0x28d9
	.uleb128 0x16
	.string	"PC0"
	.byte	0x6
	.byte	0xbb
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"PC1"
	.byte	0x6
	.byte	0xbc
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x16
	.string	"PC2"
	.byte	0x6
	.byte	0xbd
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x16
	.string	"PC3"
	.byte	0x6
	.byte	0xbe
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0x3
	.uleb128 0x16
	.string	"PC4"
	.byte	0x6
	.byte	0xbf
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"PC5"
	.byte	0x6
	.byte	0xc0
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0x5
	.uleb128 0x16
	.string	"PC6"
	.byte	0x6
	.byte	0xc1
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0x6
	.uleb128 0x16
	.string	"PC7"
	.byte	0x6
	.byte	0xc2
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0x7
	.uleb128 0x16
	.string	"PC8"
	.byte	0x6
	.byte	0xc3
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"PC9"
	.byte	0x6
	.byte	0xc4
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0x9
	.uleb128 0x16
	.string	"PC10"
	.byte	0x6
	.byte	0xc5
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x16
	.string	"PC11"
	.byte	0x6
	.byte	0xc6
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x16
	.string	"PC12"
	.byte	0x6
	.byte	0xc7
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"PC13"
	.byte	0x6
	.byte	0xc8
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0xd
	.uleb128 0x16
	.string	"PC14"
	.byte	0x6
	.byte	0xc9
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0xe
	.uleb128 0x16
	.string	"PC15"
	.byte	0x6
	.byte	0xca
	.uaword	0x26de
	.byte	0x2
	.byte	0x23
	.uleb128 0xf
	.byte	0
	.uleb128 0x2
	.string	"Port_n_ControlType"
	.byte	0x6
	.byte	0xcc
	.uaword	0x27ea
	.uleb128 0x15
	.byte	0x4
	.byte	0x6
	.byte	0xd0
	.uaword	0x2a18
	.uleb128 0x5
	.string	"P0"
	.byte	0x6
	.byte	0xd3
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x1f
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P1"
	.byte	0x6
	.byte	0xd4
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x1e
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P2"
	.byte	0x6
	.byte	0xd5
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x1d
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P3"
	.byte	0x6
	.byte	0xd6
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x1c
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P4"
	.byte	0x6
	.byte	0xd7
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x1b
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P5"
	.byte	0x6
	.byte	0xd8
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x1a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P6"
	.byte	0x6
	.byte	0xd9
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x19
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P7"
	.byte	0x6
	.byte	0xda
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x18
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P8"
	.byte	0x6
	.byte	0xdb
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P9"
	.byte	0x6
	.byte	0xdc
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x16
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P10"
	.byte	0x6
	.byte	0xdd
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x15
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P11"
	.byte	0x6
	.byte	0xde
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x14
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P12"
	.byte	0x6
	.byte	0xdf
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x13
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P13"
	.byte	0x6
	.byte	0xe0
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x12
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P14"
	.byte	0x6
	.byte	0xe1
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x11
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"P15"
	.byte	0x6
	.byte	0xe2
	.uaword	0x2766
	.byte	0x4
	.byte	0x1
	.byte	0x10
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"reserved"
	.byte	0x6
	.byte	0xe3
	.uaword	0x2766
	.byte	0x4
	.byte	0x10
	.byte	0
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.byte	0
	.uleb128 0x2
	.string	"Port_n_PinType"
	.byte	0x6
	.byte	0xe5
	.uaword	0x28f3
	.uleb128 0x15
	.byte	0x38
	.byte	0x6
	.byte	0xf9
	.uaword	0x2b02
	.uleb128 0x16
	.string	"PinControl"
	.byte	0x6
	.byte	0xfc
	.uaword	0x28d9
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"PinLevel"
	.byte	0x6
	.byte	0xfe
	.uaword	0x2a18
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"DriverStrength0"
	.byte	0x6
	.uahalf	0x100
	.uaword	0x270a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"DriverStrength1"
	.byte	0x6
	.uahalf	0x102
	.uaword	0x270a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0xe
	.string	"ModeChangeControl"
	.byte	0x6
	.uahalf	0x106
	.uaword	0x2a18
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0xe
	.string	"DirChangeControl"
	.byte	0x6
	.uahalf	0x10b
	.uaword	0x2a18
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0xe
	.string	"PinControl2"
	.byte	0x6
	.uahalf	0x10e
	.uaword	0x28d9
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0xe
	.string	"EmergencyStopConf"
	.byte	0x6
	.uahalf	0x110
	.uaword	0x2a18
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.byte	0
	.uleb128 0xa
	.string	"Port_n_ConfigType"
	.byte	0x6
	.uahalf	0x111
	.uaword	0x2a2e
	.uleb128 0x17
	.byte	0x1c
	.byte	0x6
	.uahalf	0x117
	.uaword	0x2b9d
	.uleb128 0xe
	.string	"LPCR0"
	.byte	0x6
	.uahalf	0x119
	.uaword	0x270a
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"LPCR1"
	.byte	0x6
	.uahalf	0x11b
	.uaword	0x270a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"LPCR2"
	.byte	0x6
	.uahalf	0x11e
	.uaword	0x270a
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"LPCR3"
	.byte	0x6
	.uahalf	0x121
	.uaword	0x270a
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0xe
	.string	"LPCR4"
	.byte	0x6
	.uahalf	0x124
	.uaword	0x270a
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0xe
	.string	"LPCR5"
	.byte	0x6
	.uahalf	0x127
	.uaword	0x270a
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0xe
	.string	"LPCR6"
	.byte	0x6
	.uahalf	0x12a
	.uaword	0x270a
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0xa
	.string	"Port_n_LVDSConfigType"
	.byte	0x6
	.uahalf	0x12f
	.uaword	0x2b1c
	.uleb128 0xa
	.string	"Port_n_PCSRConfigType"
	.byte	0x6
	.uahalf	0x133
	.uaword	0x270a
	.uleb128 0x17
	.byte	0x10
	.byte	0x6
	.uahalf	0x13a
	.uaword	0x2c57
	.uleb128 0xe
	.string	"PortConfigSetPtr"
	.byte	0x6
	.uahalf	0x13d
	.uaword	0x2c57
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"PDiscSet"
	.byte	0x6
	.uahalf	0x13f
	.uaword	0x2c62
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"Port_LVDSConfigTypePtr"
	.byte	0x6
	.uahalf	0x148
	.uaword	0x2c6d
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0xe
	.string	"Port_PCSRConfigTypePtr"
	.byte	0x6
	.uahalf	0x149
	.uaword	0x2c78
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x2c5d
	.uleb128 0x19
	.uaword	0x2b02
	.uleb128 0x18
	.byte	0x4
	.uaword	0x2c68
	.uleb128 0x19
	.uaword	0x270a
	.uleb128 0x18
	.byte	0x4
	.uaword	0x2c73
	.uleb128 0x19
	.uaword	0x2b9d
	.uleb128 0x18
	.byte	0x4
	.uaword	0x2c7e
	.uleb128 0x19
	.uaword	0x2bbb
	.uleb128 0xa
	.string	"Port_ConfigType"
	.byte	0x6
	.uahalf	0x14a
	.uaword	0x2bd9
	.uleb128 0x1a
	.string	"Port_lIsPortAvailable63"
	.byte	0x1
	.uahalf	0x774
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x2cda
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x774
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x776
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortAvailable31"
	.byte	0x1
	.uahalf	0x750
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x2d19
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x750
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x752
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortReadOnly31"
	.byte	0x1
	.uahalf	0x7c9
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x2d57
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x7c9
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x7cb
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortReadOnly63"
	.byte	0x1
	.uahalf	0x7ed
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x2d95
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x7ed
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x7ef
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortLVDSAvailable63"
	.byte	0x1
	.uahalf	0x9df
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x2dd8
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x9df
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x9e1
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortLVDSAvailable31"
	.byte	0x1
	.uahalf	0x9be
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x2e1b
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x9be
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x9c0
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortPCSRAvailable63"
	.byte	0x1
	.uahalf	0xa4e
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x2e5e
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0xa4e
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0xa50
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortPCSRAvailable31"
	.byte	0x1
	.uahalf	0xa2d
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x2ea1
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0xa2d
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0xa2f
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortPDISCAvailable63"
	.byte	0x1
	.uahalf	0xb3c
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x2ee5
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0xb3c
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0xb3e
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortPDISCAvailable31"
	.byte	0x1
	.uahalf	0xb1b
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x2f29
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0xb1b
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0xb1d
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortAvailable"
	.byte	0x1
	.uahalf	0x798
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x2f66
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x798
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x79a
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lAdr"
	.byte	0x1
	.uahalf	0x72d
	.byte	0x1
	.uaword	0x2f97
	.byte	0x3
	.uaword	0x2f97
	.uleb128 0x1b
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x72d
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x72f
	.uaword	0x2f97
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x26cb
	.uleb128 0x1a
	.string	"Port_lIsPortPdr1Available"
	.byte	0x1
	.uahalf	0x864
	.byte	0x1
	.uaword	0x26eb
	.byte	0x3
	.uaword	0x2fde
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x864
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x866
	.uaword	0x26eb
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortReadOnly"
	.byte	0x1
	.uahalf	0x811
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x301a
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x811
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x813
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortIocrAvailable"
	.byte	0x1
	.uahalf	0x889
	.byte	0x1
	.uaword	0x26eb
	.byte	0x3
	.uaword	0x3067
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x889
	.uaword	0x2c68
	.uleb128 0x1d
	.string	"Pin"
	.byte	0x1
	.uahalf	0x889
	.uaword	0x3067
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x88b
	.uaword	0x26eb
	.byte	0
	.uleb128 0x19
	.uaword	0x26eb
	.uleb128 0x1a
	.string	"Port_lIsPortLVDSAvailable"
	.byte	0x1
	.uahalf	0xa01
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x30ad
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0xa01
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0xa03
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortPinPairAvailable"
	.byte	0x1
	.uahalf	0xaa0
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x30fb
	.uleb128 0x1d
	.string	"PortLPCRvalue"
	.byte	0x1
	.uahalf	0xaa0
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0xaa2
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"_extru"
	.byte	0x2
	.uahalf	0x265
	.byte	0x1
	.uaword	0x211
	.byte	0x3
	.uaword	0x313b
	.uleb128 0x1d
	.string	"a"
	.byte	0x2
	.uahalf	0x265
	.uaword	0x211
	.uleb128 0x1d
	.string	"p"
	.byte	0x2
	.uahalf	0x265
	.uaword	0x211
	.uleb128 0x1d
	.string	"w"
	.byte	0x2
	.uahalf	0x265
	.uaword	0x211
	.uleb128 0x1e
	.string	"res"
	.byte	0x2
	.uahalf	0x266
	.uaword	0x211
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortPCSRAvailable"
	.byte	0x1
	.uahalf	0xa70
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x317c
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0xa70
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0xa72
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPortPDISCAvailable"
	.byte	0x1
	.uahalf	0xaed
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x31be
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0xaed
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0xaef
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lNumber"
	.byte	0x1
	.uahalf	0x90b
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x31f2
	.uleb128 0x1d
	.string	"Pin"
	.byte	0x1
	.uahalf	0x90b
	.uaword	0x31f2
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x90d
	.uaword	0x270a
	.byte	0
	.uleb128 0x19
	.uaword	0x277a
	.uleb128 0x1a
	.string	"Port_lPinNumber"
	.byte	0x1
	.uahalf	0x92d
	.byte	0x1
	.uaword	0x270a
	.byte	0x3
	.uaword	0x322e
	.uleb128 0x1d
	.string	"Pin"
	.byte	0x1
	.uahalf	0x92d
	.uaword	0x31f2
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x92f
	.uaword	0x270a
	.byte	0
	.uleb128 0x1a
	.string	"Port_lIsPinAvailable"
	.byte	0x1
	.uahalf	0x840
	.byte	0x1
	.uaword	0x26eb
	.byte	0x3
	.uaword	0x3276
	.uleb128 0x1b
	.uaword	.LASF6
	.byte	0x1
	.uahalf	0x840
	.uaword	0x2c68
	.uleb128 0x1d
	.string	"Pin"
	.byte	0x1
	.uahalf	0x840
	.uaword	0x2c68
	.uleb128 0x1c
	.uaword	.LASF7
	.byte	0x1
	.uahalf	0x842
	.uaword	0x26eb
	.byte	0
	.uleb128 0x1f
	.string	"Port_lIOInit"
	.byte	0x1
	.uahalf	0x5b4
	.byte	0x1
	.byte	0x3
	.uaword	0x3394
	.uleb128 0x1c
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x5b6
	.uaword	0x2c62
	.uleb128 0x1e
	.string	"ConfigDataPtr"
	.byte	0x1
	.uahalf	0x5b7
	.uaword	0x2c57
	.uleb128 0x1c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x5b9
	.uaword	0x270a
	.uleb128 0x1e
	.string	"PortLevel"
	.byte	0x1
	.uahalf	0x5bb
	.uaword	0x270a
	.uleb128 0x1e
	.string	"EmerStopConf"
	.byte	0x1
	.uahalf	0x5bd
	.uaword	0x270a
	.uleb128 0x1c
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x5c0
	.uaword	0x270a
	.uleb128 0x1c
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x5c1
	.uaword	0x2f97
	.uleb128 0x1e
	.string	"PCSRDataPtr"
	.byte	0x1
	.uahalf	0x5c2
	.uaword	0x2c62
	.uleb128 0x1e
	.string	"PDISCDataPtr"
	.byte	0x1
	.uahalf	0x5c3
	.uaword	0x2c62
	.uleb128 0x1e
	.string	"PCSRRegPtr"
	.byte	0x1
	.uahalf	0x5c4
	.uaword	0x3394
	.uleb128 0x1e
	.string	"PDISCRegPtr"
	.byte	0x1
	.uahalf	0x5c5
	.uaword	0x3394
	.uleb128 0x1e
	.string	"counter"
	.byte	0x1
	.uahalf	0x5c7
	.uaword	0x270a
	.uleb128 0x1e
	.string	"LVDSDataPtr"
	.byte	0x1
	.uahalf	0x5c8
	.uaword	0x2c62
	.uleb128 0x1e
	.string	"LVDSRegPtr"
	.byte	0x1
	.uahalf	0x5c9
	.uaword	0x3394
	.uleb128 0x20
	.uleb128 0x1e
	.string	"DiscReg"
	.byte	0x1
	.uahalf	0x668
	.uaword	0x2364
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x339a
	.uleb128 0x19
	.uaword	0x339f
	.uleb128 0x12
	.uaword	0x270a
	.uleb128 0x1f
	.string	"Port_lPDRInit"
	.byte	0x1
	.uahalf	0x6d2
	.byte	0x1
	.byte	0x3
	.uaword	0x33e1
	.uleb128 0x1c
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x6d5
	.uaword	0x270a
	.uleb128 0x1c
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x6d8
	.uaword	0x270a
	.uleb128 0x1c
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x6d9
	.uaword	0x2f97
	.byte	0
	.uleb128 0x21
	.byte	0x1
	.string	"Port_Init"
	.byte	0x1
	.uahalf	0x284
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.uaword	.LLST0
	.byte	0x1
	.uaword	0x3913
	.uleb128 0x22
	.string	"ConfigPtr"
	.byte	0x1
	.uahalf	0x284
	.uaword	0x3913
	.uaword	.LLST1
	.uleb128 0x23
	.uaword	0x3276
	.uaword	.LBB161
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x2b0
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x25
	.uaword	0x328d
	.uaword	.LLST2
	.uleb128 0x25
	.uaword	0x3299
	.uaword	.LLST3
	.uleb128 0x25
	.uaword	0x32af
	.uaword	.LLST4
	.uleb128 0x25
	.uaword	0x32bb
	.uaword	.LLST5
	.uleb128 0x25
	.uaword	0x32cd
	.uaword	.LLST6
	.uleb128 0x25
	.uaword	0x32e2
	.uaword	.LLST7
	.uleb128 0x26
	.uaword	0x32ee
	.uleb128 0x25
	.uaword	0x32fa
	.uaword	.LLST8
	.uleb128 0x25
	.uaword	0x330e
	.uaword	.LLST9
	.uleb128 0x25
	.uaword	0x3323
	.uaword	.LLST10
	.uleb128 0x25
	.uaword	0x3336
	.uaword	.LLST11
	.uleb128 0x25
	.uaword	0x334a
	.uaword	.LLST12
	.uleb128 0x25
	.uaword	0x335a
	.uaword	.LLST13
	.uleb128 0x25
	.uaword	0x336e
	.uaword	.LLST14
	.uleb128 0x27
	.uaword	0x33a4
	.uaword	.LBB163
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x5d0
	.uaword	0x35a9
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x25
	.uaword	0x33bc
	.uaword	.LLST15
	.uleb128 0x25
	.uaword	0x33c8
	.uaword	.LLST16
	.uleb128 0x26
	.uaword	0x33d4
	.uleb128 0x27
	.uaword	0x2f29
	.uaword	.LBB165
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.uahalf	0x6ea
	.uaword	0x3556
	.uleb128 0x28
	.uaword	0x2f4d
	.uaword	.LLST17
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x25
	.uaword	0x2f59
	.uaword	.LLST18
	.uleb128 0x27
	.uaword	0x2cda
	.uaword	.LBB167
	.uaword	.Ldebug_ranges0+0x68
	.byte	0x1
	.uahalf	0x7a6
	.uaword	0x3527
	.uleb128 0x29
	.uaword	0x2d00
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x68
	.uleb128 0x26
	.uaword	0x2d0c
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2c9b
	.uaword	.LBB175
	.uaword	.LBE175
	.byte	0x1
	.uahalf	0x7a6
	.uleb128 0x28
	.uaword	0x2cc1
	.uaword	.LLST19
	.uleb128 0x2b
	.uaword	.LBB176
	.uaword	.LBE176
	.uleb128 0x25
	.uaword	0x2ccd
	.uaword	.LLST20
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x2f9d
	.uaword	.LBB180
	.uaword	.Ldebug_ranges0+0x90
	.byte	0x1
	.uahalf	0x701
	.uaword	0x3583
	.uleb128 0x28
	.uaword	0x2fc5
	.uaword	.LLST21
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x90
	.uleb128 0x25
	.uaword	0x2fd1
	.uaword	.LLST22
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL46
	.uaword	0x3ed9
	.uaword	0x3597
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL66
	.uaword	0x3ed9
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x306c
	.uaword	.LBB193
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.uahalf	0x650
	.uaword	0x35ff
	.uleb128 0x28
	.uaword	0x3094
	.uaword	.LLST23
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0xb0
	.uleb128 0x25
	.uaword	0x30a0
	.uaword	.LLST24
	.uleb128 0x23
	.uaword	0x2dd8
	.uaword	.LBB195
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.uahalf	0xa0e
	.uleb128 0x28
	.uaword	0x2e02
	.uaword	.LLST25
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0xd0
	.uleb128 0x25
	.uaword	0x2e0e
	.uaword	.LLST24
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	.Ldebug_ranges0+0xf0
	.uaword	0x3675
	.uleb128 0x26
	.uaword	0x3382
	.uleb128 0x27
	.uaword	0x30fb
	.uaword	.LBB205
	.uaword	.Ldebug_ranges0+0x118
	.byte	0x1
	.uahalf	0x66b
	.uaword	0x364c
	.uleb128 0x28
	.uaword	0x3124
	.uaword	.LLST27
	.uleb128 0x28
	.uaword	0x311a
	.uaword	.LLST27
	.uleb128 0x28
	.uaword	0x3110
	.uaword	.LLST29
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x118
	.uleb128 0x25
	.uaword	0x312e
	.uaword	.LLST30
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL31
	.uaword	0x3ed9
	.uaword	0x3660
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL70
	.uaword	0x3ed9
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x6
	.byte	0x11
	.sleb128 -268194208
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x2f29
	.uaword	.LBB209
	.uaword	.Ldebug_ranges0+0x130
	.byte	0x1
	.uahalf	0x5ee
	.uaword	0x3700
	.uleb128 0x28
	.uaword	0x2f4d
	.uaword	.LLST31
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x130
	.uleb128 0x25
	.uaword	0x2f59
	.uaword	.LLST32
	.uleb128 0x30
	.uaword	0x2cda
	.uaword	.LBB211
	.uaword	.LBE211
	.byte	0x1
	.uahalf	0x7a6
	.uaword	0x36d1
	.uleb128 0x28
	.uaword	0x2d00
	.uaword	.LLST33
	.uleb128 0x2b
	.uaword	.LBB212
	.uaword	.LBE212
	.uleb128 0x25
	.uaword	0x2d0c
	.uaword	.LLST34
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2c9b
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x1
	.uahalf	0x7a6
	.uleb128 0x28
	.uaword	0x2cc1
	.uaword	.LLST35
	.uleb128 0x2b
	.uaword	.LBB214
	.uaword	.LBE214
	.uleb128 0x25
	.uaword	0x2ccd
	.uaword	.LLST36
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x301a
	.uaword	.LBB216
	.uaword	.Ldebug_ranges0+0x148
	.byte	0x1
	.uahalf	0x62e
	.uaword	0x3736
	.uleb128 0x28
	.uaword	0x304e
	.uaword	.LLST37
	.uleb128 0x28
	.uaword	0x3042
	.uaword	.LLST38
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x148
	.uleb128 0x25
	.uaword	0x305a
	.uaword	.LLST39
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x301a
	.uaword	.LBB222
	.uaword	.LBE222
	.byte	0x1
	.uahalf	0x639
	.uaword	0x3770
	.uleb128 0x28
	.uaword	0x304e
	.uaword	.LLST40
	.uleb128 0x28
	.uaword	0x3042
	.uaword	.LLST41
	.uleb128 0x2b
	.uaword	.LBB223
	.uaword	.LBE223
	.uleb128 0x25
	.uaword	0x305a
	.uaword	.LLST42
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x301a
	.uaword	.LBB224
	.uaword	.LBE224
	.byte	0x1
	.uahalf	0x644
	.uaword	0x37aa
	.uleb128 0x28
	.uaword	0x304e
	.uaword	.LLST43
	.uleb128 0x28
	.uaword	0x3042
	.uaword	.LLST44
	.uleb128 0x2b
	.uaword	.LBB225
	.uaword	.LBE225
	.uleb128 0x25
	.uaword	0x305a
	.uaword	.LLST45
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x30ad
	.uaword	.LBB228
	.uaword	.LBE228
	.byte	0x1
	.uahalf	0x664
	.uaword	0x37db
	.uleb128 0x28
	.uaword	0x30d8
	.uaword	.LLST46
	.uleb128 0x2b
	.uaword	.LBB229
	.uaword	.LBE229
	.uleb128 0x25
	.uaword	0x30ee
	.uaword	.LLST47
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x313b
	.uaword	.LBB231
	.uaword	.Ldebug_ranges0+0x168
	.byte	0x1
	.uahalf	0x68a
	.uaword	0x3866
	.uleb128 0x28
	.uaword	0x3163
	.uaword	.LLST48
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x168
	.uleb128 0x25
	.uaword	0x316f
	.uaword	.LLST49
	.uleb128 0x30
	.uaword	0x2e5e
	.uaword	.LBB233
	.uaword	.LBE233
	.byte	0x1
	.uahalf	0xa7f
	.uaword	0x3837
	.uleb128 0x28
	.uaword	0x2e88
	.uaword	.LLST50
	.uleb128 0x2b
	.uaword	.LBB234
	.uaword	.LBE234
	.uleb128 0x25
	.uaword	0x2e94
	.uaword	.LLST51
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2e1b
	.uaword	.LBB235
	.uaword	.LBE235
	.byte	0x1
	.uahalf	0xa7f
	.uleb128 0x28
	.uaword	0x2e45
	.uaword	.LLST52
	.uleb128 0x2b
	.uaword	.LBB236
	.uaword	.LBE236
	.uleb128 0x25
	.uaword	0x2e51
	.uaword	.LLST53
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x317c
	.uaword	.LBB238
	.uaword	.LBE238
	.byte	0x1
	.uahalf	0x6a2
	.uaword	0x38c0
	.uleb128 0x28
	.uaword	0x31a5
	.uaword	.LLST54
	.uleb128 0x2b
	.uaword	.LBB239
	.uaword	.LBE239
	.uleb128 0x25
	.uaword	0x31b1
	.uaword	.LLST55
	.uleb128 0x2a
	.uaword	0x2ee5
	.uaword	.LBB240
	.uaword	.LBE240
	.byte	0x1
	.uahalf	0xafc
	.uleb128 0x28
	.uaword	0x2f10
	.uaword	.LLST56
	.uleb128 0x2b
	.uaword	.LBB241
	.uaword	.LBE241
	.uleb128 0x26
	.uaword	0x2f1c
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL14
	.uaword	0x3ed9
	.uaword	0x38d5
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8c
	.sleb128 80
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL55
	.uaword	0x3ed9
	.uaword	0x38ea
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8c
	.sleb128 96
	.byte	0
	.uleb128 0x2c
	.uaword	.LVL58
	.uaword	0x3f19
	.uaword	0x38ff
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8c
	.sleb128 100
	.byte	0
	.uleb128 0x2e
	.uaword	.LVL64
	.uaword	0x3f19
	.uleb128 0x2d
	.byte	0x1
	.byte	0x64
	.byte	0x3
	.byte	0x8c
	.sleb128 100
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x3918
	.uleb128 0x18
	.byte	0x4
	.uaword	0x391e
	.uleb128 0x19
	.uaword	0x2c83
	.uleb128 0x31
	.byte	0x1
	.string	"Port_SetPinDirection"
	.byte	0x1
	.uahalf	0x2e3
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3b28
	.uleb128 0x22
	.string	"Pin"
	.byte	0x1
	.uahalf	0x2e4
	.uaword	0x31f2
	.uaword	.LLST57
	.uleb128 0x32
	.string	"Direction"
	.byte	0x1
	.uahalf	0x2e5
	.uaword	0x3b28
	.byte	0x1
	.byte	0x55
	.uleb128 0x33
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x2e9
	.uaword	0x270a
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x2ea
	.uaword	0x270a
	.uleb128 0x34
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x2f0
	.uaword	0x270a
	.uaword	.LLST58
	.uleb128 0x35
	.string	"Index"
	.byte	0x1
	.uahalf	0x2f1
	.uaword	0x270a
	.uaword	.LLST59
	.uleb128 0x34
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x2f2
	.uaword	0x3b2d
	.uaword	.LLST60
	.uleb128 0x34
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x2f3
	.uaword	0x3b38
	.uaword	.LLST61
	.uleb128 0x34
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x2f4
	.uaword	0x2c62
	.uaword	.LLST62
	.uleb128 0x1c
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x2f5
	.uaword	0x2f97
	.uleb128 0x30
	.uaword	0x31be
	.uaword	.LBB249
	.uaword	.LBE249
	.byte	0x1
	.uahalf	0x309
	.uaword	0x3a1b
	.uleb128 0x28
	.uaword	0x31d9
	.uaword	.LLST63
	.uleb128 0x2b
	.uaword	.LBB250
	.uaword	.LBE250
	.uleb128 0x25
	.uaword	0x31e5
	.uaword	.LLST64
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x31f7
	.uaword	.LBB251
	.uaword	.LBE251
	.byte	0x1
	.uahalf	0x30d
	.uaword	0x3a50
	.uleb128 0x28
	.uaword	0x3215
	.uaword	.LLST65
	.uleb128 0x2b
	.uaword	.LBB252
	.uaword	.LBE252
	.uleb128 0x36
	.uaword	0x3221
	.byte	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x2f29
	.uaword	.LBB253
	.uaword	.Ldebug_ranges0+0x180
	.byte	0x1
	.uahalf	0x341
	.uaword	0x3abb
	.uleb128 0x29
	.uaword	0x2f4d
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x180
	.uleb128 0x26
	.uaword	0x2f59
	.uleb128 0x27
	.uaword	0x2cda
	.uaword	.LBB255
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.uahalf	0x7a6
	.uaword	0x3a98
	.uleb128 0x29
	.uaword	0x2d00
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x198
	.uleb128 0x26
	.uaword	0x2d0c
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x2c9b
	.uaword	.LBB261
	.uaword	.Ldebug_ranges0+0x1c0
	.byte	0x1
	.uahalf	0x7a6
	.uleb128 0x29
	.uaword	0x2cc1
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x1c0
	.uleb128 0x26
	.uaword	0x2ccd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x2f66
	.uaword	.LBB269
	.uaword	.LBE269
	.byte	0x1
	.uahalf	0x378
	.uaword	0x3aec
	.uleb128 0x28
	.uaword	0x2f7e
	.uaword	.LLST66
	.uleb128 0x2b
	.uaword	.LBB270
	.uaword	.LBE270
	.uleb128 0x25
	.uaword	0x2f8a
	.uaword	.LLST67
	.byte	0
	.byte	0
	.uleb128 0x37
	.uaword	.LBB271
	.uaword	.LBE271
	.uaword	0x3b0a
	.uleb128 0x35
	.string	"tmp"
	.byte	0x1
	.uahalf	0x390
	.uaword	0x26f9
	.uaword	.LLST68
	.byte	0
	.uleb128 0x2b
	.uaword	.LBB272
	.uaword	.LBE272
	.uleb128 0x38
	.string	"tmp"
	.byte	0x1
	.uahalf	0x389
	.uaword	0x26f9
	.byte	0x6
	.byte	0x52
	.byte	0x93
	.uleb128 0x4
	.byte	0x53
	.byte	0x93
	.uleb128 0x4
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x27b5
	.uleb128 0x18
	.byte	0x4
	.uaword	0x3b33
	.uleb128 0x19
	.uaword	0x26de
	.uleb128 0x18
	.byte	0x4
	.uaword	0x339f
	.uleb128 0x31
	.byte	0x1
	.string	"Port_RefreshPortDirection"
	.byte	0x1
	.uahalf	0x3b8
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3c83
	.uleb128 0x35
	.string	"LoopCtr"
	.byte	0x1
	.uahalf	0x3ba
	.uaword	0x270a
	.uaword	.LLST69
	.uleb128 0x34
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x3bc
	.uaword	0x270a
	.uaword	.LLST70
	.uleb128 0x34
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x3bd
	.uaword	0x270a
	.uaword	.LLST71
	.uleb128 0x35
	.string	"DirectionData"
	.byte	0x1
	.uahalf	0x3c0
	.uaword	0x270a
	.uaword	.LLST72
	.uleb128 0x35
	.string	"PinPos"
	.byte	0x1
	.uahalf	0x3c1
	.uaword	0x270a
	.uaword	.LLST73
	.uleb128 0x34
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x3c3
	.uaword	0x2c62
	.uaword	.LLST74
	.uleb128 0x34
	.uaword	.LASF13
	.byte	0x1
	.uahalf	0x3c4
	.uaword	0x3b2d
	.uaword	.LLST75
	.uleb128 0x34
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x3c5
	.uaword	0x3c83
	.uaword	.LLST76
	.uleb128 0x1c
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x3c6
	.uaword	0x2f97
	.uleb128 0x23
	.uaword	0x2f29
	.uaword	.LBB273
	.uaword	.Ldebug_ranges0+0x1d8
	.byte	0x1
	.uahalf	0x3e8
	.uleb128 0x28
	.uaword	0x2f4d
	.uaword	.LLST77
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x1d8
	.uleb128 0x25
	.uaword	0x2f59
	.uaword	.LLST78
	.uleb128 0x27
	.uaword	0x2cda
	.uaword	.LBB275
	.uaword	.Ldebug_ranges0+0x200
	.byte	0x1
	.uahalf	0x7a6
	.uaword	0x3c57
	.uleb128 0x29
	.uaword	0x2d00
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x200
	.uleb128 0x26
	.uaword	0x2d0c
	.byte	0
	.byte	0
	.uleb128 0x2a
	.uaword	0x2c9b
	.uaword	.LBB283
	.uaword	.LBE283
	.byte	0x1
	.uahalf	0x7a6
	.uleb128 0x39
	.uaword	0x2cc1
	.byte	0x1
	.byte	0x55
	.uleb128 0x2b
	.uaword	.LBB284
	.uaword	.LBE284
	.uleb128 0x36
	.uaword	0x2ccd
	.byte	0x1
	.byte	0x5f
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x18
	.byte	0x4
	.uaword	0x3c89
	.uleb128 0x12
	.uaword	0x26de
	.uleb128 0x31
	.byte	0x1
	.string	"Port_SetPinMode"
	.byte	0x1
	.uahalf	0x483
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3e7f
	.uleb128 0x22
	.string	"Pin"
	.byte	0x1
	.uahalf	0x483
	.uaword	0x31f2
	.uaword	.LLST79
	.uleb128 0x22
	.string	"Mode"
	.byte	0x1
	.uahalf	0x483
	.uaword	0x3e7f
	.uaword	.LLST80
	.uleb128 0x33
	.uaword	.LASF8
	.byte	0x1
	.uahalf	0x486
	.uaword	0x270a
	.byte	0x1
	.byte	0x51
	.uleb128 0x1c
	.uaword	.LASF12
	.byte	0x1
	.uahalf	0x487
	.uaword	0x270a
	.uleb128 0x34
	.uaword	.LASF10
	.byte	0x1
	.uahalf	0x48d
	.uaword	0x270a
	.uaword	.LLST81
	.uleb128 0x35
	.string	"Index"
	.byte	0x1
	.uahalf	0x48e
	.uaword	0x270a
	.uaword	.LLST82
	.uleb128 0x34
	.uaword	.LASF9
	.byte	0x1
	.uahalf	0x48f
	.uaword	0x2c62
	.uaword	.LLST83
	.uleb128 0x34
	.uaword	.LASF14
	.byte	0x1
	.uahalf	0x490
	.uaword	0x3b38
	.uaword	.LLST84
	.uleb128 0x35
	.string	"ReadMode"
	.byte	0x1
	.uahalf	0x491
	.uaword	0x26de
	.uaword	.LLST85
	.uleb128 0x35
	.string	"SetMode"
	.byte	0x1
	.uahalf	0x492
	.uaword	0x26de
	.uaword	.LLST86
	.uleb128 0x1c
	.uaword	.LASF11
	.byte	0x1
	.uahalf	0x493
	.uaword	0x2f97
	.uleb128 0x30
	.uaword	0x31be
	.uaword	.LBB291
	.uaword	.LBE291
	.byte	0x1
	.uahalf	0x4af
	.uaword	0x3d97
	.uleb128 0x28
	.uaword	0x31d9
	.uaword	.LLST87
	.uleb128 0x2b
	.uaword	.LBB292
	.uaword	.LBE292
	.uleb128 0x25
	.uaword	0x31e5
	.uaword	.LLST88
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x31f7
	.uaword	.LBB293
	.uaword	.LBE293
	.byte	0x1
	.uahalf	0x4b3
	.uaword	0x3dc8
	.uleb128 0x28
	.uaword	0x3215
	.uaword	.LLST89
	.uleb128 0x2b
	.uaword	.LBB294
	.uaword	.LBE294
	.uleb128 0x25
	.uaword	0x3221
	.uaword	.LLST90
	.byte	0
	.byte	0
	.uleb128 0x27
	.uaword	0x2f29
	.uaword	.LBB295
	.uaword	.Ldebug_ranges0+0x228
	.byte	0x1
	.uahalf	0x4db
	.uaword	0x3e33
	.uleb128 0x29
	.uaword	0x2f4d
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x228
	.uleb128 0x26
	.uaword	0x2f59
	.uleb128 0x27
	.uaword	0x2cda
	.uaword	.LBB297
	.uaword	.Ldebug_ranges0+0x240
	.byte	0x1
	.uahalf	0x7a6
	.uaword	0x3e10
	.uleb128 0x29
	.uaword	0x2d00
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x240
	.uleb128 0x26
	.uaword	0x2d0c
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x2c9b
	.uaword	.LBB303
	.uaword	.Ldebug_ranges0+0x268
	.byte	0x1
	.uahalf	0x7a6
	.uleb128 0x29
	.uaword	0x2cc1
	.uleb128 0x24
	.uaword	.Ldebug_ranges0+0x268
	.uleb128 0x26
	.uaword	0x2ccd
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x30
	.uaword	0x2f66
	.uaword	.LBB311
	.uaword	.LBE311
	.byte	0x1
	.uahalf	0x4ee
	.uaword	0x3e64
	.uleb128 0x28
	.uaword	0x2f7e
	.uaword	.LLST91
	.uleb128 0x2b
	.uaword	.LBB312
	.uaword	.LBE312
	.uleb128 0x25
	.uaword	0x2f8a
	.uaword	.LLST92
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uaword	.LBB313
	.uaword	.LBE313
	.uleb128 0x35
	.string	"tmp"
	.byte	0x1
	.uahalf	0x531
	.uaword	0x26f9
	.uaword	.LLST93
	.byte	0
	.byte	0
	.uleb128 0x19
	.uaword	0x27d2
	.uleb128 0x10
	.uaword	0x26eb
	.uaword	0x3e94
	.uleb128 0x11
	.uaword	0x266f
	.byte	0x28
	.byte	0
	.uleb128 0x38
	.string	"Port_kAvailablePins"
	.byte	0x1
	.uahalf	0x148
	.uaword	0x3eb6
	.byte	0x5
	.byte	0x3
	.uaword	Port_kAvailablePins
	.uleb128 0x19
	.uaword	0x3e84
	.uleb128 0x38
	.string	"Port_kConfigPtr"
	.byte	0x1
	.uahalf	0x18d
	.uaword	0x3918
	.byte	0x5
	.byte	0x3
	.uaword	Port_kConfigPtr
	.uleb128 0x3a
	.byte	0x1
	.string	"Mcal_WritePeripEndInitProtReg"
	.byte	0x7
	.uahalf	0x223
	.byte	0x1
	.byte	0x1
	.uaword	0x3f0d
	.uleb128 0x3b
	.uaword	0x3f0d
	.uleb128 0x3b
	.uaword	0x2c68
	.byte	0
	.uleb128 0x19
	.uaword	0x3f12
	.uleb128 0x18
	.byte	0x4
	.uaword	0x3f18
	.uleb128 0x3c
	.uleb128 0x3d
	.byte	0x1
	.string	"Mcal_WriteSafetyEndInitProtReg"
	.byte	0x7
	.uahalf	0x1b0
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.uaword	0x3f0d
	.uleb128 0x3b
	.uaword	0x2c68
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
	.uleb128 0x3
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
	.uleb128 0x4
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
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x11
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x12
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
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
	.uleb128 0x18
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x19
	.uleb128 0x26
	.byte	0
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
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0xb
	.byte	0x1
	.byte	0
	.byte	0
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x5
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
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
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
	.uleb128 0x28
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x29
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2a
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
	.uleb128 0x2b
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x30
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
	.uleb128 0x31
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
	.uleb128 0x32
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
	.uleb128 0x33
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x36
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x37
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x3a
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
	.uleb128 0x3b
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x3c
	.uleb128 0x35
	.byte	0
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
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LFB19
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x8a
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL0
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL2
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x64
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL12
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL15
	.uaword	.LVL17
	.uahalf	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x8f
	.sleb128 8
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL23
	.uahalf	0x3
	.byte	0x8f
	.sleb128 12
	.byte	0x9f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0x3
	.byte	0x8f
	.sleb128 12
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL12
	.uaword	.LVL23
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x53
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL48
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x8f
	.sleb128 16
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL13
	.uaword	.LVL14-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL6
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LVL41
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LVL48
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL8
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL10
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL38
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL48
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL58
	.uaword	.LVL63
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x91
	.sleb128 -4
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL10
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL40
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL48
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x91
	.sleb128 -8
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL56
	.uaword	.LVL57
	.uahalf	0x4
	.byte	0x8c
	.sleb128 100
	.byte	0x9f
	.uaword	.LVL57
	.uaword	.LVL58-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL58-1
	.uaword	.LVL59
	.uahalf	0x4
	.byte	0x8c
	.sleb128 100
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x4
	.byte	0x8c
	.sleb128 100
	.byte	0x9f
	.uaword	.LVL62
	.uaword	.LVL64-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL64-1
	.uaword	.LVL65
	.uahalf	0x4
	.byte	0x8c
	.sleb128 100
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x4
	.byte	0x8c
	.sleb128 96
	.byte	0x9f
	.uaword	.LVL54
	.uaword	.LVL55-1
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL55-1
	.uaword	.LVL56
	.uahalf	0x4
	.byte	0x8c
	.sleb128 96
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL7
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL10
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL23
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x6d
	.uaword	.LVL36
	.uaword	.LVL43
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL48
	.uaword	.LVL65
	.uahalf	0x2
	.byte	0x91
	.sleb128 -12
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL23
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x6f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL43
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL2
	.uaword	.LVL10
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL43
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x59
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x59
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL2
	.uaword	.LVL5
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL43
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44
	.uaword	.LVL46-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL43
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL46
	.uaword	.LVL48
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xb
	.uahalf	0xff00
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL65
	.uaword	.LVL67
	.uahalf	0x11
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xb
	.uahalf	0xff00
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL20
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL53
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL22
	.uaword	.LVL39
	.uahalf	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0xc
	.uaword	0x606000
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0xc
	.uaword	0x606000
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x9
	.byte	0x7a
	.sleb128 0
	.byte	0xc
	.uaword	0x606000
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL21
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL28
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL68
	.uaword	.LVL70-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL67
	.uaword	.LVL70-1
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL10
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL48
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0xb
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x24
	.byte	0xc
	.uaword	0xf0fc07
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x107
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x107
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0xb
	.byte	0x31
	.byte	0x78
	.sleb128 0
	.byte	0x24
	.byte	0xc
	.uaword	0xf0fc07
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL48
	.uaword	.LVL53
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL49
	.uaword	.LVL50
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x107
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL51
	.uaword	.LVL53
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0x107
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL15
	.uaword	.LVL41
	.uahalf	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL65
	.uahalf	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x3
	.byte	0x8
	.byte	0xf0
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL15
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL53
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LVL16
	.uaword	.LVL19
	.uahalf	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL41
	.uahalf	0x10
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL59
	.uahalf	0x10
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL64-1
	.uahalf	0x8
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL64-1
	.uaword	.LVL65
	.uahalf	0x10
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x10
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0x8
	.byte	0xf0
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL17
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xf00
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL65
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xf00
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xa
	.uahalf	0xf00
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL17
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL53
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL17
	.uaword	.LVL19
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xa
	.uahalf	0xf00
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xf00
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL41
	.uahalf	0x11
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xf00
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL59
	.uahalf	0x11
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xf00
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL64-1
	.uahalf	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xf00
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL64-1
	.uaword	.LVL65
	.uahalf	0x11
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xf00
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x11
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xa
	.uahalf	0xf00
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL18
	.uaword	.LVL41
	.uahalf	0x4
	.byte	0xb
	.uahalf	0xf000
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL65
	.uahalf	0x4
	.byte	0xb
	.uahalf	0xf000
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x4
	.byte	0xb
	.uahalf	0xf000
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL18
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL53
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x7
	.byte	0x7f
	.sleb128 0
	.byte	0xb
	.uahalf	0xf000
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL19
	.uaword	.LVL24
	.uahalf	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xb
	.uahalf	0xf000
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL24
	.uaword	.LVL41
	.uahalf	0x11
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xb
	.uahalf	0xf000
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL59
	.uahalf	0x11
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xb
	.uahalf	0xf000
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL59
	.uaword	.LVL64-1
	.uahalf	0x9
	.byte	0x82
	.sleb128 0
	.byte	0x94
	.byte	0x2
	.byte	0xb
	.uahalf	0xf000
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL64-1
	.uaword	.LVL65
	.uahalf	0x11
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xb
	.uahalf	0xf000
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LFE19
	.uahalf	0x11
	.byte	0x78
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x3
	.uaword	Port_kAvailablePins
	.byte	0x22
	.byte	0x94
	.byte	0x2
	.byte	0xb
	.uahalf	0xf000
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL25
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL68
	.uaword	.LVL70-1
	.uahalf	0x2
	.byte	0x8d
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL25
	.uaword	.LVL26
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL27
	.uaword	.LVL30
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL67
	.uaword	.LVL68
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL68
	.uaword	.LVL70-1
	.uahalf	0x6
	.byte	0x8d
	.sleb128 0
	.byte	0x6
	.byte	0x40
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL36
	.uaword	.LVL41
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL53
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.uahalf	0x801
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x9
	.byte	0x31
	.byte	0x78
	.sleb128 -32
	.byte	0x24
	.byte	0xa
	.uahalf	0x106
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST50:
	.uaword	.LVL36
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST51:
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x7
	.byte	0x7a
	.sleb128 0
	.byte	0xa
	.uahalf	0x801
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL56
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST52:
	.uaword	.LVL59
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST53:
	.uaword	.LVL59
	.uaword	.LVL60
	.uahalf	0x9
	.byte	0x31
	.byte	0x78
	.sleb128 -32
	.byte	0x24
	.byte	0xa
	.uahalf	0x106
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL60
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST54:
	.uaword	.LVL38
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL53
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL64
	.uaword	.LVL65
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST55:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5a
	.uaword	.LVL53
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST56:
	.uaword	.LVL38
	.uaword	.LVL39
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST57:
	.uaword	.LVL71
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL84
	.uaword	.LVL87
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL88
	.uaword	.LFE20
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST58:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL75
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST59:
	.uaword	.LVL73
	.uaword	.LVL74
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL76
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST60:
	.uaword	.LVL79
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0xb
	.byte	0x3
	.uaword	Port_kConfigPtr
	.byte	0x6
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST61:
	.uaword	.LVL83
	.uaword	.LVL86
	.uahalf	0x1
	.byte	0x62
	.uaword	.LVL87
	.uaword	.LFE20
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST62:
	.uaword	.LVL78
	.uaword	.LVL81
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL81
	.uaword	.LVL82
	.uahalf	0xb
	.byte	0x3
	.uaword	Port_kConfigPtr
	.byte	0x6
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST63:
	.uaword	.LVL71
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST64:
	.uaword	.LVL72
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL80
	.uaword	.LVL84
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST65:
	.uaword	.LVL72
	.uaword	.LVL84
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST66:
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL80
	.uaword	.LVL84
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST67:
	.uaword	.LVL79
	.uaword	.LVL80
	.uahalf	0xb
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0xc
	.uaword	0xffc6000
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL80
	.uaword	.LVL84
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x38
	.byte	0x24
	.byte	0xc
	.uaword	0xffc6000
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL87
	.uaword	.LVL88
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x38
	.byte	0x24
	.byte	0xc
	.uaword	0xffc6000
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST68:
	.uaword	.LVL85
	.uaword	.LVL86
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
	.uaword	0
	.uaword	0
.LLST69:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST70:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST71:
	.uaword	.LVL90
	.uaword	.LVL91
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL91
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x57
	.uaword	0
	.uaword	0
.LLST72:
	.uaword	.LVL95
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x56
	.uaword	0
	.uaword	0
.LLST73:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL97
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST74:
	.uaword	.LVL94
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL96
	.uaword	.LVL101
	.uahalf	0x1
	.byte	0x64
	.uaword	0
	.uaword	0
.LLST75:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x62
	.uaword	0
	.uaword	0
.LLST76:
	.uaword	.LVL95
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x63
	.uaword	.LVL97
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x66
	.uaword	0
	.uaword	0
.LLST77:
	.uaword	.LVL91
	.uaword	.LVL102
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL102
	.uaword	.LVL103
	.uahalf	0x3
	.byte	0x75
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL103
	.uaword	.LFE21
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST78:
	.uaword	.LVL92
	.uaword	.LVL93
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST79:
	.uaword	.LVL105
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL117
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST80:
	.uaword	.LVL105
	.uaword	.LVL119
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL119
	.uaword	.LFE22
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST81:
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL109
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST82:
	.uaword	.LVL107
	.uaword	.LVL108
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL110
	.uaword	.LVL111
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST83:
	.uaword	.LVL111
	.uaword	.LVL112
	.uahalf	0xb
	.byte	0x3
	.uaword	Port_kConfigPtr
	.byte	0x6
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	.LVL112
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x6f
	.uaword	.LVL116
	.uaword	.LFE22
	.uahalf	0xb
	.byte	0x3
	.uaword	Port_kConfigPtr
	.byte	0x6
	.byte	0x6
	.byte	0x72
	.sleb128 0
	.byte	0x22
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST84:
	.uaword	.LVL111
	.uaword	.LVL113
	.uahalf	0x18
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0x32
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.uaword	0xffc6000
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL114
	.uahalf	0x16
	.byte	0x74
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0x32
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.uaword	0xffc6000
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x14
	.byte	0x74
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0x32
	.byte	0x24
	.byte	0x71
	.sleb128 0
	.byte	0x22
	.byte	0xc
	.uaword	0xffc6000
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LVL117
	.uahalf	0x1c
	.byte	0x74
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x32
	.byte	0x25
	.byte	0x23
	.uleb128 0x4
	.byte	0x32
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x38
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.uaword	0xffc6000
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST85:
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST86:
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xc0
	.byte	0x1a
	.byte	0x75
	.sleb128 0
	.byte	0x21
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST87:
	.uaword	.LVL105
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST88:
	.uaword	.LVL106
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL114
	.uaword	.LVL117
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST89:
	.uaword	.LVL106
	.uaword	.LVL117
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST90:
	.uaword	.LVL107
	.uaword	.LVL113
	.uahalf	0x7
	.byte	0x78
	.sleb128 0
	.byte	0xa
	.uahalf	0xffff
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL113
	.uaword	.LVL117
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST91:
	.uaword	.LVL111
	.uaword	.LVL114
	.uahalf	0x1
	.byte	0x51
	.uaword	.LVL114
	.uaword	.LVL117
	.uahalf	0x9
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST92:
	.uaword	.LVL111
	.uaword	.LVL114
	.uahalf	0xb
	.byte	0x71
	.sleb128 0
	.byte	0x38
	.byte	0x24
	.byte	0xc
	.uaword	0xffc6000
	.byte	0x1c
	.byte	0x9f
	.uaword	.LVL114
	.uaword	.LVL115
	.uahalf	0x7
	.byte	0x71
	.sleb128 -268197888
	.byte	0x9f
	.uaword	.LVL115
	.uaword	.LVL117
	.uahalf	0x11
	.byte	0x74
	.sleb128 0
	.byte	0x9
	.byte	0xf8
	.byte	0x24
	.byte	0x9
	.byte	0xfc
	.byte	0x25
	.byte	0x38
	.byte	0x24
	.byte	0xc
	.uaword	0xffc6000
	.byte	0x1c
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST93:
	.uaword	.LVL120
	.uaword	.LVL121
	.uahalf	0x6
	.byte	0x54
	.byte	0x93
	.uleb128 0x4
	.byte	0x55
	.byte	0x93
	.uleb128 0x4
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
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB161
	.uaword	.LBE161
	.uaword	.LBB248
	.uaword	.LBE248
	.uaword	0
	.uaword	0
	.uaword	.LBB163
	.uaword	.LBE163
	.uaword	.LBB192
	.uaword	.LBE192
	.uaword	.LBB242
	.uaword	.LBE242
	.uaword	.LBB245
	.uaword	.LBE245
	.uaword	0
	.uaword	0
	.uaword	.LBB165
	.uaword	.LBE165
	.uaword	.LBB184
	.uaword	.LBE184
	.uaword	.LBB186
	.uaword	.LBE186
	.uaword	.LBB187
	.uaword	.LBE187
	.uaword	0
	.uaword	0
	.uaword	.LBB167
	.uaword	.LBE167
	.uaword	.LBB172
	.uaword	.LBE172
	.uaword	.LBB173
	.uaword	.LBE173
	.uaword	.LBB174
	.uaword	.LBE174
	.uaword	0
	.uaword	0
	.uaword	.LBB180
	.uaword	.LBE180
	.uaword	.LBB185
	.uaword	.LBE185
	.uaword	.LBB188
	.uaword	.LBE188
	.uaword	0
	.uaword	0
	.uaword	.LBB193
	.uaword	.LBE193
	.uaword	.LBB203
	.uaword	.LBE203
	.uaword	.LBB226
	.uaword	.LBE226
	.uaword	0
	.uaword	0
	.uaword	.LBB195
	.uaword	.LBE195
	.uaword	.LBB199
	.uaword	.LBE199
	.uaword	.LBB200
	.uaword	.LBE200
	.uaword	0
	.uaword	0
	.uaword	.LBB204
	.uaword	.LBE204
	.uaword	.LBB227
	.uaword	.LBE227
	.uaword	.LBB230
	.uaword	.LBE230
	.uaword	.LBB246
	.uaword	.LBE246
	.uaword	0
	.uaword	0
	.uaword	.LBB205
	.uaword	.LBE205
	.uaword	.LBB208
	.uaword	.LBE208
	.uaword	0
	.uaword	0
	.uaword	.LBB209
	.uaword	.LBE209
	.uaword	.LBB243
	.uaword	.LBE243
	.uaword	0
	.uaword	0
	.uaword	.LBB216
	.uaword	.LBE216
	.uaword	.LBB220
	.uaword	.LBE220
	.uaword	.LBB221
	.uaword	.LBE221
	.uaword	0
	.uaword	0
	.uaword	.LBB231
	.uaword	.LBE231
	.uaword	.LBB244
	.uaword	.LBE244
	.uaword	0
	.uaword	0
	.uaword	.LBB253
	.uaword	.LBE253
	.uaword	.LBB268
	.uaword	.LBE268
	.uaword	0
	.uaword	0
	.uaword	.LBB255
	.uaword	.LBE255
	.uaword	.LBB260
	.uaword	.LBE260
	.uaword	.LBB264
	.uaword	.LBE264
	.uaword	.LBB266
	.uaword	.LBE266
	.uaword	0
	.uaword	0
	.uaword	.LBB261
	.uaword	.LBE261
	.uaword	.LBB265
	.uaword	.LBE265
	.uaword	0
	.uaword	0
	.uaword	.LBB273
	.uaword	.LBE273
	.uaword	.LBB288
	.uaword	.LBE288
	.uaword	.LBB289
	.uaword	.LBE289
	.uaword	.LBB290
	.uaword	.LBE290
	.uaword	0
	.uaword	0
	.uaword	.LBB275
	.uaword	.LBE275
	.uaword	.LBB280
	.uaword	.LBE280
	.uaword	.LBB281
	.uaword	.LBE281
	.uaword	.LBB282
	.uaword	.LBE282
	.uaword	0
	.uaword	0
	.uaword	.LBB295
	.uaword	.LBE295
	.uaword	.LBB310
	.uaword	.LBE310
	.uaword	0
	.uaword	0
	.uaword	.LBB297
	.uaword	.LBE297
	.uaword	.LBB302
	.uaword	.LBE302
	.uaword	.LBB306
	.uaword	.LBE306
	.uaword	.LBB308
	.uaword	.LBE308
	.uaword	0
	.uaword	0
	.uaword	.LBB303
	.uaword	.LBE303
	.uaword	.LBB307
	.uaword	.LBE307
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF7:
	.string	"RetVal"
.LASF10:
	.string	"ConfigIndex"
.LASF0:
	.string	"reserved_0"
.LASF9:
	.string	"DataPtr"
.LASF2:
	.string	"reserved_8"
.LASF8:
	.string	"PortNumber"
.LASF6:
	.string	"Port"
.LASF13:
	.string	"IocrDataPtr"
.LASF12:
	.string	"PinNumber"
.LASF14:
	.string	"IocrRegPtr"
.LASF1:
	.string	"reserved_16"
.LASF11:
	.string	"PortAddressPtr"
.LASF4:
	.string	"reserved_20"
.LASF3:
	.string	"reserved_24"
.LASF5:
	.string	"reserved_28"
	.extern	Mcal_WriteSafetyEndInitProtReg,STT_FUNC,0
	.extern	Mcal_WritePeripEndInitProtReg,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
