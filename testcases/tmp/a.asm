default rel

global main
global _print
global _println
global _getString
global _getInt
global _toString
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
global __globalInit
global _check
global _main

extern strcmp
extern snprintf
extern __stack_chk_fail
extern strcpy
extern malloc
extern strlen
extern __isoc99_scanf
extern puts
extern strcmp
extern printf

SECTION .text

main:
		push    rbp
		mov     rbp, rsp
		call    __globalInit
		call    _main
		mov     rax, 0
		pop     rbp
		ret     

__globalInit:
		push    rbp
		mov     rbp, rsp
		mov     rsp, rbp
		pop     rbp
		ret     

_check:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 112
		mov     qword [rbp-8], rdi
		mov     qword [rbp-16], rsi
		mov     rax, rbp
		sub     rax, 24
		mov     qword [rbp-32], rax
		mov     rax, rbp
		sub     rax, 40
		mov     qword [rbp-48], rax
		mov     rax, rbp
		sub     rax, 56
		mov     qword [rbp-64], rax
		mov     rax, qword [rbp-8]
		mov     rdx, qword [rbp-64]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-16]
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-72], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-80], rax
		mov     rax, qword [rbp-72]
		cmp     rax, qword [rbp-80]
		setl    al
		movzx   rax, al
		mov     qword [rbp-88], rax
		mov     rax, qword [rbp-88]
		cmp     rax, 0
		jne     L1
		jmp     L3
L1:
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-96], rax
		mov     rax, qword [rbp-96]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-104], rax
		mov     rax, qword [rbp-104]
		cmp     rax, 0
		jne     L2
		jmp     L3
L2:
		mov     rax, 1
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L4
L3:
		mov     rax, 0
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L4
L4:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-112], rax
		mov     rax, qword [rbp-112]
		mov     rsp, rbp
		pop     rbp
		ret     

_main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 5552
		mov     rax, rbp
		sub     rax, 8
		mov     qword [rbp-16], rax
		mov     rax, rbp
		sub     rax, 24
		mov     qword [rbp-32], rax
		mov     rax, rbp
		sub     rax, 40
		mov     qword [rbp-48], rax
		mov     rax, rbp
		sub     rax, 56
		mov     qword [rbp-64], rax
		mov     rax, rbp
		sub     rax, 72
		mov     qword [rbp-80], rax
		mov     rax, rbp
		sub     rax, 88
		mov     qword [rbp-96], rax
		mov     rax, rbp
		sub     rax, 104
		mov     qword [rbp-112], rax
		mov     rax, rbp
		sub     rax, 120
		mov     qword [rbp-128], rax
		mov     rax, rbp
		sub     rax, 136
		mov     qword [rbp-144], rax
		mov     rax, rbp
		sub     rax, 152
		mov     qword [rbp-160], rax
		mov     rax, rbp
		sub     rax, 168
		mov     qword [rbp-176], rax
		mov     rax, rbp
		sub     rax, 184
		mov     qword [rbp-192], rax
		mov     rax, rbp
		sub     rax, 200
		mov     qword [rbp-208], rax
		mov     rax, rbp
		sub     rax, 216
		mov     qword [rbp-224], rax
		mov     rax, rbp
		sub     rax, 232
		mov     qword [rbp-240], rax
		mov     rax, rbp
		sub     rax, 248
		mov     qword [rbp-256], rax
		call    _getInt
		mov     qword [rbp-264], rax
		mov     rax, qword [rbp-264]
		mov     rdx, qword [rbp-256]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-240]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-224]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-208]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-272], rax
		mov     rax, qword [rbp-272]
		sub     rax, 1
		mov     qword [rbp-280], rax
		mov     rax, qword [rbp-280]
		mov     rdx, qword [rbp-192]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-288], rax
		mov     rax, qword [rbp-288]
		sub     rax, 1
		mov     qword [rbp-296], rax
		mov     rax, qword [rbp-296]
		mov     rdx, qword [rbp-176]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-128]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-304], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-312], rax
		mov     rax, qword [rbp-304]
		imul    rax, qword [rbp-312]
		mov     qword [rbp-320], rax
		mov     rax, qword [rbp-320]
		imul    rax, 8
		mov     qword [rbp-328], rax
		mov     rax, qword [rbp-328]
		add     rax, 8
		mov     qword [rbp-336], rax
		mov     rdi, qword [rbp-336]
		call    malloc
		mov     qword [rbp-344], rax
		mov     rax, qword [rbp-320]
		mov     rdx, qword [rbp-344]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-344]
		mov     rdx, qword [rbp-80]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L5
L5:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-352], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-360], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-368], rax
		mov     rax, qword [rbp-360]
		imul    rax, qword [rbp-368]
		mov     qword [rbp-376], rax
		mov     rax, qword [rbp-352]
		cmp     rax, qword [rbp-376]
		setl    al
		movzx   rax, al
		mov     qword [rbp-384], rax
		mov     rax, qword [rbp-384]
		cmp     rax, 0
		jne     L6
		jmp     L8
L6:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-392], rax
		mov     rax, qword [rbp-392]
		add     rax, 8
		mov     qword [rbp-400], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-408], rax
		mov     rax, qword [rbp-408]
		imul    rax, 8
		mov     qword [rbp-416], rax
		mov     rax, qword [rbp-400]
		add     rax, qword [rbp-416]
		mov     qword [rbp-424], rax
		mov     rax, 0
		mov     rdx, qword [rbp-424]
		mov     qword [rdx], rax
		jmp     L7
L7:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-432], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-440], rax
		mov     rax, qword [rbp-440]
		inc     rax
		mov     qword [rbp-448], rax
		mov     rax, qword [rbp-448]
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L5
L8:
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-456], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-464], rax
		mov     rax, qword [rbp-456]
		imul    rax, qword [rbp-464]
		mov     qword [rbp-472], rax
		mov     rax, qword [rbp-472]
		imul    rax, 8
		mov     qword [rbp-480], rax
		mov     rax, qword [rbp-480]
		add     rax, 8
		mov     qword [rbp-488], rax
		mov     rdi, qword [rbp-488]
		call    malloc
		mov     qword [rbp-496], rax
		mov     rax, qword [rbp-472]
		mov     rdx, qword [rbp-496]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-496]
		mov     rdx, qword [rbp-64]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L9
L9:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-504], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-512], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-520], rax
		mov     rax, qword [rbp-512]
		imul    rax, qword [rbp-520]
		mov     qword [rbp-528], rax
		mov     rax, qword [rbp-504]
		cmp     rax, qword [rbp-528]
		setl    al
		movzx   rax, al
		mov     qword [rbp-536], rax
		mov     rax, qword [rbp-536]
		cmp     rax, 0
		jne     L10
		jmp     L12
L10:
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-544], rax
		mov     rax, qword [rbp-544]
		add     rax, 8
		mov     qword [rbp-552], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-560], rax
		mov     rax, qword [rbp-560]
		imul    rax, 8
		mov     qword [rbp-568], rax
		mov     rax, qword [rbp-552]
		add     rax, qword [rbp-568]
		mov     qword [rbp-576], rax
		mov     rax, 0
		mov     rdx, qword [rbp-576]
		mov     qword [rdx], rax
		jmp     L11
L11:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-584], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-592], rax
		mov     rax, qword [rbp-592]
		inc     rax
		mov     qword [rbp-600], rax
		mov     rax, qword [rbp-600]
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L9
L12:
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-608], rax
		mov     rax, qword [rbp-608]
		imul    rax, 8
		mov     qword [rbp-616], rax
		mov     rax, qword [rbp-616]
		add     rax, 8
		mov     qword [rbp-624], rax
		mov     rdi, qword [rbp-624]
		call    malloc
		mov     qword [rbp-632], rax
		mov     rax, qword [rbp-608]
		mov     rdx, qword [rbp-632]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-632]
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L13
L13:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-640], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-648], rax
		mov     rax, qword [rbp-640]
		cmp     rax, qword [rbp-648]
		setl    al
		movzx   rax, al
		mov     qword [rbp-656], rax
		mov     rax, qword [rbp-656]
		cmp     rax, 0
		jne     L14
		jmp     L20
L14:
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-664], rax
		mov     rax, qword [rbp-664]
		imul    rax, 8
		mov     qword [rbp-672], rax
		mov     rax, qword [rbp-672]
		add     rax, 8
		mov     qword [rbp-680], rax
		mov     rdi, qword [rbp-680]
		call    malloc
		mov     qword [rbp-688], rax
		mov     rax, qword [rbp-664]
		mov     rdx, qword [rbp-688]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-696], rax
		mov     rax, qword [rbp-696]
		add     rax, 8
		mov     qword [rbp-704], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-712], rax
		mov     rax, qword [rbp-712]
		imul    rax, 8
		mov     qword [rbp-720], rax
		mov     rax, qword [rbp-704]
		add     rax, qword [rbp-720]
		mov     qword [rbp-728], rax
		mov     rax, qword [rbp-688]
		mov     rdx, qword [rbp-728]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L15
L15:
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-736], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-744], rax
		mov     rax, qword [rbp-736]
		cmp     rax, qword [rbp-744]
		setl    al
		movzx   rax, al
		mov     qword [rbp-752], rax
		mov     rax, qword [rbp-752]
		cmp     rax, 0
		jne     L16
		jmp     L18
