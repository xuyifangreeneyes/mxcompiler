default rel

global main
global _A
global _B
global _C
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
		mov     rax, 1
		mov     qword [rel _A], rax
		mov     rax, 1
		mov     qword [rel _B], rax
		mov     rax, 1
		mov     qword [rel _C], rax
		mov     rsp, rbp
		pop     rbp
		ret     

_main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 12256
		jmp     L1
L1:
		mov     rax, qword [rel _C]
		mov     qword [rbp-8], rax
		mov     rax, 1
		mov     rcx, 29
		shl     rax, cl
		mov     qword [rbp-16], rax
		mov     rax, qword [rbp-8]
		cmp     rax, qword [rbp-16]
		setl    al
		movzx   rax, al
		mov     qword [rbp-24], rax
		mov     rax, qword [rbp-24]
		cmp     rax, 0
		jne     L2
		jmp     L4
L2:
		mov     rax, qword [rel _C]
		mov     qword [rbp-32], rax
		mov     rax, 1
		mov     rcx, 29
		shl     rax, cl
		mov     qword [rbp-40], rax
		mov     rax, qword [rbp-40]
		neg     rax
		mov     qword [rbp-48], rax
		mov     rax, qword [rbp-32]
		cmp     rax, qword [rbp-48]
		setg    al
		movzx   rax, al
		mov     qword [rbp-56], rax
		mov     rax, qword [rbp-56]
		cmp     rax, 0
		jne     L3
		jmp     L4
