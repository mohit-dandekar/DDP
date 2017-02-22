;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 3.3.0 #8604 (Dec 30 2013) (Linux)
; This file was generated Mon Dec 14 23:38:57 2015
;--------------------------------------------------------
	.module rsa_exponent
	.optsdcc -mmcs51 --model-small
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _CY
	.globl _AC
	.globl _F0
	.globl _RS1
	.globl _RS0
	.globl _OV
	.globl _F1
	.globl _P
	.globl _PS
	.globl _PT1
	.globl _PX1
	.globl _PT0
	.globl _PX0
	.globl _RD
	.globl _WR
	.globl _T1
	.globl _T0
	.globl _INT1
	.globl _INT0
	.globl _TXD
	.globl _RXD
	.globl _P3_7
	.globl _P3_6
	.globl _P3_5
	.globl _P3_4
	.globl _P3_3
	.globl _P3_2
	.globl _P3_1
	.globl _P3_0
	.globl _EA
	.globl _ES
	.globl _ET1
	.globl _EX1
	.globl _ET0
	.globl _EX0
	.globl _P2_7
	.globl _P2_6
	.globl _P2_5
	.globl _P2_4
	.globl _P2_3
	.globl _P2_2
	.globl _P2_1
	.globl _P2_0
	.globl _SM0
	.globl _SM1
	.globl _SM2
	.globl _REN
	.globl _TB8
	.globl _RB8
	.globl _TI
	.globl _RI
	.globl _P1_7
	.globl _P1_6
	.globl _P1_5
	.globl _P1_4
	.globl _P1_3
	.globl _P1_2
	.globl _P1_1
	.globl _P1_0
	.globl _TF1
	.globl _TR1
	.globl _TF0
	.globl _TR0
	.globl _IE1
	.globl _IT1
	.globl _IE0
	.globl _IT0
	.globl _P0_7
	.globl _P0_6
	.globl _P0_5
	.globl _P0_4
	.globl _P0_3
	.globl _P0_2
	.globl _P0_1
	.globl _P0_0
	.globl _B
	.globl _ACC
	.globl _PSW
	.globl _IP
	.globl _P3
	.globl _IE
	.globl _P2
	.globl _SBUF
	.globl _SCON
	.globl _P1
	.globl _TH1
	.globl _TH0
	.globl _TL1
	.globl _TL0
	.globl _TMOD
	.globl _TCON
	.globl _PCON
	.globl _DPH
	.globl _DPL
	.globl _SP
	.globl _P0
	.globl _d
	.globl _e
	.globl _a
	.globl _rmodm
	.globl _x
	.globl _r2modm
	.globl _m
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0	=	0x0080
_SP	=	0x0081
_DPL	=	0x0082
_DPH	=	0x0083
_PCON	=	0x0087
_TCON	=	0x0088
_TMOD	=	0x0089
_TL0	=	0x008a
_TL1	=	0x008b
_TH0	=	0x008c
_TH1	=	0x008d
_P1	=	0x0090
_SCON	=	0x0098
_SBUF	=	0x0099
_P2	=	0x00a0
_IE	=	0x00a8
_P3	=	0x00b0
_IP	=	0x00b8
_PSW	=	0x00d0
_ACC	=	0x00e0
_B	=	0x00f0
;--------------------------------------------------------
; special function bits
;--------------------------------------------------------
	.area RSEG    (ABS,DATA)
	.org 0x0000
_P0_0	=	0x0080
_P0_1	=	0x0081
_P0_2	=	0x0082
_P0_3	=	0x0083
_P0_4	=	0x0084
_P0_5	=	0x0085
_P0_6	=	0x0086
_P0_7	=	0x0087
_IT0	=	0x0088
_IE0	=	0x0089
_IT1	=	0x008a
_IE1	=	0x008b
_TR0	=	0x008c
_TF0	=	0x008d
_TR1	=	0x008e
_TF1	=	0x008f
_P1_0	=	0x0090
_P1_1	=	0x0091
_P1_2	=	0x0092
_P1_3	=	0x0093
_P1_4	=	0x0094
_P1_5	=	0x0095
_P1_6	=	0x0096
_P1_7	=	0x0097
_RI	=	0x0098
_TI	=	0x0099
_RB8	=	0x009a
_TB8	=	0x009b
_REN	=	0x009c
_SM2	=	0x009d
_SM1	=	0x009e
_SM0	=	0x009f
_P2_0	=	0x00a0
_P2_1	=	0x00a1
_P2_2	=	0x00a2
_P2_3	=	0x00a3
_P2_4	=	0x00a4
_P2_5	=	0x00a5
_P2_6	=	0x00a6
_P2_7	=	0x00a7
_EX0	=	0x00a8
_ET0	=	0x00a9
_EX1	=	0x00aa
_ET1	=	0x00ab
_ES	=	0x00ac
_EA	=	0x00af
_P3_0	=	0x00b0
_P3_1	=	0x00b1
_P3_2	=	0x00b2
_P3_3	=	0x00b3
_P3_4	=	0x00b4
_P3_5	=	0x00b5
_P3_6	=	0x00b6
_P3_7	=	0x00b7
_RXD	=	0x00b0
_TXD	=	0x00b1
_INT0	=	0x00b2
_INT1	=	0x00b3
_T0	=	0x00b4
_T1	=	0x00b5
_WR	=	0x00b6
_RD	=	0x00b7
_PX0	=	0x00b8
_PT0	=	0x00b9
_PX1	=	0x00ba
_PT1	=	0x00bb
_PS	=	0x00bc
_P	=	0x00d0
_F1	=	0x00d1
_OV	=	0x00d2
_RS0	=	0x00d3
_RS1	=	0x00d4
_F0	=	0x00d5
_AC	=	0x00d6
_CY	=	0x00d7
;--------------------------------------------------------
; overlayable register banks
;--------------------------------------------------------
	.area REG_BANK_0	(REL,OVR,DATA)
	.ds 8
;--------------------------------------------------------
; internal ram data
;--------------------------------------------------------
	.area DSEG    (DATA)
;--------------------------------------------------------
; overlayable items in internal ram 
;--------------------------------------------------------
;--------------------------------------------------------
; Stack segment in internal ram 
;--------------------------------------------------------
	.area	SSEG	(DATA)
__start__stack:
	.ds	1

;--------------------------------------------------------
; indirectly addressable internal ram data
;--------------------------------------------------------
	.area ISEG    (DATA)
;--------------------------------------------------------
; absolute internal ram data
;--------------------------------------------------------
	.area IABS    (ABS,DATA)
	.area IABS    (ABS,DATA)
;--------------------------------------------------------
; bit data
;--------------------------------------------------------
	.area BSEG    (BIT)
;--------------------------------------------------------
; paged external ram data
;--------------------------------------------------------
	.area PSEG    (PAG,XDATA)
;--------------------------------------------------------
; external ram data
;--------------------------------------------------------
	.area XSEG    (XDATA)
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area XABS    (ABS,XDATA)
	.org 0x1000
_m::
	.ds 256
	.org 0x1100
_r2modm::
	.ds 256
	.org 0x1200
_x::
	.ds 256
	.org 0x1300
_rmodm::
	.ds 256
	.org 0x1400
_a::
	.ds 256
	.org 0x0100
_e::
	.ds 256
	.org 0x0200
_d::
	.ds 128
