default rel

global _asciiTable
global __globalInit
global hilo
global shift_l
global shift_r
global xorshift
global int2chr
global toStringHex
global getnumber
global main
global print
global println
global getString
global getInt
global toString
global __stringLength
global __stringSubstring
global __stringParseInt
global __stringOrd
global __arraySize
global __stringAdd
global __stringEq
global __stringNeq
global __stringLt
global __stringGt
global __stringLe
global __stringGe
global __printInt
global __printlnInt

extern strcmp
extern __sprintf_chk
extern __stack_chk_fail
extern memcpy
extern malloc
extern __isoc99_scanf
extern puts
extern __printf_chk

SECTION .text

__globalInit:
		push    rbp
		mov     rbp, rsp
		mov     qword [rel _asciiTable], __str_0
		pop     rbp
		ret     

hilo:
		push    rbp
		mov     rbp, rsp
		shl     rdi, 16
		or      rsi, rdi
		mov     rax, rsi
		pop     rbp
		ret     

shift_l:
		push    rbp
		mov     rbp, rsp
		mov     rcx, rsi
		shl     rdi, cl
__L_1:
		mov     rax, rdi
		and     rax, 2147483647
		pop     rbp
		ret     

shift_r:
		push    rbp
		mov     rbp, rsp
__L_2:
		mov     rax, 2147483647
		mov     rcx, rsi
		sar     rax, cl
		shl     rax, 1
		add     rax, 1
		mov     rcx, rsi
		sar     rdi, cl
		and     rax, rdi
		and     rax, 2147483647
		pop     rbp
		ret     

xorshift:
		push    rbp
		mov     rbp, rsp
		mov     rax, rdi
		add     rax, 1
		mov     rdx, 0
__L_3:
		mov     rcx, rsi
		imul    rcx, 10
		cmp     rdx, rcx
		jge     __L_4
__L_5:
		mov     rcx, rax
		shl     rcx, 13
		and     rcx, 2147483647
		xor     rax, rcx
		mov     rcx, rax
		sar     rcx, 17
		mov     r8, 32767
		and     r8, rcx
		and     r8, 2147483647
		xor     rax, r8
		mov     rcx, rax
		shl     rcx, 5
		and     rcx, 2147483647
		xor     rax, rcx
		inc     rdx
		jmp     __L_3
__L_4:
		xor     rax, 123456789
		pop     rbp
		ret     

int2chr:
		push    rbp
		mov     rbp, rsp
		mov     rcx, qword [rel _asciiTable]
		cmp     rdi, 32
		jl      __L_6
__L_7:
		cmp     rdi, 126
		jg      __L_6
__L_8:
		mov     rdx, rdi
		sub     rdx, 32
		mov     rdi, rcx
		mov     rsi, rdx
		call    __stringSubstring
		pop     rbp
		ret     
__L_6:
		mov     rax, __str_1
		pop     rbp
		ret     

toStringHex:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], r14
		mov     qword [rbp - 16], r12
		mov     qword [rbp - 24], rbx
		mov     r12, rdi
		mov     r14, qword [rel _asciiTable]
		mov     rax, __str_1
		mov     rbx, 28
__L_9:
		mov     qword [rbp - 32], rax
		cmp     rbx, 0
		jl      __L_10
__L_11:
		mov     r8, r12
		mov     rcx, rbx
		sar     r8, cl
		and     r8, 15
		cmp     r8, 10
		jge     __L_12
__L_13:
		mov     rdx, 48
		add     rdx, r8
		cmp     rdx, 32
		jl      __L_14
__L_15:
		cmp     rdx, 126
		jg      __L_14
__L_16:
		sub     rdx, 32
		mov     rdi, r14
		mov     rsi, rdx
		call    __stringSubstring
		jmp     __L_17
__L_14:
		mov     rax, __str_1
__L_17:
		mov     rsi, rax
		mov     rdi, qword [rbp - 32]
		call    __stringAdd
		jmp     __L_18
__L_12:
		mov     rdx, 65
		add     rdx, r8
		sub     rdx, 10
		cmp     rdx, 32
		jl      __L_19
__L_20:
		cmp     rdx, 126
		jg      __L_19
__L_21:
		sub     rdx, 32
		mov     rdi, r14
		mov     rsi, rdx
		call    __stringSubstring
		jmp     __L_22
__L_19:
		mov     rax, __str_1
__L_22:
		mov     rsi, rax
		mov     rdi, qword [rbp - 32]
		call    __stringAdd
__L_18:
		sub     rbx, 4
		jmp     __L_9
__L_10:
		mov     r14, qword [rbp - 8]
		mov     r12, qword [rbp - 16]
		mov     rbx, qword [rbp - 24]
		mov     rax, qword [rbp - 32]
		mov     rsp, rbp
		pop     rbp
		ret     

getnumber:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 48
		mov     qword [rbp - 8], r14
		mov     qword [rbp - 16], r12
		mov     qword [rbp - 24], r15
		mov     qword [rbp - 32], rbx
		mov     qword [rbp - 40], r13
		mov     r13, rsi
		mov     r12, rdx
		and     r12, 31
__L_23:
		add     rdi, 1
		mov     rbx, 0
__L_24:
		mov     r14, rdi
		mov     rcx, r13
		imul    rcx, 10
		cmp     rbx, rcx
		jge     __L_25
__L_26:
		mov     r15, r14
		shl     r15, 13
		mov     rdi, 32767
		mov     rsi, 65535
		call    hilo
		and     r15, rax
		xor     r14, r15
		mov     rdi, r14
		mov     rsi, 17
		call    shift_r
		xor     r14, rax
		mov     rdi, r14
		mov     rsi, 5
		call    shift_l
		mov     rdi, r14
		xor     rdi, rax
		inc     rbx
		jmp     __L_24
__L_25:
		xor     r14, 123456789
		mov     rbx, r14
		mov     rcx, r12
		shl     rbx, cl
		mov     rdi, 32767
		mov     rsi, 65535
		call    hilo
		and     rbx, rax
		mov     r13, 32
		sub     r13, r12
		mov     rdi, 32767
		mov     rsi, 65535
		call    hilo
		mov     r12, rax
		mov     rcx, r13
		sar     r12, cl
		shl     r12, 1
		add     r12, 1
		mov     rcx, r13
		sar     r14, cl
		and     r12, r14
		mov     rdi, 32767
		mov     rsi, 65535
		call    hilo
		and     r12, rax
		mov     rax, rbx
		or      rax, r12
		mov     r14, qword [rbp - 8]
		mov     r12, qword [rbp - 16]
		mov     r15, qword [rbp - 24]
		mov     rbx, qword [rbp - 32]
		mov     r13, qword [rbp - 40]
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 2288
		mov     qword [rbp - 8], r14
		mov     qword [rbp - 16], r12
		mov     qword [rbp - 24], r15
		mov     qword [rbp - 32], rbx
		mov     qword [rbp - 40], r13
		call    __globalInit
		call    getInt
		mov     qword [rbp - 48], rax
		call    getInt
		mov     qword [rbp - 56], rax
		call    getInt
		mov     qword [rbp - 64], rax
		call    getInt
		mov     qword [rbp - 72], rax
		call    getInt
		mov     qword [rbp - 80], rax
		call    getInt
		mov     qword [rbp - 88], rax
		mov     rcx, qword [rbp - 48]
		mov     rdi, 0
		mov     r11, 0
		mov     r12, 0
		mov     rbx, 0
__L_27:
		mov     qword [rbp - 96], rcx
		mov     qword [rbp - 104], rdi
		mov     r14, r11
		mov     rcx, qword [rbp - 56]
		cmp     qword [rbp - 96], rcx
		jge     __L_28
