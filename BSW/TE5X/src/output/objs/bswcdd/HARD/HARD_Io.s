	.file	"HARD_Io.c"
.section .text,"ax",@progbits
.Ltext0:
	.align 1
	.global	HARD_vidIoWriteDioOutput
	.type	HARD_vidIoWriteDioOutput, @function
HARD_vidIoWriteDioOutput:
.LFB20:
	.file 1 "bswcdd\\HARD\\HARD_Io.c"
	.loc 1 109 0
	.loc 1 111 0
	movh.a	%a15, hi:HARD_bDio_M_BACKUP_EN
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_BACKUP_EN
	call	IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN
.LVL0:
	.loc 1 113 0
	movh.a	%a15, hi:HARD_bDio_M_Q6_PTC2
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_Q6_PTC2
	call	IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2
.LVL1:
	.loc 1 116 0
	movh.a	%a15, hi:HARD_bDio_M_DX3_A
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_DX3_A
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A
.LVL2:
	.loc 1 117 0
	movh.a	%a15, hi:HARD_bDio_M_DX3_B
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_DX3_B
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B
.LVL3:
	.loc 1 118 0
	movh.a	%a15, hi:HARD_bDio_M_DX3_C
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_DX3_C
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C
.LVL4:
	.loc 1 123 0
	movh.a	%a15, hi:HARD_bDio_M_PW_DOWN
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_PW_DOWN
	call	IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN
.LVL5:
	.loc 1 124 0
	movh.a	%a15, hi:HARD_bDio_M_KM1_ZQ1
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_KM1_ZQ1
	call	IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1
.LVL6:
	.loc 1 125 0
	movh.a	%a15, hi:HARD_bDio_M_KM2_ZQ2
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_KM2_ZQ2
	call	IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2
.LVL7:
	.loc 1 126 0
	movh.a	%a15, hi:HARD_bDio_M_KM3_ZQ3
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_KM3_ZQ3
	call	IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3
.LVL8:
	.loc 1 127 0
	movh.a	%a15, hi:HARD_bDio_M_KM4_ZQ4
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_KM4_ZQ4
	call	IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4
.LVL9:
	.loc 1 134 0
	movh.a	%a15, hi:HARD_bDio_M_YC2_KC3Z_YC
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_YC2_KC3Z_YC
	call	IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC
.LVL10:
	.loc 1 135 0
	movh.a	%a15, hi:HARD_bDio_M_ISO_EN1
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_ISO_EN1
	call	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1
.LVL11:
	.loc 1 136 0
	movh.a	%a15, hi:HARD_bDio_M_ISO_EN2
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_ISO_EN2
	call	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2
.LVL12:
	.loc 1 137 0
	movh.a	%a15, hi:HARD_bDio_M_ISO_EN3
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_ISO_EN3
	call	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3
.LVL13:
	.loc 1 140 0
	movh.a	%a15, hi:HARD_bDio_M_KM20_DCJY1
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_KM20_DCJY1
	call	IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1
.LVL14:
	.loc 1 142 0
	movh.a	%a15, hi:HARD_bDio_M_KM21_DCJY2
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_KM21_DCJY2
	call	IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2
.LVL15:
	.loc 1 143 0
	movh.a	%a15, hi:HARD_bDio_M_KM22_DCJY3
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_KM22_DCJY3
	call	IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3
.LVL16:
	.loc 1 144 0
	movh.a	%a15, hi:HARD_bDio_M_KM23_DCJY4
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_KM23_DCJY4
	call	IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4
.LVL17:
	.loc 1 145 0
	movh.a	%a15, hi:HARD_bDio_M_YC5_SZ2_YC
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_YC5_SZ2_YC
	call	IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC
.LVL18:
	.loc 1 152 0
	movh.a	%a15, hi:HARD_bDio_MCU_ASC_STATE
	ld.bu	%d4, [%a15] lo:HARD_bDio_MCU_ASC_STATE
	call	IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE
.LVL19:
	.loc 1 153 0
	movh.a	%a15, hi:HARD_bDio_M_YC3_KC4Z_YC
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_YC3_KC4Z_YC
	call	IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC
.LVL20:
	.loc 1 155 0
	movh.a	%a15, hi:HARD_bDio_M_YC7_ZXFZ_YC
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_YC7_ZXFZ_YC
	call	IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC
.LVL21:
	.loc 1 156 0
	movh.a	%a15, hi:HARD_bDio_M_YC1_ZQ_YC
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_YC1_ZQ_YC
	call	IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC
.LVL22:
	.loc 1 157 0
	movh.a	%a15, hi:HARD_bDio_M_Q1_DCJR1
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_Q1_DCJR1
	call	IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1
.LVL23:
	.loc 1 158 0
	movh.a	%a15, hi:HARD_bDio_M_Q2_DCJR2
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_Q2_DCJR2
	call	IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2
.LVL24:
	.loc 1 159 0
	movh.a	%a15, hi:HARD_bDio_M_Q3_DCJR3
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_Q3_DCJR3
	call	IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3
.LVL25:
	.loc 1 160 0
	movh.a	%a15, hi:HARD_bDio_M_Q4_DCJR4
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_Q4_DCJR4
	call	IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4
.LVL26:
	.loc 1 161 0
	movh.a	%a15, hi:HARD_bDio_M_ENA_KM
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_ENA_KM
	call	IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM
.LVL27:
	.loc 1 163 0
	movh.a	%a15, hi:HARD_bDio_M_Q5_PTC1
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_Q5_PTC1
	call	IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1
.LVL28:
	.loc 1 164 0
	movh.a	%a15, hi:HARD_bDio_M_ACM_ENA_PWM
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_ACM_ENA_PWM
	call	IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM
.LVL29:
	.loc 1 167 0
	movh.a	%a15, hi:HARD_bDio_M_YC6_XGLFZ_YC
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_YC6_XGLFZ_YC
	call	IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC
.LVL30:
	.loc 1 168 0
	movh.a	%a15, hi:HARD_bDio_M_DX1_A
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_DX1_A
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A
.LVL31:
	.loc 1 169 0
	movh.a	%a15, hi:HARD_bDio_M_DX1_B
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_DX1_B
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B
.LVL32:
	.loc 1 170 0
	movh.a	%a15, hi:HARD_bDio_M_EPS_ENA_PWM
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_EPS_ENA_PWM
	call	IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM
.LVL33:
	.loc 1 172 0
	movh.a	%a15, hi:HARD_bDio_M_DX2_A
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_DX2_A
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A
.LVL34:
	.loc 1 173 0
	movh.a	%a15, hi:HARD_bDio_M_DX2_B
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_DX2_B
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B
.LVL35:
	.loc 1 174 0
	movh.a	%a15, hi:HARD_bDio_M_DX2_C
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_DX2_C
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C
.LVL36:
	.loc 1 176 0
	movh.a	%a15, hi:HARD_bDio_M_YC4_SZ1_YC
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_YC4_SZ1_YC
	call	IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC
.LVL37:
	.loc 1 178 0
	movh.a	%a15, hi:HARD_bDio_MCU_STATE_LED
	ld.bu	%d4, [%a15] lo:HARD_bDio_MCU_STATE_LED
	call	IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED
.LVL38:
	.loc 1 179 0
	movh.a	%a15, hi:HARD_bDio_M_DX1_C
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_DX1_C
	call	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C
.LVL39:
	.loc 1 180 0
	movh.a	%a15, hi:HARD_bDio_M_SER
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_SER
	call	IOHAL_vidWrite_CH_DIO_OUT_M_SER
.LVL40:
	.loc 1 181 0
	movh.a	%a15, hi:HARD_bDio_M_DO1
	ld.bu	%d4, [%a15] lo:HARD_bDio_M_DO1
	j	IOHAL_vidWrite_CH_DIO_OUT_M_DO1
.LVL41:
.LFE20:
	.size	HARD_vidIoWriteDioOutput, .-HARD_vidIoWriteDioOutput
	.align 1
	.global	HARD_vidIoReadDioInput
	.type	HARD_vidIoReadDioInput, @function
HARD_vidIoReadDioInput:
.LFB21:
	.loc 1 198 0
	.loc 1 200 0
	call	IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2
.LVL42:
	movh.a	%a15, hi:HARD_bDio_M_AN_ENABLE_ASC2
	st.b	[%a15] lo:HARD_bDio_M_AN_ENABLE_ASC2, %d2
	.loc 1 202 0
	call	IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1
.LVL43:
	movh.a	%a15, hi:HARD_bDio_M_AN_ENABLE_ASC1
	st.b	[%a15] lo:HARD_bDio_M_AN_ENABLE_ASC1, %d2
	.loc 1 209 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2
.LVL44:
	movh.a	%a15, hi:HARD_bDio_M_FLT_EXCITATION_2
	st.b	[%a15] lo:HARD_bDio_M_FLT_EXCITATION_2, %d2
	.loc 1 210 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1
.LVL45:
	movh.a	%a15, hi:HARD_bDio_M_FLT_EXCITATION_1
	st.b	[%a15] lo:HARD_bDio_M_FLT_EXCITATION_1, %d2
	.loc 1 217 0
	call	IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI
.LVL46:
	movh.a	%a15, hi:HARD_bDio_M_SUPPLY_WDI
	st.b	[%a15] lo:HARD_bDio_M_SUPPLY_WDI, %d2
	.loc 1 220 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
.LVL47:
	movh.a	%a15, hi:HARD_bDio_M_FAULT_ACM_HS_N
	st.b	[%a15] lo:HARD_bDio_M_FAULT_ACM_HS_N, %d2
	.loc 1 221 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N
.LVL48:
	movh.a	%a15, hi:HARD_bDio_M_FAULT_EPS_HS_N
	st.b	[%a15] lo:HARD_bDio_M_FAULT_EPS_HS_N, %d2
	.loc 1 223 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1