;--------------------------------------------------------
; external initialized ram data
;--------------------------------------------------------
	.area XISEG   (XDATA)
	.area HOME    (CODE)
	.area GSINIT0 (CODE)
	.area GSINIT1 (CODE)
	.area GSINIT2 (CODE)
	.area GSINIT3 (CODE)
	.area GSINIT4 (CODE)
	.area GSINIT5 (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area CSEG    (CODE)
;--------------------------------------------------------
; interrupt vector 
;--------------------------------------------------------
	.area HOME    (CODE)
__interrupt_vect:
	ljmp	__sdcc_gsinit_startup
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area HOME    (CODE)
	.area GSINIT  (CODE)
	.area GSFINAL (CODE)
	.area GSINIT  (CODE)
	.globl __sdcc_gsinit_startup
	.globl __sdcc_program_startup
	.globl __start__stack
	.globl __mcs51_genXINIT
	.globl __mcs51_genXRAMCLEAR
	.globl __mcs51_genRAMCLEAR
;	rsa_exponent.c:20: volatile __xdata __at (0x1000) unsigned char m[] ={ 0x31, 0x6F, 0x7A, 0xE6, 0xE5, 0xBC, 0x77, 0xA6, 0xF8, 0x66, 0x9E, 0x3B, 0x02, 0xF4, 0xDF, 0x32, 0xC8, 0xA7, 0xB9, 0x2A, 0x1E, 0xBC, 0x08, 0xBE, 0x86, 0x11, 0xDE, 0x2A, 0xCF, 0xE8, 0x88, 0x8E, 0x3B, 0x5C, 0x6A, 0x71, 0x47, 0x3C, 0x45, 0x05, 0x46, 0xE4, 0xAD, 0x93, 0x42, 0x1F, 0x77, 0xDC, 0x25, 0x97, 0x70, 0xE1, 0xB5, 0xEB, 0x89, 0x7F, 0xA9, 0x1E, 0x50, 0x1D, 0x33, 0x99, 0x3C, 0x09, 0x68, 0xE4, 0x1A, 0xCF, 0xB0, 0x1E, 0xBA, 0x56, 0x24, 0x7C, 0x8E, 0x35, 0x84, 0xE0, 0xAA, 0x2D, 0xEC, 0x58, 0xA0, 0x4D, 0x89, 0x8A, 0x02, 0x27, 0x38, 0x54, 0x2E, 0x4F, 0xB2, 0x96, 0xAB, 0x29, 0x01, 0x21, 0x07, 0xF9, 0x85, 0x01, 0x99, 0xE7, 0xFE, 0xF8, 0x9A, 0x19, 0x6D, 0x92, 0x87, 0x68, 0x0E, 0x45, 0xB0, 0xCF, 0xD9, 0x3D, 0xA5, 0x36, 0x2C, 0x98, 0xD3, 0x0E, 0xD6, 0xB4, 0xD3, 0xD1, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00   };
	mov	dptr,#_m
	mov	a,#0x31
	movx	@dptr,a
	mov	dptr,#(_m + 0x0001)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_m + 0x0002)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_m + 0x0003)
	mov	a,#0xE6
	movx	@dptr,a
	mov	dptr,#(_m + 0x0004)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_m + 0x0005)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_m + 0x0006)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_m + 0x0007)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_m + 0x0008)
	mov	a,#0xF8
	movx	@dptr,a
	mov	dptr,#(_m + 0x0009)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_m + 0x000a)
	mov	a,#0x9E
	movx	@dptr,a
	mov	dptr,#(_m + 0x000b)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_m + 0x000c)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_m + 0x000d)
	mov	a,#0xF4
	movx	@dptr,a
	mov	dptr,#(_m + 0x000e)
	mov	a,#0xDF
	movx	@dptr,a
	mov	dptr,#(_m + 0x000f)
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#(_m + 0x0010)
	mov	a,#0xC8
	movx	@dptr,a
	mov	dptr,#(_m + 0x0011)
	mov	a,#0xA7
	movx	@dptr,a
	mov	dptr,#(_m + 0x0012)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_m + 0x0013)
	mov	a,#0x2A
	movx	@dptr,a
	mov	dptr,#(_m + 0x0014)
	mov	a,#0x1E
	movx	@dptr,a
	mov	dptr,#(_m + 0x0015)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_m + 0x0016)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_m + 0x0017)
	mov	a,#0xBE
	movx	@dptr,a
	mov	dptr,#(_m + 0x0018)
	mov	a,#0x86
	movx	@dptr,a
	mov	dptr,#(_m + 0x0019)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_m + 0x001a)
	mov	a,#0xDE
	movx	@dptr,a
	mov	dptr,#(_m + 0x001b)
	mov	a,#0x2A
	movx	@dptr,a
	mov	dptr,#(_m + 0x001c)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_m + 0x001d)
	mov	a,#0xE8
	movx	@dptr,a
	mov	dptr,#(_m + 0x001e)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_m + 0x001f)
	mov	a,#0x8E
	movx	@dptr,a
	mov	dptr,#(_m + 0x0020)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_m + 0x0021)
	mov	a,#0x5C
	movx	@dptr,a
	mov	dptr,#(_m + 0x0022)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_m + 0x0023)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_m + 0x0024)
	mov	a,#0x47
	movx	@dptr,a
	mov	dptr,#(_m + 0x0025)
	mov	a,#0x3C
	movx	@dptr,a
	mov	dptr,#(_m + 0x0026)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_m + 0x0027)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_m + 0x0028)
	mov	a,#0x46
	movx	@dptr,a
	mov	dptr,#(_m + 0x0029)
	mov	a,#0xE4
	movx	@dptr,a
	mov	dptr,#(_m + 0x002a)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_m + 0x002b)
	mov	a,#0x93
	movx	@dptr,a
	mov	dptr,#(_m + 0x002c)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_m + 0x002d)
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_m + 0x002e)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_m + 0x002f)
	mov	a,#0xDC
	movx	@dptr,a
	mov	dptr,#(_m + 0x0030)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_m + 0x0031)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_m + 0x0032)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_m + 0x0033)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_m + 0x0034)
	mov	a,#0xB5
	movx	@dptr,a
	mov	dptr,#(_m + 0x0035)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_m + 0x0036)
	mov	a,#0x89
	movx	@dptr,a
	mov	dptr,#(_m + 0x0037)
	mov	a,#0x7F
	movx	@dptr,a
	mov	dptr,#(_m + 0x0038)
	mov	a,#0xA9
	movx	@dptr,a
	mov	dptr,#(_m + 0x0039)
	mov	a,#0x1E
	movx	@dptr,a
	mov	dptr,#(_m + 0x003a)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_m + 0x003b)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_m + 0x003c)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_m + 0x003d)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_m + 0x003e)
	mov	a,#0x3C
	movx	@dptr,a
	mov	dptr,#(_m + 0x003f)
	mov	a,#0x09
	movx	@dptr,a
	mov	dptr,#(_m + 0x0040)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_m + 0x0041)
	mov	a,#0xE4
	movx	@dptr,a
	mov	dptr,#(_m + 0x0042)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_m + 0x0043)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_m + 0x0044)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_m + 0x0045)
	mov	a,#0x1E
	movx	@dptr,a
	mov	dptr,#(_m + 0x0046)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_m + 0x0047)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_m + 0x0048)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_m + 0x0049)
	mov	a,#0x7C
	movx	@dptr,a
	mov	dptr,#(_m + 0x004a)
	mov	a,#0x8E
	movx	@dptr,a
	mov	dptr,#(_m + 0x004b)
	mov	a,#0x35
	movx	@dptr,a
	mov	dptr,#(_m + 0x004c)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_m + 0x004d)
	mov	a,#0xE0
	movx	@dptr,a
	mov	dptr,#(_m + 0x004e)
	mov	a,#0xAA
	movx	@dptr,a
	mov	dptr,#(_m + 0x004f)
	mov	a,#0x2D
	movx	@dptr,a
	mov	dptr,#(_m + 0x0050)
	mov	a,#0xEC
	movx	@dptr,a
	mov	dptr,#(_m + 0x0051)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_m + 0x0052)
	mov	a,#0xA0
	movx	@dptr,a
	mov	dptr,#(_m + 0x0053)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_m + 0x0054)
	mov	a,#0x89
	movx	@dptr,a
	mov	dptr,#(_m + 0x0055)
	mov	a,#0x8A
	movx	@dptr,a
	mov	dptr,#(_m + 0x0056)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_m + 0x0057)
	mov	a,#0x27
	movx	@dptr,a
	mov	dptr,#(_m + 0x0058)
	mov	a,#0x38
	movx	@dptr,a
	mov	dptr,#(_m + 0x0059)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_m + 0x005a)
	mov	a,#0x2E
	movx	@dptr,a
	mov	dptr,#(_m + 0x005b)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_m + 0x005c)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_m + 0x005d)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_m + 0x005e)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_m + 0x005f)
	mov	a,#0x29
	movx	@dptr,a
	mov	dptr,#(_m + 0x0060)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_m + 0x0061)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_m + 0x0062)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_m + 0x0063)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_m + 0x0064)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_m + 0x0065)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_m + 0x0066)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_m + 0x0067)
	mov	a,#0xE7
	movx	@dptr,a
	mov	dptr,#(_m + 0x0068)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_m + 0x0069)
	mov	a,#0xF8
	movx	@dptr,a
	mov	dptr,#(_m + 0x006a)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_m + 0x006b)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_m + 0x006c)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_m + 0x006d)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_m + 0x006e)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_m + 0x006f)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_m + 0x0070)
	mov	a,#0x0E
	movx	@dptr,a
	mov	dptr,#(_m + 0x0071)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_m + 0x0072)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_m + 0x0073)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_m + 0x0074)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_m + 0x0075)
	mov	a,#0x3D
	movx	@dptr,a
	mov	dptr,#(_m + 0x0076)
	mov	a,#0xA5
	movx	@dptr,a
	mov	dptr,#(_m + 0x0077)
	mov	a,#0x36
	movx	@dptr,a
	mov	dptr,#(_m + 0x0078)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_m + 0x0079)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_m + 0x007a)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_m + 0x007b)
	mov	a,#0x0E
	movx	@dptr,a
	mov	dptr,#(_m + 0x007c)
	mov	a,#0xD6
	movx	@dptr,a
	mov	dptr,#(_m + 0x007d)
	mov	a,#0xB4
	movx	@dptr,a
	mov	dptr,#(_m + 0x007e)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_m + 0x007f)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_m + 0x0080)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x0081)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0082)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0083)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0084)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x0085)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0086)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0087)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0088)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x0089)
	movx	@dptr,a
	mov	dptr,#(_m + 0x008a)
	movx	@dptr,a
	mov	dptr,#(_m + 0x008b)
	movx	@dptr,a
	mov	dptr,#(_m + 0x008c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x008d)
	movx	@dptr,a
	mov	dptr,#(_m + 0x008e)
	movx	@dptr,a
	mov	dptr,#(_m + 0x008f)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0090)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x0091)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0092)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0093)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0094)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x0095)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0096)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0097)
	movx	@dptr,a
	mov	dptr,#(_m + 0x0098)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x0099)
	movx	@dptr,a
	mov	dptr,#(_m + 0x009a)
	movx	@dptr,a
	mov	dptr,#(_m + 0x009b)
	movx	@dptr,a
	mov	dptr,#(_m + 0x009c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x009d)
	movx	@dptr,a
	mov	dptr,#(_m + 0x009e)
	movx	@dptr,a
	mov	dptr,#(_m + 0x009f)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00a0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00a1)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00a2)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00a3)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00a4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00a5)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00a6)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00a7)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00a8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00a9)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00aa)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ab)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ac)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ad)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ae)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00af)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00b0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00b1)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00b2)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00b3)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00b4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00b5)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00b6)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00b7)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00b8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00b9)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ba)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00bb)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00bc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00bd)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00be)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00bf)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00c0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00c1)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00c2)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00c3)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00c4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00c5)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00c6)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00c7)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00c8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00c9)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ca)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00cb)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00cc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00cd)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ce)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00cf)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00d0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00d1)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00d2)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00d3)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00d4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00d5)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00d6)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00d7)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00d8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00d9)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00da)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00db)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00dc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00dd)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00de)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00df)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00e0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00e1)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00e2)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00e3)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00e4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00e5)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00e6)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00e7)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00e8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00e9)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ea)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00eb)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ec)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ed)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ee)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ef)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00f0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00f1)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00f2)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00f3)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00f4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00f5)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00f6)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00f7)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00f8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00f9)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00fa)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00fb)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00fc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_m + 0x00fd)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00fe)
	movx	@dptr,a
	mov	dptr,#(_m + 0x00ff)
	movx	@dptr,a
