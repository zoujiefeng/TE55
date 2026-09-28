	.file	"NvM_WriteAll.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.NvM_Prv_WriteAll_UpdateBlockData,"ax",@progbits
	.align 1
	.type	NvM_Prv_WriteAll_UpdateBlockData, @function
NvM_Prv_WriteAll_UpdateBlockData:
.LFB112:
	.file 1 "bsw\\NvM\\src\\MultiBlockRequests\\NvM_WriteAll.c"
	.loc 1 88 0
.LVL0:
.LBB52:
.LBB53:
	.file 2 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData_Inl.h"
	.loc 2 383 0
	mov	%d15, 2
	movh.a	%a15, hi:NvM_Prv_stRequestResult_au8
	st.b	[%a15] lo:NvM_Prv_stRequestResult_au8, %d15
.LVL1:
.LBE53:
.LBE52:
.LBB54:
.LBB55:
	.loc 2 400 0
	movh.a	%a15, hi:NvM_Prv_stRequests_au16
	ld.h	%d15, [%a15] lo:NvM_Prv_stRequests_au16
.LBE55:
.LBE54:
	.loc 1 104 0
	movh.a	%a4, hi:NvM_Prv_WriteAll_IsBlockParticipating
.LBB58:
.LBB56:
	.loc 2 400 0
	or	%d15, %d15, 20
.LBE56:
.LBE58:
	.loc 1 104 0
	lea	%a4, [%a4] lo:NvM_Prv_WriteAll_IsBlockParticipating
.LBB59:
.LBB57:
	.loc 2 400 0
	st.h	[%a15] lo:NvM_Prv_stRequests_au16, %d15
.LBE57:
.LBE59:
	.loc 1 104 0
	j	NvM_Prv_Block_SetIsNvmEnqueuingForMulti
.LVL2:
.LFE112:
	.size	NvM_Prv_WriteAll_UpdateBlockData, .-NvM_Prv_WriteAll_UpdateBlockData
.section .text.NvM_Prv_WriteAll_IsBlockParticipating,"ax",@progbits
	.align 1
	.type	NvM_Prv_WriteAll_IsBlockParticipating, @function
NvM_Prv_WriteAll_IsBlockParticipating:
.LFB113:
	.loc 1 108 0
.LVL3:
.LBB90:
.LBB91:
	.loc 2 273 0
	movh.a	%a15, hi:NvM_Prv_idxDataSet_au8
	lea	%a15, [%a15] lo:NvM_Prv_idxDataSet_au8
	addsc.a	%a15, %a15, %d4, 0
.LBE91:
.LBE90:
.LBB93:
.LBB94:
.LBB95:
.LBB96:
.LBB97:
.LBB98:
	.file 3 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor_Inl.h"
	.loc 3 206 0
	ge.u	%d15, %d4, 60
.LBE98:
.LBE97:
.LBE96:
.LBE95:
.LBE94:
.LBE93:
	.loc 1 108 0
	mov	%d5, %d4
.LBB112:
.LBB92:
	.loc 2 273 0
	ld.bu	%d2, [%a15]0
.LVL4:
.LBE92:
.LBE112:
.LBB113:
.LBB109:
.LBB103:
.LBB101:
.LBB100:
.LBB99:
	.loc 3 206 0
	jnz	%d15, .L3
.LVL5:
	.loc 3 208 0
	mul	%d3, %d4, 52
	movh.a	%a15, hi:NvM_Prv_BlockDescriptors_acst
.LVL6:
	lea	%a3, [%a15] lo:NvM_Prv_BlockDescriptors_acst
	addsc.a	%a15, %a3, %d3, 0
.LBE99:
.LBE100:
	.loc 2 185 0
	ld.bu	%d15, [%a15] 44
	jeq	%d15, 2, .L16
.L4:
.LVL7:
.LBE101:
.LBE103:
.LBB104:
.LBB105:
	.loc 2 202 0
	movh.a	%a2, hi:NvM_Prv_stBlock_au8
	lea	%a2, [%a2] lo:NvM_Prv_stBlock_au8
	addsc.a	%a2, %a2, %d5, 0
	ld.bu	%d15, [%a2]0
	and	%d2, %d15, 8
	and	%d2, %d2, 255
.LBE105:
.LBE104:
.LBE109:
.LBE113:
	.loc 1 115 0
	jnz	%d2, .L5
.LVL8:
.LBB114:
.LBB115:
	.loc 3 78 0
	addsc.a	%a15, %a3, %d3, 0
	ld.w	%d3, [%a15] 48
	.loc 3 77 0
	jz.t	%d3, 1, .L11
	extr.u	%d2, %d15, 2, 1
.LBE115:
.LBE114:
	.loc 1 136 0
	and.t	%d3, %d15,1, %d15,0
	seln	%d2, %d3, %d2, 1
	ret
.LVL9:
.L3:
.LBB117:
.LBB110:
.LBB107:
.LBB106:
	.loc 2 202 0
	movh.a	%a15, hi:NvM_Prv_stBlock_au8
.LVL10:
	lea	%a15, [%a15] lo:NvM_Prv_stBlock_au8
	addsc.a	%a15, %a15, %d4, 0
	ld.bu	%d2, [%a15]0
	and	%d2, %d2, 8
	and	%d2, %d2, 255
.LBE106:
.LBE107:
.LBE110:
.LBE117:
	.loc 1 115 0
	jnz	%d2, .L5
.LVL11:
.L11:
	.loc 1 149 0
	ret
.LVL12:
.L16:
.LBB118:
.LBB111:
.LBB108:
.LBB102:
	.loc 2 185 0
	ld.bu	%d15, [%a15] 11
	jlt.u	%d2, %d15, .L4
.LVL13:
.L5:
.LBE102:
.LBE108:
.LBE111:
.LBE118:
	.loc 1 120 0
	mov	%d4, 13
.LVL14:
	mov	%d6, 0
	call	NvM_Prv_ErrorDetection_ReportServiceInitiationErrors
.LVL15:
.LBB119:
.LBB116:
	.loc 3 78 0
	mov	%d2, 0
	ret
.LBE116:
.LBE119:
.LFE113:
	.size	NvM_Prv_WriteAll_IsBlockParticipating, .-NvM_Prv_WriteAll_IsBlockParticipating
.section .text.NvM_Prv_WriteAll_Finalize,"ax",@progbits
	.align 1
	.type	NvM_Prv_WriteAll_Finalize, @function
NvM_Prv_WriteAll_Finalize:
.LFB115:
	.loc 1 214 0
.LVL16:
	movh.a	%a12, hi:NvM_Prv_BlockDescriptors_acst
.LBB158:
.LBB159:
.LBB160:
.LBB161:
.LBB162:
.LBB163:
	.loc 2 273 0
	movh	%d10, hi:NvM_Prv_idxDataSet_au8
.LBE163:
.LBE162:
.LBE161:
.LBE160:
.LBB191:
.LBB192:
	.loc 2 400 0
	movh.a	%a13, hi:NvM_Prv_stRequests_au16
.LBE192:
.LBE191:
.LBB195:
.LBB196:
	.loc 2 290 0
	movh.a	%a14, hi:NvM_Prv_stRequestResult_au8
.LBE196:
.LBE195:
.LBE159:
.LBE158:
	.loc 1 214 0
	mov	%d15, 2
	lea	%a12, [%a12] lo:NvM_Prv_BlockDescriptors_acst
.LBB218:
.LBB216:
.LBB199:
.LBB188:
.LBB167:
.LBB164:
	.loc 2 273 0
	addi	%d10, %d10, lo:NvM_Prv_idxDataSet_au8
.LBE164:
.LBE167:
.LBE188:
.LBE199:
.LBB200:
.LBB193:
	.loc 2 400 0
	lea	%a13, [%a13] lo:NvM_Prv_stRequests_au16
.LBE193:
.LBE200:
.LBB201:
.LBB197:
	.loc 2 290 0
	lea	%a14, [%a14] lo:NvM_Prv_stRequestResult_au8
.LBE197:
.LBE201:
.LBB202:
.LBB203:
	.loc 2 383 0
	mov	%d9, 4
	j	.L27
.LVL17:
.L19:
	add	%d15, 1
.LVL18:
.LBE203:
.LBE202:
	.loc 1 158 0
	ne	%d2, %d15, 60
	jz	%d2, .L40
