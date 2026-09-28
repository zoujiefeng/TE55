	.file	"PortMux.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.PMux_u8CheckCfg,"ax",@progbits
	.align 1
	.global	PMux_u8CheckCfg
	.type	PMux_u8CheckCfg, @function
PMux_u8CheckCfg:
.LFB0:
	.file 1 "bswcdd\\PortMux\\PortMux.c"
	.loc 1 237 0
.LVL0:
	movh	%d3, hi:PMux_atInputMuxCfgSet
	.loc 1 237 0
	mov	%d15, 0
	addi	%d3, %d3, lo:PMux_atInputMuxCfgSet
	mov.a	%a2, 14
.LVL1:
.L4:
	.loc 1 248 0
	madd	%d2, %d3, %d15, 28
	mov.a	%a15, %d2
	ld.bu	%d2, [%a15]0
	jnz	%d2, .L2
	.loc 1 250 0
	ld.w	%d2, [%a15] 12
	jz	%d2, .L7
	.loc 1 251 0
	ld.w	%d2, [%a15] 16
	jz	%d2, .L7
	.loc 1 252 0
	ld.w	%d2, [%a15] 20
	jz	%d2, .L7
.L2:
.LVL2:
	add	%d15, 1
.LVL3:
	.loc 1 246 0 discriminator 2
	loop	%a2, .L4
	.loc 1 260 0
	mov	%d2, 0
	ret
.LVL4:
.L7:
	.loc 1 255 0
	mov	%d2, 2
	.loc 1 261 0
	ret
.LFE0:
	.size	PMux_u8CheckCfg, .-PMux_u8CheckCfg
.section .text.PMux_vidMainFunction,"ax",@progbits
	.align 1
	.global	PMux_vidMainFunction
	.type	PMux_vidMainFunction, @function
PMux_vidMainFunction:
.LFB1:
	.loc 1 264 0
.LVL5:
	.loc 1 266 0
	movh.a	%a15, hi:PMux_atInputMuxCfgSet
	mov.d	%d2, %a15
	addi	%d15, %d2, lo:PMux_atInputMuxCfgSet
	madd	%d2, %d15, %d4, 28
	mov.a	%a15, %d2
	ld.a	%a12, [%a15] 4
	.loc 1 275 0
	ld.a	%a13, [%a15] 8
	ld.a	%a2, [%a15] 24
	.loc 1 266 0
	ld.bu	%d2, [%a12]0
.LVL6:
	.loc 1 267 0
	add	%d15, %d2, 1
	and	%d15, 255
.LVL7:
	.loc 1 271 0
	lt.u	%d3, %d15, 8
	.loc 1 275 0
	addsc.a	%a13, %a13, %d2, 1
	.loc 1 271 0
	sel	%d15, %d3, %d15, 0
.LVL8:
	.loc 1 275 0
	calli	%a2
.LVL9:
	st.h	[%a13]0, %d2
	.loc 1 278 0
	ld.bu	%d2, [%a15]0
	jnz	%d2, .L12
.LVL10:
	.loc 1 281 0
	ld.a	%a2, [%a15] 12
	and	%d4, %d15, 1
	calli	%a2
.LVL11:
	.loc 1 283 0
	ld.a	%a2, [%a15] 16
	extr.u	%d4, %d15, 1, 1
	calli	%a2
.LVL12:
	.loc 1 285 0
	ld.a	%a15, [%a15] 20
	extr.u	%d4, %d15, 2, 1
	calli	%a15
.LVL13:
.L12:
	.loc 1 292 0
	st.b	[%a12]0, %d15
	ret
.LFE1:
	.size	PMux_vidMainFunction, .-PMux_vidMainFunction
.section .text.PMux_u16GetInputVal,"ax",@progbits
	.align 1
	.global	PMux_u16GetInputVal
	.type	PMux_u16GetInputVal, @function
PMux_u16GetInputVal:
.LFB2:
	.loc 1 296 0
.LVL14:
	.loc 1 302 0
	movh.a	%a15, hi:PMux_atInputMuxCfgSet
	mov.d	%d3, %a15
	sh	%d15, %d4, -4
	addi	%d2, %d3, lo:PMux_atInputMuxCfgSet
	madd	%d3, %d2, %d15, 28
	and	%d4, %d4, 15
.LVL15:
	mov.a	%a15, %d3
	ld.a	%a15, [%a15] 8
	addsc.a	%a15, %a15, %d4, 1
	.loc 1 305 0
	ld.hu	%d2, [%a15]0
	ret
.LFE2:
	.size	PMux_u16GetInputVal, .-PMux_u16GetInputVal
.section .text.PMux_vidMuxHandler_1,"ax",@progbits
	.align 1
	.global	PMux_vidMuxHandler_1
	.type	PMux_vidMuxHandler_1, @function
PMux_vidMuxHandler_1:
.LFB3:
	.loc 1 308 0
	ret
.LFE3:
	.size	PMux_vidMuxHandler_1, .-PMux_vidMuxHandler_1
.section .text.PMux_vidMuxHandler_2,"ax",@progbits
	.align 1
	.global	PMux_vidMuxHandler_2
	.type	PMux_vidMuxHandler_2, @function
PMux_vidMuxHandler_2:
.LFB4:
	.loc 1 312 0
.LVL16:
.LBB28:
.LBB29:
	.loc 1 266 0
	movh.a	%a15, hi:PMux_au8AddrSet
	lea	%a15, [%a15] lo:PMux_au8AddrSet
	ld.bu	%d10, [%a15] 7
.LVL17:
	.loc 1 267 0
	add	%d15, %d10, 1
	and	%d15, 255
.LVL18:
	and	%d11, %d15, 1
	extr.u	%d9, %d15, 1, 1
	extr.u	%d8, %d15, 2, 1
	.loc 1 269 0
	jlt.u	%d15, 8, .L16
	mov	%e8, 0
	mov	%d11, 0
	.loc 1 271 0
	mov	%d15, 0
.LVL19:
.L16:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5
.LVL20:
	movh.a	%a12, hi:PMux_au16DataBuf+112
	lea	%a12, [%a12] lo:PMux_au16DataBuf+112
	addsc.a	%a2, %a12, %d10, 1
	.loc 1 281 0
	mov	%d4, %d11
	.loc 1 275 0
	st.h	[%a2]0, %d2
.LVL21:
	.loc 1 281 0
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A
.LVL22:
	.loc 1 283 0
	mov	%d4, %d9
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B
.LVL23:
	.loc 1 285 0
	mov	%d4, %d8
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C
.LVL24:
.LBE29:
.LBE28:
.LBB31:
.LBB32:
	.loc 1 266 0
	ld.bu	%d8, [%a15] 8
.LBE32:
.LBE31:
.LBB36:
.LBB30:
	.loc 1 292 0
	st.b	[%a15] 7, %d15
.LVL25:
.LBE30:
.LBE36:
.LBB37:
.LBB33:
	.loc 1 267 0
	add	%d15, %d8, 1
.LVL26:
	and	%d15, 255
.LVL27:
	.loc 1 271 0
	lt.u	%d2, %d15, 8
	sel	%d15, %d2, %d15, 0
.LVL28:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6
.LVL29:
	addsc.a	%a2, %a12, %d8, 1
.LBE33:
.LBE37:
.LBB38:
.LBB39:
	.loc 1 266 0
	ld.bu	%d8, [%a15] 9
.LVL30:
.LBE39:
.LBE38:
.LBB44:
.LBB34:
	.loc 1 292 0
	st.b	[%a15] 8, %d15
.LVL31:
.LBE34:
.LBE44:
.LBB45:
.LBB40:
	.loc 1 267 0
	add	%d15, %d8, 1
.LVL32:
	and	%d15, 255
.LVL33:
.LBE40:
.LBE45:
.LBB46:
.LBB35:
	.loc 1 275 0
	st.h	[%a2] 16, %d2
.LBE35:
.LBE46:
.LBB47:
.LBB41:
	.loc 1 271 0
	lt.u	%d2, %d15, 8
	sel	%d15, %d2, %d15, 0
.LVL34:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7
.LVL35:
	addsc.a	%a2, %a12, %d8, 1
.LBE41:
.LBE47:
.LBB48:
.LBB49:
	.loc 1 266 0
	ld.bu	%d8, [%a15] 10
.LVL36:
.LBE49:
.LBE48:
.LBB54:
.LBB42:
	.loc 1 292 0
	st.b	[%a15] 9, %d15
.LVL37:
.LBE42:
.LBE54:
.LBB55:
.LBB50:
	.loc 1 267 0
	add	%d15, %d8, 1
.LVL38:
	and	%d15, 255
.LVL39:
.LBE50:
.LBE55:
.LBB56:
.LBB43:
	.loc 1 275 0
	st.h	[%a2] 32, %d2
.LBE43:
.LBE56:
.LBB57:
.LBB51:
	.loc 1 271 0
	lt.u	%d2, %d15, 8
	sel	%d15, %d2, %d15, 0