;	rsa_exponent.c:28: volatile __xdata __at (0x1100) unsigned char r2modm[] = { 0xC8, 0xF6, 0x32, 0x9D, 0xE1, 0x61, 0xBD, 0x2F, 0xDA, 0xA1, 0x1F, 0x69, 0xC7, 0x0B, 0x56, 0x7E, 0x26, 0x8B, 0x2D, 0xB8, 0xF3, 0x71, 0xBE, 0xDE, 0x22, 0x34, 0x38, 0x6B, 0x8B, 0xB5, 0x71, 0x69, 0x39, 0x08, 0x03, 0x05, 0x94, 0xB2, 0x91, 0x3F, 0x96, 0xC7, 0xB3, 0xE4, 0x48, 0x25, 0xF5, 0xF7, 0xB5, 0xD5, 0xD1, 0xF5, 0x1A, 0x06, 0x13, 0xE5, 0x9A, 0x81, 0xD6, 0xAD, 0x4C, 0xD4, 0x6D, 0x2C, 0x71, 0x1B, 0x4E, 0x5D, 0x4F, 0xE0, 0x7D, 0xEA, 0xE9, 0x63, 0x06, 0x34, 0x4C, 0xA6, 0xA9, 0xA9, 0x2A, 0x3F, 0x66, 0x1B, 0x51, 0x3B, 0x73, 0x44, 0x18, 0xFF, 0xFE, 0x30, 0x8B, 0xEF, 0x94, 0x4A, 0x7D, 0x3F, 0x92, 0x8F, 0x23, 0x3D, 0x22, 0xCF, 0x07, 0x1A, 0x85, 0xB7, 0x76, 0x5F, 0x03, 0xBA, 0x4B, 0x56, 0xA1, 0x42, 0x29, 0x21, 0x50, 0x98, 0xC9, 0xED, 0xD9, 0xEA, 0x25, 0x35, 0xAF, 0x24, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 }; 
	mov	dptr,#_r2modm
	mov	a,#0xC8
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0001)
	mov	a,#0xF6
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0002)
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0003)
	mov	a,#0x9D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0004)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0005)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0006)
	mov	a,#0xBD
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0007)
	mov	a,#0x2F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0008)
	mov	a,#0xDA
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0009)
	mov	a,#0xA1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000a)
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000b)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000c)
	mov	a,#0xC7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000d)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000e)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x000f)
	mov	a,#0x7E
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0010)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0011)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0012)
	mov	a,#0x2D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0013)
	mov	a,#0xB8
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0014)
	mov	a,#0xF3
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0015)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0016)
	mov	a,#0xBE
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0017)
	mov	a,#0xDE
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0018)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0019)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001a)
	mov	a,#0x38
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001b)
	mov	a,#0x6B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001c)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001d)
	mov	a,#0xB5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001e)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x001f)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0020)
	mov	a,#0x39
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0021)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0022)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0023)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0024)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0025)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0026)
	mov	a,#0x91
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0027)
	mov	a,#0x3F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0028)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0029)
	mov	a,#0xC7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002a)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002b)
	mov	a,#0xE4
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002c)
	mov	a,#0x48
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002d)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002e)
	mov	a,#0xF5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x002f)
	mov	a,#0xF7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0030)
	mov	a,#0xB5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0031)
	mov	a,#0xD5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0032)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0033)
	mov	a,#0xF5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0034)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0035)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0036)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0037)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0038)
	mov	a,#0x9A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0039)
	mov	a,#0x81
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003a)
	mov	a,#0xD6
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003b)
	mov	a,#0xAD
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003c)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003d)
	mov	a,#0xD4
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003e)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x003f)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0040)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0041)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0042)
	mov	a,#0x4E
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0043)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0044)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0045)
	mov	a,#0xE0
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0046)
	mov	a,#0x7D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0047)
	mov	a,#0xEA
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0048)
	mov	a,#0xE9
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0049)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004a)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004b)
	mov	a,#0x34
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004c)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004d)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004e)
	mov	a,#0xA9
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x004f)
	mov	a,#0xA9
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0050)
	mov	a,#0x2A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0051)
	mov	a,#0x3F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0052)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0053)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0054)
	mov	a,#0x51
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0055)
	mov	a,#0x3B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0056)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0057)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0058)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0059)
	mov	a,#0xFF
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005a)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005b)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005c)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005d)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005e)
	mov	a,#0x94
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x005f)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0060)
	mov	a,#0x7D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0061)
	mov	a,#0x3F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0062)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0063)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0064)
	mov	a,#0x23
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0065)
	mov	a,#0x3D
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0066)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0067)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0068)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0069)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006a)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006b)
	mov	a,#0xB7
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006c)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006d)
	mov	a,#0x5F
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006e)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x006f)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0070)
	mov	a,#0x4B
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0071)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0072)
	mov	a,#0xA1
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0073)
	mov	a,#0x42
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0074)
	mov	a,#0x29
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0075)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0076)
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0077)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0078)
	mov	a,#0xC9
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0079)
	mov	a,#0xED
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007a)
	mov	a,#0xD9
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007b)
	mov	a,#0xEA
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007c)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007d)
	mov	a,#0x35
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007e)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x007f)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0080)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0081)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0082)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0083)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0084)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0085)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0086)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0087)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0088)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0089)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x008a)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x008b)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x008c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x008d)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x008e)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x008f)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0090)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0091)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0092)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0093)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0094)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0095)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0096)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0097)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0098)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x0099)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x009a)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x009b)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x009c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x009d)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x009e)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x009f)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00a0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00a1)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00a2)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00a3)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00a4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00a5)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00a6)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00a7)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00a8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00a9)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00aa)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ab)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ac)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ad)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ae)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00af)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00b0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00b1)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00b2)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00b3)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00b4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00b5)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00b6)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00b7)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00b8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00b9)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ba)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00bb)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00bc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00bd)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00be)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00bf)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00c0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00c1)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00c2)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00c3)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00c4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00c5)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00c6)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00c7)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00c8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00c9)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ca)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00cb)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00cc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00cd)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ce)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00cf)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00d0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00d1)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00d2)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00d3)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00d4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00d5)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00d6)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00d7)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00d8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00d9)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00da)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00db)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00dc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00dd)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00de)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00df)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00e0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00e1)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00e2)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00e3)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00e4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00e5)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00e6)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00e7)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00e8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00e9)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ea)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00eb)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ec)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ed)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ee)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ef)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00f0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00f1)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00f2)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00f3)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00f4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00f5)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00f6)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00f7)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00f8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00f9)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00fa)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00fb)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00fc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00fd)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00fe)
	movx	@dptr,a
	mov	dptr,#(_r2modm + 0x00ff)
	movx	@dptr,a