.LVL19:
.L27:
.LBB205:
.LBB206:
	.loc 3 159 0
	mul	%d3, %d15, 52
	extr.u	%d5, %d15, 0, 16
.LVL20:
	addsc.a	%a15, %a12, %d3, 0
	ld.a	%a2, [%a15] 4
	.loc 3 158 0
	jz.a	%a2, .L19
.LVL21:
.LBE206:
.LBE205:
	.loc 1 161 0
	ld.hu	%d2, [%a2]0
	jz	%d2, .L19
.LVL22:
.LBB207:
.LBB189:
.LBB168:
.LBB165:
	.loc 2 273 0
	mov.a	%a3, %d10
	addsc.a	%a2, %a3, %d15, 0
.LVL23:
.LBE165:
.LBE168:
.LBB169:
.LBB170:
.LBB171:
.LBB172:
.LBB173:
.LBB174:
	.loc 3 208 0
	ld.bu	%d8, [%a15] 44
.LBE174:
.LBE173:
.LBE172:
.LBE171:
.LBE170:
.LBE169:
.LBB183:
.LBB166:
	.loc 2 273 0
	ld.bu	%d4, [%a2]0
.LVL24:
.LBE166:
.LBE183:
.LBB184:
.LBB181:
.LBB177:
.LBB175:
	.loc 2 185 0
	jeq	%d8, 2, .L41
.L29:
.LVL25:
.LBE175:
.LBE177:
.LBB178:
.LBB179:
	.loc 2 202 0
	movh.a	%a15, hi:NvM_Prv_stBlock_au8
.LVL26:
	lea	%a15, [%a15] lo:NvM_Prv_stBlock_au8
	addsc.a	%a15, %a15, %d15, 0
	ld.bu	%d2, [%a15]0
.LBE179:
.LBE178:
.LBE181:
.LBE184:
	.loc 1 115 0
	jnz.t	%d2, 3, .L22
.LVL27:
.LBB185:
.LBB186:
	.loc 3 78 0
	addsc.a	%a15, %a12, %d3, 0
	ld.w	%d3, [%a15] 48
.LVL28:
	.loc 3 77 0
	jz.t	%d3, 1, .L24
.LBE186:
.LBE185:
	.loc 1 136 0
	and.t	%d3, %d2,1, %d2,0
	jnz	%d3, .L25
	.loc 1 139 0
	jnz.t	%d2, 2, .L25
.LVL29:
.L24:
.LBE189:
.LBE207:
.LBB208:
.LBB198:
	.loc 2 290 0
	addsc.a	%a15, %a14, %d15, 0
.LBE198:
.LBE208:
	.loc 1 186 0
	ld.bu	%d2, [%a15]0
	jeq	%d2, 2, .L26
.LVL30:
.LBB209:
.LBB204:
	.loc 2 383 0
	st.b	[%a15]0, %d9
.LVL31:
.L26:
.LBE204:
.LBE209:
	.loc 1 193 0
	jne	%d8, 1, .L19
.LVL32:
.LBB210:
.LBB194:
	.loc 2 400 0
	addsc.a	%a15, %a13, %d15, 1
	add	%d15, 1
.LVL33:
	ld.h	%d2, [%a15]0
	or	%d2, %d2, 16
	st.h	[%a15]0, %d2
.LVL34:
.LBE194:
.LBE210:
	.loc 1 158 0
	ne	%d2, %d15, 60
	jnz	%d2, .L27
.LVL35:
.L40:
.LBE216:
.LBE218:
	.loc 1 216 0
	mov.a	%a4, 0
	call	NvM_Prv_Block_SetIsNvmEnqueuingForMulti
.LVL36:
	.loc 1 222 0
	mov	%d4, 13
	mov	%d5, 2
	j	BswM_NvM_CurrentJobMode
.LVL37:
.L25:
.LBB219:
.LBB217:
.LBB211:
.LBB212:
	.loc 2 383 0
	addsc.a	%a15, %a14, %d15, 0
	mov	%d2, 2
.LVL38:
	st.b	[%a15]0, %d2
.LVL39:
.LBE212:
.LBE211:
.LBB213:
.LBB214:
	.loc 2 400 0
	addsc.a	%a15, %a13, %d15, 1
	ld.h	%d2, [%a15]0
	or	%d2, %d2, 4
	st.h	[%a15]0, %d2
	j	.L26
.LVL40:
.L41:
.LBE214:
.LBE213:
.LBB215:
.LBB190:
.LBB187:
.LBB182:
.LBB180:
.LBB176:
	.loc 2 185 0
	ld.bu	%d2, [%a15] 11
	jlt.u	%d4, %d2, .L29
.LVL41:
.L22:
.LBE176:
.LBE180:
.LBE182:
.LBE187:
	.loc 1 120 0
	mov	%d4, 13
	mov	%d6, 0
	call	NvM_Prv_ErrorDetection_ReportServiceInitiationErrors
.LVL42:
	j	.L24
.LBE190:
.LBE215:
.LBE217:
.LBE219:
.LFE115:
	.size	NvM_Prv_WriteAll_Finalize, .-NvM_Prv_WriteAll_Finalize
.section .text.NvM_WriteAll,"ax",@progbits
	.align 1
	.global	NvM_WriteAll
	.type	NvM_WriteAll, @function
NvM_WriteAll:
.LFB111:
	.loc 1 66 0
	sub.a	%SP, 24
.LCFI0:
	.loc 1 74 0
	mov	%d15, 13
	st.b	[%SP] 12, %d15
	.loc 1 75 0
	mov	%d15, 2
	st.h	[%SP] 14, %d15
	.loc 1 76 0
	st.h	[%SP] 16, %d15
	.loc 1 77 0
	mov	%d15, 0
	st.w	[%SP] 20, %d15
	.loc 1 80 0
	movh	%d15, hi:NvM_Prv_WriteAll_UpdateBlockData
	addi	%d15, %d15, lo:NvM_Prv_WriteAll_UpdateBlockData
	st.w	[%SP] 4, %d15
	.loc 1 81 0
	movh	%d15, hi:NvM_Prv_WriteAll_Finalize
	addi	%d15, %d15, lo:NvM_Prv_WriteAll_Finalize
	.loc 1 84 0
	mov	%d4, 0
	lea	%a4, [%SP] 12
	lea	%a5, [%SP] 4
	.loc 1 81 0
	st.w	[%SP] 8, %d15
	.loc 1 84 0
	j	NvM_Prv_Service_InitiateMulti
.LVL43:
.LFE111:
	.size	NvM_WriteAll, .-NvM_WriteAll
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
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.align 2
.LEFDE0:
.LSFDE2:
	.uaword	.LEFDE2-.LASFDE2
.LASFDE2:
	.uaword	.Lframe0
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.align 2
.LEFDE2:
.LSFDE4:
	.uaword	.LEFDE4-.LASFDE4
.LASFDE4:
	.uaword	.Lframe0
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.align 2
.LEFDE4:
.LSFDE6:
	.uaword	.LEFDE6-.LASFDE6
.LASFDE6:
	.uaword	.Lframe0
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.byte	0x4
	.uaword	.LCFI0-.LFB111
	.byte	0xe
	.uleb128 0x18
	.align 2