__L_29:
		mov     rcx, qword [rbp - 64]
		mov     qword [rbp - 112], rcx
		mov     rcx, qword [rbp - 104]
		mov     qword [rbp - 120], rcx
		mov     qword [rbp - 128], r14
		mov     qword [rbp - 136], r12
		mov     qword [rbp - 144], rbx
		mov     rcx, qword [rbp - 152]
		mov     qword [rbp - 160], rcx
		mov     rcx, qword [rbp - 168]
		mov     qword [rbp - 176], rcx
		mov     rcx, qword [rbp - 184]
		mov     qword [rbp - 192], rcx
		mov     rcx, qword [rbp - 200]
		mov     qword [rbp - 208], rcx
		mov     rcx, qword [rbp - 216]
		mov     qword [rbp - 224], rcx
		mov     rcx, qword [rbp - 232]
		mov     qword [rbp - 240], rcx
		mov     rcx, qword [rbp - 248]
		mov     qword [rbp - 256], rcx
		mov     rcx, qword [rbp - 264]
		mov     qword [rbp - 272], rcx
		mov     rcx, qword [rbp - 280]
		mov     qword [rbp - 288], rcx
		mov     rcx, qword [rbp - 296]
		mov     qword [rbp - 304], rcx
		mov     rcx, qword [rbp - 312]
		mov     qword [rbp - 320], rcx
		mov     rcx, qword [rbp - 328]
		mov     qword [rbp - 336], rcx
		mov     rcx, qword [rbp - 344]
		mov     qword [rbp - 352], rcx
		mov     rcx, qword [rbp - 360]
		mov     qword [rbp - 368], rcx
		mov     rcx, qword [rbp - 376]
		mov     qword [rbp - 384], rcx
		mov     rcx, qword [rbp - 392]
		mov     qword [rbp - 400], rcx
		mov     rcx, qword [rbp - 408]
		mov     qword [rbp - 416], rcx
		mov     rcx, qword [rbp - 424]
		mov     qword [rbp - 432], rcx
		mov     rcx, qword [rbp - 440]
		mov     qword [rbp - 448], rcx
		mov     rcx, qword [rbp - 456]
		mov     qword [rbp - 464], rcx
		mov     rcx, qword [rbp - 472]
		mov     qword [rbp - 480], rcx
		mov     rcx, qword [rbp - 488]
		mov     qword [rbp - 496], rcx
		mov     rcx, qword [rbp - 504]
		mov     qword [rbp - 512], rcx
		mov     rcx, qword [rbp - 520]
		mov     qword [rbp - 528], rcx
		mov     rcx, qword [rbp - 536]
		mov     qword [rbp - 544], rcx
		mov     rcx, qword [rbp - 552]
		mov     qword [rbp - 560], rcx
		mov     rcx, qword [rbp - 568]
		mov     qword [rbp - 576], rcx
		mov     rcx, qword [rbp - 584]
		mov     qword [rbp - 592], rcx
		mov     rcx, qword [rbp - 600]
		mov     qword [rbp - 608], rcx
		mov     rcx, qword [rbp - 616]
		mov     qword [rbp - 624], rcx
		mov     rcx, qword [rbp - 632]
		mov     qword [rbp - 640], rcx
		mov     rcx, qword [rbp - 648]
		mov     qword [rbp - 656], rcx
		mov     rcx, qword [rbp - 664]
		mov     qword [rbp - 672], rcx
		mov     rcx, qword [rbp - 680]
		mov     qword [rbp - 688], rcx
		mov     rcx, qword [rbp - 696]
		mov     qword [rbp - 704], rcx
		mov     rcx, qword [rbp - 712]
		mov     qword [rbp - 720], rcx
		mov     rcx, qword [rbp - 728]
		mov     qword [rbp - 736], rcx
		mov     rcx, qword [rbp - 744]
		mov     qword [rbp - 752], rcx
		mov     rcx, qword [rbp - 760]
		mov     qword [rbp - 768], rcx
		mov     rcx, qword [rbp - 776]
		mov     qword [rbp - 784], rcx
		mov     rcx, qword [rbp - 792]
		mov     qword [rbp - 800], rcx
		mov     rcx, qword [rbp - 808]
		mov     qword [rbp - 816], rcx
		mov     rcx, qword [rbp - 824]
		mov     qword [rbp - 832], rcx
		mov     rcx, qword [rbp - 840]
		mov     qword [rbp - 848], rcx
		mov     rcx, qword [rbp - 856]
		mov     qword [rbp - 864], rcx
		mov     rcx, qword [rbp - 872]
		mov     qword [rbp - 880], rcx
		mov     rcx, qword [rbp - 888]
		mov     qword [rbp - 896], rcx
		mov     rcx, qword [rbp - 904]
		mov     qword [rbp - 912], rcx
		mov     rcx, qword [rbp - 920]
		mov     qword [rbp - 928], rcx
		mov     rcx, qword [rbp - 936]
		mov     qword [rbp - 944], rcx
		mov     rcx, qword [rbp - 952]
		mov     qword [rbp - 960], rcx
		mov     rcx, qword [rbp - 968]
		mov     qword [rbp - 976], rcx
		mov     rcx, qword [rbp - 984]
		mov     qword [rbp - 992], rcx
		mov     rcx, qword [rbp - 1000]
		mov     qword [rbp - 1008], rcx
		mov     rcx, qword [rbp - 1016]
		mov     qword [rbp - 1024], rcx
		mov     rcx, qword [rbp - 1032]
		mov     r8, qword [rbp - 1040]
		mov     rdx, qword [rbp - 1048]
		mov     r9, qword [rbp - 1056]
		mov     rax, qword [rbp - 1064]
		mov     rsi, qword [rbp - 1072]
		mov     r10, qword [rbp - 1080]
		mov     r14, qword [rbp - 1088]
		mov     r13, qword [rbp - 1096]