;	rsa_exponent.c:37: volatile __xdata __at (0x1200) unsigned char x[] = { 0x50, 0x24, 0x6E, 0x0E, 0x44, 0xDD, 0xE3, 0x57, 0xEB, 0xB9, 0xEF, 0xCE, 0xB4, 0x10, 0x8D, 0xBF, 0xC8, 0xEA, 0xC3, 0x00, 0x0E, 0xCF, 0x52, 0x2D, 0x25, 0x9D, 0x87, 0xA6, 0x1D, 0x4A, 0xB5, 0x4D, 0x67, 0xBC, 0x85, 0xBA, 0x70, 0x43, 0xC2, 0x81, 0xBD, 0x2F, 0x64, 0x53, 0xED, 0x32, 0x3C, 0x2D, 0x31, 0x23, 0xCF, 0xD8, 0x0F, 0xE9, 0x13, 0x51, 0x2D, 0xF8, 0xAC, 0x36, 0xA6, 0x5D, 0x8F, 0x70, 0x22, 0x60, 0x82, 0x88, 0x8C, 0xE3, 0x43, 0x4A, 0x9F, 0x87, 0x05, 0xED, 0xC9, 0x13, 0x0A, 0xBE, 0xCF, 0x6F, 0x07, 0x41, 0x89, 0x7A, 0xE8, 0xBD, 0xF1, 0xDD, 0x33, 0x70, 0x80, 0xD0, 0x10, 0xA3, 0xD2, 0x25, 0xB3, 0xCC, 0x4C, 0x62, 0x19, 0xBC, 0x7A, 0x92, 0x8B, 0x46, 0xBC, 0x7A, 0xF4, 0xA7, 0xC6, 0xF7, 0x1A, 0x76, 0xEE, 0x6E, 0xAC, 0x03, 0x4D, 0xAA, 0x3F, 0xC9, 0x3E, 0xE5, 0x92, 0xC8, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
	mov	dptr,#_x
	mov	a,#0x50
	movx	@dptr,a
	mov	dptr,#(_x + 0x0001)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_x + 0x0002)
	mov	a,#0x6E
	movx	@dptr,a
	mov	dptr,#(_x + 0x0003)
	mov	a,#0x0E
	movx	@dptr,a
	mov	dptr,#(_x + 0x0004)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_x + 0x0005)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_x + 0x0006)
	mov	a,#0xE3
	movx	@dptr,a
	mov	dptr,#(_x + 0x0007)
	mov	a,#0x57
	movx	@dptr,a
	mov	dptr,#(_x + 0x0008)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_x + 0x0009)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_x + 0x000a)
	mov	a,#0xEF
	movx	@dptr,a
	mov	dptr,#(_x + 0x000b)
	mov	a,#0xCE
	movx	@dptr,a
	mov	dptr,#(_x + 0x000c)
	mov	a,#0xB4
	movx	@dptr,a
	mov	dptr,#(_x + 0x000d)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_x + 0x000e)
	mov	a,#0x8D
	movx	@dptr,a
	mov	dptr,#(_x + 0x000f)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_x + 0x0010)
	mov	a,#0xC8
	movx	@dptr,a
	mov	dptr,#(_x + 0x0011)
	mov	a,#0xEA
	movx	@dptr,a
	mov	dptr,#(_x + 0x0012)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_x + 0x0013)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x0014)
	mov	a,#0x0E
	movx	@dptr,a
	mov	dptr,#(_x + 0x0015)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_x + 0x0016)
	mov	a,#0x52
	movx	@dptr,a
	mov	dptr,#(_x + 0x0017)
	mov	a,#0x2D
	movx	@dptr,a
	mov	dptr,#(_x + 0x0018)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_x + 0x0019)
	mov	a,#0x9D
	movx	@dptr,a
	mov	dptr,#(_x + 0x001a)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_x + 0x001b)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_x + 0x001c)
	mov	a,#0x1D
	movx	@dptr,a
	mov	dptr,#(_x + 0x001d)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_x + 0x001e)
	mov	a,#0xB5
	movx	@dptr,a
	mov	dptr,#(_x + 0x001f)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_x + 0x0020)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_x + 0x0021)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_x + 0x0022)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_x + 0x0023)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_x + 0x0024)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_x + 0x0025)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_x + 0x0026)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_x + 0x0027)
	mov	a,#0x81
	movx	@dptr,a
	mov	dptr,#(_x + 0x0028)
	mov	a,#0xBD
	movx	@dptr,a
	mov	dptr,#(_x + 0x0029)
	mov	a,#0x2F
	movx	@dptr,a
	mov	dptr,#(_x + 0x002a)
	mov	a,#0x64
	movx	@dptr,a
	mov	dptr,#(_x + 0x002b)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_x + 0x002c)
	mov	a,#0xED
	movx	@dptr,a
	mov	dptr,#(_x + 0x002d)
	mov	a,#0x32
	movx	@dptr,a
	mov	dptr,#(_x + 0x002e)
	mov	a,#0x3C
	movx	@dptr,a
	mov	dptr,#(_x + 0x002f)
	mov	a,#0x2D
	movx	@dptr,a
	mov	dptr,#(_x + 0x0030)
	mov	a,#0x31
	movx	@dptr,a
	mov	dptr,#(_x + 0x0031)
	mov	a,#0x23
	movx	@dptr,a
	mov	dptr,#(_x + 0x0032)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_x + 0x0033)
	mov	a,#0xD8
	movx	@dptr,a
	mov	dptr,#(_x + 0x0034)
	mov	a,#0x0F
	movx	@dptr,a
	mov	dptr,#(_x + 0x0035)
	mov	a,#0xE9
	movx	@dptr,a
	mov	dptr,#(_x + 0x0036)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_x + 0x0037)
	mov	a,#0x51
	movx	@dptr,a
	mov	dptr,#(_x + 0x0038)
	mov	a,#0x2D
	movx	@dptr,a
	mov	dptr,#(_x + 0x0039)
	mov	a,#0xF8
	movx	@dptr,a
	mov	dptr,#(_x + 0x003a)
	mov	a,#0xAC
	movx	@dptr,a
	mov	dptr,#(_x + 0x003b)
	mov	a,#0x36
	movx	@dptr,a
	mov	dptr,#(_x + 0x003c)
	mov	a,#0xA6
	movx	@dptr,a
	mov	dptr,#(_x + 0x003d)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_x + 0x003e)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_x + 0x003f)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_x + 0x0040)
	mov	a,#0x22
	movx	@dptr,a
	mov	dptr,#(_x + 0x0041)
	mov	a,#0x60
	movx	@dptr,a
	mov	dptr,#(_x + 0x0042)
	mov	a,#0x82
	movx	@dptr,a
	mov	dptr,#(_x + 0x0043)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_x + 0x0044)
	mov	a,#0x8C
	movx	@dptr,a
	mov	dptr,#(_x + 0x0045)
	mov	a,#0xE3
	movx	@dptr,a
	mov	dptr,#(_x + 0x0046)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_x + 0x0047)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_x + 0x0048)
	mov	a,#0x9F
	movx	@dptr,a
	mov	dptr,#(_x + 0x0049)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_x + 0x004a)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_x + 0x004b)
	mov	a,#0xED
	movx	@dptr,a
	mov	dptr,#(_x + 0x004c)
	mov	a,#0xC9
	movx	@dptr,a
	mov	dptr,#(_x + 0x004d)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_x + 0x004e)
	mov	a,#0x0A
	movx	@dptr,a
	mov	dptr,#(_x + 0x004f)
	mov	a,#0xBE
	movx	@dptr,a
	mov	dptr,#(_x + 0x0050)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_x + 0x0051)
	mov	a,#0x6F
	movx	@dptr,a
	mov	dptr,#(_x + 0x0052)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_x + 0x0053)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_x + 0x0054)
	mov	a,#0x89
	movx	@dptr,a
	mov	dptr,#(_x + 0x0055)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_x + 0x0056)
	mov	a,#0xE8
	movx	@dptr,a
	mov	dptr,#(_x + 0x0057)
	mov	a,#0xBD
	movx	@dptr,a
	mov	dptr,#(_x + 0x0058)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_x + 0x0059)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_x + 0x005a)
	mov	a,#0x33
	movx	@dptr,a
	mov	dptr,#(_x + 0x005b)
	mov	a,#0x70
	movx	@dptr,a
	mov	dptr,#(_x + 0x005c)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_x + 0x005d)
	mov	a,#0xD0
	movx	@dptr,a
	mov	dptr,#(_x + 0x005e)
	mov	a,#0x10
	movx	@dptr,a
	mov	dptr,#(_x + 0x005f)
	mov	a,#0xA3
	movx	@dptr,a
	mov	dptr,#(_x + 0x0060)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_x + 0x0061)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_x + 0x0062)
	mov	a,#0xB3
	movx	@dptr,a
	mov	dptr,#(_x + 0x0063)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_x + 0x0064)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_x + 0x0065)
	mov	a,#0x62
	movx	@dptr,a
	mov	dptr,#(_x + 0x0066)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_x + 0x0067)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_x + 0x0068)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_x + 0x0069)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_x + 0x006a)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_x + 0x006b)
	mov	a,#0x46
	movx	@dptr,a
	mov	dptr,#(_x + 0x006c)
	mov	a,#0xBC
	movx	@dptr,a
	mov	dptr,#(_x + 0x006d)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_x + 0x006e)
	mov	a,#0xF4
	movx	@dptr,a
	mov	dptr,#(_x + 0x006f)
	mov	a,#0xA7
	movx	@dptr,a
	mov	dptr,#(_x + 0x0070)
	mov	a,#0xC6
	movx	@dptr,a
	mov	dptr,#(_x + 0x0071)
	mov	a,#0xF7
	movx	@dptr,a
	mov	dptr,#(_x + 0x0072)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_x + 0x0073)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_x + 0x0074)
	mov	a,#0xEE
	movx	@dptr,a
	mov	dptr,#(_x + 0x0075)
	mov	a,#0x6E
	movx	@dptr,a
	mov	dptr,#(_x + 0x0076)
	mov	a,#0xAC
	movx	@dptr,a
	mov	dptr,#(_x + 0x0077)
	mov	a,#0x03
	movx	@dptr,a
	mov	dptr,#(_x + 0x0078)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_x + 0x0079)
	mov	a,#0xAA
	movx	@dptr,a
	mov	dptr,#(_x + 0x007a)
	mov	a,#0x3F
	movx	@dptr,a
	mov	dptr,#(_x + 0x007b)
	mov	a,#0xC9
	movx	@dptr,a
	mov	dptr,#(_x + 0x007c)
	mov	a,#0x3E
	movx	@dptr,a
	mov	dptr,#(_x + 0x007d)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_x + 0x007e)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_x + 0x007f)
	mov	a,#0xC8
	movx	@dptr,a
	mov	dptr,#(_x + 0x0080)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x0081)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0082)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0083)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0084)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x0085)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0086)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0087)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0088)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x0089)
	movx	@dptr,a
	mov	dptr,#(_x + 0x008a)
	movx	@dptr,a
	mov	dptr,#(_x + 0x008b)
	movx	@dptr,a
	mov	dptr,#(_x + 0x008c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x008d)
	movx	@dptr,a
	mov	dptr,#(_x + 0x008e)
	movx	@dptr,a
	mov	dptr,#(_x + 0x008f)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0090)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x0091)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0092)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0093)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0094)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x0095)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0096)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0097)
	movx	@dptr,a
	mov	dptr,#(_x + 0x0098)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x0099)
	movx	@dptr,a
	mov	dptr,#(_x + 0x009a)
	movx	@dptr,a
	mov	dptr,#(_x + 0x009b)
	movx	@dptr,a
	mov	dptr,#(_x + 0x009c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x009d)
	movx	@dptr,a
	mov	dptr,#(_x + 0x009e)
	movx	@dptr,a
	mov	dptr,#(_x + 0x009f)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00a0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00a1)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00a2)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00a3)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00a4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00a5)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00a6)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00a7)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00a8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00a9)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00aa)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ab)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ac)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ad)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ae)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00af)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00b0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00b1)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00b2)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00b3)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00b4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00b5)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00b6)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00b7)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00b8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00b9)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ba)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00bb)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00bc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00bd)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00be)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00bf)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00c0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00c1)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00c2)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00c3)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00c4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00c5)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00c6)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00c7)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00c8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00c9)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ca)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00cb)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00cc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00cd)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ce)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00cf)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00d0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00d1)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00d2)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00d3)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00d4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00d5)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00d6)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00d7)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00d8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00d9)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00da)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00db)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00dc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00dd)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00de)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00df)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00e0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00e1)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00e2)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00e3)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00e4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00e5)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00e6)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00e7)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00e8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00e9)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ea)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00eb)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ec)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ed)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ee)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ef)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00f0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00f1)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00f2)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00f3)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00f4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00f5)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00f6)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00f7)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00f8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00f9)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00fa)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00fb)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00fc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_x + 0x00fd)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00fe)
	movx	@dptr,a
	mov	dptr,#(_x + 0x00ff)
	movx	@dptr,a
;	rsa_exponent.c:44: volatile __xdata __at (0x1300) unsigned char rmodm[] = { 0xCF, 0x90, 0x85, 0x19, 0x1A, 0x43, 0x88, 0x59, 0x07, 0x99, 0x61, 0xC4, 0xFD, 0x0B, 0x20, 0xCD, 0x37, 0x58, 0x46, 0xD5, 0xE1, 0x43, 0xF7, 0x41, 0x79, 0xEE, 0x21, 0xD5, 0x30, 0x17, 0x77, 0x71, 0xC4, 0xA3, 0x95, 0x8E, 0xB8, 0xC3, 0xBA, 0xFA, 0xB9, 0x1B, 0x52, 0x6C, 0xBD, 0xE0, 0x88, 0x23, 0xDA, 0x68, 0x8F, 0x1E, 0x4A, 0x14, 0x76, 0x80, 0x56, 0xE1, 0xAF, 0xE2, 0xCC, 0x66, 0xC3, 0xF6, 0x97, 0x1B, 0xE5, 0x30, 0x4F, 0xE1, 0x45, 0xA9, 0xDB, 0x83, 0x71, 0xCA, 0x7B, 0x1F, 0x55, 0xD2, 0x13, 0xA7, 0x5F, 0xB2, 0x76, 0x75, 0xFD, 0xD8, 0xC7, 0xAB, 0xD1, 0xB0, 0x4D, 0x69, 0x54, 0xD6, 0xFE, 0xDE, 0xF8, 0x06, 0x7A, 0xFE, 0x66, 0x18, 0x01, 0x07, 0x65, 0xE6, 0x92, 0x6D, 0x78, 0x97, 0xF1, 0xBA, 0x4F, 0x30, 0x26, 0xC2, 0x5A, 0xC9, 0xD3, 0x67, 0x2C, 0xF1, 0x29, 0x4B, 0x2C, 0x2E, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
	mov	dptr,#_rmodm
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0001)
	mov	a,#0x90
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0002)
	mov	a,#0x85
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0003)
	mov	a,#0x19
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0004)
	mov	a,#0x1A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0005)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0006)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0007)
	mov	a,#0x59
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0008)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0009)
	mov	a,#0x99
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000a)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000b)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000c)
	mov	a,#0xFD
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000d)
	mov	a,#0x0B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000e)
	mov	a,#0x20
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x000f)
	mov	a,#0xCD
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0010)
	mov	a,#0x37
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0011)
	mov	a,#0x58
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0012)
	mov	a,#0x46
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0013)
	mov	a,#0xD5
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0014)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0015)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0016)
	mov	a,#0xF7
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0017)
	mov	a,#0x41
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0018)
	mov	a,#0x79
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0019)
	mov	a,#0xEE
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001a)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001b)
	mov	a,#0xD5
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001c)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001d)
	mov	a,#0x17
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001e)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x001f)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0020)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0021)
	mov	a,#0xA3
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0022)
	mov	a,#0x95
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0023)
	mov	a,#0x8E
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0024)
	mov	a,#0xB8
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0025)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0026)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0027)
	mov	a,#0xFA
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0028)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0029)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002a)
	mov	a,#0x52
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002b)
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002c)
	mov	a,#0xBD
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002d)
	mov	a,#0xE0
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002e)
	mov	a,#0x88
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x002f)
	mov	a,#0x23
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0030)
	mov	a,#0xDA
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0031)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0032)
	mov	a,#0x8F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0033)
	mov	a,#0x1E
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0034)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0035)
	mov	a,#0x14
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0036)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0037)
	mov	a,#0x80
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0038)
	mov	a,#0x56
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0039)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003a)
	mov	a,#0xAF
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003b)
	mov	a,#0xE2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003c)
	mov	a,#0xCC
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003d)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003e)
	mov	a,#0xC3
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x003f)
	mov	a,#0xF6
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0040)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0041)
	mov	a,#0x1B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0042)
	mov	a,#0xE5
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0043)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0044)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0045)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0046)
	mov	a,#0x45
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0047)
	mov	a,#0xA9
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0048)
	mov	a,#0xDB
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0049)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004a)
	mov	a,#0x71
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004b)
	mov	a,#0xCA
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004c)
	mov	a,#0x7B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004d)
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004e)
	mov	a,#0x55
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x004f)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0050)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0051)
	mov	a,#0xA7
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0052)
	mov	a,#0x5F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0053)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0054)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0055)
	mov	a,#0x75
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0056)
	mov	a,#0xFD
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0057)
	mov	a,#0xD8
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0058)
	mov	a,#0xC7
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0059)
	mov	a,#0xAB
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005a)
	mov	a,#0xD1
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005b)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005c)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005d)
	mov	a,#0x69
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005e)
	mov	a,#0x54
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x005f)
	mov	a,#0xD6
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0060)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0061)
	mov	a,#0xDE
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0062)
	mov	a,#0xF8
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0063)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0064)
	mov	a,#0x7A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0065)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0066)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0067)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0068)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0069)
	mov	a,#0x07
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006a)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006b)
	mov	a,#0xE6
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006c)
	mov	a,#0x92
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006d)
	mov	a,#0x6D
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006e)
	mov	a,#0x78
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x006f)
	mov	a,#0x97
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0070)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0071)
	mov	a,#0xBA
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0072)
	mov	a,#0x4F
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0073)
	mov	a,#0x30
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0074)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0075)
	mov	a,#0xC2
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0076)
	mov	a,#0x5A
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0077)
	mov	a,#0xC9
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0078)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0079)
	mov	a,#0x67
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007a)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007b)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007c)
	mov	a,#0x29
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007d)
	mov	a,#0x4B
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007e)
	mov	a,#0x2C
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x007f)
	mov	a,#0x2E
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0080)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0081)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0082)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0083)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0084)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0085)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0086)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0087)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0088)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0089)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x008a)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x008b)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x008c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x008d)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x008e)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x008f)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0090)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0091)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0092)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0093)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0094)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0095)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0096)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0097)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0098)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x0099)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x009a)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x009b)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x009c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x009d)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x009e)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x009f)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00a0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00a1)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00a2)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00a3)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00a4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00a5)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00a6)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00a7)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00a8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00a9)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00aa)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ab)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ac)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ad)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ae)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00af)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00b0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00b1)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00b2)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00b3)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00b4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00b5)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00b6)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00b7)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00b8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00b9)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ba)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00bb)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00bc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00bd)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00be)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00bf)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00c0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00c1)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00c2)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00c3)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00c4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00c5)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00c6)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00c7)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00c8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00c9)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ca)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00cb)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00cc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00cd)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ce)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00cf)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00d0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00d1)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00d2)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00d3)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00d4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00d5)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00d6)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00d7)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00d8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00d9)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00da)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00db)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00dc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00dd)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00de)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00df)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00e0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00e1)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00e2)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00e3)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00e4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00e5)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00e6)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00e7)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00e8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00e9)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ea)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00eb)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ec)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ed)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ee)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ef)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00f0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00f1)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00f2)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00f3)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00f4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00f5)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00f6)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00f7)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00f8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00f9)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00fa)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00fb)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00fc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00fd)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00fe)
	movx	@dptr,a
	mov	dptr,#(_rmodm + 0x00ff)
	movx	@dptr,a