L16:
		mov     rax, 1
		neg     rax
		mov     qword [rbp-760], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-768], rax
		mov     rax, qword [rbp-768]
		add     rax, 8
		mov     qword [rbp-776], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-784], rax
		mov     rax, qword [rbp-784]
		imul    rax, 8
		mov     qword [rbp-792], rax
		mov     rax, qword [rbp-776]
		add     rax, qword [rbp-792]
		mov     qword [rbp-800], rax
		mov     rdx, qword [rbp-800]
		mov     rax, qword [rdx]
		mov     qword [rbp-808], rax
		mov     rax, qword [rbp-808]
		add     rax, 8
		mov     qword [rbp-816], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-824], rax
		mov     rax, qword [rbp-824]
		imul    rax, 8
		mov     qword [rbp-832], rax
		mov     rax, qword [rbp-816]
		add     rax, qword [rbp-832]
		mov     qword [rbp-840], rax
		mov     rax, qword [rbp-760]
		mov     rdx, qword [rbp-840]
		mov     qword [rdx], rax
		jmp     L17
L17:
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-848], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-856], rax
		mov     rax, qword [rbp-856]
		inc     rax
		mov     qword [rbp-864], rax
		mov     rax, qword [rbp-864]
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L15
L18:
		jmp     L19
L19:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-872], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-880], rax
		mov     rax, qword [rbp-880]
		inc     rax
		mov     qword [rbp-888], rax
		mov     rax, qword [rbp-888]
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L13
L20:
		mov     rdx, qword [rbp-224]
		mov     rax, qword [rdx]
		mov     qword [rbp-896], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-904], rax
		mov     rax, qword [rbp-904]
		add     rax, 8
		mov     qword [rbp-912], rax
		mov     rax, 0
		imul    rax, 8
		mov     qword [rbp-920], rax
		mov     rax, qword [rbp-912]
		add     rax, qword [rbp-920]
		mov     qword [rbp-928], rax
		mov     rax, qword [rbp-896]
		mov     rdx, qword [rbp-928]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-208]
		mov     rax, qword [rdx]
		mov     qword [rbp-936], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-944], rax
		mov     rax, qword [rbp-944]
		add     rax, 8
		mov     qword [rbp-952], rax
		mov     rax, 0
		imul    rax, 8
		mov     qword [rbp-960], rax
		mov     rax, qword [rbp-952]
		add     rax, qword [rbp-960]
		mov     qword [rbp-968], rax
		mov     rax, qword [rbp-936]
		mov     rdx, qword [rbp-968]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-976], rax
		mov     rax, qword [rbp-976]
		add     rax, 8
		mov     qword [rbp-984], rax
		mov     rdx, qword [rbp-224]
		mov     rax, qword [rdx]
		mov     qword [rbp-992], rax
		mov     rax, qword [rbp-992]
		imul    rax, 8
		mov     qword [rbp-1000], rax
		mov     rax, qword [rbp-984]
		add     rax, qword [rbp-1000]
		mov     qword [rbp-1008], rax
		mov     rdx, qword [rbp-1008]
		mov     rax, qword [rdx]
		mov     qword [rbp-1016], rax
		mov     rax, qword [rbp-1016]
		add     rax, 8
		mov     qword [rbp-1024], rax
		mov     rdx, qword [rbp-208]
		mov     rax, qword [rdx]
		mov     qword [rbp-1032], rax
		mov     rax, qword [rbp-1032]
		imul    rax, 8
		mov     qword [rbp-1040], rax
		mov     rax, qword [rbp-1024]
		add     rax, qword [rbp-1040]
		mov     qword [rbp-1048], rax
		mov     rax, 0
		mov     rdx, qword [rbp-1048]
		mov     qword [rdx], rax
		jmp     L21
L21:
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-1056], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-1064], rax
		mov     rax, qword [rbp-1056]
		cmp     rax, qword [rbp-1064]
		setle   al
		movzx   rax, al
		mov     qword [rbp-1072], rax
		mov     rax, qword [rbp-1072]
		cmp     rax, 0
		jne     L22
		jmp     L81
L22:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1080], rax
		mov     rax, qword [rbp-1080]
		add     rax, 8
		mov     qword [rbp-1088], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-1096], rax
		mov     rax, qword [rbp-1096]
		add     rax, 8
		mov     qword [rbp-1104], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-1112], rax
		mov     rax, qword [rbp-1112]
		imul    rax, 8
		mov     qword [rbp-1120], rax
		mov     rax, qword [rbp-1104]
		add     rax, qword [rbp-1120]
		mov     qword [rbp-1128], rax
		mov     rdx, qword [rbp-1128]
		mov     rax, qword [rdx]
		mov     qword [rbp-1136], rax
		mov     rax, qword [rbp-1136]
		imul    rax, 8
		mov     qword [rbp-1144], rax
		mov     rax, qword [rbp-1088]
		add     rax, qword [rbp-1144]
		mov     qword [rbp-1152], rax
		mov     rdx, qword [rbp-1152]
		mov     rax, qword [rdx]
		mov     qword [rbp-1160], rax
		mov     rax, qword [rbp-1160]
		add     rax, 8
		mov     qword [rbp-1168], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-1176], rax
		mov     rax, qword [rbp-1176]
		add     rax, 8
		mov     qword [rbp-1184], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-1192], rax
		mov     rax, qword [rbp-1192]
		imul    rax, 8
		mov     qword [rbp-1200], rax
		mov     rax, qword [rbp-1184]
		add     rax, qword [rbp-1200]
		mov     qword [rbp-1208], rax
		mov     rdx, qword [rbp-1208]
		mov     rax, qword [rdx]
		mov     qword [rbp-1216], rax
		mov     rax, qword [rbp-1216]
		imul    rax, 8
		mov     qword [rbp-1224], rax
		mov     rax, qword [rbp-1168]
		add     rax, qword [rbp-1224]
		mov     qword [rbp-1232], rax
		mov     rdx, qword [rbp-1232]
		mov     rax, qword [rdx]
		mov     qword [rbp-1240], rax
		mov     rax, qword [rbp-1240]
		mov     rdx, qword [rbp-128]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-1248], rax
		mov     rax, qword [rbp-1248]
		add     rax, 8
		mov     qword [rbp-1256], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-1264], rax
		mov     rax, qword [rbp-1264]
		imul    rax, 8
		mov     qword [rbp-1272], rax
		mov     rax, qword [rbp-1256]
		add     rax, qword [rbp-1272]
		mov     qword [rbp-1280], rax
		mov     rdx, qword [rbp-1280]
		mov     rax, qword [rdx]
		mov     qword [rbp-1288], rax
		mov     rax, qword [rbp-1288]
		sub     rax, 1
		mov     qword [rbp-1296], rax
		mov     rax, qword [rbp-1296]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-1304], rax
		mov     rax, qword [rbp-1304]
		add     rax, 8
		mov     qword [rbp-1312], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-1320], rax
		mov     rax, qword [rbp-1320]
		imul    rax, 8
		mov     qword [rbp-1328], rax
		mov     rax, qword [rbp-1312]
		add     rax, qword [rbp-1328]
		mov     qword [rbp-1336], rax
		mov     rdx, qword [rbp-1336]
		mov     rax, qword [rdx]
		mov     qword [rbp-1344], rax
		mov     rax, qword [rbp-1344]
		sub     rax, 2
		mov     qword [rbp-1352], rax
		mov     rax, qword [rbp-1352]
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-1360], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-1368], rax
		mov     rdi, qword [rbp-1360]
		mov     rsi, qword [rbp-1368]
		call    _check
		mov     qword [rbp-1376], rax
		mov     rax, qword [rbp-1376]
		cmp     rax, 0
		jne     L23
		jmp     L29
L23:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-1384], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-1392], rax
		mov     rdi, qword [rbp-1384]
		mov     rsi, qword [rbp-1392]
		call    _check
		mov     qword [rbp-1400], rax
		mov     rax, qword [rbp-1400]
		cmp     rax, 0
		jne     L24
		jmp     L29
L24:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1408], rax
		mov     rax, qword [rbp-1408]
		add     rax, 8
		mov     qword [rbp-1416], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-1424], rax
		mov     rax, qword [rbp-1424]
		imul    rax, 8
		mov     qword [rbp-1432], rax
		mov     rax, qword [rbp-1416]
		add     rax, qword [rbp-1432]
		mov     qword [rbp-1440], rax
		mov     rdx, qword [rbp-1440]
		mov     rax, qword [rdx]
		mov     qword [rbp-1448], rax
		mov     rax, qword [rbp-1448]
		add     rax, 8
		mov     qword [rbp-1456], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-1464], rax
		mov     rax, qword [rbp-1464]
		imul    rax, 8
		mov     qword [rbp-1472], rax
		mov     rax, qword [rbp-1456]
		add     rax, qword [rbp-1472]
		mov     qword [rbp-1480], rax
		mov     rdx, qword [rbp-1480]
		mov     rax, qword [rdx]
		mov     qword [rbp-1488], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-1496], rax
		mov     rax, qword [rbp-1488]
		cmp     rax, qword [rbp-1496]
		sete    al
		movzx   rax, al
		mov     qword [rbp-1504], rax
		mov     rax, qword [rbp-1504]
		cmp     rax, 0
		jne     L25
		jmp     L29