.LVL40:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8
.LVL41:
	addsc.a	%a2, %a12, %d8, 1
.LBE51:
.LBE57:
.LBB58:
.LBB59:
	.loc 1 266 0
	ld.bu	%d8, [%a15] 11
.LVL42:
.LBE59:
.LBE58:
.LBB64:
.LBB52:
	.loc 1 292 0
	st.b	[%a15] 10, %d15
.LVL43:
.LBE52:
.LBE64:
.LBB65:
.LBB60:
	.loc 1 267 0
	add	%d15, %d8, 1
.LVL44:
	and	%d15, 255
.LVL45:
.LBE60:
.LBE65:
.LBB66:
.LBB53:
	.loc 1 275 0
	st.h	[%a2] 48, %d2
.LBE53:
.LBE66:
.LBB67:
.LBB61:
	.loc 1 271 0
	lt.u	%d2, %d15, 8
	sel	%d15, %d2, %d15, 0
.LVL46:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9
.LVL47:
	addsc.a	%a2, %a12, %d8, 1
.LBE61:
.LBE67:
.LBB68:
.LBB69:
	.loc 1 266 0
	ld.bu	%d8, [%a15] 12
.LVL48:
.LBE69:
.LBE68:
.LBB74:
.LBB62:
	.loc 1 292 0
	st.b	[%a15] 11, %d15
.LVL49:
.LBE62:
.LBE74:
.LBB75:
.LBB70:
	.loc 1 267 0
	add	%d15, %d8, 1
.LVL50:
	and	%d15, 255
.LVL51:
.LBE70:
.LBE75:
.LBB76:
.LBB63:
	.loc 1 275 0
	st.h	[%a2] 64, %d2
.LBE63:
.LBE76:
.LBB77:
.LBB71:
	.loc 1 271 0
	lt.u	%d2, %d15, 8
	sel	%d15, %d2, %d15, 0
.LVL52:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10
.LVL53:
	addsc.a	%a2, %a12, %d8, 1
.LBE71:
.LBE77:
.LBB78:
.LBB79:
	.loc 1 266 0
	ld.bu	%d8, [%a15] 13
.LVL54:
.LBE79:
.LBE78:
.LBB84:
.LBB72:
	.loc 1 292 0
	st.b	[%a15] 12, %d15
.LVL55:
.LBE72:
.LBE84:
.LBB85:
.LBB80:
	.loc 1 267 0
	add	%d15, %d8, 1
.LVL56:
	and	%d15, 255
.LVL57:
.LBE80:
.LBE85:
.LBB86:
.LBB73:
	.loc 1 275 0
	st.h	[%a2] 80, %d2
.LBE73:
.LBE86:
.LBB87:
.LBB81:
	.loc 1 271 0
	lt.u	%d2, %d15, 8
	sel	%d15, %d2, %d15, 0
.LVL58:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11
.LVL59:
	addsc.a	%a2, %a12, %d8, 1
.LBE81:
.LBE87:
.LBB88:
.LBB89:
	.loc 1 266 0
	ld.bu	%d8, [%a15] 14
.LVL60:
.LBE89:
.LBE88:
.LBB92:
.LBB82:
	.loc 1 292 0
	st.b	[%a15] 13, %d15
.LVL61:
.LBE82:
.LBE92:
.LBB93:
.LBB90:
	.loc 1 267 0
	add	%d15, %d8, 1
.LVL62:
	and	%d15, 255
.LVL63:
.LBE90:
.LBE93:
.LBB94:
.LBB83:
	.loc 1 275 0
	st.h	[%a2] 96, %d2
.LBE83:
.LBE94:
.LBB95:
.LBB91:
	.loc 1 271 0
	lt.u	%d2, %d15, 8
	sel	%d15, %d2, %d15, 0
.LVL64:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12
.LVL65:
	addsc.a	%a12, %a12, %d8, 1
	.loc 1 292 0
	st.b	[%a15] 14, %d15
	.loc 1 275 0
	st.h	[%a12] 112, %d2
	.loc 1 292 0
	ret
.LBE91:
.LBE95:
.LFE4:
	.size	PMux_vidMuxHandler_2, .-PMux_vidMuxHandler_2
.section .text.PMux_vidMuxHandler_Group3,"ax",@progbits
	.align 1
	.global	PMux_vidMuxHandler_Group3
	.type	PMux_vidMuxHandler_Group3, @function
PMux_vidMuxHandler_Group3:
.LFB5:
	.loc 1 324 0
.LVL66:
.LBB110:
.LBB111:
	.loc 1 266 0
	movh.a	%a13, hi:PMux_au8AddrSet
	lea	%a15, [%a13] lo:PMux_au8AddrSet
	ld.bu	%d8, [%a15] 4
.LVL67:
	.loc 1 275 0
	movh.a	%a12, hi:PMux_au16DataBuf+64
	.loc 1 267 0
	add	%d15, %d8, 1
	and	%d15, 255
.LVL68:
	.loc 1 271 0
	lt.u	%d2, %d15, 8
	sel	%d15, %d2, %d15, 0
.LVL69:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2
.LVL70:
	lea	%a12, [%a12] lo:PMux_au16DataBuf+64
	addsc.a	%a2, %a12, %d8, 1
.LBE111:
.LBE110:
.LBB114:
.LBB115:
	.loc 1 266 0
	ld.bu	%d8, [%a15] 5
.LVL71:
.LBE115:
.LBE114:
.LBB120:
.LBB112:
	.loc 1 292 0
	st.b	[%a15] 4, %d15
.LVL72:
.LBE112:
.LBE120:
.LBB121:
.LBB116:
	.loc 1 267 0
	add	%d15, %d8, 1
.LVL73:
	and	%d15, 255
.LVL74:
.LBE116:
.LBE121:
.LBB122:
.LBB113:
	.loc 1 275 0
	st.h	[%a2]0, %d2
.LBE113:
.LBE122:
.LBB123:
.LBB117:
	.loc 1 271 0
	lt.u	%d2, %d15, 8
	sel	%d15, %d2, %d15, 0
.LVL75:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3
.LVL76:
	addsc.a	%a2, %a12, %d8, 1
.LBE117:
.LBE123:
.LBB124:
.LBB125:
	.loc 1 266 0
	ld.bu	%d8, [%a15] 6
.LVL77:
.LBE125:
.LBE124:
.LBB130:
.LBB118:
	.loc 1 292 0
	st.b	[%a15] 5, %d15
.LVL78:
.LBE118:
.LBE130:
.LBB131:
.LBB126:
	.loc 1 267 0
	add	%d15, %d8, 1
.LVL79:
	and	%d15, 255
.LVL80:
.LBE126:
.LBE131:
.LBB132:
.LBB119:
	.loc 1 275 0
	st.h	[%a2] 16, %d2
.LBE119:
.LBE132:
.LBB133:
.LBB127:
	.loc 1 271 0
	lt.u	%d2, %d15, 8
	sel	%d15, %d2, %d15, 0
.LVL81:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4
.LVL82:
	addsc.a	%a2, %a12, %d8, 1
.LBE127:
.LBE133:
.LBB134:
.LBB135:
	.loc 1 266 0
	ld.bu	%d8, [%a13] lo:PMux_au8AddrSet
.LVL83:
.LBE135:
.LBE134:
.LBB140:
.LBB128:
	.loc 1 292 0
	st.b	[%a15] 6, %d15
.LVL84:
.LBE128:
.LBE140:
.LBB141:
.LBB136:
	.loc 1 267 0
	add	%d15, %d8, 1
.LVL85:
	and	%d15, 255
.LVL86:
.LBE136:
.LBE141:
.LBB142:
.LBB129:
	.loc 1 275 0
	st.h	[%a2] 32, %d2
.LBE129:
.LBE142:
.LBB143:
.LBB137:
	.loc 1 271 0
	lt.u	%d2, %d15, 8
	sel	%d15, %d2, %d15, 0
.LVL87:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1
.LVL88:
	addsc.a	%a2, %a12, %d8, 1
.LBE137:
.LBE143:
.LBB144:
.LBB145:
	.loc 1 266 0
	ld.bu	%d8, [%a15] 1
.LVL89:
.LBE145:
.LBE144:
.LBB150:
.LBB138:
	.loc 1 292 0
	st.b	[%a13] lo:PMux_au8AddrSet, %d15
.LVL90:
.LBE138:
.LBE150:
.LBB151:
.LBB146:
	.loc 1 267 0
	add	%d15, %d8, 1
.LVL91:
	and	%d15, 255
.LVL92:
.LBE146:
.LBE151:
.LBB152:
.LBB139:
	.loc 1 275 0
	st.h	[%a2] -64, %d2
.LBE139:
.LBE152:
.LBB153:
.LBB147:
	.loc 1 271 0
	lt.u	%d2, %d15, 8
	sel	%d15, %d2, %d15, 0
.LVL93:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2
.LVL94:
.LBE147:
.LBE153:
.LBB154:
.LBB155:
	.loc 1 266 0
	ld.bu	%d10, [%a15] 3