;	rsa_exponent.c:50: volatile __xdata __at (0x1400) unsigned char a[] = {0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00 };
	mov	dptr,#_a
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0001)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0002)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0004)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0006)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0008)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_a + 0x000a)
	movx	@dptr,a
	mov	dptr,#(_a + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_a + 0x000c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_a + 0x000e)
	movx	@dptr,a
	mov	dptr,#(_a + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0010)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0012)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0014)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0016)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0018)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_a + 0x001a)
	movx	@dptr,a
	mov	dptr,#(_a + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_a + 0x001c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_a + 0x001e)
	movx	@dptr,a
	mov	dptr,#(_a + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0020)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0022)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0024)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0026)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0028)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_a + 0x002a)
	movx	@dptr,a
	mov	dptr,#(_a + 0x002b)
	movx	@dptr,a
	mov	dptr,#(_a + 0x002c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x002d)
	movx	@dptr,a
	mov	dptr,#(_a + 0x002e)
	movx	@dptr,a
	mov	dptr,#(_a + 0x002f)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0030)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0031)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0032)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0033)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0034)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0035)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0036)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0037)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0038)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0039)
	movx	@dptr,a
	mov	dptr,#(_a + 0x003a)
	movx	@dptr,a
	mov	dptr,#(_a + 0x003b)
	movx	@dptr,a
	mov	dptr,#(_a + 0x003c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x003d)
	movx	@dptr,a
	mov	dptr,#(_a + 0x003e)
	movx	@dptr,a
	mov	dptr,#(_a + 0x003f)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0040)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0041)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0042)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0043)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0044)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0045)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0046)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0047)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0048)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0049)
	movx	@dptr,a
	mov	dptr,#(_a + 0x004a)
	movx	@dptr,a
	mov	dptr,#(_a + 0x004b)
	movx	@dptr,a
	mov	dptr,#(_a + 0x004c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x004d)
	movx	@dptr,a
	mov	dptr,#(_a + 0x004e)
	movx	@dptr,a
	mov	dptr,#(_a + 0x004f)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0050)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0051)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0052)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0053)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0054)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0055)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0056)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0057)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0058)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0059)
	movx	@dptr,a
	mov	dptr,#(_a + 0x005a)
	movx	@dptr,a
	mov	dptr,#(_a + 0x005b)
	movx	@dptr,a
	mov	dptr,#(_a + 0x005c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x005d)
	movx	@dptr,a
	mov	dptr,#(_a + 0x005e)
	movx	@dptr,a
	mov	dptr,#(_a + 0x005f)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0060)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0061)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0062)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0063)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0064)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0065)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0066)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0067)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0068)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0069)
	movx	@dptr,a
	mov	dptr,#(_a + 0x006a)
	movx	@dptr,a
	mov	dptr,#(_a + 0x006b)
	movx	@dptr,a
	mov	dptr,#(_a + 0x006c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x006d)
	movx	@dptr,a
	mov	dptr,#(_a + 0x006e)
	movx	@dptr,a
	mov	dptr,#(_a + 0x006f)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0070)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0071)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0072)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0073)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0074)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0075)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0076)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0077)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0078)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0079)
	movx	@dptr,a
	mov	dptr,#(_a + 0x007a)
	movx	@dptr,a
	mov	dptr,#(_a + 0x007b)
	movx	@dptr,a
	mov	dptr,#(_a + 0x007c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x007d)
	movx	@dptr,a
	mov	dptr,#(_a + 0x007e)
	movx	@dptr,a
	mov	dptr,#(_a + 0x007f)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0080)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0081)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0082)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0083)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0084)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0085)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0086)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0087)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0088)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0089)
	movx	@dptr,a
	mov	dptr,#(_a + 0x008a)
	movx	@dptr,a
	mov	dptr,#(_a + 0x008b)
	movx	@dptr,a
	mov	dptr,#(_a + 0x008c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x008d)
	movx	@dptr,a
	mov	dptr,#(_a + 0x008e)
	movx	@dptr,a
	mov	dptr,#(_a + 0x008f)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0090)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0091)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0092)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0093)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0094)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0095)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0096)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0097)
	movx	@dptr,a
	mov	dptr,#(_a + 0x0098)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x0099)
	movx	@dptr,a
	mov	dptr,#(_a + 0x009a)
	movx	@dptr,a
	mov	dptr,#(_a + 0x009b)
	movx	@dptr,a
	mov	dptr,#(_a + 0x009c)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x009d)
	movx	@dptr,a
	mov	dptr,#(_a + 0x009e)
	movx	@dptr,a
	mov	dptr,#(_a + 0x009f)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00a0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00a1)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00a2)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00a3)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00a4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00a5)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00a6)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00a7)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00a8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00a9)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00aa)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ab)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ac)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ad)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ae)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00af)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00b0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00b1)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00b2)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00b3)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00b4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00b5)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00b6)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00b7)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00b8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00b9)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ba)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00bb)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00bc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00bd)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00be)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00bf)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00c0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00c1)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00c2)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00c3)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00c4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00c5)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00c6)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00c7)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00c8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00c9)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ca)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00cb)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00cc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00cd)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ce)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00cf)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00d0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00d1)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00d2)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00d3)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00d4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00d5)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00d6)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00d7)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00d8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00d9)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00da)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00db)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00dc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00dd)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00de)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00df)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00e0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00e1)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00e2)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00e3)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00e4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00e5)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00e6)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00e7)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00e8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00e9)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ea)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00eb)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ec)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ed)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ee)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ef)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00f0)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00f1)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00f2)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00f3)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00f4)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00f5)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00f6)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00f7)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00f8)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00f9)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00fa)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00fb)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00fc)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_a + 0x00fd)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00fe)
	movx	@dptr,a
	mov	dptr,#(_a + 0x00ff)
	movx	@dptr,a