L25:
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-1512], rax
		mov     rax, qword [rbp-1512]
		add     rax, 1
		mov     qword [rbp-1520], rax
		mov     rax, qword [rbp-1520]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-1528], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-1536], rax
		mov     rax, qword [rbp-1536]
		add     rax, 8
		mov     qword [rbp-1544], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-1552], rax
		mov     rax, qword [rbp-1552]
		imul    rax, 8
		mov     qword [rbp-1560], rax
		mov     rax, qword [rbp-1544]
		add     rax, qword [rbp-1560]
		mov     qword [rbp-1568], rax
		mov     rax, qword [rbp-1528]
		mov     rdx, qword [rbp-1568]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-1576], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-1584], rax
		mov     rax, qword [rbp-1584]
		add     rax, 8
		mov     qword [rbp-1592], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-1600], rax
		mov     rax, qword [rbp-1600]
		imul    rax, 8
		mov     qword [rbp-1608], rax
		mov     rax, qword [rbp-1592]
		add     rax, qword [rbp-1608]
		mov     qword [rbp-1616], rax
		mov     rax, qword [rbp-1576]
		mov     rdx, qword [rbp-1616]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-128]
		mov     rax, qword [rdx]
		mov     qword [rbp-1624], rax
		mov     rax, qword [rbp-1624]
		add     rax, 1
		mov     qword [rbp-1632], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1640], rax
		mov     rax, qword [rbp-1640]
		add     rax, 8
		mov     qword [rbp-1648], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-1656], rax
		mov     rax, qword [rbp-1656]
		imul    rax, 8
		mov     qword [rbp-1664], rax
		mov     rax, qword [rbp-1648]
		add     rax, qword [rbp-1664]
		mov     qword [rbp-1672], rax
		mov     rdx, qword [rbp-1672]
		mov     rax, qword [rdx]
		mov     qword [rbp-1680], rax
		mov     rax, qword [rbp-1680]
		add     rax, 8
		mov     qword [rbp-1688], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-1696], rax
		mov     rax, qword [rbp-1696]
		imul    rax, 8
		mov     qword [rbp-1704], rax
		mov     rax, qword [rbp-1688]
		add     rax, qword [rbp-1704]
		mov     qword [rbp-1712], rax
		mov     rax, qword [rbp-1632]
		mov     rdx, qword [rbp-1712]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-1720], rax
		mov     rdx, qword [rbp-192]
		mov     rax, qword [rdx]
		mov     qword [rbp-1728], rax
		mov     rax, qword [rbp-1720]
		cmp     rax, qword [rbp-1728]
		sete    al
		movzx   rax, al
		mov     qword [rbp-1736], rax
		mov     rax, qword [rbp-1736]
		cmp     rax, 0
		jne     L26
		jmp     L28
L26:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-1744], rax
		mov     rdx, qword [rbp-176]
		mov     rax, qword [rdx]
		mov     qword [rbp-1752], rax
		mov     rax, qword [rbp-1744]
		cmp     rax, qword [rbp-1752]
		sete    al
		movzx   rax, al
		mov     qword [rbp-1760], rax
		mov     rax, qword [rbp-1760]
		cmp     rax, 0
		jne     L27
		jmp     L28
L27:
		mov     rax, 1
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		jmp     L28
L28:
		jmp     L29
L29:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-1768], rax
		mov     rax, qword [rbp-1768]
		add     rax, 8
		mov     qword [rbp-1776], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-1784], rax
		mov     rax, qword [rbp-1784]
		imul    rax, 8
		mov     qword [rbp-1792], rax
		mov     rax, qword [rbp-1776]
		add     rax, qword [rbp-1792]
		mov     qword [rbp-1800], rax
		mov     rdx, qword [rbp-1800]
		mov     rax, qword [rdx]
		mov     qword [rbp-1808], rax
		mov     rax, qword [rbp-1808]
		sub     rax, 1
		mov     qword [rbp-1816], rax
		mov     rax, qword [rbp-1816]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-1824], rax
		mov     rax, qword [rbp-1824]
		add     rax, 8
		mov     qword [rbp-1832], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-1840], rax
		mov     rax, qword [rbp-1840]
		imul    rax, 8
		mov     qword [rbp-1848], rax
		mov     rax, qword [rbp-1832]
		add     rax, qword [rbp-1848]
		mov     qword [rbp-1856], rax
		mov     rdx, qword [rbp-1856]
		mov     rax, qword [rdx]
		mov     qword [rbp-1864], rax
		mov     rax, qword [rbp-1864]
		add     rax, 2
		mov     qword [rbp-1872], rax
		mov     rax, qword [rbp-1872]
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-1880], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-1888], rax
		mov     rdi, qword [rbp-1880]
		mov     rsi, qword [rbp-1888]
		call    _check
		mov     qword [rbp-1896], rax
		mov     rax, qword [rbp-1896]
		cmp     rax, 0
		jne     L30
		jmp     L36
L30:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-1904], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-1912], rax
		mov     rdi, qword [rbp-1904]
		mov     rsi, qword [rbp-1912]
		call    _check
		mov     qword [rbp-1920], rax
		mov     rax, qword [rbp-1920]
		cmp     rax, 0
		jne     L31
		jmp     L36
L31:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1928], rax
		mov     rax, qword [rbp-1928]
		add     rax, 8
		mov     qword [rbp-1936], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-1944], rax
		mov     rax, qword [rbp-1944]
		imul    rax, 8
		mov     qword [rbp-1952], rax
		mov     rax, qword [rbp-1936]
		add     rax, qword [rbp-1952]
		mov     qword [rbp-1960], rax
		mov     rdx, qword [rbp-1960]
		mov     rax, qword [rdx]
		mov     qword [rbp-1968], rax
		mov     rax, qword [rbp-1968]
		add     rax, 8
		mov     qword [rbp-1976], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-1984], rax
		mov     rax, qword [rbp-1984]
		imul    rax, 8
		mov     qword [rbp-1992], rax
		mov     rax, qword [rbp-1976]
		add     rax, qword [rbp-1992]
		mov     qword [rbp-2000], rax
		mov     rdx, qword [rbp-2000]
		mov     rax, qword [rdx]
		mov     qword [rbp-2008], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-2016], rax
		mov     rax, qword [rbp-2008]
		cmp     rax, qword [rbp-2016]
		sete    al
		movzx   rax, al
		mov     qword [rbp-2024], rax
		mov     rax, qword [rbp-2024]
		cmp     rax, 0
		jne     L32
		jmp     L36
L32:
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-2032], rax
		mov     rax, qword [rbp-2032]
		add     rax, 1
		mov     qword [rbp-2040], rax
		mov     rax, qword [rbp-2040]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-2048], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-2056], rax
		mov     rax, qword [rbp-2056]
		add     rax, 8
		mov     qword [rbp-2064], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-2072], rax
		mov     rax, qword [rbp-2072]
		imul    rax, 8
		mov     qword [rbp-2080], rax
		mov     rax, qword [rbp-2064]
		add     rax, qword [rbp-2080]
		mov     qword [rbp-2088], rax
		mov     rax, qword [rbp-2048]
		mov     rdx, qword [rbp-2088]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-2096], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-2104], rax
		mov     rax, qword [rbp-2104]
		add     rax, 8
		mov     qword [rbp-2112], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-2120], rax
		mov     rax, qword [rbp-2120]
		imul    rax, 8
		mov     qword [rbp-2128], rax
		mov     rax, qword [rbp-2112]
		add     rax, qword [rbp-2128]
		mov     qword [rbp-2136], rax
		mov     rax, qword [rbp-2096]
		mov     rdx, qword [rbp-2136]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-128]
		mov     rax, qword [rdx]
		mov     qword [rbp-2144], rax
		mov     rax, qword [rbp-2144]
		add     rax, 1
		mov     qword [rbp-2152], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-2160], rax
		mov     rax, qword [rbp-2160]
		add     rax, 8
		mov     qword [rbp-2168], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-2176], rax
		mov     rax, qword [rbp-2176]
		imul    rax, 8
		mov     qword [rbp-2184], rax
		mov     rax, qword [rbp-2168]
		add     rax, qword [rbp-2184]
		mov     qword [rbp-2192], rax
		mov     rdx, qword [rbp-2192]
		mov     rax, qword [rdx]
		mov     qword [rbp-2200], rax
		mov     rax, qword [rbp-2200]
		add     rax, 8
		mov     qword [rbp-2208], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-2216], rax
		mov     rax, qword [rbp-2216]
		imul    rax, 8
		mov     qword [rbp-2224], rax
		mov     rax, qword [rbp-2208]
		add     rax, qword [rbp-2224]
		mov     qword [rbp-2232], rax
		mov     rax, qword [rbp-2152]
		mov     rdx, qword [rbp-2232]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-2240], rax
		mov     rdx, qword [rbp-192]
		mov     rax, qword [rdx]
		mov     qword [rbp-2248], rax
		mov     rax, qword [rbp-2240]
		cmp     rax, qword [rbp-2248]
		sete    al
		movzx   rax, al
		mov     qword [rbp-2256], rax
		mov     rax, qword [rbp-2256]
		cmp     rax, 0
		jne     L33
		jmp     L35
L33:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-2264], rax
		mov     rdx, qword [rbp-176]
		mov     rax, qword [rdx]
		mov     qword [rbp-2272], rax
		mov     rax, qword [rbp-2264]
		cmp     rax, qword [rbp-2272]
		sete    al
		movzx   rax, al
		mov     qword [rbp-2280], rax
		mov     rax, qword [rbp-2280]
		cmp     rax, 0
		jne     L34
		jmp     L35
L34:
		mov     rax, 1
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		jmp     L35
L35:
		jmp     L36
L36:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-2288], rax
		mov     rax, qword [rbp-2288]
		add     rax, 8
		mov     qword [rbp-2296], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-2304], rax
		mov     rax, qword [rbp-2304]
		imul    rax, 8
		mov     qword [rbp-2312], rax
		mov     rax, qword [rbp-2296]
		add     rax, qword [rbp-2312]
		mov     qword [rbp-2320], rax
		mov     rdx, qword [rbp-2320]
		mov     rax, qword [rdx]
		mov     qword [rbp-2328], rax
		mov     rax, qword [rbp-2328]
		add     rax, 1
		mov     qword [rbp-2336], rax
		mov     rax, qword [rbp-2336]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-2344], rax
		mov     rax, qword [rbp-2344]
		add     rax, 8
		mov     qword [rbp-2352], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-2360], rax
		mov     rax, qword [rbp-2360]
		imul    rax, 8
		mov     qword [rbp-2368], rax
		mov     rax, qword [rbp-2352]
		add     rax, qword [rbp-2368]
		mov     qword [rbp-2376], rax
		mov     rdx, qword [rbp-2376]
		mov     rax, qword [rdx]
		mov     qword [rbp-2384], rax
		mov     rax, qword [rbp-2384]
		sub     rax, 2
		mov     qword [rbp-2392], rax
		mov     rax, qword [rbp-2392]
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-2400], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-2408], rax
		mov     rdi, qword [rbp-2400]
		mov     rsi, qword [rbp-2408]
		call    _check
		mov     qword [rbp-2416], rax
		mov     rax, qword [rbp-2416]
		cmp     rax, 0
		jne     L37
		jmp     L43