__L_30:
		mov     rbx, qword [rbp - 112]
		mov     qword [rbp - 1104], rbx
		mov     rdi, qword [rbp - 120]
		mov     r11, qword [rbp - 128]
		mov     r12, qword [rbp - 136]
		mov     rbx, qword [rbp - 144]
		mov     r15, qword [rbp - 160]
		mov     qword [rbp - 152], r15
		mov     r15, qword [rbp - 176]
		mov     qword [rbp - 168], r15
		mov     r15, qword [rbp - 192]
		mov     qword [rbp - 184], r15
		mov     r15, qword [rbp - 208]
		mov     qword [rbp - 200], r15
		mov     r15, qword [rbp - 224]
		mov     qword [rbp - 216], r15
		mov     r15, qword [rbp - 240]
		mov     qword [rbp - 232], r15
		mov     r15, qword [rbp - 256]
		mov     qword [rbp - 248], r15
		mov     r15, qword [rbp - 272]
		mov     qword [rbp - 264], r15
		mov     r15, qword [rbp - 288]
		mov     qword [rbp - 280], r15
		mov     r15, qword [rbp - 304]
		mov     qword [rbp - 296], r15
		mov     r15, qword [rbp - 320]
		mov     qword [rbp - 312], r15
		mov     r15, qword [rbp - 336]
		mov     qword [rbp - 328], r15
		mov     r15, qword [rbp - 352]
		mov     qword [rbp - 344], r15
		mov     r15, qword [rbp - 368]
		mov     qword [rbp - 360], r15
		mov     r15, qword [rbp - 384]
		mov     qword [rbp - 376], r15
		mov     r15, qword [rbp - 400]
		mov     qword [rbp - 392], r15
		mov     r15, qword [rbp - 416]
		mov     qword [rbp - 408], r15
		mov     r15, qword [rbp - 432]
		mov     qword [rbp - 424], r15
		mov     r15, qword [rbp - 448]
		mov     qword [rbp - 440], r15
		mov     r15, qword [rbp - 464]
		mov     qword [rbp - 456], r15
		mov     r15, qword [rbp - 480]
		mov     qword [rbp - 472], r15
		mov     r15, qword [rbp - 496]
		mov     qword [rbp - 488], r15
		mov     r15, qword [rbp - 512]
		mov     qword [rbp - 504], r15
		mov     r15, qword [rbp - 528]
		mov     qword [rbp - 520], r15
		mov     r15, qword [rbp - 544]
		mov     qword [rbp - 536], r15
		mov     r15, qword [rbp - 560]
		mov     qword [rbp - 552], r15
		mov     r15, qword [rbp - 576]
		mov     qword [rbp - 568], r15
		mov     r15, qword [rbp - 592]
		mov     qword [rbp - 584], r15
		mov     r15, qword [rbp - 608]
		mov     qword [rbp - 600], r15
		mov     r15, qword [rbp - 624]
		mov     qword [rbp - 616], r15
		mov     r15, qword [rbp - 640]
		mov     qword [rbp - 632], r15
		mov     r15, qword [rbp - 656]
		mov     qword [rbp - 648], r15
		mov     r15, qword [rbp - 672]
		mov     qword [rbp - 664], r15
		mov     r15, qword [rbp - 688]
		mov     qword [rbp - 680], r15
		mov     r15, qword [rbp - 704]
		mov     qword [rbp - 696], r15
		mov     r15, qword [rbp - 720]
		mov     qword [rbp - 712], r15
		mov     r15, qword [rbp - 736]
		mov     qword [rbp - 728], r15
		mov     r15, qword [rbp - 752]
		mov     qword [rbp - 744], r15
		mov     r15, qword [rbp - 768]
		mov     qword [rbp - 760], r15
		mov     r15, qword [rbp - 784]
		mov     qword [rbp - 776], r15
		mov     r15, qword [rbp - 800]
		mov     qword [rbp - 792], r15
		mov     r15, qword [rbp - 816]
		mov     qword [rbp - 808], r15
		mov     r15, qword [rbp - 832]
		mov     qword [rbp - 824], r15
		mov     r15, qword [rbp - 848]
		mov     qword [rbp - 840], r15
		mov     r15, qword [rbp - 864]
		mov     qword [rbp - 856], r15
		mov     r15, qword [rbp - 880]
		mov     qword [rbp - 872], r15
		mov     r15, qword [rbp - 896]
		mov     qword [rbp - 888], r15
		mov     r15, qword [rbp - 912]
		mov     qword [rbp - 904], r15
		mov     r15, qword [rbp - 928]
		mov     qword [rbp - 920], r15
		mov     r15, qword [rbp - 944]
		mov     qword [rbp - 936], r15
		mov     r15, qword [rbp - 960]
		mov     qword [rbp - 952], r15
		mov     r15, qword [rbp - 976]
		mov     qword [rbp - 968], r15
		mov     r15, qword [rbp - 992]
		mov     qword [rbp - 984], r15
		mov     r15, qword [rbp - 1008]
		mov     qword [rbp - 1000], r15
		mov     r15, qword [rbp - 1024]
		mov     qword [rbp - 1016], r15
		mov     qword [rbp - 1032], rcx
		mov     qword [rbp - 1040], r8
		mov     qword [rbp - 1048], rdx
		mov     qword [rbp - 1056], r9
		mov     qword [rbp - 1064], rax
		mov     qword [rbp - 1072], rsi
		mov     qword [rbp - 1080], r10
		mov     qword [rbp - 1088], r14
		mov     qword [rbp - 1096], r13
		mov     rcx, qword [rbp - 72]
		cmp     qword [rbp - 1104], rcx
		jge     __L_31
__L_32:
		mov     rcx, qword [rbp - 80]
		mov     qword [rbp - 1112], rcx
		mov     qword [rbp - 1120], rdi
		mov     qword [rbp - 1128], r11
		mov     qword [rbp - 1136], r12
		mov     qword [rbp - 1144], rbx
		mov     rcx, qword [rbp - 152]
		mov     qword [rbp - 1152], rcx
		mov     rcx, qword [rbp - 168]
		mov     qword [rbp - 1160], rcx
		mov     rcx, qword [rbp - 184]
		mov     qword [rbp - 1168], rcx
		mov     rcx, qword [rbp - 200]
		mov     qword [rbp - 1176], rcx
		mov     rcx, qword [rbp - 216]
		mov     qword [rbp - 1184], rcx
		mov     rcx, qword [rbp - 232]
		mov     qword [rbp - 1192], rcx
		mov     rcx, qword [rbp - 248]
		mov     qword [rbp - 1200], rcx
		mov     rcx, qword [rbp - 264]
		mov     qword [rbp - 1208], rcx
		mov     rcx, qword [rbp - 280]
		mov     qword [rbp - 1216], rcx
		mov     rcx, qword [rbp - 296]
		mov     qword [rbp - 1224], rcx
		mov     rcx, qword [rbp - 312]
		mov     qword [rbp - 1232], rcx
		mov     rcx, qword [rbp - 328]
		mov     qword [rbp - 1240], rcx
		mov     rcx, qword [rbp - 344]
		mov     qword [rbp - 1248], rcx
		mov     rcx, qword [rbp - 360]
		mov     qword [rbp - 1256], rcx
		mov     rcx, qword [rbp - 376]
		mov     qword [rbp - 1264], rcx
		mov     rcx, qword [rbp - 392]
		mov     qword [rbp - 1272], rcx
		mov     rcx, qword [rbp - 408]
		mov     qword [rbp - 1280], rcx
		mov     rcx, qword [rbp - 424]
		mov     qword [rbp - 1288], rcx
		mov     rcx, qword [rbp - 440]
		mov     qword [rbp - 1296], rcx
		mov     rcx, qword [rbp - 456]
		mov     qword [rbp - 1304], rcx
		mov     rcx, qword [rbp - 472]
		mov     qword [rbp - 1312], rcx
		mov     rcx, qword [rbp - 488]
		mov     qword [rbp - 1320], rcx
		mov     rcx, qword [rbp - 504]
		mov     qword [rbp - 1328], rcx
		mov     rcx, qword [rbp - 520]
		mov     qword [rbp - 1336], rcx
		mov     rcx, qword [rbp - 536]
		mov     qword [rbp - 1344], rcx
		mov     rcx, qword [rbp - 552]
		mov     qword [rbp - 1352], rcx
		mov     rcx, qword [rbp - 568]
		mov     qword [rbp - 1360], rcx
		mov     rcx, qword [rbp - 584]
		mov     qword [rbp - 1368], rcx
		mov     rcx, qword [rbp - 600]
		mov     qword [rbp - 1376], rcx
		mov     rcx, qword [rbp - 616]
		mov     qword [rbp - 1384], rcx
		mov     rcx, qword [rbp - 632]
		mov     qword [rbp - 1392], rcx
		mov     rcx, qword [rbp - 648]
		mov     qword [rbp - 1400], rcx
		mov     rcx, qword [rbp - 664]
		mov     qword [rbp - 1408], rcx
		mov     rcx, qword [rbp - 680]
		mov     qword [rbp - 1416], rcx
		mov     rcx, qword [rbp - 696]
		mov     qword [rbp - 1424], rcx
		mov     rcx, qword [rbp - 712]
		mov     qword [rbp - 1432], rcx
		mov     rcx, qword [rbp - 728]
		mov     qword [rbp - 1440], rcx
		mov     rcx, qword [rbp - 744]
		mov     qword [rbp - 1448], rcx
		mov     rcx, qword [rbp - 760]
		mov     qword [rbp - 1456], rcx
		mov     rcx, qword [rbp - 776]
		mov     qword [rbp - 1464], rcx
		mov     rcx, qword [rbp - 792]
		mov     qword [rbp - 1472], rcx
		mov     rcx, qword [rbp - 808]
		mov     qword [rbp - 1480], rcx
		mov     rcx, qword [rbp - 824]
		mov     qword [rbp - 1488], rcx
		mov     rcx, qword [rbp - 840]
		mov     qword [rbp - 1496], rcx
		mov     rcx, qword [rbp - 856]
		mov     qword [rbp - 1504], rcx
		mov     rcx, qword [rbp - 872]
		mov     qword [rbp - 1512], rcx
		mov     rcx, qword [rbp - 888]
		mov     qword [rbp - 1520], rcx
		mov     rcx, qword [rbp - 904]
		mov     qword [rbp - 1528], rcx
		mov     rcx, qword [rbp - 920]
		mov     qword [rbp - 1536], rcx
		mov     rcx, qword [rbp - 936]
		mov     qword [rbp - 1544], rcx
		mov     rcx, qword [rbp - 952]
		mov     qword [rbp - 1552], rcx
		mov     rcx, qword [rbp - 968]
		mov     rdx, qword [rbp - 984]
		mov     r8, qword [rbp - 1000]
		mov     rbx, qword [rbp - 1016]
		mov     r9, qword [rbp - 1032]
		mov     rax, qword [rbp - 1040]
		mov     rsi, qword [rbp - 1048]
		mov     qword [rbp - 1560], rsi
		mov     rsi, qword [rbp - 1056]
		mov     r10, qword [rbp - 1064]
		mov     r12, qword [rbp - 1072]
		mov     qword [rbp - 1568], r12
		mov     r14, qword [rbp - 1080]
		mov     r11, qword [rbp - 1088]
		mov     r12, qword [rbp - 1096]
