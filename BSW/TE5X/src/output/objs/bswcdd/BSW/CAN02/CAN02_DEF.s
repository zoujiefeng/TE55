	.file	"CAN02_DEF.c"
.section .text,"ax",@progbits
.Ltext0:
.section .text.CAN02_vidInit,"ax",@progbits
	.align 1
	.global	CAN02_vidInit
	.type	CAN02_vidInit, @function
CAN02_vidInit:
.LFB0:
	.file 1 "bswcdd\\BSW\\CAN02\\CAN02_DEF.c"
	.loc 1 105 0
	.loc 1 106 0
	mov	%d15, 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx01
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx01, %d15
	.loc 1 107 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx02
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx02, %d15
	.loc 1 108 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx03
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx03, %d15
	.loc 1 109 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx04
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx04, %d15
	.loc 1 110 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx05
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx05, %d15
	.loc 1 111 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx06
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx06, %d15
	.loc 1 112 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx07
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx07, %d15
	.loc 1 113 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx08
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx08, %d15
	.loc 1 114 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx09
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx09, %d15
	.loc 1 115 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx10
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx10, %d15
	.loc 1 116 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx11
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx11, %d15
	.loc 1 117 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx12
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx12, %d15
	.loc 1 118 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx13
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx13, %d15
	.loc 1 119 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx14
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx14, %d15
	.loc 1 120 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx15
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx15, %d15
	.loc 1 121 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx16
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx16, %d15
	.loc 1 122 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx17
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx17, %d15
	.loc 1 123 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx18
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx18, %d15
	.loc 1 124 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx19
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx19, %d15
	.loc 1 125 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx20
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx20, %d15
	.loc 1 126 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx21
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx21, %d15
	.loc 1 127 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx22
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx22, %d15
	.loc 1 128 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx23
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx23, %d15
	.loc 1 129 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx24
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx24, %d15
	.loc 1 130 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx25
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx25, %d15
	.loc 1 131 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx26
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx26, %d15
	.loc 1 132 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx27
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx27, %d15
	.loc 1 133 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx28
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx28, %d15
	.loc 1 134 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx29
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx29, %d15
	.loc 1 135 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx30
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx30, %d15
	.loc 1 136 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx31
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx31, %d15
	.loc 1 137 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx32
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx32, %d15
	.loc 1 138 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx33
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx33, %d15
	.loc 1 139 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx34
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx34, %d15
	.loc 1 140 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx35
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx35, %d15
	.loc 1 141 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx36
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx36, %d15
	.loc 1 142 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx37
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx37, %d15
	.loc 1 143 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx38
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx38, %d15
	.loc 1 144 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx39
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx39, %d15
	.loc 1 145 0
	movh.a	%a15, hi:BSW_bRxTOutFlag_Can02_Rx40
	st.b	[%a15] lo:BSW_bRxTOutFlag_Can02_Rx40, %d15
	.loc 1 147 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx01
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx01, %d15
	.loc 1 148 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx02
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx02, %d15
	.loc 1 149 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx03
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx03, %d15
	.loc 1 150 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx04
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx04, %d15
	.loc 1 151 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx05
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx05, %d15
	.loc 1 152 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx06
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx06, %d15
	.loc 1 153 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx07
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx07, %d15
	.loc 1 154 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx08
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx08, %d15
	.loc 1 155 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx09
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx09, %d15
	.loc 1 156 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx10
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx10, %d15
	.loc 1 157 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx11
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx11, %d15
	.loc 1 158 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx12
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx12, %d15
	.loc 1 159 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx13
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx13, %d15
	.loc 1 160 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx14
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx14, %d15
	.loc 1 161 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx15
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx15, %d15
	.loc 1 162 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx16
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx16, %d15
	.loc 1 163 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx17
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx17, %d15
	.loc 1 164 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx18
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx18, %d15
	.loc 1 165 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx19
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx19, %d15
	.loc 1 166 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx20
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx20, %d15
	.loc 1 167 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx21
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx21, %d15
	.loc 1 168 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx22
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx22, %d15
	.loc 1 169 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx23
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx23, %d15
	.loc 1 170 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx24
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx24, %d15
	.loc 1 171 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx25
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx25, %d15
	.loc 1 172 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx26
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx26, %d15
	.loc 1 173 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx27
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx27, %d15
	.loc 1 174 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx28
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx28, %d15
	.loc 1 175 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx29
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx29, %d15
	.loc 1 176 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx30
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx30, %d15
	.loc 1 177 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx31
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx31, %d15
	.loc 1 178 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx32
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx32, %d15
	.loc 1 179 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx33
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx33, %d15
	.loc 1 180 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx34
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx34, %d15
	.loc 1 181 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx35
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx35, %d15
	.loc 1 182 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx36
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx36, %d15
	.loc 1 183 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx37
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx37, %d15
	.loc 1 184 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx38
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx38, %d15
	.loc 1 185 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx39
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx39, %d15
	.loc 1 186 0
	movh.a	%a15, hi:BSW_bMsgValidState_Can02_Rx40
	st.b	[%a15] lo:BSW_bMsgValidState_Can02_Rx40, %d15
	ret
