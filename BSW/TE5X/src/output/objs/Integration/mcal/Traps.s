	.file	"Traps.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text._trap_0,"ax",@progbits
	.align 1
	.global	_trap_0
	.type	_trap_0, @function
_trap_0:
.LFB19:
	.file 1 "Integration\\mcal\\Traps.c"
	.loc 1 203 0
	.loc 1 206 0
#APP
	# 206 "Integration\mcal\Traps.c" 1
	svlcx
	# 0 "" 2
.LVL0:
#NO_APP
.L2:
	.loc 1 215 0 discriminator 1
	j	.L2
.LFE19:
	.size	_trap_0, .-_trap_0
.section .text._trap_1,"ax",@progbits
	.align 1
	.global	_trap_1
	.type	_trap_1, @function
_trap_1:
.LFB20:
	.loc 1 239 0
	.loc 1 241 0
#APP
	# 241 "Integration\mcal\Traps.c" 1
	svlcx
	# 0 "" 2
.LVL1:
#NO_APP
.L5:
	.loc 1 246 0 discriminator 1
	j	.L5
.LFE20:
	.size	_trap_1, .-_trap_1
.section .text._trap_2,"ax",@progbits
	.align 1
	.global	_trap_2
	.type	_trap_2, @function
_trap_2:
.LFB21:
	.loc 1 270 0
	.loc 1 273 0
#APP
	# 273 "Integration\mcal\Traps.c" 1
	svlcx
	# 0 "" 2
.LVL2:
#NO_APP
.L7:
	.loc 1 278 0 discriminator 1
	j	.L7
.LFE21:
	.size	_trap_2, .-_trap_2
.section .text._trap_3,"ax",@progbits
	.align 1
	.global	_trap_3
	.type	_trap_3, @function
_trap_3:
.LFB22:
	.loc 1 303 0
	.loc 1 308 0
#APP
	# 308 "Integration\mcal\Traps.c" 1
	svlcx
	# 0 "" 2
.LVL3:
#NO_APP
.L9:
	.loc 1 314 0 discriminator 1
	j	.L9
.LFE22:
	.size	_trap_3, .-_trap_3
.section .text._trap_4,"ax",@progbits
	.align 1
	.global	_trap_4
	.type	_trap_4, @function
_trap_4:
.LFB23:
	.loc 1 345 0
	.loc 1 348 0
#APP
	# 348 "Integration\mcal\Traps.c" 1
	svlcx

	# 0 "" 2
.LVL4:
#NO_APP
.L11:
	.loc 1 353 0 discriminator 1
	j	.L11
.LFE23:
	.size	_trap_4, .-_trap_4
.section .text._trap_5,"ax",@progbits
	.align 1
	.global	_trap_5
	.type	_trap_5, @function
_trap_5:
.LFB24:
	.loc 1 378 0
	.loc 1 381 0
#APP
	# 381 "Integration\mcal\Traps.c" 1
	svlcx
	# 0 "" 2
.LVL5:
#NO_APP
.L13:
	.loc 1 386 0 discriminator 1
	j	.L13
.LFE24:
	.size	_trap_5, .-_trap_5
.section .text._trap_6,"ax",@progbits
	.align 1
	.global	_trap_6
	.type	_trap_6, @function
_trap_6:
.LFB25:
	.loc 1 415 0
	.loc 1 417 0
#APP
	# 417 "Integration\mcal\Traps.c" 1
	svlcx
	# 0 "" 2
.LVL6:
#NO_APP
.L15:
	.loc 1 427 0 discriminator 1
	j	.L15
.LFE25:
	.size	_trap_6, .-_trap_6
.section .text._trap_7,"ax",@progbits
	.align 1
	.global	_trap_7
	.type	_trap_7, @function
_trap_7:
.LFB26:
	.loc 1 454 0
	.loc 1 457 0
#APP
	# 457 "Integration\mcal\Traps.c" 1
	svlcx
	# 0 "" 2
.LVL7:
#NO_APP
.L17:
	.loc 1 462 0 discriminator 1
	j	.L17
.LFE26:
	.size	_trap_7, .-_trap_7
.section .text.traptab_cpu0,"ax",@progbits
	.align 1
	.global	traptab_cpu0
	.type	traptab_cpu0, @function