__L_33:
		mov     r13, qword [rbp - 1112]
		mov     qword [rbp - 1576], r13
		mov     r13, qword [rbp - 1120]
		mov     qword [rbp - 1584], r13
		mov     r13, qword [rbp - 1128]
		mov     qword [rbp - 1592], r13
		mov     r13, qword [rbp - 1136]
		mov     qword [rbp - 1600], r13
		mov     r13, qword [rbp - 1144]
		mov     qword [rbp - 1608], r13
		mov     r13, qword [rbp - 1152]
		mov     qword [rbp - 1616], r13
		mov     r13, qword [rbp - 1160]
		mov     qword [rbp - 1624], r13
		mov     r13, qword [rbp - 1168]
		mov     qword [rbp - 1632], r13
		mov     r13, qword [rbp - 1176]
		mov     qword [rbp - 1640], r13
		mov     r13, qword [rbp - 1184]
		mov     qword [rbp - 1648], r13
		mov     r13, qword [rbp - 1192]
		mov     qword [rbp - 1656], r13
		mov     r13, qword [rbp - 1200]
		mov     qword [rbp - 1664], r13
		mov     r13, qword [rbp - 1208]
		mov     qword [rbp - 1672], r13
		mov     r13, qword [rbp - 1216]
		mov     qword [rbp - 1680], r13
		mov     r13, qword [rbp - 1224]
		mov     qword [rbp - 1688], r13
		mov     r13, qword [rbp - 1232]
		mov     qword [rbp - 1696], r13
		mov     r13, qword [rbp - 1240]
		mov     qword [rbp - 1704], r13
		mov     r13, qword [rbp - 1248]
		mov     qword [rbp - 1712], r13
		mov     r13, qword [rbp - 1256]
		mov     qword [rbp - 1720], r13
		mov     r13, qword [rbp - 1264]
		mov     qword [rbp - 1728], r13
		mov     r13, qword [rbp - 1272]
		mov     qword [rbp - 1736], r13
		mov     r13, qword [rbp - 1280]
		mov     qword [rbp - 1744], r13
		mov     r13, qword [rbp - 1288]
		mov     qword [rbp - 1752], r13
		mov     r13, qword [rbp - 1296]
		mov     qword [rbp - 1760], r13
		mov     r13, qword [rbp - 1304]
		mov     qword [rbp - 1768], r13
		mov     r13, qword [rbp - 1312]
		mov     qword [rbp - 1776], r13
		mov     r13, qword [rbp - 1320]
		mov     qword [rbp - 1784], r13
		mov     r13, qword [rbp - 1328]
		mov     qword [rbp - 1792], r13
		mov     r13, qword [rbp - 1336]
		mov     qword [rbp - 1800], r13
		mov     r13, qword [rbp - 1344]
		mov     qword [rbp - 1808], r13
		mov     r13, qword [rbp - 1352]
		mov     qword [rbp - 1816], r13
		mov     r13, qword [rbp - 1360]
		mov     qword [rbp - 1824], r13
		mov     r13, qword [rbp - 1368]
		mov     qword [rbp - 1832], r13
		mov     r13, qword [rbp - 1376]
		mov     qword [rbp - 1840], r13
		mov     r13, qword [rbp - 1384]
		mov     qword [rbp - 1848], r13
		mov     r13, qword [rbp - 1392]
		mov     qword [rbp - 1856], r13
		mov     r13, qword [rbp - 1400]
		mov     qword [rbp - 1864], r13
		mov     r13, qword [rbp - 1408]
		mov     qword [rbp - 1872], r13
		mov     r13, qword [rbp - 1416]
		mov     qword [rbp - 1880], r13
		mov     r13, qword [rbp - 1424]
		mov     qword [rbp - 1888], r13
		mov     r13, qword [rbp - 1432]
		mov     qword [rbp - 1896], r13
		mov     r13, qword [rbp - 1440]
		mov     qword [rbp - 1904], r13
		mov     r13, qword [rbp - 1448]
		mov     qword [rbp - 1912], r13
		mov     r13, qword [rbp - 1456]
		mov     qword [rbp - 1920], r13
		mov     r13, qword [rbp - 1464]
		mov     qword [rbp - 1928], r13
		mov     r13, qword [rbp - 1472]
		mov     qword [rbp - 1936], r13
		mov     r13, qword [rbp - 1480]
		mov     qword [rbp - 1944], r13
		mov     r13, qword [rbp - 1488]
		mov     qword [rbp - 1952], r13
		mov     r13, qword [rbp - 1496]
		mov     qword [rbp - 1960], r13
		mov     r13, qword [rbp - 1504]
		mov     qword [rbp - 1968], r13
		mov     r13, qword [rbp - 1512]
		mov     qword [rbp - 1976], r13
		mov     r13, qword [rbp - 1520]
		mov     qword [rbp - 1984], r13
		mov     r13, qword [rbp - 1528]
		mov     qword [rbp - 1992], r13
		mov     r13, qword [rbp - 1536]
		mov     qword [rbp - 2000], r13
		mov     r13, qword [rbp - 1544]
		mov     qword [rbp - 2008], r13
		mov     r13, qword [rbp - 1552]
		mov     qword [rbp - 2016], r13
		mov     r13, qword [rbp - 1560]
		mov     rdi, qword [rbp - 1568]
		mov     r15, qword [rbp - 88]
		cmp     qword [rbp - 1576], r15
		jge     __L_34
__L_35:
		mov     rcx, qword [rbp - 1576]
		mov     qword [rbp - 2024], rcx
		and     qword [rbp - 2024], 31
		mov     rdi, qword [rbp - 48]
		mov     rsi, 30
		call    xorshift
		mov     qword [rbp - 2032], rax
		mov     rdi, qword [rbp - 2032]
		mov     rsi, qword [rbp - 2024]
		call    shift_l
		mov     rbx, rax
		mov     r12, 32
		sub     r12, qword [rbp - 2024]
		mov     rdi, qword [rbp - 2032]
		mov     rsi, r12
		call    shift_r
		mov     qword [rbp - 2040], rbx
		or      qword [rbp - 2040], rax
		mov     rdi, qword [rbp - 96]
		mov     rsi, 30
		call    xorshift
		mov     qword [rbp - 2048], rax
		mov     rdi, qword [rbp - 2048]
		mov     rsi, qword [rbp - 2024]
		call    shift_l
		mov     rbx, rax
		mov     rdi, qword [rbp - 2048]
		mov     rsi, r12
		call    shift_r
		mov     qword [rbp - 2056], rbx
		or      qword [rbp - 2056], rax
		mov     rdi, qword [rbp - 1104]
		mov     rsi, 30
		call    xorshift
		mov     qword [rbp - 2064], rax
		mov     rdi, qword [rbp - 2064]
		mov     rsi, qword [rbp - 2024]
		call    shift_l
		mov     rbx, rax
		mov     rdi, qword [rbp - 2064]
		mov     rsi, r12
		call    shift_r
		mov     qword [rbp - 2072], rbx
		or      qword [rbp - 2072], rax
		mov     rcx, qword [rbp - 96]
		mov     qword [rbp - 2080], rcx
		mov     rcx, qword [rbp - 1104]
		xor     qword [rbp - 2080], rcx
		mov     rdi, qword [rbp - 2080]
		mov     rsi, 30
		call    xorshift
		mov     qword [rbp - 2088], rax
		mov     rdi, qword [rbp - 2088]
		mov     rsi, qword [rbp - 2024]
		call    shift_l
		mov     rbx, rax
		mov     rdi, qword [rbp - 2088]
		mov     rsi, r12
		call    shift_r
		mov     qword [rbp - 2096], rbx
		or      qword [rbp - 2096], rax
		mov     rbx, qword [rbp - 1576]
		add     rbx, 1
		mov     rcx, 0