.LEFDE6:
.section .text,"ax",@progbits
.Letext0:
	.file 4 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
	.file 5 ".\\output\\inc/..\\..\\bsw\\integration\\Std_Types.h"
	.file 6 ".\\output\\inc/..\\..\\rte\\Rte_Type.h"
	.file 7 ".\\output\\inc/..\\..\\bsw\\NvM\\api\\NvM_Types.h"
	.file 8 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockDescriptor.h"
	.file 9 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\BlockData\\NvM_Prv_BlockData.h"
	.file 10 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\Service\\NvM_Prv_Service.h"
	.file 11 ".\\output\\inc/..\\..\\bsw\\NvM\\src\\Internal\\ErrorDetection\\NvM_Prv_ErrorDetection.h"
	.file 12 ".\\output\\inc/..\\..\\bsw\\BswM\\api\\BswM_NvM.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0x1b48
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bsw\\NvM\\src\\MultiBlockRequests\\NvM_WriteAll.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0x1d0
	.uaword	0
	.uaword	0
	.uaword	.Ldebug_line0
	.uleb128 0x2
	.byte	0x1
	.byte	0x6
	.string	"signed char"
	.uleb128 0x3
	.string	"uint8"
	.byte	0x4
	.byte	0x51
	.uaword	0x1d8
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
	.byte	0x4
	.byte	0x5b
	.uaword	0x204
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
	.byte	0x4
	.byte	0x6a
	.uaword	0x240
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
	.byte	0x4
	.byte	0x80
	.uaword	0x1d8
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
	.byte	0x5
	.byte	0x60
	.uaword	0x1cb
	.uleb128 0x2
	.byte	0x4
	.byte	0x7
	.string	"sizetype"
	.uleb128 0x4
	.byte	0x4
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2d7
	.uleb128 0x6
	.byte	0x1
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1cb
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2e5
	.uleb128 0x7
	.uaword	0x1f6
	.uleb128 0x5
	.byte	0x4
	.uaword	0x2f0
	.uleb128 0x8
	.uleb128 0x9
	.string	"NvM_BlockIdType"
	.byte	0x6
	.uahalf	0x1ca
	.uaword	0x1f6
	.uleb128 0x9
	.string	"NvM_RequestResultType"
	.byte	0x6
	.uahalf	0x1d4
	.uaword	0x1cb
	.uleb128 0x5
	.byte	0x4
	.uaword	0x32d
	.uleb128 0xa
	.byte	0x1
	.uaword	0x2ad
	.uleb128 0x5
	.byte	0x4
	.uaword	0x339
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2ad
	.uaword	0x349
	.uleb128 0xc
	.uaword	0x1cb
	.byte	0
	.uleb128 0xd
	.byte	0x1
	.byte	0x7
	.byte	0xa2
	.uaword	0x38f
	.uleb128 0xe
	.string	"NVM_BLOCK_NATIVE"
	.sleb128 0
	.uleb128 0xe
	.string	"NVM_BLOCK_REDUNDANT"
	.sleb128 1
	.uleb128 0xe
	.string	"NVM_BLOCK_DATASET"
	.sleb128 2
	.byte	0
	.uleb128 0x3
	.string	"NvM_BlockManagementType"
	.byte	0x7
	.byte	0xa6
	.uaword	0x349
	.uleb128 0xf
	.byte	0x1
	.byte	0x7
	.uahalf	0x13e
	.uaword	0x60a
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_ReadAll_e"
	.sleb128 0
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_RemoveNonResistant_e"
	.sleb128 1
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_WriteAll_e"
	.sleb128 2
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_FirstInitAll_e"
	.sleb128 3
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Maintain_e"
	.sleb128 4
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_InitAtLayoutChange_e"
	.sleb128 5
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_ValidateAll_e"
	.sleb128 6
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_NotUsed_0_e"
	.sleb128 7
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Read_e"
	.sleb128 8
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Write_e"
	.sleb128 9
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Invalidate_e"
	.sleb128 10
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Erase_e"
	.sleb128 11
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Restore_e"
	.sleb128 12
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_NotUsed_1_e"
	.sleb128 13
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_NotUsed_2_e"
	.sleb128 14
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_NotUsed_3_e"
	.sleb128 15
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_Unspecified_e"
	.sleb128 16
	.uleb128 0xe
	.string	"NvM_Prv_ServiceBit_nr_e"
	.sleb128 17
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_ServiceBit_tuo"
	.byte	0x7
	.uahalf	0x147
	.uaword	0x1f6
	.uleb128 0x9
	.string	"NvM_Prv_idService_tuo"
	.byte	0x7
	.uahalf	0x14c
	.uaword	0x1cb
	.uleb128 0xf
	.byte	0x1
	.byte	0x7
	.uahalf	0x159
	.uaword	0x6a5
	.uleb128 0xe
	.string	"NvM_Prv_idQueue_Multi_e"
	.sleb128 0
	.uleb128 0xe
	.string	"NvM_Prv_idQueue_Standard_e"
	.sleb128 1
	.uleb128 0xe
	.string	"NvM_Prv_idQueue_nrQueues_e"
	.sleb128 2
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_idQueue_tuo"
	.byte	0x7
	.uahalf	0x174
	.uaword	0x1cb
	.uleb128 0x10
	.byte	0x4
	.byte	0x7
	.uahalf	0x180
	.uaword	0x6fa
	.uleb128 0x11
	.string	"ptrRamBlock_pv"
	.byte	0x7
	.uahalf	0x182
	.uaword	0x2cf
	.uleb128 0x11
	.string	"ptrRamBlock_pu8"
	.byte	0x7
	.uahalf	0x183
	.uaword	0x2d9
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_ptrRamBlock_tun"
	.byte	0x7
	.uahalf	0x185
	.uaword	0x6c1
	.uleb128 0x12
	.byte	0xc
	.byte	0x7
	.uahalf	0x191
	.uaword	0x772
	.uleb128 0x13
	.string	"idService_uo"
	.byte	0x7
	.uahalf	0x194
	.uaword	0x629
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x14
	.uaword	.LASF0
	.byte	0x7
	.uahalf	0x197
	.uaword	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.uleb128 0x14
	.uaword	.LASF1
	.byte	0x7
	.uahalf	0x19a
	.uaword	0x60a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x13
	.string	"BlockData_un"
	.byte	0x7
	.uahalf	0x19e
	.uaword	0x6fa
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_QueueEntry_tst"
	.byte	0x7
	.uahalf	0x1a0
	.uaword	0x71a
	.uleb128 0x5
	.byte	0x4
	.uaword	0x797
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2ad
	.uaword	0x7a7
	.uleb128 0xc
	.uaword	0x2cf
	.byte	0
	.uleb128 0xd
	.byte	0x4
	.byte	0x8
	.byte	0x2d
	.uaword	0xa6c
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_READ_ALL"
	.sleb128 1
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_WRITE_ALL"
	.sleb128 2
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_FIRST_INIT_ALL"
	.sleb128 4
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_INIT_AT_LAYOUT_CHANGE"
	.sleb128 8
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_WRITE_PROTECTED"
	.sleb128 16
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_WRITE_ONCE"
	.sleb128 32
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_RESISTANT_TO_CHANGED_SW"
	.sleb128 64
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_SYNC_MECHANISM"
	.sleb128 128
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_AUTO_VALIDATION"
	.sleb128 256
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_VARIABLE_BLOCK_LENGTH"
	.sleb128 512
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_SELECT_FOR_MIGRATION"
	.sleb128 1024
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_RAM_INIT_UNCONDITIONAL"
	.sleb128 2048
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_CRC_COMP_MECHANISM"
	.sleb128 4096
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_RAM_CRC"
	.sleb128 8192
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_NV_CRC"
	.sleb128 16384
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_USE_CRYPTO"
	.sleb128 32768
	.uleb128 0xe
	.string	"NVM_PRV_BLOCK_FLAG_CNTR_WRITE"
	.sleb128 65536
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_BlockConfiguration_ten"
	.byte	0x8
	.byte	0x71
	.uaword	0x7a7
	.uleb128 0x15
	.byte	0xc
	.byte	0x8
	.byte	0x77
	.uaword	0xb06
	.uleb128 0x16
	.string	"MultiBlockCallback_pfct"
	.byte	0x8
	.byte	0x7f
	.uaword	0xb17
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"RbMultiBlockStartCallback_pfct"
	.byte	0x8
	.byte	0x84
	.uaword	0xb29
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"ObserverCallback_pfct"
	.byte	0x8
	.byte	0x8a
	.uaword	0xb49
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.byte	0
	.uleb128 0x17
	.byte	0x1
	.uaword	0xb17
	.uleb128 0xc
	.uaword	0x1cb
	.uleb128 0xc
	.uaword	0x309
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb06
	.uleb128 0x17
	.byte	0x1
	.uaword	0xb29
	.uleb128 0xc
	.uaword	0x1cb
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb1d
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2ad
	.uaword	0xb49
	.uleb128 0xc
	.uaword	0x2f1
	.uleb128 0xc
	.uaword	0x1cb
	.uleb128 0xc
	.uaword	0x309
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xb2f
	.uleb128 0x3
	.string	"NvM_Prv_Common_tst"
	.byte	0x8
	.byte	0x8d
	.uaword	0xa92
	.uleb128 0x15
	.byte	0x34
	.byte	0x8
	.byte	0x95
	.uaword	0xd41
	.uleb128 0x16
	.string	"idBlockMemIf_u16"
	.byte	0x8
	.byte	0x9b
	.uaword	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"nrBlockBytes_pu16"
	.byte	0x8
	.byte	0xa9
	.uaword	0x2df
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.uleb128 0x16
	.string	"nrBlockBytesStored_u16"
	.byte	0x8
	.byte	0xb5
	.uaword	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0x8
	.uleb128 0x16
	.string	"idxDevice_u8"
	.byte	0x8
	.byte	0xbb
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xa
	.uleb128 0x18
	.uaword	.LASF2
	.byte	0x8
	.byte	0xc0
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xb
	.uleb128 0x16
	.string	"nrRomBlocks_u8"
	.byte	0x8
	.byte	0xc5
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0xc
	.uleb128 0x16
	.string	"adrRamBlock_ppv"
	.byte	0x8
	.byte	0xd6
	.uaword	0xd41
	.byte	0x2
	.byte	0x23
	.uleb128 0x10
	.uleb128 0x16
	.string	"adrRomBlock_pcv"
	.byte	0x8
	.byte	0xde
	.uaword	0x2ea
	.byte	0x2
	.byte	0x23
	.uleb128 0x14
	.uleb128 0x16
	.string	"SingleBlockCallback_pfct"
	.byte	0x8
	.byte	0xe8
	.uaword	0xd61
	.byte	0x2
	.byte	0x23
	.uleb128 0x18
	.uleb128 0x16
	.string	"SingleBlockStartCallback_pfct"
	.byte	0x8
	.byte	0xf0
	.uaword	0x333
	.byte	0x2
	.byte	0x23
	.uleb128 0x1c
	.uleb128 0x16
	.string	"InitBlockCallback_pfct"
	.byte	0x8
	.byte	0xf9
	.uaword	0x327
	.byte	0x2
	.byte	0x23
	.uleb128 0x20
	.uleb128 0x13
	.string	"ReadRamBlockFromNvm_pfct"
	.byte	0x8
	.uahalf	0x102
	.uaword	0x791
	.byte	0x2
	.byte	0x23
	.uleb128 0x24
	.uleb128 0x13
	.string	"WriteRamBlockToNvm_pfct"
	.byte	0x8
	.uahalf	0x10b
	.uaword	0x791
	.byte	0x2
	.byte	0x23
	.uleb128 0x28
	.uleb128 0x13
	.string	"BlockManagementType_en"
	.byte	0x8
	.uahalf	0x110
	.uaword	0x38f
	.byte	0x2
	.byte	0x23
	.uleb128 0x2c
	.uleb128 0x13
	.string	"JobPriority_u8"
	.byte	0x8
	.uahalf	0x115
	.uaword	0x1cb
	.byte	0x2
	.byte	0x23
	.uleb128 0x2d
	.uleb128 0x13
	.string	"stFlags_uo"
	.byte	0x8
	.uahalf	0x13e
	.uaword	0x232
	.byte	0x2
	.byte	0x23
	.uleb128 0x30
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xd47
	.uleb128 0x7
	.uaword	0x2cf
	.uleb128 0xb
	.byte	0x1
	.uaword	0x2ad
	.uaword	0xd61
	.uleb128 0xc
	.uaword	0x1cb
	.uleb128 0xc
	.uaword	0x309
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0xd4c
	.uleb128 0x9
	.string	"NvM_Prv_BlockDescriptor_tst"
	.byte	0x8
	.uahalf	0x153
	.uaword	0xb69
	.uleb128 0x12
	.byte	0x4
	.byte	0x8
	.uahalf	0x158
	.uaword	0xdc8
	.uleb128 0x13
	.string	"PersistentId_u16"
	.byte	0x8
	.uahalf	0x15a
	.uaword	0x1f6
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x13
	.string	"BlockId_u16"
	.byte	0x8
	.uahalf	0x15b
	.uaword	0x2f1
	.byte	0x2
	.byte	0x23
	.uleb128 0x2
	.byte	0
	.uleb128 0x9
	.string	"NvM_Prv_PersId_BlockId_tst"
	.byte	0x8
	.uahalf	0x15c
	.uaword	0xd8b
	.uleb128 0x3
	.string	"NvM_Prv_Block_IsNvmEnqueuingForMulti_tpfct"
	.byte	0x9
	.byte	0x3e
	.uaword	0xe1d
	.uleb128 0x5
	.byte	0x4
	.uaword	0xe23
	.uleb128 0xb
	.byte	0x1
	.uaword	0x27d
	.uaword	0xe33
	.uleb128 0xc
	.uaword	0x2f1
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_BlockErrors_tuo"
	.byte	0x9
	.byte	0x3f
	.uaword	0x1cb
	.uleb128 0x5
	.byte	0x4
	.uaword	0xe33
	.uleb128 0x3
	.string	"NvM_Prv_Service_UpdateBlockDataMulti_tpfct"
	.byte	0xa
	.byte	0x6a
	.uaword	0x2d1
	.uleb128 0x3
	.string	"NvM_Prv_Service_FinalizeMulti_tpfct"
	.byte	0xa
	.byte	0x71
	.uaword	0x2d1
	.uleb128 0x15
	.byte	0x8
	.byte	0xa
	.byte	0x76
	.uaword	0xf02
	.uleb128 0x16
	.string	"UpdateBlockDataForMulti_pfct"
	.byte	0xa
	.byte	0x84
	.uaword	0xe58
	.byte	0x2
	.byte	0x23
	.uleb128 0
	.uleb128 0x16
	.string	"FinalizeMulti_pfct"
	.byte	0xa
	.byte	0x91
	.uaword	0xe8a
	.byte	0x2
	.byte	0x23
	.uleb128 0x4
	.byte	0
	.uleb128 0x3
	.string	"NvM_Prv_Service_ConfigurationMulti_tst"
	.byte	0xa
	.byte	0x93
	.uaword	0xeb5
	.uleb128 0x19
	.string	"NvM_Prv_GetBlockType"
	.byte	0x3
	.byte	0xcb
	.byte	0x1
	.uaword	0x38f
	.byte	0x3
	.uaword	0xf6f
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x3
	.byte	0xcb
	.uaword	0x2f1
	.uleb128 0x1b
	.string	"BlockType"
	.byte	0x3
	.byte	0xcd
	.uaword	0x38f
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_GetNrNonVolatileBlocks"
	.byte	0x3
	.byte	0xdf
	.byte	0x1
	.uaword	0x1cb
	.byte	0x3
	.uaword	0xfb2
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x3
	.byte	0xdf
	.uaword	0x2f1
	.uleb128 0x1c
	.uaword	.LASF2
	.byte	0x3
	.byte	0xe1
	.uaword	0x1cb
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_Block_IsInRom"
	.byte	0x2
	.byte	0xb7
	.byte	0x1
	.uaword	0x27d
	.byte	0x3
	.uaword	0xfec
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x2
	.byte	0xb7
	.uaword	0x2f1
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x2
	.byte	0xb7
	.uaword	0x1cb
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_Block_IsWriteProtected"
	.byte	0x2
	.byte	0xc8
	.byte	0x1
	.uaword	0x27d
	.byte	0x3
	.uaword	0x1024
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x2
	.byte	0xc8
	.uaword	0x2f1
	.byte	0
	.uleb128 0x1d
	.string	"NvM_Prv_Block_SetRequestResult"
	.byte	0x2
	.uahalf	0x17d
	.byte	0x1
	.byte	0x3
	.uaword	0x106c
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x2f1
	.uleb128 0x1f
	.string	"Result_uo"
	.byte	0x2
	.uahalf	0x17d
	.uaword	0x309
	.byte	0
	.uleb128 0x1d
	.string	"NvM_Prv_Block_SetRequest"
	.byte	0x2
	.uahalf	0x18e
	.byte	0x1
	.byte	0x3
	.uaword	0x10a8
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x18e
	.uaword	0x2f1
	.uleb128 0x1e
	.uaword	.LASF1
	.byte	0x2
	.uahalf	0x18e
	.uaword	0x60a
	.byte	0
	.uleb128 0x20
	.string	"NvM_Prv_Block_GetIdxDataset"
	.byte	0x2
	.uahalf	0x10f
	.byte	0x1
	.uaword	0x1cb
	.byte	0x3
	.uaword	0x10df
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x10f
	.uaword	0x2f1
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_Block_IsPRamBlockValid"
	.byte	0x2
	.byte	0x68
	.byte	0x1
	.uaword	0x27d
	.byte	0x3
	.uaword	0x1117
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x2
	.byte	0x68
	.uaword	0x2f1
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_Block_IsChanged"
	.byte	0x2
	.byte	0x78
	.byte	0x1
	.uaword	0x27d
	.byte	0x3
	.uaword	0x1148
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x2
	.byte	0x78
	.uaword	0x2f1
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_Block_IsTrgWriteAllActive"
	.byte	0x2
	.byte	0x88
	.byte	0x1
	.uaword	0x27d
	.byte	0x3
	.uaword	0x11a0
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x2
	.byte	0x88
	.uaword	0x2f1
	.uleb128 0x1b
	.string	"isTrgWriteAllActive_b"
	.byte	0x2
	.byte	0x8a
	.uaword	0x27d
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_IsBlockSelected"
	.byte	0x3
	.byte	0x4a
	.byte	0x1
	.uaword	0x27d
	.byte	0x3
	.uaword	0x11e9
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x3
	.byte	0x4a
	.uaword	0x2f1
	.uleb128 0x21
	.string	"SelectionMask_en"
	.byte	0x3
	.byte	0x4b
	.uaword	0xa6c
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_GetBlockSize"
	.byte	0x3
	.byte	0x9a
	.byte	0x1
	.uaword	0x1f6
	.byte	0x3
	.uaword	0x122c
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x3
	.byte	0x9a
	.uaword	0x2f1
	.uleb128 0x1b
	.string	"BlockSize_u16"
	.byte	0x3
	.byte	0x9c
	.uaword	0x1f6
	.byte	0
	.uleb128 0x20
	.string	"NvM_Prv_Block_GetRequestResult"
	.byte	0x2
	.uahalf	0x120
	.byte	0x1
	.uaword	0x309
	.byte	0x3
	.uaword	0x1266
	.uleb128 0x1e
	.uaword	.LASF0
	.byte	0x2
	.uahalf	0x120
	.uaword	0x2f1
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_Block_IsWriteable"
	.byte	0x2
	.byte	0xef
	.byte	0x1
	.uaword	0x27d
	.byte	0x3
	.uaword	0x130e
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x2
	.byte	0xef
	.uaword	0x2f1
	.uleb128 0x1a
	.uaword	.LASF3
	.byte	0x2
	.byte	0xf0
	.uaword	0x1cb
	.uleb128 0x21
	.string	"Errors_puo"
	.byte	0x2
	.byte	0xf1
	.uaword	0xe52
	.uleb128 0x1b
	.string	"IsBlockInRom_b"
	.byte	0x2
	.byte	0xf3
	.uaword	0x27d
	.uleb128 0x1b
	.string	"isWriteOnceBlockWriteable_b"
	.byte	0x2
	.byte	0xf4
	.uaword	0x27d
	.uleb128 0x1b
	.string	"isBlockWriteProtected_b"
	.byte	0x2
	.byte	0xf5
	.uaword	0x27d
	.byte	0
	.uleb128 0x22
	.string	"NvM_Prv_WriteAll_UpdateBlockData"
	.byte	0x1
	.byte	0x57
	.byte	0x1
	.uaword	.LFB112
	.uaword	.LFE112
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1398
	.uleb128 0x23
	.uaword	0x1024
	.uaword	.LBB52
	.uaword	.LBE52
	.byte	0x1
	.byte	0x5b
	.uaword	0x1363
	.uleb128 0x24
	.uaword	0x1059
	.byte	0x2
	.uleb128 0x24
	.uaword	0x104d
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x106c
	.uaword	.LBB54
	.uaword	.Ldebug_ranges0+0
	.byte	0x1
	.byte	0x65
	.uaword	0x1383
	.uleb128 0x24
	.uaword	0x109b
	.byte	0x4
	.uleb128 0x24
	.uaword	0x108f
	.byte	0
	.byte	0
	.uleb128 0x26
	.uaword	.LVL2
	.byte	0x1
	.uaword	0x1a49
	.uleb128 0x27
	.byte	0x1
	.byte	0x64
	.byte	0x5
	.byte	0x3
	.uaword	NvM_Prv_WriteAll_IsBlockParticipating
	.byte	0
	.byte	0
	.uleb128 0x19
	.string	"NvM_Prv_WriteAll_IsBlockParticipating"
	.byte	0x1
	.byte	0x6b
	.byte	0x1
	.uaword	0x27d
	.byte	0x1
	.uaword	0x144d
	.uleb128 0x1a
	.uaword	.LASF0
	.byte	0x1
	.byte	0x6b
	.uaword	0x2f1
	.uleb128 0x1b
	.string	"IsBlockValid_b"
	.byte	0x1
	.byte	0x6d
	.uaword	0x27d
	.uleb128 0x1b
	.string	"IsBlockChanged_b"
	.byte	0x1
	.byte	0x6e
	.uaword	0x27d
	.uleb128 0x1b
	.string	"IsTrgWriteAllActive_b"
	.byte	0x1
	.byte	0x6f
	.uaword	0x27d
	.uleb128 0x1b
	.string	"errors_uo"
	.byte	0x1
	.byte	0x71
	.uaword	0xe33
	.uleb128 0x1b
	.string	"IsBlockWriteable_b"
	.byte	0x1
	.byte	0x72
	.uaword	0x27d
	.byte	0
	.uleb128 0x28
	.uaword	0x1398
	.uaword	.LFB113
	.uaword	.LFE113
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x158f
	.uleb128 0x29
	.uaword	0x13cb
	.uaword	.LLST0
	.uleb128 0x2a
	.uaword	0x13d6
	.uleb128 0x2a
	.uaword	0x13ec
	.uleb128 0x2a
	.uaword	0x1404
	.uleb128 0x2b
	.uaword	0x1421
	.byte	0
	.uleb128 0x2a
	.uaword	0x1432
	.uleb128 0x25
	.uaword	0x10a8
	.uaword	.LBB90
	.uaword	.Ldebug_ranges0+0x20
	.byte	0x1
	.byte	0x72
	.uaword	0x14a2
	.uleb128 0x29
	.uaword	0x10d2
	.uaword	.LLST1
	.byte	0
	.uleb128 0x25
	.uaword	0x1266
	.uaword	.LBB93
	.uaword	.Ldebug_ranges0+0x38
	.byte	0x1
	.byte	0x72
	.uaword	0x1554
	.uleb128 0x2c
	.uaword	0x12a3
	.byte	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+5153
	.sleb128 0
	.uleb128 0x29
	.uaword	0x1298
	.uaword	.LLST2
	.uleb128 0x29
	.uaword	0x128d
	.uaword	.LLST3
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x38
	.uleb128 0x2a
	.uaword	0x12b5
	.uleb128 0x2e
	.uaword	0x12cb
	.uaword	.LLST4
	.uleb128 0x2a
	.uaword	0x12ee
	.uleb128 0x25
	.uaword	0xfb2
	.uaword	.LBB95
	.uaword	.Ldebug_ranges0+0x60
	.byte	0x2
	.byte	0xf3
	.uaword	0x1539
	.uleb128 0x29
	.uaword	0xfe0
	.uaword	.LLST2
	.uleb128 0x29
	.uaword	0xfd5
	.uaword	.LLST3
	.uleb128 0x2f
	.uaword	0xf30
	.uaword	.LBB97
	.uaword	.Ldebug_ranges0+0x80
	.byte	0x2
	.byte	0xb9
	.uleb128 0x29
	.uaword	0xf52
	.uaword	.LLST3
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x80
	.uleb128 0x2e
	.uaword	0xf5d
	.uaword	.LLST8
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x2f
	.uaword	0xfec
	.uaword	.LBB104
	.uaword	.Ldebug_ranges0+0x98
	.byte	0x2
	.byte	0xf5
	.uleb128 0x29
	.uaword	0x1018
	.uaword	.LLST9
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x11a0
	.uaword	.LBB114
	.uaword	.Ldebug_ranges0+0xb0
	.byte	0x1
	.byte	0x84
	.uaword	0x157a
	.uleb128 0x29
	.uaword	0x11d0
	.uaword	.LLST10
	.uleb128 0x29
	.uaword	0x11c5
	.uaword	.LLST11
	.byte	0
	.uleb128 0x30
	.uaword	.LVL15
	.uaword	0x1a81
	.uleb128 0x27
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x27
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x31
	.string	"NvM_Prv_WriteAll_FindBlocks"
	.byte	0x1
	.byte	0x97
	.byte	0x1
	.byte	0x1
	.uaword	0x15c0
	.uleb128 0x1c
	.uaword	.LASF0
	.byte	0x1
	.byte	0x99
	.uaword	0x2f1
	.byte	0
	.uleb128 0x22
	.string	"NvM_Prv_WriteAll_Finalize"
	.byte	0x1
	.byte	0xd5
	.byte	0x1
	.uaword	.LFB115
	.uaword	.LFE115
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uaword	0x1865
	.uleb128 0x25
	.uaword	0x158f
	.uaword	.LBB158
	.uaword	.Ldebug_ranges0+0xc8
	.byte	0x1
	.byte	0xd7
	.uaword	0x183c
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0xc8
	.uleb128 0x2e
	.uaword	0x15b4
	.uaword	.LLST12
	.uleb128 0x25
	.uaword	0x1398
	.uaword	.LBB160
	.uaword	.Ldebug_ranges0+0xe8
	.byte	0x1
	.byte	0xa3
	.uaword	0x1759
	.uleb128 0x29
	.uaword	0x13cb
	.uaword	.LLST13
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0xe8
	.uleb128 0x2a
	.uaword	0x13d6
	.uleb128 0x2a
	.uaword	0x13ec
	.uleb128 0x2a
	.uaword	0x1404
	.uleb128 0x2e
	.uaword	0x1421
	.uaword	.LLST14
	.uleb128 0x2a
	.uaword	0x1432
	.uleb128 0x25
	.uaword	0x10a8
	.uaword	.LBB162
	.uaword	.Ldebug_ranges0+0x110
	.byte	0x1
	.byte	0x72
	.uaword	0x166a
	.uleb128 0x29
	.uaword	0x10d2
	.uaword	.LLST13
	.byte	0
	.uleb128 0x25
	.uaword	0x1266
	.uaword	.LBB169
	.uaword	.Ldebug_ranges0+0x138
	.byte	0x1
	.byte	0x72
	.uaword	0x171d
	.uleb128 0x29
	.uaword	0x12a3
	.uaword	.LLST16
	.uleb128 0x29
	.uaword	0x1298
	.uaword	.LLST17
	.uleb128 0x29
	.uaword	0x128d
	.uaword	.LLST18
	.uleb128 0x2d
	.uaword	.Ldebug_ranges0+0x138
	.uleb128 0x2a
	.uaword	0x12b5
	.uleb128 0x2e
	.uaword	0x12cb
	.uaword	.LLST19
	.uleb128 0x2a
	.uaword	0x12ee
	.uleb128 0x25
	.uaword	0xfb2
	.uaword	.LBB171
	.uaword	.Ldebug_ranges0+0x158
	.byte	0x2
	.byte	0xf3
	.uaword	0x1702
	.uleb128 0x29
	.uaword	0xfe0
	.uaword	.LLST17
	.uleb128 0x29
	.uaword	0xfd5
	.uaword	.LLST18
	.uleb128 0x32
	.uaword	0xf30
	.uaword	.LBB173
	.uaword	.LBE173
	.byte	0x2
	.byte	0xb9
	.uleb128 0x29
	.uaword	0xf52
	.uaword	.LLST18
	.uleb128 0x33
	.uaword	.LBB174
	.uaword	.LBE174
	.uleb128 0x2e
	.uaword	0xf5d
	.uaword	.LLST23
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x32
	.uaword	0xfec
	.uaword	.LBB178
	.uaword	.LBE178
	.byte	0x2
	.byte	0xf5
	.uleb128 0x29
	.uaword	0x1018
	.uaword	.LLST24
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x11a0
	.uaword	.LBB185
	.uaword	.LBE185
	.byte	0x1
	.byte	0x84
	.uaword	0x1743
	.uleb128 0x29
	.uaword	0x11d0
	.uaword	.LLST25
	.uleb128 0x29
	.uaword	0x11c5
	.uaword	.LLST26
	.byte	0
	.uleb128 0x30
	.uaword	.LVL42
	.uaword	0x1a81
	.uleb128 0x27
	.byte	0x1
	.byte	0x56
	.byte	0x1
	.byte	0x30
	.uleb128 0x27
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x25
	.uaword	0x106c
	.uaword	.LBB191
	.uaword	.Ldebug_ranges0+0x178
	.byte	0x1
	.byte	0xca
	.uaword	0x177f
	.uleb128 0x29
	.uaword	0x109b
	.uaword	.LLST27
	.uleb128 0x29
	.uaword	0x108f
	.uaword	.LLST28
	.byte	0
	.uleb128 0x25
	.uaword	0x122c
	.uaword	.LBB195
	.uaword	.Ldebug_ranges0+0x198
	.byte	0x1
	.byte	0xba
	.uaword	0x179c
	.uleb128 0x29
	.uaword	0x1259
	.uaword	.LLST29
	.byte	0
	.uleb128 0x25
	.uaword	0x1024
	.uaword	.LBB202
	.uaword	.Ldebug_ranges0+0x1b8
	.byte	0x1
	.byte	0xbc
	.uaword	0x17c2
	.uleb128 0x29
	.uaword	0x1059
	.uaword	.LLST30
	.uleb128 0x29
	.uaword	0x104d
	.uaword	.LLST31
	.byte	0
	.uleb128 0x23
	.uaword	0x11e9
	.uaword	.LBB205
	.uaword	.LBE205
	.byte	0x1
	.byte	0xa1
	.uaword	0x17f2
	.uleb128 0x29
	.uaword	0x120b
	.uaword	.LLST32
	.uleb128 0x33
	.uaword	.LBB206
	.uaword	.LBE206
	.uleb128 0x2e
	.uaword	0x1216
	.uaword	.LLST33
	.byte	0
	.byte	0
	.uleb128 0x23
	.uaword	0x1024
	.uaword	.LBB211
	.uaword	.LBE211
	.byte	0x1
	.byte	0xa8
	.uaword	0x1818
	.uleb128 0x29
	.uaword	0x1059
	.uaword	.LLST34
	.uleb128 0x29
	.uaword	0x104d
	.uaword	.LLST35
	.byte	0
	.uleb128 0x32
	.uaword	0x106c
	.uaword	.LBB213
	.uaword	.LBE213
	.byte	0x1
	.byte	0xab
	.uleb128 0x29
	.uaword	0x109b
	.uaword	.LLST36
	.uleb128 0x29
	.uaword	0x108f
	.uaword	.LLST37
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x34
	.uaword	.LVL36
	.uaword	0x1a49
	.uaword	0x184f
	.uleb128 0x27
	.byte	0x1
	.byte	0x64
	.byte	0x1
	.byte	0x30
	.byte	0
	.uleb128 0x26
	.uaword	.LVL37
	.byte	0x1
	.uaword	0x1ad0
	.uleb128 0x27
	.byte	0x1
	.byte	0x55
	.byte	0x1
	.byte	0x32
	.uleb128 0x27
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x3d
	.byte	0
	.byte	0
	.uleb128 0x35
	.byte	0x1
	.string	"NvM_WriteAll"
	.byte	0x1
	.byte	0x3f
	.byte	0x1
	.uaword	.LFB111
	.uaword	.LFE111
	.uaword	.LLST38
	.byte	0x1
	.uaword	0x18d8
	.uleb128 0x36
	.string	"QueueEntry_st"
	.byte	0x1
	.byte	0x46
	.uaword	0x772
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x36
	.string	"Configuration_st"
	.byte	0x1
	.byte	0x47
	.uaword	0xf02
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x26
	.uaword	.LVL43
	.byte	0x1
	.uaword	0x1afd
	.uleb128 0x27
	.byte	0x1
	.byte	0x65
	.byte	0x2
	.byte	0x91
	.sleb128 -20
	.uleb128 0x27
	.byte	0x1
	.byte	0x64
	.byte	0x2
	.byte	0x91
	.sleb128 -12
	.uleb128 0x27
	.byte	0x1
	.byte	0x54
	.byte	0x1
	.byte	0x30
	.byte	0
	.byte	0
	.uleb128 0x37
	.string	"NvM_Prv_Common_cst"
	.byte	0x8
	.uahalf	0x16d
	.uaword	0x18f5
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0xb4f
	.uleb128 0x38
	.uaword	0xd67
	.uaword	0x190a
	.uleb128 0x39
	.uaword	0x2c3
	.byte	0x3b
	.byte	0
	.uleb128 0x37
	.string	"NvM_Prv_BlockDescriptors_acst"
	.byte	0x8
	.uahalf	0x172
	.uaword	0x1932
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x18fa
	.uleb128 0x38
	.uaword	0xdc8
	.uaword	0x1947
	.uleb128 0x39
	.uaword	0x2c3
	.byte	0x39
	.byte	0
	.uleb128 0x37
	.string	"NvM_Prv_PersId_BlockId_acst"
	.byte	0x8
	.uahalf	0x176
	.uaword	0x196d
	.byte	0x1
	.byte	0x1
	.uleb128 0x7
	.uaword	0x1937
	.uleb128 0x38
	.uaword	0x1cb
	.uaword	0x1982
	.uleb128 0x39
	.uaword	0x2c3
	.byte	0x3b
	.byte	0
	.uleb128 0x3a
	.string	"NvM_Prv_stBlock_au8"
	.byte	0x9
	.byte	0x54
	.uaword	0x1972
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.uaword	0x1f6
	.uaword	0x19af
	.uleb128 0x39
	.uaword	0x2c3
	.byte	0x3b
	.byte	0
	.uleb128 0x3a
	.string	"NvM_Prv_stRequests_au16"
	.byte	0x9
	.byte	0x6b
	.uaword	0x199f
	.byte	0x1
	.byte	0x1
	.uleb128 0x38
	.uaword	0x309
	.uaword	0x19e0
	.uleb128 0x39
	.uaword	0x2c3
	.byte	0x3b
	.byte	0
	.uleb128 0x3a
	.string	"NvM_Prv_stRequestResult_au8"
	.byte	0x9
	.byte	0x74
	.uaword	0x19d0
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"NvM_Prv_idxDataSet_au8"
	.byte	0x9
	.byte	0x78
	.uaword	0x1972
	.byte	0x1
	.byte	0x1
	.uleb128 0x3a
	.string	"NvM_Prv_idConfigStored_u16"
	.byte	0x9
	.byte	0x81
	.uaword	0x1f6
	.byte	0x1
	.byte	0x1
	.uleb128 0x3b
	.byte	0x1
	.string	"NvM_Prv_Block_SetIsNvmEnqueuingForMulti"
	.byte	0x9
	.byte	0x92
	.byte	0x1
	.byte	0x1
	.uaword	0x1a81
	.uleb128 0xc
	.uaword	0xdeb
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"NvM_Prv_ErrorDetection_ReportServiceInitiationErrors"
	.byte	0xb
	.byte	0x6f
	.byte	0x1
	.byte	0x1
	.uaword	0x1ad0
	.uleb128 0xc
	.uaword	0x629
	.uleb128 0xc
	.uaword	0x2f1
	.uleb128 0xc
	.uaword	0xe33
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"BswM_NvM_CurrentJobMode"
	.byte	0xc
	.byte	0x21
	.byte	0x1
	.byte	0x1
	.uaword	0x1afd
	.uleb128 0xc
	.uaword	0x1cb
	.uleb128 0xc
	.uaword	0x309
	.byte	0
	.uleb128 0x3b
	.byte	0x1
	.string	"NvM_Prv_Service_InitiateMulti"
	.byte	0xa
	.byte	0xad
	.byte	0x1
	.byte	0x1
	.uaword	0x1b35
	.uleb128 0xc
	.uaword	0x6a5
	.uleb128 0xc
	.uaword	0x1b35
	.uleb128 0xc
	.uaword	0x1b40
	.byte	0
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1b3b
	.uleb128 0x7
	.uaword	0x772
	.uleb128 0x5
	.byte	0x4
	.uaword	0x1b46
	.uleb128 0x7
	.uaword	0xf02
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
	.byte	0
	.byte	0
	.uleb128 0x5
	.uleb128 0xf
	.byte	0
	.uleb128 0xb
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x6
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x7
	.uleb128 0x26
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x8
	.uleb128 0x26
	.byte	0
	.byte	0
	.byte	0
	.uleb128 0x9
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
	.uleb128 0xa
	.uleb128 0x15
	.byte	0
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xb
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xc
	.uleb128 0x5
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0xd
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
	.uleb128 0xe
	.uleb128 0x28
	.byte	0
	.uleb128 0x3
	.uleb128 0x8
	.uleb128 0x1c
	.uleb128 0xd
	.byte	0
	.byte	0
	.uleb128 0xf
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
	.uleb128 0x10
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
	.uleb128 0x11
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
	.uleb128 0x12
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
	.uleb128 0x38
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x14
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
	.uleb128 0x15
	.byte	0x1
	.uleb128 0x27
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x18
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
	.uleb128 0x19
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1a
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
	.byte	0
	.byte	0
	.uleb128 0x1b
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
	.uleb128 0x1c
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
	.uleb128 0x1d
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
	.uleb128 0x1e
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
	.uleb128 0x1f
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
	.uleb128 0x20
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
	.uleb128 0x21
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
	.uleb128 0x22
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x24
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x1c
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x26
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x2115
	.uleb128 0xc
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x27
	.uleb128 0x410a
	.byte	0
	.uleb128 0x2
	.uleb128 0xa
	.uleb128 0x2111
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x28
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
	.uleb128 0x29
	.uleb128 0x5
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
	.uleb128 0x5
	.byte	0
	.uleb128 0x31
	.uleb128 0x13
	.uleb128 0x2
	.uleb128 0xa
	.byte	0
	.byte	0
	.uleb128 0x2d
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x55
	.uleb128 0x6
	.byte	0
	.byte	0
	.uleb128 0x2e
	.uleb128 0x34
	.byte	0
	.uleb128 0x31
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
	.uleb128 0x30
	.uleb128 0x4109
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x31
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x31
	.uleb128 0x2e
	.byte	0x1
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
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x32
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
	.uleb128 0x33
	.uleb128 0xb
	.byte	0x1
	.uleb128 0x11
	.uleb128 0x1
	.uleb128 0x12
	.uleb128 0x1
	.byte	0
	.byte	0
	.uleb128 0x34
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
	.uleb128 0x35
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
	.uleb128 0x6
	.uleb128 0x2117
	.uleb128 0xc
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x36
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
	.uleb128 0x37
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
	.uleb128 0x38
	.uleb128 0x1
	.byte	0x1
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x1
	.uleb128 0x13
	.byte	0
	.byte	0
	.uleb128 0x39
	.uleb128 0x21
	.byte	0
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x2f
	.uleb128 0xb
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
	.uleb128 0xb
	.uleb128 0x49
	.uleb128 0x13
	.uleb128 0x3f
	.uleb128 0xc
	.uleb128 0x3c
	.uleb128 0xc
	.byte	0
	.byte	0
	.uleb128 0x3b
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
	.byte	0
