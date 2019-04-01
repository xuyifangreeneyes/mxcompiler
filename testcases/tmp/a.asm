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
		pop     rbp
		ret     

__globalInit:
		push    rbp
		mov     rbp, rsp
		mov     rsp, rbp
		pop     rbp
		ret     

_main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 1568
		mov     rax, rbp
		sub     rax, 8
		mov     qword [rbp-16], rax
		mov     rax, rbp
		sub     rax, 24
		mov     qword [rbp-32], rax
		mov     rax, rbp
		sub     rax, 40
		mov     qword [rbp-48], rax
		mov     rax, str_0
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		mov     rax, str_1
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		mov     rax, str_2
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-56], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-64], rax
		mov     rdi, qword [rbp-56]
		mov     rsi, qword [rbp-64]
		call    __stringAdd
		mov     qword [rbp-72], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-80], rax
		mov     rdi, qword [rbp-72]
		mov     rsi, qword [rbp-80]
		call    __stringAdd
		mov     qword [rbp-88], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-96], rax
		mov     rdi, qword [rbp-88]
		mov     rsi, qword [rbp-96]
		call    __stringAdd
		mov     qword [rbp-104], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-112], rax
		mov     rdi, qword [rbp-104]
		mov     rsi, qword [rbp-112]
		call    __stringAdd
		mov     qword [rbp-120], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-128], rax
		mov     rdi, qword [rbp-120]
		mov     rsi, qword [rbp-128]
		call    __stringAdd
		mov     qword [rbp-136], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-144], rax
		mov     rdi, qword [rbp-136]
		mov     rsi, qword [rbp-144]
		call    __stringAdd
		mov     qword [rbp-152], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-160], rax
		mov     rdi, qword [rbp-152]
		mov     rsi, qword [rbp-160]
		call    __stringAdd
		mov     qword [rbp-168], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-176], rax
		mov     rdi, qword [rbp-168]
		mov     rsi, qword [rbp-176]
		call    __stringAdd
		mov     qword [rbp-184], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-192], rax
		mov     rdi, qword [rbp-184]
		mov     rsi, qword [rbp-192]
		call    __stringAdd
		mov     qword [rbp-200], rax
		mov     rdi, qword [rbp-200]
		call    _print
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-208], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-216], rax
		mov     rdi, qword [rbp-208]
		mov     rsi, qword [rbp-216]
		call    __stringAdd
		mov     qword [rbp-224], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-232], rax
		mov     rdi, qword [rbp-224]
		mov     rsi, qword [rbp-232]
		call    __stringAdd
		mov     qword [rbp-240], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-248], rax
		mov     rdi, qword [rbp-240]
		mov     rsi, qword [rbp-248]
		call    __stringAdd
		mov     qword [rbp-256], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-264], rax
		mov     rdi, qword [rbp-256]
		mov     rsi, qword [rbp-264]
		call    __stringAdd
		mov     qword [rbp-272], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-280], rax
		mov     rdi, qword [rbp-272]
		mov     rsi, qword [rbp-280]
		call    __stringAdd
		mov     qword [rbp-288], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-296], rax
		mov     rdi, qword [rbp-288]
		mov     rsi, qword [rbp-296]
		call    __stringAdd
		mov     qword [rbp-304], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-312], rax
		mov     rdi, qword [rbp-304]
		mov     rsi, qword [rbp-312]
		call    __stringAdd
		mov     qword [rbp-320], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-328], rax
		mov     rdi, qword [rbp-320]
		mov     rsi, qword [rbp-328]
		call    __stringAdd
		mov     qword [rbp-336], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-344], rax
		mov     rdi, qword [rbp-336]
		mov     rsi, qword [rbp-344]
		call    __stringAdd
		mov     qword [rbp-352], rax
		mov     rdi, qword [rbp-352]
		call    _print
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-360], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-368], rax
		mov     rdi, qword [rbp-360]
		mov     rsi, qword [rbp-368]
		call    __stringAdd
		mov     qword [rbp-376], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-384], rax
		mov     rdi, qword [rbp-376]
		mov     rsi, qword [rbp-384]
		call    __stringAdd
		mov     qword [rbp-392], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-400], rax
		mov     rdi, qword [rbp-392]
		mov     rsi, qword [rbp-400]
		call    __stringAdd
		mov     qword [rbp-408], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-416], rax
		mov     rdi, qword [rbp-408]
		mov     rsi, qword [rbp-416]
		call    __stringAdd
		mov     qword [rbp-424], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-432], rax
		mov     rdi, qword [rbp-424]
		mov     rsi, qword [rbp-432]
		call    __stringAdd
		mov     qword [rbp-440], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-448], rax
		mov     rdi, qword [rbp-440]
		mov     rsi, qword [rbp-448]
		call    __stringAdd
		mov     qword [rbp-456], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-464], rax
		mov     rdi, qword [rbp-456]
		mov     rsi, qword [rbp-464]
		call    __stringAdd
		mov     qword [rbp-472], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-480], rax
		mov     rdi, qword [rbp-472]
		mov     rsi, qword [rbp-480]
		call    __stringAdd
		mov     qword [rbp-488], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-496], rax
		mov     rdi, qword [rbp-488]
		mov     rsi, qword [rbp-496]
		call    __stringAdd
		mov     qword [rbp-504], rax
		mov     rdi, qword [rbp-504]
		call    _print
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-512], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-520], rax
		mov     rdi, qword [rbp-512]
		mov     rsi, qword [rbp-520]
		call    __stringAdd
		mov     qword [rbp-528], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-536], rax
		mov     rdi, qword [rbp-528]
		mov     rsi, qword [rbp-536]
		call    __stringAdd
		mov     qword [rbp-544], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-552], rax
		mov     rdi, qword [rbp-544]
		mov     rsi, qword [rbp-552]
		call    __stringAdd
		mov     qword [rbp-560], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-568], rax
		mov     rdi, qword [rbp-560]
		mov     rsi, qword [rbp-568]
		call    __stringAdd
		mov     qword [rbp-576], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-584], rax
		mov     rdi, qword [rbp-576]
		mov     rsi, qword [rbp-584]
		call    __stringAdd
		mov     qword [rbp-592], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-600], rax
		mov     rdi, qword [rbp-592]
		mov     rsi, qword [rbp-600]
		call    __stringAdd
		mov     qword [rbp-608], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-616], rax
		mov     rdi, qword [rbp-608]
		mov     rsi, qword [rbp-616]
		call    __stringAdd
		mov     qword [rbp-624], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-632], rax
		mov     rdi, qword [rbp-624]
		mov     rsi, qword [rbp-632]
		call    __stringAdd
		mov     qword [rbp-640], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-648], rax
		mov     rdi, qword [rbp-640]
		mov     rsi, qword [rbp-648]
		call    __stringAdd
		mov     qword [rbp-656], rax
		mov     rdi, qword [rbp-656]
		call    _print
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-664], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-672], rax
		mov     rdi, qword [rbp-664]
		mov     rsi, qword [rbp-672]
		call    __stringAdd
		mov     qword [rbp-680], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-688], rax
		mov     rdi, qword [rbp-680]
		mov     rsi, qword [rbp-688]
		call    __stringAdd
		mov     qword [rbp-696], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-704], rax
		mov     rdi, qword [rbp-696]
		mov     rsi, qword [rbp-704]
		call    __stringAdd
		mov     qword [rbp-712], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-720], rax
		mov     rdi, qword [rbp-712]
		mov     rsi, qword [rbp-720]
		call    __stringAdd
		mov     qword [rbp-728], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-736], rax
		mov     rdi, qword [rbp-728]
		mov     rsi, qword [rbp-736]
		call    __stringAdd
		mov     qword [rbp-744], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-752], rax
		mov     rdi, qword [rbp-744]
		mov     rsi, qword [rbp-752]
		call    __stringAdd
		mov     qword [rbp-760], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-768], rax
		mov     rdi, qword [rbp-760]
		mov     rsi, qword [rbp-768]
		call    __stringAdd
		mov     qword [rbp-776], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-784], rax
		mov     rdi, qword [rbp-776]
		mov     rsi, qword [rbp-784]
		call    __stringAdd
		mov     qword [rbp-792], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-800], rax
		mov     rdi, qword [rbp-792]
		mov     rsi, qword [rbp-800]
		call    __stringAdd
		mov     qword [rbp-808], rax
		mov     rdi, qword [rbp-808]
		call    _print
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-816], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-824], rax
		mov     rdi, qword [rbp-816]
		mov     rsi, qword [rbp-824]
		call    __stringAdd
		mov     qword [rbp-832], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-840], rax
		mov     rdi, qword [rbp-832]
		mov     rsi, qword [rbp-840]
		call    __stringAdd
		mov     qword [rbp-848], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-856], rax
		mov     rdi, qword [rbp-848]
		mov     rsi, qword [rbp-856]
		call    __stringAdd
		mov     qword [rbp-864], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-872], rax
		mov     rdi, qword [rbp-864]
		mov     rsi, qword [rbp-872]
		call    __stringAdd
		mov     qword [rbp-880], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-888], rax
		mov     rdi, qword [rbp-880]
		mov     rsi, qword [rbp-888]
		call    __stringAdd
		mov     qword [rbp-896], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-904], rax
		mov     rdi, qword [rbp-896]
		mov     rsi, qword [rbp-904]
		call    __stringAdd
		mov     qword [rbp-912], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-920], rax
		mov     rdi, qword [rbp-912]
		mov     rsi, qword [rbp-920]
		call    __stringAdd
		mov     qword [rbp-928], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-936], rax
		mov     rdi, qword [rbp-928]
		mov     rsi, qword [rbp-936]
		call    __stringAdd
		mov     qword [rbp-944], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-952], rax
		mov     rdi, qword [rbp-944]
		mov     rsi, qword [rbp-952]
		call    __stringAdd
		mov     qword [rbp-960], rax
		mov     rdi, qword [rbp-960]
		call    _print
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-968], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-976], rax
		mov     rdi, qword [rbp-968]
		mov     rsi, qword [rbp-976]
		call    __stringAdd
		mov     qword [rbp-984], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-992], rax
		mov     rdi, qword [rbp-984]
		mov     rsi, qword [rbp-992]
		call    __stringAdd
		mov     qword [rbp-1000], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1008], rax
		mov     rdi, qword [rbp-1000]
		mov     rsi, qword [rbp-1008]
		call    __stringAdd
		mov     qword [rbp-1016], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1024], rax
		mov     rdi, qword [rbp-1016]
		mov     rsi, qword [rbp-1024]
		call    __stringAdd
		mov     qword [rbp-1032], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1040], rax
		mov     rdi, qword [rbp-1032]
		mov     rsi, qword [rbp-1040]
		call    __stringAdd
		mov     qword [rbp-1048], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1056], rax
		mov     rdi, qword [rbp-1048]
		mov     rsi, qword [rbp-1056]
		call    __stringAdd
		mov     qword [rbp-1064], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1072], rax
		mov     rdi, qword [rbp-1064]
		mov     rsi, qword [rbp-1072]
		call    __stringAdd
		mov     qword [rbp-1080], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1088], rax
		mov     rdi, qword [rbp-1080]
		mov     rsi, qword [rbp-1088]
		call    __stringAdd
		mov     qword [rbp-1096], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1104], rax
		mov     rdi, qword [rbp-1096]
		mov     rsi, qword [rbp-1104]
		call    __stringAdd
		mov     qword [rbp-1112], rax
		mov     rdi, qword [rbp-1112]
		call    _print
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1120], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1128], rax
		mov     rdi, qword [rbp-1120]
		mov     rsi, qword [rbp-1128]
		call    __stringAdd
		mov     qword [rbp-1136], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1144], rax
		mov     rdi, qword [rbp-1136]
		mov     rsi, qword [rbp-1144]
		call    __stringAdd
		mov     qword [rbp-1152], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1160], rax
		mov     rdi, qword [rbp-1152]
		mov     rsi, qword [rbp-1160]
		call    __stringAdd
		mov     qword [rbp-1168], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1176], rax
		mov     rdi, qword [rbp-1168]
		mov     rsi, qword [rbp-1176]
		call    __stringAdd
		mov     qword [rbp-1184], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1192], rax
		mov     rdi, qword [rbp-1184]
		mov     rsi, qword [rbp-1192]
		call    __stringAdd
		mov     qword [rbp-1200], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1208], rax
		mov     rdi, qword [rbp-1200]
		mov     rsi, qword [rbp-1208]
		call    __stringAdd
		mov     qword [rbp-1216], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1224], rax
		mov     rdi, qword [rbp-1216]
		mov     rsi, qword [rbp-1224]
		call    __stringAdd
		mov     qword [rbp-1232], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1240], rax
		mov     rdi, qword [rbp-1232]
		mov     rsi, qword [rbp-1240]
		call    __stringAdd
		mov     qword [rbp-1248], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1256], rax
		mov     rdi, qword [rbp-1248]
		mov     rsi, qword [rbp-1256]
		call    __stringAdd
		mov     qword [rbp-1264], rax
		mov     rdi, qword [rbp-1264]
		call    _print
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1272], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1280], rax
		mov     rdi, qword [rbp-1272]
		mov     rsi, qword [rbp-1280]
		call    __stringAdd
		mov     qword [rbp-1288], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1296], rax
		mov     rdi, qword [rbp-1288]
		mov     rsi, qword [rbp-1296]
		call    __stringAdd
		mov     qword [rbp-1304], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1312], rax
		mov     rdi, qword [rbp-1304]
		mov     rsi, qword [rbp-1312]
		call    __stringAdd
		mov     qword [rbp-1320], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1328], rax
		mov     rdi, qword [rbp-1320]
		mov     rsi, qword [rbp-1328]
		call    __stringAdd
		mov     qword [rbp-1336], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1344], rax
		mov     rdi, qword [rbp-1336]
		mov     rsi, qword [rbp-1344]
		call    __stringAdd
		mov     qword [rbp-1352], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1360], rax
		mov     rdi, qword [rbp-1352]
		mov     rsi, qword [rbp-1360]
		call    __stringAdd
		mov     qword [rbp-1368], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1376], rax
		mov     rdi, qword [rbp-1368]
		mov     rsi, qword [rbp-1376]
		call    __stringAdd
		mov     qword [rbp-1384], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1392], rax
		mov     rdi, qword [rbp-1384]
		mov     rsi, qword [rbp-1392]
		call    __stringAdd
		mov     qword [rbp-1400], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1408], rax
		mov     rdi, qword [rbp-1400]
		mov     rsi, qword [rbp-1408]
		call    __stringAdd
		mov     qword [rbp-1416], rax
		mov     rdi, qword [rbp-1416]
		call    _print
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-1424], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1432], rax
		mov     rdi, qword [rbp-1424]
		mov     rsi, qword [rbp-1432]
		call    __stringAdd
		mov     qword [rbp-1440], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1448], rax
		mov     rdi, qword [rbp-1440]
		mov     rsi, qword [rbp-1448]
		call    __stringAdd
		mov     qword [rbp-1456], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1464], rax
		mov     rdi, qword [rbp-1456]
		mov     rsi, qword [rbp-1464]
		call    __stringAdd
		mov     qword [rbp-1472], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1480], rax
		mov     rdi, qword [rbp-1472]
		mov     rsi, qword [rbp-1480]
		call    __stringAdd
		mov     qword [rbp-1488], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1496], rax
		mov     rdi, qword [rbp-1488]
		mov     rsi, qword [rbp-1496]
		call    __stringAdd
		mov     qword [rbp-1504], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1512], rax
		mov     rdi, qword [rbp-1504]
		mov     rsi, qword [rbp-1512]
		call    __stringAdd
		mov     qword [rbp-1520], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1528], rax
		mov     rdi, qword [rbp-1520]
		mov     rsi, qword [rbp-1528]
		call    __stringAdd
		mov     qword [rbp-1536], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1544], rax
		mov     rdi, qword [rbp-1536]
		mov     rsi, qword [rbp-1544]
		call    __stringAdd
		mov     qword [rbp-1552], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-1560], rax
		mov     rdi, qword [rbp-1552]
		mov     rsi, qword [rbp-1560]
		call    __stringAdd
		mov     qword [rbp-1568], rax
		mov     rdi, qword [rbp-1568]
		call    _print
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

str_0:
		dq      20
		db      22H, 0AH, 62H, 64H, 61H, 5CH, 22H, 0AH, 64H, 62H, 64H, 5CH, 63H, 22H, 5CH, 22H, 63H, 5CH, 63H, 22H, 00H

str_1:
		dq      20
		db      5CH, 61H, 62H, 0AH, 61H, 63H, 22H, 22H, 61H, 64H, 64H, 0AH, 22H, 0AH, 61H, 63H, 0AH, 64H, 62H, 22H, 00H

str_2:
		dq      20
		db      0AH, 61H, 62H, 62H, 64H, 62H, 64H, 64H, 5CH, 5CH, 22H, 64H, 22H, 63H, 5CH, 61H, 64H, 63H, 22H, 63H, 00H

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
        mov     rdx, qword [rbp-18H]
        mov     rax, qword [rbp-10H]
        add     rdx, rax
        mov     rax, qword [rbp-8H]
        mov     qword [rax], rdx
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