L37:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-2424], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-2432], rax
		mov     rdi, qword [rbp-2424]
		mov     rsi, qword [rbp-2432]
		call    _check
		mov     qword [rbp-2440], rax
		mov     rax, qword [rbp-2440]
		cmp     rax, 0
		jne     L38
		jmp     L43
L38:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-2448], rax
		mov     rax, qword [rbp-2448]
		add     rax, 8
		mov     qword [rbp-2456], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-2464], rax
		mov     rax, qword [rbp-2464]
		imul    rax, 8
		mov     qword [rbp-2472], rax
		mov     rax, qword [rbp-2456]
		add     rax, qword [rbp-2472]
		mov     qword [rbp-2480], rax
		mov     rdx, qword [rbp-2480]
		mov     rax, qword [rdx]
		mov     qword [rbp-2488], rax
		mov     rax, qword [rbp-2488]
		add     rax, 8
		mov     qword [rbp-2496], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-2504], rax
		mov     rax, qword [rbp-2504]
		imul    rax, 8
		mov     qword [rbp-2512], rax
		mov     rax, qword [rbp-2496]
		add     rax, qword [rbp-2512]
		mov     qword [rbp-2520], rax
		mov     rdx, qword [rbp-2520]
		mov     rax, qword [rdx]
		mov     qword [rbp-2528], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-2536], rax
		mov     rax, qword [rbp-2528]
		cmp     rax, qword [rbp-2536]
		sete    al
		movzx   rax, al
		mov     qword [rbp-2544], rax
		mov     rax, qword [rbp-2544]
		cmp     rax, 0
		jne     L39
		jmp     L43
L39:
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-2552], rax
		mov     rax, qword [rbp-2552]
		add     rax, 1
		mov     qword [rbp-2560], rax
		mov     rax, qword [rbp-2560]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-2568], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-2576], rax
		mov     rax, qword [rbp-2576]
		add     rax, 8
		mov     qword [rbp-2584], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-2592], rax
		mov     rax, qword [rbp-2592]
		imul    rax, 8
		mov     qword [rbp-2600], rax
		mov     rax, qword [rbp-2584]
		add     rax, qword [rbp-2600]
		mov     qword [rbp-2608], rax
		mov     rax, qword [rbp-2568]
		mov     rdx, qword [rbp-2608]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-2616], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-2624], rax
		mov     rax, qword [rbp-2624]
		add     rax, 8
		mov     qword [rbp-2632], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-2640], rax
		mov     rax, qword [rbp-2640]
		imul    rax, 8
		mov     qword [rbp-2648], rax
		mov     rax, qword [rbp-2632]
		add     rax, qword [rbp-2648]
		mov     qword [rbp-2656], rax
		mov     rax, qword [rbp-2616]
		mov     rdx, qword [rbp-2656]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-128]
		mov     rax, qword [rdx]
		mov     qword [rbp-2664], rax
		mov     rax, qword [rbp-2664]
		add     rax, 1
		mov     qword [rbp-2672], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-2680], rax
		mov     rax, qword [rbp-2680]
		add     rax, 8
		mov     qword [rbp-2688], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-2696], rax
		mov     rax, qword [rbp-2696]
		imul    rax, 8
		mov     qword [rbp-2704], rax
		mov     rax, qword [rbp-2688]
		add     rax, qword [rbp-2704]
		mov     qword [rbp-2712], rax
		mov     rdx, qword [rbp-2712]
		mov     rax, qword [rdx]
		mov     qword [rbp-2720], rax
		mov     rax, qword [rbp-2720]
		add     rax, 8
		mov     qword [rbp-2728], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-2736], rax
		mov     rax, qword [rbp-2736]
		imul    rax, 8
		mov     qword [rbp-2744], rax
		mov     rax, qword [rbp-2728]
		add     rax, qword [rbp-2744]
		mov     qword [rbp-2752], rax
		mov     rax, qword [rbp-2672]
		mov     rdx, qword [rbp-2752]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-2760], rax
		mov     rdx, qword [rbp-192]
		mov     rax, qword [rdx]
		mov     qword [rbp-2768], rax
		mov     rax, qword [rbp-2760]
		cmp     rax, qword [rbp-2768]
		sete    al
		movzx   rax, al
		mov     qword [rbp-2776], rax
		mov     rax, qword [rbp-2776]
		cmp     rax, 0
		jne     L40
		jmp     L42
L40:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-2784], rax
		mov     rdx, qword [rbp-176]
		mov     rax, qword [rdx]
		mov     qword [rbp-2792], rax
		mov     rax, qword [rbp-2784]
		cmp     rax, qword [rbp-2792]
		sete    al
		movzx   rax, al
		mov     qword [rbp-2800], rax
		mov     rax, qword [rbp-2800]
		cmp     rax, 0
		jne     L41
		jmp     L42
L41:
		mov     rax, 1
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		jmp     L42
L42:
		jmp     L43
L43:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-2808], rax
		mov     rax, qword [rbp-2808]
		add     rax, 8
		mov     qword [rbp-2816], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-2824], rax
		mov     rax, qword [rbp-2824]
		imul    rax, 8
		mov     qword [rbp-2832], rax
		mov     rax, qword [rbp-2816]
		add     rax, qword [rbp-2832]
		mov     qword [rbp-2840], rax
		mov     rdx, qword [rbp-2840]
		mov     rax, qword [rdx]
		mov     qword [rbp-2848], rax
		mov     rax, qword [rbp-2848]
		add     rax, 1
		mov     qword [rbp-2856], rax
		mov     rax, qword [rbp-2856]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-2864], rax
		mov     rax, qword [rbp-2864]
		add     rax, 8
		mov     qword [rbp-2872], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-2880], rax
		mov     rax, qword [rbp-2880]
		imul    rax, 8
		mov     qword [rbp-2888], rax
		mov     rax, qword [rbp-2872]
		add     rax, qword [rbp-2888]
		mov     qword [rbp-2896], rax
		mov     rdx, qword [rbp-2896]
		mov     rax, qword [rdx]
		mov     qword [rbp-2904], rax
		mov     rax, qword [rbp-2904]
		add     rax, 2
		mov     qword [rbp-2912], rax
		mov     rax, qword [rbp-2912]
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-2920], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-2928], rax
		mov     rdi, qword [rbp-2920]
		mov     rsi, qword [rbp-2928]
		call    _check
		mov     qword [rbp-2936], rax
		mov     rax, qword [rbp-2936]
		cmp     rax, 0
		jne     L44
		jmp     L50
L44:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-2944], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-2952], rax
		mov     rdi, qword [rbp-2944]
		mov     rsi, qword [rbp-2952]
		call    _check
		mov     qword [rbp-2960], rax
		mov     rax, qword [rbp-2960]
		cmp     rax, 0
		jne     L45
		jmp     L50
L45:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-2968], rax
		mov     rax, qword [rbp-2968]
		add     rax, 8
		mov     qword [rbp-2976], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-2984], rax
		mov     rax, qword [rbp-2984]
		imul    rax, 8
		mov     qword [rbp-2992], rax
		mov     rax, qword [rbp-2976]
		add     rax, qword [rbp-2992]
		mov     qword [rbp-3000], rax
		mov     rdx, qword [rbp-3000]
		mov     rax, qword [rdx]
		mov     qword [rbp-3008], rax
		mov     rax, qword [rbp-3008]
		add     rax, 8
		mov     qword [rbp-3016], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-3024], rax
		mov     rax, qword [rbp-3024]
		imul    rax, 8
		mov     qword [rbp-3032], rax
		mov     rax, qword [rbp-3016]
		add     rax, qword [rbp-3032]
		mov     qword [rbp-3040], rax
		mov     rdx, qword [rbp-3040]
		mov     rax, qword [rdx]
		mov     qword [rbp-3048], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-3056], rax
		mov     rax, qword [rbp-3048]
		cmp     rax, qword [rbp-3056]
		sete    al
		movzx   rax, al
		mov     qword [rbp-3064], rax
		mov     rax, qword [rbp-3064]
		cmp     rax, 0
		jne     L46
		jmp     L50
