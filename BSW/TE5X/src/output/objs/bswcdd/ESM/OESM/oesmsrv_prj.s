	.file	"oesmsrv_prj.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.OESMSRV_u8InterpretOEsmState,"ax",@progbits
	.align 1
	.global	OESMSRV_u8InterpretOEsmState
	.type	OESMSRV_u8InterpretOEsmState, @function
OESMSRV_u8InterpretOEsmState:
.LFB0:
	.file 1 "bswcdd\\ESM\\OESM\\oesmsrv_prj.c"
	.loc 1 73 0
.LVL0:
	.loc 1 76 0
	eq	%d15, %d4, 128
	.loc 1 107 0
	mov	%d2, 8
	.loc 1 76 0
	jnz	%d15, .L9
	ge.u	%d15, %d4, 129
	jz	%d15, .L34
	mov	%d15, 2048
	.loc 1 123 0
	mov	%d2, 12
	.loc 1 76 0
	jeq	%d4, %d15, .L9
	mov	%d15, 2049
	jlt.u	%d4, %d15, .L35
	mov	%d15, 8192
	.loc 1 131 0
	mov	%d2, 14
	.loc 1 76 0
	jeq	%d4, %d15, .L9
	mov	%d15, 8193
	jlt.u	%d4, %d15, .L36
	mov	%d15, 16384
	.loc 1 135 0
	mov	%d2, 15
	.loc 1 76 0
	jeq	%d4, %d15, .L9
	mov.u	%d15, 32768
	.loc 1 139 0
	mov	%d2, 16
	.loc 1 76 0
	jne	%d4, %d15, .L2
.L9:
.LVL1:
	.loc 1 148 0
	ret
.LVL2:
.L34:
	.loc 1 76 0
	eq	%d15, %d4, 8
	.loc 1 91 0
	mov	%d2, 4
	.loc 1 76 0
	jnz	%d15, .L9
	jlt.u	%d4, 9, .L37
	eq	%d15, %d4, 32
	.loc 1 99 0
	mov	%d2, 6
	.loc 1 76 0
	jnz	%d15, .L9
	eq	%d15, %d4, 64
	.loc 1 103 0
	mov	%d2, 7
	.loc 1 76 0
	jnz	%d15, .L9
	eq	%d4, %d4, 16
.LVL3:
	.loc 1 95 0
	mov	%d2, 5
	.loc 1 76 0
	jnz	%d4, .L38
.L2:
.LVL4:
	.loc 1 143 0
	mov	%d2, 0
.LVL5:
	.loc 1 148 0
	ret
.LVL6:
.L37:
	.loc 1 83 0
	mov	%d2, 2
	.loc 1 76 0
	jeq	%d4, 2, .L9
	.loc 1 87 0
	mov	%d2, 3
	.loc 1 76 0
	jeq	%d4, 4, .L9
	.loc 1 79 0
	mov	%d2, 1
	.loc 1 76 0
	jne	%d4, 1, .L2
	ret
.L35:
	mov	%d15, 512
	.loc 1 115 0
	mov	%d2, 10
	.loc 1 76 0
	jeq	%d4, %d15, .L9
	mov	%d15, 1024
	.loc 1 119 0
	mov	%d2, 11
	.loc 1 76 0
	jeq	%d4, %d15, .L9
	mov	%d15, 256
	.loc 1 111 0
	mov	%d2, 9
	.loc 1 76 0
	jne	%d4, %d15, .L2
	ret
.L36:
	mov	%d15, 4096
	.loc 1 127 0
	mov	%d2, 13
	.loc 1 76 0
	jne	%d4, %d15, .L2
.LVL7:
	.loc 1 148 0
	ret
.LVL8:
.L38:
	ret
.LFE0:
	.size	OESMSRV_u8InterpretOEsmState, .-OESMSRV_u8InterpretOEsmState
.section .text.OESMSRV_bGetCallAppliOn,"ax",@progbits
	.align 1
	.global	OESMSRV_bGetCallAppliOn
	.type	OESMSRV_bGetCallAppliOn, @function
OESMSRV_bGetCallAppliOn:
.LFB1:
	.loc 1 159 0
	.loc 1 161 0
	movh.a	%a15, hi:OESM_bCallAppliOn
	ld.bu	%d2, [%a15] lo:OESM_bCallAppliOn
	ret
.LFE1:
	.size	OESMSRV_bGetCallAppliOn, .-OESMSRV_bGetCallAppliOn
.section .text.OESMSRV_u8GetOpFtState,"ax",@progbits
	.align 1
	.global	OESMSRV_u8GetOpFtState
	.type	OESMSRV_u8GetOpFtState, @function
OESMSRV_u8GetOpFtState:
.LFB2:
	.loc 1 173 0
.LVL9:
	.loc 1 174 0
	movh.a	%a15, hi:OESM_OpFtState
.LBB4:
.LBB5:
	.loc 1 76 0
	ld.hu	%d15, [%a15] lo:OESM_OpFtState
	.loc 1 107 0
	mov	%d2, 8
	.loc 1 76 0
	eq	%d3, %d15, 128
	jnz	%d3, .L48
	ge.u	%d2, %d15, 129
	jz	%d2, .L72
	mov	%d3, 2048
	.loc 1 123 0
	mov	%d2, 12
	.loc 1 76 0
	jeq	%d15, %d3, .L48
	mov	%d2, 2049
	jlt.u	%d15, %d2, .L73
	mov	%d3, 8192
	.loc 1 131 0
	mov	%d2, 14
	.loc 1 76 0
	jeq	%d15, %d3, .L48
	mov	%d2, 8193
	jlt.u	%d15, %d2, .L74
	mov	%d3, 16384
	.loc 1 135 0
	mov	%d2, 15
	.loc 1 76 0
	jeq	%d15, %d3, .L48
	mov.u	%d3, 32768
	.loc 1 139 0
	mov	%d2, 16
	.loc 1 76 0
	jne	%d15, %d3, .L41