__L_36:
		mov     qword [rbp - 2104], rcx
		mov     qword [rbp - 2112], rbx
		cmp     qword [rbp - 2104], 10
		jge     __L_37
__L_38:
		mov     rdi, qword [rbp - 2112]
		mov     rsi, 13
		call    shift_l
		mov     rbx, qword [rbp - 2112]
		xor     rbx, rax
		mov     rdi, rbx
		mov     rsi, 17
		call    shift_r
		xor     rbx, rax
		mov     rdi, rbx
		mov     rsi, 5
		call    shift_l
		xor     rbx, rax
		mov     rcx, qword [rbp - 2104]
		inc     rcx
		jmp     __L_36
__L_37:
		mov     rcx, qword [rbp - 2112]
		mov     qword [rbp - 2120], rcx
		xor     qword [rbp - 2120], 123456789
		mov     rbx, qword [rbp - 1104]
		add     rbx, 1
		mov     rcx, 0
__L_39:
		mov     qword [rbp - 2128], rcx
		mov     qword [rbp - 2136], rbx
		cmp     qword [rbp - 2128], 10
		jge     __L_40
__L_41:
		mov     rdi, qword [rbp - 2136]
		mov     rsi, 13
		call    shift_l
		mov     rbx, qword [rbp - 2136]
		xor     rbx, rax
		mov     rdi, rbx
		mov     rsi, 17
		call    shift_r
		xor     rbx, rax
		mov     rdi, rbx
		mov     rsi, 5
		call    shift_l
		xor     rbx, rax
		mov     rcx, qword [rbp - 2128]
		inc     rcx
		jmp     __L_39
__L_40:
		mov     rcx, qword [rbp - 2136]
		mov     qword [rbp - 2144], rcx
		xor     qword [rbp - 2144], 123456789
		mov     r12, qword [rbp - 2120]
		xor     r12, qword [rbp - 2144]
		mov     rbx, qword [rbp - 96]
		add     rbx, 1
		mov     rcx, 0
__L_42:
		mov     qword [rbp - 2152], rcx
		mov     qword [rbp - 2160], rbx
		cmp     qword [rbp - 2152], 10
		jge     __L_43
__L_44:
		mov     rdi, qword [rbp - 2160]
		mov     rsi, 13
		call    shift_l
		mov     rbx, qword [rbp - 2160]
		xor     rbx, rax
		mov     rdi, rbx
		mov     rsi, 17
		call    shift_r
		xor     rbx, rax
		mov     rdi, rbx
		mov     rsi, 5
		call    shift_l
		xor     rbx, rax
		mov     rcx, qword [rbp - 2152]
		inc     rcx
		jmp     __L_42
__L_43:
		mov     rcx, qword [rbp - 2160]
		mov     qword [rbp - 2168], rcx
		xor     qword [rbp - 2168], 123456789
		mov     qword [rbp - 2176], r12
		mov     rcx, qword [rbp - 2168]
		xor     qword [rbp - 2176], rcx
		mov     rcx, qword [rbp - 2040]
		mov     qword [rbp - 2184], rcx
		mov     rcx, qword [rbp - 2176]
		xor     qword [rbp - 2184], rcx
		mov     rbx, qword [rbp - 2184]
		add     rbx, 1
		mov     rcx, 0
__L_45:
		mov     qword [rbp - 2192], rcx
		mov     qword [rbp - 2200], rbx
		cmp     qword [rbp - 2192], 10
		jge     __L_46
__L_47:
		mov     rdi, qword [rbp - 2200]
		mov     rsi, 13
		call    shift_l
		mov     rbx, qword [rbp - 2200]
		xor     rbx, rax
		mov     rdi, rbx
		mov     rsi, 17
		call    shift_r
		xor     rbx, rax
		mov     rdi, rbx
		mov     rsi, 5
		call    shift_l
		xor     rbx, rax
		mov     rcx, qword [rbp - 2192]
		inc     rcx
		jmp     __L_45
__L_46:
		mov     rcx, qword [rbp - 2200]
		mov     qword [rbp - 2208], rcx
		xor     qword [rbp - 2208], 123456789
		mov     rcx, qword [rbp - 1584]
		mov     qword [rbp - 2216], rcx
		mov     rcx, qword [rbp - 2208]
		add     qword [rbp - 2216], rcx
		mov     rcx, qword [rbp - 2056]
		mov     qword [rbp - 2224], rcx
		mov     rcx, qword [rbp - 2176]
		xor     qword [rbp - 2224], rcx
		mov     rbx, qword [rbp - 2224]
		add     rbx, 1
		mov     rcx, 0
__L_48:
		mov     qword [rbp - 2232], rcx
		mov     qword [rbp - 2240], rbx
		cmp     qword [rbp - 2232], 10
		jge     __L_49
__L_50:
		mov     rdi, qword [rbp - 2240]
		mov     rsi, 13
		call    shift_l
		mov     rbx, qword [rbp - 2240]
		xor     rbx, rax
		mov     rdi, rbx
		mov     rsi, 17
		call    shift_r
		xor     rbx, rax
		mov     rdi, rbx
		mov     rsi, 5
		call    shift_l
		xor     rbx, rax
		mov     rcx, qword [rbp - 2232]
		inc     rcx
		jmp     __L_48
__L_49:
		mov     rcx, qword [rbp - 2240]
		mov     qword [rbp - 2248], rcx
		xor     qword [rbp - 2248], 123456789
		mov     rcx, qword [rbp - 1592]
		mov     qword [rbp - 2256], rcx
		mov     rcx, qword [rbp - 2248]
		add     qword [rbp - 2256], rcx
		mov     rcx, qword [rbp - 2072]
		mov     qword [rbp - 2264], rcx
		mov     rcx, qword [rbp - 2176]
		xor     qword [rbp - 2264], rcx
		mov     rbx, qword [rbp - 2264]
		add     rbx, 1
		mov     rcx, 0
__L_51:
		mov     qword [rbp - 2272], rcx
		mov     qword [rbp - 2280], rbx
		cmp     qword [rbp - 2272], 10
		jge     __L_52
__L_53:
		mov     rdi, qword [rbp - 2280]
		mov     rsi, 13
		call    shift_l
		mov     rbx, qword [rbp - 2280]
		xor     rbx, rax
		mov     rdi, rbx
		mov     rsi, 17
		call    shift_r
		xor     rbx, rax
		mov     rdi, rbx
		mov     rsi, 5
		call    shift_l
		xor     rbx, rax
		mov     rcx, qword [rbp - 2272]
		inc     rcx
		jmp     __L_51
__L_52:
		mov     rbx, qword [rbp - 2280]
		xor     rbx, 123456789
		mov     r15, qword [rbp - 1600]
		add     r15, rbx
		mov     r12, qword [rbp - 2096]
		xor     r12, qword [rbp - 2176]
		mov     r14, r12
		add     r14, 1
		mov     rcx, 0
__L_54:
		mov     r13, rcx
		cmp     r13, 10
		jge     __L_55
