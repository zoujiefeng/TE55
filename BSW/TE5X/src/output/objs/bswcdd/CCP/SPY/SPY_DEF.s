	.file	"SPY_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	SPY_u16TrigSmplIdx
.section .bss.a2.SPY_u16TrigSmplIdx,"aw",@nobits
	.align 1
	.type	SPY_u16TrigSmplIdx, @object
	.size	SPY_u16TrigSmplIdx, 2
SPY_u16TrigSmplIdx:
	.zero	2
	.global	SPY_u16SmplIdx
.section .bss.a2.SPY_u16SmplIdx,"aw",@nobits
	.align 1
	.type	SPY_u16SmplIdx, @object
	.size	SPY_u16SmplIdx, 2
SPY_u16SmplIdx:
	.zero	2
	.global	SPY_u16RmngSmplIdx
.section .bss.a2.SPY_u16RmngSmplIdx,"aw",@nobits
	.align 1
	.type	SPY_u16RmngSmplIdx, @object
	.size	SPY_u16RmngSmplIdx, 2
SPY_u16RmngSmplIdx:
	.zero	2
	.global	SPY_u16PreTrigSmplIdx
.section .bss.a2.SPY_u16PreTrigSmplIdx,"aw",@nobits
	.align 1
	.type	SPY_u16PreTrigSmplIdx, @object
	.size	SPY_u16PreTrigSmplIdx, 2
SPY_u16PreTrigSmplIdx:
	.zero	2
	.global	SPY_u16NrOfElmsToTx
.section .bss.a2.SPY_u16NrOfElmsToTx,"aw",@nobits
	.align 1
	.type	SPY_u16NrOfElmsToTx, @object
	.size	SPY_u16NrOfElmsToTx, 2
SPY_u16NrOfElmsToTx:
	.zero	2
	.global	SPY_u16DaqListFirstElmIdx
.section .bss.a2.SPY_u16DaqListFirstElmIdx,"aw",@nobits
	.align 1
	.type	SPY_u16DaqListFirstElmIdx, @object
	.size	SPY_u16DaqListFirstElmIdx, 2
SPY_u16DaqListFirstElmIdx:
	.zero	2
	.global	SPY_bBufFull
.section .bss.a1.SPY_bBufFull,"aw",@nobits
	.type	SPY_bBufFull, @object
	.size	SPY_bBufFull, 1
SPY_bBufFull:
	.zero	1
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "bswcdd\\CCP\\SPY\\SPY_DEF.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x356
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\CCP\\SPY\\SPY_DEF.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
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
	.byte	0x1
	.byte	0x5b
	.uaword	0x1d6
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
	.byte	0x1
	.byte	0x80
	.uaword	0x1aa
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"SPY_bBufFull"
	.byte	0x2
	.byte	0x2e
	.uaword	0x241
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SPY_bBufFull
	.uleb128 0x4
	.string	"SPY_u16DaqListFirstElmIdx"
	.byte	0x2
	.byte	0x2f
	.uaword	0x1c8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SPY_u16DaqListFirstElmIdx
	.uleb128 0x4
	.string	"SPY_u16NrOfElmsToTx"
	.byte	0x2
	.byte	0x30
	.uaword	0x1c8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SPY_u16NrOfElmsToTx
	.uleb128 0x4
	.string	"SPY_u16PreTrigSmplIdx"
	.byte	0x2
	.byte	0x31
	.uaword	0x1c8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SPY_u16PreTrigSmplIdx
	.uleb128 0x4
	.string	"SPY_u16RmngSmplIdx"
	.byte	0x2
	.byte	0x32
	.uaword	0x1c8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SPY_u16RmngSmplIdx
	.uleb128 0x4
	.string	"SPY_u16SmplIdx"
	.byte	0x2
	.byte	0x33
	.uaword	0x1c8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SPY_u16SmplIdx
	.uleb128 0x4
	.string	"SPY_u16TrigSmplIdx"
	.byte	0x2
	.byte	0x34
	.uaword	0x1c8
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	SPY_u16TrigSmplIdx
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
	.uaword	0x14
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
