	.file	"Dem_KL15Persistence.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.Dem_KL15PersistenceMain,"ax",@progbits
	.align 1
	.global	Dem_KL15PersistenceMain
	.type	Dem_KL15PersistenceMain, @function
Dem_KL15PersistenceMain:
.LFB59:
	.file 1 "bsw\\Dem\\integration\\Dem_KL15Persistence.c"
	.loc 1 16 0
	.loc 1 17 0
	movh.a	%a15, hi:Dem_Prv_KL15PersistenceIsStorageScheduled
	ld.bu	%d15, [%a15] lo:Dem_Prv_KL15PersistenceIsStorageScheduled
	jnz	%d15, .L4
	ret
.L4:
	.loc 1 19 0
	mov	%d15, 0
	st.b	[%a15] lo:Dem_Prv_KL15PersistenceIsStorageScheduled, %d15
	.loc 1 21 0
	j	Dem_TriggerStorageToNvm
.LVL0:
.LFE59:
	.size	Dem_KL15PersistenceMain, .-Dem_KL15PersistenceMain
.section .text.Dem_KL15PersistenceScheduleStorage,"ax",@progbits
	.align 1
	.global	Dem_KL15PersistenceScheduleStorage
	.type	Dem_KL15PersistenceScheduleStorage, @function
Dem_KL15PersistenceScheduleStorage:
.LFB60:
	.loc 1 26 0
	.loc 1 27 0
	mov	%d15, 1
	movh.a	%a15, hi:Dem_Prv_KL15PersistenceIsStorageScheduled
	st.b	[%a15] lo:Dem_Prv_KL15PersistenceIsStorageScheduled, %d15
	ret
.LFE60:
	.size	Dem_KL15PersistenceScheduleStorage, .-Dem_KL15PersistenceScheduleStorage
.section .text.Dem_KL15PersistenceImmediateStorage,"ax",@progbits
	.align 1
	.global	Dem_KL15PersistenceImmediateStorage
	.type	Dem_KL15PersistenceImmediateStorage, @function
Dem_KL15PersistenceImmediateStorage:
.LFB61:
	.loc 1 31 0
	.loc 1 32 0
	mov	%d15, 0
	movh.a	%a15, hi:Dem_Prv_KL15PersistenceIsStorageScheduled
	st.b	[%a15] lo:Dem_Prv_KL15PersistenceIsStorageScheduled, %d15
	.loc 1 34 0
	j	Dem_TriggerStorageToNvm
.LVL1:
.LFE61:
	.size	Dem_KL15PersistenceImmediateStorage, .-Dem_KL15PersistenceImmediateStorage
.section .bss.a1.Dem_Prv_KL15PersistenceIsStorageScheduled,"aw",@nobits
	.type	Dem_Prv_KL15PersistenceIsStorageScheduled, @object
	.size	Dem_Prv_KL15PersistenceIsStorageScheduled, 1
Dem_Prv_KL15PersistenceIsStorageScheduled:
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
	.uaword	.LFB59
	.uaword	.LFE59-.LFB59
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB60
	.uaword	.LFE60-.LFB60
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB61
	.uaword	.LFE61-.LFB61
	.align 2
.LEFDE4:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 4 ".\\output\\inc/..\\..\\bsw\\Dem\\api\\Dem.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x3ba
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\Dem\\integration\\Dem_KL15Persistence.c"
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
	.uaword	0x1d4
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
	.uaword	0x1d4
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
	.uaword	0x1c7
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x1
	.string	"Dem_KL15PersistenceMain"
	.byte	0x1
	.byte	0xf
	.byte	0x1
	.uaword	.LFB59
	.uaword	.LFE59
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x2e7
	.uleb128 0x5
	.uaword	.LVL0
	.byte	0x1
	.uaword	0x39a
	.byte	0
	.uleb128 0x6
	.byte	0x1
	.string	"Dem_KL15PersistenceScheduleStorage"
	.byte	0x1
	.byte	0x19
	.byte	0x1
	.uaword	.LFB60
	.uaword	.LFE60
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x7
	.byte	0x1
	.string	"Dem_KL15PersistenceImmediateStorage"
	.byte	0x1
	.byte	0x1e
	.byte	0x1
	.uaword	0x28d
	.uaword	.LFB61
	.uaword	.LFE61
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x363
	.uleb128 0x5
	.uaword	.LVL1
	.byte	0x1
	.uaword	0x39a
	.byte	0
	.uleb128 0x8
	.string	"Dem_Prv_KL15PersistenceIsStorageScheduled"
	.byte	0x1
	.byte	0xd
	.uaword	0x25d
	.byte	0x5
	.byte	0x3
	.uaword	Dem_Prv_KL15PersistenceIsStorageScheduled
	.uleb128 0x9
	.byte	0x1
	.string	"Dem_TriggerStorageToNvm"
	.byte	0x4
	.uahalf	0x293
	.byte	0x1
	.uaword	0x28d
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
	.uleb128 0x5
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x9
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
.section .debug_aranges,"",@progbits
	.uaword	0x2c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB59
	.uaword	.LFE59-.LFB59
	.uaword	.LFB60
	.uaword	.LFE60-.LFB60
	.uaword	.LFB61
	.uaword	.LFE61-.LFB61
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB59
	.uaword	.LFE59
	.uaword	.LFB60
	.uaword	.LFE60
	.uaword	.LFB61
	.uaword	.LFE61
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	Dem_TriggerStorageToNvm,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