.LVL49:
	movh.a	%a15, hi:HARD_bDio_M_FAULT_DRV_HS_N_1
	st.b	[%a15] lo:HARD_bDio_M_FAULT_DRV_HS_N_1, %d2
	.loc 1 225 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1
.LVL50:
	movh.a	%a15, hi:HARD_bDio_M_FAULT_DRV_LS_N_1
	st.b	[%a15] lo:HARD_bDio_M_FAULT_DRV_LS_N_1, %d2
	.loc 1 226 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2
.LVL51:
	movh.a	%a15, hi:HARD_bDio_M_FAULT_DRV_LS_N_2
	st.b	[%a15] lo:HARD_bDio_M_FAULT_DRV_LS_N_2, %d2
	.loc 1 227 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2
.LVL52:
	movh.a	%a15, hi:HARD_bDio_M_FAULT_DRV_HS_N_2
	st.b	[%a15] lo:HARD_bDio_M_FAULT_DRV_HS_N_2, %d2
	.loc 1 231 0
	call	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON
.LVL53:
	movh.a	%a15, hi:HARD_bDio_M_KEY_ON
	st.b	[%a15] lo:HARD_bDio_M_KEY_ON, %d2
	.loc 1 233 0
	call	IOHAL_u16Read_CH_DIO_IN_M_CHG_ON
.LVL54:
	movh.a	%a15, hi:HARD_bDio_M_CHG_ON
	st.b	[%a15] lo:HARD_bDio_M_CHG_ON, %d2
	ret
.LFE21:
	.size	HARD_vidIoReadDioInput, .-HARD_vidIoReadDioInput
	.align 1
	.global	HARD_vidIoReadAnaInput
	.type	HARD_vidIoReadAnaInput, @function
HARD_vidIoReadAnaInput:
.LFB22:
	.loc 1 248 0
	.loc 1 249 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2
.LVL55:
	movh.a	%a15, hi:HARD_CH_DIO_IN_M_HW_OCP_W_2
	st.h	[%a15] lo:HARD_CH_DIO_IN_M_HW_OCP_W_2, %d2
	.loc 1 250 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2
.LVL56:
	movh.a	%a15, hi:HARD_CH_DIO_IN_M_HW_OCP_V_2
	st.h	[%a15] lo:HARD_CH_DIO_IN_M_HW_OCP_V_2, %d2
	.loc 1 251 0
	call	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2
.LVL57:
	movh.a	%a15, hi:HARD_CH_DIO_IN_M_HW_OCP_U_2
	st.h	[%a15] lo:HARD_CH_DIO_IN_M_HW_OCP_U_2, %d2
	.loc 1 253 0
	call	IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV
.LVL58:
	movh.a	%a15, hi:HARD_u16Adc_AN_VOL_DCLINK_DRV
	st.h	[%a15] lo:HARD_u16Adc_AN_VOL_DCLINK_DRV, %d2
	.loc 1 255 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7
.LVL59:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_MUX7
	st.h	[%a15] lo:HARD_u16Adc_M_AN_MUX7, %d2
	.loc 1 257 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6
.LVL60:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_MUX6
	st.h	[%a15] lo:HARD_u16Adc_M_AN_MUX6, %d2
	.loc 1 259 0
	call	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W
.LVL61:
	movh.a	%a15, hi:HARD_u16Adc_M_EPS_AN_CURRENT_W
	st.h	[%a15] lo:HARD_u16Adc_M_EPS_AN_CURRENT_W, %d2
	.loc 1 261 0
	call	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W
.LVL62:
	movh.a	%a15, hi:HARD_u16Adc_M_ACM_AN_CURRENT_W
	st.h	[%a15] lo:HARD_u16Adc_M_ACM_AN_CURRENT_W, %d2
	.loc 1 263 0
	call	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V
.LVL63:
	movh.a	%a15, hi:HARD_u16Adc_M_EPS_AN_CURRENT_V
	st.h	[%a15] lo:HARD_u16Adc_M_EPS_AN_CURRENT_V, %d2
	.loc 1 265 0
	call	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U
.LVL64:
	movh.a	%a15, hi:HARD_u16Adc_M_EPS_AN_CURRENT_U
	st.h	[%a15] lo:HARD_u16Adc_M_EPS_AN_CURRENT_U, %d2
	.loc 1 267 0
	call	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V
.LVL65:
	movh.a	%a15, hi:HARD_u16Adc_M_ACM_AN_CURRENT_V
	st.h	[%a15] lo:HARD_u16Adc_M_ACM_AN_CURRENT_V, %d2
	.loc 1 269 0
	call	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U
.LVL66:
	movh.a	%a15, hi:HARD_u16Adc_M_ACM_AN_CURRENT_U
	st.h	[%a15] lo:HARD_u16Adc_M_ACM_AN_CURRENT_U, %d2
	.loc 1 271 0
	call	IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC
.LVL67:
	movh.a	%a15, hi:HARD_u16Adc_AN_15V_RDC
	st.h	[%a15] lo:HARD_u16Adc_AN_15V_RDC, %d2
	.loc 1 273 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1
.LVL68:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_DIAG_SIN_L_1
	st.h	[%a15] lo:HARD_u16Adc_M_AN_DIAG_SIN_L_1, %d2
	.loc 1 275 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2
.LVL69:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_DIAG_SIN_L_2
	st.h	[%a15] lo:HARD_u16Adc_M_AN_DIAG_SIN_L_2, %d2
	.loc 1 277 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2
.LVL70:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_DIAG_SIN_H_2
	st.h	[%a15] lo:HARD_u16Adc_M_AN_DIAG_SIN_H_2, %d2
	.loc 1 279 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1
.LVL71:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_DIAG_SIN_H_1
	st.h	[%a15] lo:HARD_u16Adc_M_AN_DIAG_SIN_H_1, %d2
	.loc 1 281 0
	call	IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S
.LVL72:
	movh.a	%a15, hi:HARD_u16Adc_AN_P5V_AD2S
	st.h	[%a15] lo:HARD_u16Adc_AN_P5V_AD2S, %d2
	.loc 1 283 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1
.LVL73:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_DIAG_COS_L_1
	st.h	[%a15] lo:HARD_u16Adc_M_AN_DIAG_COS_L_1, %d2
	.loc 1 285 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1
.LVL74:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_DIAG_COS_H_1
	st.h	[%a15] lo:HARD_u16Adc_M_AN_DIAG_COS_H_1, %d2
	.loc 1 287 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3
.LVL75:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_MUX3
	st.h	[%a15] lo:HARD_u16Adc_M_AN_MUX3, %d2
	.loc 1 289 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4
.LVL76:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_MUX4
	st.h	[%a15] lo:HARD_u16Adc_M_AN_MUX4, %d2
	.loc 1 291 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2
.LVL77:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_MUX2
	st.h	[%a15] lo:HARD_u16Adc_M_AN_MUX2, %d2
	.loc 1 293 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1
.LVL78:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_MUX1
	st.h	[%a15] lo:HARD_u16Adc_M_AN_MUX1, %d2
	.loc 1 295 0
	call	IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF
.LVL79:
	movh.a	%a15, hi:HARD_u16Adc_AN_P5V_REF
	st.h	[%a15] lo:HARD_u16Adc_AN_P5V_REF, %d2
	.loc 1 297 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2
.LVL80:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_CURRENT_W_2
	st.h	[%a15] lo:HARD_u16Adc_M_AN_CURRENT_W_2, %d2
	.loc 1 299 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2
.LVL81:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_CURRENT_V_2
	st.h	[%a15] lo:HARD_u16Adc_M_AN_CURRENT_V_2, %d2
	.loc 1 301 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2
.LVL82:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_CURRENT_U_2
	st.h	[%a15] lo:HARD_u16Adc_M_AN_CURRENT_U_2, %d2
	.loc 1 303 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2
.LVL83:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_DIAG_COS_H_2
	st.h	[%a15] lo:HARD_u16Adc_M_AN_DIAG_COS_H_2, %d2
	.loc 1 305 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2
.LVL84:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_DIAG_COS_L_2
	st.h	[%a15] lo:HARD_u16Adc_M_AN_DIAG_COS_L_2, %d2
	.loc 1 307 0
	call	IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V
.LVL85:
	movh.a	%a15, hi:HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_V
	st.h	[%a15] lo:HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_V, %d2
	.loc 1 309 0
	call	IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W
.LVL86:
	movh.a	%a15, hi:HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_W
	st.h	[%a15] lo:HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_W, %d2
	.loc 1 311 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2
.LVL87:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_MOT_SIN_2
	st.h	[%a15] lo:HARD_u16Adc_M_AN_MOT_SIN_2, %d2
	.loc 1 313 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2
.LVL88:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_MOT_COS_2
	st.h	[%a15] lo:HARD_u16Adc_M_AN_MOT_COS_2, %d2
	.loc 1 315 0
	call	IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V
.LVL89:
	movh.a	%a15, hi:HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_V
	st.h	[%a15] lo:HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_V, %d2
	.loc 1 317 0
	call	IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W
.LVL90:
	movh.a	%a15, hi:HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_W
	st.h	[%a15] lo:HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_W, %d2
	.loc 1 319 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4
.LVL91:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_DC_LINK_PACK4
	st.h	[%a15] lo:HARD_u16Adc_M_AN_DC_LINK_PACK4, %d2
	.loc 1 321 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1
.LVL92:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_CURRENT_W_1
	st.h	[%a15] lo:HARD_u16Adc_M_AN_CURRENT_W_1, %d2
	.loc 1 323 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1
.LVL93:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_CURRENT_V_1
	st.h	[%a15] lo:HARD_u16Adc_M_AN_CURRENT_V_1, %d2
	.loc 1 327 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1
.LVL94:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_CURRENT_U_1
	st.h	[%a15] lo:HARD_u16Adc_M_AN_CURRENT_U_1, %d2
	.loc 1 337 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F