.section .debug_loc,"",@progbits
.Ldebug_loc0:
.LLST0:
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LFE113
	.uahalf	0x4
	.byte	0xf3
	.uleb128 0x1
	.byte	0x54
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST1:
	.uaword	.LVL3
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST2:
	.uaword	.LVL4
	.uaword	.LVL6
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	.LVL9
	.uaword	.LVL10
	.uahalf	0x2
	.byte	0x8f
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST3:
	.uaword	.LVL4
	.uaword	.LVL14
	.uahalf	0x1
	.byte	0x54
	.uaword	.LVL14
	.uaword	.LVL15-1
	.uahalf	0x1
	.byte	0x55
	.uaword	0
	.uaword	0
.LLST4:
	.uaword	.LVL7
	.uaword	.LVL12
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST8:
	.uaword	.LVL4
	.uaword	.LVL5
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL9
	.uaword	.LVL11
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST9:
	.uaword	.LVL7
	.uaword	.LVL11
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST10:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL15
	.uaword	.LFE113
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST11:
	.uaword	.LVL8
	.uaword	.LVL9
	.uahalf	0x1
	.byte	0x54
	.uaword	0
	.uaword	0
.LLST12:
	.uaword	.LVL16
	.uaword	.LVL17
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x3
	.byte	0x7f
	.sleb128 1
	.byte	0x9f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x7f
	.sleb128 0
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL34
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE115
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST13:
	.uaword	.LVL22
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE115
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST14:
	.uaword	.LVL22
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE115
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST16:
	.uaword	.LVL24
	.uaword	.LVL35
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+5695
	.sleb128 0
	.uaword	.LVL37
	.uaword	.LFE115
	.uahalf	0x6
	.byte	0xf2
	.uaword	.Ldebug_info0+5695
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST17:
	.uaword	.LVL24
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL37
	.uaword	.LVL42-1
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	0
	.uaword	0