L46:
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-3072], rax
		mov     rax, qword [rbp-3072]
		add     rax, 1
		mov     qword [rbp-3080], rax
		mov     rax, qword [rbp-3080]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-3088], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-3096], rax
		mov     rax, qword [rbp-3096]
		add     rax, 8
		mov     qword [rbp-3104], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-3112], rax
		mov     rax, qword [rbp-3112]
		imul    rax, 8
		mov     qword [rbp-3120], rax
		mov     rax, qword [rbp-3104]
		add     rax, qword [rbp-3120]
		mov     qword [rbp-3128], rax
		mov     rax, qword [rbp-3088]
		mov     rdx, qword [rbp-3128]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-3136], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-3144], rax
		mov     rax, qword [rbp-3144]
		add     rax, 8
		mov     qword [rbp-3152], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-3160], rax
		mov     rax, qword [rbp-3160]
		imul    rax, 8
		mov     qword [rbp-3168], rax
		mov     rax, qword [rbp-3152]
		add     rax, qword [rbp-3168]
		mov     qword [rbp-3176], rax
		mov     rax, qword [rbp-3136]
		mov     rdx, qword [rbp-3176]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-128]
		mov     rax, qword [rdx]
		mov     qword [rbp-3184], rax
		mov     rax, qword [rbp-3184]
		add     rax, 1
		mov     qword [rbp-3192], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-3200], rax
		mov     rax, qword [rbp-3200]
		add     rax, 8
		mov     qword [rbp-3208], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-3216], rax
		mov     rax, qword [rbp-3216]
		imul    rax, 8
		mov     qword [rbp-3224], rax
		mov     rax, qword [rbp-3208]
		add     rax, qword [rbp-3224]
		mov     qword [rbp-3232], rax
		mov     rdx, qword [rbp-3232]
		mov     rax, qword [rdx]
		mov     qword [rbp-3240], rax
		mov     rax, qword [rbp-3240]
		add     rax, 8
		mov     qword [rbp-3248], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-3256], rax
		mov     rax, qword [rbp-3256]
		imul    rax, 8
		mov     qword [rbp-3264], rax
		mov     rax, qword [rbp-3248]
		add     rax, qword [rbp-3264]
		mov     qword [rbp-3272], rax
		mov     rax, qword [rbp-3192]
		mov     rdx, qword [rbp-3272]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-3280], rax
		mov     rdx, qword [rbp-192]
		mov     rax, qword [rdx]
		mov     qword [rbp-3288], rax
		mov     rax, qword [rbp-3280]
		cmp     rax, qword [rbp-3288]
		sete    al
		movzx   rax, al
		mov     qword [rbp-3296], rax
		mov     rax, qword [rbp-3296]
		cmp     rax, 0
		jne     L47
		jmp     L49
L47:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-3304], rax
		mov     rdx, qword [rbp-176]
		mov     rax, qword [rdx]
		mov     qword [rbp-3312], rax
		mov     rax, qword [rbp-3304]
		cmp     rax, qword [rbp-3312]
		sete    al
		movzx   rax, al
		mov     qword [rbp-3320], rax
		mov     rax, qword [rbp-3320]
		cmp     rax, 0
		jne     L48
		jmp     L49
L48:
		mov     rax, 1
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		jmp     L49
L49:
		jmp     L50
L50:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-3328], rax
		mov     rax, qword [rbp-3328]
		add     rax, 8
		mov     qword [rbp-3336], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-3344], rax
		mov     rax, qword [rbp-3344]
		imul    rax, 8
		mov     qword [rbp-3352], rax
		mov     rax, qword [rbp-3336]
		add     rax, qword [rbp-3352]
		mov     qword [rbp-3360], rax
		mov     rdx, qword [rbp-3360]
		mov     rax, qword [rdx]
		mov     qword [rbp-3368], rax
		mov     rax, qword [rbp-3368]
		sub     rax, 2
		mov     qword [rbp-3376], rax
		mov     rax, qword [rbp-3376]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-3384], rax
		mov     rax, qword [rbp-3384]
		add     rax, 8
		mov     qword [rbp-3392], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-3400], rax
		mov     rax, qword [rbp-3400]
		imul    rax, 8
		mov     qword [rbp-3408], rax
		mov     rax, qword [rbp-3392]
		add     rax, qword [rbp-3408]
		mov     qword [rbp-3416], rax
		mov     rdx, qword [rbp-3416]
		mov     rax, qword [rdx]
		mov     qword [rbp-3424], rax
		mov     rax, qword [rbp-3424]
		sub     rax, 1
		mov     qword [rbp-3432], rax
		mov     rax, qword [rbp-3432]
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-3440], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-3448], rax
		mov     rdi, qword [rbp-3440]
		mov     rsi, qword [rbp-3448]
		call    _check
		mov     qword [rbp-3456], rax
		mov     rax, qword [rbp-3456]
		cmp     rax, 0
		jne     L51
		jmp     L57
L51:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-3464], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-3472], rax
		mov     rdi, qword [rbp-3464]
		mov     rsi, qword [rbp-3472]
		call    _check
		mov     qword [rbp-3480], rax
		mov     rax, qword [rbp-3480]
		cmp     rax, 0
		jne     L52
		jmp     L57
L52:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-3488], rax
		mov     rax, qword [rbp-3488]
		add     rax, 8
		mov     qword [rbp-3496], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-3504], rax
		mov     rax, qword [rbp-3504]
		imul    rax, 8
		mov     qword [rbp-3512], rax
		mov     rax, qword [rbp-3496]
		add     rax, qword [rbp-3512]
		mov     qword [rbp-3520], rax
		mov     rdx, qword [rbp-3520]
		mov     rax, qword [rdx]
		mov     qword [rbp-3528], rax
		mov     rax, qword [rbp-3528]
		add     rax, 8
		mov     qword [rbp-3536], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-3544], rax
		mov     rax, qword [rbp-3544]
		imul    rax, 8
		mov     qword [rbp-3552], rax
		mov     rax, qword [rbp-3536]
		add     rax, qword [rbp-3552]
		mov     qword [rbp-3560], rax
		mov     rdx, qword [rbp-3560]
		mov     rax, qword [rdx]
		mov     qword [rbp-3568], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-3576], rax
		mov     rax, qword [rbp-3568]
		cmp     rax, qword [rbp-3576]
		sete    al
		movzx   rax, al
		mov     qword [rbp-3584], rax
		mov     rax, qword [rbp-3584]
		cmp     rax, 0
		jne     L53
		jmp     L57
L53:
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-3592], rax
		mov     rax, qword [rbp-3592]
		add     rax, 1
		mov     qword [rbp-3600], rax
		mov     rax, qword [rbp-3600]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-3608], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-3616], rax
		mov     rax, qword [rbp-3616]
		add     rax, 8
		mov     qword [rbp-3624], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-3632], rax
		mov     rax, qword [rbp-3632]
		imul    rax, 8
		mov     qword [rbp-3640], rax
		mov     rax, qword [rbp-3624]
		add     rax, qword [rbp-3640]
		mov     qword [rbp-3648], rax
		mov     rax, qword [rbp-3608]
		mov     rdx, qword [rbp-3648]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-3656], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-3664], rax
		mov     rax, qword [rbp-3664]
		add     rax, 8
		mov     qword [rbp-3672], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-3680], rax
		mov     rax, qword [rbp-3680]
		imul    rax, 8
		mov     qword [rbp-3688], rax
		mov     rax, qword [rbp-3672]
		add     rax, qword [rbp-3688]
		mov     qword [rbp-3696], rax
		mov     rax, qword [rbp-3656]
		mov     rdx, qword [rbp-3696]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-128]
		mov     rax, qword [rdx]
		mov     qword [rbp-3704], rax
		mov     rax, qword [rbp-3704]
		add     rax, 1
		mov     qword [rbp-3712], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-3720], rax
		mov     rax, qword [rbp-3720]
		add     rax, 8
		mov     qword [rbp-3728], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-3736], rax
		mov     rax, qword [rbp-3736]
		imul    rax, 8
		mov     qword [rbp-3744], rax
		mov     rax, qword [rbp-3728]
		add     rax, qword [rbp-3744]
		mov     qword [rbp-3752], rax
		mov     rdx, qword [rbp-3752]
		mov     rax, qword [rdx]
		mov     qword [rbp-3760], rax
		mov     rax, qword [rbp-3760]
		add     rax, 8
		mov     qword [rbp-3768], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-3776], rax
		mov     rax, qword [rbp-3776]
		imul    rax, 8
		mov     qword [rbp-3784], rax
		mov     rax, qword [rbp-3768]
		add     rax, qword [rbp-3784]
		mov     qword [rbp-3792], rax
		mov     rax, qword [rbp-3712]
		mov     rdx, qword [rbp-3792]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-3800], rax
		mov     rdx, qword [rbp-192]
		mov     rax, qword [rdx]
		mov     qword [rbp-3808], rax
		mov     rax, qword [rbp-3800]
		cmp     rax, qword [rbp-3808]
		sete    al
		movzx   rax, al
		mov     qword [rbp-3816], rax
		mov     rax, qword [rbp-3816]
		cmp     rax, 0
		jne     L54
		jmp     L56
L54:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-3824], rax
		mov     rdx, qword [rbp-176]
		mov     rax, qword [rdx]
		mov     qword [rbp-3832], rax
		mov     rax, qword [rbp-3824]
		cmp     rax, qword [rbp-3832]
		sete    al
		movzx   rax, al
		mov     qword [rbp-3840], rax
		mov     rax, qword [rbp-3840]
		cmp     rax, 0
		jne     L55
		jmp     L56
L55:
		mov     rax, 1
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		jmp     L56
L56:
		jmp     L57
L57:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-3848], rax
		mov     rax, qword [rbp-3848]
		add     rax, 8
		mov     qword [rbp-3856], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-3864], rax
		mov     rax, qword [rbp-3864]
		imul    rax, 8
		mov     qword [rbp-3872], rax
		mov     rax, qword [rbp-3856]
		add     rax, qword [rbp-3872]
		mov     qword [rbp-3880], rax
		mov     rdx, qword [rbp-3880]
		mov     rax, qword [rdx]
		mov     qword [rbp-3888], rax
		mov     rax, qword [rbp-3888]
		sub     rax, 2
		mov     qword [rbp-3896], rax
		mov     rax, qword [rbp-3896]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-3904], rax
		mov     rax, qword [rbp-3904]
		add     rax, 8
		mov     qword [rbp-3912], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-3920], rax
		mov     rax, qword [rbp-3920]
		imul    rax, 8
		mov     qword [rbp-3928], rax
		mov     rax, qword [rbp-3912]
		add     rax, qword [rbp-3928]
		mov     qword [rbp-3936], rax
		mov     rdx, qword [rbp-3936]
		mov     rax, qword [rdx]
		mov     qword [rbp-3944], rax
		mov     rax, qword [rbp-3944]
		add     rax, 1
		mov     qword [rbp-3952], rax
		mov     rax, qword [rbp-3952]
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-3960], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-3968], rax
		mov     rdi, qword [rbp-3960]
		mov     rsi, qword [rbp-3968]
		call    _check
		mov     qword [rbp-3976], rax
		mov     rax, qword [rbp-3976]
		cmp     rax, 0
		jne     L58
		jmp     L64