.LBE155:
.LBE154:
.LBB159:
.LBB148:
	.loc 1 275 0
	addsc.a	%a12, %a12, %d8, 1
	.loc 1 292 0
	st.b	[%a15] 1, %d15
.LVL95:
.LBE148:
.LBE159:
.LBB160:
.LBB156:
	.loc 1 267 0
	add	%d15, %d10, 1
.LVL96:
	and	%d15, 255
.LVL97:
.LBE156:
.LBE160:
.LBB161:
.LBB149:
	.loc 1 275 0
	st.h	[%a12] -48, %d2
	and	%d11, %d15, 1
	extr.u	%d9, %d15, 1, 1
	extr.u	%d8, %d15, 2, 1
.LVL98:
.LBE149:
.LBE161:
.LBB162:
.LBB157:
	.loc 1 269 0
	jlt.u	%d15, 8, .L31
	mov	%e8, 0
	mov	%d11, 0
	.loc 1 271 0
	mov	%d15, 0
.LVL99:
.L31:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1
.LVL100:
	movh.a	%a2, hi:PMux_au16DataBuf+48
	lea	%a2, [%a2] lo:PMux_au16DataBuf+48
	addsc.a	%a2, %a2, %d10, 1
	.loc 1 281 0
	mov	%d4, %d11
	.loc 1 275 0
	st.h	[%a2]0, %d2
.LVL101:
	.loc 1 281 0
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A
.LVL102:
	.loc 1 283 0
	mov	%d4, %d9
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B
.LVL103:
	.loc 1 285 0
	mov	%d4, %d8
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C
.LVL104:
.LBE157:
.LBE162:
.LBB163:
.LBB164:
	.loc 1 266 0
	ld.bu	%d10, [%a15] 2
.LVL105:
.LBE164:
.LBE163:
.LBB166:
.LBB158:
	.loc 1 292 0
	st.b	[%a15] 3, %d15
.LVL106:
.LBE158:
.LBE166:
.LBB167:
.LBB165:
	.loc 1 267 0
	add	%d15, %d10, 1
.LVL107:
	and	%d15, 255
.LVL108:
	and	%d11, %d15, 1
	extr.u	%d9, %d15, 1, 1
	extr.u	%d8, %d15, 2, 1
	.loc 1 269 0
	jlt.u	%d15, 8, .L32
	mov	%e8, 0
	mov	%d11, 0
	.loc 1 271 0
	mov	%d15, 0
.LVL109:
.L32:
	.loc 1 275 0
	call	IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3
.LVL110:
	movh.a	%a2, hi:PMux_au16DataBuf+32
	lea	%a2, [%a2] lo:PMux_au16DataBuf+32
	addsc.a	%a2, %a2, %d10, 1
	.loc 1 281 0
	mov	%d4, %d11
	.loc 1 275 0
	st.h	[%a2]0, %d2
.LVL111:
	.loc 1 281 0
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A
.LVL112:
	.loc 1 283 0
	mov	%d4, %d9
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B
.LVL113:
	.loc 1 285 0
	mov	%d4, %d8
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C
.LVL114:
	.loc 1 292 0
	st.b	[%a15] 2, %d15
	ret
.LBE165:
.LBE167:
.LFE5:
	.size	PMux_vidMuxHandler_Group3, .-PMux_vidMuxHandler_Group3
.section .text.PMux_vidShiftOutMultiBytes,"ax",@progbits
	.align 1
	.global	PMux_vidShiftOutMultiBytes
	.type	PMux_vidShiftOutMultiBytes, @function
PMux_vidShiftOutMultiBytes:
.LFB6:
	.loc 1 378 0
.LVL115:
	.loc 1 383 0
	add	%d4, -1
.LVL116:
	movh.a	%a15, hi:PMux_atShiftRegCfgSet
	.loc 1 378 0
	sub.a	%SP, 24
.LCFI0:
	.loc 1 378 0
	mov.aa	%a13, %a4
.LVL117:
	.loc 1 383 0
	and	%d12, %d4, 255
	lea	%a14, [%a15] lo:PMux_atShiftRegCfgSet
	mul	%d13, %d5, 12
	jnz.t	%d4, 7, .L50
	addsc.a	%a15, %a14, %d13, 0
	mov	%d11, 0
	ld.a	%a12, [%a15] 4
	mov	%d15, %d12
.LBB168:
.LBB169:
	.loc 1 420 0
	mov	%d9, 138
.LVL118:
.L49:
.LBE169:
.LBE168:
	.loc 1 385 0
	extr	%d15, %d15, 0, 8
	mov	%d8, 7
	addsc.a	%a2, %a13, %d15, 0
	ld.bu	%d10, [%a2]0
.LVL119:
.L47:
	.loc 1 389 0
	extr.u	%d15, %d10, %d8, 1
	.loc 1 391 0
	ld.a	%a2, [%a15]0
	.loc 1 389 0
	jz	%d15, .L39
	.loc 1 391 0
	mov	%d4, 1
	calli	%a2
.LVL120:
.L40:
.LBB171:
.LBB170:
	.loc 1 420 0 discriminator 2
	st.w	[%SP] 4, %d9
	.loc 1 421 0 discriminator 2
	ld.w	%d15, [%SP] 4
	jz	%d15, .L44
.L57:
	.loc 1 423 0
	ld.w	%d15, [%SP] 4
	add	%d15, -1
	st.w	[%SP] 4, %d15
	.loc 1 421 0
	ld.w	%d15, [%SP] 4
	jnz	%d15, .L57
.L44:
.LBE170:
.LBE171:
	.loc 1 400 0
	mov	%d4, 1
	calli	%a12
.LVL121:
.LBB172:
.LBB173:
	.loc 1 420 0
	st.w	[%SP] 8, %d9
	.loc 1 421 0
	ld.w	%d15, [%SP] 8
	jz	%d15, .L43
.L56:
	.loc 1 423 0
	ld.w	%d15, [%SP] 8
	add	%d15, -1
	st.w	[%SP] 8, %d15
	.loc 1 421 0
	ld.w	%d15, [%SP] 8
	jnz	%d15, .L56
.L43:
.LBE173:
.LBE172:
	.loc 1 402 0
	mov	%d4, 0
	calli	%a12
.LVL122:
.LBB174:
.LBB175:
	.loc 1 420 0
	st.w	[%SP] 12, %d9
	.loc 1 421 0
	ld.w	%d15, [%SP] 12
	jz	%d15, .L46
.L55:
	.loc 1 423 0
	ld.w	%d15, [%SP] 12
	add	%d15, -1
	st.w	[%SP] 12, %d15
	.loc 1 421 0
	ld.w	%d15, [%SP] 12
	jnz	%d15, .L55
.L46:
.LVL123:
.LBE175:
.LBE174:
	.loc 1 387 0
	jned	%d8, 0, .L47
.LVL124:
	add	%d11, 1
	sub	%d15, %d12, %d11
	.loc 1 383 0 discriminator 2
	jz.t	%d15, 7, .L49
.LVL125:
.L50:
	.loc 1 407 0
	addsc.a	%a15, %a14, %d13, 0
.LBB176:
.LBB177:
	.loc 1 420 0
	mov	%d15, 138
.LBE177:
.LBE176:
	.loc 1 407 0
	ld.a	%a15, [%a15] 8
	mov	%d4, 1
	calli	%a15
.LVL126:
.LBB179:
.LBB178:
	.loc 1 420 0
	st.w	[%SP] 16, %d15
	.loc 1 421 0
	ld.w	%d15, [%SP] 16
	jz	%d15, .L38
.L54:
	.loc 1 423 0
	ld.w	%d15, [%SP] 16
	add	%d15, -1
	st.w	[%SP] 16, %d15
	.loc 1 421 0
	ld.w	%d15, [%SP] 16
	jnz	%d15, .L54
.L38:
.LBE178:
.LBE179:
.LBB180:
.LBB181:
	.loc 1 420 0
	mov	%d15, 138
.LBE181:
.LBE180:
	.loc 1 409 0
	mov	%d4, 0
	calli	%a15
.LVL127:
.LBB183:
.LBB182:
	.loc 1 420 0
	st.w	[%SP] 20, %d15
	.loc 1 421 0
	ld.w	%d15, [%SP] 20
	jz	%d15, .L67
.L53:
	.loc 1 423 0
	ld.w	%d15, [%SP] 20
	add	%d15, -1
	st.w	[%SP] 20, %d15
	.loc 1 421 0
	ld.w	%d15, [%SP] 20
	jnz	%d15, .L53
	ret
.LVL128:
.L39:
.LBE182:
.LBE183:
	.loc 1 395 0
	mov	%d4, 0
	calli	%a2
.LVL129:
	j	.L40
.LVL130:
.L67:
	ret
.LFE6:
	.size	PMux_vidShiftOutMultiBytes, .-PMux_vidShiftOutMultiBytes