traptab_cpu0:
.LFB27:
	.loc 1 486 0
	.loc 1 490 0
#APP
	# 490 "Integration\mcal\Traps.c" 1
	.align 8
	# 0 "" 2
	.loc 1 491 0
	# 491 "Integration\mcal\Traps.c" 1
	j       _trap_0
	# 0 "" 2
	.loc 1 494 0
	# 494 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 495 0
	# 495 "Integration\mcal\Traps.c" 1
	j       _trap_1
	# 0 "" 2
	.loc 1 498 0
	# 498 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 499 0
	# 499 "Integration\mcal\Traps.c" 1
	j       _trap_2
	# 0 "" 2
	.loc 1 502 0
	# 502 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 503 0
	# 503 "Integration\mcal\Traps.c" 1
	j       _trap_3
	# 0 "" 2
	.loc 1 506 0
	# 506 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 507 0
	# 507 "Integration\mcal\Traps.c" 1
	j       _trap_4
	# 0 "" 2
	.loc 1 510 0
	# 510 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 511 0
	# 511 "Integration\mcal\Traps.c" 1
	j       _trap_5
	# 0 "" 2
	.loc 1 514 0
	# 514 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 515 0
	# 515 "Integration\mcal\Traps.c" 1
	j       _trap_6
	# 0 "" 2
	.loc 1 518 0
	# 518 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 519 0
	# 519 "Integration\mcal\Traps.c" 1
	j       _trap_7
	# 0 "" 2
#NO_APP
	ret
.LFE27:
	.size	traptab_cpu0, .-traptab_cpu0
.section .text.traptab_cpu1,"ax",@progbits
	.align 1
	.global	traptab_cpu1
	.type	traptab_cpu1, @function
traptab_cpu1:
.LFB28:
	.loc 1 545 0
	.loc 1 549 0
#APP
	# 549 "Integration\mcal\Traps.c" 1
	.align 8
	# 0 "" 2
	.loc 1 550 0
	# 550 "Integration\mcal\Traps.c" 1
	j       _trap_0
	# 0 "" 2
	.loc 1 553 0
	# 553 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 554 0
	# 554 "Integration\mcal\Traps.c" 1
	j       _trap_1
	# 0 "" 2
	.loc 1 557 0
	# 557 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 558 0
	# 558 "Integration\mcal\Traps.c" 1
	j       _trap_2
	# 0 "" 2
	.loc 1 561 0
	# 561 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 562 0
	# 562 "Integration\mcal\Traps.c" 1
	j       _trap_3
	# 0 "" 2
	.loc 1 565 0
	# 565 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 566 0
	# 566 "Integration\mcal\Traps.c" 1
	j       _trap_4
	# 0 "" 2
	.loc 1 569 0
	# 569 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 570 0
	# 570 "Integration\mcal\Traps.c" 1
	j       _trap_5
	# 0 "" 2
	.loc 1 573 0
	# 573 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 574 0
	# 574 "Integration\mcal\Traps.c" 1
	j       _trap_6
	# 0 "" 2
	.loc 1 577 0
	# 577 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 578 0
	# 578 "Integration\mcal\Traps.c" 1
	j       _trap_7
	# 0 "" 2
#NO_APP
	ret
.LFE28:
	.size	traptab_cpu1, .-traptab_cpu1
.section .text.traptab_cpu2,"ax",@progbits
	.align 1
	.global	traptab_cpu2
	.type	traptab_cpu2, @function
traptab_cpu2:
.LFB29:
	.loc 1 603 0
	.loc 1 607 0
