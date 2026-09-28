	.file	"EAS_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
	.global	EAS_u8TMReleaseSig
.section .bss.a1.EAS_u8TMReleaseSig,"aw",@nobits
	.type	EAS_u8TMReleaseSig, @object
	.size	EAS_u8TMReleaseSig, 1
EAS_u8TMReleaseSig:
	.zero	1
	.global	EAS_u8SttTimerCnt
.section .bss.a1.EAS_u8SttTimerCnt,"aw",@nobits
	.type	EAS_u8SttTimerCnt, @object
	.size	EAS_u8SttTimerCnt, 1
EAS_u8SttTimerCnt:
	.zero	1
	.global	EAS_u8ImmFailReason
.section .bss.a1.EAS_u8ImmFailReason,"aw",@nobits
	.type	EAS_u8ImmFailReason, @object
	.size	EAS_u8ImmFailReason, 1
EAS_u8ImmFailReason:
	.zero	1
	.global	EAS_u8Chg1DelayCnt
.section .bss.a1.EAS_u8Chg1DelayCnt,"aw",@nobits
	.type	EAS_u8Chg1DelayCnt, @object
	.size	EAS_u8Chg1DelayCnt, 1
EAS_u8Chg1DelayCnt:
	.zero	1
	.global	EAS_u8AuthVerifyCnt
.section .bss.a1.EAS_u8AuthVerifyCnt,"aw",@nobits
	.type	EAS_u8AuthVerifyCnt, @object
	.size	EAS_u8AuthVerifyCnt, 1
EAS_u8AuthVerifyCnt:
	.zero	1
	.global	EAS_u8AuthState
.section .bss.a1.EAS_u8AuthState,"aw",@nobits
	.type	EAS_u8AuthState, @object
	.size	EAS_u8AuthState, 1
EAS_u8AuthState:
	.zero	1
	.global	EAS_u8AuthFailedCnt
.section .bss.a1.EAS_u8AuthFailedCnt,"aw",@nobits
	.type	EAS_u8AuthFailedCnt, @object
	.size	EAS_u8AuthFailedCnt, 1
EAS_u8AuthFailedCnt:
	.zero	1
	.global	EAS_au8ParmSK128Nvm
.section .bss.a1.EAS_au8ParmSK128Nvm,"aw",@nobits
	.type	EAS_au8ParmSK128Nvm, @object
	.size	EAS_au8ParmSK128Nvm, 16
EAS_au8ParmSK128Nvm:
	.zero	16
	.global	EAS_au8ParmSC32Nvm
.section .bss.a1.EAS_au8ParmSC32Nvm,"aw",@nobits
	.type	EAS_au8ParmSC32Nvm, @object
	.size	EAS_au8ParmSC32Nvm, 4
EAS_au8ParmSC32Nvm:
	.zero	4
	.global	EAS_au8ParmRN32
.section .bss.a1.EAS_au8ParmRN32,"aw",@nobits
	.type	EAS_au8ParmRN32, @object
	.size	EAS_au8ParmRN32, 4
EAS_au8ParmRN32:
	.zero	4
	.global	EAS_au8ParmEarEncr2
.section .bss.a1.EAS_au8ParmEarEncr2,"aw",@nobits
	.type	EAS_au8ParmEarEncr2, @object
	.size	EAS_au8ParmEarEncr2, 16
EAS_au8ParmEarEncr2:
	.zero	16
	.global	EAS_au8ParmEarEncr1
.section .bss.a1.EAS_au8ParmEarEncr1,"aw",@nobits
	.type	EAS_au8ParmEarEncr1, @object
	.size	EAS_au8ParmEarEncr1, 16
EAS_au8ParmEarEncr1:
	.zero	16
	.global	EAS_au8ParmEacSeed
.section .bss.a1.EAS_au8ParmEacSeed,"aw",@nobits
	.type	EAS_au8ParmEacSeed, @object
	.size	EAS_au8ParmEacSeed, 16
EAS_au8ParmEacSeed:
	.zero	16
	.global	EAS_au8ParmEacEncr
.section .bss.a1.EAS_au8ParmEacEncr,"aw",@nobits
	.type	EAS_au8ParmEacEncr, @object
	.size	EAS_au8ParmEacEncr, 16
EAS_au8ParmEacEncr:
	.zero	16
	.global	EAS_au8ParmCC64Nvm
.section .bss.a1.EAS_au8ParmCC64Nvm,"aw",@nobits
	.type	EAS_au8ParmCC64Nvm, @object
	.size	EAS_au8ParmCC64Nvm, 8
EAS_au8ParmCC64Nvm:
	.zero	8
	.global	EAS_au8ComImmoCode