L3:
		mov     rax, qword [rel _C]
		mov     qword [rbp-64], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-72], rax
		mov     rax, qword [rbp-64]
		sub     rax, qword [rbp-72]
		mov     qword [rbp-80], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-88], rax
		mov     rax, qword [rbp-80]
		add     rax, qword [rbp-88]
		mov     qword [rbp-96], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-104], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-112], rax
		mov     rax, qword [rbp-104]
		add     rax, qword [rbp-112]
		mov     qword [rbp-120], rax
		mov     rax, qword [rbp-96]
		sub     rax, qword [rbp-120]
		mov     qword [rbp-128], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-136], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-144], rax
		mov     rax, qword [rbp-136]
		sub     rax, qword [rbp-144]
		mov     qword [rbp-152], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-160], rax
		mov     rax, qword [rbp-152]
		add     rax, qword [rbp-160]
		mov     qword [rbp-168], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-176], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-184], rax
		mov     rax, qword [rbp-176]
		add     rax, qword [rbp-184]
		mov     qword [rbp-192], rax
		mov     rax, qword [rbp-168]
		sub     rax, qword [rbp-192]
		mov     qword [rbp-200], rax
		mov     rax, qword [rbp-128]
		add     rax, qword [rbp-200]
		mov     qword [rbp-208], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-216], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-224], rax
		mov     rax, qword [rbp-216]
		sub     rax, qword [rbp-224]
		mov     qword [rbp-232], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-240], rax
		mov     rax, qword [rbp-232]
		add     rax, qword [rbp-240]
		mov     qword [rbp-248], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-256], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-264], rax
		mov     rax, qword [rbp-256]
		add     rax, qword [rbp-264]
		mov     qword [rbp-272], rax
		mov     rax, qword [rbp-248]
		sub     rax, qword [rbp-272]
		mov     qword [rbp-280], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-288], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-296], rax
		mov     rax, qword [rbp-288]
		sub     rax, qword [rbp-296]
		mov     qword [rbp-304], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-312], rax
		mov     rax, qword [rbp-304]
		add     rax, qword [rbp-312]
		mov     qword [rbp-320], rax
		mov     rax, qword [rbp-280]
		add     rax, qword [rbp-320]
		mov     qword [rbp-328], rax
		mov     rax, qword [rbp-208]
		add     rax, qword [rbp-328]
		mov     qword [rbp-336], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-344], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-352], rax
		mov     rax, qword [rbp-344]
		add     rax, qword [rbp-352]
		mov     qword [rbp-360], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-368], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-376], rax
		mov     rax, qword [rbp-368]
		sub     rax, qword [rbp-376]
		mov     qword [rbp-384], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-392], rax
		mov     rax, qword [rbp-384]
		add     rax, qword [rbp-392]
		mov     qword [rbp-400], rax
		mov     rax, qword [rbp-360]
		add     rax, qword [rbp-400]
		mov     qword [rbp-408], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-416], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-424], rax
		mov     rax, qword [rbp-416]
		add     rax, qword [rbp-424]
		mov     qword [rbp-432], rax
		mov     rax, qword [rbp-408]
		sub     rax, qword [rbp-432]
		mov     qword [rbp-440], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-448], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-456], rax
		mov     rax, qword [rbp-448]
		sub     rax, qword [rbp-456]
		mov     qword [rbp-464], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-472], rax
		mov     rax, qword [rbp-464]
		add     rax, qword [rbp-472]
		mov     qword [rbp-480], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-488], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-496], rax
		mov     rax, qword [rbp-488]
		add     rax, qword [rbp-496]
		mov     qword [rbp-504], rax
		mov     rax, qword [rbp-480]
		sub     rax, qword [rbp-504]
		mov     qword [rbp-512], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-520], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-528], rax
		mov     rax, qword [rbp-520]
		sub     rax, qword [rbp-528]
		mov     qword [rbp-536], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-544], rax
		mov     rax, qword [rbp-536]
		add     rax, qword [rbp-544]
		mov     qword [rbp-552], rax
		mov     rax, qword [rbp-512]
		add     rax, qword [rbp-552]
		mov     qword [rbp-560], rax
		mov     rax, qword [rbp-440]
		add     rax, qword [rbp-560]
		mov     qword [rbp-568], rax
		mov     rax, qword [rbp-336]
		sub     rax, qword [rbp-568]
		mov     qword [rbp-576], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-584], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-592], rax
		mov     rax, qword [rbp-584]
		add     rax, qword [rbp-592]
		mov     qword [rbp-600], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-608], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-616], rax
		mov     rax, qword [rbp-608]
		sub     rax, qword [rbp-616]
		mov     qword [rbp-624], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-632], rax
		mov     rax, qword [rbp-624]
		add     rax, qword [rbp-632]
		mov     qword [rbp-640], rax
		mov     rax, qword [rbp-600]
		add     rax, qword [rbp-640]
		mov     qword [rbp-648], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-656], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-664], rax
		mov     rax, qword [rbp-656]
		add     rax, qword [rbp-664]
		mov     qword [rbp-672], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-680], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-688], rax
		mov     rax, qword [rbp-680]
		sub     rax, qword [rbp-688]
		mov     qword [rbp-696], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-704], rax
		mov     rax, qword [rbp-696]
		add     rax, qword [rbp-704]
		mov     qword [rbp-712], rax
		mov     rax, qword [rbp-672]
		add     rax, qword [rbp-712]
		mov     qword [rbp-720], rax
		mov     rax, qword [rbp-648]
		sub     rax, qword [rbp-720]
		mov     qword [rbp-728], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-736], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-744], rax
		mov     rax, qword [rbp-736]
		add     rax, qword [rbp-744]
		mov     qword [rbp-752], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-760], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-768], rax
		mov     rax, qword [rbp-760]
		sub     rax, qword [rbp-768]
		mov     qword [rbp-776], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-784], rax
		mov     rax, qword [rbp-776]
		add     rax, qword [rbp-784]
		mov     qword [rbp-792], rax
		mov     rax, qword [rbp-752]
		add     rax, qword [rbp-792]
		mov     qword [rbp-800], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-808], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-816], rax
		mov     rax, qword [rbp-808]
		add     rax, qword [rbp-816]
		mov     qword [rbp-824], rax
		mov     rax, qword [rbp-800]
		sub     rax, qword [rbp-824]
		mov     qword [rbp-832], rax
		mov     rax, qword [rbp-728]
		sub     rax, qword [rbp-832]
		mov     qword [rbp-840], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-848], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-856], rax
		mov     rax, qword [rbp-848]
		sub     rax, qword [rbp-856]
		mov     qword [rbp-864], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-872], rax
		mov     rax, qword [rbp-864]
		add     rax, qword [rbp-872]
		mov     qword [rbp-880], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-888], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-896], rax
		mov     rax, qword [rbp-888]
		add     rax, qword [rbp-896]
		mov     qword [rbp-904], rax
		mov     rax, qword [rbp-880]
		sub     rax, qword [rbp-904]
		mov     qword [rbp-912], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-920], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-928], rax
		mov     rax, qword [rbp-920]
		sub     rax, qword [rbp-928]
		mov     qword [rbp-936], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-944], rax
		mov     rax, qword [rbp-936]
		add     rax, qword [rbp-944]
		mov     qword [rbp-952], rax
		mov     rax, qword [rbp-912]
		add     rax, qword [rbp-952]
		mov     qword [rbp-960], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-968], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-976], rax
		mov     rax, qword [rbp-968]
		add     rax, qword [rbp-976]
		mov     qword [rbp-984], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-992], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1000], rax
		mov     rax, qword [rbp-992]
		sub     rax, qword [rbp-1000]
		mov     qword [rbp-1008], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1016], rax
		mov     rax, qword [rbp-1008]
		add     rax, qword [rbp-1016]
		mov     qword [rbp-1024], rax
		mov     rax, qword [rbp-984]
		add     rax, qword [rbp-1024]
		mov     qword [rbp-1032], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1040], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1048], rax
		mov     rax, qword [rbp-1040]
		add     rax, qword [rbp-1048]
		mov     qword [rbp-1056], rax
		mov     rax, qword [rbp-1032]
		sub     rax, qword [rbp-1056]
		mov     qword [rbp-1064], rax
		mov     rax, qword [rbp-960]
		sub     rax, qword [rbp-1064]
		mov     qword [rbp-1072], rax
		mov     rax, qword [rbp-840]
		add     rax, qword [rbp-1072]
		mov     qword [rbp-1080], rax
		mov     rax, qword [rbp-576]
		sub     rax, qword [rbp-1080]
		mov     qword [rbp-1088], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-1096], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1104], rax
		mov     rax, qword [rbp-1096]
		sub     rax, qword [rbp-1104]
		mov     qword [rbp-1112], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1120], rax
		mov     rax, qword [rbp-1112]
		add     rax, qword [rbp-1120]
		mov     qword [rbp-1128], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1136], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1144], rax
		mov     rax, qword [rbp-1136]
		add     rax, qword [rbp-1144]
		mov     qword [rbp-1152], rax
		mov     rax, qword [rbp-1128]
		sub     rax, qword [rbp-1152]
		mov     qword [rbp-1160], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-1168], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1176], rax
		mov     rax, qword [rbp-1168]
		sub     rax, qword [rbp-1176]
		mov     qword [rbp-1184], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1192], rax
		mov     rax, qword [rbp-1184]
		add     rax, qword [rbp-1192]
		mov     qword [rbp-1200], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1208], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1216], rax
		mov     rax, qword [rbp-1208]
		add     rax, qword [rbp-1216]
		mov     qword [rbp-1224], rax
		mov     rax, qword [rbp-1200]
		sub     rax, qword [rbp-1224]
		mov     qword [rbp-1232], rax
		mov     rax, qword [rbp-1160]
		add     rax, qword [rbp-1232]
		mov     qword [rbp-1240], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-1248], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1256], rax
		mov     rax, qword [rbp-1248]
		sub     rax, qword [rbp-1256]
		mov     qword [rbp-1264], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1272], rax
		mov     rax, qword [rbp-1264]
		add     rax, qword [rbp-1272]
		mov     qword [rbp-1280], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1288], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1296], rax
		mov     rax, qword [rbp-1288]
		add     rax, qword [rbp-1296]
		mov     qword [rbp-1304], rax
		mov     rax, qword [rbp-1280]
		sub     rax, qword [rbp-1304]
		mov     qword [rbp-1312], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-1320], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1328], rax
		mov     rax, qword [rbp-1320]
		sub     rax, qword [rbp-1328]
		mov     qword [rbp-1336], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1344], rax
		mov     rax, qword [rbp-1336]
		add     rax, qword [rbp-1344]
		mov     qword [rbp-1352], rax
		mov     rax, qword [rbp-1312]
		add     rax, qword [rbp-1352]
		mov     qword [rbp-1360], rax
		mov     rax, qword [rbp-1240]
		add     rax, qword [rbp-1360]
		mov     qword [rbp-1368], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1376], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1384], rax
		mov     rax, qword [rbp-1376]
		add     rax, qword [rbp-1384]
		mov     qword [rbp-1392], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-1400], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1408], rax
		mov     rax, qword [rbp-1400]
		sub     rax, qword [rbp-1408]
		mov     qword [rbp-1416], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1424], rax
		mov     rax, qword [rbp-1416]
		add     rax, qword [rbp-1424]
		mov     qword [rbp-1432], rax
		mov     rax, qword [rbp-1392]
		add     rax, qword [rbp-1432]
		mov     qword [rbp-1440], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1448], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1456], rax
		mov     rax, qword [rbp-1448]
		add     rax, qword [rbp-1456]
		mov     qword [rbp-1464], rax
		mov     rax, qword [rbp-1440]
		sub     rax, qword [rbp-1464]
		mov     qword [rbp-1472], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-1480], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1488], rax
		mov     rax, qword [rbp-1480]
		sub     rax, qword [rbp-1488]
		mov     qword [rbp-1496], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1504], rax
		mov     rax, qword [rbp-1496]
		add     rax, qword [rbp-1504]
		mov     qword [rbp-1512], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1520], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1528], rax
		mov     rax, qword [rbp-1520]
		add     rax, qword [rbp-1528]
		mov     qword [rbp-1536], rax
		mov     rax, qword [rbp-1512]
		sub     rax, qword [rbp-1536]
		mov     qword [rbp-1544], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-1552], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1560], rax
		mov     rax, qword [rbp-1552]
		sub     rax, qword [rbp-1560]
		mov     qword [rbp-1568], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1576], rax
		mov     rax, qword [rbp-1568]
		add     rax, qword [rbp-1576]
		mov     qword [rbp-1584], rax
		mov     rax, qword [rbp-1544]
		add     rax, qword [rbp-1584]
		mov     qword [rbp-1592], rax
		mov     rax, qword [rbp-1472]
		add     rax, qword [rbp-1592]
		mov     qword [rbp-1600], rax
		mov     rax, qword [rbp-1368]
		sub     rax, qword [rbp-1600]
		mov     qword [rbp-1608], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1616], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1624], rax
		mov     rax, qword [rbp-1616]
		add     rax, qword [rbp-1624]
		mov     qword [rbp-1632], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-1640], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1648], rax
		mov     rax, qword [rbp-1640]
		sub     rax, qword [rbp-1648]
		mov     qword [rbp-1656], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1664], rax
		mov     rax, qword [rbp-1656]
		add     rax, qword [rbp-1664]
		mov     qword [rbp-1672], rax
		mov     rax, qword [rbp-1632]
		add     rax, qword [rbp-1672]
		mov     qword [rbp-1680], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1688], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1696], rax
		mov     rax, qword [rbp-1688]
		add     rax, qword [rbp-1696]
		mov     qword [rbp-1704], rax
		mov     rax, qword [rbp-1680]
		sub     rax, qword [rbp-1704]
		mov     qword [rbp-1712], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-1720], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1728], rax
		mov     rax, qword [rbp-1720]
		sub     rax, qword [rbp-1728]
		mov     qword [rbp-1736], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1744], rax
		mov     rax, qword [rbp-1736]
		add     rax, qword [rbp-1744]
		mov     qword [rbp-1752], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1760], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1768], rax
		mov     rax, qword [rbp-1760]
		add     rax, qword [rbp-1768]
		mov     qword [rbp-1776], rax
		mov     rax, qword [rbp-1752]
		sub     rax, qword [rbp-1776]
		mov     qword [rbp-1784], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-1792], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1800], rax
		mov     rax, qword [rbp-1792]
		sub     rax, qword [rbp-1800]
		mov     qword [rbp-1808], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1816], rax
		mov     rax, qword [rbp-1808]
		add     rax, qword [rbp-1816]
		mov     qword [rbp-1824], rax
		mov     rax, qword [rbp-1784]
		add     rax, qword [rbp-1824]
		mov     qword [rbp-1832], rax
		mov     rax, qword [rbp-1712]
		add     rax, qword [rbp-1832]
		mov     qword [rbp-1840], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1848], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1856], rax
		mov     rax, qword [rbp-1848]
		add     rax, qword [rbp-1856]
		mov     qword [rbp-1864], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-1872], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1880], rax
		mov     rax, qword [rbp-1872]
		sub     rax, qword [rbp-1880]
		mov     qword [rbp-1888], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1896], rax
		mov     rax, qword [rbp-1888]
		add     rax, qword [rbp-1896]
		mov     qword [rbp-1904], rax
		mov     rax, qword [rbp-1864]
		add     rax, qword [rbp-1904]
		mov     qword [rbp-1912], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1920], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1928], rax
		mov     rax, qword [rbp-1920]
		add     rax, qword [rbp-1928]
		mov     qword [rbp-1936], rax
		mov     rax, qword [rbp-1912]
		sub     rax, qword [rbp-1936]
		mov     qword [rbp-1944], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-1952], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1960], rax
		mov     rax, qword [rbp-1952]
		sub     rax, qword [rbp-1960]
		mov     qword [rbp-1968], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-1976], rax
		mov     rax, qword [rbp-1968]
		add     rax, qword [rbp-1976]
		mov     qword [rbp-1984], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-1992], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2000], rax
		mov     rax, qword [rbp-1992]
		add     rax, qword [rbp-2000]
		mov     qword [rbp-2008], rax
		mov     rax, qword [rbp-1984]
		sub     rax, qword [rbp-2008]
		mov     qword [rbp-2016], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2024], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2032], rax
		mov     rax, qword [rbp-2024]
		sub     rax, qword [rbp-2032]
		mov     qword [rbp-2040], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2048], rax
		mov     rax, qword [rbp-2040]
		add     rax, qword [rbp-2048]
		mov     qword [rbp-2056], rax
		mov     rax, qword [rbp-2016]
		add     rax, qword [rbp-2056]
		mov     qword [rbp-2064], rax
		mov     rax, qword [rbp-1944]
		add     rax, qword [rbp-2064]
		mov     qword [rbp-2072], rax
		mov     rax, qword [rbp-1840]
		sub     rax, qword [rbp-2072]
		mov     qword [rbp-2080], rax
		mov     rax, qword [rbp-1608]
		sub     rax, qword [rbp-2080]
		mov     qword [rbp-2088], rax
		mov     rax, qword [rbp-1088]
		add     rax, qword [rbp-2088]
		mov     qword [rbp-2096], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2104], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2112], rax
		mov     rax, qword [rbp-2104]
		add     rax, qword [rbp-2112]
		mov     qword [rbp-2120], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2128], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2136], rax
		mov     rax, qword [rbp-2128]
		sub     rax, qword [rbp-2136]
		mov     qword [rbp-2144], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2152], rax
		mov     rax, qword [rbp-2144]
		add     rax, qword [rbp-2152]
		mov     qword [rbp-2160], rax
		mov     rax, qword [rbp-2120]
		add     rax, qword [rbp-2160]
		mov     qword [rbp-2168], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2176], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2184], rax
		mov     rax, qword [rbp-2176]
		add     rax, qword [rbp-2184]
		mov     qword [rbp-2192], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2200], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2208], rax
		mov     rax, qword [rbp-2200]
		sub     rax, qword [rbp-2208]
		mov     qword [rbp-2216], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2224], rax
		mov     rax, qword [rbp-2216]
		add     rax, qword [rbp-2224]
		mov     qword [rbp-2232], rax
		mov     rax, qword [rbp-2192]
		add     rax, qword [rbp-2232]
		mov     qword [rbp-2240], rax
		mov     rax, qword [rbp-2168]
		sub     rax, qword [rbp-2240]
		mov     qword [rbp-2248], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2256], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2264], rax
		mov     rax, qword [rbp-2256]
		add     rax, qword [rbp-2264]
		mov     qword [rbp-2272], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2280], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2288], rax
		mov     rax, qword [rbp-2280]
		sub     rax, qword [rbp-2288]
		mov     qword [rbp-2296], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2304], rax
		mov     rax, qword [rbp-2296]
		add     rax, qword [rbp-2304]
		mov     qword [rbp-2312], rax
		mov     rax, qword [rbp-2272]
		add     rax, qword [rbp-2312]
		mov     qword [rbp-2320], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2328], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2336], rax
		mov     rax, qword [rbp-2328]
		add     rax, qword [rbp-2336]
		mov     qword [rbp-2344], rax
		mov     rax, qword [rbp-2320]
		sub     rax, qword [rbp-2344]
		mov     qword [rbp-2352], rax
		mov     rax, qword [rbp-2248]
		sub     rax, qword [rbp-2352]
		mov     qword [rbp-2360], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2368], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2376], rax
		mov     rax, qword [rbp-2368]
		sub     rax, qword [rbp-2376]
		mov     qword [rbp-2384], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2392], rax
		mov     rax, qword [rbp-2384]
		add     rax, qword [rbp-2392]
		mov     qword [rbp-2400], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2408], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2416], rax
		mov     rax, qword [rbp-2408]
		add     rax, qword [rbp-2416]
		mov     qword [rbp-2424], rax
		mov     rax, qword [rbp-2400]
		sub     rax, qword [rbp-2424]
		mov     qword [rbp-2432], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2440], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2448], rax
		mov     rax, qword [rbp-2440]
		sub     rax, qword [rbp-2448]
		mov     qword [rbp-2456], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2464], rax
		mov     rax, qword [rbp-2456]
		add     rax, qword [rbp-2464]
		mov     qword [rbp-2472], rax
		mov     rax, qword [rbp-2432]
		add     rax, qword [rbp-2472]
		mov     qword [rbp-2480], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2488], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2496], rax
		mov     rax, qword [rbp-2488]
		add     rax, qword [rbp-2496]
		mov     qword [rbp-2504], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2512], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2520], rax
		mov     rax, qword [rbp-2512]
		sub     rax, qword [rbp-2520]
		mov     qword [rbp-2528], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2536], rax
		mov     rax, qword [rbp-2528]
		add     rax, qword [rbp-2536]
		mov     qword [rbp-2544], rax
		mov     rax, qword [rbp-2504]
		add     rax, qword [rbp-2544]
		mov     qword [rbp-2552], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2560], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2568], rax
		mov     rax, qword [rbp-2560]
		add     rax, qword [rbp-2568]
		mov     qword [rbp-2576], rax
		mov     rax, qword [rbp-2552]
		sub     rax, qword [rbp-2576]
		mov     qword [rbp-2584], rax
		mov     rax, qword [rbp-2480]
		sub     rax, qword [rbp-2584]
		mov     qword [rbp-2592], rax
		mov     rax, qword [rbp-2360]
		add     rax, qword [rbp-2592]
		mov     qword [rbp-2600], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2608], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2616], rax
		mov     rax, qword [rbp-2608]
		sub     rax, qword [rbp-2616]
		mov     qword [rbp-2624], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2632], rax
		mov     rax, qword [rbp-2624]
		add     rax, qword [rbp-2632]
		mov     qword [rbp-2640], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2648], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2656], rax
		mov     rax, qword [rbp-2648]
		add     rax, qword [rbp-2656]
		mov     qword [rbp-2664], rax
		mov     rax, qword [rbp-2640]
		sub     rax, qword [rbp-2664]
		mov     qword [rbp-2672], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2680], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2688], rax
		mov     rax, qword [rbp-2680]
		sub     rax, qword [rbp-2688]
		mov     qword [rbp-2696], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2704], rax
		mov     rax, qword [rbp-2696]
		add     rax, qword [rbp-2704]
		mov     qword [rbp-2712], rax
		mov     rax, qword [rbp-2672]
		add     rax, qword [rbp-2712]
		mov     qword [rbp-2720], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2728], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2736], rax
		mov     rax, qword [rbp-2728]
		add     rax, qword [rbp-2736]
		mov     qword [rbp-2744], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2752], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2760], rax
		mov     rax, qword [rbp-2752]
		sub     rax, qword [rbp-2760]
		mov     qword [rbp-2768], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2776], rax
		mov     rax, qword [rbp-2768]
		add     rax, qword [rbp-2776]
		mov     qword [rbp-2784], rax
		mov     rax, qword [rbp-2744]
		add     rax, qword [rbp-2784]
		mov     qword [rbp-2792], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2800], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2808], rax
		mov     rax, qword [rbp-2800]
		add     rax, qword [rbp-2808]
		mov     qword [rbp-2816], rax
		mov     rax, qword [rbp-2792]
		sub     rax, qword [rbp-2816]
		mov     qword [rbp-2824], rax
		mov     rax, qword [rbp-2720]
		sub     rax, qword [rbp-2824]
		mov     qword [rbp-2832], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2840], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2848], rax
		mov     rax, qword [rbp-2840]
		sub     rax, qword [rbp-2848]
		mov     qword [rbp-2856], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2864], rax
		mov     rax, qword [rbp-2856]
		add     rax, qword [rbp-2864]
		mov     qword [rbp-2872], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2880], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2888], rax
		mov     rax, qword [rbp-2880]
		add     rax, qword [rbp-2888]
		mov     qword [rbp-2896], rax
		mov     rax, qword [rbp-2872]
		sub     rax, qword [rbp-2896]
		mov     qword [rbp-2904], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2912], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2920], rax
		mov     rax, qword [rbp-2912]
		sub     rax, qword [rbp-2920]
		mov     qword [rbp-2928], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2936], rax
		mov     rax, qword [rbp-2928]
		add     rax, qword [rbp-2936]
		mov     qword [rbp-2944], rax
		mov     rax, qword [rbp-2904]
		add     rax, qword [rbp-2944]
		mov     qword [rbp-2952], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2960], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-2968], rax
		mov     rax, qword [rbp-2960]
		add     rax, qword [rbp-2968]
		mov     qword [rbp-2976], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-2984], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-2992], rax
		mov     rax, qword [rbp-2984]
		sub     rax, qword [rbp-2992]
		mov     qword [rbp-3000], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3008], rax
		mov     rax, qword [rbp-3000]
		add     rax, qword [rbp-3008]
		mov     qword [rbp-3016], rax
		mov     rax, qword [rbp-2976]
		add     rax, qword [rbp-3016]
		mov     qword [rbp-3024], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3032], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3040], rax
		mov     rax, qword [rbp-3032]
		add     rax, qword [rbp-3040]
		mov     qword [rbp-3048], rax
		mov     rax, qword [rbp-3024]
		sub     rax, qword [rbp-3048]
		mov     qword [rbp-3056], rax
		mov     rax, qword [rbp-2952]
		sub     rax, qword [rbp-3056]
		mov     qword [rbp-3064], rax
		mov     rax, qword [rbp-2832]
		add     rax, qword [rbp-3064]
		mov     qword [rbp-3072], rax
		mov     rax, qword [rbp-2600]
		add     rax, qword [rbp-3072]
		mov     qword [rbp-3080], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-3088], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3096], rax
		mov     rax, qword [rbp-3088]
		sub     rax, qword [rbp-3096]
		mov     qword [rbp-3104], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3112], rax
		mov     rax, qword [rbp-3104]
		add     rax, qword [rbp-3112]
		mov     qword [rbp-3120], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3128], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3136], rax
		mov     rax, qword [rbp-3128]
		add     rax, qword [rbp-3136]
		mov     qword [rbp-3144], rax
		mov     rax, qword [rbp-3120]
		sub     rax, qword [rbp-3144]
		mov     qword [rbp-3152], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-3160], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3168], rax
		mov     rax, qword [rbp-3160]
		sub     rax, qword [rbp-3168]
		mov     qword [rbp-3176], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3184], rax
		mov     rax, qword [rbp-3176]
		add     rax, qword [rbp-3184]
		mov     qword [rbp-3192], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3200], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3208], rax
		mov     rax, qword [rbp-3200]
		add     rax, qword [rbp-3208]
		mov     qword [rbp-3216], rax
		mov     rax, qword [rbp-3192]
		sub     rax, qword [rbp-3216]
		mov     qword [rbp-3224], rax
		mov     rax, qword [rbp-3152]
		add     rax, qword [rbp-3224]
		mov     qword [rbp-3232], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-3240], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3248], rax
		mov     rax, qword [rbp-3240]
		sub     rax, qword [rbp-3248]
		mov     qword [rbp-3256], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3264], rax
		mov     rax, qword [rbp-3256]
		add     rax, qword [rbp-3264]
		mov     qword [rbp-3272], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3280], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3288], rax
		mov     rax, qword [rbp-3280]
		add     rax, qword [rbp-3288]
		mov     qword [rbp-3296], rax
		mov     rax, qword [rbp-3272]
		sub     rax, qword [rbp-3296]
		mov     qword [rbp-3304], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-3312], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3320], rax
		mov     rax, qword [rbp-3312]
		sub     rax, qword [rbp-3320]
		mov     qword [rbp-3328], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3336], rax
		mov     rax, qword [rbp-3328]
		add     rax, qword [rbp-3336]
		mov     qword [rbp-3344], rax
		mov     rax, qword [rbp-3304]
		add     rax, qword [rbp-3344]
		mov     qword [rbp-3352], rax
		mov     rax, qword [rbp-3232]
		add     rax, qword [rbp-3352]
		mov     qword [rbp-3360], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3368], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3376], rax
		mov     rax, qword [rbp-3368]
		add     rax, qword [rbp-3376]
		mov     qword [rbp-3384], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-3392], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3400], rax
		mov     rax, qword [rbp-3392]
		sub     rax, qword [rbp-3400]
		mov     qword [rbp-3408], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3416], rax
		mov     rax, qword [rbp-3408]
		add     rax, qword [rbp-3416]
		mov     qword [rbp-3424], rax
		mov     rax, qword [rbp-3384]
		add     rax, qword [rbp-3424]
		mov     qword [rbp-3432], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3440], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3448], rax
		mov     rax, qword [rbp-3440]
		add     rax, qword [rbp-3448]
		mov     qword [rbp-3456], rax
		mov     rax, qword [rbp-3432]
		sub     rax, qword [rbp-3456]
		mov     qword [rbp-3464], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-3472], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3480], rax
		mov     rax, qword [rbp-3472]
		sub     rax, qword [rbp-3480]
		mov     qword [rbp-3488], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3496], rax
		mov     rax, qword [rbp-3488]
		add     rax, qword [rbp-3496]
		mov     qword [rbp-3504], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3512], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3520], rax
		mov     rax, qword [rbp-3512]
		add     rax, qword [rbp-3520]
		mov     qword [rbp-3528], rax
		mov     rax, qword [rbp-3504]
		sub     rax, qword [rbp-3528]
		mov     qword [rbp-3536], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-3544], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3552], rax
		mov     rax, qword [rbp-3544]
		sub     rax, qword [rbp-3552]
		mov     qword [rbp-3560], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3568], rax
		mov     rax, qword [rbp-3560]
		add     rax, qword [rbp-3568]
		mov     qword [rbp-3576], rax
		mov     rax, qword [rbp-3536]
		add     rax, qword [rbp-3576]
		mov     qword [rbp-3584], rax
		mov     rax, qword [rbp-3464]
		add     rax, qword [rbp-3584]
		mov     qword [rbp-3592], rax
		mov     rax, qword [rbp-3360]
		sub     rax, qword [rbp-3592]
		mov     qword [rbp-3600], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3608], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3616], rax
		mov     rax, qword [rbp-3608]
		add     rax, qword [rbp-3616]
		mov     qword [rbp-3624], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-3632], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3640], rax
		mov     rax, qword [rbp-3632]
		sub     rax, qword [rbp-3640]
		mov     qword [rbp-3648], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3656], rax
		mov     rax, qword [rbp-3648]
		add     rax, qword [rbp-3656]
		mov     qword [rbp-3664], rax
		mov     rax, qword [rbp-3624]
		add     rax, qword [rbp-3664]
		mov     qword [rbp-3672], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3680], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3688], rax
		mov     rax, qword [rbp-3680]
		add     rax, qword [rbp-3688]
		mov     qword [rbp-3696], rax
		mov     rax, qword [rbp-3672]
		sub     rax, qword [rbp-3696]
		mov     qword [rbp-3704], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-3712], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3720], rax
		mov     rax, qword [rbp-3712]
		sub     rax, qword [rbp-3720]
		mov     qword [rbp-3728], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3736], rax
		mov     rax, qword [rbp-3728]
		add     rax, qword [rbp-3736]
		mov     qword [rbp-3744], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3752], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3760], rax
		mov     rax, qword [rbp-3752]
		add     rax, qword [rbp-3760]
		mov     qword [rbp-3768], rax
		mov     rax, qword [rbp-3744]
		sub     rax, qword [rbp-3768]
		mov     qword [rbp-3776], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-3784], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3792], rax
		mov     rax, qword [rbp-3784]
		sub     rax, qword [rbp-3792]
		mov     qword [rbp-3800], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3808], rax
		mov     rax, qword [rbp-3800]
		add     rax, qword [rbp-3808]
		mov     qword [rbp-3816], rax
		mov     rax, qword [rbp-3776]
		add     rax, qword [rbp-3816]
		mov     qword [rbp-3824], rax
		mov     rax, qword [rbp-3704]
		add     rax, qword [rbp-3824]
		mov     qword [rbp-3832], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3840], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3848], rax
		mov     rax, qword [rbp-3840]
		add     rax, qword [rbp-3848]
		mov     qword [rbp-3856], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-3864], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3872], rax
		mov     rax, qword [rbp-3864]
		sub     rax, qword [rbp-3872]
		mov     qword [rbp-3880], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3888], rax
		mov     rax, qword [rbp-3880]
		add     rax, qword [rbp-3888]
		mov     qword [rbp-3896], rax
		mov     rax, qword [rbp-3856]
		add     rax, qword [rbp-3896]
		mov     qword [rbp-3904], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3912], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3920], rax
		mov     rax, qword [rbp-3912]
		add     rax, qword [rbp-3920]
		mov     qword [rbp-3928], rax
		mov     rax, qword [rbp-3904]
		sub     rax, qword [rbp-3928]
		mov     qword [rbp-3936], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-3944], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3952], rax
		mov     rax, qword [rbp-3944]
		sub     rax, qword [rbp-3952]
		mov     qword [rbp-3960], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3968], rax
		mov     rax, qword [rbp-3960]
		add     rax, qword [rbp-3968]
		mov     qword [rbp-3976], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-3984], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-3992], rax
		mov     rax, qword [rbp-3984]
		add     rax, qword [rbp-3992]
		mov     qword [rbp-4000], rax
		mov     rax, qword [rbp-3976]
		sub     rax, qword [rbp-4000]
		mov     qword [rbp-4008], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4016], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4024], rax
		mov     rax, qword [rbp-4016]
		sub     rax, qword [rbp-4024]
		mov     qword [rbp-4032], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4040], rax
		mov     rax, qword [rbp-4032]
		add     rax, qword [rbp-4040]
		mov     qword [rbp-4048], rax
		mov     rax, qword [rbp-4008]
		add     rax, qword [rbp-4048]
		mov     qword [rbp-4056], rax
		mov     rax, qword [rbp-3936]
		add     rax, qword [rbp-4056]
		mov     qword [rbp-4064], rax
		mov     rax, qword [rbp-3832]
		sub     rax, qword [rbp-4064]
		mov     qword [rbp-4072], rax
		mov     rax, qword [rbp-3600]
		sub     rax, qword [rbp-4072]
		mov     qword [rbp-4080], rax
		mov     rax, qword [rbp-3080]
		add     rax, qword [rbp-4080]
		mov     qword [rbp-4088], rax
		mov     rax, qword [rbp-2096]
		sub     rax, qword [rbp-4088]
		mov     qword [rbp-4096], rax
		mov     rax, qword [rbp-4096]
		mov     qword [rel _A], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4104], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4112], rax
		mov     rax, qword [rbp-4104]
		sub     rax, qword [rbp-4112]
		mov     qword [rbp-4120], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4128], rax
		mov     rax, qword [rbp-4120]
		add     rax, qword [rbp-4128]
		mov     qword [rbp-4136], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4144], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4152], rax
		mov     rax, qword [rbp-4144]
		add     rax, qword [rbp-4152]
		mov     qword [rbp-4160], rax
		mov     rax, qword [rbp-4136]
		sub     rax, qword [rbp-4160]
		mov     qword [rbp-4168], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4176], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4184], rax
		mov     rax, qword [rbp-4176]
		sub     rax, qword [rbp-4184]
		mov     qword [rbp-4192], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4200], rax
		mov     rax, qword [rbp-4192]
		add     rax, qword [rbp-4200]
		mov     qword [rbp-4208], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4216], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4224], rax
		mov     rax, qword [rbp-4216]
		add     rax, qword [rbp-4224]
		mov     qword [rbp-4232], rax
		mov     rax, qword [rbp-4208]
		sub     rax, qword [rbp-4232]
		mov     qword [rbp-4240], rax
		mov     rax, qword [rbp-4168]
		add     rax, qword [rbp-4240]
		mov     qword [rbp-4248], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4256], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4264], rax
		mov     rax, qword [rbp-4256]
		sub     rax, qword [rbp-4264]
		mov     qword [rbp-4272], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4280], rax
		mov     rax, qword [rbp-4272]
		add     rax, qword [rbp-4280]
		mov     qword [rbp-4288], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4296], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4304], rax
		mov     rax, qword [rbp-4296]
		add     rax, qword [rbp-4304]
		mov     qword [rbp-4312], rax
		mov     rax, qword [rbp-4288]
		sub     rax, qword [rbp-4312]
		mov     qword [rbp-4320], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4328], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4336], rax
		mov     rax, qword [rbp-4328]
		sub     rax, qword [rbp-4336]
		mov     qword [rbp-4344], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4352], rax
		mov     rax, qword [rbp-4344]
		add     rax, qword [rbp-4352]
		mov     qword [rbp-4360], rax
		mov     rax, qword [rbp-4320]
		add     rax, qword [rbp-4360]
		mov     qword [rbp-4368], rax
		mov     rax, qword [rbp-4248]
		add     rax, qword [rbp-4368]
		mov     qword [rbp-4376], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4384], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4392], rax
		mov     rax, qword [rbp-4384]
		add     rax, qword [rbp-4392]
		mov     qword [rbp-4400], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4408], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4416], rax
		mov     rax, qword [rbp-4408]
		sub     rax, qword [rbp-4416]
		mov     qword [rbp-4424], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4432], rax
		mov     rax, qword [rbp-4424]
		add     rax, qword [rbp-4432]
		mov     qword [rbp-4440], rax
		mov     rax, qword [rbp-4400]
		add     rax, qword [rbp-4440]
		mov     qword [rbp-4448], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4456], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4464], rax
		mov     rax, qword [rbp-4456]
		add     rax, qword [rbp-4464]
		mov     qword [rbp-4472], rax
		mov     rax, qword [rbp-4448]
		sub     rax, qword [rbp-4472]
		mov     qword [rbp-4480], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4488], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4496], rax
		mov     rax, qword [rbp-4488]
		sub     rax, qword [rbp-4496]
		mov     qword [rbp-4504], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4512], rax
		mov     rax, qword [rbp-4504]
		add     rax, qword [rbp-4512]
		mov     qword [rbp-4520], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4528], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4536], rax
		mov     rax, qword [rbp-4528]
		add     rax, qword [rbp-4536]
		mov     qword [rbp-4544], rax
		mov     rax, qword [rbp-4520]
		sub     rax, qword [rbp-4544]
		mov     qword [rbp-4552], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4560], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4568], rax
		mov     rax, qword [rbp-4560]
		sub     rax, qword [rbp-4568]
		mov     qword [rbp-4576], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4584], rax
		mov     rax, qword [rbp-4576]
		add     rax, qword [rbp-4584]
		mov     qword [rbp-4592], rax
		mov     rax, qword [rbp-4552]
		add     rax, qword [rbp-4592]
		mov     qword [rbp-4600], rax
		mov     rax, qword [rbp-4480]
		add     rax, qword [rbp-4600]
		mov     qword [rbp-4608], rax
		mov     rax, qword [rbp-4376]
		sub     rax, qword [rbp-4608]
		mov     qword [rbp-4616], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4624], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4632], rax
		mov     rax, qword [rbp-4624]
		add     rax, qword [rbp-4632]
		mov     qword [rbp-4640], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4648], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4656], rax
		mov     rax, qword [rbp-4648]
		sub     rax, qword [rbp-4656]
		mov     qword [rbp-4664], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4672], rax
		mov     rax, qword [rbp-4664]
		add     rax, qword [rbp-4672]
		mov     qword [rbp-4680], rax
		mov     rax, qword [rbp-4640]
		add     rax, qword [rbp-4680]
		mov     qword [rbp-4688], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4696], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4704], rax
		mov     rax, qword [rbp-4696]
		add     rax, qword [rbp-4704]
		mov     qword [rbp-4712], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4720], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4728], rax
		mov     rax, qword [rbp-4720]
		sub     rax, qword [rbp-4728]
		mov     qword [rbp-4736], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4744], rax
		mov     rax, qword [rbp-4736]
		add     rax, qword [rbp-4744]
		mov     qword [rbp-4752], rax
		mov     rax, qword [rbp-4712]
		add     rax, qword [rbp-4752]
		mov     qword [rbp-4760], rax
		mov     rax, qword [rbp-4688]
		sub     rax, qword [rbp-4760]
		mov     qword [rbp-4768], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4776], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4784], rax
		mov     rax, qword [rbp-4776]
		add     rax, qword [rbp-4784]
		mov     qword [rbp-4792], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4800], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4808], rax
		mov     rax, qword [rbp-4800]
		sub     rax, qword [rbp-4808]
		mov     qword [rbp-4816], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4824], rax
		mov     rax, qword [rbp-4816]
		add     rax, qword [rbp-4824]
		mov     qword [rbp-4832], rax
		mov     rax, qword [rbp-4792]
		add     rax, qword [rbp-4832]
		mov     qword [rbp-4840], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4848], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4856], rax
		mov     rax, qword [rbp-4848]
		add     rax, qword [rbp-4856]
		mov     qword [rbp-4864], rax
		mov     rax, qword [rbp-4840]
		sub     rax, qword [rbp-4864]
		mov     qword [rbp-4872], rax
		mov     rax, qword [rbp-4768]
		sub     rax, qword [rbp-4872]
		mov     qword [rbp-4880], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4888], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4896], rax
		mov     rax, qword [rbp-4888]
		sub     rax, qword [rbp-4896]
		mov     qword [rbp-4904], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4912], rax
		mov     rax, qword [rbp-4904]
		add     rax, qword [rbp-4912]
		mov     qword [rbp-4920], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4928], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4936], rax
		mov     rax, qword [rbp-4928]
		add     rax, qword [rbp-4936]
		mov     qword [rbp-4944], rax
		mov     rax, qword [rbp-4920]
		sub     rax, qword [rbp-4944]
		mov     qword [rbp-4952], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-4960], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-4968], rax
		mov     rax, qword [rbp-4960]
		sub     rax, qword [rbp-4968]
		mov     qword [rbp-4976], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-4984], rax
		mov     rax, qword [rbp-4976]
		add     rax, qword [rbp-4984]
		mov     qword [rbp-4992], rax
		mov     rax, qword [rbp-4952]
		add     rax, qword [rbp-4992]
		mov     qword [rbp-5000], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5008], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5016], rax
		mov     rax, qword [rbp-5008]
		add     rax, qword [rbp-5016]
		mov     qword [rbp-5024], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5032], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5040], rax
		mov     rax, qword [rbp-5032]
		sub     rax, qword [rbp-5040]
		mov     qword [rbp-5048], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5056], rax
		mov     rax, qword [rbp-5048]
		add     rax, qword [rbp-5056]
		mov     qword [rbp-5064], rax
		mov     rax, qword [rbp-5024]
		add     rax, qword [rbp-5064]
		mov     qword [rbp-5072], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5080], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5088], rax
		mov     rax, qword [rbp-5080]
		add     rax, qword [rbp-5088]
		mov     qword [rbp-5096], rax
		mov     rax, qword [rbp-5072]
		sub     rax, qword [rbp-5096]
		mov     qword [rbp-5104], rax
		mov     rax, qword [rbp-5000]
		sub     rax, qword [rbp-5104]
		mov     qword [rbp-5112], rax
		mov     rax, qword [rbp-4880]
		add     rax, qword [rbp-5112]
		mov     qword [rbp-5120], rax
		mov     rax, qword [rbp-4616]
		sub     rax, qword [rbp-5120]
		mov     qword [rbp-5128], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5136], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5144], rax
		mov     rax, qword [rbp-5136]
		sub     rax, qword [rbp-5144]
		mov     qword [rbp-5152], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5160], rax
		mov     rax, qword [rbp-5152]
		add     rax, qword [rbp-5160]
		mov     qword [rbp-5168], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5176], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5184], rax
		mov     rax, qword [rbp-5176]
		add     rax, qword [rbp-5184]
		mov     qword [rbp-5192], rax
		mov     rax, qword [rbp-5168]
		sub     rax, qword [rbp-5192]
		mov     qword [rbp-5200], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5208], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5216], rax
		mov     rax, qword [rbp-5208]
		sub     rax, qword [rbp-5216]
		mov     qword [rbp-5224], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5232], rax
		mov     rax, qword [rbp-5224]
		add     rax, qword [rbp-5232]
		mov     qword [rbp-5240], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5248], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5256], rax
		mov     rax, qword [rbp-5248]
		add     rax, qword [rbp-5256]
		mov     qword [rbp-5264], rax
		mov     rax, qword [rbp-5240]
		sub     rax, qword [rbp-5264]
		mov     qword [rbp-5272], rax
		mov     rax, qword [rbp-5200]
		add     rax, qword [rbp-5272]
		mov     qword [rbp-5280], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5288], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5296], rax
		mov     rax, qword [rbp-5288]
		sub     rax, qword [rbp-5296]
		mov     qword [rbp-5304], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5312], rax
		mov     rax, qword [rbp-5304]
		add     rax, qword [rbp-5312]
		mov     qword [rbp-5320], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5328], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5336], rax
		mov     rax, qword [rbp-5328]
		add     rax, qword [rbp-5336]
		mov     qword [rbp-5344], rax
		mov     rax, qword [rbp-5320]
		sub     rax, qword [rbp-5344]
		mov     qword [rbp-5352], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5360], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5368], rax
		mov     rax, qword [rbp-5360]
		sub     rax, qword [rbp-5368]
		mov     qword [rbp-5376], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5384], rax
		mov     rax, qword [rbp-5376]
		add     rax, qword [rbp-5384]
		mov     qword [rbp-5392], rax
		mov     rax, qword [rbp-5352]
		add     rax, qword [rbp-5392]
		mov     qword [rbp-5400], rax
		mov     rax, qword [rbp-5280]
		add     rax, qword [rbp-5400]
		mov     qword [rbp-5408], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5416], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5424], rax
		mov     rax, qword [rbp-5416]
		add     rax, qword [rbp-5424]
		mov     qword [rbp-5432], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5440], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5448], rax
		mov     rax, qword [rbp-5440]
		sub     rax, qword [rbp-5448]
		mov     qword [rbp-5456], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5464], rax
		mov     rax, qword [rbp-5456]
		add     rax, qword [rbp-5464]
		mov     qword [rbp-5472], rax
		mov     rax, qword [rbp-5432]
		add     rax, qword [rbp-5472]
		mov     qword [rbp-5480], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5488], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5496], rax
		mov     rax, qword [rbp-5488]
		add     rax, qword [rbp-5496]
		mov     qword [rbp-5504], rax
		mov     rax, qword [rbp-5480]
		sub     rax, qword [rbp-5504]
		mov     qword [rbp-5512], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5520], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5528], rax
		mov     rax, qword [rbp-5520]
		sub     rax, qword [rbp-5528]
		mov     qword [rbp-5536], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5544], rax
		mov     rax, qword [rbp-5536]
		add     rax, qword [rbp-5544]
		mov     qword [rbp-5552], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5560], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5568], rax
		mov     rax, qword [rbp-5560]
		add     rax, qword [rbp-5568]
		mov     qword [rbp-5576], rax
		mov     rax, qword [rbp-5552]
		sub     rax, qword [rbp-5576]
		mov     qword [rbp-5584], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5592], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5600], rax
		mov     rax, qword [rbp-5592]
		sub     rax, qword [rbp-5600]
		mov     qword [rbp-5608], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5616], rax
		mov     rax, qword [rbp-5608]
		add     rax, qword [rbp-5616]
		mov     qword [rbp-5624], rax
		mov     rax, qword [rbp-5584]
		add     rax, qword [rbp-5624]
		mov     qword [rbp-5632], rax
		mov     rax, qword [rbp-5512]
		add     rax, qword [rbp-5632]
		mov     qword [rbp-5640], rax
		mov     rax, qword [rbp-5408]
		sub     rax, qword [rbp-5640]
		mov     qword [rbp-5648], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5656], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5664], rax
		mov     rax, qword [rbp-5656]
		add     rax, qword [rbp-5664]
		mov     qword [rbp-5672], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5680], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5688], rax
		mov     rax, qword [rbp-5680]
		sub     rax, qword [rbp-5688]
		mov     qword [rbp-5696], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5704], rax
		mov     rax, qword [rbp-5696]
		add     rax, qword [rbp-5704]
		mov     qword [rbp-5712], rax
		mov     rax, qword [rbp-5672]
		add     rax, qword [rbp-5712]
		mov     qword [rbp-5720], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5728], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5736], rax
		mov     rax, qword [rbp-5728]
		add     rax, qword [rbp-5736]
		mov     qword [rbp-5744], rax
		mov     rax, qword [rbp-5720]
		sub     rax, qword [rbp-5744]
		mov     qword [rbp-5752], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5760], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5768], rax
		mov     rax, qword [rbp-5760]
		sub     rax, qword [rbp-5768]
		mov     qword [rbp-5776], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5784], rax
		mov     rax, qword [rbp-5776]
		add     rax, qword [rbp-5784]
		mov     qword [rbp-5792], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5800], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5808], rax
		mov     rax, qword [rbp-5800]
		add     rax, qword [rbp-5808]
		mov     qword [rbp-5816], rax
		mov     rax, qword [rbp-5792]
		sub     rax, qword [rbp-5816]
		mov     qword [rbp-5824], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5832], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5840], rax
		mov     rax, qword [rbp-5832]
		sub     rax, qword [rbp-5840]
		mov     qword [rbp-5848], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5856], rax
		mov     rax, qword [rbp-5848]
		add     rax, qword [rbp-5856]
		mov     qword [rbp-5864], rax
		mov     rax, qword [rbp-5824]
		add     rax, qword [rbp-5864]
		mov     qword [rbp-5872], rax
		mov     rax, qword [rbp-5752]
		add     rax, qword [rbp-5872]
		mov     qword [rbp-5880], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5888], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5896], rax
		mov     rax, qword [rbp-5888]
		add     rax, qword [rbp-5896]
		mov     qword [rbp-5904], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5912], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5920], rax
		mov     rax, qword [rbp-5912]
		sub     rax, qword [rbp-5920]
		mov     qword [rbp-5928], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5936], rax
		mov     rax, qword [rbp-5928]
		add     rax, qword [rbp-5936]
		mov     qword [rbp-5944], rax
		mov     rax, qword [rbp-5904]
		add     rax, qword [rbp-5944]
		mov     qword [rbp-5952], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-5960], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-5968], rax
		mov     rax, qword [rbp-5960]
		add     rax, qword [rbp-5968]
		mov     qword [rbp-5976], rax
		mov     rax, qword [rbp-5952]
		sub     rax, qword [rbp-5976]
		mov     qword [rbp-5984], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-5992], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6000], rax
		mov     rax, qword [rbp-5992]
		sub     rax, qword [rbp-6000]
		mov     qword [rbp-6008], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6016], rax
		mov     rax, qword [rbp-6008]
		add     rax, qword [rbp-6016]
		mov     qword [rbp-6024], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6032], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6040], rax
		mov     rax, qword [rbp-6032]
		add     rax, qword [rbp-6040]
		mov     qword [rbp-6048], rax
		mov     rax, qword [rbp-6024]
		sub     rax, qword [rbp-6048]
		mov     qword [rbp-6056], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-6064], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6072], rax
		mov     rax, qword [rbp-6064]
		sub     rax, qword [rbp-6072]
		mov     qword [rbp-6080], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6088], rax
		mov     rax, qword [rbp-6080]
		add     rax, qword [rbp-6088]
		mov     qword [rbp-6096], rax
		mov     rax, qword [rbp-6056]
		add     rax, qword [rbp-6096]
		mov     qword [rbp-6104], rax
		mov     rax, qword [rbp-5984]
		add     rax, qword [rbp-6104]
		mov     qword [rbp-6112], rax
		mov     rax, qword [rbp-5880]
		sub     rax, qword [rbp-6112]
		mov     qword [rbp-6120], rax
		mov     rax, qword [rbp-5648]
		sub     rax, qword [rbp-6120]
		mov     qword [rbp-6128], rax
		mov     rax, qword [rbp-5128]
		add     rax, qword [rbp-6128]
		mov     qword [rbp-6136], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6144], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6152], rax
		mov     rax, qword [rbp-6144]
		add     rax, qword [rbp-6152]
		mov     qword [rbp-6160], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-6168], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6176], rax
		mov     rax, qword [rbp-6168]
		sub     rax, qword [rbp-6176]
		mov     qword [rbp-6184], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6192], rax
		mov     rax, qword [rbp-6184]
		add     rax, qword [rbp-6192]
		mov     qword [rbp-6200], rax
		mov     rax, qword [rbp-6160]
		add     rax, qword [rbp-6200]
		mov     qword [rbp-6208], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6216], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6224], rax
		mov     rax, qword [rbp-6216]
		add     rax, qword [rbp-6224]
		mov     qword [rbp-6232], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-6240], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6248], rax
		mov     rax, qword [rbp-6240]
		sub     rax, qword [rbp-6248]
		mov     qword [rbp-6256], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6264], rax
		mov     rax, qword [rbp-6256]
		add     rax, qword [rbp-6264]
		mov     qword [rbp-6272], rax
		mov     rax, qword [rbp-6232]
		add     rax, qword [rbp-6272]
		mov     qword [rbp-6280], rax
		mov     rax, qword [rbp-6208]
		sub     rax, qword [rbp-6280]
		mov     qword [rbp-6288], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6296], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6304], rax
		mov     rax, qword [rbp-6296]
		add     rax, qword [rbp-6304]
		mov     qword [rbp-6312], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-6320], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6328], rax
		mov     rax, qword [rbp-6320]
		sub     rax, qword [rbp-6328]
		mov     qword [rbp-6336], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6344], rax
		mov     rax, qword [rbp-6336]
		add     rax, qword [rbp-6344]
		mov     qword [rbp-6352], rax
		mov     rax, qword [rbp-6312]
		add     rax, qword [rbp-6352]
		mov     qword [rbp-6360], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6368], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6376], rax
		mov     rax, qword [rbp-6368]
		add     rax, qword [rbp-6376]
		mov     qword [rbp-6384], rax
		mov     rax, qword [rbp-6360]
		sub     rax, qword [rbp-6384]
		mov     qword [rbp-6392], rax
		mov     rax, qword [rbp-6288]
		sub     rax, qword [rbp-6392]
		mov     qword [rbp-6400], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-6408], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6416], rax
		mov     rax, qword [rbp-6408]
		sub     rax, qword [rbp-6416]
		mov     qword [rbp-6424], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6432], rax
		mov     rax, qword [rbp-6424]
		add     rax, qword [rbp-6432]
		mov     qword [rbp-6440], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6448], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6456], rax
		mov     rax, qword [rbp-6448]
		add     rax, qword [rbp-6456]
		mov     qword [rbp-6464], rax
		mov     rax, qword [rbp-6440]
		sub     rax, qword [rbp-6464]
		mov     qword [rbp-6472], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-6480], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6488], rax
		mov     rax, qword [rbp-6480]
		sub     rax, qword [rbp-6488]
		mov     qword [rbp-6496], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6504], rax
		mov     rax, qword [rbp-6496]
		add     rax, qword [rbp-6504]
		mov     qword [rbp-6512], rax
		mov     rax, qword [rbp-6472]
		add     rax, qword [rbp-6512]
		mov     qword [rbp-6520], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6528], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6536], rax
		mov     rax, qword [rbp-6528]
		add     rax, qword [rbp-6536]
		mov     qword [rbp-6544], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-6552], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6560], rax
		mov     rax, qword [rbp-6552]
		sub     rax, qword [rbp-6560]
		mov     qword [rbp-6568], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6576], rax
		mov     rax, qword [rbp-6568]
		add     rax, qword [rbp-6576]
		mov     qword [rbp-6584], rax
		mov     rax, qword [rbp-6544]
		add     rax, qword [rbp-6584]
		mov     qword [rbp-6592], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6600], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6608], rax
		mov     rax, qword [rbp-6600]
		add     rax, qword [rbp-6608]
		mov     qword [rbp-6616], rax
		mov     rax, qword [rbp-6592]
		sub     rax, qword [rbp-6616]
		mov     qword [rbp-6624], rax
		mov     rax, qword [rbp-6520]
		sub     rax, qword [rbp-6624]
		mov     qword [rbp-6632], rax
		mov     rax, qword [rbp-6400]
		add     rax, qword [rbp-6632]
		mov     qword [rbp-6640], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-6648], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6656], rax
		mov     rax, qword [rbp-6648]
		sub     rax, qword [rbp-6656]
		mov     qword [rbp-6664], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6672], rax
		mov     rax, qword [rbp-6664]
		add     rax, qword [rbp-6672]
		mov     qword [rbp-6680], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6688], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6696], rax
		mov     rax, qword [rbp-6688]
		add     rax, qword [rbp-6696]
		mov     qword [rbp-6704], rax
		mov     rax, qword [rbp-6680]
		sub     rax, qword [rbp-6704]
		mov     qword [rbp-6712], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-6720], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6728], rax
		mov     rax, qword [rbp-6720]
		sub     rax, qword [rbp-6728]
		mov     qword [rbp-6736], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6744], rax
		mov     rax, qword [rbp-6736]
		add     rax, qword [rbp-6744]
		mov     qword [rbp-6752], rax
		mov     rax, qword [rbp-6712]
		add     rax, qword [rbp-6752]
		mov     qword [rbp-6760], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6768], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6776], rax
		mov     rax, qword [rbp-6768]
		add     rax, qword [rbp-6776]
		mov     qword [rbp-6784], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-6792], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6800], rax
		mov     rax, qword [rbp-6792]
		sub     rax, qword [rbp-6800]
		mov     qword [rbp-6808], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6816], rax
		mov     rax, qword [rbp-6808]
		add     rax, qword [rbp-6816]
		mov     qword [rbp-6824], rax
		mov     rax, qword [rbp-6784]
		add     rax, qword [rbp-6824]
		mov     qword [rbp-6832], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6840], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6848], rax
		mov     rax, qword [rbp-6840]
		add     rax, qword [rbp-6848]
		mov     qword [rbp-6856], rax
		mov     rax, qword [rbp-6832]
		sub     rax, qword [rbp-6856]
		mov     qword [rbp-6864], rax
		mov     rax, qword [rbp-6760]
		sub     rax, qword [rbp-6864]
		mov     qword [rbp-6872], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-6880], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6888], rax
		mov     rax, qword [rbp-6880]
		sub     rax, qword [rbp-6888]
		mov     qword [rbp-6896], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6904], rax
		mov     rax, qword [rbp-6896]
		add     rax, qword [rbp-6904]
		mov     qword [rbp-6912], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6920], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6928], rax
		mov     rax, qword [rbp-6920]
		add     rax, qword [rbp-6928]
		mov     qword [rbp-6936], rax
		mov     rax, qword [rbp-6912]
		sub     rax, qword [rbp-6936]
		mov     qword [rbp-6944], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-6952], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-6960], rax
		mov     rax, qword [rbp-6952]
		sub     rax, qword [rbp-6960]
		mov     qword [rbp-6968], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-6976], rax
		mov     rax, qword [rbp-6968]
		add     rax, qword [rbp-6976]
		mov     qword [rbp-6984], rax
		mov     rax, qword [rbp-6944]
		add     rax, qword [rbp-6984]
		mov     qword [rbp-6992], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7000], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7008], rax
		mov     rax, qword [rbp-7000]
		add     rax, qword [rbp-7008]
		mov     qword [rbp-7016], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7024], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7032], rax
		mov     rax, qword [rbp-7024]
		sub     rax, qword [rbp-7032]
		mov     qword [rbp-7040], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7048], rax
		mov     rax, qword [rbp-7040]
		add     rax, qword [rbp-7048]
		mov     qword [rbp-7056], rax
		mov     rax, qword [rbp-7016]
		add     rax, qword [rbp-7056]
		mov     qword [rbp-7064], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7072], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7080], rax
		mov     rax, qword [rbp-7072]
		add     rax, qword [rbp-7080]
		mov     qword [rbp-7088], rax
		mov     rax, qword [rbp-7064]
		sub     rax, qword [rbp-7088]
		mov     qword [rbp-7096], rax
		mov     rax, qword [rbp-6992]
		sub     rax, qword [rbp-7096]
		mov     qword [rbp-7104], rax
		mov     rax, qword [rbp-6872]
		add     rax, qword [rbp-7104]
		mov     qword [rbp-7112], rax
		mov     rax, qword [rbp-6640]
		add     rax, qword [rbp-7112]
		mov     qword [rbp-7120], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7128], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7136], rax
		mov     rax, qword [rbp-7128]
		sub     rax, qword [rbp-7136]
		mov     qword [rbp-7144], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7152], rax
		mov     rax, qword [rbp-7144]
		add     rax, qword [rbp-7152]
		mov     qword [rbp-7160], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7168], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7176], rax
		mov     rax, qword [rbp-7168]
		add     rax, qword [rbp-7176]
		mov     qword [rbp-7184], rax
		mov     rax, qword [rbp-7160]
		sub     rax, qword [rbp-7184]
		mov     qword [rbp-7192], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7200], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7208], rax
		mov     rax, qword [rbp-7200]
		sub     rax, qword [rbp-7208]
		mov     qword [rbp-7216], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7224], rax
		mov     rax, qword [rbp-7216]
		add     rax, qword [rbp-7224]
		mov     qword [rbp-7232], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7240], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7248], rax
		mov     rax, qword [rbp-7240]
		add     rax, qword [rbp-7248]
		mov     qword [rbp-7256], rax
		mov     rax, qword [rbp-7232]
		sub     rax, qword [rbp-7256]
		mov     qword [rbp-7264], rax
		mov     rax, qword [rbp-7192]
		add     rax, qword [rbp-7264]
		mov     qword [rbp-7272], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7280], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7288], rax
		mov     rax, qword [rbp-7280]
		sub     rax, qword [rbp-7288]
		mov     qword [rbp-7296], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7304], rax
		mov     rax, qword [rbp-7296]
		add     rax, qword [rbp-7304]
		mov     qword [rbp-7312], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7320], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7328], rax
		mov     rax, qword [rbp-7320]
		add     rax, qword [rbp-7328]
		mov     qword [rbp-7336], rax
		mov     rax, qword [rbp-7312]
		sub     rax, qword [rbp-7336]
		mov     qword [rbp-7344], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7352], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7360], rax
		mov     rax, qword [rbp-7352]
		sub     rax, qword [rbp-7360]
		mov     qword [rbp-7368], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7376], rax
		mov     rax, qword [rbp-7368]
		add     rax, qword [rbp-7376]
		mov     qword [rbp-7384], rax
		mov     rax, qword [rbp-7344]
		add     rax, qword [rbp-7384]
		mov     qword [rbp-7392], rax
		mov     rax, qword [rbp-7272]
		add     rax, qword [rbp-7392]
		mov     qword [rbp-7400], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7408], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7416], rax
		mov     rax, qword [rbp-7408]
		add     rax, qword [rbp-7416]
		mov     qword [rbp-7424], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7432], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7440], rax
		mov     rax, qword [rbp-7432]
		sub     rax, qword [rbp-7440]
		mov     qword [rbp-7448], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7456], rax
		mov     rax, qword [rbp-7448]
		add     rax, qword [rbp-7456]
		mov     qword [rbp-7464], rax
		mov     rax, qword [rbp-7424]
		add     rax, qword [rbp-7464]
		mov     qword [rbp-7472], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7480], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7488], rax
		mov     rax, qword [rbp-7480]
		add     rax, qword [rbp-7488]
		mov     qword [rbp-7496], rax
		mov     rax, qword [rbp-7472]
		sub     rax, qword [rbp-7496]
		mov     qword [rbp-7504], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7512], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7520], rax
		mov     rax, qword [rbp-7512]
		sub     rax, qword [rbp-7520]
		mov     qword [rbp-7528], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7536], rax
		mov     rax, qword [rbp-7528]
		add     rax, qword [rbp-7536]
		mov     qword [rbp-7544], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7552], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7560], rax
		mov     rax, qword [rbp-7552]
		add     rax, qword [rbp-7560]
		mov     qword [rbp-7568], rax
		mov     rax, qword [rbp-7544]
		sub     rax, qword [rbp-7568]
		mov     qword [rbp-7576], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7584], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7592], rax
		mov     rax, qword [rbp-7584]
		sub     rax, qword [rbp-7592]
		mov     qword [rbp-7600], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7608], rax
		mov     rax, qword [rbp-7600]
		add     rax, qword [rbp-7608]
		mov     qword [rbp-7616], rax
		mov     rax, qword [rbp-7576]
		add     rax, qword [rbp-7616]
		mov     qword [rbp-7624], rax
		mov     rax, qword [rbp-7504]
		add     rax, qword [rbp-7624]
		mov     qword [rbp-7632], rax
		mov     rax, qword [rbp-7400]
		sub     rax, qword [rbp-7632]
		mov     qword [rbp-7640], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7648], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7656], rax
		mov     rax, qword [rbp-7648]
		add     rax, qword [rbp-7656]
		mov     qword [rbp-7664], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7672], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7680], rax
		mov     rax, qword [rbp-7672]
		sub     rax, qword [rbp-7680]
		mov     qword [rbp-7688], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7696], rax
		mov     rax, qword [rbp-7688]
		add     rax, qword [rbp-7696]
		mov     qword [rbp-7704], rax
		mov     rax, qword [rbp-7664]
		add     rax, qword [rbp-7704]
		mov     qword [rbp-7712], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7720], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7728], rax
		mov     rax, qword [rbp-7720]
		add     rax, qword [rbp-7728]
		mov     qword [rbp-7736], rax
		mov     rax, qword [rbp-7712]
		sub     rax, qword [rbp-7736]
		mov     qword [rbp-7744], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7752], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7760], rax
		mov     rax, qword [rbp-7752]
		sub     rax, qword [rbp-7760]
		mov     qword [rbp-7768], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7776], rax
		mov     rax, qword [rbp-7768]
		add     rax, qword [rbp-7776]
		mov     qword [rbp-7784], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7792], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7800], rax
		mov     rax, qword [rbp-7792]
		add     rax, qword [rbp-7800]
		mov     qword [rbp-7808], rax
		mov     rax, qword [rbp-7784]
		sub     rax, qword [rbp-7808]
		mov     qword [rbp-7816], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7824], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7832], rax
		mov     rax, qword [rbp-7824]
		sub     rax, qword [rbp-7832]
		mov     qword [rbp-7840], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7848], rax
		mov     rax, qword [rbp-7840]
		add     rax, qword [rbp-7848]
		mov     qword [rbp-7856], rax
		mov     rax, qword [rbp-7816]
		add     rax, qword [rbp-7856]
		mov     qword [rbp-7864], rax
		mov     rax, qword [rbp-7744]
		add     rax, qword [rbp-7864]
		mov     qword [rbp-7872], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7880], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7888], rax
		mov     rax, qword [rbp-7880]
		add     rax, qword [rbp-7888]
		mov     qword [rbp-7896], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7904], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7912], rax
		mov     rax, qword [rbp-7904]
		sub     rax, qword [rbp-7912]
		mov     qword [rbp-7920], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7928], rax
		mov     rax, qword [rbp-7920]
		add     rax, qword [rbp-7928]
		mov     qword [rbp-7936], rax
		mov     rax, qword [rbp-7896]
		add     rax, qword [rbp-7936]
		mov     qword [rbp-7944], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7952], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-7960], rax
		mov     rax, qword [rbp-7952]
		add     rax, qword [rbp-7960]
		mov     qword [rbp-7968], rax
		mov     rax, qword [rbp-7944]
		sub     rax, qword [rbp-7968]
		mov     qword [rbp-7976], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-7984], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-7992], rax
		mov     rax, qword [rbp-7984]
		sub     rax, qword [rbp-7992]
		mov     qword [rbp-8000], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8008], rax
		mov     rax, qword [rbp-8000]
		add     rax, qword [rbp-8008]
		mov     qword [rbp-8016], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8024], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8032], rax
		mov     rax, qword [rbp-8024]
		add     rax, qword [rbp-8032]
		mov     qword [rbp-8040], rax
		mov     rax, qword [rbp-8016]
		sub     rax, qword [rbp-8040]
		mov     qword [rbp-8048], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-8056], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8064], rax
		mov     rax, qword [rbp-8056]
		sub     rax, qword [rbp-8064]
		mov     qword [rbp-8072], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8080], rax
		mov     rax, qword [rbp-8072]
		add     rax, qword [rbp-8080]
		mov     qword [rbp-8088], rax
		mov     rax, qword [rbp-8048]
		add     rax, qword [rbp-8088]
		mov     qword [rbp-8096], rax
		mov     rax, qword [rbp-7976]
		add     rax, qword [rbp-8096]
		mov     qword [rbp-8104], rax
		mov     rax, qword [rbp-7872]
		sub     rax, qword [rbp-8104]
		mov     qword [rbp-8112], rax
		mov     rax, qword [rbp-7640]
		sub     rax, qword [rbp-8112]
		mov     qword [rbp-8120], rax
		mov     rax, qword [rbp-7120]
		add     rax, qword [rbp-8120]
		mov     qword [rbp-8128], rax
		mov     rax, qword [rbp-6136]
		sub     rax, qword [rbp-8128]
		mov     qword [rbp-8136], rax
		mov     rax, qword [rbp-8136]
		mov     qword [rel _B], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-8144], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8152], rax
		mov     rax, qword [rbp-8144]
		sub     rax, qword [rbp-8152]
		mov     qword [rbp-8160], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8168], rax
		mov     rax, qword [rbp-8160]
		add     rax, qword [rbp-8168]
		mov     qword [rbp-8176], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8184], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8192], rax
		mov     rax, qword [rbp-8184]
		add     rax, qword [rbp-8192]
		mov     qword [rbp-8200], rax
		mov     rax, qword [rbp-8176]
		sub     rax, qword [rbp-8200]
		mov     qword [rbp-8208], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-8216], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8224], rax
		mov     rax, qword [rbp-8216]
		sub     rax, qword [rbp-8224]
		mov     qword [rbp-8232], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8240], rax
		mov     rax, qword [rbp-8232]
		add     rax, qword [rbp-8240]
		mov     qword [rbp-8248], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8256], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8264], rax
		mov     rax, qword [rbp-8256]
		add     rax, qword [rbp-8264]
		mov     qword [rbp-8272], rax
		mov     rax, qword [rbp-8248]
		sub     rax, qword [rbp-8272]
		mov     qword [rbp-8280], rax
		mov     rax, qword [rbp-8208]
		add     rax, qword [rbp-8280]
		mov     qword [rbp-8288], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-8296], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8304], rax
		mov     rax, qword [rbp-8296]
		sub     rax, qword [rbp-8304]
		mov     qword [rbp-8312], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8320], rax
		mov     rax, qword [rbp-8312]
		add     rax, qword [rbp-8320]
		mov     qword [rbp-8328], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8336], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8344], rax
		mov     rax, qword [rbp-8336]
		add     rax, qword [rbp-8344]
		mov     qword [rbp-8352], rax
		mov     rax, qword [rbp-8328]
		sub     rax, qword [rbp-8352]
		mov     qword [rbp-8360], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-8368], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8376], rax
		mov     rax, qword [rbp-8368]
		sub     rax, qword [rbp-8376]
		mov     qword [rbp-8384], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8392], rax
		mov     rax, qword [rbp-8384]
		add     rax, qword [rbp-8392]
		mov     qword [rbp-8400], rax
		mov     rax, qword [rbp-8360]
		add     rax, qword [rbp-8400]
		mov     qword [rbp-8408], rax
		mov     rax, qword [rbp-8288]
		add     rax, qword [rbp-8408]
		mov     qword [rbp-8416], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8424], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8432], rax
		mov     rax, qword [rbp-8424]
		add     rax, qword [rbp-8432]
		mov     qword [rbp-8440], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-8448], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8456], rax
		mov     rax, qword [rbp-8448]
		sub     rax, qword [rbp-8456]
		mov     qword [rbp-8464], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8472], rax
		mov     rax, qword [rbp-8464]
		add     rax, qword [rbp-8472]
		mov     qword [rbp-8480], rax
		mov     rax, qword [rbp-8440]
		add     rax, qword [rbp-8480]
		mov     qword [rbp-8488], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8496], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8504], rax
		mov     rax, qword [rbp-8496]
		add     rax, qword [rbp-8504]
		mov     qword [rbp-8512], rax
		mov     rax, qword [rbp-8488]
		sub     rax, qword [rbp-8512]
		mov     qword [rbp-8520], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-8528], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8536], rax
		mov     rax, qword [rbp-8528]
		sub     rax, qword [rbp-8536]
		mov     qword [rbp-8544], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8552], rax
		mov     rax, qword [rbp-8544]
		add     rax, qword [rbp-8552]
		mov     qword [rbp-8560], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8568], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8576], rax
		mov     rax, qword [rbp-8568]
		add     rax, qword [rbp-8576]
		mov     qword [rbp-8584], rax
		mov     rax, qword [rbp-8560]
		sub     rax, qword [rbp-8584]
		mov     qword [rbp-8592], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-8600], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8608], rax
		mov     rax, qword [rbp-8600]
		sub     rax, qword [rbp-8608]
		mov     qword [rbp-8616], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8624], rax
		mov     rax, qword [rbp-8616]
		add     rax, qword [rbp-8624]
		mov     qword [rbp-8632], rax
		mov     rax, qword [rbp-8592]
		add     rax, qword [rbp-8632]
		mov     qword [rbp-8640], rax
		mov     rax, qword [rbp-8520]
		add     rax, qword [rbp-8640]
		mov     qword [rbp-8648], rax
		mov     rax, qword [rbp-8416]
		sub     rax, qword [rbp-8648]
		mov     qword [rbp-8656], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8664], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8672], rax
		mov     rax, qword [rbp-8664]
		add     rax, qword [rbp-8672]
		mov     qword [rbp-8680], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-8688], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8696], rax
		mov     rax, qword [rbp-8688]
		sub     rax, qword [rbp-8696]
		mov     qword [rbp-8704], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8712], rax
		mov     rax, qword [rbp-8704]
		add     rax, qword [rbp-8712]
		mov     qword [rbp-8720], rax
		mov     rax, qword [rbp-8680]
		add     rax, qword [rbp-8720]
		mov     qword [rbp-8728], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8736], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8744], rax
		mov     rax, qword [rbp-8736]
		add     rax, qword [rbp-8744]
		mov     qword [rbp-8752], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-8760], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8768], rax
		mov     rax, qword [rbp-8760]
		sub     rax, qword [rbp-8768]
		mov     qword [rbp-8776], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8784], rax
		mov     rax, qword [rbp-8776]
		add     rax, qword [rbp-8784]
		mov     qword [rbp-8792], rax
		mov     rax, qword [rbp-8752]
		add     rax, qword [rbp-8792]
		mov     qword [rbp-8800], rax
		mov     rax, qword [rbp-8728]
		sub     rax, qword [rbp-8800]
		mov     qword [rbp-8808], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8816], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8824], rax
		mov     rax, qword [rbp-8816]
		add     rax, qword [rbp-8824]
		mov     qword [rbp-8832], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-8840], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8848], rax
		mov     rax, qword [rbp-8840]
		sub     rax, qword [rbp-8848]
		mov     qword [rbp-8856], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8864], rax
		mov     rax, qword [rbp-8856]
		add     rax, qword [rbp-8864]
		mov     qword [rbp-8872], rax
		mov     rax, qword [rbp-8832]
		add     rax, qword [rbp-8872]
		mov     qword [rbp-8880], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8888], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8896], rax
		mov     rax, qword [rbp-8888]
		add     rax, qword [rbp-8896]
		mov     qword [rbp-8904], rax
		mov     rax, qword [rbp-8880]
		sub     rax, qword [rbp-8904]
		mov     qword [rbp-8912], rax
		mov     rax, qword [rbp-8808]
		sub     rax, qword [rbp-8912]
		mov     qword [rbp-8920], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-8928], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8936], rax
		mov     rax, qword [rbp-8928]
		sub     rax, qword [rbp-8936]
		mov     qword [rbp-8944], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8952], rax
		mov     rax, qword [rbp-8944]
		add     rax, qword [rbp-8952]
		mov     qword [rbp-8960], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-8968], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-8976], rax
		mov     rax, qword [rbp-8968]
		add     rax, qword [rbp-8976]
		mov     qword [rbp-8984], rax
		mov     rax, qword [rbp-8960]
		sub     rax, qword [rbp-8984]
		mov     qword [rbp-8992], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9000], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9008], rax
		mov     rax, qword [rbp-9000]
		sub     rax, qword [rbp-9008]
		mov     qword [rbp-9016], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9024], rax
		mov     rax, qword [rbp-9016]
		add     rax, qword [rbp-9024]
		mov     qword [rbp-9032], rax
		mov     rax, qword [rbp-8992]
		add     rax, qword [rbp-9032]
		mov     qword [rbp-9040], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9048], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9056], rax
		mov     rax, qword [rbp-9048]
		add     rax, qword [rbp-9056]
		mov     qword [rbp-9064], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9072], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9080], rax
		mov     rax, qword [rbp-9072]
		sub     rax, qword [rbp-9080]
		mov     qword [rbp-9088], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9096], rax
		mov     rax, qword [rbp-9088]
		add     rax, qword [rbp-9096]
		mov     qword [rbp-9104], rax
		mov     rax, qword [rbp-9064]
		add     rax, qword [rbp-9104]
		mov     qword [rbp-9112], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9120], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9128], rax
		mov     rax, qword [rbp-9120]
		add     rax, qword [rbp-9128]
		mov     qword [rbp-9136], rax
		mov     rax, qword [rbp-9112]
		sub     rax, qword [rbp-9136]
		mov     qword [rbp-9144], rax
		mov     rax, qword [rbp-9040]
		sub     rax, qword [rbp-9144]
		mov     qword [rbp-9152], rax
		mov     rax, qword [rbp-8920]
		add     rax, qword [rbp-9152]
		mov     qword [rbp-9160], rax
		mov     rax, qword [rbp-8656]
		sub     rax, qword [rbp-9160]
		mov     qword [rbp-9168], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9176], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9184], rax
		mov     rax, qword [rbp-9176]
		sub     rax, qword [rbp-9184]
		mov     qword [rbp-9192], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9200], rax
		mov     rax, qword [rbp-9192]
		add     rax, qword [rbp-9200]
		mov     qword [rbp-9208], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9216], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9224], rax
		mov     rax, qword [rbp-9216]
		add     rax, qword [rbp-9224]
		mov     qword [rbp-9232], rax
		mov     rax, qword [rbp-9208]
		sub     rax, qword [rbp-9232]
		mov     qword [rbp-9240], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9248], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9256], rax
		mov     rax, qword [rbp-9248]
		sub     rax, qword [rbp-9256]
		mov     qword [rbp-9264], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9272], rax
		mov     rax, qword [rbp-9264]
		add     rax, qword [rbp-9272]
		mov     qword [rbp-9280], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9288], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9296], rax
		mov     rax, qword [rbp-9288]
		add     rax, qword [rbp-9296]
		mov     qword [rbp-9304], rax
		mov     rax, qword [rbp-9280]
		sub     rax, qword [rbp-9304]
		mov     qword [rbp-9312], rax
		mov     rax, qword [rbp-9240]
		add     rax, qword [rbp-9312]
		mov     qword [rbp-9320], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9328], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9336], rax
		mov     rax, qword [rbp-9328]
		sub     rax, qword [rbp-9336]
		mov     qword [rbp-9344], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9352], rax
		mov     rax, qword [rbp-9344]
		add     rax, qword [rbp-9352]
		mov     qword [rbp-9360], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9368], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9376], rax
		mov     rax, qword [rbp-9368]
		add     rax, qword [rbp-9376]
		mov     qword [rbp-9384], rax
		mov     rax, qword [rbp-9360]
		sub     rax, qword [rbp-9384]
		mov     qword [rbp-9392], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9400], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9408], rax
		mov     rax, qword [rbp-9400]
		sub     rax, qword [rbp-9408]
		mov     qword [rbp-9416], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9424], rax
		mov     rax, qword [rbp-9416]
		add     rax, qword [rbp-9424]
		mov     qword [rbp-9432], rax
		mov     rax, qword [rbp-9392]
		add     rax, qword [rbp-9432]
		mov     qword [rbp-9440], rax
		mov     rax, qword [rbp-9320]
		add     rax, qword [rbp-9440]
		mov     qword [rbp-9448], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9456], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9464], rax
		mov     rax, qword [rbp-9456]
		add     rax, qword [rbp-9464]
		mov     qword [rbp-9472], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9480], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9488], rax
		mov     rax, qword [rbp-9480]
		sub     rax, qword [rbp-9488]
		mov     qword [rbp-9496], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9504], rax
		mov     rax, qword [rbp-9496]
		add     rax, qword [rbp-9504]
		mov     qword [rbp-9512], rax
		mov     rax, qword [rbp-9472]
		add     rax, qword [rbp-9512]
		mov     qword [rbp-9520], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9528], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9536], rax
		mov     rax, qword [rbp-9528]
		add     rax, qword [rbp-9536]
		mov     qword [rbp-9544], rax
		mov     rax, qword [rbp-9520]
		sub     rax, qword [rbp-9544]
		mov     qword [rbp-9552], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9560], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9568], rax
		mov     rax, qword [rbp-9560]
		sub     rax, qword [rbp-9568]
		mov     qword [rbp-9576], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9584], rax
		mov     rax, qword [rbp-9576]
		add     rax, qword [rbp-9584]
		mov     qword [rbp-9592], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9600], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9608], rax
		mov     rax, qword [rbp-9600]
		add     rax, qword [rbp-9608]
		mov     qword [rbp-9616], rax
		mov     rax, qword [rbp-9592]
		sub     rax, qword [rbp-9616]
		mov     qword [rbp-9624], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9632], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9640], rax
		mov     rax, qword [rbp-9632]
		sub     rax, qword [rbp-9640]
		mov     qword [rbp-9648], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9656], rax
		mov     rax, qword [rbp-9648]
		add     rax, qword [rbp-9656]
		mov     qword [rbp-9664], rax
		mov     rax, qword [rbp-9624]
		add     rax, qword [rbp-9664]
		mov     qword [rbp-9672], rax
		mov     rax, qword [rbp-9552]
		add     rax, qword [rbp-9672]
		mov     qword [rbp-9680], rax
		mov     rax, qword [rbp-9448]
		sub     rax, qword [rbp-9680]
		mov     qword [rbp-9688], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9696], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9704], rax
		mov     rax, qword [rbp-9696]
		add     rax, qword [rbp-9704]
		mov     qword [rbp-9712], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9720], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9728], rax
		mov     rax, qword [rbp-9720]
		sub     rax, qword [rbp-9728]
		mov     qword [rbp-9736], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9744], rax
		mov     rax, qword [rbp-9736]
		add     rax, qword [rbp-9744]
		mov     qword [rbp-9752], rax
		mov     rax, qword [rbp-9712]
		add     rax, qword [rbp-9752]
		mov     qword [rbp-9760], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9768], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9776], rax
		mov     rax, qword [rbp-9768]
		add     rax, qword [rbp-9776]
		mov     qword [rbp-9784], rax
		mov     rax, qword [rbp-9760]
		sub     rax, qword [rbp-9784]
		mov     qword [rbp-9792], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9800], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9808], rax
		mov     rax, qword [rbp-9800]
		sub     rax, qword [rbp-9808]
		mov     qword [rbp-9816], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9824], rax
		mov     rax, qword [rbp-9816]
		add     rax, qword [rbp-9824]
		mov     qword [rbp-9832], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9840], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9848], rax
		mov     rax, qword [rbp-9840]
		add     rax, qword [rbp-9848]
		mov     qword [rbp-9856], rax
		mov     rax, qword [rbp-9832]
		sub     rax, qword [rbp-9856]
		mov     qword [rbp-9864], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9872], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9880], rax
		mov     rax, qword [rbp-9872]
		sub     rax, qword [rbp-9880]
		mov     qword [rbp-9888], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9896], rax
		mov     rax, qword [rbp-9888]
		add     rax, qword [rbp-9896]
		mov     qword [rbp-9904], rax
		mov     rax, qword [rbp-9864]
		add     rax, qword [rbp-9904]
		mov     qword [rbp-9912], rax
		mov     rax, qword [rbp-9792]
		add     rax, qword [rbp-9912]
		mov     qword [rbp-9920], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9928], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9936], rax
		mov     rax, qword [rbp-9928]
		add     rax, qword [rbp-9936]
		mov     qword [rbp-9944], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-9952], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-9960], rax
		mov     rax, qword [rbp-9952]
		sub     rax, qword [rbp-9960]
		mov     qword [rbp-9968], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-9976], rax
		mov     rax, qword [rbp-9968]
		add     rax, qword [rbp-9976]
		mov     qword [rbp-9984], rax
		mov     rax, qword [rbp-9944]
		add     rax, qword [rbp-9984]
		mov     qword [rbp-9992], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10000], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10008], rax
		mov     rax, qword [rbp-10000]
		add     rax, qword [rbp-10008]
		mov     qword [rbp-10016], rax
		mov     rax, qword [rbp-9992]
		sub     rax, qword [rbp-10016]
		mov     qword [rbp-10024], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10032], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10040], rax
		mov     rax, qword [rbp-10032]
		sub     rax, qword [rbp-10040]
		mov     qword [rbp-10048], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10056], rax
		mov     rax, qword [rbp-10048]
		add     rax, qword [rbp-10056]
		mov     qword [rbp-10064], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10072], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10080], rax
		mov     rax, qword [rbp-10072]
		add     rax, qword [rbp-10080]
		mov     qword [rbp-10088], rax
		mov     rax, qword [rbp-10064]
		sub     rax, qword [rbp-10088]
		mov     qword [rbp-10096], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10104], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10112], rax
		mov     rax, qword [rbp-10104]
		sub     rax, qword [rbp-10112]
		mov     qword [rbp-10120], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10128], rax
		mov     rax, qword [rbp-10120]
		add     rax, qword [rbp-10128]
		mov     qword [rbp-10136], rax
		mov     rax, qword [rbp-10096]
		add     rax, qword [rbp-10136]
		mov     qword [rbp-10144], rax
		mov     rax, qword [rbp-10024]
		add     rax, qword [rbp-10144]
		mov     qword [rbp-10152], rax
		mov     rax, qword [rbp-9920]
		sub     rax, qword [rbp-10152]
		mov     qword [rbp-10160], rax
		mov     rax, qword [rbp-9688]
		sub     rax, qword [rbp-10160]
		mov     qword [rbp-10168], rax
		mov     rax, qword [rbp-9168]
		add     rax, qword [rbp-10168]
		mov     qword [rbp-10176], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10184], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10192], rax
		mov     rax, qword [rbp-10184]
		add     rax, qword [rbp-10192]
		mov     qword [rbp-10200], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10208], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10216], rax
		mov     rax, qword [rbp-10208]
		sub     rax, qword [rbp-10216]
		mov     qword [rbp-10224], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10232], rax
		mov     rax, qword [rbp-10224]
		add     rax, qword [rbp-10232]
		mov     qword [rbp-10240], rax
		mov     rax, qword [rbp-10200]
		add     rax, qword [rbp-10240]
		mov     qword [rbp-10248], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10256], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10264], rax
		mov     rax, qword [rbp-10256]
		add     rax, qword [rbp-10264]
		mov     qword [rbp-10272], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10280], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10288], rax
		mov     rax, qword [rbp-10280]
		sub     rax, qword [rbp-10288]
		mov     qword [rbp-10296], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10304], rax
		mov     rax, qword [rbp-10296]
		add     rax, qword [rbp-10304]
		mov     qword [rbp-10312], rax
		mov     rax, qword [rbp-10272]
		add     rax, qword [rbp-10312]
		mov     qword [rbp-10320], rax
		mov     rax, qword [rbp-10248]
		sub     rax, qword [rbp-10320]
		mov     qword [rbp-10328], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10336], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10344], rax
		mov     rax, qword [rbp-10336]
		add     rax, qword [rbp-10344]
		mov     qword [rbp-10352], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10360], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10368], rax
		mov     rax, qword [rbp-10360]
		sub     rax, qword [rbp-10368]
		mov     qword [rbp-10376], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10384], rax
		mov     rax, qword [rbp-10376]
		add     rax, qword [rbp-10384]
		mov     qword [rbp-10392], rax
		mov     rax, qword [rbp-10352]
		add     rax, qword [rbp-10392]
		mov     qword [rbp-10400], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10408], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10416], rax
		mov     rax, qword [rbp-10408]
		add     rax, qword [rbp-10416]
		mov     qword [rbp-10424], rax
		mov     rax, qword [rbp-10400]
		sub     rax, qword [rbp-10424]
		mov     qword [rbp-10432], rax
		mov     rax, qword [rbp-10328]
		sub     rax, qword [rbp-10432]
		mov     qword [rbp-10440], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10448], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10456], rax
		mov     rax, qword [rbp-10448]
		sub     rax, qword [rbp-10456]
		mov     qword [rbp-10464], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10472], rax
		mov     rax, qword [rbp-10464]
		add     rax, qword [rbp-10472]
		mov     qword [rbp-10480], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10488], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10496], rax
		mov     rax, qword [rbp-10488]
		add     rax, qword [rbp-10496]
		mov     qword [rbp-10504], rax
		mov     rax, qword [rbp-10480]
		sub     rax, qword [rbp-10504]
		mov     qword [rbp-10512], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10520], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10528], rax
		mov     rax, qword [rbp-10520]
		sub     rax, qword [rbp-10528]
		mov     qword [rbp-10536], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10544], rax
		mov     rax, qword [rbp-10536]
		add     rax, qword [rbp-10544]
		mov     qword [rbp-10552], rax
		mov     rax, qword [rbp-10512]
		add     rax, qword [rbp-10552]
		mov     qword [rbp-10560], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10568], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10576], rax
		mov     rax, qword [rbp-10568]
		add     rax, qword [rbp-10576]
		mov     qword [rbp-10584], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10592], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10600], rax
		mov     rax, qword [rbp-10592]
		sub     rax, qword [rbp-10600]
		mov     qword [rbp-10608], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10616], rax
		mov     rax, qword [rbp-10608]
		add     rax, qword [rbp-10616]
		mov     qword [rbp-10624], rax
		mov     rax, qword [rbp-10584]
		add     rax, qword [rbp-10624]
		mov     qword [rbp-10632], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10640], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10648], rax
		mov     rax, qword [rbp-10640]
		add     rax, qword [rbp-10648]
		mov     qword [rbp-10656], rax
		mov     rax, qword [rbp-10632]
		sub     rax, qword [rbp-10656]
		mov     qword [rbp-10664], rax
		mov     rax, qword [rbp-10560]
		sub     rax, qword [rbp-10664]
		mov     qword [rbp-10672], rax
		mov     rax, qword [rbp-10440]
		add     rax, qword [rbp-10672]
		mov     qword [rbp-10680], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10688], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10696], rax
		mov     rax, qword [rbp-10688]
		sub     rax, qword [rbp-10696]
		mov     qword [rbp-10704], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10712], rax
		mov     rax, qword [rbp-10704]
		add     rax, qword [rbp-10712]
		mov     qword [rbp-10720], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10728], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10736], rax
		mov     rax, qword [rbp-10728]
		add     rax, qword [rbp-10736]
		mov     qword [rbp-10744], rax
		mov     rax, qword [rbp-10720]
		sub     rax, qword [rbp-10744]
		mov     qword [rbp-10752], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10760], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10768], rax
		mov     rax, qword [rbp-10760]
		sub     rax, qword [rbp-10768]
		mov     qword [rbp-10776], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10784], rax
		mov     rax, qword [rbp-10776]
		add     rax, qword [rbp-10784]
		mov     qword [rbp-10792], rax
		mov     rax, qword [rbp-10752]
		add     rax, qword [rbp-10792]
		mov     qword [rbp-10800], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10808], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10816], rax
		mov     rax, qword [rbp-10808]
		add     rax, qword [rbp-10816]
		mov     qword [rbp-10824], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10832], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10840], rax
		mov     rax, qword [rbp-10832]
		sub     rax, qword [rbp-10840]
		mov     qword [rbp-10848], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10856], rax
		mov     rax, qword [rbp-10848]
		add     rax, qword [rbp-10856]
		mov     qword [rbp-10864], rax
		mov     rax, qword [rbp-10824]
		add     rax, qword [rbp-10864]
		mov     qword [rbp-10872], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10880], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10888], rax
		mov     rax, qword [rbp-10880]
		add     rax, qword [rbp-10888]
		mov     qword [rbp-10896], rax
		mov     rax, qword [rbp-10872]
		sub     rax, qword [rbp-10896]
		mov     qword [rbp-10904], rax
		mov     rax, qword [rbp-10800]
		sub     rax, qword [rbp-10904]
		mov     qword [rbp-10912], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10920], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10928], rax
		mov     rax, qword [rbp-10920]
		sub     rax, qword [rbp-10928]
		mov     qword [rbp-10936], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10944], rax
		mov     rax, qword [rbp-10936]
		add     rax, qword [rbp-10944]
		mov     qword [rbp-10952], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-10960], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-10968], rax
		mov     rax, qword [rbp-10960]
		add     rax, qword [rbp-10968]
		mov     qword [rbp-10976], rax
		mov     rax, qword [rbp-10952]
		sub     rax, qword [rbp-10976]
		mov     qword [rbp-10984], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-10992], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11000], rax
		mov     rax, qword [rbp-10992]
		sub     rax, qword [rbp-11000]
		mov     qword [rbp-11008], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11016], rax
		mov     rax, qword [rbp-11008]
		add     rax, qword [rbp-11016]
		mov     qword [rbp-11024], rax
		mov     rax, qword [rbp-10984]
		add     rax, qword [rbp-11024]
		mov     qword [rbp-11032], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11040], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11048], rax
		mov     rax, qword [rbp-11040]
		add     rax, qword [rbp-11048]
		mov     qword [rbp-11056], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-11064], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11072], rax
		mov     rax, qword [rbp-11064]
		sub     rax, qword [rbp-11072]
		mov     qword [rbp-11080], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11088], rax
		mov     rax, qword [rbp-11080]
		add     rax, qword [rbp-11088]
		mov     qword [rbp-11096], rax
		mov     rax, qword [rbp-11056]
		add     rax, qword [rbp-11096]
		mov     qword [rbp-11104], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11112], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11120], rax
		mov     rax, qword [rbp-11112]
		add     rax, qword [rbp-11120]
		mov     qword [rbp-11128], rax
		mov     rax, qword [rbp-11104]
		sub     rax, qword [rbp-11128]
		mov     qword [rbp-11136], rax
		mov     rax, qword [rbp-11032]
		sub     rax, qword [rbp-11136]
		mov     qword [rbp-11144], rax
		mov     rax, qword [rbp-10912]
		add     rax, qword [rbp-11144]
		mov     qword [rbp-11152], rax
		mov     rax, qword [rbp-10680]
		add     rax, qword [rbp-11152]
		mov     qword [rbp-11160], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-11168], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11176], rax
		mov     rax, qword [rbp-11168]
		sub     rax, qword [rbp-11176]
		mov     qword [rbp-11184], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11192], rax
		mov     rax, qword [rbp-11184]
		add     rax, qword [rbp-11192]
		mov     qword [rbp-11200], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11208], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11216], rax
		mov     rax, qword [rbp-11208]
		add     rax, qword [rbp-11216]
		mov     qword [rbp-11224], rax
		mov     rax, qword [rbp-11200]
		sub     rax, qword [rbp-11224]
		mov     qword [rbp-11232], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-11240], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11248], rax
		mov     rax, qword [rbp-11240]
		sub     rax, qword [rbp-11248]
		mov     qword [rbp-11256], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11264], rax
		mov     rax, qword [rbp-11256]
		add     rax, qword [rbp-11264]
		mov     qword [rbp-11272], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11280], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11288], rax
		mov     rax, qword [rbp-11280]
		add     rax, qword [rbp-11288]
		mov     qword [rbp-11296], rax
		mov     rax, qword [rbp-11272]
		sub     rax, qword [rbp-11296]
		mov     qword [rbp-11304], rax
		mov     rax, qword [rbp-11232]
		add     rax, qword [rbp-11304]
		mov     qword [rbp-11312], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-11320], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11328], rax
		mov     rax, qword [rbp-11320]
		sub     rax, qword [rbp-11328]
		mov     qword [rbp-11336], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11344], rax
		mov     rax, qword [rbp-11336]
		add     rax, qword [rbp-11344]
		mov     qword [rbp-11352], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11360], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11368], rax
		mov     rax, qword [rbp-11360]
		add     rax, qword [rbp-11368]
		mov     qword [rbp-11376], rax
		mov     rax, qword [rbp-11352]
		sub     rax, qword [rbp-11376]
		mov     qword [rbp-11384], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-11392], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11400], rax
		mov     rax, qword [rbp-11392]
		sub     rax, qword [rbp-11400]
		mov     qword [rbp-11408], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11416], rax
		mov     rax, qword [rbp-11408]
		add     rax, qword [rbp-11416]
		mov     qword [rbp-11424], rax
		mov     rax, qword [rbp-11384]
		add     rax, qword [rbp-11424]
		mov     qword [rbp-11432], rax
		mov     rax, qword [rbp-11312]
		add     rax, qword [rbp-11432]
		mov     qword [rbp-11440], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11448], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11456], rax
		mov     rax, qword [rbp-11448]
		add     rax, qword [rbp-11456]
		mov     qword [rbp-11464], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-11472], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11480], rax
		mov     rax, qword [rbp-11472]
		sub     rax, qword [rbp-11480]
		mov     qword [rbp-11488], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11496], rax
		mov     rax, qword [rbp-11488]
		add     rax, qword [rbp-11496]
		mov     qword [rbp-11504], rax
		mov     rax, qword [rbp-11464]
		add     rax, qword [rbp-11504]
		mov     qword [rbp-11512], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11520], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11528], rax
		mov     rax, qword [rbp-11520]
		add     rax, qword [rbp-11528]
		mov     qword [rbp-11536], rax
		mov     rax, qword [rbp-11512]
		sub     rax, qword [rbp-11536]
		mov     qword [rbp-11544], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-11552], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11560], rax
		mov     rax, qword [rbp-11552]
		sub     rax, qword [rbp-11560]
		mov     qword [rbp-11568], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11576], rax
		mov     rax, qword [rbp-11568]
		add     rax, qword [rbp-11576]
		mov     qword [rbp-11584], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11592], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11600], rax
		mov     rax, qword [rbp-11592]
		add     rax, qword [rbp-11600]
		mov     qword [rbp-11608], rax
		mov     rax, qword [rbp-11584]
		sub     rax, qword [rbp-11608]
		mov     qword [rbp-11616], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-11624], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11632], rax
		mov     rax, qword [rbp-11624]
		sub     rax, qword [rbp-11632]
		mov     qword [rbp-11640], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11648], rax
		mov     rax, qword [rbp-11640]
		add     rax, qword [rbp-11648]
		mov     qword [rbp-11656], rax
		mov     rax, qword [rbp-11616]
		add     rax, qword [rbp-11656]
		mov     qword [rbp-11664], rax
		mov     rax, qword [rbp-11544]
		add     rax, qword [rbp-11664]
		mov     qword [rbp-11672], rax
		mov     rax, qword [rbp-11440]
		sub     rax, qword [rbp-11672]
		mov     qword [rbp-11680], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11688], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11696], rax
		mov     rax, qword [rbp-11688]
		add     rax, qword [rbp-11696]
		mov     qword [rbp-11704], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-11712], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11720], rax
		mov     rax, qword [rbp-11712]
		sub     rax, qword [rbp-11720]
		mov     qword [rbp-11728], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11736], rax
		mov     rax, qword [rbp-11728]
		add     rax, qword [rbp-11736]
		mov     qword [rbp-11744], rax
		mov     rax, qword [rbp-11704]
		add     rax, qword [rbp-11744]
		mov     qword [rbp-11752], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11760], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11768], rax
		mov     rax, qword [rbp-11760]
		add     rax, qword [rbp-11768]
		mov     qword [rbp-11776], rax
		mov     rax, qword [rbp-11752]
		sub     rax, qword [rbp-11776]
		mov     qword [rbp-11784], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-11792], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11800], rax
		mov     rax, qword [rbp-11792]
		sub     rax, qword [rbp-11800]
		mov     qword [rbp-11808], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11816], rax
		mov     rax, qword [rbp-11808]
		add     rax, qword [rbp-11816]
		mov     qword [rbp-11824], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11832], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11840], rax
		mov     rax, qword [rbp-11832]
		add     rax, qword [rbp-11840]
		mov     qword [rbp-11848], rax
		mov     rax, qword [rbp-11824]
		sub     rax, qword [rbp-11848]
		mov     qword [rbp-11856], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-11864], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11872], rax
		mov     rax, qword [rbp-11864]
		sub     rax, qword [rbp-11872]
		mov     qword [rbp-11880], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11888], rax
		mov     rax, qword [rbp-11880]
		add     rax, qword [rbp-11888]
		mov     qword [rbp-11896], rax
		mov     rax, qword [rbp-11856]
		add     rax, qword [rbp-11896]
		mov     qword [rbp-11904], rax
		mov     rax, qword [rbp-11784]
		add     rax, qword [rbp-11904]
		mov     qword [rbp-11912], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11920], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11928], rax
		mov     rax, qword [rbp-11920]
		add     rax, qword [rbp-11928]
		mov     qword [rbp-11936], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-11944], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11952], rax
		mov     rax, qword [rbp-11944]
		sub     rax, qword [rbp-11952]
		mov     qword [rbp-11960], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-11968], rax
		mov     rax, qword [rbp-11960]
		add     rax, qword [rbp-11968]
		mov     qword [rbp-11976], rax
		mov     rax, qword [rbp-11936]
		add     rax, qword [rbp-11976]
		mov     qword [rbp-11984], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-11992], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-12000], rax
		mov     rax, qword [rbp-11992]
		add     rax, qword [rbp-12000]
		mov     qword [rbp-12008], rax
		mov     rax, qword [rbp-11984]
		sub     rax, qword [rbp-12008]
		mov     qword [rbp-12016], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-12024], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-12032], rax
		mov     rax, qword [rbp-12024]
		sub     rax, qword [rbp-12032]
		mov     qword [rbp-12040], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-12048], rax
		mov     rax, qword [rbp-12040]
		add     rax, qword [rbp-12048]
		mov     qword [rbp-12056], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-12064], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-12072], rax
		mov     rax, qword [rbp-12064]
		add     rax, qword [rbp-12072]
		mov     qword [rbp-12080], rax
		mov     rax, qword [rbp-12056]
		sub     rax, qword [rbp-12080]
		mov     qword [rbp-12088], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-12096], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-12104], rax
		mov     rax, qword [rbp-12096]
		sub     rax, qword [rbp-12104]
		mov     qword [rbp-12112], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-12120], rax
		mov     rax, qword [rbp-12112]
		add     rax, qword [rbp-12120]
		mov     qword [rbp-12128], rax
		mov     rax, qword [rbp-12088]
		add     rax, qword [rbp-12128]
		mov     qword [rbp-12136], rax
		mov     rax, qword [rbp-12016]
		add     rax, qword [rbp-12136]
		mov     qword [rbp-12144], rax
		mov     rax, qword [rbp-11912]
		sub     rax, qword [rbp-12144]
		mov     qword [rbp-12152], rax
		mov     rax, qword [rbp-11680]
		sub     rax, qword [rbp-12152]
		mov     qword [rbp-12160], rax
		mov     rax, qword [rbp-11160]
		add     rax, qword [rbp-12160]
		mov     qword [rbp-12168], rax
		mov     rax, qword [rbp-10176]
		sub     rax, qword [rbp-12168]
		mov     qword [rbp-12176], rax
		mov     rax, qword [rbp-12176]
		mov     qword [rel _C], rax
		jmp     L1