#APP
	# 607 "Integration\mcal\Traps.c" 1
	.align 8
	# 0 "" 2
	.loc 1 608 0
	# 608 "Integration\mcal\Traps.c" 1
	j       _trap_0
	# 0 "" 2
	.loc 1 611 0
	# 611 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 612 0
	# 612 "Integration\mcal\Traps.c" 1
	j       _trap_1
	# 0 "" 2
	.loc 1 615 0
	# 615 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 616 0
	# 616 "Integration\mcal\Traps.c" 1
	j       _trap_2
	# 0 "" 2
	.loc 1 619 0
	# 619 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 620 0
	# 620 "Integration\mcal\Traps.c" 1
	j       _trap_3
	# 0 "" 2
	.loc 1 623 0
	# 623 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 624 0
	# 624 "Integration\mcal\Traps.c" 1
	j       _trap_4
	# 0 "" 2
	.loc 1 627 0
	# 627 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 628 0
	# 628 "Integration\mcal\Traps.c" 1
	j       _trap_5
	# 0 "" 2
	.loc 1 631 0
	# 631 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 632 0
	# 632 "Integration\mcal\Traps.c" 1
	j       _trap_6
	# 0 "" 2
	.loc 1 635 0
	# 635 "Integration\mcal\Traps.c" 1
	.align 5
	# 0 "" 2
	.loc 1 636 0
	# 636 "Integration\mcal\Traps.c" 1
	j       _trap_7
	# 0 "" 2
#NO_APP
	ret
.LFE29:
	.size	traptab_cpu2, .-traptab_cpu2
	.global	Trap_lock
.section .bss.a4.Trap_lock,"aw",@nobits
	.align 2
	.type	Trap_lock, @object
	.size	Trap_lock, 4
Trap_lock:
	.zero	4
.section .bss.a4.TrapIdentification,"aw",@nobits
	.align 2
	.type	TrapIdentification, @object
	.size	TrapIdentification, 256
TrapIdentification:
	.zero	256
	.global	SV_Return_Value
.section .bss.a4.SV_Return_Value,"aw",@nobits
	.align 2
	.type	SV_Return_Value, @object
	.size	SV_Return_Value, 4
SV_Return_Value:
	.zero	4
	.global	SFR_Return_Value
.section .bss.a4.SFR_Return_Value,"aw",@nobits
	.align 2
	.type	SFR_Return_Value, @object
	.size	SFR_Return_Value, 4
SFR_Return_Value:
	.zero	4
	.global	Trap_Status
.section .bss.a1.Trap_Status,"aw",@nobits
	.type	Trap_Status, @object
	.size	Trap_Status, 1
Trap_Status:
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
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
	.align 2