.L48:
.LVL10:
.LBE5:
.LBE4:
	.loc 1 175 0
	ret
.LVL11:
.L72:
.LBB8:
.LBB6:
	.loc 1 76 0
	eq	%d3, %d15, 8
	.loc 1 91 0
	mov	%d2, 4
	.loc 1 76 0
	jnz	%d3, .L48
	jlt.u	%d15, 9, .L75
	eq	%d3, %d15, 32
	.loc 1 99 0
	mov	%d2, 6
	.loc 1 76 0
	jnz	%d3, .L48
	eq	%d3, %d15, 64
	.loc 1 103 0
	mov	%d2, 7
	.loc 1 76 0
	jnz	%d3, .L48
	eq	%d15, %d15, 16
	.loc 1 95 0
	mov	%d2, 5
	.loc 1 76 0
	jnz	%d15, .L76
.L41:
.LVL12:
	.loc 1 143 0
	mov	%d2, 0
.LVL13:
.LBE6:
.LBE8:
	.loc 1 175 0
	ret
.LVL14:
.L75:
.LBB9:
.LBB7:
	.loc 1 83 0
	mov	%d2, 2
	.loc 1 76 0
	jeq	%d15, 2, .L48
	.loc 1 87 0
	mov	%d2, 3
	.loc 1 76 0
	jeq	%d15, 4, .L48
	.loc 1 79 0
	mov	%d2, 1
	.loc 1 76 0
	jne	%d15, 1, .L41
	ret
.L73:
	mov	%d3, 512
	.loc 1 115 0
	mov	%d2, 10
	.loc 1 76 0
	jeq	%d15, %d3, .L48
	mov	%d3, 1024
	.loc 1 119 0
	mov	%d2, 11
	.loc 1 76 0
	jeq	%d15, %d3, .L48
	mov	%d3, 256
	.loc 1 111 0
	mov	%d2, 9
	.loc 1 76 0
	jne	%d15, %d3, .L41
	ret
.L74:
	mov	%d3, 4096
	.loc 1 127 0
	mov	%d2, 13
	.loc 1 76 0
	jne	%d15, %d3, .L41
.LVL15:
.LBE7:
.LBE9:
	.loc 1 175 0
	ret
.LVL16:
.L76:
	ret
.LFE2:
	.size	OESMSRV_u8GetOpFtState, .-OESMSRV_u8GetOpFtState
.section .text.OESMSRV_u8GetOpNfState,"ax",@progbits
	.align 1
	.global	OESMSRV_u8GetOpNfState
	.type	OESMSRV_u8GetOpNfState, @function
OESMSRV_u8GetOpNfState:
.LFB3:
	.loc 1 187 0
.LVL17:
	.loc 1 188 0
	movh.a	%a15, hi:OESM_OpNfState
.LBB12:
.LBB13:
	.loc 1 76 0
	ld.hu	%d15, [%a15] lo:OESM_OpNfState
	.loc 1 107 0
	mov	%d2, 8
	.loc 1 76 0
	eq	%d3, %d15, 128
	jnz	%d3, .L85
	ge.u	%d2, %d15, 129
	jz	%d2, .L109
	mov	%d3, 2048
	.loc 1 123 0
	mov	%d2, 12
	.loc 1 76 0
	jeq	%d15, %d3, .L85
	mov	%d2, 2049
	jlt.u	%d15, %d2, .L110
	mov	%d3, 8192
	.loc 1 131 0
	mov	%d2, 14
	.loc 1 76 0
	jeq	%d15, %d3, .L85
	mov	%d2, 8193
	jlt.u	%d15, %d2, .L111
	mov	%d3, 16384
	.loc 1 135 0
	mov	%d2, 15
	.loc 1 76 0
	jeq	%d15, %d3, .L85
	mov.u	%d3, 32768
	.loc 1 139 0
	mov	%d2, 16
	.loc 1 76 0
	jne	%d15, %d3, .L78
.L85:
.LVL18:
.LBE13:
.LBE12:
	.loc 1 189 0
	ret
.LVL19:
.L109:
.LBB16:
.LBB14:
	.loc 1 76 0
	eq	%d3, %d15, 8
	.loc 1 91 0
	mov	%d2, 4
	.loc 1 76 0
	jnz	%d3, .L85
	jlt.u	%d15, 9, .L112
	eq	%d3, %d15, 32
	.loc 1 99 0
	mov	%d2, 6
	.loc 1 76 0
	jnz	%d3, .L85
	eq	%d3, %d15, 64
	.loc 1 103 0
	mov	%d2, 7
	.loc 1 76 0
	jnz	%d3, .L85
	eq	%d15, %d15, 16
	.loc 1 95 0
	mov	%d2, 5
	.loc 1 76 0
	jnz	%d15, .L113
.L78:
.LVL20:
	.loc 1 143 0
	mov	%d2, 0
.LVL21:
.LBE14:
.LBE16:
	.loc 1 189 0
	ret
.LVL22:
.L112:
.LBB17:
.LBB15:
	.loc 1 83 0
	mov	%d2, 2
	.loc 1 76 0
	jeq	%d15, 2, .L85
	.loc 1 87 0
	mov	%d2, 3
	.loc 1 76 0
	jeq	%d15, 4, .L85
	.loc 1 79 0
	mov	%d2, 1
	.loc 1 76 0
	jne	%d15, 1, .L78
	ret
.L110:
	mov	%d3, 512
	.loc 1 115 0
	mov	%d2, 10
	.loc 1 76 0
	jeq	%d15, %d3, .L85
	mov	%d3, 1024
	.loc 1 119 0
	mov	%d2, 11
	.loc 1 76 0
	jeq	%d15, %d3, .L85
	mov	%d3, 256
	.loc 1 111 0
	mov	%d2, 9
	.loc 1 76 0
	jne	%d15, %d3, .L78
	ret