L58:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-3984], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-3992], rax
		mov     rdi, qword [rbp-3984]
		mov     rsi, qword [rbp-3992]
		call    _check
		mov     qword [rbp-4000], rax
		mov     rax, qword [rbp-4000]
		cmp     rax, 0
		jne     L59
		jmp     L64
L59:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-4008], rax
		mov     rax, qword [rbp-4008]
		add     rax, 8
		mov     qword [rbp-4016], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-4024], rax
		mov     rax, qword [rbp-4024]
		imul    rax, 8
		mov     qword [rbp-4032], rax
		mov     rax, qword [rbp-4016]
		add     rax, qword [rbp-4032]
		mov     qword [rbp-4040], rax
		mov     rdx, qword [rbp-4040]
		mov     rax, qword [rdx]
		mov     qword [rbp-4048], rax
		mov     rax, qword [rbp-4048]
		add     rax, 8
		mov     qword [rbp-4056], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-4064], rax
		mov     rax, qword [rbp-4064]
		imul    rax, 8
		mov     qword [rbp-4072], rax
		mov     rax, qword [rbp-4056]
		add     rax, qword [rbp-4072]
		mov     qword [rbp-4080], rax
		mov     rdx, qword [rbp-4080]
		mov     rax, qword [rdx]
		mov     qword [rbp-4088], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-4096], rax
		mov     rax, qword [rbp-4088]
		cmp     rax, qword [rbp-4096]
		sete    al
		movzx   rax, al
		mov     qword [rbp-4104], rax
		mov     rax, qword [rbp-4104]
		cmp     rax, 0
		jne     L60
		jmp     L64
L60:
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-4112], rax
		mov     rax, qword [rbp-4112]
		add     rax, 1
		mov     qword [rbp-4120], rax
		mov     rax, qword [rbp-4120]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-4128], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-4136], rax
		mov     rax, qword [rbp-4136]
		add     rax, 8
		mov     qword [rbp-4144], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-4152], rax
		mov     rax, qword [rbp-4152]
		imul    rax, 8
		mov     qword [rbp-4160], rax
		mov     rax, qword [rbp-4144]
		add     rax, qword [rbp-4160]
		mov     qword [rbp-4168], rax
		mov     rax, qword [rbp-4128]
		mov     rdx, qword [rbp-4168]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-4176], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-4184], rax
		mov     rax, qword [rbp-4184]
		add     rax, 8
		mov     qword [rbp-4192], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-4200], rax
		mov     rax, qword [rbp-4200]
		imul    rax, 8
		mov     qword [rbp-4208], rax
		mov     rax, qword [rbp-4192]
		add     rax, qword [rbp-4208]
		mov     qword [rbp-4216], rax
		mov     rax, qword [rbp-4176]
		mov     rdx, qword [rbp-4216]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-128]
		mov     rax, qword [rdx]
		mov     qword [rbp-4224], rax
		mov     rax, qword [rbp-4224]
		add     rax, 1
		mov     qword [rbp-4232], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-4240], rax
		mov     rax, qword [rbp-4240]
		add     rax, 8
		mov     qword [rbp-4248], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-4256], rax
		mov     rax, qword [rbp-4256]
		imul    rax, 8
		mov     qword [rbp-4264], rax
		mov     rax, qword [rbp-4248]
		add     rax, qword [rbp-4264]
		mov     qword [rbp-4272], rax
		mov     rdx, qword [rbp-4272]
		mov     rax, qword [rdx]
		mov     qword [rbp-4280], rax
		mov     rax, qword [rbp-4280]
		add     rax, 8
		mov     qword [rbp-4288], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-4296], rax
		mov     rax, qword [rbp-4296]
		imul    rax, 8
		mov     qword [rbp-4304], rax
		mov     rax, qword [rbp-4288]
		add     rax, qword [rbp-4304]
		mov     qword [rbp-4312], rax
		mov     rax, qword [rbp-4232]
		mov     rdx, qword [rbp-4312]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-4320], rax
		mov     rdx, qword [rbp-192]
		mov     rax, qword [rdx]
		mov     qword [rbp-4328], rax
		mov     rax, qword [rbp-4320]
		cmp     rax, qword [rbp-4328]
		sete    al
		movzx   rax, al
		mov     qword [rbp-4336], rax
		mov     rax, qword [rbp-4336]
		cmp     rax, 0
		jne     L61
		jmp     L63
L61:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-4344], rax
		mov     rdx, qword [rbp-176]
		mov     rax, qword [rdx]
		mov     qword [rbp-4352], rax
		mov     rax, qword [rbp-4344]
		cmp     rax, qword [rbp-4352]
		sete    al
		movzx   rax, al
		mov     qword [rbp-4360], rax
		mov     rax, qword [rbp-4360]
		cmp     rax, 0
		jne     L62
		jmp     L63
L62:
		mov     rax, 1
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		jmp     L63
L63:
		jmp     L64
L64:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-4368], rax
		mov     rax, qword [rbp-4368]
		add     rax, 8
		mov     qword [rbp-4376], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-4384], rax
		mov     rax, qword [rbp-4384]
		imul    rax, 8
		mov     qword [rbp-4392], rax
		mov     rax, qword [rbp-4376]
		add     rax, qword [rbp-4392]
		mov     qword [rbp-4400], rax
		mov     rdx, qword [rbp-4400]
		mov     rax, qword [rdx]
		mov     qword [rbp-4408], rax
		mov     rax, qword [rbp-4408]
		add     rax, 2
		mov     qword [rbp-4416], rax
		mov     rax, qword [rbp-4416]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-4424], rax
		mov     rax, qword [rbp-4424]
		add     rax, 8
		mov     qword [rbp-4432], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-4440], rax
		mov     rax, qword [rbp-4440]
		imul    rax, 8
		mov     qword [rbp-4448], rax
		mov     rax, qword [rbp-4432]
		add     rax, qword [rbp-4448]
		mov     qword [rbp-4456], rax
		mov     rdx, qword [rbp-4456]
		mov     rax, qword [rdx]
		mov     qword [rbp-4464], rax
		mov     rax, qword [rbp-4464]
		sub     rax, 1
		mov     qword [rbp-4472], rax
		mov     rax, qword [rbp-4472]
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-4480], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-4488], rax
		mov     rdi, qword [rbp-4480]
		mov     rsi, qword [rbp-4488]
		call    _check
		mov     qword [rbp-4496], rax
		mov     rax, qword [rbp-4496]
		cmp     rax, 0
		jne     L65
		jmp     L71
L65:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-4504], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-4512], rax
		mov     rdi, qword [rbp-4504]
		mov     rsi, qword [rbp-4512]
		call    _check
		mov     qword [rbp-4520], rax
		mov     rax, qword [rbp-4520]
		cmp     rax, 0
		jne     L66
		jmp     L71
L66:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-4528], rax
		mov     rax, qword [rbp-4528]
		add     rax, 8
		mov     qword [rbp-4536], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-4544], rax
		mov     rax, qword [rbp-4544]
		imul    rax, 8
		mov     qword [rbp-4552], rax
		mov     rax, qword [rbp-4536]
		add     rax, qword [rbp-4552]
		mov     qword [rbp-4560], rax
		mov     rdx, qword [rbp-4560]
		mov     rax, qword [rdx]
		mov     qword [rbp-4568], rax
		mov     rax, qword [rbp-4568]
		add     rax, 8
		mov     qword [rbp-4576], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-4584], rax
		mov     rax, qword [rbp-4584]
		imul    rax, 8
		mov     qword [rbp-4592], rax
		mov     rax, qword [rbp-4576]
		add     rax, qword [rbp-4592]
		mov     qword [rbp-4600], rax
		mov     rdx, qword [rbp-4600]
		mov     rax, qword [rdx]
		mov     qword [rbp-4608], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-4616], rax
		mov     rax, qword [rbp-4608]
		cmp     rax, qword [rbp-4616]
		sete    al
		movzx   rax, al
		mov     qword [rbp-4624], rax
		mov     rax, qword [rbp-4624]
		cmp     rax, 0
		jne     L67
		jmp     L71
L67:
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-4632], rax
		mov     rax, qword [rbp-4632]
		add     rax, 1
		mov     qword [rbp-4640], rax
		mov     rax, qword [rbp-4640]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-4648], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-4656], rax
		mov     rax, qword [rbp-4656]
		add     rax, 8
		mov     qword [rbp-4664], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-4672], rax
		mov     rax, qword [rbp-4672]
		imul    rax, 8
		mov     qword [rbp-4680], rax
		mov     rax, qword [rbp-4664]
		add     rax, qword [rbp-4680]
		mov     qword [rbp-4688], rax
		mov     rax, qword [rbp-4648]
		mov     rdx, qword [rbp-4688]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-4696], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-4704], rax
		mov     rax, qword [rbp-4704]
		add     rax, 8
		mov     qword [rbp-4712], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-4720], rax
		mov     rax, qword [rbp-4720]
		imul    rax, 8
		mov     qword [rbp-4728], rax
		mov     rax, qword [rbp-4712]
		add     rax, qword [rbp-4728]
		mov     qword [rbp-4736], rax
		mov     rax, qword [rbp-4696]
		mov     rdx, qword [rbp-4736]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-128]
		mov     rax, qword [rdx]
		mov     qword [rbp-4744], rax
		mov     rax, qword [rbp-4744]
		add     rax, 1
		mov     qword [rbp-4752], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-4760], rax
		mov     rax, qword [rbp-4760]
		add     rax, 8
		mov     qword [rbp-4768], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-4776], rax
		mov     rax, qword [rbp-4776]
		imul    rax, 8
		mov     qword [rbp-4784], rax
		mov     rax, qword [rbp-4768]
		add     rax, qword [rbp-4784]
		mov     qword [rbp-4792], rax
		mov     rdx, qword [rbp-4792]
		mov     rax, qword [rdx]
		mov     qword [rbp-4800], rax
		mov     rax, qword [rbp-4800]
		add     rax, 8
		mov     qword [rbp-4808], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-4816], rax
		mov     rax, qword [rbp-4816]
		imul    rax, 8
		mov     qword [rbp-4824], rax
		mov     rax, qword [rbp-4808]
		add     rax, qword [rbp-4824]
		mov     qword [rbp-4832], rax
		mov     rax, qword [rbp-4752]
		mov     rdx, qword [rbp-4832]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-4840], rax
		mov     rdx, qword [rbp-192]
		mov     rax, qword [rdx]
		mov     qword [rbp-4848], rax
		mov     rax, qword [rbp-4840]
		cmp     rax, qword [rbp-4848]
		sete    al
		movzx   rax, al
		mov     qword [rbp-4856], rax
		mov     rax, qword [rbp-4856]
		cmp     rax, 0
		jne     L68
		jmp     L70