__L_56:
		mov     rdi, r14
		mov     rsi, 13
		call    shift_l
		xor     r14, rax
		mov     rdi, r14
		mov     rsi, 17
		call    shift_r
		xor     r14, rax
		mov     rdi, r14
		mov     rsi, 5
		call    shift_l
		xor     r14, rax
		mov     rcx, r13
		inc     rcx
		jmp     __L_54
__L_55:
		mov     r10, r14
		xor     r10, 123456789
		mov     r8, qword [rbp - 1608]
		add     r8, r10
		mov     rcx, qword [rbp - 1576]
		inc     rcx
		mov     qword [rbp - 1112], rcx
		mov     rcx, qword [rbp - 2216]
		mov     qword [rbp - 1120], rcx
		mov     rcx, qword [rbp - 2256]
		mov     qword [rbp - 1128], rcx
		mov     qword [rbp - 1136], r15
		mov     qword [rbp - 1144], r8
		mov     rcx, qword [rbp - 2040]
		mov     qword [rbp - 1152], rcx
		mov     rcx, qword [rbp - 2056]
		mov     qword [rbp - 1160], rcx
		mov     rcx, qword [rbp - 2072]
		mov     qword [rbp - 1168], rcx
		mov     rcx, qword [rbp - 2096]
		mov     qword [rbp - 1176], rcx
		mov     rcx, qword [rbp - 2176]
		mov     qword [rbp - 1184], rcx
		mov     rcx, qword [rbp - 2040]
		mov     qword [rbp - 1192], rcx
		mov     rcx, qword [rbp - 2032]
		mov     qword [rbp - 1200], rcx
		mov     rcx, qword [rbp - 2024]
		mov     qword [rbp - 1208], rcx
		mov     rcx, qword [rbp - 1576]
		mov     qword [rbp - 1216], rcx
		mov     qword [rbp - 1224], 30
		mov     rcx, qword [rbp - 48]
		mov     qword [rbp - 1232], rcx
		mov     rcx, qword [rbp - 2056]
		mov     qword [rbp - 1240], rcx
		mov     rcx, qword [rbp - 2048]
		mov     qword [rbp - 1248], rcx
		mov     rcx, qword [rbp - 2024]
		mov     qword [rbp - 1256], rcx
		mov     rcx, qword [rbp - 1576]
		mov     qword [rbp - 1264], rcx
		mov     qword [rbp - 1272], 30
		mov     rcx, qword [rbp - 96]
		mov     qword [rbp - 1280], rcx
		mov     rcx, qword [rbp - 2072]
		mov     qword [rbp - 1288], rcx
		mov     rcx, qword [rbp - 2064]
		mov     qword [rbp - 1296], rcx
		mov     rcx, qword [rbp - 2024]
		mov     qword [rbp - 1304], rcx
		mov     rcx, qword [rbp - 1576]
		mov     qword [rbp - 1312], rcx
		mov     qword [rbp - 1320], 30
		mov     rcx, qword [rbp - 1104]
		mov     qword [rbp - 1328], rcx
		mov     rcx, qword [rbp - 2096]
		mov     qword [rbp - 1336], rcx
		mov     rcx, qword [rbp - 2088]
		mov     qword [rbp - 1344], rcx
		mov     rcx, qword [rbp - 2024]
		mov     qword [rbp - 1352], rcx
		mov     rcx, qword [rbp - 1576]
		mov     qword [rbp - 1360], rcx
		mov     qword [rbp - 1368], 30
		mov     rcx, qword [rbp - 2080]
		mov     qword [rbp - 1376], rcx
		mov     rcx, qword [rbp - 2120]
		mov     qword [rbp - 1384], rcx
		mov     rcx, qword [rbp - 2104]
		mov     qword [rbp - 1392], rcx
		mov     rcx, qword [rbp - 2112]
		mov     qword [rbp - 1400], rcx
		mov     qword [rbp - 1408], 1
		mov     rcx, qword [rbp - 1576]
		mov     qword [rbp - 1416], rcx
		mov     rcx, qword [rbp - 2144]
		mov     qword [rbp - 1424], rcx
		mov     rcx, qword [rbp - 2128]
		mov     qword [rbp - 1432], rcx
		mov     rcx, qword [rbp - 2136]
		mov     qword [rbp - 1440], rcx
		mov     qword [rbp - 1448], 1
		mov     rcx, qword [rbp - 1104]
		mov     qword [rbp - 1456], rcx
		mov     rcx, qword [rbp - 2168]
		mov     qword [rbp - 1464], rcx
		mov     rcx, qword [rbp - 2152]
		mov     qword [rbp - 1472], rcx
		mov     rcx, qword [rbp - 2160]
		mov     qword [rbp - 1480], rcx
		mov     qword [rbp - 1488], 1
		mov     rcx, qword [rbp - 96]
		mov     qword [rbp - 1496], rcx
		mov     rcx, qword [rbp - 2208]
		mov     qword [rbp - 1504], rcx
		mov     rcx, qword [rbp - 2192]
		mov     qword [rbp - 1512], rcx
		mov     rcx, qword [rbp - 2200]
		mov     qword [rbp - 1520], rcx
		mov     qword [rbp - 1528], 1
		mov     rcx, qword [rbp - 2184]
		mov     qword [rbp - 1536], rcx
		mov     rcx, qword [rbp - 2248]
		mov     qword [rbp - 1544], rcx
		mov     rcx, qword [rbp - 2232]
		mov     qword [rbp - 1552], rcx
		mov     rcx, qword [rbp - 2240]
		mov     rdx, 1
		mov     r8, qword [rbp - 2224]
		mov     r9, qword [rbp - 2272]
		mov     rax, qword [rbp - 2280]
		mov     qword [rbp - 1560], 1
		mov     rsi, qword [rbp - 2264]
		mov     qword [rbp - 1568], r13
		mov     r11, 1
		jmp     __L_33