.L111:
	mov	%d3, 4096
	.loc 1 127 0
	mov	%d2, 13
	.loc 1 76 0
	jne	%d15, %d3, .L78
.LVL23:
.LBE15:
.LBE17:
	.loc 1 189 0
	ret
.LVL24:
.L113:
	ret
.LFE3:
	.size	OESMSRV_u8GetOpNfState, .-OESMSRV_u8GetOpNfState
.section .text.OESMSRV_u8GetPwrLFtState,"ax",@progbits
	.align 1
	.global	OESMSRV_u8GetPwrLFtState
	.type	OESMSRV_u8GetPwrLFtState, @function
OESMSRV_u8GetPwrLFtState:
.LFB4:
	.loc 1 201 0
.LVL25:
	.loc 1 202 0
	movh.a	%a15, hi:OESM_PwrLFtState
.LBB20:
.LBB21:
	.loc 1 76 0
	ld.hu	%d15, [%a15] lo:OESM_PwrLFtState
	.loc 1 107 0
	mov	%d2, 8
	.loc 1 76 0
	eq	%d3, %d15, 128
	jnz	%d3, .L122
	ge.u	%d2, %d15, 129
	jz	%d2, .L146
	mov	%d3, 2048
	.loc 1 123 0
	mov	%d2, 12
	.loc 1 76 0
	jeq	%d15, %d3, .L122
	mov	%d2, 2049
	jlt.u	%d15, %d2, .L147
	mov	%d3, 8192
	.loc 1 131 0
	mov	%d2, 14
	.loc 1 76 0
	jeq	%d15, %d3, .L122
	mov	%d2, 8193
	jlt.u	%d15, %d2, .L148
	mov	%d3, 16384
	.loc 1 135 0
	mov	%d2, 15
	.loc 1 76 0
	jeq	%d15, %d3, .L122
	mov.u	%d3, 32768
	.loc 1 139 0
	mov	%d2, 16
	.loc 1 76 0
	jne	%d15, %d3, .L115
.L122:
.LVL26:
.LBE21:
.LBE20:
	.loc 1 203 0
	ret
.LVL27:
.L146:
.LBB24:
.LBB22:
	.loc 1 76 0
	eq	%d3, %d15, 8
	.loc 1 91 0
	mov	%d2, 4
	.loc 1 76 0
	jnz	%d3, .L122
	jlt.u	%d15, 9, .L149
	eq	%d3, %d15, 32
	.loc 1 99 0
	mov	%d2, 6
	.loc 1 76 0
	jnz	%d3, .L122
	eq	%d3, %d15, 64
	.loc 1 103 0
	mov	%d2, 7
	.loc 1 76 0
	jnz	%d3, .L122
	eq	%d15, %d15, 16
	.loc 1 95 0
	mov	%d2, 5
	.loc 1 76 0
	jnz	%d15, .L150
.L115:
.LVL28:
	.loc 1 143 0
	mov	%d2, 0
.LVL29:
.LBE22:
.LBE24:
	.loc 1 203 0
	ret
.LVL30:
.L149:
.LBB25:
.LBB23:
	.loc 1 83 0
	mov	%d2, 2
	.loc 1 76 0
	jeq	%d15, 2, .L122
	.loc 1 87 0
	mov	%d2, 3
	.loc 1 76 0
	jeq	%d15, 4, .L122
	.loc 1 79 0
	mov	%d2, 1
	.loc 1 76 0
	jne	%d15, 1, .L115
	ret
.L147:
	mov	%d3, 512
	.loc 1 115 0
	mov	%d2, 10
	.loc 1 76 0
	jeq	%d15, %d3, .L122
	mov	%d3, 1024
	.loc 1 119 0
	mov	%d2, 11
	.loc 1 76 0
	jeq	%d15, %d3, .L122
	mov	%d3, 256
	.loc 1 111 0
	mov	%d2, 9
	.loc 1 76 0
	jne	%d15, %d3, .L115
	ret
.L148:
	mov	%d3, 4096
	.loc 1 127 0
	mov	%d2, 13
	.loc 1 76 0
	jne	%d15, %d3, .L115
.LVL31:
.LBE23:
.LBE25:
	.loc 1 203 0
	ret
.LVL32:
.L150:
	ret
.LFE4:
	.size	OESMSRV_u8GetPwrLFtState, .-OESMSRV_u8GetPwrLFtState
.section .text.OESMSRV_u8GetPwrLNfState,"ax",@progbits
	.align 1
	.global	OESMSRV_u8GetPwrLNfState
	.type	OESMSRV_u8GetPwrLNfState, @function
OESMSRV_u8GetPwrLNfState:
.LFB5:
	.loc 1 215 0
.LVL33:
	.loc 1 216 0
	movh.a	%a15, hi:OESM_PwrLNfState
.LBB28:
.LBB29:
	.loc 1 76 0
	ld.hu	%d15, [%a15] lo:OESM_PwrLNfState
	.loc 1 107 0
	mov	%d2, 8
	.loc 1 76 0
	eq	%d3, %d15, 128
	jnz	%d3, .L159
	ge.u	%d2, %d15, 129
	jz	%d2, .L183
	mov	%d3, 2048
	.loc 1 123 0
	mov	%d2, 12
	.loc 1 76 0
	jeq	%d15, %d3, .L159
	mov	%d2, 2049
	jlt.u	%d15, %d2, .L184
	mov	%d3, 8192
	.loc 1 131 0
	mov	%d2, 14
	.loc 1 76 0
	jeq	%d15, %d3, .L159
	mov	%d2, 8193
	jlt.u	%d15, %d2, .L185
	mov	%d3, 16384
	.loc 1 135 0
	mov	%d2, 15
	.loc 1 76 0
	jeq	%d15, %d3, .L159
	mov.u	%d3, 32768
	.loc 1 139 0
	mov	%d2, 16
	.loc 1 76 0
	jne	%d15, %d3, .L152