.LEFDE20:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "Integration\\mcal\\Traps.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x638
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"Integration\\mcal\\Traps.c"
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
	.uaword	0x1c3
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
	.uleb128 0x3
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x21d
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
	.uleb128 0x3
	.string	"DataRegType"
	.byte	0x3
	.byte	0x52
	.uaword	0x20f
	.uleb128 0x4
	.byte	0x40
	.byte	0x3
	.byte	0x54
	.uaword	0x390
	.uleb128 0x5
	.string	"PCXI"
	.byte	0x3
	.byte	0x56
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x5
	.string	"PSW"
	.byte	0x3
	.byte	0x57
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x5
	.string	"A_10"
	.byte	0x3
	.byte	0x58
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x5
	.string	"A_11"
	.byte	0x3
	.byte	0x59
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x5
	.string	"D_8"
	.byte	0x3
	.byte	0x5a
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x5
	.string	"D_9"
	.byte	0x3
	.byte	0x5b
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x5
	.string	"D_10"
	.byte	0x3
	.byte	0x5c
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x5
	.string	"D_11"
	.byte	0x3
	.byte	0x5d
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x5
	.string	"A_12"
	.byte	0x3
	.byte	0x5e
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x5
	.string	"A_13"
	.byte	0x3
	.byte	0x5f
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x5
	.string	"A_14"
	.byte	0x3
	.byte	0x60
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x5
	.string	"A_15"
	.byte	0x3
	.byte	0x61
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x5
	.string	"D_12"
	.byte	0x3
	.byte	0x62
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.uleb128 0x5
	.string	"D_13"
	.byte	0x3
	.byte	0x63
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x34
	.uleb128 0x5
	.string	"D_14"
	.byte	0x3
	.byte	0x64
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x38
	.uleb128 0x5
	.string	"D_15"
	.byte	0x3
	.byte	0x65
	.uaword	0x287
	.byte	0x2
	.byte	0x23
	.uleb128 0x3c
	.byte	0
	.uleb128 0x3
	.string	"UpperContext_CSA_Type"
	.byte	0x3
	.byte	0x66
	.uaword	0x29a
	.uleb128 0x6
	.byte	0x1
	.string	"_trap_0"
	.byte	0x1
	.byte	0xca
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3d6
	.uleb128 0x7
	.string	"tin"
	.byte	0x1
	.byte	0xcc
	.uaword	0x20f
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"_trap_1"
	.byte	0x1
	.byte	0xee
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3ff
	.uleb128 0x7
	.string	"tin"
	.byte	0x1
	.byte	0xf0
	.uaword	0x20f
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"_trap_2"
	.byte	0x1
	.uahalf	0x10d
	.byte	0x1
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x42a
	.uleb128 0x9
	.string	"tin"
	.byte	0x1
	.uahalf	0x10f
	.uaword	0x20f
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"_trap_3"
	.byte	0x1
	.uahalf	0x12e
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x455
	.uleb128 0x9
	.string	"tin"
	.byte	0x1
	.uahalf	0x132
	.uaword	0x20f
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"_trap_4"
	.byte	0x1
	.uahalf	0x158
	.byte	0x1
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x480
	.uleb128 0x9
	.string	"tin"
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x20f
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"_trap_5"
	.byte	0x1
	.uahalf	0x179
	.byte	0x1
	.uaword	.LFB24
	.uaword	.LFE24
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4ab
	.uleb128 0x9
	.string	"tin"
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x20f
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"_trap_6"
	.byte	0x1
	.uahalf	0x19e
	.byte	0x1
	.uaword	.LFB25
	.uaword	.LFE25
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4d6
	.uleb128 0x9
	.string	"tin"
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x1b6
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"_trap_7"
	.byte	0x1
	.uahalf	0x1c5
	.byte	0x1
	.uaword	.LFB26
	.uaword	.LFE26
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x501
	.uleb128 0x9
	.string	"tin"
	.byte	0x1
	.uahalf	0x1c7
	.uaword	0x20f
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"traptab_cpu0"
	.byte	0x1
	.uahalf	0x1e5
	.byte	0x1
	.uaword	.LFB27
	.uaword	.LFE27
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"traptab_cpu1"
	.byte	0x1
	.uahalf	0x220
	.byte	0x1
	.uaword	.LFB28
	.uaword	.LFE28
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xa
	.byte	0x1
	.string	"traptab_cpu2"
	.byte	0x1
	.uahalf	0x25a
	.byte	0x1
	.uaword	.LFB29
	.uaword	.LFE29
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xb
	.uaword	0x20f
	.uaword	0x574
	.uleb128 0xc
	.uaword	0x27b
	.byte	0x7
	.uleb128 0xc
	.uaword	0x27b
	.byte	0x7
	.byte	0
	.uleb128 0xd
	.string	"TrapIdentification"
	.byte	0x1
	.byte	0x7b
	.uaword	0x594
	.byte	0x5
	.byte	0x3
	.uaword	TrapIdentification
	.uleb128 0xe
	.uaword	0x55e
	.uleb128 0x7
	.string	"pcxi"
	.byte	0x1
	.byte	0x7d
	.uaword	0x20f
	.uleb128 0xb
	.uaword	0x390
	.uaword	0x5b5
	.uleb128 0xc
	.uaword	0x27b
	.byte	0x5
	.byte	0
	.uleb128 0x7
	.string	"CSA_Record"
	.byte	0x1
	.byte	0x89
	.uaword	0x5a5
	.uleb128 0xf
	.string	"Trap_Status"
	.byte	0x1
	.byte	0x2e
	.uaword	0x1b6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Trap_Status
	.uleb128 0xf
	.string	"SFR_Return_Value"
	.byte	0x1
	.byte	0x79
	.uaword	0x600
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SFR_Return_Value
	.uleb128 0xe
	.uaword	0x20f
	.uleb128 0xf
	.string	"SV_Return_Value"
	.byte	0x1
	.byte	0x7a
	.uaword	0x600
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SV_Return_Value
	.uleb128 0xf
	.string	"Trap_lock"
	.byte	0x1
	.byte	0x7c
	.uaword	0x600
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	Trap_lock
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
	.uleb128 0xa
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
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
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
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x6c
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
	.uaword	.LFB29
	.uaword	.LFE29-.LFB29
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
	.uaword	.LFB29
	.uaword	.LFE29
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