.LFE0:
	.size	CAN02_vidInit, .-CAN02_vidInit
	.global	BSW_bMsgValidState_Can02_Rx40
.section .bss.a1.BSW_bMsgValidState_Can02_Rx40,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx40, @object
	.size	BSW_bMsgValidState_Can02_Rx40, 1
BSW_bMsgValidState_Can02_Rx40:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx39
.section .bss.a1.BSW_bMsgValidState_Can02_Rx39,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx39, @object
	.size	BSW_bMsgValidState_Can02_Rx39, 1
BSW_bMsgValidState_Can02_Rx39:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx38
.section .bss.a1.BSW_bMsgValidState_Can02_Rx38,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx38, @object
	.size	BSW_bMsgValidState_Can02_Rx38, 1
BSW_bMsgValidState_Can02_Rx38:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx37
.section .bss.a1.BSW_bMsgValidState_Can02_Rx37,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx37, @object
	.size	BSW_bMsgValidState_Can02_Rx37, 1
BSW_bMsgValidState_Can02_Rx37:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx36
.section .bss.a1.BSW_bMsgValidState_Can02_Rx36,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx36, @object
	.size	BSW_bMsgValidState_Can02_Rx36, 1
BSW_bMsgValidState_Can02_Rx36:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx35
.section .bss.a1.BSW_bMsgValidState_Can02_Rx35,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx35, @object
	.size	BSW_bMsgValidState_Can02_Rx35, 1
BSW_bMsgValidState_Can02_Rx35:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx34
.section .bss.a1.BSW_bMsgValidState_Can02_Rx34,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx34, @object
	.size	BSW_bMsgValidState_Can02_Rx34, 1
BSW_bMsgValidState_Can02_Rx34:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx33
.section .bss.a1.BSW_bMsgValidState_Can02_Rx33,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx33, @object
	.size	BSW_bMsgValidState_Can02_Rx33, 1
BSW_bMsgValidState_Can02_Rx33:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx32
.section .bss.a1.BSW_bMsgValidState_Can02_Rx32,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx32, @object
	.size	BSW_bMsgValidState_Can02_Rx32, 1
BSW_bMsgValidState_Can02_Rx32:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx31
.section .bss.a1.BSW_bMsgValidState_Can02_Rx31,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx31, @object
	.size	BSW_bMsgValidState_Can02_Rx31, 1
BSW_bMsgValidState_Can02_Rx31:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx30
.section .bss.a1.BSW_bMsgValidState_Can02_Rx30,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx30, @object
	.size	BSW_bMsgValidState_Can02_Rx30, 1
BSW_bMsgValidState_Can02_Rx30:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx29
.section .bss.a1.BSW_bMsgValidState_Can02_Rx29,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx29, @object
	.size	BSW_bMsgValidState_Can02_Rx29, 1
BSW_bMsgValidState_Can02_Rx29:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx28
.section .bss.a1.BSW_bMsgValidState_Can02_Rx28,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx28, @object
	.size	BSW_bMsgValidState_Can02_Rx28, 1
BSW_bMsgValidState_Can02_Rx28:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx27
.section .bss.a1.BSW_bMsgValidState_Can02_Rx27,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx27, @object
	.size	BSW_bMsgValidState_Can02_Rx27, 1