.section .rodata.a4.PMux_atShiftRegCfgSet,"a",@progbits
	.align 2
	.type	PMux_atShiftRegCfgSet, @object
	.size	PMux_atShiftRegCfgSet, 36
PMux_atShiftRegCfgSet:
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_SER
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_SER_2
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_SER_3
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3
.section .rodata.a4.PMux_atInputMuxCfgSet,"a",@progbits
	.align 2
	.type	PMux_atInputMuxCfgSet, @object
	.size	PMux_atInputMuxCfgSet, 420
PMux_atInputMuxCfgSet:
	.byte	1
	.byte	8
	.zero	2
	.word	PMux_au8AddrSet
	.word	PMux_au16DataBuf
	.word	0
	.word	0
	.word	0
	.word	IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1
	.byte	1
	.byte	8
	.zero	2
	.word	PMux_au8AddrSet+1
	.word	PMux_au16DataBuf+16
	.word	0
	.word	0
	.word	0
	.word	IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2
	.byte	0
	.byte	8
	.zero	2
	.word	PMux_au8AddrSet+2
	.word	PMux_au16DataBuf+32
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C
	.word	IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3
	.byte	0
	.byte	3
	.zero	2
	.word	PMux_au8AddrSet+3
	.word	PMux_au16DataBuf+48
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C
	.word	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1
	.byte	1
	.byte	4
	.zero	2
	.word	PMux_au8AddrSet+4
	.word	PMux_au16DataBuf+64
	.word	0
	.word	0
	.word	0
	.word	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2
	.byte	1
	.byte	5
	.zero	2
	.word	PMux_au8AddrSet+5
	.word	PMux_au16DataBuf+80
	.word	0
	.word	0
	.word	0
	.word	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3
	.byte	1
	.byte	6
	.zero	2
	.word	PMux_au8AddrSet+6
	.word	PMux_au16DataBuf+96
	.word	0
	.word	0
	.word	0
	.word	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4
	.byte	0
	.byte	7
	.zero	2
	.word	PMux_au8AddrSet+7
	.word	PMux_au16DataBuf+112
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B
	.word	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C
	.word	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5
	.byte	1
	.byte	8
	.zero	2
	.word	PMux_au8AddrSet+8
	.word	PMux_au16DataBuf+128
	.word	0
	.word	0
	.word	0
	.word	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6
	.byte	1
	.byte	9
	.zero	2
	.word	PMux_au8AddrSet+9
	.word	PMux_au16DataBuf+144
	.word	0
	.word	0
	.word	0
	.word	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7
	.byte	1
	.byte	10
	.zero	2
	.word	PMux_au8AddrSet+10
	.word	PMux_au16DataBuf+160
	.word	0
	.word	0
	.word	0
	.word	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8
	.byte	1
	.byte	11
	.zero	2
	.word	PMux_au8AddrSet+11
	.word	PMux_au16DataBuf+176
	.word	0
	.word	0
	.word	0
	.word	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9
	.byte	1
	.byte	12
	.zero	2
	.word	PMux_au8AddrSet+12
	.word	PMux_au16DataBuf+192
	.word	0
	.word	0
	.word	0
	.word	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10
	.byte	1
	.byte	13
	.zero	2
	.word	PMux_au8AddrSet+13
	.word	PMux_au16DataBuf+208
	.word	0
	.word	0
	.word	0
	.word	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11
	.byte	1
	.byte	14
	.zero	2
	.word	PMux_au8AddrSet+14
	.word	PMux_au16DataBuf+224
	.word	0
	.word	0
	.word	0
	.word	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12
.section .bss.a2.PMux_au16DataBuf,"aw",@nobits
	.align 1
	.type	PMux_au16DataBuf, @object
	.size	PMux_au16DataBuf, 240
PMux_au16DataBuf:
	.zero	240
.section .bss.a1.PMux_au8AddrSet,"aw",@nobits
	.type	PMux_au8AddrSet, @object
	.size	PMux_au8AddrSet, 15