.LVL95:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_KM8_FB_KC2F
	st.h	[%a15] lo:HARD_u16Adc_M_AN_KM8_FB_KC2F, %d2
	.loc 1 339 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F
.LVL96:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_KM6_FB_KC1F
	st.h	[%a15] lo:HARD_u16Adc_M_AN_KM6_FB_KC1F, %d2
	.loc 1 341 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1
.LVL97:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_MOT_SIN_1
	st.h	[%a15] lo:HARD_u16Adc_M_AN_MOT_SIN_1, %d2
	.loc 1 343 0
	call	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1
.LVL98:
	movh.a	%a15, hi:HARD_u16Adc_M_AN_MOT_COS_1
	st.h	[%a15] lo:HARD_u16Adc_M_AN_MOT_COS_1, %d2
	ret
.LFE22:
	.size	HARD_vidIoReadAnaInput, .-HARD_vidIoReadAnaInput
	.align 1
	.global	HARD_vidIoInit
	.type	HARD_vidIoInit, @function
HARD_vidIoInit:
.LFB19:
	.loc 1 76 0
	.loc 1 77 0
	call	HARD_vidIoReadAnaInput
.LVL99:
.LBB6:
.LBB7:
	.loc 1 200 0
	call	IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2
.LVL100:
	movh.a	%a15, hi:HARD_bDio_M_AN_ENABLE_ASC2
	st.b	[%a15] lo:HARD_bDio_M_AN_ENABLE_ASC2, %d2
	.loc 1 202 0
	call	IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1
.LVL101:
	movh.a	%a15, hi:HARD_bDio_M_AN_ENABLE_ASC1
	st.b	[%a15] lo:HARD_bDio_M_AN_ENABLE_ASC1, %d2
	.loc 1 209 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2
.LVL102:
	movh.a	%a15, hi:HARD_bDio_M_FLT_EXCITATION_2
	st.b	[%a15] lo:HARD_bDio_M_FLT_EXCITATION_2, %d2
	.loc 1 210 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1
.LVL103:
	movh.a	%a15, hi:HARD_bDio_M_FLT_EXCITATION_1
	st.b	[%a15] lo:HARD_bDio_M_FLT_EXCITATION_1, %d2
	.loc 1 217 0
	call	IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI
.LVL104:
	movh.a	%a15, hi:HARD_bDio_M_SUPPLY_WDI
	st.b	[%a15] lo:HARD_bDio_M_SUPPLY_WDI, %d2
	.loc 1 220 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N
.LVL105:
	movh.a	%a15, hi:HARD_bDio_M_FAULT_ACM_HS_N
	st.b	[%a15] lo:HARD_bDio_M_FAULT_ACM_HS_N, %d2
	.loc 1 221 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N
.LVL106:
	movh.a	%a15, hi:HARD_bDio_M_FAULT_EPS_HS_N
	st.b	[%a15] lo:HARD_bDio_M_FAULT_EPS_HS_N, %d2
	.loc 1 223 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1
.LVL107:
	movh.a	%a15, hi:HARD_bDio_M_FAULT_DRV_HS_N_1
	st.b	[%a15] lo:HARD_bDio_M_FAULT_DRV_HS_N_1, %d2
	.loc 1 225 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1
.LVL108:
	movh.a	%a15, hi:HARD_bDio_M_FAULT_DRV_LS_N_1
	st.b	[%a15] lo:HARD_bDio_M_FAULT_DRV_LS_N_1, %d2
	.loc 1 226 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2
.LVL109:
	movh.a	%a15, hi:HARD_bDio_M_FAULT_DRV_LS_N_2
	st.b	[%a15] lo:HARD_bDio_M_FAULT_DRV_LS_N_2, %d2
	.loc 1 227 0
	call	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2
.LVL110:
	movh.a	%a15, hi:HARD_bDio_M_FAULT_DRV_HS_N_2
	st.b	[%a15] lo:HARD_bDio_M_FAULT_DRV_HS_N_2, %d2
	.loc 1 231 0
	call	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON
.LVL111:
	movh.a	%a15, hi:HARD_bDio_M_KEY_ON
	st.b	[%a15] lo:HARD_bDio_M_KEY_ON, %d2
	.loc 1 233 0
	call	IOHAL_u16Read_CH_DIO_IN_M_CHG_ON
.LVL112:
	movh.a	%a15, hi:HARD_bDio_M_CHG_ON
.LBE7:
.LBE6:
	.loc 1 80 0
	mov	%d4, 5
.LBB9:
.LBB8:
	.loc 1 233 0
	st.b	[%a15] lo:HARD_bDio_M_CHG_ON, %d2
.LBE8:
.LBE9:
	.loc 1 80 0
	call	Icu_17_TimerIp_StartSignalMeasurement
.LVL113:
	.loc 1 81 0
	mov	%d4, 6
	call	Icu_17_TimerIp_StartSignalMeasurement
.LVL114:
	.loc 1 82 0
	mov	%d4, 7
	call	Icu_17_TimerIp_StartSignalMeasurement
.LVL115:
	.loc 1 83 0
	mov	%d4, 8
	call	Icu_17_TimerIp_StartSignalMeasurement
.LVL116:
	.loc 1 84 0
	mov	%d4, 9
	call	Icu_17_TimerIp_StartSignalMeasurement
.LVL117:
	.loc 1 85 0
	mov	%d4, 10
	call	Icu_17_TimerIp_StartSignalMeasurement
.LVL118:
	.loc 1 86 0
	mov	%d4, 11
	call	Icu_17_TimerIp_StartSignalMeasurement
.LVL119:
	.loc 1 87 0
	mov	%d4, 12
	call	Icu_17_TimerIp_StartSignalMeasurement
.LVL120:
	.loc 1 89 0
	mov	%d4, 13
	call	Icu_17_TimerIp_StartSignalMeasurement
.LVL121:
	.loc 1 90 0
	mov	%d4, 14
	call	Icu_17_TimerIp_StartSignalMeasurement
.LVL122:
	.loc 1 91 0
	mov	%d4, 15
	call	Icu_17_TimerIp_StartSignalMeasurement
.LVL123:
	.loc 1 92 0
	mov	%d4, 16
	call	Icu_17_TimerIp_StartSignalMeasurement
.LVL124:
	.loc 1 94 0
	call	Icu_vidGetDutyCycle
.LVL125:
.LBB10:
.LBB11:
	.loc 1 348 0
	call	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2
.LVL126:
	movh.a	%a15, hi:HARD_f32Pwm_M_TEMP_MEAS_MOD_U_2
	st.w	[%a15] lo:HARD_f32Pwm_M_TEMP_MEAS_MOD_U_2, %d2
	.loc 1 349 0
	call	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2
.LVL127:
	movh.a	%a15, hi:HARD_f32Pwm_M_TEMP_MEAS_MOD_V_2
	st.w	[%a15] lo:HARD_f32Pwm_M_TEMP_MEAS_MOD_V_2, %d2
	.loc 1 350 0
	call	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2
.LVL128:
	movh.a	%a15, hi:HARD_f32Pwm_M_TEMP_MEAS_MOD_W_2
	st.w	[%a15] lo:HARD_f32Pwm_M_TEMP_MEAS_MOD_W_2, %d2
	.loc 1 351 0
	call	IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS
.LVL129:
	movh.a	%a15, hi:HARD_f32Pwm_AN_VOL_DCLINK_EPS
	st.w	[%a15] lo:HARD_f32Pwm_AN_VOL_DCLINK_EPS, %d2
	.loc 1 352 0
	call	IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM
.LVL130:
	movh.a	%a15, hi:HARD_f32Pwm_AN_VOL_DCLINK_ACM
	st.w	[%a15] lo:HARD_f32Pwm_AN_VOL_DCLINK_ACM, %d2
	.loc 1 353 0
	call	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1
.LVL131:
	movh.a	%a15, hi:HARD_f32Pwm_M_TEMP_MEAS_MOD_W_1
	st.w	[%a15] lo:HARD_f32Pwm_M_TEMP_MEAS_MOD_W_1, %d2
	.loc 1 354 0
	call	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1
.LVL132:
	movh.a	%a15, hi:HARD_f32Pwm_M_TEMP_MEAS_MOD_V_1
	st.w	[%a15] lo:HARD_f32Pwm_M_TEMP_MEAS_MOD_V_1, %d2
	.loc 1 355 0
	call	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1
.LVL133:
	movh.a	%a15, hi:HARD_f32Pwm_M_TEMP_MEAS_MOD_U_1
	st.w	[%a15] lo:HARD_f32Pwm_M_TEMP_MEAS_MOD_U_1, %d2
	ret
.LBE11:
.LBE10:
.LFE19:
	.size	HARD_vidIoInit, .-HARD_vidIoInit
	.align 1
	.global	HARD_vidIoReadPwmInput
	.type	HARD_vidIoReadPwmInput, @function
HARD_vidIoReadPwmInput:
.LFB23:
	.loc 1 347 0
	.loc 1 348 0
	call	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2
.LVL134:
	movh.a	%a15, hi:HARD_f32Pwm_M_TEMP_MEAS_MOD_U_2
	st.w	[%a15] lo:HARD_f32Pwm_M_TEMP_MEAS_MOD_U_2, %d2
	.loc 1 349 0
	call	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2
.LVL135:
	movh.a	%a15, hi:HARD_f32Pwm_M_TEMP_MEAS_MOD_V_2
	st.w	[%a15] lo:HARD_f32Pwm_M_TEMP_MEAS_MOD_V_2, %d2
	.loc 1 350 0
	call	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2
.LVL136:
	movh.a	%a15, hi:HARD_f32Pwm_M_TEMP_MEAS_MOD_W_2
	st.w	[%a15] lo:HARD_f32Pwm_M_TEMP_MEAS_MOD_W_2, %d2
	.loc 1 351 0
	call	IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS
.LVL137:
	movh.a	%a15, hi:HARD_f32Pwm_AN_VOL_DCLINK_EPS
	st.w	[%a15] lo:HARD_f32Pwm_AN_VOL_DCLINK_EPS, %d2
	.loc 1 352 0
	call	IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM
.LVL138:
	movh.a	%a15, hi:HARD_f32Pwm_AN_VOL_DCLINK_ACM
	st.w	[%a15] lo:HARD_f32Pwm_AN_VOL_DCLINK_ACM, %d2
	.loc 1 353 0
	call	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1
.LVL139:
	movh.a	%a15, hi:HARD_f32Pwm_M_TEMP_MEAS_MOD_W_1
	st.w	[%a15] lo:HARD_f32Pwm_M_TEMP_MEAS_MOD_W_1, %d2
	.loc 1 354 0
	call	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1
.LVL140:
	movh.a	%a15, hi:HARD_f32Pwm_M_TEMP_MEAS_MOD_V_1
	st.w	[%a15] lo:HARD_f32Pwm_M_TEMP_MEAS_MOD_V_1, %d2
	.loc 1 355 0
	call	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1
.LVL141:
	movh.a	%a15, hi:HARD_f32Pwm_M_TEMP_MEAS_MOD_U_1
	st.w	[%a15] lo:HARD_f32Pwm_M_TEMP_MEAS_MOD_U_1, %d2
	ret
.LFE23:
	.size	HARD_vidIoReadPwmInput, .-HARD_vidIoReadPwmInput
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
	.uaword	.LFB20
	.uaword	.LFE20-.LFB20
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB21
	.uaword	.LFE21-.LFB21
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB22
	.uaword	.LFE22-.LFB22
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB19
	.uaword	.LFE19-.LFB19
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
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 3 ".\\output\\inc/..\\..\\Targets\\TC38xx\\MCAL\\MCAL_Modules\\Icu_17_TimerIp\\inc\\Icu_17_TimerIp.h"
	.file 4 "bswcdd\\HARD\\HARD.h"
	.file 5 ".\\output\\inc/..\\..\\bswcdd\\IOHAL\\IOHAL_Cfg_I.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x2da5
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\HARD\\HARD_Io.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ltext0
	.uaword	.Letext0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x2
	.byte	0x51
	.uaword	0x1bc
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
	.uaword	0x1e8
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
	.uleb128 0x3
	.string	"float32"
	.byte	0x2
	.byte	0x75
	.uaword	0x24f
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
	.uaword	0x1bc
	.uleb128 0x2
	.byte	0x4
	.byte	0x5
	.string	"long int"
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"long unsigned int"
	.uleb128 0x4
	.string	"Icu_17_TimerIp_ChannelType"
	.byte	0x3
	.uahalf	0x12a
	.uaword	0x1af
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x5
	.byte	0x1
	.string	"HARD_vidIoWriteDioOutput"
	.byte	0x1
	.byte	0x6c
	.byte	0x1
	.uaword	.LFB20
	.uaword	.LFE20
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x46b
	.uleb128 0x6
	.uaword	.LVL0
	.uaword	0x17da
	.uleb128 0x6
	.uaword	.LVL1
	.uaword	0x1810
	.uleb128 0x6
	.uaword	.LVL2
	.uaword	0x1844
	.uleb128 0x6
	.uaword	.LVL3
	.uaword	0x1876
	.uleb128 0x6
	.uaword	.LVL4
	.uaword	0x18a8
	.uleb128 0x6
	.uaword	.LVL5
	.uaword	0x18da
	.uleb128 0x6
	.uaword	.LVL6
	.uaword	0x190e
	.uleb128 0x6
	.uaword	.LVL7
	.uaword	0x1942
	.uleb128 0x6
	.uaword	.LVL8
	.uaword	0x1976
	.uleb128 0x6
	.uaword	.LVL9
	.uaword	0x19aa
	.uleb128 0x6
	.uaword	.LVL10
	.uaword	0x19de
	.uleb128 0x6
	.uaword	.LVL11
	.uaword	0x1a16
	.uleb128 0x6
	.uaword	.LVL12
	.uaword	0x1a4a
	.uleb128 0x6
	.uaword	.LVL13
	.uaword	0x1a7e
	.uleb128 0x6
	.uaword	.LVL14
	.uaword	0x1ab2
	.uleb128 0x6
	.uaword	.LVL15
	.uaword	0x1ae9
	.uleb128 0x6
	.uaword	.LVL16
	.uaword	0x1b20
	.uleb128 0x6
	.uaword	.LVL17
	.uaword	0x1b57
	.uleb128 0x6
	.uaword	.LVL18
	.uaword	0x1b8e
	.uleb128 0x6
	.uaword	.LVL19
	.uaword	0x1bc5
	.uleb128 0x6
	.uaword	.LVL20
	.uaword	0x1bfd
	.uleb128 0x6
	.uaword	.LVL21
	.uaword	0x1c35
	.uleb128 0x6
	.uaword	.LVL22
	.uaword	0x1c6d
	.uleb128 0x6
	.uaword	.LVL23
	.uaword	0x1ca3
	.uleb128 0x6
	.uaword	.LVL24
	.uaword	0x1cd8
	.uleb128 0x6
	.uaword	.LVL25
	.uaword	0x1d0d
	.uleb128 0x6
	.uaword	.LVL26
	.uaword	0x1d42
	.uleb128 0x6
	.uaword	.LVL27
	.uaword	0x1d77
	.uleb128 0x6
	.uaword	.LVL28
	.uaword	0x1daa
	.uleb128 0x6
	.uaword	.LVL29
	.uaword	0x1dde
	.uleb128 0x6
	.uaword	.LVL30
	.uaword	0x1e16
	.uleb128 0x6
	.uaword	.LVL31
	.uaword	0x1e4f
	.uleb128 0x6
	.uaword	.LVL32
	.uaword	0x1e81
	.uleb128 0x6
	.uaword	.LVL33
	.uaword	0x1eb3
	.uleb128 0x6
	.uaword	.LVL34
	.uaword	0x1eeb
	.uleb128 0x6
	.uaword	.LVL35
	.uaword	0x1f1d
	.uleb128 0x6
	.uaword	.LVL36
	.uaword	0x1f4f
	.uleb128 0x6
	.uaword	.LVL37
	.uaword	0x1f81
	.uleb128 0x6
	.uaword	.LVL38
	.uaword	0x1fb8
	.uleb128 0x6
	.uaword	.LVL39
	.uaword	0x1ff0
	.uleb128 0x6
	.uaword	.LVL40
	.uaword	0x2022
	.uleb128 0x7
	.uaword	.LVL41
	.byte	0x1
	.uaword	0x2052
	.byte	0
	.uleb128 0x8
	.byte	0x1
	.string	"HARD_vidIoReadDioInput"
	.byte	0x1
	.byte	0xc5
	.byte	0x1
	.byte	0x1
	.uleb128 0x9
	.uaword	0x46b
	.uaword	.LFB21
	.uaword	.LFE21
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x513
	.uleb128 0x6
	.uaword	.LVL42
	.uaword	0x2082
	.uleb128 0x6
	.uaword	.LVL43
	.uaword	0x20b5
	.uleb128 0x6
	.uaword	.LVL44
	.uaword	0x20e8
	.uleb128 0x6
	.uaword	.LVL45
	.uaword	0x211d
	.uleb128 0x6
	.uaword	.LVL46
	.uaword	0x2152
	.uleb128 0x6
	.uaword	.LVL47
	.uaword	0x2181
	.uleb128 0x6
	.uaword	.LVL48
	.uaword	0x21b4
	.uleb128 0x6
	.uaword	.LVL49
	.uaword	0x21e7
	.uleb128 0x6
	.uaword	.LVL50
	.uaword	0x221c
	.uleb128 0x6
	.uaword	.LVL51
	.uaword	0x2251
	.uleb128 0x6
	.uaword	.LVL52
	.uaword	0x2286
	.uleb128 0x6
	.uaword	.LVL53
	.uaword	0x22bb
	.uleb128 0x6
	.uaword	.LVL54
	.uaword	0x22e6
	.byte	0
	.uleb128 0x5
	.byte	0x1
	.string	"HARD_vidIoReadAnaInput"
	.byte	0x1
	.byte	0xf7
	.byte	0x1
	.uaword	.LFB22
	.uaword	.LFE22
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x6cc
	.uleb128 0x6
	.uaword	.LVL55
	.uaword	0x2311
	.uleb128 0x6
	.uaword	.LVL56
	.uaword	0x2340
	.uleb128 0x6
	.uaword	.LVL57
	.uaword	0x236f
	.uleb128 0x6
	.uaword	.LVL58
	.uaword	0x239e
	.uleb128 0x6
	.uaword	.LVL59
	.uaword	0x23d2
	.uleb128 0x6
	.uaword	.LVL60
	.uaword	0x23fe
	.uleb128 0x6
	.uaword	.LVL61
	.uaword	0x242a
	.uleb128 0x6
	.uaword	.LVL62
	.uaword	0x245f
	.uleb128 0x6
	.uaword	.LVL63
	.uaword	0x2494
	.uleb128 0x6
	.uaword	.LVL64
	.uaword	0x24c9
	.uleb128 0x6
	.uaword	.LVL65
	.uaword	0x24fe
	.uleb128 0x6
	.uaword	.LVL66
	.uaword	0x2533
	.uleb128 0x6
	.uaword	.LVL67
	.uaword	0x2568
	.uleb128 0x6
	.uaword	.LVL68
	.uaword	0x2595
	.uleb128 0x6
	.uaword	.LVL69
	.uaword	0x25c9
	.uleb128 0x6
	.uaword	.LVL70
	.uaword	0x25fd
	.uleb128 0x6
	.uaword	.LVL71
	.uaword	0x2631
	.uleb128 0x6
	.uaword	.LVL72
	.uaword	0x2665
	.uleb128 0x6
	.uaword	.LVL73
	.uaword	0x2693
	.uleb128 0x6
	.uaword	.LVL74
	.uaword	0x26c7
	.uleb128 0x6
	.uaword	.LVL75
	.uaword	0x26fb
	.uleb128 0x6
	.uaword	.LVL76
	.uaword	0x2727
	.uleb128 0x6
	.uaword	.LVL77
	.uaword	0x2753
	.uleb128 0x6
	.uaword	.LVL78
	.uaword	0x277f
	.uleb128 0x6
	.uaword	.LVL79
	.uaword	0x27ab
	.uleb128 0x6
	.uaword	.LVL80
	.uaword	0x27d8
	.uleb128 0x6
	.uaword	.LVL81
	.uaword	0x280b
	.uleb128 0x6
	.uaword	.LVL82
	.uaword	0x283e
	.uleb128 0x6
	.uaword	.LVL83
	.uaword	0x2871
	.uleb128 0x6
	.uaword	.LVL84
	.uaword	0x28a5
	.uleb128 0x6
	.uaword	.LVL85
	.uaword	0x28d9
	.uleb128 0x6
	.uaword	.LVL86
	.uaword	0x2911
	.uleb128 0x6
	.uaword	.LVL87
	.uaword	0x2949
	.uleb128 0x6
	.uaword	.LVL88
	.uaword	0x297a
	.uleb128 0x6
	.uaword	.LVL89
	.uaword	0x29ab
	.uleb128 0x6
	.uaword	.LVL90
	.uaword	0x29e3
	.uleb128 0x6
	.uaword	.LVL91
	.uaword	0x2a1b
	.uleb128 0x6
	.uaword	.LVL92
	.uaword	0x2a50
	.uleb128 0x6
	.uaword	.LVL93
	.uaword	0x2a83
	.uleb128 0x6
	.uaword	.LVL94
	.uaword	0x2ab6
	.uleb128 0x6
	.uaword	.LVL95
	.uaword	0x2ae9
	.uleb128 0x6
	.uaword	.LVL96
	.uaword	0x2b1c
	.uleb128 0x6
	.uaword	.LVL97
	.uaword	0x2b4f
	.uleb128 0x6
	.uaword	.LVL98
	.uaword	0x2b80
	.byte	0
	.uleb128 0xa
	.byte	0x1
	.string	"HARD_vidIoReadPwmInput"
	.byte	0x1
	.uahalf	0x15a
	.byte	0x1
	.byte	0x1
	.uleb128 0x5
	.byte	0x1
	.string	"HARD_vidIoInit"
	.byte	0x1
	.byte	0x4b
	.byte	0x1
	.uaword	.LFB19
	.uaword	.LFE19
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x8fd
	.uleb128 0xb
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5e
	.uaword	0x1fe
	.byte	0x1
	.uaword	0x721
	.uleb128 0xc
	.byte	0
	.uleb128 0xd
	.uaword	0x46b
	.uaword	.LBB6
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x4e
	.uaword	0x7aa
	.uleb128 0x6
	.uaword	.LVL100
	.uaword	0x2082
	.uleb128 0x6
	.uaword	.LVL101
	.uaword	0x20b5
	.uleb128 0x6
	.uaword	.LVL102
	.uaword	0x20e8
	.uleb128 0x6
	.uaword	.LVL103
	.uaword	0x211d
	.uleb128 0x6
	.uaword	.LVL104
	.uaword	0x2152
	.uleb128 0x6
	.uaword	.LVL105
	.uaword	0x2181
	.uleb128 0x6
	.uaword	.LVL106
	.uaword	0x21b4
	.uleb128 0x6
	.uaword	.LVL107
	.uaword	0x21e7
	.uleb128 0x6
	.uaword	.LVL108
	.uaword	0x221c
	.uleb128 0x6
	.uaword	.LVL109
	.uaword	0x2251
	.uleb128 0x6
	.uaword	.LVL110
	.uaword	0x2286
	.uleb128 0x6
	.uaword	.LVL111
	.uaword	0x22bb
	.uleb128 0x6
	.uaword	.LVL112
	.uaword	0x22e6
	.byte	0
	.uleb128 0xe
	.uaword	0x6cc
	.uaword	.LBB10
	.uaword	.LBE10
	.byte	0x1
	.byte	0x5f
	.uaword	0x806
	.uleb128 0x6
	.uaword	.LVL126
	.uaword	0x2bb1
	.uleb128 0x6
	.uaword	.LVL127
	.uaword	0x2be7
	.uleb128 0x6
	.uaword	.LVL128
	.uaword	0x2c1d
	.uleb128 0x6
	.uaword	.LVL129
	.uaword	0x2c53
	.uleb128 0x6
	.uaword	.LVL130
	.uaword	0x2c87
	.uleb128 0x6
	.uaword	.LVL131
	.uaword	0x2cbb
	.uleb128 0x6
	.uaword	.LVL132
	.uaword	0x2cf1
	.uleb128 0x6
	.uaword	.LVL133
	.uaword	0x2d27
	.byte	0
	.uleb128 0x6
	.uaword	.LVL99
	.uaword	0x513
	.uleb128 0xf
	.uaword	.LVL113
	.uaword	0x2d5d
	.uaword	0x822
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x35
	.byte	0
	.uleb128 0xf
	.uaword	.LVL114
	.uaword	0x2d5d
	.uaword	0x835
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x36
	.byte	0
	.uleb128 0xf
	.uaword	.LVL115
	.uaword	0x2d5d
	.uaword	0x848
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x37
	.byte	0
	.uleb128 0xf
	.uaword	.LVL116
	.uaword	0x2d5d
	.uaword	0x85b
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x38
	.byte	0
	.uleb128 0xf
	.uaword	.LVL117
	.uaword	0x2d5d
	.uaword	0x86e
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x39
	.byte	0
	.uleb128 0xf
	.uaword	.LVL118
	.uaword	0x2d5d
	.uaword	0x881
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3a
	.byte	0
	.uleb128 0xf
	.uaword	.LVL119
	.uaword	0x2d5d
	.uaword	0x894
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3b
	.byte	0
	.uleb128 0xf
	.uaword	.LVL120
	.uaword	0x2d5d
	.uaword	0x8a7
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3c
	.byte	0
	.uleb128 0xf
	.uaword	.LVL121
	.uaword	0x2d5d
	.uaword	0x8ba
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.uleb128 0xf
	.uaword	.LVL122
	.uaword	0x2d5d
	.uaword	0x8cd
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3e
	.byte	0
	.uleb128 0xf
	.uaword	.LVL123
	.uaword	0x2d5d
	.uaword	0x8e0
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3f
	.byte	0
	.uleb128 0xf
	.uaword	.LVL124
	.uaword	0x2d5d
	.uaword	0x8f3
	.uleb128 0x10
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x40
	.byte	0
	.uleb128 0x6
	.uaword	.LVL125
	.uaword	0x2d99
	.byte	0
	.uleb128 0x9
	.uaword	0x6cc
	.uaword	.LFB23
	.uaword	.LFE23
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x95b
	.uleb128 0x6
	.uaword	.LVL134
	.uaword	0x2bb1
	.uleb128 0x6
	.uaword	.LVL135
	.uaword	0x2be7
	.uleb128 0x6
	.uaword	.LVL136
	.uaword	0x2c1d
	.uleb128 0x6
	.uaword	.LVL137
	.uaword	0x2c53
	.uleb128 0x6
	.uaword	.LVL138
	.uaword	0x2c87
	.uleb128 0x6
	.uaword	.LVL139
	.uaword	0x2cbb
	.uleb128 0x6
	.uaword	.LVL140
	.uaword	0x2cf1
	.uleb128 0x6
	.uaword	.LVL141
	.uaword	0x2d27
	.byte	0
	.uleb128 0x11
	.string	"HARD_bDio_M_BACKUP_EN"
	.byte	0x4
	.byte	0x74
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_Q6_PTC2"
	.byte	0x4
	.byte	0x76
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_AN_ENABLE_ASC2"
	.byte	0x4
	.byte	0x77
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_AN_ENABLE_ASC1"
	.byte	0x4
	.byte	0x79
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_DX3_A"
	.byte	0x4
	.byte	0x7c
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_DX3_B"
	.byte	0x4
	.byte	0x7d
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_DX3_C"
	.byte	0x4
	.byte	0x7e
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_PW_DOWN"
	.byte	0x4
	.byte	0x83
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_KM1_ZQ1"
	.byte	0x4
	.byte	0x84
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_KM2_ZQ2"
	.byte	0x4
	.byte	0x85
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_KM3_ZQ3"
	.byte	0x4
	.byte	0x86
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_KM4_ZQ4"
	.byte	0x4
	.byte	0x87
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_YC2_KC3Z_YC"
	.byte	0x4
	.byte	0x91
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_ISO_EN1"
	.byte	0x4
	.byte	0x92
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_ISO_EN2"
	.byte	0x4
	.byte	0x93
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_ISO_EN3"
	.byte	0x4
	.byte	0x94
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_FLT_EXCITATION_2"
	.byte	0x4
	.byte	0x95
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_FLT_EXCITATION_1"
	.byte	0x4
	.byte	0x96
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_KM20_DCJY1"
	.byte	0x4
	.byte	0x9a
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_KM21_DCJY2"
	.byte	0x4
	.byte	0x9c
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_KM22_DCJY3"
	.byte	0x4
	.byte	0x9d
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_KM23_DCJY4"
	.byte	0x4
	.byte	0x9e
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_YC5_SZ2_YC"
	.byte	0x4
	.byte	0x9f
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_SUPPLY_WDI"
	.byte	0x4
	.byte	0xa7
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_MCU_ASC_STATE"
	.byte	0x4
	.byte	0xac
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_YC3_KC4Z_YC"
	.byte	0x4
	.byte	0xad
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_FAULT_ACM_HS_N"
	.byte	0x4
	.byte	0xae
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_FAULT_EPS_HS_N"
	.byte	0x4
	.byte	0xaf
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_YC7_ZXFZ_YC"
	.byte	0x4
	.byte	0xb1
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_YC1_ZQ_YC"
	.byte	0x4
	.byte	0xb2
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_Q1_DCJR1"
	.byte	0x4
	.byte	0xb3
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_Q2_DCJR2"
	.byte	0x4
	.byte	0xb4
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_Q3_DCJR3"
	.byte	0x4
	.byte	0xb5
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_Q4_DCJR4"
	.byte	0x4
	.byte	0xb6
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_ENA_KM"
	.byte	0x4
	.byte	0xb7
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_FAULT_DRV_HS_N_1"
	.byte	0x4
	.byte	0xb8
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_Q5_PTC1"
	.byte	0x4
	.byte	0xba
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_ACM_ENA_PWM"
	.byte	0x4
	.byte	0xbb
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_FAULT_DRV_LS_N_1"
	.byte	0x4
	.byte	0xbc
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_FAULT_DRV_LS_N_2"
	.byte	0x4
	.byte	0xbd
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_FAULT_DRV_HS_N_2"
	.byte	0x4
	.byte	0xbe
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_YC6_XGLFZ_YC"
	.byte	0x4
	.byte	0xc1
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_DX1_A"
	.byte	0x4
	.byte	0xc2
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_DX1_B"
	.byte	0x4
	.byte	0xc3
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_EPS_ENA_PWM"
	.byte	0x4
	.byte	0xc4
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_DX2_A"
	.byte	0x4
	.byte	0xc7
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_DX2_B"
	.byte	0x4
	.byte	0xc8
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_DX2_C"
	.byte	0x4
	.byte	0xc9
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_YC4_SZ1_YC"
	.byte	0x4
	.byte	0xcb
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_KEY_ON"
	.byte	0x4
	.byte	0xcc
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_MCU_STATE_LED"
	.byte	0x4
	.byte	0xce
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_DX1_C"
	.byte	0x4
	.byte	0xcf
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_SER"
	.byte	0x4
	.byte	0xd0
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_DO1"
	.byte	0x4
	.byte	0xd1
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_bDio_M_CHG_ON"
	.byte	0x4
	.byte	0xd5
	.uaword	0x262
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_CH_DIO_IN_M_HW_OCP_W_2"
	.byte	0x4
	.byte	0xd8
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_CH_DIO_IN_M_HW_OCP_V_2"
	.byte	0x4
	.byte	0xd9
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_CH_DIO_IN_M_HW_OCP_U_2"
	.byte	0x4
	.byte	0xda
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_AN_VOL_DCLINK_DRV"
	.byte	0x4
	.byte	0xde
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_AN_MUX7"
	.byte	0x4
	.byte	0xe1
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_AN_MUX6"
	.byte	0x4
	.byte	0xe3
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_EPS_AN_CURRENT_W"
	.byte	0x4
	.byte	0xe5
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_ACM_AN_CURRENT_W"
	.byte	0x4
	.byte	0xe7
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_EPS_AN_CURRENT_V"
	.byte	0x4
	.byte	0xe9
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_EPS_AN_CURRENT_U"
	.byte	0x4
	.byte	0xeb
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_ACM_AN_CURRENT_V"
	.byte	0x4
	.byte	0xed
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_ACM_AN_CURRENT_U"
	.byte	0x4
	.byte	0xef
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_AN_15V_RDC"
	.byte	0x4
	.byte	0xf1
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_AN_DIAG_SIN_L_1"
	.byte	0x4
	.byte	0xf3
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_AN_DIAG_SIN_L_2"
	.byte	0x4
	.byte	0xf5
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_AN_DIAG_SIN_H_2"
	.byte	0x4
	.byte	0xf7
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_AN_DIAG_SIN_H_1"
	.byte	0x4
	.byte	0xf9
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_AN_P5V_AD2S"
	.byte	0x4
	.byte	0xfb
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_AN_DIAG_COS_L_1"
	.byte	0x4
	.byte	0xfd
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x11
	.string	"HARD_u16Adc_M_AN_DIAG_COS_H_1"
	.byte	0x4
	.byte	0xff
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_MUX3"
	.byte	0x4
	.uahalf	0x101
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_MUX4"
	.byte	0x4
	.uahalf	0x103
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_MUX2"
	.byte	0x4
	.uahalf	0x105
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_MUX1"
	.byte	0x4
	.uahalf	0x107
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_AN_P5V_REF"
	.byte	0x4
	.uahalf	0x109
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_CURRENT_W_2"
	.byte	0x4
	.uahalf	0x10b
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_CURRENT_V_2"
	.byte	0x4
	.uahalf	0x10d
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_CURRENT_U_2"
	.byte	0x4
	.uahalf	0x10f
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_DIAG_COS_H_2"
	.byte	0x4
	.uahalf	0x111
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_DIAG_COS_L_2"
	.byte	0x4
	.uahalf	0x113
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_V"
	.byte	0x4
	.uahalf	0x115
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_W"
	.byte	0x4
	.uahalf	0x117
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_MOT_SIN_2"
	.byte	0x4
	.uahalf	0x119
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_MOT_COS_2"
	.byte	0x4
	.uahalf	0x11b
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_V"
	.byte	0x4
	.uahalf	0x11d
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_W"
	.byte	0x4
	.uahalf	0x11f
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_DC_LINK_PACK4"
	.byte	0x4
	.uahalf	0x121
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_CURRENT_W_1"
	.byte	0x4
	.uahalf	0x123
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_CURRENT_V_1"
	.byte	0x4
	.uahalf	0x125
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_CURRENT_U_1"
	.byte	0x4
	.uahalf	0x129
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_KM8_FB_KC2F"
	.byte	0x4
	.uahalf	0x133
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_KM6_FB_KC1F"
	.byte	0x4
	.uahalf	0x135
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_MOT_SIN_1"
	.byte	0x4
	.uahalf	0x137
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_u16Adc_M_AN_MOT_COS_1"
	.byte	0x4
	.uahalf	0x139
	.uaword	0x1da
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_f32Pwm_M_TEMP_MEAS_MOD_U_2"
	.byte	0x4
	.uahalf	0x13c
	.uaword	0x240
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_f32Pwm_M_TEMP_MEAS_MOD_V_2"
	.byte	0x4
	.uahalf	0x13d
	.uaword	0x240
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_f32Pwm_M_TEMP_MEAS_MOD_W_2"
	.byte	0x4
	.uahalf	0x13e
	.uaword	0x240
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_f32Pwm_AN_VOL_DCLINK_EPS"
	.byte	0x4
	.uahalf	0x13f
	.uaword	0x240
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_f32Pwm_AN_VOL_DCLINK_ACM"
	.byte	0x4
	.uahalf	0x140
	.uaword	0x240
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_f32Pwm_M_TEMP_MEAS_MOD_W_1"
	.byte	0x4
	.uahalf	0x141
	.uaword	0x240
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_f32Pwm_M_TEMP_MEAS_MOD_V_1"
	.byte	0x4
	.uahalf	0x142
	.uaword	0x240
	.byte	0x1
	.byte	0x1
	.uleb128 0x12
	.string	"HARD_f32Pwm_M_TEMP_MEAS_MOD_U_1"
	.byte	0x4
	.uahalf	0x143
	.uaword	0x240
	.byte	0x1
	.byte	0x1
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN"
	.byte	0x5
	.byte	0x34
	.byte	0x1
	.byte	0x1
	.uaword	0x1810
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2"
	.byte	0x5
	.byte	0x37
	.byte	0x1
	.byte	0x1
	.uaword	0x1844
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A"
	.byte	0x5
	.byte	0x3a
	.byte	0x1
	.byte	0x1
	.uaword	0x1876
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B"
	.byte	0x5
	.byte	0x3b
	.byte	0x1
	.byte	0x1
	.uaword	0x18a8
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C"
	.byte	0x5
	.byte	0x3c
	.byte	0x1
	.byte	0x1
	.uaword	0x18da
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN"
	.byte	0x5
	.byte	0x42
	.byte	0x1
	.byte	0x1
	.uaword	0x190e
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1"
	.byte	0x5
	.byte	0x43
	.byte	0x1
	.byte	0x1
	.uaword	0x1942
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2"
	.byte	0x5
	.byte	0x44
	.byte	0x1
	.byte	0x1
	.uaword	0x1976
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3"
	.byte	0x5
	.byte	0x45
	.byte	0x1
	.byte	0x1
	.uaword	0x19aa
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4"
	.byte	0x5
	.byte	0x46
	.byte	0x1
	.byte	0x1
	.uaword	0x19de
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC"
	.byte	0x5
	.byte	0x50
	.byte	0x1
	.byte	0x1
	.uaword	0x1a16
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1"
	.byte	0x5
	.byte	0x51
	.byte	0x1
	.byte	0x1
	.uaword	0x1a4a
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2"
	.byte	0x5
	.byte	0x52
	.byte	0x1
	.byte	0x1
	.uaword	0x1a7e
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3"
	.byte	0x5
	.byte	0x53
	.byte	0x1
	.byte	0x1
	.uaword	0x1ab2
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1"
	.byte	0x5
	.byte	0x56
	.byte	0x1
	.byte	0x1
	.uaword	0x1ae9
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2"
	.byte	0x5
	.byte	0x57
	.byte	0x1
	.byte	0x1
	.uaword	0x1b20
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3"
	.byte	0x5
	.byte	0x58
	.byte	0x1
	.byte	0x1
	.uaword	0x1b57
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4"
	.byte	0x5
	.byte	0x59
	.byte	0x1
	.byte	0x1
	.uaword	0x1b8e
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC"
	.byte	0x5
	.byte	0x5a
	.byte	0x1
	.byte	0x1
	.uaword	0x1bc5
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE"
	.byte	0x5
	.byte	0x64
	.byte	0x1
	.byte	0x1
	.uaword	0x1bfd
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC"
	.byte	0x5
	.byte	0x65
	.byte	0x1
	.byte	0x1
	.uaword	0x1c35
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC"
	.byte	0x5
	.byte	0x68
	.byte	0x1
	.byte	0x1
	.uaword	0x1c6d
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC"
	.byte	0x5
	.byte	0x69
	.byte	0x1
	.byte	0x1
	.uaword	0x1ca3
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1"
	.byte	0x5
	.byte	0x6a
	.byte	0x1
	.byte	0x1
	.uaword	0x1cd8
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2"
	.byte	0x5
	.byte	0x6b
	.byte	0x1
	.byte	0x1
	.uaword	0x1d0d
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3"
	.byte	0x5
	.byte	0x6c
	.byte	0x1
	.byte	0x1
	.uaword	0x1d42
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4"
	.byte	0x5
	.byte	0x6d
	.byte	0x1
	.byte	0x1
	.uaword	0x1d77
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM"
	.byte	0x5
	.byte	0x6e
	.byte	0x1
	.byte	0x1
	.uaword	0x1daa
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1"
	.byte	0x5
	.byte	0x76
	.byte	0x1
	.byte	0x1
	.uaword	0x1dde
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM"
	.byte	0x5
	.byte	0x77
	.byte	0x1
	.byte	0x1
	.uaword	0x1e16
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC"
	.byte	0x5
	.byte	0x7a
	.byte	0x1
	.byte	0x1
	.uaword	0x1e4f
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A"
	.byte	0x5
	.byte	0x3d
	.byte	0x1
	.byte	0x1
	.uaword	0x1e81
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B"
	.byte	0x5
	.byte	0x33
	.byte	0x1
	.byte	0x1
	.uaword	0x1eb3
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM"
	.byte	0x5
	.byte	0x7b
	.byte	0x1
	.byte	0x1
	.uaword	0x1eeb
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A"
	.byte	0x5
	.byte	0x7e
	.byte	0x1
	.byte	0x1
	.uaword	0x1f1d
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B"
	.byte	0x5
	.byte	0x7f
	.byte	0x1
	.byte	0x1
	.uaword	0x1f4f
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C"
	.byte	0x5
	.byte	0x80
	.byte	0x1
	.byte	0x1
	.uaword	0x1f81
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC"
	.byte	0x5
	.byte	0x81
	.byte	0x1
	.byte	0x1
	.uaword	0x1fb8
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED"
	.byte	0x5
	.byte	0x83
	.byte	0x1
	.byte	0x1
	.uaword	0x1ff0
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C"
	.byte	0x5
	.byte	0x79
	.byte	0x1
	.byte	0x1
	.uaword	0x2022
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_SER"
	.byte	0x5
	.byte	0x84
	.byte	0x1
	.byte	0x1
	.uaword	0x2052
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x13
	.byte	0x1
	.string	"IOHAL_vidWrite_CH_DIO_OUT_M_DO1"
	.byte	0x5
	.byte	0x85
	.byte	0x1
	.byte	0x1
	.uaword	0x2082
	.uleb128 0x14
	.uaword	0x1da
	.byte	0
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2"
	.byte	0x5
	.byte	0x32
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1"
	.byte	0x5
	.byte	0x36
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2"
	.byte	0x5
	.byte	0x4a
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1"
	.byte	0x5
	.byte	0x4b
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI"
	.byte	0x5
	.byte	0x5d
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N"
	.byte	0x5
	.byte	0x62
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N"
	.byte	0x5
	.byte	0x63
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1"
	.byte	0x5
	.byte	0x67
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1"
	.byte	0x5
	.byte	0x73
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2"
	.byte	0x5
	.byte	0x74
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2"
	.byte	0x5
	.byte	0x75
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_KEY_ON"
	.byte	0x5
	.byte	0x7d
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_CHG_ON"
	.byte	0x5
	.byte	0x87
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2"
	.byte	0x5
	.byte	0x39
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2"
	.byte	0x5
	.byte	0x48
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2"
	.byte	0x5
	.byte	0x4f
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV"
	.byte	0x5
	.byte	0x8e
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7"
	.byte	0x5
	.byte	0xbf
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6"
	.byte	0x5
	.byte	0xbe
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W"
	.byte	0x5
	.byte	0xbc
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W"
	.byte	0x5
	.byte	0xbb
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V"
	.byte	0x5
	.byte	0xba
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U"
	.byte	0x5
	.byte	0xb9
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V"
	.byte	0x5
	.byte	0xb8
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U"
	.byte	0x5
	.byte	0xb7
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC"
	.byte	0x5
	.byte	0xa3
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1"
	.byte	0x5
	.byte	0xb5
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2"
	.byte	0x5
	.byte	0xb4
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2"
	.byte	0x5
	.byte	0x9b
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1"
	.byte	0x5
	.byte	0xb3
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S"
	.byte	0x5
	.byte	0x9f
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1"
	.byte	0x5
	.byte	0xb1
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1"
	.byte	0x5
	.byte	0xb0
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3"
	.byte	0x5
	.byte	0xaf
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4"
	.byte	0x5
	.byte	0xae
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2"
	.byte	0x5
	.byte	0xad
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1"
	.byte	0x5
	.byte	0xac
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF"
	.byte	0x5
	.byte	0xa5
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2"
	.byte	0x5
	.byte	0xaa
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2"
	.byte	0x5
	.byte	0xa9
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2"
	.byte	0x5
	.byte	0xa8
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2"
	.byte	0x5
	.byte	0xa7
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2"
	.byte	0x5
	.byte	0xa6
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V"
	.byte	0x5
	.byte	0xa4
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W"
	.byte	0x5
	.byte	0xa2
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2"
	.byte	0x5
	.byte	0xa1
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2"
	.byte	0x5
	.byte	0xa0
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V"
	.byte	0x5
	.byte	0x9e
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W"
	.byte	0x5
	.byte	0x9c
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4"
	.byte	0x5
	.byte	0x9a
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1"
	.byte	0x5
	.byte	0x99
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1"
	.byte	0x5
	.byte	0x98
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1"
	.byte	0x5
	.byte	0x96
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F"
	.byte	0x5
	.byte	0x93
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F"
	.byte	0x5
	.byte	0x91
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1"
	.byte	0x5
	.byte	0x90
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1"
	.byte	0x5
	.byte	0x8f
	.byte	0x1
	.uaword	0x1da
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2"
	.byte	0x5
	.byte	0xd0
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2"
	.byte	0x5
	.byte	0xd1
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2"
	.byte	0x5
	.byte	0xd2
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS"
	.byte	0x5
	.byte	0xd3
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM"
	.byte	0x5
	.byte	0xd4
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1"
	.byte	0x5
	.byte	0xd5
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1"
	.byte	0x5
	.byte	0xd6
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uleb128 0x15
	.byte	0x1
	.string	"IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1"
	.byte	0x5
	.byte	0xd7
	.byte	0x1
	.uaword	0x240
	.byte	0x1
	.uleb128 0x16
	.byte	0x1
	.string	"Icu_17_TimerIp_StartSignalMeasurement"
	.byte	0x3
	.uahalf	0x51b
	.byte	0x1
	.byte	0x1
	.uaword	0x2d94
	.uleb128 0x14
	.uaword	0x2d94
	.byte	0
	.uleb128 0x17
	.uaword	0x292
	.uleb128 0x18
	.byte	0x1
	.uaword	.LASF0
	.byte	0x1
	.byte	0x5e
	.uaword	0x1fe
	.byte	0x1
	.uleb128 0xc
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
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
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
	.uleb128 0x6
	.uleb128 0x4109
	.byte	0
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x7
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
	.uleb128 0x8
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0x20
	.uleb128 0xb
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x2e
	.byte	0x1
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x18
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xe
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
	.uleb128 0xf
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
	.uleb128 0x10
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x11
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x13
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
	.uleb128 0x14
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x15
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
	.uleb128 0x3c
	.uleb128 0xc
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
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3
	.uleb128 0xe
	.uleb128 0x3a
	.uleb128 0xb
	.uleb128 0x3b
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.byte	0
.section .debug_aranges,"",@progbits
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.Ltext0
	.uaword	.Letext0-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB6-.Ltext0
	.uaword	.LBE6-.Ltext0
	.uaword	.LBB9-.Ltext0
	.uaword	.LBE9-.Ltext0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF0:
	.string	"Icu_vidGetDutyCycle"
	.extern	HARD_f32Pwm_M_TEMP_MEAS_MOD_U_1,STT_OBJECT,4
	.extern	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_1,STT_FUNC,0
	.extern	HARD_f32Pwm_M_TEMP_MEAS_MOD_V_1,STT_OBJECT,4
	.extern	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_1,STT_FUNC,0
	.extern	HARD_f32Pwm_M_TEMP_MEAS_MOD_W_1,STT_OBJECT,4
	.extern	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_1,STT_FUNC,0
	.extern	HARD_f32Pwm_AN_VOL_DCLINK_ACM,STT_OBJECT,4
	.extern	IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_ACM,STT_FUNC,0
	.extern	HARD_f32Pwm_AN_VOL_DCLINK_EPS,STT_OBJECT,4
	.extern	IOHAL_u16Read_CH_PWM_IN_AN_VOL_DCLINK_EPS,STT_FUNC,0
	.extern	HARD_f32Pwm_M_TEMP_MEAS_MOD_W_2,STT_OBJECT,4
	.extern	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_W_2,STT_FUNC,0
	.extern	HARD_f32Pwm_M_TEMP_MEAS_MOD_V_2,STT_OBJECT,4
	.extern	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_V_2,STT_FUNC,0
	.extern	HARD_f32Pwm_M_TEMP_MEAS_MOD_U_2,STT_OBJECT,4
	.extern	IOHAL_u16Read_CH_PWM_IN_M_TEMP_MEAS_MOD_U_2,STT_FUNC,0
	.extern	Icu_vidGetDutyCycle,STT_FUNC,0
	.extern	Icu_17_TimerIp_StartSignalMeasurement,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_MOT_COS_1,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_1,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_MOT_SIN_1,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_1,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_KM6_FB_KC1F,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_KM6_FB_KC1F,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_KM8_FB_KC2F,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_KM8_FB_KC2F,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_CURRENT_U_1,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_1,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_CURRENT_V_1,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_1,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_CURRENT_W_1,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_1,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_DC_LINK_PACK4,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_DC_LINK_PACK4,STT_FUNC,0
	.extern	HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_W,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_W,STT_FUNC,0
	.extern	HARD_u16Adc_M_ACM_TEMP_MEAS_MOD_V,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_ACM_TEMP_MEAS_MOD_V,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_MOT_COS_2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_COS_2,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_MOT_SIN_2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MOT_SIN_2,STT_FUNC,0
	.extern	HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_W,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_W,STT_FUNC,0
	.extern	HARD_u16Adc_M_EPS_TEMP_MEAS_MOD_V,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_EPS_TEMP_MEAS_MOD_V,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_DIAG_COS_L_2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_2,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_DIAG_COS_H_2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_2,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_CURRENT_U_2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_U_2,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_CURRENT_V_2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_V_2,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_CURRENT_W_2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_CURRENT_W_2,STT_FUNC,0
	.extern	HARD_u16Adc_AN_P5V_REF,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_AN_P5V_REF,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_MUX1,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX1,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_MUX2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX2,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_MUX4,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX4,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_MUX3,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX3,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_DIAG_COS_H_1,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_H_1,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_DIAG_COS_L_1,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_COS_L_1,STT_FUNC,0
	.extern	HARD_u16Adc_AN_P5V_AD2S,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_AN_P5V_AD2S,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_DIAG_SIN_H_1,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_1,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_DIAG_SIN_H_2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_H_2,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_DIAG_SIN_L_2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_2,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_DIAG_SIN_L_1,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_DIAG_SIN_L_1,STT_FUNC,0
	.extern	HARD_u16Adc_AN_15V_RDC,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_AN_15V_RDC,STT_FUNC,0
	.extern	HARD_u16Adc_M_ACM_AN_CURRENT_U,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_U,STT_FUNC,0
	.extern	HARD_u16Adc_M_ACM_AN_CURRENT_V,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_V,STT_FUNC,0
	.extern	HARD_u16Adc_M_EPS_AN_CURRENT_U,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_U,STT_FUNC,0
	.extern	HARD_u16Adc_M_EPS_AN_CURRENT_V,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_V,STT_FUNC,0
	.extern	HARD_u16Adc_M_ACM_AN_CURRENT_W,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_ACM_AN_CURRENT_W,STT_FUNC,0
	.extern	HARD_u16Adc_M_EPS_AN_CURRENT_W,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_EPS_AN_CURRENT_W,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_MUX6,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX6,STT_FUNC,0
	.extern	HARD_u16Adc_M_AN_MUX7,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_M_AN_MUX7,STT_FUNC,0
	.extern	HARD_u16Adc_AN_VOL_DCLINK_DRV,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_ADC_IN_AN_VOL_DCLINK_DRV,STT_FUNC,0
	.extern	HARD_CH_DIO_IN_M_HW_OCP_U_2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_U_2,STT_FUNC,0
	.extern	HARD_CH_DIO_IN_M_HW_OCP_V_2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_V_2,STT_FUNC,0
	.extern	HARD_CH_DIO_IN_M_HW_OCP_W_2,STT_OBJECT,2
	.extern	IOHAL_u16Read_CH_DIO_IN_M_HW_OCP_W_2,STT_FUNC,0
	.extern	HARD_bDio_M_CHG_ON,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_CHG_ON,STT_FUNC,0
	.extern	HARD_bDio_M_KEY_ON,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_KEY_ON,STT_FUNC,0
	.extern	HARD_bDio_M_FAULT_DRV_HS_N_2,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_2,STT_FUNC,0
	.extern	HARD_bDio_M_FAULT_DRV_LS_N_2,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_2,STT_FUNC,0
	.extern	HARD_bDio_M_FAULT_DRV_LS_N_1,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_LS_N_1,STT_FUNC,0
	.extern	HARD_bDio_M_FAULT_DRV_HS_N_1,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_DRV_HS_N_1,STT_FUNC,0
	.extern	HARD_bDio_M_FAULT_EPS_HS_N,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_EPS_HS_N,STT_FUNC,0
	.extern	HARD_bDio_M_FAULT_ACM_HS_N,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FAULT_ACM_HS_N,STT_FUNC,0
	.extern	HARD_bDio_M_SUPPLY_WDI,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_SUPPLY_WDI,STT_FUNC,0
	.extern	HARD_bDio_M_FLT_EXCITATION_1,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_1,STT_FUNC,0
	.extern	HARD_bDio_M_FLT_EXCITATION_2,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_FLT_EXCITATION_2,STT_FUNC,0
	.extern	HARD_bDio_M_AN_ENABLE_ASC1,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC1,STT_FUNC,0
	.extern	HARD_bDio_M_AN_ENABLE_ASC2,STT_OBJECT,1
	.extern	IOHAL_u16Read_CH_DIO_IN_M_AN_ENABLE_ASC2,STT_FUNC,0
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DO1,STT_FUNC,0
	.extern	HARD_bDio_M_DO1,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_SER,STT_FUNC,0
	.extern	HARD_bDio_M_SER,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_C,STT_FUNC,0
	.extern	HARD_bDio_M_DX1_C,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_MCU_STATE_LED,STT_FUNC,0
	.extern	HARD_bDio_MCU_STATE_LED,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_YC4_SZ1_YC,STT_FUNC,0
	.extern	HARD_bDio_M_YC4_SZ1_YC,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_C,STT_FUNC,0
	.extern	HARD_bDio_M_DX2_C,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_B,STT_FUNC,0
	.extern	HARD_bDio_M_DX2_B,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX2_A,STT_FUNC,0
	.extern	HARD_bDio_M_DX2_A,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_EPS_ENA_PWM,STT_FUNC,0
	.extern	HARD_bDio_M_EPS_ENA_PWM,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_B,STT_FUNC,0
	.extern	HARD_bDio_M_DX1_B,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX1_A,STT_FUNC,0
	.extern	HARD_bDio_M_DX1_A,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_YC6_XGLFZ_YC,STT_FUNC,0
	.extern	HARD_bDio_M_YC6_XGLFZ_YC,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_ACM_ENA_PWM,STT_FUNC,0
	.extern	HARD_bDio_M_ACM_ENA_PWM,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_Q5_PTC1,STT_FUNC,0
	.extern	HARD_bDio_M_Q5_PTC1,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_ENA_KM,STT_FUNC,0
	.extern	HARD_bDio_M_ENA_KM,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_Q4_DCJR4,STT_FUNC,0
	.extern	HARD_bDio_M_Q4_DCJR4,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_Q3_DCJR3,STT_FUNC,0
	.extern	HARD_bDio_M_Q3_DCJR3,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_Q2_DCJR2,STT_FUNC,0
	.extern	HARD_bDio_M_Q2_DCJR2,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_Q1_DCJR1,STT_FUNC,0
	.extern	HARD_bDio_M_Q1_DCJR1,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_YC1_ZQ_YC,STT_FUNC,0
	.extern	HARD_bDio_M_YC1_ZQ_YC,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_YC7_ZXFZ_YC,STT_FUNC,0
	.extern	HARD_bDio_M_YC7_ZXFZ_YC,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_YC3_KC4Z_YC,STT_FUNC,0
	.extern	HARD_bDio_M_YC3_KC4Z_YC,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_MCU_ASC_STATE,STT_FUNC,0
	.extern	HARD_bDio_MCU_ASC_STATE,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_YC5_SZ2_YC,STT_FUNC,0
	.extern	HARD_bDio_M_YC5_SZ2_YC,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_KM23_DCJY4,STT_FUNC,0
	.extern	HARD_bDio_M_KM23_DCJY4,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_KM22_DCJY3,STT_FUNC,0
	.extern	HARD_bDio_M_KM22_DCJY3,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_KM21_DCJY2,STT_FUNC,0
	.extern	HARD_bDio_M_KM21_DCJY2,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_KM20_DCJY1,STT_FUNC,0
	.extern	HARD_bDio_M_KM20_DCJY1,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN3,STT_FUNC,0
	.extern	HARD_bDio_M_ISO_EN3,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN2,STT_FUNC,0
	.extern	HARD_bDio_M_ISO_EN2,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_ISO_EN1,STT_FUNC,0
	.extern	HARD_bDio_M_ISO_EN1,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_YC2_KC3Z_YC,STT_FUNC,0
	.extern	HARD_bDio_M_YC2_KC3Z_YC,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_KM4_ZQ4,STT_FUNC,0
	.extern	HARD_bDio_M_KM4_ZQ4,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_KM3_ZQ3,STT_FUNC,0
	.extern	HARD_bDio_M_KM3_ZQ3,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_KM2_ZQ2,STT_FUNC,0
	.extern	HARD_bDio_M_KM2_ZQ2,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_KM1_ZQ1,STT_FUNC,0
	.extern	HARD_bDio_M_KM1_ZQ1,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_PW_DOWN,STT_FUNC,0
	.extern	HARD_bDio_M_PW_DOWN,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_C,STT_FUNC,0
	.extern	HARD_bDio_M_DX3_C,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_B,STT_FUNC,0
	.extern	HARD_bDio_M_DX3_B,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_DX3_A,STT_FUNC,0
	.extern	HARD_bDio_M_DX3_A,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_Q6_PTC2,STT_FUNC,0
	.extern	HARD_bDio_M_Q6_PTC2,STT_OBJECT,1
	.extern	IOHAL_vidWrite_CH_DIO_OUT_M_BACKUP_EN,STT_FUNC,0
	.extern	HARD_bDio_M_BACKUP_EN,STT_OBJECT,1
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