BSW_bMsgValidState_Can02_Rx27:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx26
.section .bss.a1.BSW_bMsgValidState_Can02_Rx26,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx26, @object
	.size	BSW_bMsgValidState_Can02_Rx26, 1
BSW_bMsgValidState_Can02_Rx26:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx25
.section .bss.a1.BSW_bMsgValidState_Can02_Rx25,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx25, @object
	.size	BSW_bMsgValidState_Can02_Rx25, 1
BSW_bMsgValidState_Can02_Rx25:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx24
.section .bss.a1.BSW_bMsgValidState_Can02_Rx24,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx24, @object
	.size	BSW_bMsgValidState_Can02_Rx24, 1
BSW_bMsgValidState_Can02_Rx24:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx23
.section .bss.a1.BSW_bMsgValidState_Can02_Rx23,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx23, @object
	.size	BSW_bMsgValidState_Can02_Rx23, 1
BSW_bMsgValidState_Can02_Rx23:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx22
.section .bss.a1.BSW_bMsgValidState_Can02_Rx22,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx22, @object
	.size	BSW_bMsgValidState_Can02_Rx22, 1
BSW_bMsgValidState_Can02_Rx22:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx21
.section .bss.a1.BSW_bMsgValidState_Can02_Rx21,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx21, @object
	.size	BSW_bMsgValidState_Can02_Rx21, 1
BSW_bMsgValidState_Can02_Rx21:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx20
.section .bss.a1.BSW_bMsgValidState_Can02_Rx20,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx20, @object
	.size	BSW_bMsgValidState_Can02_Rx20, 1
BSW_bMsgValidState_Can02_Rx20:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx19
.section .bss.a1.BSW_bMsgValidState_Can02_Rx19,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx19, @object
	.size	BSW_bMsgValidState_Can02_Rx19, 1
BSW_bMsgValidState_Can02_Rx19:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx18
.section .bss.a1.BSW_bMsgValidState_Can02_Rx18,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx18, @object
	.size	BSW_bMsgValidState_Can02_Rx18, 1
BSW_bMsgValidState_Can02_Rx18:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx17
.section .bss.a1.BSW_bMsgValidState_Can02_Rx17,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx17, @object
	.size	BSW_bMsgValidState_Can02_Rx17, 1
BSW_bMsgValidState_Can02_Rx17:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx16
.section .bss.a1.BSW_bMsgValidState_Can02_Rx16,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx16, @object
	.size	BSW_bMsgValidState_Can02_Rx16, 1
BSW_bMsgValidState_Can02_Rx16:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx15
.section .bss.a1.BSW_bMsgValidState_Can02_Rx15,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx15, @object
	.size	BSW_bMsgValidState_Can02_Rx15, 1
BSW_bMsgValidState_Can02_Rx15:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx14
.section .bss.a1.BSW_bMsgValidState_Can02_Rx14,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx14, @object
	.size	BSW_bMsgValidState_Can02_Rx14, 1
BSW_bMsgValidState_Can02_Rx14:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx13
.section .bss.a1.BSW_bMsgValidState_Can02_Rx13,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx13, @object
	.size	BSW_bMsgValidState_Can02_Rx13, 1
BSW_bMsgValidState_Can02_Rx13:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx12
.section .bss.a1.BSW_bMsgValidState_Can02_Rx12,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx12, @object
	.size	BSW_bMsgValidState_Can02_Rx12, 1
BSW_bMsgValidState_Can02_Rx12:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx11
.section .bss.a1.BSW_bMsgValidState_Can02_Rx11,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx11, @object
	.size	BSW_bMsgValidState_Can02_Rx11, 1
BSW_bMsgValidState_Can02_Rx11:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx10
.section .bss.a1.BSW_bMsgValidState_Can02_Rx10,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx10, @object
	.size	BSW_bMsgValidState_Can02_Rx10, 1
BSW_bMsgValidState_Can02_Rx10:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx09
.section .bss.a1.BSW_bMsgValidState_Can02_Rx09,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx09, @object
	.size	BSW_bMsgValidState_Can02_Rx09, 1
BSW_bMsgValidState_Can02_Rx09:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx08
.section .bss.a1.BSW_bMsgValidState_Can02_Rx08,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx08, @object
	.size	BSW_bMsgValidState_Can02_Rx08, 1