PMux_au8AddrSet:
	.zero	15
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
	.byte	0x4
	.uaword	.LCFI0-.LFB6
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE12:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 "bswcdd\\PortMux\\PortMux.h"
	.file 4 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x15e9
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\PortMux\\PortMux.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x2b8
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.string	"sint8"
	.byte	0x2
	.byte	0x4c
	.uaword	0x1b4
	.uleb128 0x3
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x2
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1d0
	.uleb128 0x3
	.byte	0x1
	.byte	0x8
	.string	"unsigned char"
	.uleb128 0x3
	.byte	0x2
	.byte	0x5
	.string	"short int"
	.uleb128 0x2
	.string	"uint16"
	.byte	0x2
	.byte	0x5b
	.uaword	0x1fc
	.uleb128 0x3
	.byte	0x2
	.byte	0x7
	.string	"short unsigned int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"int"
	.uleb128 0x3
	.byte	0x8
	.byte	0x5
	.string	"long long int"
	.uleb128 0x2
	.string	"uint32"
	.byte	0x2
	.byte	0x6a
	.uaword	0x238
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"unsigned int"
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
	.uleb128 0x2
	.string	"boolean"
	.byte	0x2
	.byte	0x80
	.uaword	0x1d0
	.uleb128 0x3
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x6
	.uaword	0x3f7
	.uleb128 0x5
	.string	"ePMux_DIOInputMux1"
	.sleb128 0
	.uleb128 0x5
	.string	"ePMux_DIOInputMux2"
	.sleb128 1
	.uleb128 0x5
	.string	"ePMux_DIOInputMux3"
	.sleb128 2
	.uleb128 0x5
	.string	"ePMUX_ANInputMux1"
	.sleb128 3
	.uleb128 0x5
	.string	"ePMUX_ANInputMux2"
	.sleb128 4
	.uleb128 0x5
	.string	"ePMUX_ANInputMux3"
	.sleb128 5
	.uleb128 0x5
	.string	"ePMUX_ANInputMux4"
	.sleb128 6
	.uleb128 0x5
	.string	"ePMUX_ANInputMux5"
	.sleb128 7
	.uleb128 0x5
	.string	"ePMUX_ANInputMux6"
	.sleb128 8
	.uleb128 0x5
	.string	"ePMUX_ANInputMux7"
	.sleb128 9
	.uleb128 0x5
	.string	"ePMUX_ANInputMux8"
	.sleb128 10
	.uleb128 0x5
	.string	"ePMUX_ANInputMux9"
	.sleb128 11
	.uleb128 0x5
	.string	"ePMUX_ANInputMux10"
	.sleb128 12
	.uleb128 0x5
	.string	"ePMUX_ANInputMux11"
	.sleb128 13
	.uleb128 0x5
	.string	"ePMUX_ANInputMux12"
	.sleb128 14
	.uleb128 0x5
	.string	"ePMUX_InputMuxMaxNum"
	.sleb128 15
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x19
	.uaword	0x4b2
	.uleb128 0x5
	.string	"ePMUX_DIO0_MUX1"
	.sleb128 0
	.uleb128 0x5
	.string	"ePMUX_DIO1_MUX1"
	.sleb128 1
	.uleb128 0x5
	.string	"ePMUX_DIO2_MUX1"
	.sleb128 2
	.uleb128 0x5
	.string	"ePMUX_DIO3_MUX1"
	.sleb128 3
	.uleb128 0x5
	.string	"ePMUX_DIO4_MUX1"
	.sleb128 4
	.uleb128 0x5
	.string	"ePMUX_DIO5_MUX1"
	.sleb128 5
	.uleb128 0x5
	.string	"ePMUX_DIO6_MUX1"
	.sleb128 6
	.uleb128 0x5
	.string	"ePMUX_DIO7_MUX1"
	.sleb128 7
	.uleb128 0x5
	.string	"ePMUX_DIOInputMux1MaxChannelNum"
	.sleb128 8
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x25
	.uaword	0x56d
	.uleb128 0x5
	.string	"ePMUX_DIO0_MUX2"
	.sleb128 16
	.uleb128 0x5
	.string	"ePMUX_DIO1_MUX2"
	.sleb128 17
	.uleb128 0x5
	.string	"ePMUX_DIO2_MUX2"
	.sleb128 18
	.uleb128 0x5
	.string	"ePMUX_DIO3_MUX2"
	.sleb128 19
	.uleb128 0x5
	.string	"ePMUX_DIO4_MUX2"
	.sleb128 20
	.uleb128 0x5
	.string	"ePMUX_DIO5_MUX2"
	.sleb128 21
	.uleb128 0x5
	.string	"ePMUX_DIO6_MUX2"
	.sleb128 22
	.uleb128 0x5
	.string	"ePMUX_DIO7_MUX2"
	.sleb128 23
	.uleb128 0x5
	.string	"ePMUX_DIOInputMux2MaxChannelNum"
	.sleb128 24
	.byte	0
	.uleb128 0x4
	.byte	0x1
	.byte	0x3
	.byte	0x31
	.uaword	0x628
	.uleb128 0x5
	.string	"ePMUX_DIO0_MUX3"
	.sleb128 32
	.uleb128 0x5
	.string	"ePMUX_DIO1_MUX3"
	.sleb128 33
	.uleb128 0x5
	.string	"ePMUX_DIO2_MUX3"
	.sleb128 34
	.uleb128 0x5
	.string	"ePMUX_DIO3_MUX3"
	.sleb128 35
	.uleb128 0x5
	.string	"ePMUX_DIO4_MUX3"
	.sleb128 36
	.uleb128 0x5
	.string	"ePMUX_DIO5_MUX3"
	.sleb128 37
	.uleb128 0x5
	.string	"ePMUX_DIO6_MUX3"
	.sleb128 38
	.uleb128 0x5
	.string	"ePMUX_DIO7_MUX3"
	.sleb128 39
	.uleb128 0x5
	.string	"ePMUX_DIOInputMux3MaxChannelNum"
	.sleb128 40
	.byte	0
	.uleb128 0x6
	.uaword	.LASF0
	.byte	0x1
	.byte	0xa
	.uaword	0x633
	.uleb128 0x7
	.uaword	.LASF0
	.byte	0x1c
	.byte	0x1
	.byte	0xc
	.uaword	0x70e
	.uleb128 0x8
	.string	"bIsSlaveMux"
	.byte	0x1
	.byte	0xd
	.uaword	0x275
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x8
	.string	"u8BufLength"
	.byte	0x1
	.byte	0xe
	.uaword	0x1c3
	.byte	0x2
	.byte	0x23
	.uleb128 0x1
	.uleb128 0x8
	.string	"pu8CurrentAddr"
	.byte	0x1
	.byte	0x10
	.uaword	0x70e
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x8
	.string	"pu16InputDataBuf"
	.byte	0x1
	.byte	0x11
	.uaword	0x714
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x8
	.string	"vidAddrLineCtrl_A"
	.byte	0x1
	.byte	0x13
	.uaword	0x726
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x8
	.string	"vidAddrLineCtrl_B"
	.byte	0x1
	.byte	0x14
	.uaword	0x726
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x8
	.string	"vidAddrLineCtrl_C"
	.byte	0x1
	.byte	0x15
	.uaword	0x726
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x8
	.string	"u16ReadInputVal"
	.byte	0x1
	.byte	0x17
	.uaword	0x732
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1c3
	.uleb128 0x9
	.byte	0x4
	.uaword	0x1ee
	.uleb128 0xa
	.byte	0x1
	.uaword	0x726
	.uleb128 0xb
	.uaword	0x1ee
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x71a
	.uleb128 0xc
	.byte	0x1
	.uaword	0x1ee
	.uleb128 0x9
	.byte	0x4
	.uaword	0x72c
	.uleb128 0xd
	.uaword	.LASF1
	.byte	0xc
	.byte	0x1
	.uahalf	0x154
	.uaword	0x795
	.uleb128 0xe
	.string	"vidDataPinCtrl"
	.byte	0x1
	.uahalf	0x155
	.uaword	0x726
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0xe
	.string	"vidSclkPinCtrl"
	.byte	0x1
	.uahalf	0x156
	.uaword	0x726
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0xe
	.string	"vidLatchPinCtrl"
	.byte	0x1
	.uahalf	0x157
	.uaword	0x726
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0xf
	.uaword	.LASF1
	.byte	0x1
	.uahalf	0x158
	.uaword	0x738
	.uleb128 0x10
	.string	"PMux_vidWait"
	.byte	0x1
	.uahalf	0x1a0
	.byte	0x1
	.byte	0x1
	.uaword	0x7de
	.uleb128 0x11
	.string	"time"
	.byte	0x1
	.uahalf	0x1a0
	.uaword	0x22a
	.uleb128 0x12
	.string	"localu32Counter"
	.byte	0x1
	.uahalf	0x1a2
	.uaword	0x7de
	.byte	0
	.uleb128 0x13
	.uaword	0x22a
	.uleb128 0x14
	.byte	0x1
	.string	"PMux_u8CheckCfg"
	.byte	0x1
	.byte	0xec
	.byte	0x1
	.uaword	0x1c3
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x824
	.uleb128 0x15
	.string	"u8LocCfgNum"
	.byte	0x1
	.byte	0xee
	.uaword	0x1c3
	.uaword	.LLST0
	.byte	0
	.uleb128 0x16
	.byte	0x1
	.string	"PMux_vidMainFunction"
	.byte	0x1
	.uahalf	0x107
	.byte	0x1
	.byte	0x1
	.uaword	0x899
	.uleb128 0x11
	.string	"ku8MuxIndex"
	.byte	0x1
	.uahalf	0x107
	.uaword	0x899
	.uleb128 0x12
	.string	"bLocPinLevel"
	.byte	0x1
	.uahalf	0x109
	.uaword	0x275
	.uleb128 0x12
	.string	"u8LocCurAddr"
	.byte	0x1
	.uahalf	0x10a
	.uaword	0x1c3
	.uleb128 0x12
	.string	"u8LocNextAddr"
	.byte	0x1
	.uahalf	0x10b
	.uaword	0x1c3
	.byte	0
	.uleb128 0x17
	.uaword	0x1c3
	.uleb128 0x18
	.uaword	0x824
	.uaword	.LFB1
	.uaword	.LFE1
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x920
	.uleb128 0x19
	.uaword	0x844
	.uaword	.LLST1
	.uleb128 0x1a
	.uaword	0x858
	.uaword	.LLST2
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST3
	.uleb128 0x1b
	.uaword	0x882
	.byte	0x1
	.byte	0x5f
	.uleb128 0x1c
	.uaword	.LVL9
	.byte	0x3
	.byte	0x8f
	.sleb128 24
	.byte	0x6
	.uleb128 0x1d
	.uaword	.LVL11
	.byte	0x3
	.byte	0x8f
	.sleb128 12
	.byte	0x6
	.uaword	0x8f4
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x4
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL12
	.byte	0x3
	.byte	0x8f
	.sleb128 16
	.byte	0x6
	.uaword	0x90c
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0
	.uleb128 0x1f
	.uaword	.LVL13
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x6
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x24
	.byte	0x33
	.byte	0x25
	.byte	0
	.byte	0
	.uleb128 0x20
	.byte	0x1
	.string	"PMux_u16GetInputVal"
	.byte	0x1
	.uahalf	0x127
	.byte	0x1
	.uaword	0x1ee
	.uaword	.LFB2
	.uaword	.LFE2
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x9b8
	.uleb128 0x21
	.string	"ku8DataIndex"
	.byte	0x1
	.uahalf	0x127
	.uaword	0x899
	.uaword	.LLST4
	.uleb128 0x22
	.string	"u8LocMuxIndex"
	.byte	0x1
	.uahalf	0x129
	.uaword	0x1c3
	.uaword	.LLST5
	.uleb128 0x22
	.string	"u8LocDataIndex"
	.byte	0x1
	.uahalf	0x12a
	.uaword	0x1c3
	.uaword	.LLST6
	.uleb128 0x22
	.string	"u16LocInputVal"
	.byte	0x1
	.uahalf	0x12c
	.uaword	0x1ee
	.uaword	.LLST7
	.byte	0
	.uleb128 0x23
	.byte	0x1
	.string	"PMux_vidMuxHandler_1"
	.byte	0x1
	.uahalf	0x133
	.byte	0x1
	.uaword	.LFB3
	.uaword	.LFE3
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x24
	.byte	0x1
	.string	"PMux_vidMuxHandler_2"
	.byte	0x1
	.uahalf	0x137
	.byte	0x1
	.uaword	.LFB4
	.uaword	.LFE4
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xc50
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB28
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.uahalf	0x139
	.uaword	0xa87
	.uleb128 0x26
	.uaword	0x844
	.byte	0x7
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0
	.uleb128 0x1a
	.uaword	0x858
	.uaword	.LLST8
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST9
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST10
	.uleb128 0x28
	.uaword	.LVL20
	.uaword	0x1197
	.uleb128 0x29
	.uaword	.LVL22
	.uaword	0x11c3
	.uaword	0xa61
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL23
	.uaword	0x11f5
	.uaword	0xa75
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL24
	.uaword	0x1227
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB31
	.uaword	.Ldebug_ranges0+0x18
	.byte	0x1
	.uahalf	0x13a
	.uaword	0xac9
	.uleb128 0x26
	.uaword	0x844
	.byte	0x8
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x18
	.uleb128 0x2b
	.uaword	0x858
	.byte	0
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST11
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST12
	.uleb128 0x28
	.uaword	.LVL29
	.uaword	0x1259
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB38
	.uaword	.Ldebug_ranges0+0x40
	.byte	0x1
	.uahalf	0x13b
	.uaword	0xb0b
	.uleb128 0x26
	.uaword	0x844
	.byte	0x9
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x40
	.uleb128 0x2b
	.uaword	0x858
	.byte	0
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST13
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST14
	.uleb128 0x28
	.uaword	.LVL35
	.uaword	0x1285
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB48
	.uaword	.Ldebug_ranges0+0x70
	.byte	0x1
	.uahalf	0x13c
	.uaword	0xb4d
	.uleb128 0x26
	.uaword	0x844
	.byte	0xa
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x70
	.uleb128 0x2b
	.uaword	0x858
	.byte	0
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST15
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST16
	.uleb128 0x28
	.uaword	.LVL41
	.uaword	0x12b1
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB58
	.uaword	.Ldebug_ranges0+0xa0
	.byte	0x1
	.uahalf	0x13d
	.uaword	0xb8f
	.uleb128 0x26
	.uaword	0x844
	.byte	0xb
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0xa0
	.uleb128 0x2b
	.uaword	0x858
	.byte	0
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST17
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST18
	.uleb128 0x28
	.uaword	.LVL47
	.uaword	0x12dd
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB68
	.uaword	.Ldebug_ranges0+0xd0
	.byte	0x1
	.uahalf	0x13e
	.uaword	0xbd1
	.uleb128 0x26
	.uaword	0x844
	.byte	0xc
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0xd0
	.uleb128 0x2b
	.uaword	0x858
	.byte	0
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST19
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST20
	.uleb128 0x28
	.uaword	.LVL53
	.uaword	0x1309
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB78
	.uaword	.Ldebug_ranges0+0x100
	.byte	0x1
	.uahalf	0x13f
	.uaword	0xc13
	.uleb128 0x26
	.uaword	0x844
	.byte	0xd
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x100
	.uleb128 0x2b
	.uaword	0x858
	.byte	0
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST21
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST22
	.uleb128 0x28
	.uaword	.LVL59
	.uaword	0x1336
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x824
	.uaword	.LBB88
	.uaword	.Ldebug_ranges0+0x130
	.byte	0x1
	.uahalf	0x140
	.uleb128 0x26
	.uaword	0x844
	.byte	0xe
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x130
	.uleb128 0x2b
	.uaword	0x858
	.byte	0
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST23
	.uleb128 0x1b
	.uaword	0x882
	.byte	0x1
	.byte	0x5f
	.uleb128 0x28
	.uaword	.LVL65
	.uaword	0x1363
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x24
	.byte	0x1
	.string	"PMux_vidMuxHandler_Group3"
	.byte	0x1
	.uahalf	0x143
	.byte	0x1
	.uaword	.LFB5
	.uaword	.LFE5
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0xebf
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB110
	.uaword	.Ldebug_ranges0+0x150
	.byte	0x1
	.uahalf	0x146
	.uaword	0xcc2
	.uleb128 0x26
	.uaword	0x844
	.byte	0x4
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x150
	.uleb128 0x2b
	.uaword	0x858
	.byte	0
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST24
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST25
	.uleb128 0x28
	.uaword	.LVL70
	.uaword	0x1390
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB114
	.uaword	.Ldebug_ranges0+0x170
	.byte	0x1
	.uahalf	0x147
	.uaword	0xd04
	.uleb128 0x26
	.uaword	0x844
	.byte	0x5
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x170
	.uleb128 0x2b
	.uaword	0x858
	.byte	0
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST26
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST27
	.uleb128 0x28
	.uaword	.LVL76
	.uaword	0x13bc
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB124
	.uaword	.Ldebug_ranges0+0x1a0
	.byte	0x1
	.uahalf	0x148
	.uaword	0xd46
	.uleb128 0x26
	.uaword	0x844
	.byte	0x6
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x1a0
	.uleb128 0x2b
	.uaword	0x858
	.byte	0
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST28
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST29
	.uleb128 0x28
	.uaword	.LVL82
	.uaword	0x13e8
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB134
	.uaword	.Ldebug_ranges0+0x1d0
	.byte	0x1
	.uahalf	0x149
	.uaword	0xd88
	.uleb128 0x26
	.uaword	0x844
	.byte	0
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x1d0
	.uleb128 0x2b
	.uaword	0x858
	.byte	0
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST30
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST31
	.uleb128 0x28
	.uaword	.LVL88
	.uaword	0x1414
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB144
	.uaword	.Ldebug_ranges0+0x200
	.byte	0x1
	.uahalf	0x14a
	.uaword	0xdca
	.uleb128 0x26
	.uaword	0x844
	.byte	0x1
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x200
	.uleb128 0x2b
	.uaword	0x858
	.byte	0
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST32
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST33
	.uleb128 0x28
	.uaword	.LVL94
	.uaword	0x1440
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x824
	.uaword	.LBB154
	.uaword	.Ldebug_ranges0+0x230
	.byte	0x1
	.uahalf	0x14b
	.uaword	0xe47
	.uleb128 0x26
	.uaword	0x844
	.byte	0x3
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x230
	.uleb128 0x1a
	.uaword	0x858
	.uaword	.LLST34
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST35
	.uleb128 0x1a
	.uaword	0x882
	.uaword	.LLST36
	.uleb128 0x28
	.uaword	.LVL100
	.uaword	0x146c
	.uleb128 0x29
	.uaword	.LVL102
	.uaword	0x1498
	.uaword	0xe21
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL103
	.uaword	0x14ca
	.uaword	0xe35
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL104
	.uaword	0x14fc
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2c
	.uaword	0x824
	.uaword	.LBB163
	.uaword	.Ldebug_ranges0+0x258
	.byte	0x1
	.uahalf	0x14e
	.uleb128 0x26
	.uaword	0x844
	.byte	0x2
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x258
	.uleb128 0x1a
	.uaword	0x858
	.uaword	.LLST37
	.uleb128 0x1a
	.uaword	0x86d
	.uaword	.LLST38
	.uleb128 0x1b
	.uaword	0x882
	.byte	0x1
	.byte	0x5f
	.uleb128 0x28
	.uaword	.LVL110
	.uaword	0x152e
	.uleb128 0x29
	.uaword	.LVL112
	.uaword	0x155a
	.uaword	0xe98
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x7b
	.sleb128 0
	.byte	0
	.uleb128 0x29
	.uaword	.LVL113
	.uaword	0x158c
	.uaword	0xeac
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x79
	.sleb128 0
	.byte	0
	.uleb128 0x2a
	.uaword	.LVL114
	.uaword	0x15be
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x2
	.byte	0x78
	.sleb128 0
	.byte	0
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2d
	.byte	0x1
	.string	"PMux_vidShiftOutMultiBytes"
	.byte	0x1
	.uahalf	0x179
	.byte	0x1
	.uaword	.LFB6
	.uaword	.LFE6
	.uaword	.LLST39
	.byte	0x1
	.uaword	0x10b3
	.uleb128 0x21
	.string	"kpku8Data"
	.byte	0x1
	.uahalf	0x179
	.uaword	0x10b3
	.uaword	.LLST40
	.uleb128 0x21
	.string	"ku8Bytes"
	.byte	0x1
	.uahalf	0x179
	.uaword	0x899
	.uaword	.LLST41
	.uleb128 0x21
	.string	"ku8SRID"
	.byte	0x1
	.uahalf	0x179
	.uaword	0x899
	.uaword	.LLST42
	.uleb128 0x12
	.string	"u8CurByte"
	.byte	0x1
	.uahalf	0x17b
	.uaword	0x1c3
	.uleb128 0x22
	.string	"s8ByteIndex"
	.byte	0x1
	.uahalf	0x17c
	.uaword	0x1a7
	.uaword	.LLST43
	.uleb128 0x22
	.string	"s8BitIndex"
	.byte	0x1
	.uahalf	0x17d
	.uaword	0x1a7
	.uaword	.LLST44
	.uleb128 0x25
	.uaword	0x7a1
	.uaword	.LBB168
	.uaword	.Ldebug_ranges0+0x270
	.byte	0x1
	.uahalf	0x18e
	.uaword	0xf9d
	.uleb128 0x19
	.uaword	0x7b8
	.uaword	.LLST45
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x270
	.uleb128 0x1b
	.uaword	0x7c5
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x7a1
	.uaword	.LBB172
	.uaword	.LBE172
	.byte	0x1
	.uahalf	0x191
	.uaword	0xfcd
	.uleb128 0x19
	.uaword	0x7b8
	.uaword	.LLST46
	.uleb128 0x2f
	.uaword	.LBB173
	.uaword	.LBE173
	.uleb128 0x1b
	.uaword	0x7c5
	.byte	0x2
	.byte	0x91
	.sleb128 -16
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uaword	0x7a1
	.uaword	.LBB174
	.uaword	.LBE174
	.byte	0x1
	.uahalf	0x193
	.uaword	0xffd
	.uleb128 0x19
	.uaword	0x7b8
	.uaword	.LLST47
	.uleb128 0x2f
	.uaword	.LBB175
	.uaword	.LBE175
	.uleb128 0x1b
	.uaword	0x7c5
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x7a1
	.uaword	.LBB176
	.uaword	.Ldebug_ranges0+0x288
	.byte	0x1
	.uahalf	0x198
	.uaword	0x1029
	.uleb128 0x19
	.uaword	0x7b8
	.uaword	.LLST48
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x288
	.uleb128 0x1b
	.uaword	0x7c5
	.byte	0x2
	.byte	0x91
	.sleb128 -8
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x7a1
	.uaword	.LBB180
	.uaword	.Ldebug_ranges0+0x2a0
	.byte	0x1
	.uahalf	0x19a
	.uaword	0x1055
	.uleb128 0x19
	.uaword	0x7b8
	.uaword	.LLST49
	.uleb128 0x27
	.uaword	.Ldebug_ranges0+0x2a0
	.uleb128 0x1b
	.uaword	0x7c5
	.byte	0x2
	.byte	0x91
	.sleb128 -4
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL120
	.byte	0x3
	.byte	0x8f
	.sleb128 0
	.byte	0x6
	.uaword	0x1068
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL121
	.uaword	0x1077
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL122
	.uaword	0x1086
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x1d
	.uaword	.LVL126
	.byte	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0x1098
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x31
	.byte	0
	.uleb128 0x30
	.uaword	.LVL127
	.uaword	0x10a7
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x31
	.uaword	.LVL129
	.uleb128 0x1e
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x9
	.byte	0x4
	.uaword	0x899
	.uleb128 0x32
	.uaword	0x1c3
	.uaword	0x10c9
	.uleb128 0x33
	.uaword	0x10c9
	.byte	0xe
	.byte	0
	.uleb128 0x3
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x34
	.string	"PMux_au8AddrSet"
	.byte	0x1
	.byte	0x1d
	.uaword	0x10b9
	.byte	0x5
	.byte	0x3
	.uaword	PMux_au8AddrSet
	.uleb128 0x32
	.uaword	0x1ee
	.uaword	0x1108
	.uleb128 0x33
	.uaword	0x10c9
	.byte	0xe
	.uleb128 0x33
	.uaword	0x10c9
	.byte	0x7
	.byte	0
	.uleb128 0x34
	.string	"PMux_au16DataBuf"
	.byte	0x1
	.byte	0x1e
	.uaword	0x10f2
	.byte	0x5
	.byte	0x3
	.uaword	PMux_au16DataBuf
	.uleb128 0x32
	.uaword	0x628
	.uaword	0x1136
	.uleb128 0x33
	.uaword	0x10c9
	.byte	0xe
	.byte	0
	.uleb128 0x34
	.string	"PMux_atInputMuxCfgSet"
	.byte	0x1
	.byte	0x23
	.uaword	0x1159
	.byte	0x5
	.byte	0x3
	.uaword	PMux_atInputMuxCfgSet
	.uleb128 0x17
	.uaword	0x1126
	.uleb128 0x32
	.uaword	0x795
	.uaword	0x116e
	.uleb128 0x33
	.uaword	0x10c9
	.byte	0x2
	.byte	0
	.uleb128 0x35
	.string	"PMux_atShiftRegCfgSet"
	.byte	0x1
	.uahalf	0x15a
	.uaword	0x1192
	.byte	0x5
	.byte	0x3
	.uaword	PMux_atShiftRegCfgSet
	.uleb128 0x17
	.uaword	0x115e
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5"
	.byte	0x4
	.byte	0xbd
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A"
	.byte	0x4
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.uaword	0x11f5
	.uleb128 0xb
	.uaword	0x1ee
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B"
	.byte	0x4
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.uaword	0x1227
	.uleb128 0xb
	.uaword	0x1ee
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C"
	.byte	0x4
	.byte	0x3c
	.byte	0x1
	.byte	0x1
	.uaword	0x1259
	.uleb128 0xb
	.uaword	0x1ee
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6"
	.byte	0x4
	.byte	0xbe
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7"
	.byte	0x4
	.byte	0xbf
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8"
	.byte	0x4
	.byte	0xc0
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9"
	.byte	0x4
	.byte	0xc1
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10"
	.byte	0x4
	.byte	0xc2
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11"
	.byte	0x4
	.byte	0xc3
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12"
	.byte	0x4
	.byte	0xc4
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2"
	.byte	0x4
	.byte	0xad
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3"
	.byte	0x4
	.byte	0xaf
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4"
	.byte	0x4
	.byte	0xae
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1"
	.byte	0x4
	.byte	0xab
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2"
	.byte	0x4
	.byte	0x41
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1"
	.byte	0x4
	.byte	0xac
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A"
	.byte	0x4
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.uaword	0x14ca
	.uleb128 0xb
	.uaword	0x1ee
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B"
	.byte	0x4
	.byte	0x7f
	.byte	0x1
	.byte	0x1
	.uaword	0x14fc
	.uleb128 0xb
	.uaword	0x1ee
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C"
	.byte	0x4
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0x152e
	.uleb128 0xb
	.uaword	0x1ee
	.byte	0
	.uleb128 0x36
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3"
	.byte	0x4
	.byte	0x5e
	.byte	0x1
	.uaword	0x1ee
	.byte	0x1
	.uleb128 0x37
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A"
	.byte	0x4
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.uaword	0x158c
	.uleb128 0xb
	.uaword	0x1ee
	.byte	0
	.uleb128 0x37
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B"
	.byte	0x4
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uaword	0x15be
	.uleb128 0xb
	.uaword	0x1ee
	.byte	0
	.uleb128 0x38
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C"
	.byte	0x4
	.byte	0x79
	.byte	0x1
	.byte	0x1
	.uleb128 0xb
	.uaword	0x1ee
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
	.uleb128 0x16
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
	.uleb128 0x7
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x9
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xa
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
	.uleb128 0x13
	.byte	0x1
	.uleb128 0x3
	.uleb128 0xe
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
	.uleb128 0x16
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x13
	.uleb128 0x35
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
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
	.uleb128 0x16
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
	.uleb128 0x17
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1a
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x1b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1c
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x1d
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2113
	.uleb128 0xa
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
	.uleb128 0x2113
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
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
	.uleb128 0x26
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x28
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x29
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
	.uleb128 0x2a
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x2b
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x2c
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
	.uleb128 0x2d
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
	.uleb128 0x2e
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
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x32
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x33
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x38
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
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL0
	.uaword	.LVL1
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL1
	.uaword	.LVL2
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL2
	.uaword	.LVL3
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL3
	.uaword	.LVL4
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL4
	.uaword	.LFE0
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL5
	.uaword	.LVL9-1
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL9-1
	.uaword	.LFE1
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL5
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL10
	.uaword	.LVL11
	.uahalf	0x5
	.byte	0x7f
	.sleb128 0
	.byte	0x31
	.byte	0x1a
	.byte	0x9f
	.uaword	.LVL11
	.uaword	.LVL12
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x32
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	.LVL12
	.uaword	.LVL13
	.uahalf	0x9
	.byte	0x7f
	.sleb128 0
	.byte	0x34
	.byte	0x1a
	.byte	0x48
	.byte	0x24
	.byte	0x30
	.byte	0x2e
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL6
	.uaword	.LVL9-1
	.uahalf	0x2
	.byte	0x8c
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL15
	.uaword	.LFE2
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST5:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST6:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x5
	.byte	0x74
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST7:
	.uaword	.LVL14
	.uaword	.LVL15
	.uahalf	0x1a
	.byte	0x74
	.sleb128 0
	.byte	0x3f
	.byte	0x1a
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x31
	.byte	0x24
	.byte	0x74
	.sleb128 0
	.byte	0x34
	.byte	0x25
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x4c
	.byte	0x1e
	.byte	0x3
	.uaword	PMux_atInputMuxCfgSet+8
	.byte	0x22
	.byte	0x6
	.byte	0x22
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL16
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL17
	.uaword	.LVL20-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 7
	.uaword	.LVL20-1
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL18
	.uaword	.LVL26
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL25
	.uaword	.LVL29-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 8
	.uaword	.LVL29-1
	.uaword	.LVL30
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL27
	.uaword	.LVL32
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL31
	.uaword	.LVL35-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 9
	.uaword	.LVL35-1
	.uaword	.LVL36
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL33
	.uaword	.LVL38
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST15:
	.uaword	.LVL37
	.uaword	.LVL41-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 10
	.uaword	.LVL41-1
	.uaword	.LVL42
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL39
	.uaword	.LVL44
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL43
	.uaword	.LVL47-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 11
	.uaword	.LVL47-1
	.uaword	.LVL48
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL45
	.uaword	.LVL50
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL49
	.uaword	.LVL53-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 12
	.uaword	.LVL53-1
	.uaword	.LVL54
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST20:
	.uaword	.LVL51
	.uaword	.LVL56
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST21:
	.uaword	.LVL55
	.uaword	.LVL59-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 13
	.uaword	.LVL59-1
	.uaword	.LVL60
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST22:
	.uaword	.LVL57
	.uaword	.LVL62
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL61
	.uaword	.LVL65-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 14
	.uaword	.LVL65-1
	.uaword	.LFE4
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL67
	.uaword	.LVL70-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 4
	.uaword	.LVL70-1
	.uaword	.LVL71
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL68
	.uaword	.LVL73
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL72
	.uaword	.LVL76-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 5
	.uaword	.LVL76-1
	.uaword	.LVL77
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL74
	.uaword	.LVL79
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL78
	.uaword	.LVL82-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 6
	.uaword	.LVL82-1
	.uaword	.LVL83
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL80
	.uaword	.LVL85
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL84
	.uaword	.LVL88-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL88-1
	.uaword	.LVL89
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL86
	.uaword	.LVL91
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL90
	.uaword	.LVL94-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 1
	.uaword	.LVL94-1
	.uaword	.LVL98
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL92
	.uaword	.LVL96
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL96
	.uaword	.LVL98
	.uahalf	0x1b
	.byte	0x78
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x30
	.byte	0x78
	.sleb128 1
	.byte	0x8
	.byte	0xff
	.byte	0x1a
	.byte	0x40
	.byte	0x4b
	.byte	0x24
	.byte	0x22
	.byte	0xc
	.uaword	0x80000008
	.byte	0x2d
	.byte	0x28
	.uahalf	0x1
	.byte	0x16
	.byte	0x13
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL95
	.uaword	.LVL101
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL95
	.uaword	.LVL100-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 3
	.uaword	.LVL100-1
	.uaword	.LVL105
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL97
	.uaword	.LVL107
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL106
	.uaword	.LVL111
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LVL106
	.uaword	.LVL110-1
	.uahalf	0x2
	.byte	0x8f
	.sleb128 2
	.uaword	.LVL110-1
	.uaword	.LFE5
	.uahalf	0x1
	.byte	0x5a
	.uaword	0
	.uaword	0