.L159:
.LVL34:
.LBE29:
.LBE28:
	.loc 1 217 0
	ret
.LVL35:
.L183:
.LBB32:
.LBB30:
	.loc 1 76 0
	eq	%d3, %d15, 8
	.loc 1 91 0
	mov	%d2, 4
	.loc 1 76 0
	jnz	%d3, .L159
	jlt.u	%d15, 9, .L186
	eq	%d3, %d15, 32
	.loc 1 99 0
	mov	%d2, 6
	.loc 1 76 0
	jnz	%d3, .L159
	eq	%d3, %d15, 64
	.loc 1 103 0
	mov	%d2, 7
	.loc 1 76 0
	jnz	%d3, .L159
	eq	%d15, %d15, 16
	.loc 1 95 0
	mov	%d2, 5
	.loc 1 76 0
	jnz	%d15, .L187
.L152:
.LVL36:
	.loc 1 143 0
	mov	%d2, 0
.LVL37:
.LBE30:
.LBE32:
	.loc 1 217 0
	ret
.LVL38:
.L186:
.LBB33:
.LBB31:
	.loc 1 83 0
	mov	%d2, 2
	.loc 1 76 0
	jeq	%d15, 2, .L159
	.loc 1 87 0
	mov	%d2, 3
	.loc 1 76 0
	jeq	%d15, 4, .L159
	.loc 1 79 0
	mov	%d2, 1
	.loc 1 76 0
	jne	%d15, 1, .L152
	ret
.L184:
	mov	%d3, 512
	.loc 1 115 0
	mov	%d2, 10
	.loc 1 76 0
	jeq	%d15, %d3, .L159
	mov	%d3, 1024
	.loc 1 119 0
	mov	%d2, 11
	.loc 1 76 0
	jeq	%d15, %d3, .L159
	mov	%d3, 256
	.loc 1 111 0
	mov	%d2, 9
	.loc 1 76 0
	jne	%d15, %d3, .L152
	ret
.L185:
	mov	%d3, 4096
	.loc 1 127 0
	mov	%d2, 13
	.loc 1 76 0
	jne	%d15, %d3, .L152
.LVL39:
.LBE31:
.LBE33:
	.loc 1 217 0
	ret
.LVL40:
.L187:
	ret
.LFE5:
	.size	OESMSRV_u8GetPwrLNfState, .-OESMSRV_u8GetPwrLNfState
.section .text.OESMSRV_u8GetStpIIFtState,"ax",@progbits
	.align 1
	.global	OESMSRV_u8GetStpIIFtState
	.type	OESMSRV_u8GetStpIIFtState, @function
OESMSRV_u8GetStpIIFtState:
.LFB6:
	.loc 1 229 0
.LVL41:
	.loc 1 230 0
	movh.a	%a15, hi:OESM_StpIIFtState
.LBB36:
.LBB37:
	.loc 1 76 0
	ld.hu	%d15, [%a15] lo:OESM_StpIIFtState
	.loc 1 107 0
	mov	%d2, 8
	.loc 1 76 0
	eq	%d3, %d15, 128
	jnz	%d3, .L196
	ge.u	%d2, %d15, 129
	jz	%d2, .L220
	mov	%d3, 2048
	.loc 1 123 0
	mov	%d2, 12
	.loc 1 76 0
	jeq	%d15, %d3, .L196
	mov	%d2, 2049
	jlt.u	%d15, %d2, .L221
	mov	%d3, 8192
	.loc 1 131 0
	mov	%d2, 14
	.loc 1 76 0
	jeq	%d15, %d3, .L196
	mov	%d2, 8193
	jlt.u	%d15, %d2, .L222
	mov	%d3, 16384
	.loc 1 135 0
	mov	%d2, 15
	.loc 1 76 0
	jeq	%d15, %d3, .L196
	mov.u	%d3, 32768
	.loc 1 139 0
	mov	%d2, 16
	.loc 1 76 0
	jne	%d15, %d3, .L189
.L196:
.LVL42:
.LBE37:
.LBE36:
	.loc 1 231 0
	ret
.LVL43:
.L220:
.LBB40:
.LBB38:
	.loc 1 76 0
	eq	%d3, %d15, 8
	.loc 1 91 0
	mov	%d2, 4
	.loc 1 76 0
	jnz	%d3, .L196
	jlt.u	%d15, 9, .L223
	eq	%d3, %d15, 32
	.loc 1 99 0
	mov	%d2, 6
	.loc 1 76 0
	jnz	%d3, .L196
	eq	%d3, %d15, 64
	.loc 1 103 0
	mov	%d2, 7
	.loc 1 76 0
	jnz	%d3, .L196
	eq	%d15, %d15, 16
	.loc 1 95 0
	mov	%d2, 5
	.loc 1 76 0
	jnz	%d15, .L224
.L189:
.LVL44:
	.loc 1 143 0
	mov	%d2, 0
.LVL45:
.LBE38:
.LBE40:
	.loc 1 231 0
	ret
.LVL46:
.L223:
.LBB41:
.LBB39:
	.loc 1 83 0
	mov	%d2, 2
	.loc 1 76 0
	jeq	%d15, 2, .L196
	.loc 1 87 0
	mov	%d2, 3
	.loc 1 76 0
	jeq	%d15, 4, .L196
	.loc 1 79 0
	mov	%d2, 1
	.loc 1 76 0
	jne	%d15, 1, .L189
	ret
.L221:
	mov	%d3, 512
	.loc 1 115 0
	mov	%d2, 10
	.loc 1 76 0
	jeq	%d15, %d3, .L196
	mov	%d3, 1024
	.loc 1 119 0
	mov	%d2, 11
	.loc 1 76 0
	jeq	%d15, %d3, .L196
	mov	%d3, 256
	.loc 1 111 0
	mov	%d2, 9
	.loc 1 76 0
	jne	%d15, %d3, .L189
	ret