;	rsa_exponent.c:54: volatile __xdata __at (0x0100) unsigned char e[] = {0x01, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00  };
	mov	dptr,#_e
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_e + 0x0001)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_e + 0x0002)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0003)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0004)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0005)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0006)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0007)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0008)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0009)
	movx	@dptr,a
	mov	dptr,#(_e + 0x000a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x000b)
	movx	@dptr,a
	mov	dptr,#(_e + 0x000c)
	movx	@dptr,a
	mov	dptr,#(_e + 0x000d)
	movx	@dptr,a
	mov	dptr,#(_e + 0x000e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x000f)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0010)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0011)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0012)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0013)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0014)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0015)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0016)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0017)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0018)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0019)
	movx	@dptr,a
	mov	dptr,#(_e + 0x001a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x001b)
	movx	@dptr,a
	mov	dptr,#(_e + 0x001c)
	movx	@dptr,a
	mov	dptr,#(_e + 0x001d)
	movx	@dptr,a
	mov	dptr,#(_e + 0x001e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x001f)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0020)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0021)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0022)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0023)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0024)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0025)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0026)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0027)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0028)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0029)
	movx	@dptr,a
	mov	dptr,#(_e + 0x002a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x002b)
	movx	@dptr,a
	mov	dptr,#(_e + 0x002c)
	movx	@dptr,a
	mov	dptr,#(_e + 0x002d)
	movx	@dptr,a
	mov	dptr,#(_e + 0x002e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x002f)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0030)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0031)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0032)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0033)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0034)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0035)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0036)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0037)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0038)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0039)
	movx	@dptr,a
	mov	dptr,#(_e + 0x003a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x003b)
	movx	@dptr,a
	mov	dptr,#(_e + 0x003c)
	movx	@dptr,a
	mov	dptr,#(_e + 0x003d)
	movx	@dptr,a
	mov	dptr,#(_e + 0x003e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x003f)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0040)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0041)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0042)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0043)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0044)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0045)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0046)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0047)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0048)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0049)
	movx	@dptr,a
	mov	dptr,#(_e + 0x004a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x004b)
	movx	@dptr,a
	mov	dptr,#(_e + 0x004c)
	movx	@dptr,a
	mov	dptr,#(_e + 0x004d)
	movx	@dptr,a
	mov	dptr,#(_e + 0x004e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x004f)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0050)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0051)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0052)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0053)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0054)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0055)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0056)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0057)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0058)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0059)
	movx	@dptr,a
	mov	dptr,#(_e + 0x005a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x005b)
	movx	@dptr,a
	mov	dptr,#(_e + 0x005c)
	movx	@dptr,a
	mov	dptr,#(_e + 0x005d)
	movx	@dptr,a
	mov	dptr,#(_e + 0x005e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x005f)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0060)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0061)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0062)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0063)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0064)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0065)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0066)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0067)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0068)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0069)
	movx	@dptr,a
	mov	dptr,#(_e + 0x006a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x006b)
	movx	@dptr,a
	mov	dptr,#(_e + 0x006c)
	movx	@dptr,a
	mov	dptr,#(_e + 0x006d)
	movx	@dptr,a
	mov	dptr,#(_e + 0x006e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x006f)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0070)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0071)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0072)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0073)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0074)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0075)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0076)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0077)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0078)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0079)
	movx	@dptr,a
	mov	dptr,#(_e + 0x007a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x007b)
	movx	@dptr,a
	mov	dptr,#(_e + 0x007c)
	movx	@dptr,a
	mov	dptr,#(_e + 0x007d)
	movx	@dptr,a
	mov	dptr,#(_e + 0x007e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x007f)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0080)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0081)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0082)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0083)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0084)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0085)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0086)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0087)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0088)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0089)
	movx	@dptr,a
	mov	dptr,#(_e + 0x008a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x008b)
	movx	@dptr,a
	mov	dptr,#(_e + 0x008c)
	movx	@dptr,a
	mov	dptr,#(_e + 0x008d)
	movx	@dptr,a
	mov	dptr,#(_e + 0x008e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x008f)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0090)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0091)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0092)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0093)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0094)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0095)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0096)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x0097)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0098)
	movx	@dptr,a
	mov	dptr,#(_e + 0x0099)
	movx	@dptr,a
	mov	dptr,#(_e + 0x009a)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x009b)
	movx	@dptr,a
	mov	dptr,#(_e + 0x009c)
	movx	@dptr,a
	mov	dptr,#(_e + 0x009d)
	movx	@dptr,a
	mov	dptr,#(_e + 0x009e)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x009f)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00a0)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00a1)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00a2)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00a3)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00a4)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00a5)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00a6)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00a7)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00a8)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00a9)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00aa)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ab)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ac)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ad)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ae)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00af)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00b0)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00b1)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00b2)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00b3)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00b4)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00b5)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00b6)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00b7)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00b8)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00b9)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ba)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00bb)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00bc)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00bd)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00be)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00bf)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00c0)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00c1)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00c2)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00c3)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00c4)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00c5)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00c6)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00c7)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00c8)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00c9)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ca)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00cb)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00cc)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00cd)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ce)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00cf)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00d0)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00d1)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00d2)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00d3)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00d4)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00d5)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00d6)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00d7)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00d8)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00d9)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00da)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00db)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00dc)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00dd)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00de)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00df)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00e0)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00e1)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00e2)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00e3)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00e4)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00e5)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00e6)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00e7)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00e8)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00e9)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ea)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00eb)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ec)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ed)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ee)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ef)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00f0)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00f1)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00f2)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00f3)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00f4)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00f5)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00f6)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00f7)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00f8)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00f9)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00fa)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00fb)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00fc)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00fd)
	movx	@dptr,a
	mov	dptr,#(_e + 0x00fe)
	clr	a
	movx	@dptr,a
	mov	dptr,#(_e + 0x00ff)
	movx	@dptr,a