.LLST18:
	.uaword	.LVL24
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE115
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST19:
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x31
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST23:
	.uaword	.LVL24
	.uaword	.LVL26
	.uahalf	0x2
	.byte	0x8f
	.sleb128 44
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2c
	.uaword	.LVL28
	.uaword	.LVL33
	.uahalf	0xa
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x34
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2c
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0xa
	.byte	0x7f
	.sleb128 -1
	.byte	0x8
	.byte	0x34
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2c
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0xa
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x34
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2c
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x2
	.byte	0x8f
	.sleb128 44
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x7
	.byte	0x8c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2c
	.uaword	.LVL42-1
	.uaword	.LFE115
	.uahalf	0xa
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x34
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x2c
	.uaword	0
	.uaword	0
.LLST24:
	.uaword	.LVL25
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST25:
	.uaword	.LVL27
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	.LVL42
	.uaword	.LFE115
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST26:
	.uaword	.LVL27
	.uaword	.LVL29
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL42
	.uaword	.LFE115
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST27:
	.uaword	.LVL32
	.uaword	.LVL35
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST28:
	.uaword	.LVL32
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST29:
	.uaword	.LVL29
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST30:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x2
	.byte	0x34
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST31:
	.uaword	.LVL30
	.uaword	.LVL31
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST32:
	.uaword	.LVL17
	.uaword	.LVL18
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL18
	.uaword	.LVL19
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL20
	.uaword	.LVL33
	.uahalf	0x1
	.byte	0x5f
	.uaword	.LVL33
	.uaword	.LVL35
	.uahalf	0x3
	.byte	0x7f
	.sleb128 -1
	.byte	0x9f
	.uaword	.LVL37
	.uaword	.LFE115
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST33:
	.uaword	.LVL20
	.uaword	.LVL21
	.uahalf	0x2
	.byte	0x30
	.byte	0x9f
	.uaword	.LVL21
	.uaword	.LVL23
	.uahalf	0x2
	.byte	0x82
	.sleb128 0
	.uaword	.LVL23
	.uaword	.LVL26
	.uahalf	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.uaword	.LVL26
	.uaword	.LVL28
	.uahalf	0x8
	.byte	0x8c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.uaword	.LVL28
	.uaword	.LVL29
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x34
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.uaword	.LVL37
	.uaword	.LVL39
	.uahalf	0xb
	.byte	0x7f
	.sleb128 0
	.byte	0x8
	.byte	0x34
	.byte	0x1e
	.byte	0x8c
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.uaword	.LVL40
	.uaword	.LVL41
	.uahalf	0x3
	.byte	0x8f
	.sleb128 4
	.byte	0x6
	.uaword	.LVL41
	.uaword	.LVL42-1
	.uahalf	0x8
	.byte	0x8c
	.sleb128 0
	.byte	0x73
	.sleb128 0
	.byte	0x22
	.byte	0x23
	.uleb128 0x4
	.byte	0x6
	.uaword	0
	.uaword	0