.L222:
	mov	%d3, 4096
	.loc 1 127 0
	mov	%d2, 13
	.loc 1 76 0
	jne	%d15, %d3, .L189
.LVL47:
.LBE39:
.LBE41:
	.loc 1 231 0
	ret
.LVL48:
.L224:
	ret
.LFE6:
	.size	OESMSRV_u8GetStpIIFtState, .-OESMSRV_u8GetStpIIFtState
.section .text.OESMSRV_u8GetStpIINfState,"ax",@progbits
	.align 1
	.global	OESMSRV_u8GetStpIINfState
	.type	OESMSRV_u8GetStpIINfState, @function
OESMSRV_u8GetStpIINfState:
.LFB7:
	.loc 1 243 0
.LVL49:
	.loc 1 244 0
	movh.a	%a15, hi:OESM_StpIINfState
.LBB44:
.LBB45:
	.loc 1 76 0
	ld.hu	%d15, [%a15] lo:OESM_StpIINfState
	.loc 1 107 0
	mov	%d2, 8
	.loc 1 76 0
	eq	%d3, %d15, 128
	jnz	%d3, .L233
	ge.u	%d2, %d15, 129
	jz	%d2, .L257
	mov	%d3, 2048
	.loc 1 123 0
	mov	%d2, 12
	.loc 1 76 0
	jeq	%d15, %d3, .L233
	mov	%d2, 2049
	jlt.u	%d15, %d2, .L258
	mov	%d3, 8192
	.loc 1 131 0
	mov	%d2, 14
	.loc 1 76 0
	jeq	%d15, %d3, .L233
	mov	%d2, 8193
	jlt.u	%d15, %d2, .L259
	mov	%d3, 16384
	.loc 1 135 0
	mov	%d2, 15
	.loc 1 76 0
	jeq	%d15, %d3, .L233
	mov.u	%d3, 32768
	.loc 1 139 0
	mov	%d2, 16
	.loc 1 76 0
	jne	%d15, %d3, .L226
.L233:
.LVL50:
.LBE45:
.LBE44:
	.loc 1 245 0
	ret
.LVL51:
.L257:
.LBB48:
.LBB46:
	.loc 1 76 0
	eq	%d3, %d15, 8
	.loc 1 91 0
	mov	%d2, 4
	.loc 1 76 0
	jnz	%d3, .L233
	jlt.u	%d15, 9, .L260
	eq	%d3, %d15, 32
	.loc 1 99 0
	mov	%d2, 6
	.loc 1 76 0
	jnz	%d3, .L233
	eq	%d3, %d15, 64
	.loc 1 103 0
	mov	%d2, 7
	.loc 1 76 0
	jnz	%d3, .L233
	eq	%d15, %d15, 16
	.loc 1 95 0
	mov	%d2, 5
	.loc 1 76 0
	jnz	%d15, .L261
.L226:
.LVL52:
	.loc 1 143 0
	mov	%d2, 0
.LVL53:
.LBE46:
.LBE48:
	.loc 1 245 0
	ret
.LVL54:
.L260:
.LBB49:
.LBB47:
	.loc 1 83 0
	mov	%d2, 2
	.loc 1 76 0
	jeq	%d15, 2, .L233
	.loc 1 87 0
	mov	%d2, 3
	.loc 1 76 0
	jeq	%d15, 4, .L233
	.loc 1 79 0
	mov	%d2, 1
	.loc 1 76 0
	jne	%d15, 1, .L226
	ret
.L258:
	mov	%d3, 512
	.loc 1 115 0
	mov	%d2, 10
	.loc 1 76 0
	jeq	%d15, %d3, .L233
	mov	%d3, 1024
	.loc 1 119 0
	mov	%d2, 11
	.loc 1 76 0
	jeq	%d15, %d3, .L233
	mov	%d3, 256
	.loc 1 111 0
	mov	%d2, 9
	.loc 1 76 0
	jne	%d15, %d3, .L226
	ret
.L259:
	mov	%d3, 4096
	.loc 1 127 0
	mov	%d2, 13
	.loc 1 76 0
	jne	%d15, %d3, .L226
.LVL55:
.LBE47:
.LBE49:
	.loc 1 245 0
	ret
.LVL56:
.L261:
	ret
.LFE7:
	.size	OESMSRV_u8GetStpIINfState, .-OESMSRV_u8GetStpIINfState
.section .text.OESMSRV_u8GetStpIState,"ax",@progbits
	.align 1
	.global	OESMSRV_u8GetStpIState
	.type	OESMSRV_u8GetStpIState, @function
OESMSRV_u8GetStpIState:
.LFB8:
	.loc 1 257 0
.LVL57:
	.loc 1 258 0
	movh.a	%a15, hi:OESM_StpIState
.LBB52:
.LBB53:
	.loc 1 76 0
	ld.hu	%d15, [%a15] lo:OESM_StpIState
	.loc 1 107 0
	mov	%d2, 8
	.loc 1 76 0
	eq	%d3, %d15, 128
	jnz	%d3, .L270
	ge.u	%d2, %d15, 129
	jz	%d2, .L294
	mov	%d3, 2048
	.loc 1 123 0
	mov	%d2, 12
	.loc 1 76 0
	jeq	%d15, %d3, .L270
	mov	%d2, 2049
	jlt.u	%d15, %d2, .L295
	mov	%d3, 8192
	.loc 1 131 0
	mov	%d2, 14
	.loc 1 76 0
	jeq	%d15, %d3, .L270
	mov	%d2, 8193
	jlt.u	%d15, %d2, .L296
	mov	%d3, 16384
	.loc 1 135 0
	mov	%d2, 15
	.loc 1 76 0
	jeq	%d15, %d3, .L270
	mov.u	%d3, 32768
	.loc 1 139 0
	mov	%d2, 16
	.loc 1 76 0
	jne	%d15, %d3, .L263