__L_34:
		mov     r15, qword [rbp - 1104]
		inc     r15
		mov     qword [rbp - 112], r15
		mov     r15, qword [rbp - 1584]
		mov     qword [rbp - 120], r15
		mov     r15, qword [rbp - 1592]
		mov     qword [rbp - 128], r15
		mov     r15, qword [rbp - 1600]
		mov     qword [rbp - 136], r15
		mov     r15, qword [rbp - 1608]
		mov     qword [rbp - 144], r15
		mov     r15, qword [rbp - 1616]
		mov     qword [rbp - 160], r15
		mov     r15, qword [rbp - 1624]
		mov     qword [rbp - 176], r15
		mov     r15, qword [rbp - 1632]
		mov     qword [rbp - 192], r15
		mov     r15, qword [rbp - 1640]
		mov     qword [rbp - 208], r15
		mov     r15, qword [rbp - 1648]
		mov     qword [rbp - 224], r15
		mov     r15, qword [rbp - 1656]
		mov     qword [rbp - 240], r15
		mov     r15, qword [rbp - 1664]
		mov     qword [rbp - 256], r15
		mov     r15, qword [rbp - 1672]
		mov     qword [rbp - 272], r15
		mov     r15, qword [rbp - 1680]
		mov     qword [rbp - 288], r15
		mov     r15, qword [rbp - 1688]
		mov     qword [rbp - 304], r15
		mov     r15, qword [rbp - 1696]
		mov     qword [rbp - 320], r15
		mov     r15, qword [rbp - 1704]
		mov     qword [rbp - 336], r15
		mov     r15, qword [rbp - 1712]
		mov     qword [rbp - 352], r15
		mov     r15, qword [rbp - 1720]
		mov     qword [rbp - 368], r15
		mov     r15, qword [rbp - 1728]
		mov     qword [rbp - 384], r15
		mov     r15, qword [rbp - 1736]
		mov     qword [rbp - 400], r15
		mov     r15, qword [rbp - 1744]
		mov     qword [rbp - 416], r15
		mov     r15, qword [rbp - 1752]
		mov     qword [rbp - 432], r15
		mov     r15, qword [rbp - 1760]
		mov     qword [rbp - 448], r15
		mov     r15, qword [rbp - 1768]
		mov     qword [rbp - 464], r15
		mov     r15, qword [rbp - 1776]
		mov     qword [rbp - 480], r15
		mov     r15, qword [rbp - 1784]
		mov     qword [rbp - 496], r15
		mov     r15, qword [rbp - 1792]
		mov     qword [rbp - 512], r15
		mov     r15, qword [rbp - 1800]
		mov     qword [rbp - 528], r15
		mov     r15, qword [rbp - 1808]
		mov     qword [rbp - 544], r15
		mov     r15, qword [rbp - 1816]
		mov     qword [rbp - 560], r15
		mov     r15, qword [rbp - 1824]
		mov     qword [rbp - 576], r15
		mov     r15, qword [rbp - 1832]
		mov     qword [rbp - 592], r15
		mov     r15, qword [rbp - 1840]
		mov     qword [rbp - 608], r15
		mov     r15, qword [rbp - 1848]
		mov     qword [rbp - 624], r15
		mov     r15, qword [rbp - 1856]
		mov     qword [rbp - 640], r15
		mov     r15, qword [rbp - 1864]
		mov     qword [rbp - 656], r15
		mov     r15, qword [rbp - 1872]
		mov     qword [rbp - 672], r15
		mov     r15, qword [rbp - 1880]
		mov     qword [rbp - 688], r15
		mov     r15, qword [rbp - 1888]
		mov     qword [rbp - 704], r15
		mov     r15, qword [rbp - 1896]
		mov     qword [rbp - 720], r15
		mov     r15, qword [rbp - 1904]
		mov     qword [rbp - 736], r15
		mov     r15, qword [rbp - 1912]
		mov     qword [rbp - 752], r15
		mov     r15, qword [rbp - 1920]
		mov     qword [rbp - 768], r15
		mov     r15, qword [rbp - 1928]
		mov     qword [rbp - 784], r15
		mov     r15, qword [rbp - 1936]
		mov     qword [rbp - 800], r15
		mov     r15, qword [rbp - 1944]
		mov     qword [rbp - 816], r15
		mov     r15, qword [rbp - 1952]
		mov     qword [rbp - 832], r15
		mov     r15, qword [rbp - 1960]
		mov     qword [rbp - 848], r15
		mov     r15, qword [rbp - 1968]
		mov     qword [rbp - 864], r15
		mov     r15, qword [rbp - 1976]
		mov     qword [rbp - 880], r15
		mov     r15, qword [rbp - 1984]
		mov     qword [rbp - 896], r15
		mov     r15, qword [rbp - 1992]
		mov     qword [rbp - 912], r15
		mov     r15, qword [rbp - 2000]
		mov     qword [rbp - 928], r15
		mov     r15, qword [rbp - 2008]
		mov     qword [rbp - 944], r15
		mov     r15, qword [rbp - 2016]
		mov     qword [rbp - 960], r15
		mov     qword [rbp - 976], rcx
		mov     qword [rbp - 992], rdx
		mov     qword [rbp - 1008], r8
		mov     qword [rbp - 1024], rbx
		mov     rcx, r9
		mov     r8, rax
		mov     rdx, r13
		mov     r9, rsi
		mov     rax, r10
		mov     rsi, rdi
		mov     r10, r14
		mov     r14, r11
		mov     r13, r12
		jmp     __L_30
__L_31:
		mov     rcx, qword [rbp - 96]
		inc     rcx
		jmp     __L_27
__L_28:
		mov     r15, 28
		mov     r13, __str_1
__L_57:
		cmp     r15, 0
		jl      __L_58
__L_59:
		mov     r8, qword [rbp - 104]
		mov     rcx, r15
		sar     r8, cl
		and     r8, 15
		cmp     r8, 10
		jge     __L_60
__L_61:
		mov     rdi, 48
		add     rdi, r8
		call    int2chr
		mov     rsi, rax
		mov     rdi, r13
		call    __stringAdd
		jmp     __L_62
__L_60:
		mov     rdi, 65
		add     rdi, r8
		sub     rdi, 10
		call    int2chr
		mov     rsi, rax
		mov     rdi, r13
		call    __stringAdd
__L_62:
		mov     r13, rax
		sub     r15, 4
		jmp     __L_57
__L_58:
		mov     rdi, r13
		call    print
		mov     rdi, __str_2
		call    print
		mov     r15, 28
		mov     r13, __str_1
__L_63:
		cmp     r15, 0
		jl      __L_64
__L_65:
		mov     r8, r14
		mov     rcx, r15
		sar     r8, cl
		and     r8, 15
		cmp     r8, 10
		jge     __L_66
__L_67:
		mov     rdi, 48
		add     rdi, r8
		call    int2chr
		mov     rsi, rax
		mov     rdi, r13
		call    __stringAdd
		jmp     __L_68
__L_66:
		mov     rdi, 65
		add     rdi, r8
		sub     rdi, 10
		call    int2chr
		mov     rsi, rax
		mov     rdi, r13
		call    __stringAdd
__L_68:
		mov     r13, rax
		sub     r15, 4
		jmp     __L_63
__L_64:
		mov     rdi, r13
		call    print
		mov     rdi, __str_2
		call    print
		mov     r13, 28
		mov     r14, __str_1
__L_69:
		cmp     r13, 0
		jl      __L_70
__L_71:
		mov     r8, r12
		mov     rcx, r13
		sar     r8, cl
		and     r8, 15
		cmp     r8, 10
		jge     __L_72
__L_73:
		mov     rdi, 48
		add     rdi, r8
		call    int2chr
		mov     rsi, rax
		mov     rdi, r14
		call    __stringAdd
		jmp     __L_74
__L_72:
		mov     rdi, 65
		add     rdi, r8
		sub     rdi, 10
		call    int2chr
		mov     rsi, rax
		mov     rdi, r14
		call    __stringAdd
__L_74:
		mov     r14, rax
		sub     r13, 4
		jmp     __L_69
__L_70:
		mov     rdi, r14
		call    print
		mov     rdi, __str_2
		call    print
		mov     r14, 28
		mov     r12, __str_1
__L_75:
		cmp     r14, 0
		jl      __L_76
__L_77:
		mov     r8, rbx
		mov     rcx, r14
		sar     r8, cl
		and     r8, 15
		cmp     r8, 10
		jge     __L_78
__L_79:
		mov     rdi, 48
		add     rdi, r8
		call    int2chr
		mov     rsi, rax
		mov     rdi, r12
		call    __stringAdd
		jmp     __L_80
__L_78:
		mov     rdi, 65
		add     rdi, r8
		sub     rdi, 10
		call    int2chr
		mov     rsi, rax
		mov     rdi, r12
		call    __stringAdd
__L_80:
		mov     r12, rax
		sub     r14, 4
		jmp     __L_75
__L_76:
		mov     rdi, r12
		call    print
		mov     rdi, __str_2
		call    print
		mov     rdi, __str_1
		call    println
		mov     r14, qword [rbp - 8]
		mov     r12, qword [rbp - 16]
		mov     r15, qword [rbp - 24]
		mov     rbx, qword [rbp - 32]
		mov     r13, qword [rbp - 40]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

__str_0:
		dq      95
		db      20H, 21H, 22H, 23H, 24H, 25H, 26H, 27H, 28H, 29H, 2AH, 2BH, 2CH, 2DH, 2EH, 2FH, 30H, 31H, 32H, 33H, 34H, 35H, 36H, 37H, 38H, 39H, 3AH, 3BH, 3CH, 3DH, 3EH, 3FH, 40H, 41H, 42H, 43H, 44H, 45H, 46H, 47H, 48H, 49H, 4AH, 4BH, 4CH, 4DH, 4EH, 4FH, 50H, 51H, 52H, 53H, 54H, 55H, 56H, 57H, 58H, 59H, 5AH, 5BH, 5CH, 5DH, 5EH, 5FH, 60H, 61H, 62H, 63H, 64H, 65H, 66H, 67H, 68H, 69H, 6AH, 6BH, 6CH, 6DH, 6EH, 6FH, 70H, 71H, 72H, 73H, 74H, 75H, 76H, 77H, 78H, 79H, 7AH, 7BH, 7CH, 7DH, 7EH, 00H