L68:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-4864], rax
		mov     rdx, qword [rbp-176]
		mov     rax, qword [rdx]
		mov     qword [rbp-4872], rax
		mov     rax, qword [rbp-4864]
		cmp     rax, qword [rbp-4872]
		sete    al
		movzx   rax, al
		mov     qword [rbp-4880], rax
		mov     rax, qword [rbp-4880]
		cmp     rax, 0
		jne     L69
		jmp     L70
L69:
		mov     rax, 1
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		jmp     L70
L70:
		jmp     L71
L71:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-4888], rax
		mov     rax, qword [rbp-4888]
		add     rax, 8
		mov     qword [rbp-4896], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-4904], rax
		mov     rax, qword [rbp-4904]
		imul    rax, 8
		mov     qword [rbp-4912], rax
		mov     rax, qword [rbp-4896]
		add     rax, qword [rbp-4912]
		mov     qword [rbp-4920], rax
		mov     rdx, qword [rbp-4920]
		mov     rax, qword [rdx]
		mov     qword [rbp-4928], rax
		mov     rax, qword [rbp-4928]
		add     rax, 2
		mov     qword [rbp-4936], rax
		mov     rax, qword [rbp-4936]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-4944], rax
		mov     rax, qword [rbp-4944]
		add     rax, 8
		mov     qword [rbp-4952], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-4960], rax
		mov     rax, qword [rbp-4960]
		imul    rax, 8
		mov     qword [rbp-4968], rax
		mov     rax, qword [rbp-4952]
		add     rax, qword [rbp-4968]
		mov     qword [rbp-4976], rax
		mov     rdx, qword [rbp-4976]
		mov     rax, qword [rdx]
		mov     qword [rbp-4984], rax
		mov     rax, qword [rbp-4984]
		add     rax, 1
		mov     qword [rbp-4992], rax
		mov     rax, qword [rbp-4992]
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-5000], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-5008], rax
		mov     rdi, qword [rbp-5000]
		mov     rsi, qword [rbp-5008]
		call    _check
		mov     qword [rbp-5016], rax
		mov     rax, qword [rbp-5016]
		cmp     rax, 0
		jne     L72
		jmp     L78
L72:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-5024], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-5032], rax
		mov     rdi, qword [rbp-5024]
		mov     rsi, qword [rbp-5032]
		call    _check
		mov     qword [rbp-5040], rax
		mov     rax, qword [rbp-5040]
		cmp     rax, 0
		jne     L73
		jmp     L78
L73:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-5048], rax
		mov     rax, qword [rbp-5048]
		add     rax, 8
		mov     qword [rbp-5056], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-5064], rax
		mov     rax, qword [rbp-5064]
		imul    rax, 8
		mov     qword [rbp-5072], rax
		mov     rax, qword [rbp-5056]
		add     rax, qword [rbp-5072]
		mov     qword [rbp-5080], rax
		mov     rdx, qword [rbp-5080]
		mov     rax, qword [rdx]
		mov     qword [rbp-5088], rax
		mov     rax, qword [rbp-5088]
		add     rax, 8
		mov     qword [rbp-5096], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-5104], rax
		mov     rax, qword [rbp-5104]
		imul    rax, 8
		mov     qword [rbp-5112], rax
		mov     rax, qword [rbp-5096]
		add     rax, qword [rbp-5112]
		mov     qword [rbp-5120], rax
		mov     rdx, qword [rbp-5120]
		mov     rax, qword [rdx]
		mov     qword [rbp-5128], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-5136], rax
		mov     rax, qword [rbp-5128]
		cmp     rax, qword [rbp-5136]
		sete    al
		movzx   rax, al
		mov     qword [rbp-5144], rax
		mov     rax, qword [rbp-5144]
		cmp     rax, 0
		jne     L74
		jmp     L78
L74:
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-5152], rax
		mov     rax, qword [rbp-5152]
		add     rax, 1
		mov     qword [rbp-5160], rax
		mov     rax, qword [rbp-5160]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-5168], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-5176], rax
		mov     rax, qword [rbp-5176]
		add     rax, 8
		mov     qword [rbp-5184], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-5192], rax
		mov     rax, qword [rbp-5192]
		imul    rax, 8
		mov     qword [rbp-5200], rax
		mov     rax, qword [rbp-5184]
		add     rax, qword [rbp-5200]
		mov     qword [rbp-5208], rax
		mov     rax, qword [rbp-5168]
		mov     rdx, qword [rbp-5208]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-5216], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-5224], rax
		mov     rax, qword [rbp-5224]
		add     rax, 8
		mov     qword [rbp-5232], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-5240], rax
		mov     rax, qword [rbp-5240]
		imul    rax, 8
		mov     qword [rbp-5248], rax
		mov     rax, qword [rbp-5232]
		add     rax, qword [rbp-5248]
		mov     qword [rbp-5256], rax
		mov     rax, qword [rbp-5216]
		mov     rdx, qword [rbp-5256]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-128]
		mov     rax, qword [rdx]
		mov     qword [rbp-5264], rax
		mov     rax, qword [rbp-5264]
		add     rax, 1
		mov     qword [rbp-5272], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-5280], rax
		mov     rax, qword [rbp-5280]
		add     rax, 8
		mov     qword [rbp-5288], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-5296], rax
		mov     rax, qword [rbp-5296]
		imul    rax, 8
		mov     qword [rbp-5304], rax
		mov     rax, qword [rbp-5288]
		add     rax, qword [rbp-5304]
		mov     qword [rbp-5312], rax
		mov     rdx, qword [rbp-5312]
		mov     rax, qword [rdx]
		mov     qword [rbp-5320], rax
		mov     rax, qword [rbp-5320]
		add     rax, 8
		mov     qword [rbp-5328], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-5336], rax
		mov     rax, qword [rbp-5336]
		imul    rax, 8
		mov     qword [rbp-5344], rax
		mov     rax, qword [rbp-5328]
		add     rax, qword [rbp-5344]
		mov     qword [rbp-5352], rax
		mov     rax, qword [rbp-5272]
		mov     rdx, qword [rbp-5352]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-5360], rax
		mov     rdx, qword [rbp-192]
		mov     rax, qword [rdx]
		mov     qword [rbp-5368], rax
		mov     rax, qword [rbp-5360]
		cmp     rax, qword [rbp-5368]
		sete    al
		movzx   rax, al
		mov     qword [rbp-5376], rax
		mov     rax, qword [rbp-5376]
		cmp     rax, 0
		jne     L75
		jmp     L77
L75:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-5384], rax
		mov     rdx, qword [rbp-176]
		mov     rax, qword [rdx]
		mov     qword [rbp-5392], rax
		mov     rax, qword [rbp-5384]
		cmp     rax, qword [rbp-5392]
		sete    al
		movzx   rax, al
		mov     qword [rbp-5400], rax
		mov     rax, qword [rbp-5400]
		cmp     rax, 0
		jne     L76
		jmp     L77
L76:
		mov     rax, 1
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		jmp     L77
L77:
		jmp     L78
L78:
		mov     rdx, qword [rbp-144]
		mov     rax, qword [rdx]
		mov     qword [rbp-5408], rax
		mov     rax, qword [rbp-5408]
		cmp     rax, 1
		sete    al
		movzx   rax, al
		mov     qword [rbp-5416], rax
		mov     rax, qword [rbp-5416]
		cmp     rax, 0
		jne     L79
		jmp     L80
L79:
		jmp     L81
L80:
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-5424], rax
		mov     rax, qword [rbp-5424]
		add     rax, 1
		mov     qword [rbp-5432], rax
		mov     rax, qword [rbp-5432]
		mov     rdx, qword [rbp-240]
		mov     qword [rdx], rax
		jmp     L21
L81:
		mov     rdx, qword [rbp-144]
		mov     rax, qword [rdx]
		mov     qword [rbp-5440], rax
		mov     rax, qword [rbp-5440]
		cmp     rax, 1
		sete    al
		movzx   rax, al
		mov     qword [rbp-5448], rax
		mov     rax, qword [rbp-5448]
		cmp     rax, 0
		jne     L82
		jmp     L83