BSW_bMsgValidState_Can02_Rx08:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx07
.section .bss.a1.BSW_bMsgValidState_Can02_Rx07,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx07, @object
	.size	BSW_bMsgValidState_Can02_Rx07, 1
BSW_bMsgValidState_Can02_Rx07:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx06
.section .bss.a1.BSW_bMsgValidState_Can02_Rx06,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx06, @object
	.size	BSW_bMsgValidState_Can02_Rx06, 1
BSW_bMsgValidState_Can02_Rx06:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx05
.section .bss.a1.BSW_bMsgValidState_Can02_Rx05,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx05, @object
	.size	BSW_bMsgValidState_Can02_Rx05, 1
BSW_bMsgValidState_Can02_Rx05:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx04
.section .bss.a1.BSW_bMsgValidState_Can02_Rx04,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx04, @object
	.size	BSW_bMsgValidState_Can02_Rx04, 1
BSW_bMsgValidState_Can02_Rx04:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx03
.section .bss.a1.BSW_bMsgValidState_Can02_Rx03,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx03, @object
	.size	BSW_bMsgValidState_Can02_Rx03, 1
BSW_bMsgValidState_Can02_Rx03:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx02
.section .bss.a1.BSW_bMsgValidState_Can02_Rx02,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx02, @object
	.size	BSW_bMsgValidState_Can02_Rx02, 1
BSW_bMsgValidState_Can02_Rx02:
	.zero	1
	.global	BSW_bMsgValidState_Can02_Rx01
.section .bss.a1.BSW_bMsgValidState_Can02_Rx01,"aw",@nobits
	.type	BSW_bMsgValidState_Can02_Rx01, @object
	.size	BSW_bMsgValidState_Can02_Rx01, 1
BSW_bMsgValidState_Can02_Rx01:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx40
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx40,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx40, @object
	.size	BSW_bRxTOutFlag_Can02_Rx40, 1
BSW_bRxTOutFlag_Can02_Rx40:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx39
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx39,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx39, @object
	.size	BSW_bRxTOutFlag_Can02_Rx39, 1
BSW_bRxTOutFlag_Can02_Rx39:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx38
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx38,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx38, @object
	.size	BSW_bRxTOutFlag_Can02_Rx38, 1
BSW_bRxTOutFlag_Can02_Rx38:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx37
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx37,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx37, @object
	.size	BSW_bRxTOutFlag_Can02_Rx37, 1
BSW_bRxTOutFlag_Can02_Rx37:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx36
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx36,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx36, @object
	.size	BSW_bRxTOutFlag_Can02_Rx36, 1
BSW_bRxTOutFlag_Can02_Rx36:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx35
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx35,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx35, @object
	.size	BSW_bRxTOutFlag_Can02_Rx35, 1
BSW_bRxTOutFlag_Can02_Rx35:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx34
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx34,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx34, @object
	.size	BSW_bRxTOutFlag_Can02_Rx34, 1
BSW_bRxTOutFlag_Can02_Rx34:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx33
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx33,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx33, @object
	.size	BSW_bRxTOutFlag_Can02_Rx33, 1
BSW_bRxTOutFlag_Can02_Rx33:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx32
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx32,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx32, @object
	.size	BSW_bRxTOutFlag_Can02_Rx32, 1
BSW_bRxTOutFlag_Can02_Rx32:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx31
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx31,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx31, @object
	.size	BSW_bRxTOutFlag_Can02_Rx31, 1
BSW_bRxTOutFlag_Can02_Rx31:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx30
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx30,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx30, @object
	.size	BSW_bRxTOutFlag_Can02_Rx30, 1
BSW_bRxTOutFlag_Can02_Rx30:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx29
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx29,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx29, @object
	.size	BSW_bRxTOutFlag_Can02_Rx29, 1
BSW_bRxTOutFlag_Can02_Rx29:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx28
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx28,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx28, @object
	.size	BSW_bRxTOutFlag_Can02_Rx28, 1
BSW_bRxTOutFlag_Can02_Rx28:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx27
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx27,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx27, @object
	.size	BSW_bRxTOutFlag_Can02_Rx27, 1
BSW_bRxTOutFlag_Can02_Rx27:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx26
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx26,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx26, @object
	.size	BSW_bRxTOutFlag_Can02_Rx26, 1