.LLST39:
	.uaword	.LFB6
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE6
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
	.uaword	0
	.uaword	0
.LLST40:
	.uaword	.LVL115
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x64
	.uaword	.LVL118
	.uaword	.LFE6
	.uahalf	0x1
	.byte	0x6d
	.uaword	0
	.uaword	0
.LLST41:
	.uaword	.LVL115
	.uaword	.LVL116
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL116
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST42:
	.uaword	.LVL115
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x55
	.uaword	.LVL118
	.uaword	.LFE6
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x55
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST43:
	.uaword	.LVL117
	.uaword	.LVL118
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST44:
	.uaword	.LVL118
	.uaword	.LVL119
	.uahalf	0x2
	.byte	0x37
	.byte	0x9f
	.uaword	.LVL119
	.uaword	.LVL123
	.uahalf	0x1
	.byte	0x58
	.uaword	.LVL123
	.uaword	.LVL124
	.uahalf	0x3
	.byte	0x78
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL124
	.uaword	.LVL125
	.uahalf	0x3
	.byte	0x78
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL128
	.uaword	.LVL130
	.uahalf	0x1
	.byte	0x58
	.uaword	0
	.uaword	0
.LLST45:
	.uaword	.LVL120
	.uaword	.LVL125
	.uahalf	0x3
	.byte	0x8
	.byte	0x8a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST46:
	.uaword	.LVL121
	.uaword	.LVL125
	.uahalf	0x3
	.byte	0x8
	.byte	0x8a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST47:
	.uaword	.LVL122
	.uaword	.LVL125
	.uahalf	0x3
	.byte	0x8
	.byte	0x8a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST48:
	.uaword	.LVL126
	.uaword	.LVL128
	.uahalf	0x3
	.byte	0x8
	.byte	0x8a
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LFE6
	.uahalf	0x3
	.byte	0x8
	.byte	0x8a
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST49:
	.uaword	.LVL127
	.uaword	.LVL128
	.uahalf	0x3
	.byte	0x8
	.byte	0x8a
	.byte	0x9f
	.uaword	.LVL130
	.uaword	.LFE6
	.uahalf	0x3
	.byte	0x8
	.byte	0x8a
	.byte	0x9f
	.uaword	0
	.uaword	0