.L270:
.LVL58:
.LBE53:
.LBE52:
	.loc 1 259 0
	ret
.LVL59:
.L294:
.LBB56:
.LBB54:
	.loc 1 76 0
	eq	%d3, %d15, 8
	.loc 1 91 0
	mov	%d2, 4
	.loc 1 76 0
	jnz	%d3, .L270
	jlt.u	%d15, 9, .L297
	eq	%d3, %d15, 32
	.loc 1 99 0
	mov	%d2, 6
	.loc 1 76 0
	jnz	%d3, .L270
	eq	%d3, %d15, 64
	.loc 1 103 0
	mov	%d2, 7
	.loc 1 76 0
	jnz	%d3, .L270
	eq	%d15, %d15, 16
	.loc 1 95 0
	mov	%d2, 5
	.loc 1 76 0
	jnz	%d15, .L298
.L263:
.LVL60:
	.loc 1 143 0
	mov	%d2, 0
.LVL61:
.LBE54:
.LBE56:
	.loc 1 259 0
	ret
.LVL62:
.L297:
.LBB57:
.LBB55:
	.loc 1 83 0
	mov	%d2, 2
	.loc 1 76 0
	jeq	%d15, 2, .L270
	.loc 1 87 0
	mov	%d2, 3
	.loc 1 76 0
	jeq	%d15, 4, .L270
	.loc 1 79 0
	mov	%d2, 1
	.loc 1 76 0
	jne	%d15, 1, .L263
	ret
.L295:
	mov	%d3, 512
	.loc 1 115 0
	mov	%d2, 10
	.loc 1 76 0
	jeq	%d15, %d3, .L270
	mov	%d3, 1024
	.loc 1 119 0
	mov	%d2, 11
	.loc 1 76 0
	jeq	%d15, %d3, .L270
	mov	%d3, 256
	.loc 1 111 0
	mov	%d2, 9
	.loc 1 76 0
	jne	%d15, %d3, .L263
	ret
.L296:
	mov	%d3, 4096
	.loc 1 127 0
	mov	%d2, 13
	.loc 1 76 0
	jne	%d15, %d3, .L263
.LVL63:
.LBE55:
.LBE57:
	.loc 1 259 0
	ret
.LVL64:
.L298:
	ret
.LFE8:
	.size	OESMSRV_u8GetStpIState, .-OESMSRV_u8GetStpIState
.section .text.OESMSRV_u16GetCmdReq,"ax",@progbits
	.align 1
	.global	OESMSRV_u16GetCmdReq
	.type	OESMSRV_u16GetCmdReq, @function
OESMSRV_u16GetCmdReq:
.LFB9:
	.loc 1 271 0
	.loc 1 273 0
	movh.a	%a15, hi:OESM_u16CmdReq
	ld.hu	%d2, [%a15] lo:OESM_u16CmdReq
	ret
.LFE9:
	.size	OESMSRV_u16GetCmdReq, .-OESMSRV_u16GetCmdReq
.section .text.OESMSRV_u16GetCmdReqNm1,"ax",@progbits
	.align 1
	.global	OESMSRV_u16GetCmdReqNm1
	.type	OESMSRV_u16GetCmdReqNm1, @function
OESMSRV_u16GetCmdReqNm1:
.LFB10:
	.loc 1 285 0
	.loc 1 287 0
	movh.a	%a15, hi:OESM_u16CmdReqNm1
	ld.hu	%d2, [%a15] lo:OESM_u16CmdReqNm1
	ret
.LFE10:
	.size	OESMSRV_u16GetCmdReqNm1, .-OESMSRV_u16GetCmdReqNm1
.section .text.OESMSRV_u8GetPwrOffState,"ax",@progbits
	.align 1
	.global	OESMSRV_u8GetPwrOffState
	.type	OESMSRV_u8GetPwrOffState, @function
OESMSRV_u8GetPwrOffState:
.LFB11:
	.loc 1 299 0
	.loc 1 303 0
	mov	%d2, 0
	ret
.LFE11:
	.size	OESMSRV_u8GetPwrOffState, .-OESMSRV_u8GetPwrOffState
.section .text.OESMSRV_u16GetCmdRes,"ax",@progbits
	.align 1
	.global	OESMSRV_u16GetCmdRes
	.type	OESMSRV_u16GetCmdRes, @function
OESMSRV_u16GetCmdRes:
.LFB12:
	.loc 1 315 0
	.loc 1 317 0
	movh.a	%a15, hi:OESM_u16CmdRes
	ld.hu	%d2, [%a15] lo:OESM_u16CmdRes
	ret
.LFE12:
	.size	OESMSRV_u16GetCmdRes, .-OESMSRV_u16GetCmdRes
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.align 2
.LEFDE6:
.LSFDE8:
	.uaword	.LEFDE8-.LASFDE8
.LASFDE8:
	.uaword	.Lframe0
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.align 2
.LEFDE8:
.LSFDE10:
	.uaword	.LEFDE10-.LASFDE10
.LASFDE10:
	.uaword	.Lframe0
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.align 2
.LEFDE10:
.LSFDE12:
	.uaword	.LEFDE12-.LASFDE12
.LASFDE12:
	.uaword	.Lframe0
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.align 2
.LEFDE12:
.LSFDE14:
	.uaword	.LEFDE14-.LASFDE14
.LASFDE14:
	.uaword	.Lframe0
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.align 2
.LEFDE14:
.LSFDE16:
	.uaword	.LEFDE16-.LASFDE16
.LASFDE16:
	.uaword	.Lframe0
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.align 2
.LEFDE16:
.LSFDE18:
	.uaword	.LEFDE18-.LASFDE18