.section .bss.a1.EAS_au8ComImmoCode,"aw",@nobits
	.type	EAS_au8ComImmoCode, @object
	.size	EAS_au8ComImmoCode, 8
EAS_au8ComImmoCode:
	.zero	8
	.global	EAS_au8ComChallengeValBkp
.section .bss.a1.EAS_au8ComChallengeValBkp,"aw",@nobits
	.type	EAS_au8ComChallengeValBkp, @object
	.size	EAS_au8ComChallengeValBkp, 8
EAS_au8ComChallengeValBkp:
	.zero	8
	.global	EAS_au8ComChallengeVal
.section .bss.a1.EAS_au8ComChallengeVal,"aw",@nobits
	.type	EAS_au8ComChallengeVal, @object
	.size	EAS_au8ComChallengeVal, 8
EAS_au8ComChallengeVal:
	.zero	8
	.global	EAS_au32PinESK32
.section .bss.a4.EAS_au32PinESK32,"aw",@nobits
	.align 2
	.type	EAS_au32PinESK32, @object
	.size	EAS_au32PinESK32, 16
EAS_au32PinESK32:
	.zero	16
	.global	EAS_bSendNewChalgFlg
.section .bss.a1.EAS_bSendNewChalgFlg,"aw",@nobits
	.type	EAS_bSendNewChalgFlg, @object
	.size	EAS_bSendNewChalgFlg, 1
EAS_bSendNewChalgFlg:
	.zero	1
	.global	EAS_bImmoCodRcvFlg
.section .bss.a1.EAS_bImmoCodRcvFlg,"aw",@nobits
	.type	EAS_bImmoCodRcvFlg, @object
	.size	EAS_bImmoCodRcvFlg, 1
EAS_bImmoCodRcvFlg:
	.zero	1
	.global	EAS_bDefaultEskFlg
.section .bss.a1.EAS_bDefaultEskFlg,"aw",@nobits
	.type	EAS_bDefaultEskFlg, @object
	.size	EAS_bDefaultEskFlg, 1
EAS_bDefaultEskFlg:
	.zero	1
	.global	EAS_bAesVerifyRes
.section .bss.a1.EAS_bAesVerifyRes,"aw",@nobits
	.type	EAS_bAesVerifyRes, @object
	.size	EAS_bAesVerifyRes, 1
EAS_bAesVerifyRes:
	.zero	1
	.global	EAS_u8Chg1DelayTimoutC
.section .rodata.a1.EAS_u8Chg1DelayTimoutC,"a",@progbits
	.type	EAS_u8Chg1DelayTimoutC, @object
	.size	EAS_u8Chg1DelayTimoutC, 1
EAS_u8Chg1DelayTimoutC:
	.byte	1
	.global	EAS_bRN32EnaOnC
.section .rodata.a1.EAS_bRN32EnaOnC,"a",@progbits
	.type	EAS_bRN32EnaOnC, @object
	.size	EAS_bRN32EnaOnC, 1
EAS_bRN32EnaOnC:
	.byte	1
	.global	EAS_bDefaultEskPassC
.section .rodata.a1.EAS_bDefaultEskPassC,"a",@progbits
	.type	EAS_bDefaultEskPassC, @object
	.size	EAS_bDefaultEskPassC, 1
EAS_bDefaultEskPassC:
	.byte	1