.section .debug_aranges,"",@progbits
	.uaword	0x4c
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
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB28
	.uaword	.LBE28
	.uaword	.LBB36
	.uaword	.LBE36
	.uaword	0
	.uaword	0
	.uaword	.LBB31
	.uaword	.LBE31
	.uaword	.LBB37
	.uaword	.LBE37
	.uaword	.LBB44
	.uaword	.LBE44
	.uaword	.LBB46
	.uaword	.LBE46
	.uaword	0
	.uaword	0
	.uaword	.LBB38
	.uaword	.LBE38
	.uaword	.LBB45
	.uaword	.LBE45
	.uaword	.LBB47
	.uaword	.LBE47
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB56
	.uaword	.LBE56
	.uaword	0
	.uaword	0
	.uaword	.LBB48
	.uaword	.LBE48
	.uaword	.LBB55
	.uaword	.LBE55
	.uaword	.LBB57
	.uaword	.LBE57
	.uaword	.LBB64
	.uaword	.LBE64
	.uaword	.LBB66
	.uaword	.LBE66
	.uaword	0
	.uaword	0
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB65
	.uaword	.LBE65
	.uaword	.LBB67
	.uaword	.LBE67
	.uaword	.LBB74
	.uaword	.LBE74
	.uaword	.LBB76
	.uaword	.LBE76
	.uaword	0
	.uaword	0
	.uaword	.LBB68
	.uaword	.LBE68
	.uaword	.LBB75
	.uaword	.LBE75
	.uaword	.LBB77
	.uaword	.LBE77
	.uaword	.LBB84
	.uaword	.LBE84
	.uaword	.LBB86
	.uaword	.LBE86
	.uaword	0
	.uaword	0
	.uaword	.LBB78
	.uaword	.LBE78
	.uaword	.LBB85
	.uaword	.LBE85
	.uaword	.LBB87
	.uaword	.LBE87
	.uaword	.LBB92
	.uaword	.LBE92
	.uaword	.LBB94
	.uaword	.LBE94
	.uaword	0
	.uaword	0
	.uaword	.LBB88
	.uaword	.LBE88
	.uaword	.LBB93
	.uaword	.LBE93
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	0
	.uaword	0
	.uaword	.LBB110
	.uaword	.LBE110
	.uaword	.LBB120
	.uaword	.LBE120
	.uaword	.LBB122
	.uaword	.LBE122
	.uaword	0
	.uaword	0
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	.LBB121
	.uaword	.LBE121
	.uaword	.LBB123
	.uaword	.LBE123
	.uaword	.LBB130
	.uaword	.LBE130
	.uaword	.LBB132
	.uaword	.LBE132
	.uaword	0
	.uaword	0
	.uaword	.LBB124
	.uaword	.LBE124
	.uaword	.LBB131
	.uaword	.LBE131
	.uaword	.LBB133
	.uaword	.LBE133
	.uaword	.LBB140
	.uaword	.LBE140
	.uaword	.LBB142
	.uaword	.LBE142
	.uaword	0
	.uaword	0
	.uaword	.LBB134
	.uaword	.LBE134
	.uaword	.LBB141
	.uaword	.LBE141
	.uaword	.LBB143
	.uaword	.LBE143
	.uaword	.LBB150
	.uaword	.LBE150
	.uaword	.LBB152
	.uaword	.LBE152
	.uaword	0
	.uaword	0
	.uaword	.LBB144
	.uaword	.LBE144
	.uaword	.LBB151
	.uaword	.LBE151
	.uaword	.LBB153
	.uaword	.LBE153
	.uaword	.LBB159
	.uaword	.LBE159
	.uaword	.LBB161
	.uaword	.LBE161
	.uaword	0
	.uaword	0
	.uaword	.LBB154
	.uaword	.LBE154
	.uaword	.LBB160
	.uaword	.LBE160
	.uaword	.LBB162
	.uaword	.LBE162
	.uaword	.LBB166
	.uaword	.LBE166
	.uaword	0
	.uaword	0
	.uaword	.LBB163
	.uaword	.LBE163
	.uaword	.LBB167
	.uaword	.LBE167
	.uaword	0
	.uaword	0
	.uaword	.LBB168
	.uaword	.LBE168
	.uaword	.LBB171
	.uaword	.LBE171
	.uaword	0
	.uaword	0
	.uaword	.LBB176
	.uaword	.LBE176
	.uaword	.LBB179
	.uaword	.LBE179
	.uaword	0
	.uaword	0
	.uaword	.LBB180
	.uaword	.LBE180
	.uaword	.LBB183
	.uaword	.LBE183
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
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"PMux_InputMuxCfg"
.LASF1:
	.string	"PMux_ShiftRegCfg"
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_3,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_3,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_SER_3,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK_2,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK_2,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_SER_2,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_RCLK,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_SRCLK,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_SER,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_IO_MUX3,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_DIO_IN_M_IO_MUX2,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_IO_MUX1,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX12,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX11,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX10,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX9,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX8,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A,STT_FUNC,0
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX5,STT_FUNC,0
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