L82:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-5456], rax
		mov     rax, qword [rbp-5456]
		add     rax, 8
		mov     qword [rbp-5464], rax
		mov     rdx, qword [rbp-192]
		mov     rax, qword [rdx]
		mov     qword [rbp-5472], rax
		mov     rax, qword [rbp-5472]
		imul    rax, 8
		mov     qword [rbp-5480], rax
		mov     rax, qword [rbp-5464]
		add     rax, qword [rbp-5480]
		mov     qword [rbp-5488], rax
		mov     rdx, qword [rbp-5488]
		mov     rax, qword [rdx]
		mov     qword [rbp-5496], rax
		mov     rax, qword [rbp-5496]
		add     rax, 8
		mov     qword [rbp-5504], rax
		mov     rdx, qword [rbp-176]
		mov     rax, qword [rdx]
		mov     qword [rbp-5512], rax
		mov     rax, qword [rbp-5512]
		imul    rax, 8
		mov     qword [rbp-5520], rax
		mov     rax, qword [rbp-5504]
		add     rax, qword [rbp-5520]
		mov     qword [rbp-5528], rax
		mov     rdx, qword [rbp-5528]
		mov     rax, qword [rdx]
		mov     qword [rbp-5536], rax
		mov     rdi, qword [rbp-5536]
		call    _toString
		mov     qword [rbp-5544], rax
		mov     rdi, qword [rbp-5544]
		call    _println
		jmp     L84
L83:
		mov     rdi, str_0
		call    _print
		jmp     L84
L84:
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

str_0:
		dq      13
		db      6EH, 6FH, 20H, 73H, 6FH, 6CH, 75H, 74H, 69H, 6FH, 6EH, 21H, 0AH, 00H

SECTION .bss


SECTION .text

_print:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rax
        mov     edi, L_014
        mov     eax, 0
        call    printf
        nop
        leave
        ret


_println:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rdi, rax
        call    puts
        nop
        leave
        ret


_getString:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32800


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-8H], rax
        xor     eax, eax
        lea     rax, [rbp-8010H]
        mov     rsi, rax
        mov     edi, L_014
        mov     eax, 0
        call    __isoc99_scanf
        lea     rax, [rbp-8010H]
        mov     rdi, rax
        call    strlen
        mov     qword [rbp-8020H], rax
        mov     rax, qword [rbp-8020H]
        add     rax, 8
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8018H], rax
        mov     rax, qword [rbp-8018H]
        mov     rdx, qword [rbp-8020H]
        mov     qword [rax], rdx
        mov     rax, qword [rbp-8018H]
        lea     rdx, [rax+8H]
        lea     rax, [rbp-8010H]
        mov     rsi, rax
        mov     rdi, rdx
        call    strcpy
        mov     rax, qword [rbp-8018H]
        mov     rcx, qword [rbp-8H]


        xor     rcx, qword [fs:abs 28H]
        jz      L_001
        call    __stack_chk_fail
L_001:  leave
        ret


_getInt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16


        mov     rax, qword [fs:abs 28H]
        mov     qword [rbp-8H], rax
        xor     eax, eax
        lea     rax, [rbp-10H]
        mov     rsi, rax
        mov     edi, L_015
        mov     eax, 0
        call    __isoc99_scanf
        mov     rax, qword [rbp-10H]
        mov     rdx, qword [rbp-8H]


        xor     rdx, qword [fs:abs 28H]
        jz      L_002
        call    __stack_chk_fail
L_002:  leave
        ret


_toString:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 32
        mov     qword [rbp-18H], rdi
        mov     rax, qword [rbp-18H]
        mov     rcx, rax
        mov     edx, L_015
        mov     esi, 0
        mov     edi, 0
        mov     eax, 0
        call    snprintf
        cdqe
        mov     qword [rbp-10H], rax
        mov     rax, qword [rbp-10H]
        add     rax, 9
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-10H]
        add     rax, 1
        mov     rsi, rax
        mov     rax, qword [rbp-8H]
        lea     rdi, [rax+8H]
        mov     rax, qword [rbp-18H]
        mov     rcx, rax
        mov     edx, L_015
        mov     eax, 0
        call    snprintf
        mov     rax, qword [rbp-10H]
        add     rax, 8
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        mov     byte [rax], 0
        mov     rax, qword [rbp-8H]
        mov     rdx, qword [rbp-10H]
        mov     qword [rax], rdx
        mov     rax, qword [rbp-8H]
        leave
        ret


__stringLength:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        mov     rax, qword [rax]
        pop     rbp
        ret


__stringSubstring:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 64
        mov     qword [rbp-28H], rdi
        mov     qword [rbp-30H], rsi
        mov     qword [rbp-38H], rdx
        mov     rax, qword [rbp-38H]
        sub     rax, qword [rbp-30H]
        mov     qword [rbp-10H], rax
        mov     rax, qword [rbp-10H]
        add     rax, 9
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8H], rax
        mov     rax, qword [rbp-8H]
        mov     rdx, qword [rbp-10H]
        mov     qword [rax], rdx
        mov     dword [rbp-14H], 0
        jmp     L_004

L_003:  mov     eax, dword [rbp-14H]
        add     eax, 8
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rdx, rax
        mov     rax, qword [rbp-30H]
        lea     rcx, [rax+8H]
        mov     eax, dword [rbp-14H]
        cdqe
        add     rax, rcx
        mov     rcx, rax
        mov     rax, qword [rbp-28H]
        add     rax, rcx
        movzx   eax, byte [rax]
        mov     byte [rdx], al
        add     dword [rbp-14H], 1
L_004:  mov     eax, dword [rbp-14H]
        cdqe
        cmp     rax, qword [rbp-10H]
        jl      L_003
        mov     rax, qword [rbp-10H]
        add     rax, 8
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        mov     byte [rax], 0
        mov     rax, qword [rbp-8H]
        leave
        ret


__stringParseInt:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-18H], rdi
        mov     qword [rbp-8H], 0
        mov     dword [rbp-0CH], 0
        add     qword [rbp-18H], 8
        mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        cmp     al, 45
        jnz     L_006
        mov     dword [rbp-0CH], 1
        add     qword [rbp-18H], 1
        jmp     L_006

L_005:  mov     rdx, qword [rbp-8H]
        mov     rax, rdx
        shl     rax, 2
        add     rax, rdx
        add     rax, rax
        mov     rdx, rax
        mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        movsx   eax, al
        sub     eax, 48
        cdqe
        add     rax, rdx
        mov     qword [rbp-8H], rax
        add     qword [rbp-18H], 1
L_006:  mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        cmp     al, 47
        jle     L_007
        mov     rax, qword [rbp-18H]
        movzx   eax, byte [rax]
        cmp     al, 57
        jle     L_005
L_007:  cmp     dword [rbp-0CH], 0
        jz      L_008
        mov     rax, qword [rbp-8H]
        neg     rax
        jmp     L_009

L_008:  mov     rax, qword [rbp-8H]
L_009:  pop     rbp
        ret


__stringOrd:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        add     rax, 8
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        movzx   eax, byte [rax]
        movsx   rax, al
        pop     rbp
        ret


__stringAdd:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 48
        mov     qword [rbp-28H], rdi
        mov     qword [rbp-30H], rsi
        mov     rax, qword [rbp-28H]
        mov     rax, qword [rax]
        mov     qword [rbp-18H], rax
        mov     rax, qword [rbp-30H]
        mov     rax, qword [rax]
        mov     qword [rbp-10H], rax
        mov     rax, qword [rbp-18H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-10H]
        add     rax, rdx
        add     rax, 1
        mov     rdi, rax
        call    malloc
        mov     qword [rbp-8H], rax
        mov     dword [rbp-20H], 0
        jmp     L_011

L_010:  mov     eax, dword [rbp-20H]
        add     eax, 8
        movsxd  rdx, eax
        mov     rax, qword [rbp-8H]
        add     rdx, rax
        mov     eax, dword [rbp-20H]
        add     eax, 8
        movsxd  rcx, eax
        mov     rax, qword [rbp-28H]
        add     rax, rcx
        movzx   eax, byte [rax]
        mov     byte [rdx], al
        add     dword [rbp-20H], 1
L_011:  mov     eax, dword [rbp-20H]
        cdqe
        cmp     rax, qword [rbp-18H]
        jl      L_010
        mov     dword [rbp-1CH], 0
        jmp     L_013

L_012:  mov     rax, qword [rbp-18H]
        lea     rdx, [rax+8H]
        mov     eax, dword [rbp-1CH]
        cdqe
        add     rax, rdx
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        add     rdx, rax
        mov     eax, dword [rbp-1CH]
        add     eax, 8
        movsxd  rcx, eax
        mov     rax, qword [rbp-30H]
        add     rax, rcx
        movzx   eax, byte [rax]
        mov     byte [rdx], al
        add     dword [rbp-1CH], 1
L_013:  mov     eax, dword [rbp-1CH]
        cdqe
        cmp     rax, qword [rbp-10H]
        jl      L_012
        mov     rax, qword [rbp-18H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-10H]
        add     rax, rdx
        mov     rdx, rax
        mov     rax, qword [rbp-8H]
        add     rax, rdx
        mov     byte [rax], 0
        mov     rax, qword [rbp-8H]
        leave
        ret


__stringEq:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        sete    al
        movzx   eax, al
        leave
        ret


__stringNeq:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        setne   al
        movzx   eax, al
        leave
        ret


__stringLt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        shr     eax, 31
        movzx   eax, al
        leave
        ret


__stringGt:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        setg    al
        movzx   eax, al
        leave
        ret


__stringLe:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        test    eax, eax
        setle   al
        movzx   eax, al
        leave
        ret


__stringGe:
        push    rbp
        mov     rbp, rsp
        sub     rsp, 16
        mov     qword [rbp-8H], rdi
        mov     qword [rbp-10H], rsi
        mov     rax, qword [rbp-10H]
        lea     rdx, [rax+8H]
        mov     rax, qword [rbp-8H]
        add     rax, 8
        mov     rsi, rdx
        mov     rdi, rax
        call    strcmp
        not     eax
        shr     eax, 31
        movzx   eax, al
        leave
        ret


__arraySize:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        mov     rax, qword [rax]
        pop     rbp
        ret



SECTION .data


SECTION .bss


SECTION .rodata

L_014:
        db 25H, 73H, 00H

L_015:
        db 25H, 6CH, 64H, 00H