;	rsa_exponent.c:56: volatile __xdata __at (0x0200) unsigned char d[] = {0x01, 0x0F, 0xEC, 0x4A, 0xDD, 0x26, 0x57, 0x7D, 0x77, 0x31, 0x93, 0xE1, 0xCF, 0x05, 0xC5, 0x06, 0xE4, 0x0F, 0x04, 0xF9,
	mov	dptr,#_d
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_d + 0x0001)
	mov	a,#0x0F
	movx	@dptr,a
	mov	dptr,#(_d + 0x0002)
	mov	a,#0xEC
	movx	@dptr,a
	mov	dptr,#(_d + 0x0003)
	mov	a,#0x4A
	movx	@dptr,a
	mov	dptr,#(_d + 0x0004)
	mov	a,#0xDD
	movx	@dptr,a
	mov	dptr,#(_d + 0x0005)
	mov	a,#0x26
	movx	@dptr,a
	mov	dptr,#(_d + 0x0006)
	mov	a,#0x57
	movx	@dptr,a
	mov	dptr,#(_d + 0x0007)
	mov	a,#0x7D
	movx	@dptr,a
	mov	dptr,#(_d + 0x0008)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_d + 0x0009)
	mov	a,#0x31
	movx	@dptr,a
	mov	dptr,#(_d + 0x000a)
	mov	a,#0x93
	movx	@dptr,a
	mov	dptr,#(_d + 0x000b)
	mov	a,#0xE1
	movx	@dptr,a
	mov	dptr,#(_d + 0x000c)
	mov	a,#0xCF
	movx	@dptr,a
	mov	dptr,#(_d + 0x000d)
	mov	a,#0x05
	movx	@dptr,a
	mov	dptr,#(_d + 0x000e)
	mov	a,#0xC5
	movx	@dptr,a
	mov	dptr,#(_d + 0x000f)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_d + 0x0010)
	mov	a,#0xE4
	movx	@dptr,a
	mov	dptr,#(_d + 0x0011)
	mov	a,#0x0F
	movx	@dptr,a
	mov	dptr,#(_d + 0x0012)
	mov	a,#0x04
	movx	@dptr,a
	mov	dptr,#(_d + 0x0013)
	mov	a,#0xF9
	movx	@dptr,a
	mov	dptr,#(_d + 0x0014)
	mov	a,#0x08
	movx	@dptr,a
	mov	dptr,#(_d + 0x0015)
	mov	a,#0x57
	movx	@dptr,a
	mov	dptr,#(_d + 0x0016)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_d + 0x0017)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_d + 0x0018)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_d + 0x0019)
	mov	a,#0xA9
	movx	@dptr,a
	mov	dptr,#(_d + 0x001a)
	mov	a,#0x73
	movx	@dptr,a
	mov	dptr,#(_d + 0x001b)
	mov	a,#0xFB
	movx	@dptr,a
	mov	dptr,#(_d + 0x001c)
	mov	a,#0xA8
	movx	@dptr,a
	mov	dptr,#(_d + 0x001d)
	mov	a,#0x3F
	movx	@dptr,a
	mov	dptr,#(_d + 0x001e)
	mov	a,#0x53
	movx	@dptr,a
	mov	dptr,#(_d + 0x001f)
	mov	a,#0x43
	movx	@dptr,a
	mov	dptr,#(_d + 0x0020)
	mov	a,#0x1F
	movx	@dptr,a
	mov	dptr,#(_d + 0x0021)
	mov	a,#0x7F
	movx	@dptr,a
	mov	dptr,#(_d + 0x0022)
	mov	a,#0x4C
	movx	@dptr,a
	mov	dptr,#(_d + 0x0023)
	mov	a,#0xC7
	movx	@dptr,a
	mov	dptr,#(_d + 0x0024)
	mov	a,#0xD8
	movx	@dptr,a
	mov	dptr,#(_d + 0x0025)
	mov	a,#0xB2
	movx	@dptr,a
	mov	dptr,#(_d + 0x0026)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_d + 0x0027)
	mov	a,#0x6E
	movx	@dptr,a
	mov	dptr,#(_d + 0x0028)
	mov	a,#0xC1
	movx	@dptr,a
	mov	dptr,#(_d + 0x0029)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_d + 0x002a)
	mov	a,#0x40
	movx	@dptr,a
	mov	dptr,#(_d + 0x002b)
	mov	a,#0xF5
	movx	@dptr,a
	mov	dptr,#(_d + 0x002c)
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_d + 0x002d)
	mov	a,#0xA8
	movx	@dptr,a
	mov	dptr,#(_d + 0x002e)
	mov	a,#0x68
	movx	@dptr,a
	mov	dptr,#(_d + 0x002f)
	mov	a,#0x13
	movx	@dptr,a
	mov	dptr,#(_d + 0x0030)
	mov	a,#0x87
	movx	@dptr,a
	mov	dptr,#(_d + 0x0031)
	mov	a,#0x8B
	movx	@dptr,a
	mov	dptr,#(_d + 0x0032)
	mov	a,#0x36
	movx	@dptr,a
	mov	dptr,#(_d + 0x0033)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_d + 0x0034)
	mov	a,#0x74
	movx	@dptr,a
	mov	dptr,#(_d + 0x0035)
	mov	a,#0x59
	movx	@dptr,a
	mov	dptr,#(_d + 0x0036)
	mov	a,#0x44
	movx	@dptr,a
	mov	dptr,#(_d + 0x0037)
	mov	a,#0x66
	movx	@dptr,a
	mov	dptr,#(_d + 0x0038)
	mov	a,#0xBF
	movx	@dptr,a
	mov	dptr,#(_d + 0x0039)
	mov	a,#0xC7
	movx	@dptr,a
	mov	dptr,#(_d + 0x003a)
	mov	a,#0x49
	movx	@dptr,a
	mov	dptr,#(_d + 0x003b)
	mov	a,#0x24
	movx	@dptr,a
	mov	dptr,#(_d + 0x003c)
	mov	a,#0x96
	movx	@dptr,a
	mov	dptr,#(_d + 0x003d)
	mov	a,#0xC4
	movx	@dptr,a
	mov	dptr,#(_d + 0x003e)
	mov	a,#0xFA
	movx	@dptr,a
	mov	dptr,#(_d + 0x003f)
	mov	a,#0x0C
	movx	@dptr,a
	mov	dptr,#(_d + 0x0040)
	mov	a,#0x8A
	movx	@dptr,a
	mov	dptr,#(_d + 0x0041)
	mov	a,#0xF3
	movx	@dptr,a
	mov	dptr,#(_d + 0x0042)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_d + 0x0043)
	mov	a,#0xCE
	movx	@dptr,a
	mov	dptr,#(_d + 0x0044)
	mov	a,#0xDC
	movx	@dptr,a
	mov	dptr,#(_d + 0x0045)
	mov	a,#0xD0
	movx	@dptr,a
	mov	dptr,#(_d + 0x0046)
	mov	a,#0x5C
	movx	@dptr,a
	mov	dptr,#(_d + 0x0047)
	mov	a,#0x61
	movx	@dptr,a
	mov	dptr,#(_d + 0x0048)
	mov	a,#0x9B
	movx	@dptr,a
	mov	dptr,#(_d + 0x0049)
	mov	a,#0x2E
	movx	@dptr,a
	mov	dptr,#(_d + 0x004a)
	mov	a,#0x9C
	movx	@dptr,a
	mov	dptr,#(_d + 0x004b)
	mov	a,#0x51
	movx	@dptr,a
	mov	dptr,#(_d + 0x004c)
	mov	a,#0xE9
	movx	@dptr,a
	mov	dptr,#(_d + 0x004d)
	mov	a,#0x5D
	movx	@dptr,a
	mov	dptr,#(_d + 0x004e)
	mov	a,#0xFA
	movx	@dptr,a
	mov	dptr,#(_d + 0x004f)
	mov	a,#0x84
	movx	@dptr,a
	mov	dptr,#(_d + 0x0050)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_d + 0x0051)
	mov	a,#0x77
	movx	@dptr,a
	mov	dptr,#(_d + 0x0052)
	mov	a,#0x4D
	movx	@dptr,a
	mov	dptr,#(_d + 0x0053)
	mov	a,#0xF1
	movx	@dptr,a
	mov	dptr,#(_d + 0x0054)
	mov	a,#0x90
	movx	@dptr,a
	mov	dptr,#(_d + 0x0055)
	mov	a,#0x02
	movx	@dptr,a
	mov	dptr,#(_d + 0x0056)
	mov	a,#0x21
	movx	@dptr,a
	mov	dptr,#(_d + 0x0057)
	mov	a,#0x01
	movx	@dptr,a
	mov	dptr,#(_d + 0x0058)
	mov	a,#0x11
	movx	@dptr,a
	mov	dptr,#(_d + 0x0059)
	mov	a,#0x8A
	movx	@dptr,a
	mov	dptr,#(_d + 0x005a)
	mov	a,#0xFE
	movx	@dptr,a
	mov	dptr,#(_d + 0x005b)
	mov	a,#0x55
	movx	@dptr,a
	mov	dptr,#(_d + 0x005c)
	mov	a,#0x6A
	movx	@dptr,a
	mov	dptr,#(_d + 0x005d)
	mov	a,#0xD3
	movx	@dptr,a
	mov	dptr,#(_d + 0x005e)
	mov	a,#0x8E
	movx	@dptr,a
	mov	dptr,#(_d + 0x005f)
	mov	a,#0xB8
	movx	@dptr,a
	mov	dptr,#(_d + 0x0060)
	mov	a,#0x57
	movx	@dptr,a
	mov	dptr,#(_d + 0x0061)
	mov	a,#0x76
	movx	@dptr,a
	mov	dptr,#(_d + 0x0062)
	mov	a,#0xED
	movx	@dptr,a
	mov	dptr,#(_d + 0x0063)
	mov	a,#0xB0
	movx	@dptr,a
	mov	dptr,#(_d + 0x0064)
	mov	a,#0xA2
	movx	@dptr,a
	mov	dptr,#(_d + 0x0065)
	mov	a,#0x72
	movx	@dptr,a
	mov	dptr,#(_d + 0x0066)
	mov	a,#0xEB
	movx	@dptr,a
	mov	dptr,#(_d + 0x0067)
	mov	a,#0xBE
	movx	@dptr,a
	mov	dptr,#(_d + 0x0068)
	mov	a,#0x31
	movx	@dptr,a
	mov	dptr,#(_d + 0x0069)
	mov	a,#0x6C
	movx	@dptr,a
	mov	dptr,#(_d + 0x006a)
	mov	a,#0x0D
	movx	@dptr,a
	mov	dptr,#(_d + 0x006b)
	mov	a,#0x59
	movx	@dptr,a
	mov	dptr,#(_d + 0x006c)
	mov	a,#0x9E
	movx	@dptr,a
	mov	dptr,#(_d + 0x006d)
	mov	a,#0x63
	movx	@dptr,a
	mov	dptr,#(_d + 0x006e)
	mov	a,#0x06
	movx	@dptr,a
	mov	dptr,#(_d + 0x006f)
	mov	a,#0xB1
	movx	@dptr,a
	mov	dptr,#(_d + 0x0070)
	mov	a,#0x18
	movx	@dptr,a
	mov	dptr,#(_d + 0x0071)
	mov	a,#0xAE
	movx	@dptr,a
	mov	dptr,#(_d + 0x0072)
	mov	a,#0xF5
	movx	@dptr,a
	mov	dptr,#(_d + 0x0073)
	mov	a,#0x65
	movx	@dptr,a
	mov	dptr,#(_d + 0x0074)
	mov	a,#0x83
	movx	@dptr,a
	mov	dptr,#(_d + 0x0075)
	mov	a,#0xDE
	movx	@dptr,a
	mov	dptr,#(_d + 0x0076)
	mov	a,#0x2A
	movx	@dptr,a
	mov	dptr,#(_d + 0x0077)
	mov	a,#0xD2
	movx	@dptr,a
	mov	dptr,#(_d + 0x0078)
	mov	a,#0x98
	movx	@dptr,a
	mov	dptr,#(_d + 0x0079)
	mov	a,#0xB9
	movx	@dptr,a
	mov	dptr,#(_d + 0x007a)
	mov	a,#0xD8
	movx	@dptr,a
	mov	dptr,#(_d + 0x007b)
	mov	a,#0xF6
	movx	@dptr,a
	mov	dptr,#(_d + 0x007c)
	mov	a,#0xBD
	movx	@dptr,a
	mov	dptr,#(_d + 0x007d)
	mov	a,#0x25
	movx	@dptr,a
	mov	dptr,#(_d + 0x007e)
	mov	a,#0x6E
	movx	@dptr,a
	mov	dptr,#(_d + 0x007f)
	mov	a,#0x0B
	movx	@dptr,a
	.area GSFINAL (CODE)
	ljmp	__sdcc_program_startup
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area HOME    (CODE)
	.area HOME    (CODE)