.section .text,"ax",@progbits
.Letext0:
	.file 1 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 2 "bswcdd\\EAS\\EAS_DEF.c"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x633
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\EAS\\EAS_DEF.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x1
	.byte	0x51
	.uaword	0x1b3
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
	.byte	0x1
	.byte	0x6a
	.uaword	0x20d
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
	.uaword	0x1b3
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"EAS_bDefaultEskPassC"
	.byte	0x2
	.byte	0x29
	.uaword	0x29d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_bDefaultEskPassC
	.uleb128 0x5
	.uaword	0x24a
	.uleb128 0x4
	.string	"EAS_bRN32EnaOnC"
	.byte	0x2
	.byte	0x2a
	.uaword	0x29d
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_bRN32EnaOnC
	.uleb128 0x4
	.string	"EAS_u8Chg1DelayTimoutC"
	.byte	0x2
	.byte	0x2b
	.uaword	0x2e5
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_u8Chg1DelayTimoutC
	.uleb128 0x5
	.uaword	0x1a6
	.uleb128 0x4
	.string	"EAS_bAesVerifyRes"
	.byte	0x2
	.byte	0x35
	.uaword	0x24a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_bAesVerifyRes
	.uleb128 0x4
	.string	"EAS_bImmoCodRcvFlg"
	.byte	0x2
	.byte	0x37
	.uaword	0x24a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_bImmoCodRcvFlg
	.uleb128 0x4
	.string	"EAS_bSendNewChalgFlg"
	.byte	0x2
	.byte	0x38
	.uaword	0x24a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_bSendNewChalgFlg
	.uleb128 0x6
	.uaword	0x1ff
	.uaword	0x35e
	.uleb128 0x7
	.uaword	0x35e
	.byte	0x3
	.byte	0
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.string	"EAS_au32PinESK32"
	.byte	0x2
	.byte	0x39
	.uaword	0x34e
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_au32PinESK32
	.uleb128 0x6
	.uaword	0x1a6
	.uaword	0x399
	.uleb128 0x7
	.uaword	0x35e
	.byte	0x7
	.byte	0
	.uleb128 0x4
	.string	"EAS_au8ComChallengeVal"
	.byte	0x2
	.byte	0x3a
	.uaword	0x389
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_au8ComChallengeVal
	.uleb128 0x4
	.string	"EAS_au8ComChallengeValBkp"
	.byte	0x2
	.byte	0x3b
	.uaword	0x389
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_au8ComChallengeValBkp
	.uleb128 0x4
	.string	"EAS_au8ComImmoCode"
	.byte	0x2
	.byte	0x3c
	.uaword	0x389
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_au8ComImmoCode
	.uleb128 0x4
	.string	"EAS_au8ParmCC64Nvm"
	.byte	0x2
	.byte	0x3d
	.uaword	0x389
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_au8ParmCC64Nvm
	.uleb128 0x6
	.uaword	0x1a6
	.uaword	0x438
	.uleb128 0x7
	.uaword	0x35e
	.byte	0xf
	.byte	0
	.uleb128 0x4
	.string	"EAS_au8ParmEacEncr"
	.byte	0x2
	.byte	0x3e
	.uaword	0x428
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_au8ParmEacEncr
	.uleb128 0x4
	.string	"EAS_au8ParmEacSeed"
	.byte	0x2
	.byte	0x3f
	.uaword	0x428
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_au8ParmEacSeed
	.uleb128 0x4
	.string	"EAS_au8ParmEarEncr1"
	.byte	0x2
	.byte	0x40
	.uaword	0x428
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_au8ParmEarEncr1
	.uleb128 0x4
	.string	"EAS_au8ParmEarEncr2"
	.byte	0x2
	.byte	0x41
	.uaword	0x428
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_au8ParmEarEncr2
	.uleb128 0x6
	.uaword	0x1a6
	.uaword	0x4ce
	.uleb128 0x7
	.uaword	0x35e
	.byte	0x3
	.byte	0
	.uleb128 0x4
	.string	"EAS_au8ParmRN32"
	.byte	0x2
	.byte	0x42
	.uaword	0x4be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_au8ParmRN32
	.uleb128 0x4
	.string	"EAS_au8ParmSC32Nvm"
	.byte	0x2
	.byte	0x43
	.uaword	0x4be
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_au8ParmSC32Nvm
	.uleb128 0x4
	.string	"EAS_au8ParmSK128Nvm"
	.byte	0x2
	.byte	0x44
	.uaword	0x428
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_au8ParmSK128Nvm
	.uleb128 0x4
	.string	"EAS_u8AuthFailedCnt"
	.byte	0x2
	.byte	0x45
	.uaword	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_u8AuthFailedCnt
	.uleb128 0x4
	.string	"EAS_u8AuthState"
	.byte	0x2
	.byte	0x46
	.uaword	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_u8AuthState
	.uleb128 0x4
	.string	"EAS_u8AuthVerifyCnt"
	.byte	0x2
	.byte	0x47
	.uaword	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_u8AuthVerifyCnt
	.uleb128 0x4
	.string	"EAS_u8Chg1DelayCnt"
	.byte	0x2
	.byte	0x48
	.uaword	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_u8Chg1DelayCnt
	.uleb128 0x4
	.string	"EAS_u8ImmFailReason"
	.byte	0x2
	.byte	0x49
	.uaword	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_u8ImmFailReason
	.uleb128 0x4
	.string	"EAS_u8SttTimerCnt"
	.byte	0x2
	.byte	0x4a
	.uaword	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_u8SttTimerCnt
	.uleb128 0x4
	.string	"EAS_u8TMReleaseSig"
	.byte	0x2
	.byte	0x4b
	.uaword	0x1a6
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_u8TMReleaseSig
	.uleb128 0x4
	.string	"EAS_bDefaultEskFlg"
	.byte	0x2
	.byte	0x36
	.uaword	0x24a
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	EAS_bDefaultEskFlg
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
	.uleb128 0x5
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
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