L4:
		mov     rax, qword [rel _A]
		mov     qword [rbp-12184], rax
		mov     rdi, qword [rbp-12184]
		call    _toString
		mov     qword [rbp-12192], rax
		mov     rdi, qword [rbp-12192]
		mov     rsi, str_0
		call    __stringAdd
		mov     qword [rbp-12200], rax
		mov     rax, qword [rel _B]
		mov     qword [rbp-12208], rax
		mov     rdi, qword [rbp-12208]
		call    _toString
		mov     qword [rbp-12216], rax
		mov     rdi, qword [rbp-12200]
		mov     rsi, qword [rbp-12216]
		call    __stringAdd
		mov     qword [rbp-12224], rax
		mov     rdi, qword [rbp-12224]
		mov     rsi, str_0
		call    __stringAdd
		mov     qword [rbp-12232], rax
		mov     rax, qword [rel _C]
		mov     qword [rbp-12240], rax
		mov     rdi, qword [rbp-12240]
		call    _toString
		mov     qword [rbp-12248], rax
		mov     rdi, qword [rbp-12232]
		mov     rsi, qword [rbp-12248]
		call    __stringAdd
		mov     qword [rbp-12256], rax
		mov     rdi, qword [rbp-12256]
		call    _println
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

str_0:
		dq      1
		db      20H, 00H

SECTION .bss
_A:
		resb    8
_B:
		resb    8
_C:
		resb    8


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