__sdcc_program_startup:
	ljmp	_main
;	return from main will return to caller
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area CSEG    (CODE)
;------------------------------------------------------------
;Allocation info for local variables in function 'main'
;------------------------------------------------------------
;i                         Allocated to registers r6 r7 
;j                         Allocated to registers r6 r7 
;------------------------------------------------------------
;	rsa_exponent.c:121: void main() {
;	-----------------------------------------
;	 function main
;	-----------------------------------------
_main:
	ar7 = 0x07
	ar6 = 0x06
	ar5 = 0x05
	ar4 = 0x04
	ar3 = 0x03
	ar2 = 0x02
	ar1 = 0x01
	ar0 = 0x00
;	rsa_exponent.c:124: read_mem(0);
	mov	_P0,#0x01
00101$:
	mov	a,_P3
	jz	00101$
	mov	_P0,#0x00
;	rsa_exponent.c:125: mul_x_r2modm(0); 
	mov	_P0,#0x05
00103$:
	mov	a,_P3
	jz	00103$
	mov	_P0,#0x00
;	rsa_exponent.c:126: for (i=9-1; i>=0; i--){
	mov	r6,#0x08
	mov	r7,#0x00
00137$:
;	rsa_exponent.c:127: mul_a_a(0);
	mov	_P0,#0x55
00105$:
	mov	a,_P3
	jz	00105$
	mov	_P0,#0x00
;	rsa_exponent.c:128: if ((e[i/8] >> (i%8))&0x1){mul_a_x(0);}
	mov	__divsint_PARM_2,#0x08
	mov	(__divsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	lcall	__divsint
	mov	r4,dpl
	mov	r5,dph
	pop	ar6
	pop	ar7
	mov	dpl,r4
	mov	a,#(_e >> 8)
	add	a,r5
	mov	dph,a
	movx	a,@dptr
	mov	r5,a
	mov	__modsint_PARM_2,#0x08
	mov	(__modsint_PARM_2 + 1),#0x00
	mov	dpl,r6
	mov	dph,r7
	push	ar7
	push	ar6
	push	ar5
	lcall	__modsint
	mov	r3,dpl
	mov	r4,dph
	pop	ar5
	pop	ar6
	pop	ar7
	mov	b,r3
	inc	b
	mov	a,r5
	sjmp	00269$
00268$:
	clr	c
	rrc	a
00269$:
	djnz	b,00268$
	jnb	acc.0,00138$
	mov	_P0,#0x65
00107$:
	mov	a,_P3
	jz	00107$
	mov	_P0,#0x00
00138$:
;	rsa_exponent.c:126: for (i=9-1; i>=0; i--){
	dec	r6
	cjne	r6,#0xFF,00272$
	dec	r7
00272$:
	mov	a,r7
	jnb	acc.7,00137$
;	rsa_exponent.c:130: mul_a_1(0);
	mov	_P0,#0x75
00112$:
	mov	a,_P3
	jz	00112$
	mov	_P0,#0x00
;	rsa_exponent.c:131: write_mem(0);
	mov	_P0,#0x09
00114$:
	mov	a,_P3
	jz	00114$
	mov	_P0,#0x00
;	rsa_exponent.c:132: display_res(0);
	mov	_P0,#0x0D
00116$:
	mov	a,_P3
	jz	00116$
	mov	_P0,#0x00
;	rsa_exponent.c:134: for(i=0;i<256;++i)
	mov	r6,#0x00
	mov	r7,#0x00
00139$:
;	rsa_exponent.c:136: x[i] = a[i];
	mov	ar4,r6
	mov	a,#(_x >> 8)
	add	a,r7
	mov	r5,a
	mov	dpl,r6
	mov	a,#(_a >> 8)
	add	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	dpl,r4
	mov	dph,r5
	movx	@dptr,a
;	rsa_exponent.c:134: for(i=0;i<256;++i)
	inc	r6
	cjne	r6,#0x00,00277$
	inc	r7
00277$:
	clr	c
	mov	a,r7
	xrl	a,#0x80
	subb	a,#0x81
	jc	00139$
;	rsa_exponent.c:140: read_mem(0);
	mov	_P0,#0x01
00119$:
	mov	a,_P3
	jz	00119$
	mov	_P0,#0x00
;	rsa_exponent.c:141: mul_x_r2modm(0); 
	mov	_P0,#0x05
00121$:
	mov	a,_P3
	jz	00121$
	mov	_P0,#0x00
;	rsa_exponent.c:142: for (j=127; j>=0; j--){
	mov	r6,#0x7F
	mov	r7,#0x00
;	rsa_exponent.c:143: for(i=7;i>=0;i--)
00175$:
	mov	r4,#0x07
	mov	r5,#0x00
00141$:
;	rsa_exponent.c:145: mul_a_a(0);
	mov	_P0,#0x55
00123$:
	mov	a,_P3
	jz	00123$
	mov	_P0,#0x00
;	rsa_exponent.c:147: if ((d[j] >> (i))&0x1){mul_a_x(0);}
	mov	dpl,r6
	mov	a,#(_d >> 8)
	add	a,r7
	mov	dph,a
	movx	a,@dptr
	mov	r3,a
	mov	b,r4
	inc	b
	mov	a,r3
	sjmp	00283$
00282$:
	clr	c
	rrc	a
00283$:
	djnz	b,00282$
	jnb	acc.0,00142$
	mov	_P0,#0x65
00125$:
	mov	a,_P3
	jz	00125$
	mov	_P0,#0x00
00142$:
;	rsa_exponent.c:143: for(i=7;i>=0;i--)
	dec	r4
	cjne	r4,#0xFF,00286$
	dec	r5
00286$:
	mov	a,r5
	jnb	acc.7,00141$
;	rsa_exponent.c:142: for (j=127; j>=0; j--){
	dec	r6
	cjne	r6,#0xFF,00288$
	dec	r7
00288$:
	mov	a,r7
	jnb	acc.7,00175$
;	rsa_exponent.c:150: mul_a_1(0);
	mov	_P0,#0x75
00131$:
	mov	a,_P3
	jz	00131$
	mov	_P0,#0x00
;	rsa_exponent.c:151: write_mem(0);
	mov	_P0,#0x09
00133$:
	mov	a,_P3
	jz	00133$
	mov	_P0,#0x00
;	rsa_exponent.c:152: display_res(0);
	mov	_P0,#0x0D
00135$:
	mov	a,_P3
	jz	00135$
	mov	_P0,#0x00
;	rsa_exponent.c:154: terminate();
	mov	_P3,#0x55
	ret
	.area CSEG    (CODE)
	.area CONST   (CODE)
	.area XINIT   (CODE)
	.area CABS    (ABS,CODE)