BSW_bRxTOutFlag_Can02_Rx26:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx25
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx25,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx25, @object
	.size	BSW_bRxTOutFlag_Can02_Rx25, 1
BSW_bRxTOutFlag_Can02_Rx25:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx24
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx24,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx24, @object
	.size	BSW_bRxTOutFlag_Can02_Rx24, 1
BSW_bRxTOutFlag_Can02_Rx24:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx23
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx23,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx23, @object
	.size	BSW_bRxTOutFlag_Can02_Rx23, 1
BSW_bRxTOutFlag_Can02_Rx23:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx22
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx22,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx22, @object
	.size	BSW_bRxTOutFlag_Can02_Rx22, 1
BSW_bRxTOutFlag_Can02_Rx22:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx21
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx21,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx21, @object
	.size	BSW_bRxTOutFlag_Can02_Rx21, 1
BSW_bRxTOutFlag_Can02_Rx21:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx20
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx20,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx20, @object
	.size	BSW_bRxTOutFlag_Can02_Rx20, 1
BSW_bRxTOutFlag_Can02_Rx20:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx19
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx19,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx19, @object
	.size	BSW_bRxTOutFlag_Can02_Rx19, 1
BSW_bRxTOutFlag_Can02_Rx19:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx18
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx18,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx18, @object
	.size	BSW_bRxTOutFlag_Can02_Rx18, 1
BSW_bRxTOutFlag_Can02_Rx18:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx17
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx17,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx17, @object
	.size	BSW_bRxTOutFlag_Can02_Rx17, 1
BSW_bRxTOutFlag_Can02_Rx17:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx16
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx16,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx16, @object
	.size	BSW_bRxTOutFlag_Can02_Rx16, 1
BSW_bRxTOutFlag_Can02_Rx16:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx15
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx15,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx15, @object
	.size	BSW_bRxTOutFlag_Can02_Rx15, 1
BSW_bRxTOutFlag_Can02_Rx15:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx14
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx14,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx14, @object
	.size	BSW_bRxTOutFlag_Can02_Rx14, 1
BSW_bRxTOutFlag_Can02_Rx14:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx13
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx13,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx13, @object
	.size	BSW_bRxTOutFlag_Can02_Rx13, 1
BSW_bRxTOutFlag_Can02_Rx13:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx12
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx12,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx12, @object
	.size	BSW_bRxTOutFlag_Can02_Rx12, 1
BSW_bRxTOutFlag_Can02_Rx12:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx11
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx11,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx11, @object
	.size	BSW_bRxTOutFlag_Can02_Rx11, 1
BSW_bRxTOutFlag_Can02_Rx11:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx10
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx10,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx10, @object
	.size	BSW_bRxTOutFlag_Can02_Rx10, 1
BSW_bRxTOutFlag_Can02_Rx10:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx09
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx09,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx09, @object
	.size	BSW_bRxTOutFlag_Can02_Rx09, 1
BSW_bRxTOutFlag_Can02_Rx09:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx08
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx08,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx08, @object
	.size	BSW_bRxTOutFlag_Can02_Rx08, 1
BSW_bRxTOutFlag_Can02_Rx08:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx07
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx07,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx07, @object
	.size	BSW_bRxTOutFlag_Can02_Rx07, 1
BSW_bRxTOutFlag_Can02_Rx07:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx06
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx06,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx06, @object
	.size	BSW_bRxTOutFlag_Can02_Rx06, 1
BSW_bRxTOutFlag_Can02_Rx06:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx05
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx05,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx05, @object
	.size	BSW_bRxTOutFlag_Can02_Rx05, 1
BSW_bRxTOutFlag_Can02_Rx05:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx04
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx04,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx04, @object
	.size	BSW_bRxTOutFlag_Can02_Rx04, 1
BSW_bRxTOutFlag_Can02_Rx04:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx03
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx03,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx03, @object
	.size	BSW_bRxTOutFlag_Can02_Rx03, 1
BSW_bRxTOutFlag_Can02_Rx03:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx02
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx02,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx02, @object
	.size	BSW_bRxTOutFlag_Can02_Rx02, 1
BSW_bRxTOutFlag_Can02_Rx02:
	.zero	1
	.global	BSW_bRxTOutFlag_Can02_Rx01