.LLST34:
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST35:
	.uaword	.LVL37
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST36:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x2
	.byte	0x32
	.byte	0x9f
	.uaword	0
	.uaword	0
.LLST37:
	.uaword	.LVL39
	.uaword	.LVL40
	.uahalf	0x1
	.byte	0x5f
	.uaword	0
	.uaword	0
.LLST38:
	.uaword	.LFB111
	.uaword	.LCFI0
	.uahalf	0x2
	.byte	0x8a
	.sleb128 0
	.uaword	.LCFI0
	.uaword	.LFE111
	.uahalf	0x2
	.byte	0x8a
	.sleb128 24
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
	.uaword	.LFB112
	.uaword	.LFE112-.LFB112
	.uaword	.LFB113
	.uaword	.LFE113-.LFB113
	.uaword	.LFB115
	.uaword	.LFE115-.LFB115
	.uaword	.LFB111
	.uaword	.LFE111-.LFB111
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LBB54
	.uaword	.LBE54
	.uaword	.LBB58
	.uaword	.LBE58
	.uaword	.LBB59
	.uaword	.LBE59
	.uaword	0
	.uaword	0
	.uaword	.LBB90
	.uaword	.LBE90
	.uaword	.LBB112
	.uaword	.LBE112
	.uaword	0
	.uaword	0
	.uaword	.LBB93
	.uaword	.LBE93
	.uaword	.LBB113
	.uaword	.LBE113
	.uaword	.LBB117
	.uaword	.LBE117
	.uaword	.LBB118
	.uaword	.LBE118
	.uaword	0
	.uaword	0
	.uaword	.LBB95
	.uaword	.LBE95
	.uaword	.LBB103
	.uaword	.LBE103
	.uaword	.LBB108
	.uaword	.LBE108
	.uaword	0
	.uaword	0
	.uaword	.LBB97
	.uaword	.LBE97
	.uaword	.LBB100
	.uaword	.LBE100
	.uaword	0
	.uaword	0
	.uaword	.LBB104
	.uaword	.LBE104
	.uaword	.LBB107
	.uaword	.LBE107
	.uaword	0
	.uaword	0
	.uaword	.LBB114
	.uaword	.LBE114
	.uaword	.LBB119
	.uaword	.LBE119
	.uaword	0
	.uaword	0
	.uaword	.LBB158
	.uaword	.LBE158
	.uaword	.LBB218
	.uaword	.LBE218
	.uaword	.LBB219
	.uaword	.LBE219
	.uaword	0
	.uaword	0
	.uaword	.LBB160
	.uaword	.LBE160
	.uaword	.LBB199
	.uaword	.LBE199
	.uaword	.LBB207
	.uaword	.LBE207
	.uaword	.LBB215
	.uaword	.LBE215
	.uaword	0
	.uaword	0
	.uaword	.LBB162
	.uaword	.LBE162
	.uaword	.LBB167
	.uaword	.LBE167
	.uaword	.LBB168
	.uaword	.LBE168
	.uaword	.LBB183
	.uaword	.LBE183
	.uaword	0
	.uaword	0
	.uaword	.LBB169
	.uaword	.LBE169
	.uaword	.LBB184
	.uaword	.LBE184
	.uaword	.LBB187
	.uaword	.LBE187
	.uaword	0
	.uaword	0
	.uaword	.LBB171
	.uaword	.LBE171
	.uaword	.LBB177
	.uaword	.LBE177
	.uaword	.LBB180
	.uaword	.LBE180
	.uaword	0
	.uaword	0
	.uaword	.LBB191
	.uaword	.LBE191
	.uaword	.LBB200
	.uaword	.LBE200
	.uaword	.LBB210
	.uaword	.LBE210
	.uaword	0
	.uaword	0
	.uaword	.LBB195
	.uaword	.LBE195
	.uaword	.LBB201
	.uaword	.LBE201
	.uaword	.LBB208
	.uaword	.LBE208
	.uaword	0
	.uaword	0
	.uaword	.LBB202
	.uaword	.LBE202
	.uaword	.LBB209
	.uaword	.LBE209
	.uaword	0
	.uaword	0
	.uaword	.LFB112
	.uaword	.LFE112
	.uaword	.LFB113
	.uaword	.LFE113
	.uaword	.LFB115
	.uaword	.LFE115
	.uaword	.LFB111
	.uaword	.LFE111
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
.LASF3:
	.string	"idxDataset_u8"
.LASF2:
	.string	"nrNvBlocks_u8"
.LASF1:
	.string	"ServiceBit_uo"
.LASF0:
	.string	"idBlock_uo"
	.extern	NvM_Prv_Service_InitiateMulti,STT_FUNC,0
	.extern	BswM_NvM_CurrentJobMode,STT_FUNC,0
	.extern	NvM_Prv_ErrorDetection_ReportServiceInitiationErrors,STT_FUNC,0
	.extern	NvM_Prv_stBlock_au8,STT_OBJECT,60
	.extern	NvM_Prv_BlockDescriptors_acst,STT_OBJECT,3120
	.extern	NvM_Prv_idxDataSet_au8,STT_OBJECT,60
	.extern	NvM_Prv_Block_SetIsNvmEnqueuingForMulti,STT_FUNC,0
	.extern	NvM_Prv_stRequests_au16,STT_OBJECT,120
	.extern	NvM_Prv_stRequestResult_au8,STT_OBJECT,60
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