__str_1:
		dq      0
		db      00H

__str_2:
		dq      1
		db      20H, 00H

SECTION .bss

_asciiTable:
		resb    8


SECTION .text   6

print:
        lea     rdx, [rdi+8H]
        mov     esi, L_011
        mov     edi, 1
        xor     eax, eax
        jmp     __printf_chk


        nop





ALIGN   16

println:
        add     rdi, 8
        jmp     puts






ALIGN   8

__printInt:
        mov     rdx, rdi
        mov     esi, L_012
        mov     edi, 1
        xor     eax, eax
        jmp     __printf_chk







ALIGN   16

__printlnInt:
        mov     rdx, rdi
        mov     esi, L_013
        mov     edi, 1
        xor     eax, eax
        jmp     __printf_chk







ALIGN   16

getString:
        push    r12
        push    rbp
        mov     edi, L_011
        push    rbx
        sub     rsp, 32784


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+8008H], rax
        xor     eax, eax
        mov     rsi, rsp
        mov     rbp, rsp
        mov     rbx, rsp
        call    __isoc99_scanf
L_001:  mov     edx, dword [rbx]
        add     rbx, 4
        lea     eax, [rdx-1010101H]
        not     edx
        and     eax, edx
        and     eax, 80808080H
        jz      L_001
        mov     edx, eax
        shr     edx, 16
        test    eax, 8080H
        cmove   eax, edx
        lea     rdx, [rbx+2H]
        mov     ecx, eax
        cmove   rbx, rdx
        add     cl, al
        sbb     rbx, 3
        sub     rbx, rbp
        lea     rdi, [rbx+8H]
        call    malloc
        lea     rdx, [rbx+1H]
        lea     rdi, [rax+8H]
        mov     qword [rax], rbx
        mov     rsi, rbp
        mov     r12, rax
        call    memcpy
        mov     rcx, qword [rsp+8008H]


        xor     rcx, qword [fs:abs 28H]
        mov     rax, r12
        jnz     L_002
        add     rsp, 32784
        pop     rbx
        pop     rbp
        pop     r12
        ret

L_002:  call    __stack_chk_fail




ALIGN   8

getInt:
        sub     rsp, 24
        mov     edi, L_012


        mov     rax, qword [fs:abs 28H]
        mov     qword [rsp+8H], rax
        xor     eax, eax
        mov     rsi, rsp
        call    __isoc99_scanf
        mov     rdx, qword [rsp+8H]


        xor     rdx, qword [fs:abs 28H]
        mov     rax, qword [rsp]
        jnz     L_003
        add     rsp, 24
        ret

L_003:  call    __stack_chk_fail
        nop
ALIGN   16

toString:
        push    rbp
        push    rbx
        mov     rbp, rdi
        mov     edi, 32
        sub     rsp, 8
        call    malloc
        lea     rdi, [rax+8H]
        mov     rbx, rax
        mov     r8, rbp
        mov     ecx, L_012
        mov     edx, 24
        mov     esi, 1
        xor     eax, eax
        call    __sprintf_chk
        cdqe
        mov     qword [rbx], rax
        add     rsp, 8
        mov     rax, rbx
        pop     rbx
        pop     rbp
        ret







ALIGN   16

__stringLength:
        mov     rax, qword [rdi]
        ret







ALIGN   16

__stringSubstring:
        sub     rdx, rsi
        push    r14
        mov     r14, rdi
        push    r13
        lea     rdi, [rdx+0AH]
        push    r12
        lea     r12, [rdx+1H]
        push    rbp
        push    rbx
        mov     r13, rsi
        mov     rbx, rdx
        call    malloc
        test    r12, r12
        mov     rbp, rax
        mov     qword [rax], r12
        jle     L_004
        lea     rdi, [rax+8H]
        lea     rsi, [r14+r13+8H]
        mov     rdx, r12
        call    memcpy
L_004:  mov     byte [rbp+rbx+9H], 0
        mov     rax, rbp
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        ret






ALIGN   8

__stringParseInt:
        movsx   edx, byte [rdi+8H]
        cmp     dl, 45
        jz      L_007
        lea     eax, [rdx-30H]
        cmp     al, 9
        ja      L_008
        lea     rcx, [rdi+8H]
        xor     edi, edi
L_005:  xor     eax, eax




ALIGN   16
L_006:  sub     edx, 48
        lea     rax, [rax+rax*4]
        add     rcx, 1
        movsxd  rdx, edx
        lea     rax, [rdx+rax*2]
        movsx   edx, byte [rcx]
        lea     esi, [rdx-30H]
        cmp     sil, 9
        jbe     L_006
        mov     rdx, rax
        neg     rdx
        test    edi, edi
        cmovne  rax, rdx
        ret





ALIGN   8
L_007:  movsx   edx, byte [rdi+9H]
        lea     rcx, [rdi+9H]
        lea     eax, [rdx-30H]
        cmp     al, 9
        ja      L_008
        mov     edi, 1
        jmp     L_005

L_008:  xor     eax, eax
        ret






ALIGN   8

__stringOrd:
        movsx   rax, byte [rdi+rsi+8H]
        ret







ALIGN   16

__stringAdd:
        push    r15
        push    r14
        mov     r14, rsi
        push    r13
        push    r12
        push    rbp
        push    rbx
        sub     rsp, 24
        mov     r12, qword [rdi]
        mov     rbp, qword [rsi]
        mov     qword [rsp+8H], rdi
        lea     r13, [r12+8H]
        lea     r15, [r13+rbp]
        lea     rdi, [r15+1H]
        call    malloc
        mov     rbx, rax
        lea     rax, [r12+rbp]
        test    r12, r12
        mov     rdx, qword [rsp+8H]
        mov     qword [rbx], rax
        jle     L_009
        lea     rsi, [rdx+8H]
        lea     rdi, [rbx+8H]
        mov     rdx, r12
        call    memcpy
L_009:  test    rbp, rbp
        jle     L_010
        lea     rdi, [rbx+r13]
        lea     rsi, [r14+8H]
        mov     rdx, rbp
        call    memcpy
L_010:  mov     byte [rbx+r15], 0
        add     rsp, 24
        mov     rax, rbx
        pop     rbx
        pop     rbp
        pop     r12
        pop     r13
        pop     r14
        pop     r15
        ret


        nop

ALIGN   16
__stringEq:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        test    eax, eax
        sete    al
        add     rsp, 8
        movzx   eax, al
        ret






ALIGN   8

__stringNeq:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        test    eax, eax
        setne   al
        add     rsp, 8
        movzx   eax, al
        ret






ALIGN   8

__stringLt:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        cdqe
        add     rsp, 8
        shr     rax, 63
        ret






ALIGN   8

__stringGt:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        test    eax, eax
        setg    al
        add     rsp, 8
        movzx   eax, al
        ret






ALIGN   8

__stringLe:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        test    eax, eax
        setle   al
        add     rsp, 8
        movzx   eax, al
        ret






ALIGN   8

__stringGe:
        sub     rsp, 8
        add     rsi, 8
        add     rdi, 8
        call    strcmp
        cdqe
        add     rsp, 8
        not     rax
        shr     rax, 63
        ret


        nop

ALIGN   16
__arraySize:
        mov     rax, qword [rdi-8H]
        ret



SECTION .data


SECTION .bss


SECTION .rodata.str1.1

L_011:
        db 25H, 73H, 00H

L_012:
        db 25H, 6CH, 64H, 00H

L_013:
        db 25H, 6CH, 64H, 0AH, 00H


SECTION .text.unlikely