.LASFDE18:
	.uaword	.Lframe0
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.align 2
.LEFDE18:
.LSFDE20:
	.uaword	.LEFDE20-.LASFDE20
.LASFDE20:
	.uaword	.Lframe0
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.align 2
.LEFDE20:
.LSFDE22:
	.uaword	.LEFDE22-.LASFDE22
.LASFDE22:
	.uaword	.Lframe0
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.align 2
.LEFDE22:
.LSFDE24:
	.uaword	.LEFDE24-.LASFDE24
.LASFDE24:
	.uaword	.Lframe0
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.align 2
.LEFDE24:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\bswcdd\\STFSRV\\OSTFSRV\\OSTFSRV.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x75d
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\ESM\\OESM\\oesmsrv_prj.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0xe0
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
	.uaword	0x1c8
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
	.uaword	0x1f4
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
	.uaword	0x1c8
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x1
	.string	"OESMSRV_u8InterpretOEsmState"
	.byte	0x1
	.byte	0x48
	.byte	0x1
	.uaword	0x1bb
	.byte	0x1
	.uaword	0x2e1
	.uleb128 0x5
	.string	"u16OEsmState"
	.byte	0x1
	.byte	0x48
	.uaword	0x1e6
	.uleb128 0x6
	.string	"u8RetValue"
	.byte	0x1
	.byte	0x4a
	.uaword	0x1bb
	.byte	0
	.uleb128 0x7
	.uaword	0x28f
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x309
	.uleb128 0x8
	.uaword	0x2ba
	.uaword	.LLST0
	.uleb128 0x9
	.uaword	0x2ce
	.uaword	.LLST1
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"OESMSRV_bGetCallAppliOn"
	.byte	0x1
	.byte	0x9e
	.byte	0x1
	.uaword	0x25f
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0xb
	.byte	0x1
	.string	"OESMSRV_u8GetOpFtState"
	.byte	0x1
	.byte	0xac
	.byte	0x1
	.uaword	0x1bb
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x38b
	.uleb128 0xc
	.uaword	0x28f
	.uaword	.LBB4
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0xae
	.uleb128 0xd
	.uaword	0x2ba
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x9
	.uaword	0x2ce
	.uaword	.LLST2
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"OESMSRV_u8GetOpNfState"
	.byte	0x1
	.byte	0xba
	.byte	0x1
	.uaword	0x1bb
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x3e0
	.uleb128 0xc
	.uaword	0x28f
	.uaword	.LBB12
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0xbc
	.uleb128 0xd
	.uaword	0x2ba
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0x20
	.uleb128 0x9
	.uaword	0x2ce
	.uaword	.LLST3
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"OESMSRV_u8GetPwrLFtState"
	.byte	0x1
	.byte	0xc8
	.byte	0x1
	.uaword	0x1bb
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x437
	.uleb128 0xc
	.uaword	0x28f
	.uaword	.LBB20
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.byte	0xca
	.uleb128 0xd
	.uaword	0x2ba
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x9
	.uaword	0x2ce
	.uaword	.LLST4
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"OESMSRV_u8GetPwrLNfState"
	.byte	0x1
	.byte	0xd6
	.byte	0x1
	.uaword	0x1bb
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x48e
	.uleb128 0xc
	.uaword	0x28f
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x1
	.byte	0xd8
	.uleb128 0xd
	.uaword	0x2ba
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0x60
	.uleb128 0x9
	.uaword	0x2ce
	.uaword	.LLST5
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"OESMSRV_u8GetStpIIFtState"
	.byte	0x1
	.byte	0xe4
	.byte	0x1
	.uaword	0x1bb
	.uaword	.LFB6
	.uaword	.LFE6
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x4e6
	.uleb128 0xc
	.uaword	0x28f
	.uaword	.LBB36
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x1
	.byte	0xe6
	.uleb128 0xd
	.uaword	0x2ba
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0x80
	.uleb128 0x9
	.uaword	0x2ce
	.uaword	.LLST6
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xb
	.byte	0x1
	.string	"OESMSRV_u8GetStpIINfState"
	.byte	0x1
	.byte	0xf2
	.byte	0x1
	.uaword	0x1bb
	.uaword	.LFB7
	.uaword	.LFE7
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x53e
	.uleb128 0xc
	.uaword	0x28f
	.uaword	.LBB44
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.byte	0xf4
	.uleb128 0xd
	.uaword	0x2ba
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0xa0
	.uleb128 0x9
	.uaword	0x2ce
	.uaword	.LLST7
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xf
	.byte	0x1
	.string	"OESMSRV_u8GetStpIState"
	.byte	0x1
	.uahalf	0x100
	.byte	0x1
	.uaword	0x1bb
	.uaword	.LFB8
	.uaword	.LFE8
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x595
	.uleb128 0x10
	.uaword	0x28f
	.uaword	.LBB52
	.uaword	.Ldebug_ranges0+0xc0
	.byte	0x1
	.uahalf	0x102
	.uleb128 0xd
	.uaword	0x2ba
	.uleb128 0xe
	.uaword	.Ldebug_ranges0+0xc0
	.uleb128 0x9
	.uaword	0x2ce
	.uaword	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x11
	.byte	0x1
	.string	"OESMSRV_u16GetCmdReq"
	.byte	0x1
	.uahalf	0x10e
	.byte	0x1
	.uaword	0x1e6
	.uaword	.LFB9
	.uaword	.LFE9
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"OESMSRV_u16GetCmdReqNm1"
	.byte	0x1
	.uahalf	0x11c
	.byte	0x1
	.uaword	0x1e6
	.uaword	.LFB10
	.uaword	.LFE10
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"OESMSRV_u8GetPwrOffState"
	.byte	0x1
	.uahalf	0x12a
	.byte	0x1
	.uaword	0x1bb
	.uaword	.LFB11
	.uaword	.LFE11
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x11
	.byte	0x1
	.string	"OESMSRV_u16GetCmdRes"
	.byte	0x1
	.uahalf	0x13a
	.byte	0x1
	.uaword	0x1e6
	.uaword	.LFB12
	.uaword	.LFE12
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x12
	.string	"OESM_bCallAppliOn"
	.byte	0x3
	.byte	0x5a
	.uaword	0x25f
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"OESM_OpFtState"
	.byte	0x3
	.byte	0x5e
	.uaword	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"OESM_OpNfState"
	.byte	0x3
	.byte	0x5f
	.uaword	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"OESM_PwrLFtState"
	.byte	0x3
	.byte	0x60
	.uaword	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"OESM_PwrLNfState"
	.byte	0x3
	.byte	0x61
	.uaword	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"OESM_StpIIFtState"
	.byte	0x3
	.byte	0x64
	.uaword	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"OESM_StpIINfState"
	.byte	0x3
	.byte	0x65
	.uaword	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"OESM_StpIState"
	.byte	0x3
	.byte	0x66
	.uaword	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"OESM_u16CmdReq"
	.byte	0x3
	.byte	0x68
	.uaword	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"OESM_u16CmdReqNm1"
	.byte	0x3
	.byte	0x69
	.uaword	0x1e6
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"OESM_u16CmdRes"
	.byte	0x3
	.byte	0x6a
	.uaword	0x1e6
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
	.uleb128 0x20
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x5
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
	.byte	0
	.byte	0
	.uleb128 0x6
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
	.uleb128 0x7
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
	.uleb128 0x8
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x9
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
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
	.uleb128 0xd
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x12
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
	.uaword	.LVL0
	.uaword	.LVL3
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL3
	.uaword	.LVL6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	.LVL6
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL8
	.uaword	.LFE0
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL5
	.uaword	.LVL6
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL7
	.uaword	.LVL8
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL13
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL15
	.uaword	.LVL16
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL22
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL23
	.uaword	.LVL24
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL26
	.uaword	.LVL27
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL29
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL31
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL34
	.uaword	.LVL35
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL36
	.uaword	.LVL37
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL42
	.uaword	.LVL43
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL44
	.uaword	.LVL45
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL45
	.uaword	.LVL46
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL47
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL50
	.uaword	.LVL51
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL52
	.uaword	.LVL53
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL53
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL55
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL58
	.uaword	.LVL59
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL60
	.uaword	.LVL61
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL61
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x52
	.uaword	.LVL63
	.uaword	.LVL64
	.uahalf	0x1
	.byte	0x52
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x7c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	.LFB1
	.uaword	.LFE1-.LFB1
	.uaword	.LFB2
	.uaword	.LFE2-.LFB2
	.uaword	.LFB3
	.uaword	.LFE3-.LFB3
	.uaword	.LFB4
	.uaword	.LFE4-.LFB4
	.uaword	.LFB5
	.uaword	.LFE5-.LFB5
	.uaword	.LFB6
	.uaword	.LFE6-.LFB6
	.uaword	.LFB7
	.uaword	.LFE7-.LFB7
	.uaword	.LFB8
	.uaword	.LFE8-.LFB8
	.uaword	.LFB9
	.uaword	.LFE9-.LFB9
	.uaword	.LFB10
	.uaword	.LFE10-.LFB10
	.uaword	.LFB11
	.uaword	.LFE11-.LFB11
	.uaword	.LFB12
	.uaword	.LFE12-.LFB12
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB4
	.uaword	.LBE4
	.uaword	.LBB8
	.uaword	.LBE8
	.uaword	.LBB9
	.uaword	.LBE9
	.uaword	0
	.uaword	0
	.uaword	.LBB12
	.uaword	.LBE12
	.uaword	.LBB16
	.uaword	.LBE16
	.uaword	.LBB17
	.uaword	.LBE17
	.uaword	0
	.uaword	0
	.uaword	.LBB20
	.uaword	.LBE20
	.uaword	.LBB24
	.uaword	.LBE24
	.uaword	.LBB25
	.uaword	.LBE25
	.uaword	0
	.uaword	0
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB32
	.uaword	.LBE32
	.uaword	.LBB33
	.uaword	.LBE33
	.uaword	0
	.uaword	0
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	.LBB40
	.uaword	.LBE40
	.uaword	.LBB41
	.uaword	.LBE41
	.uaword	0
	.uaword	0
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB49
	.uaword	.LBE49
	.uaword	0
	.uaword	0
	.uaword	.LBB52
	.uaword	.LBE52
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	0
	.uaword	0
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	.LFB1
	.uaword	.LFE1
	.uaword	.LFB2
	.uaword	.LFE2
	.uaword	.LFB3
	.uaword	.LFE3
	.uaword	.LFB4
	.uaword	.LFE4
	.uaword	.LFB5
	.uaword	.LFE5
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LFB7
	.uaword	.LFE7
	.uaword	.LFB8
	.uaword	.LFE8
	.uaword	.LFB9
	.uaword	.LFE9
	.uaword	.LFB10
	.uaword	.LFE10
	.uaword	.LFB11
	.uaword	.LFE11
	.uaword	.LFB12
	.uaword	.LFE12
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.extern	OESM_u16CmdRes,STT_OBJECT,2
	.extern	OESM_u16CmdReqNm1,STT_OBJECT,2
	.extern	OESM_u16CmdReq,STT_OBJECT,2
	.extern	OESM_StpIState,STT_OBJECT,2
	.extern	OESM_StpIINfState,STT_OBJECT,2
	.extern	OESM_StpIIFtState,STT_OBJECT,2
	.extern	OESM_PwrLNfState,STT_OBJECT,2
	.extern	OESM_PwrLFtState,STT_OBJECT,2
	.extern	OESM_OpNfState,STT_OBJECT,2
	.extern	OESM_OpFtState,STT_OBJECT,2
	.extern	OESM_bCallAppliOn,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