.section .bss.a1.BSW_bRxTOutFlag_Can02_Rx01,"aw",@nobits
	.type	BSW_bRxTOutFlag_Can02_Rx01, @object
	.size	BSW_bRxTOutFlag_Can02_Rx01, 1
BSW_bRxTOutFlag_Can02_Rx01:
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
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.align 2
.LEFDE0:
.section .text,"ax",@progbits
.Letext0:
	.file 2 ".\\output\\inc/..\\..\\bsw\\integration\\Platform_Types.h"
.section .debug_info,"",@progbits
.Ldebug_info0:
	.uaword	0xfd7
	.uahalf	0x2
	.uaword	.Ldebug_abbrev0
	.byte	0x4
	.uleb128 0x1
	.ascii	"GNU C 4.9.4 build on 2020-09-01 -mli"
	.string	"cense-dir=s:\\hightec\\toolchains\\tricore\\v4.9.4.1\\bin\\../lib/gcc/tricore/4.9.4/../../../../licenses -mcpu=tc38xx -mpragma-data-sections -mtc162 -maligned-data-sections -gdwarf-2 -O3 -fno-builtin -fno-common -ffunction-sections -fdata-sections -fshort-double"
	.byte	0x1
	.string	"bswcdd\\BSW\\CAN02\\CAN02_DEF.c"
	.string	"D:\\\\1_OutProjest\\\\dongfeng\\\\90080-05101\\\\trunk\\\\BSW\\\\20Proj\\\\BSW\\\\TE5X\\\\src"
	.uaword	.Ldebug_ranges0+0
	.uaword	0
	.uaword	0
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
	.uaword	0x1ba
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
	.string	"CAN02_vidInit"
	.byte	0x1
	.byte	0x68
	.byte	0x1
	.uaword	.LFB0
	.uaword	.LFE0
	.byte	0x2
	.byte	0x8a
	.sleb128 0
	.byte	0x1
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx01"
	.byte	0x1
	.byte	0xf
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx01
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx02"
	.byte	0x1
	.byte	0x10
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx02
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx03"
	.byte	0x1
	.byte	0x11
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx03
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx04"
	.byte	0x1
	.byte	0x12
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx04
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx05"
	.byte	0x1
	.byte	0x13
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx05
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx06"
	.byte	0x1
	.byte	0x14
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx06
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx07"
	.byte	0x1
	.byte	0x15
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx07
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx08"
	.byte	0x1
	.byte	0x16
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx08
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx09"
	.byte	0x1
	.byte	0x17
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx09
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx10"
	.byte	0x1
	.byte	0x18
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx10
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx11"
	.byte	0x1
	.byte	0x19
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx11
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx12"
	.byte	0x1
	.byte	0x1a
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx12
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx13"
	.byte	0x1
	.byte	0x1b
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx13
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx14"
	.byte	0x1
	.byte	0x1c
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx14
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx15"
	.byte	0x1
	.byte	0x1d
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx15
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx16"
	.byte	0x1
	.byte	0x1e
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx16
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx17"
	.byte	0x1
	.byte	0x1f
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx17
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx18"
	.byte	0x1
	.byte	0x20
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx18
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx19"
	.byte	0x1
	.byte	0x21
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx19
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx20"
	.byte	0x1
	.byte	0x22
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx20
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx21"
	.byte	0x1
	.byte	0x23
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx21
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx22"
	.byte	0x1
	.byte	0x24
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx22
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx23"
	.byte	0x1
	.byte	0x25
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx23
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx24"
	.byte	0x1
	.byte	0x26
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx24
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx25"
	.byte	0x1
	.byte	0x27
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx25
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx26"
	.byte	0x1
	.byte	0x28
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx26
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx27"
	.byte	0x1
	.byte	0x29
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx27
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx28"
	.byte	0x1
	.byte	0x2a
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx28
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx29"
	.byte	0x1
	.byte	0x2b
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx29
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx30"
	.byte	0x1
	.byte	0x2c
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx30
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx31"
	.byte	0x1
	.byte	0x2d
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx31
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx32"
	.byte	0x1
	.byte	0x2e
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx32
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx33"
	.byte	0x1
	.byte	0x2f
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx33
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx34"
	.byte	0x1
	.byte	0x30
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx34
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx35"
	.byte	0x1
	.byte	0x31
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx35
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx36"
	.byte	0x1
	.byte	0x32
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx36
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx37"
	.byte	0x1
	.byte	0x33
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx37
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx38"
	.byte	0x1
	.byte	0x34
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx38
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx39"
	.byte	0x1
	.byte	0x35
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx39
	.uleb128 0x5
	.string	"BSW_bRxTOutFlag_Can02_Rx40"
	.byte	0x1
	.byte	0x36
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bRxTOutFlag_Can02_Rx40
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx01"
	.byte	0x1
	.byte	0x38
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx01
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx02"
	.byte	0x1
	.byte	0x39
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx02
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx03"
	.byte	0x1
	.byte	0x3a
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx03
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx04"
	.byte	0x1
	.byte	0x3b
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx04
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx05"
	.byte	0x1
	.byte	0x3c
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx05
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx06"
	.byte	0x1
	.byte	0x3d
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx06
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx07"
	.byte	0x1
	.byte	0x3e
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx07
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx08"
	.byte	0x1
	.byte	0x3f
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx08
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx09"
	.byte	0x1
	.byte	0x40
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx09
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx10"
	.byte	0x1
	.byte	0x41
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx10
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx11"
	.byte	0x1
	.byte	0x42
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx11
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx12"
	.byte	0x1
	.byte	0x43
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx12
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx13"
	.byte	0x1
	.byte	0x44
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx13
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx14"
	.byte	0x1
	.byte	0x45
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx14
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx15"
	.byte	0x1
	.byte	0x46
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx15
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx16"
	.byte	0x1
	.byte	0x47
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx16
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx17"
	.byte	0x1
	.byte	0x48
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx17
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx18"
	.byte	0x1
	.byte	0x49
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx18
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx19"
	.byte	0x1
	.byte	0x4a
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx19
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx20"
	.byte	0x1
	.byte	0x4b
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx20
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx21"
	.byte	0x1
	.byte	0x4c
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx21
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx22"
	.byte	0x1
	.byte	0x4d
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx22
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx23"
	.byte	0x1
	.byte	0x4e
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx23
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx24"
	.byte	0x1
	.byte	0x4f
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx24
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx25"
	.byte	0x1
	.byte	0x50
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx25
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx26"
	.byte	0x1
	.byte	0x51
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx26
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx27"
	.byte	0x1
	.byte	0x52
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx27
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx28"
	.byte	0x1
	.byte	0x53
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx28
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx29"
	.byte	0x1
	.byte	0x54
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx29
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx30"
	.byte	0x1
	.byte	0x55
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx30
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx31"
	.byte	0x1
	.byte	0x56
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx31
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx32"
	.byte	0x1
	.byte	0x57
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx32
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx33"
	.byte	0x1
	.byte	0x58
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx33
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx34"
	.byte	0x1
	.byte	0x59
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx34
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx35"
	.byte	0x1
	.byte	0x5a
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx35
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx36"
	.byte	0x1
	.byte	0x5b
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx36
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx37"
	.byte	0x1
	.byte	0x5c
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx37
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx38"
	.byte	0x1
	.byte	0x5d
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx38
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx39"
	.byte	0x1
	.byte	0x5e
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx39
	.uleb128 0x5
	.string	"BSW_bMsgValidState_Can02_Rx40"
	.byte	0x1
	.byte	0x5f
	.uaword	0x243
	.byte	0x1
	.byte	0x5
	.byte	0x3
	.uaword	BSW_bMsgValidState_Can02_Rx40
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
	.uleb128 0x5
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
	.uaword	0x1c
	.uahalf	0x2
	.uaword	.Ldebug_info0
	.byte	0x4
	.byte	0
	.uahalf	0
	.uahalf	0
	.uaword	.LFB0
	.uaword	.LFE0-.LFB0
	.uaword	0
	.uaword	0
.section .debug_ranges,"",@progbits
.Ldebug_ranges0:
	.uaword	.LFB0
	.uaword	.LFE0
	.uaword	0
	.uaword	0
.section .debug_line,"",@progbits
.Ldebug_line0:
.section .debug_str,"",@progbits
	.ident	"GCC: (HighTec Release HDP-v4.9.4.1-11fcedf) 4.9.4 build on 2020-09-01"
