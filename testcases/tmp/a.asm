default rel

global main
global print
global println
global getString
global getInt
global toString
global _stringLength
global _stringSubstring
global _stringParseInt
global _stringOrd
global _arraySize
global _stringAdd
global _stringEq
global _stringNeq
global _stringLt
global _stringGt
global _stringLe
global _stringGe
global _globalInit
global check
global main

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


_globalInit:
		push    rbp
		mov     rbp, rsp
		mov     rsp, rbp
		pop     rbp
		ret     

check:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 64
		mov     qword [rbp-8], rdi
		mov     qword [rbp-16], rsi
		mov     rax, rbp
		sub     rax, 24
		mov     qword [rbp-32], rax
		mov     rax, qword [rbp-8]
		cmp     rax, qword [rbp-16]
		setl    al
		movzx   rax, al
		mov     qword [rbp-40], rax
		mov     rax, qword [rbp-40]
		cmp     rax, 0
		jne     L1
		jmp     L3
L1:
		mov     rax, qword [rbp-8]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-48], rax
		mov     rax, qword [rbp-48]
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
		mov     qword [rbp-56], rax
		mov     rax, qword [rbp-56]
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 5520
		call    _globalInit
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
		mov     rax, rbp
		sub     rax, 264
		mov     qword [rbp-272], rax
		mov     rax, rbp
		sub     rax, 280
		mov     qword [rbp-288], rax
		mov     rax, rbp
		sub     rax, 296
		mov     qword [rbp-304], rax
		mov     rax, rbp
		sub     rax, 312
		mov     qword [rbp-320], rax
		mov     rax, rbp
		sub     rax, 328
		mov     qword [rbp-336], rax
		mov     rax, rbp
		sub     rax, 344
		mov     qword [rbp-352], rax
		mov     rax, rbp
		sub     rax, 360
		mov     qword [rbp-368], rax
		mov     rax, rbp
		sub     rax, 376
		mov     qword [rbp-384], rax
		mov     rax, rbp
		sub     rax, 392
		mov     qword [rbp-400], rax
		mov     rax, rbp
		sub     rax, 408
		mov     qword [rbp-416], rax
		mov     rax, rbp
		sub     rax, 424
		mov     qword [rbp-432], rax
		mov     rax, rbp
		sub     rax, 440
		mov     qword [rbp-448], rax
		mov     rax, rbp
		sub     rax, 456
		mov     qword [rbp-464], rax
		mov     rax, rbp
		sub     rax, 472
		mov     qword [rbp-480], rax
		mov     rax, rbp
		sub     rax, 488
		mov     qword [rbp-496], rax
		mov     rax, rbp
		sub     rax, 504
		mov     qword [rbp-512], rax
		mov     rax, rbp
		sub     rax, 520
		mov     qword [rbp-528], rax
		mov     rax, rbp
		sub     rax, 536
		mov     qword [rbp-544], rax
		mov     rax, rbp
		sub     rax, 552
		mov     qword [rbp-560], rax
		mov     rax, rbp
		sub     rax, 568
		mov     qword [rbp-576], rax
		mov     rax, rbp
		sub     rax, 584
		mov     qword [rbp-592], rax
		mov     rax, rbp
		sub     rax, 600
		mov     qword [rbp-608], rax
		mov     rax, rbp
		sub     rax, 616
		mov     qword [rbp-624], rax
		mov     rax, rbp
		sub     rax, 632
		mov     qword [rbp-640], rax
		mov     rax, rbp
		sub     rax, 648
		mov     qword [rbp-656], rax
		mov     rax, rbp
		sub     rax, 664
		mov     qword [rbp-672], rax
		mov     rax, rbp
		sub     rax, 680
		mov     qword [rbp-688], rax
		mov     rax, rbp
		sub     rax, 696
		mov     qword [rbp-704], rax
		mov     rax, rbp
		sub     rax, 712
		mov     qword [rbp-720], rax
		mov     rax, rbp
		sub     rax, 728
		mov     qword [rbp-736], rax
		mov     rax, rbp
		sub     rax, 744
		mov     qword [rbp-752], rax
		mov     rax, rbp
		sub     rax, 760
		mov     qword [rbp-768], rax
		mov     rax, rbp
		sub     rax, 776
		mov     qword [rbp-784], rax
		mov     rax, rbp
		sub     rax, 792
		mov     qword [rbp-800], rax
		mov     rax, rbp
		sub     rax, 808
		mov     qword [rbp-816], rax
		mov     rax, rbp
		sub     rax, 824
		mov     qword [rbp-832], rax
		mov     rax, rbp
		sub     rax, 840
		mov     qword [rbp-848], rax
		mov     rax, rbp
		sub     rax, 856
		mov     qword [rbp-864], rax
		mov     rax, rbp
		sub     rax, 872
		mov     qword [rbp-880], rax
		mov     rax, rbp
		sub     rax, 888
		mov     qword [rbp-896], rax
		mov     rax, rbp
		sub     rax, 904
		mov     qword [rbp-912], rax
		mov     rax, rbp
		sub     rax, 920
		mov     qword [rbp-928], rax
		mov     rax, rbp
		sub     rax, 936
		mov     qword [rbp-944], rax
		mov     rax, rbp
		sub     rax, 952
		mov     qword [rbp-960], rax
		mov     rax, rbp
		sub     rax, 968
		mov     qword [rbp-976], rax
		mov     rax, rbp
		sub     rax, 984
		mov     qword [rbp-992], rax
		mov     rax, rbp
		sub     rax, 1000
		mov     qword [rbp-1008], rax
		mov     rax, rbp
		sub     rax, 1016
		mov     qword [rbp-1024], rax
		mov     rax, rbp
		sub     rax, 1032
		mov     qword [rbp-1040], rax
		mov     rax, rbp
		sub     rax, 1048
		mov     qword [rbp-1056], rax
		mov     rax, rbp
		sub     rax, 1064
		mov     qword [rbp-1072], rax
		mov     rax, rbp
		sub     rax, 1080
		mov     qword [rbp-1088], rax
		mov     rax, rbp
		sub     rax, 1096
		mov     qword [rbp-1104], rax
		mov     rax, rbp
		sub     rax, 1112
		mov     qword [rbp-1120], rax
		mov     rax, rbp
		sub     rax, 1128
		mov     qword [rbp-1136], rax
		mov     rax, rbp
		sub     rax, 1144
		mov     qword [rbp-1152], rax
		mov     rax, rbp
		sub     rax, 1160
		mov     qword [rbp-1168], rax
		mov     rax, rbp
		sub     rax, 1176
		mov     qword [rbp-1184], rax
		mov     rax, rbp
		sub     rax, 1192
		mov     qword [rbp-1200], rax
		mov     rax, rbp
		sub     rax, 1208
		mov     qword [rbp-1216], rax
		mov     rax, rbp
		sub     rax, 1224
		mov     qword [rbp-1232], rax
		mov     rax, rbp
		sub     rax, 1240
		mov     qword [rbp-1248], rax
		mov     rax, rbp
		sub     rax, 1256
		mov     qword [rbp-1264], rax
		mov     rax, rbp
		sub     rax, 1272
		mov     qword [rbp-1280], rax
		mov     rax, rbp
		sub     rax, 1288
		mov     qword [rbp-1296], rax
		mov     rax, rbp
		sub     rax, 1304
		mov     qword [rbp-1312], rax
		mov     rax, rbp
		sub     rax, 1320
		mov     qword [rbp-1328], rax
		mov     rax, rbp
		sub     rax, 1336
		mov     qword [rbp-1344], rax
		mov     rax, rbp
		sub     rax, 1352
		mov     qword [rbp-1360], rax
		mov     rax, rbp
		sub     rax, 1368
		mov     qword [rbp-1376], rax
		mov     rax, rbp
		sub     rax, 1384
		mov     qword [rbp-1392], rax
		mov     rax, rbp
		sub     rax, 1400
		mov     qword [rbp-1408], rax
		mov     rax, rbp
		sub     rax, 1416
		mov     qword [rbp-1424], rax
		mov     rax, rbp
		sub     rax, 1432
		mov     qword [rbp-1440], rax
		mov     rax, rbp
		sub     rax, 1448
		mov     qword [rbp-1456], rax
		mov     rax, rbp
		sub     rax, 1464
		mov     qword [rbp-1472], rax
		mov     rax, rbp
		sub     rax, 1480
		mov     qword [rbp-1488], rax
		mov     rax, rbp
		sub     rax, 1496
		mov     qword [rbp-1504], rax
		mov     rax, rbp
		sub     rax, 1512
		mov     qword [rbp-1520], rax
		mov     rax, rbp
		sub     rax, 1528
		mov     qword [rbp-1536], rax
		mov     rax, rbp
		sub     rax, 1544
		mov     qword [rbp-1552], rax
		mov     rax, rbp
		sub     rax, 1560
		mov     qword [rbp-1568], rax
		mov     rax, rbp
		sub     rax, 1576
		mov     qword [rbp-1584], rax
		mov     rax, rbp
		sub     rax, 1592
		mov     qword [rbp-1600], rax
		mov     rax, rbp
		sub     rax, 1608
		mov     qword [rbp-1616], rax
		mov     rax, rbp
		sub     rax, 1624
		mov     qword [rbp-1632], rax
		mov     rax, rbp
		sub     rax, 1640
		mov     qword [rbp-1648], rax
		mov     rax, rbp
		sub     rax, 1656
		mov     qword [rbp-1664], rax
		call    getInt
		mov     qword [rbp-1672], rax
		mov     rax, qword [rbp-1672]
		sub     rax, 1
		mov     qword [rbp-1680], rax
		mov     rax, qword [rbp-1672]
		imul    rax, qword [rbp-1672]
		mov     qword [rbp-1688], rax
		mov     rax, qword [rbp-1688]
		imul    rax, 8
		mov     qword [rbp-1696], rax
		mov     rax, qword [rbp-1696]
		add     rax, 8
		mov     qword [rbp-1704], rax
		mov     rdi, qword [rbp-1704]
		call    malloc
		mov     qword [rbp-1712], rax
		mov     rax, qword [rbp-1688]
		mov     rdx, qword [rbp-1712]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L5
L5:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-1720], rax
		mov     rax, qword [rbp-1672]
		imul    rax, qword [rbp-1672]
		mov     qword [rbp-1728], rax
		mov     rax, qword [rbp-1720]
		cmp     rax, qword [rbp-1728]
		setl    al
		movzx   rax, al
		mov     qword [rbp-1736], rax
		mov     rax, qword [rbp-1736]
		cmp     rax, 0
		jne     L6
		jmp     L7
L6:
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-1744], rax
		mov     rax, qword [rbp-1720]
		imul    rax, 8
		mov     qword [rbp-1752], rax
		mov     rax, qword [rbp-1744]
		add     rax, qword [rbp-1752]
		mov     qword [rbp-1760], rax
		mov     rax, 0
		mov     rdx, qword [rbp-1760]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1720]
		inc     rax
		mov     qword [rbp-1768], rax
		mov     rax, qword [rbp-1768]
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L5
L7:
		mov     rax, qword [rbp-1672]
		imul    rax, qword [rbp-1672]
		mov     qword [rbp-1776], rax
		mov     rax, qword [rbp-1776]
		imul    rax, 8
		mov     qword [rbp-1784], rax
		mov     rax, qword [rbp-1784]
		add     rax, 8
		mov     qword [rbp-1792], rax
		mov     rdi, qword [rbp-1792]
		call    malloc
		mov     qword [rbp-1800], rax
		mov     rax, qword [rbp-1776]
		mov     rdx, qword [rbp-1800]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-80]
		mov     qword [rdx], rax
		jmp     L8
L8:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-1808], rax
		mov     rax, qword [rbp-1672]
		imul    rax, qword [rbp-1672]
		mov     qword [rbp-1816], rax
		mov     rax, qword [rbp-1808]
		cmp     rax, qword [rbp-1816]
		setl    al
		movzx   rax, al
		mov     qword [rbp-1824], rax
		mov     rax, qword [rbp-1824]
		cmp     rax, 0
		jne     L9
		jmp     L10
L9:
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-1832], rax
		mov     rax, qword [rbp-1808]
		imul    rax, 8
		mov     qword [rbp-1840], rax
		mov     rax, qword [rbp-1832]
		add     rax, qword [rbp-1840]
		mov     qword [rbp-1848], rax
		mov     rax, 0
		mov     rdx, qword [rbp-1848]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1808]
		inc     rax
		mov     qword [rbp-1856], rax
		mov     rax, qword [rbp-1856]
		mov     rdx, qword [rbp-80]
		mov     qword [rdx], rax
		jmp     L8
L10:
		mov     rax, qword [rbp-1672]
		imul    rax, 8
		mov     qword [rbp-1864], rax
		mov     rax, qword [rbp-1864]
		add     rax, 8
		mov     qword [rbp-1872], rax
		mov     rdi, qword [rbp-1872]
		call    malloc
		mov     qword [rbp-1880], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1880]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-64]
		mov     qword [rdx], rax
		jmp     L11
L11:
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-1888], rax
		mov     rax, qword [rbp-1888]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-1896], rax
		mov     rax, qword [rbp-1896]
		cmp     rax, 0
		jne     L12
		jmp     L16
L12:
		mov     rax, qword [rbp-1672]
		imul    rax, 8
		mov     qword [rbp-1904], rax
		mov     rax, qword [rbp-1904]
		add     rax, 8
		mov     qword [rbp-1912], rax
		mov     rdi, qword [rbp-1912]
		call    malloc
		mov     qword [rbp-1920], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1920]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-1928], rax
		mov     rax, qword [rbp-1888]
		imul    rax, 8
		mov     qword [rbp-1936], rax
		mov     rax, qword [rbp-1928]
		add     rax, qword [rbp-1936]
		mov     qword [rbp-1944], rax
		mov     rax, qword [rbp-1920]
		mov     rdx, qword [rbp-1944]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-1232]
		mov     qword [rdx], rax
		jmp     L13
L13:
		mov     rdx, qword [rbp-1232]
		mov     rax, qword [rdx]
		mov     qword [rbp-1952], rax
		mov     rax, qword [rbp-1952]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-1960], rax
		mov     rax, qword [rbp-1960]
		cmp     rax, 0
		jne     L14
		jmp     L15
L14:
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-1968], rax
		mov     rax, qword [rbp-1888]
		imul    rax, 8
		mov     qword [rbp-1976], rax
		mov     rax, qword [rbp-1968]
		add     rax, qword [rbp-1976]
		mov     qword [rbp-1984], rax
		mov     rdx, qword [rbp-1984]
		mov     rax, qword [rdx]
		mov     qword [rbp-1992], rax
		mov     rax, qword [rbp-1992]
		add     rax, 8
		mov     qword [rbp-2000], rax
		mov     rax, qword [rbp-1952]
		imul    rax, 8
		mov     qword [rbp-2008], rax
		mov     rax, qword [rbp-2000]
		add     rax, qword [rbp-2008]
		mov     qword [rbp-2016], rax
		mov     rax, -1
		mov     rdx, qword [rbp-2016]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1952]
		inc     rax
		mov     qword [rbp-2024], rax
		mov     rax, qword [rbp-2024]
		mov     rdx, qword [rbp-1232]
		mov     qword [rdx], rax
		jmp     L13
L15:
		mov     rax, qword [rbp-1888]
		inc     rax
		mov     qword [rbp-2032], rax
		mov     rax, qword [rbp-2032]
		mov     rdx, qword [rbp-64]
		mov     qword [rdx], rax
		jmp     L11
L16:
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-2040], rax
		mov     rax, qword [rbp-2040]
		add     rax, 0
		mov     qword [rbp-2048], rax
		mov     rax, 0
		mov     rdx, qword [rbp-2048]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-2056], rax
		mov     rax, qword [rbp-2056]
		add     rax, 0
		mov     qword [rbp-2064], rax
		mov     rax, 0
		mov     rdx, qword [rbp-2064]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-2072], rax
		mov     rax, qword [rbp-2072]
		add     rax, 0
		mov     qword [rbp-2080], rax
		mov     rdx, qword [rbp-2080]
		mov     rax, qword [rdx]
		mov     qword [rbp-2088], rax
		mov     rax, qword [rbp-2088]
		add     rax, 8
		mov     qword [rbp-2096], rax
		mov     rax, qword [rbp-2096]
		add     rax, 0
		mov     qword [rbp-2104], rax
		mov     rax, 0
		mov     rdx, qword [rbp-2104]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-752]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-736]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-720]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-704]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-688]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-672]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-656]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-640]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-624]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-608]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-592]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-576]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-560]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-544]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-528]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-512]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-496]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-480]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-464]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-448]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-432]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-416]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-400]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-384]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-368]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-352]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-336]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-320]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-304]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-288]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-272]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-256]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-240]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-224]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-208]
		mov     qword [rdx], rax
		jmp     L17
L17:
		mov     rdx, qword [rbp-752]
		mov     rax, qword [rdx]
		mov     qword [rbp-2112], rax
		mov     rdx, qword [rbp-736]
		mov     rax, qword [rdx]
		mov     qword [rbp-2120], rax
		mov     rdx, qword [rbp-720]
		mov     rax, qword [rdx]
		mov     qword [rbp-2128], rax
		mov     rdx, qword [rbp-704]
		mov     rax, qword [rdx]
		mov     qword [rbp-2136], rax
		mov     rdx, qword [rbp-688]
		mov     rax, qword [rdx]
		mov     qword [rbp-2144], rax
		mov     rdx, qword [rbp-672]
		mov     rax, qword [rdx]
		mov     qword [rbp-2152], rax
		mov     rdx, qword [rbp-656]
		mov     rax, qword [rdx]
		mov     qword [rbp-2160], rax
		mov     rdx, qword [rbp-640]
		mov     rax, qword [rdx]
		mov     qword [rbp-2168], rax
		mov     rdx, qword [rbp-624]
		mov     rax, qword [rdx]
		mov     qword [rbp-2176], rax
		mov     rdx, qword [rbp-608]
		mov     rax, qword [rdx]
		mov     qword [rbp-2184], rax
		mov     rdx, qword [rbp-592]
		mov     rax, qword [rdx]
		mov     qword [rbp-2192], rax
		mov     rdx, qword [rbp-576]
		mov     rax, qword [rdx]
		mov     qword [rbp-2200], rax
		mov     rdx, qword [rbp-560]
		mov     rax, qword [rdx]
		mov     qword [rbp-2208], rax
		mov     rdx, qword [rbp-544]
		mov     rax, qword [rdx]
		mov     qword [rbp-2216], rax
		mov     rdx, qword [rbp-528]
		mov     rax, qword [rdx]
		mov     qword [rbp-2224], rax
		mov     rdx, qword [rbp-512]
		mov     rax, qword [rdx]
		mov     qword [rbp-2232], rax
		mov     rdx, qword [rbp-496]
		mov     rax, qword [rdx]
		mov     qword [rbp-2240], rax
		mov     rdx, qword [rbp-480]
		mov     rax, qword [rdx]
		mov     qword [rbp-2248], rax
		mov     rdx, qword [rbp-464]
		mov     rax, qword [rdx]
		mov     qword [rbp-2256], rax
		mov     rdx, qword [rbp-448]
		mov     rax, qword [rdx]
		mov     qword [rbp-2264], rax
		mov     rdx, qword [rbp-432]
		mov     rax, qword [rdx]
		mov     qword [rbp-2272], rax
		mov     rdx, qword [rbp-416]
		mov     rax, qword [rdx]
		mov     qword [rbp-2280], rax
		mov     rdx, qword [rbp-400]
		mov     rax, qword [rdx]
		mov     qword [rbp-2288], rax
		mov     rdx, qword [rbp-384]
		mov     rax, qword [rdx]
		mov     qword [rbp-2296], rax
		mov     rdx, qword [rbp-368]
		mov     rax, qword [rdx]
		mov     qword [rbp-2304], rax
		mov     rdx, qword [rbp-352]
		mov     rax, qword [rdx]
		mov     qword [rbp-2312], rax
		mov     rdx, qword [rbp-336]
		mov     rax, qword [rdx]
		mov     qword [rbp-2320], rax
		mov     rdx, qword [rbp-320]
		mov     rax, qword [rdx]
		mov     qword [rbp-2328], rax
		mov     rdx, qword [rbp-304]
		mov     rax, qword [rdx]
		mov     qword [rbp-2336], rax
		mov     rdx, qword [rbp-288]
		mov     rax, qword [rdx]
		mov     qword [rbp-2344], rax
		mov     rdx, qword [rbp-272]
		mov     rax, qword [rdx]
		mov     qword [rbp-2352], rax
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-2360], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-2368], rax
		mov     rdx, qword [rbp-224]
		mov     rax, qword [rdx]
		mov     qword [rbp-2376], rax
		mov     rdx, qword [rbp-208]
		mov     rax, qword [rdx]
		mov     qword [rbp-2384], rax
		mov     rax, qword [rbp-2112]
		cmp     rax, qword [rbp-2120]
		setle   al
		movzx   rax, al
		mov     qword [rbp-2392], rax
		mov     rax, qword [rbp-2392]
		cmp     rax, 0
		jne     L19
		jmp     L18
L18:
		mov     rax, qword [rbp-2128]
		mov     rdx, qword [rbp-1280]
		mov     qword [rdx], rax
		jmp     L174
L19:
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-2400], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-2408], rax
		mov     rax, qword [rbp-2112]
		imul    rax, 8
		mov     qword [rbp-2416], rax
		mov     rax, qword [rbp-2408]
		add     rax, qword [rbp-2416]
		mov     qword [rbp-2424], rax
		mov     rdx, qword [rbp-2424]
		mov     rax, qword [rdx]
		mov     qword [rbp-2432], rax
		mov     rax, qword [rbp-2432]
		imul    rax, 8
		mov     qword [rbp-2440], rax
		mov     rax, qword [rbp-2400]
		add     rax, qword [rbp-2440]
		mov     qword [rbp-2448], rax
		mov     rdx, qword [rbp-2448]
		mov     rax, qword [rdx]
		mov     qword [rbp-2456], rax
		mov     rax, qword [rbp-2456]
		add     rax, 8
		mov     qword [rbp-2464], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-2472], rax
		mov     rax, qword [rbp-2472]
		add     rax, qword [rbp-2416]
		mov     qword [rbp-2480], rax
		mov     rdx, qword [rbp-2480]
		mov     rax, qword [rdx]
		mov     qword [rbp-2488], rax
		mov     rax, qword [rbp-2488]
		imul    rax, 8
		mov     qword [rbp-2496], rax
		mov     rax, qword [rbp-2464]
		add     rax, qword [rbp-2496]
		mov     qword [rbp-2504], rax
		mov     rdx, qword [rbp-2504]
		mov     rax, qword [rdx]
		mov     qword [rbp-2512], rax
		mov     rdx, qword [rbp-2424]
		mov     rax, qword [rdx]
		mov     qword [rbp-2520], rax
		mov     rax, qword [rbp-2520]
		sub     rax, 1
		mov     qword [rbp-2528], rax
		mov     rdx, qword [rbp-2480]
		mov     rax, qword [rdx]
		mov     qword [rbp-2536], rax
		mov     rax, qword [rbp-2536]
		sub     rax, 2
		mov     qword [rbp-2544], rax
		mov     rax, qword [rbp-2528]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-2552], rax
		mov     rax, qword [rbp-2552]
		cmp     rax, 0
		jne     L20
		jmp     L22
L20:
		mov     rax, qword [rbp-2528]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-2560], rax
		mov     rax, qword [rbp-2560]
		cmp     rax, 0
		jne     L21
		jmp     L22
L21:
		mov     rax, 1
		mov     rdx, qword [rbp-1264]
		mov     qword [rdx], rax
		jmp     L23
L22:
		mov     rax, 0
		mov     rdx, qword [rbp-1264]
		mov     qword [rdx], rax
		jmp     L23
L23:
		mov     rdx, qword [rbp-1264]
		mov     rax, qword [rdx]
		mov     qword [rbp-2568], rax
		mov     rax, qword [rbp-2568]
		cmp     rax, 0
		jne     L25
		jmp     L24
L24:
		mov     rax, qword [rbp-2120]
		mov     rdx, qword [rbp-1392]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2128]
		mov     rdx, qword [rbp-1376]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2136]
		mov     rdx, qword [rbp-1360]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2144]
		mov     rdx, qword [rbp-1344]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2152]
		mov     rdx, qword [rbp-1328]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2160]
		mov     rdx, qword [rbp-1312]
		mov     qword [rdx], rax
		jmp     L38
L25:
		mov     rax, qword [rbp-2544]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-2576], rax
		mov     rax, qword [rbp-2576]
		cmp     rax, 0
		jne     L26
		jmp     L28
L26:
		mov     rax, qword [rbp-2544]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-2584], rax
		mov     rax, qword [rbp-2584]
		cmp     rax, 0
		jne     L27
		jmp     L28
L27:
		mov     rax, 1
		mov     rdx, qword [rbp-1664]
		mov     qword [rdx], rax
		jmp     L29
L28:
		mov     rax, 0
		mov     rdx, qword [rbp-1664]
		mov     qword [rdx], rax
		jmp     L29
L29:
		mov     rdx, qword [rbp-1664]
		mov     rax, qword [rdx]
		mov     qword [rbp-2592], rax
		mov     rax, qword [rbp-2592]
		cmp     rax, 0
		jne     L31
		jmp     L30
L30:
		mov     rax, qword [rbp-2120]
		mov     rdx, qword [rbp-1392]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2128]
		mov     rdx, qword [rbp-1376]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2592]
		mov     rdx, qword [rbp-1360]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2592]
		mov     rdx, qword [rbp-1344]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1328]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2544]
		mov     rdx, qword [rbp-1312]
		mov     qword [rdx], rax
		jmp     L38
L31:
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-2600], rax
		mov     rax, qword [rbp-2528]
		imul    rax, 8
		mov     qword [rbp-2608], rax
		mov     rax, qword [rbp-2600]
		add     rax, qword [rbp-2608]
		mov     qword [rbp-2616], rax
		mov     rdx, qword [rbp-2616]
		mov     rax, qword [rdx]
		mov     qword [rbp-2624], rax
		mov     rax, qword [rbp-2624]
		add     rax, 8
		mov     qword [rbp-2632], rax
		mov     rax, qword [rbp-2544]
		imul    rax, 8
		mov     qword [rbp-2640], rax
		mov     rax, qword [rbp-2632]
		add     rax, qword [rbp-2640]
		mov     qword [rbp-2648], rax
		mov     rdx, qword [rbp-2648]
		mov     rax, qword [rdx]
		mov     qword [rbp-2656], rax
		mov     rax, qword [rbp-2656]
		cmp     rax, -1
		sete    al
		movzx   rax, al
		mov     qword [rbp-2664], rax
		mov     rax, qword [rbp-2664]
		cmp     rax, 0
		jne     L33
		jmp     L32
L32:
		mov     rax, qword [rbp-2120]
		mov     rdx, qword [rbp-1392]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2128]
		mov     rdx, qword [rbp-1376]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2592]
		mov     rdx, qword [rbp-1360]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2592]
		mov     rdx, qword [rbp-1344]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1328]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2544]
		mov     rdx, qword [rbp-1312]
		mov     qword [rdx], rax
		jmp     L38
L33:
		mov     rax, qword [rbp-2120]
		add     rax, 1
		mov     qword [rbp-2672], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-2680], rax
		mov     rax, qword [rbp-2672]
		imul    rax, 8
		mov     qword [rbp-2688], rax
		mov     rax, qword [rbp-2680]
		add     rax, qword [rbp-2688]
		mov     qword [rbp-2696], rax
		mov     rax, qword [rbp-2528]
		mov     rdx, qword [rbp-2696]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-2704], rax
		mov     rax, qword [rbp-2704]
		add     rax, qword [rbp-2688]
		mov     qword [rbp-2712], rax
		mov     rax, qword [rbp-2544]
		mov     rdx, qword [rbp-2712]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2512]
		add     rax, 1
		mov     qword [rbp-2720], rax
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-2728], rax
		mov     rax, qword [rbp-2528]
		imul    rax, 8
		mov     qword [rbp-2736], rax
		mov     rax, qword [rbp-2728]
		add     rax, qword [rbp-2736]
		mov     qword [rbp-2744], rax
		mov     rdx, qword [rbp-2744]
		mov     rax, qword [rdx]
		mov     qword [rbp-2752], rax
		mov     rax, qword [rbp-2752]
		add     rax, 8
		mov     qword [rbp-2760], rax
		mov     rax, qword [rbp-2544]
		imul    rax, 8
		mov     qword [rbp-2768], rax
		mov     rax, qword [rbp-2760]
		add     rax, qword [rbp-2768]
		mov     qword [rbp-2776], rax
		mov     rax, qword [rbp-2720]
		mov     rdx, qword [rbp-2776]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2528]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-2784], rax
		mov     rax, qword [rbp-2784]
		cmp     rax, 0
		jne     L35
		jmp     L34
L34:
		mov     rax, qword [rbp-2672]
		mov     rdx, qword [rbp-1392]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2128]
		mov     rdx, qword [rbp-1376]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2592]
		mov     rdx, qword [rbp-1360]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2592]
		mov     rdx, qword [rbp-1344]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1328]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2544]
		mov     rdx, qword [rbp-1312]
		mov     qword [rdx], rax
		jmp     L38
L35:
		mov     rax, qword [rbp-2544]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-2792], rax
		mov     rax, qword [rbp-2792]
		cmp     rax, 0
		jne     L37
		jmp     L36
L36:
		mov     rax, qword [rbp-2672]
		mov     rdx, qword [rbp-1392]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2128]
		mov     rdx, qword [rbp-1376]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2592]
		mov     rdx, qword [rbp-1360]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2592]
		mov     rdx, qword [rbp-1344]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1328]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2544]
		mov     rdx, qword [rbp-1312]
		mov     qword [rdx], rax
		jmp     L38
L37:
		mov     rax, qword [rbp-2672]
		mov     rdx, qword [rbp-1392]
		mov     qword [rdx], rax
		mov     rax, 1
		mov     rdx, qword [rbp-1376]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2592]
		mov     rdx, qword [rbp-1360]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2592]
		mov     rdx, qword [rbp-1344]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1328]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2544]
		mov     rdx, qword [rbp-1312]
		mov     qword [rdx], rax
		jmp     L38
L38:
		mov     rdx, qword [rbp-1392]
		mov     rax, qword [rdx]
		mov     qword [rbp-2800], rax
		mov     rdx, qword [rbp-1376]
		mov     rax, qword [rdx]
		mov     qword [rbp-2808], rax
		mov     rdx, qword [rbp-1360]
		mov     rax, qword [rdx]
		mov     qword [rbp-2816], rax
		mov     rdx, qword [rbp-1344]
		mov     rax, qword [rdx]
		mov     qword [rbp-2824], rax
		mov     rdx, qword [rbp-1328]
		mov     rax, qword [rdx]
		mov     qword [rbp-2832], rax
		mov     rdx, qword [rbp-1312]
		mov     rax, qword [rdx]
		mov     qword [rbp-2840], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-2848], rax
		mov     rax, qword [rbp-2112]
		imul    rax, 8
		mov     qword [rbp-2856], rax
		mov     rax, qword [rbp-2848]
		add     rax, qword [rbp-2856]
		mov     qword [rbp-2864], rax
		mov     rdx, qword [rbp-2864]
		mov     rax, qword [rdx]
		mov     qword [rbp-2872], rax
		mov     rax, qword [rbp-2872]
		sub     rax, 1
		mov     qword [rbp-2880], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-2888], rax
		mov     rax, qword [rbp-2888]
		add     rax, qword [rbp-2856]
		mov     qword [rbp-2896], rax
		mov     rdx, qword [rbp-2896]
		mov     rax, qword [rdx]
		mov     qword [rbp-2904], rax
		mov     rax, qword [rbp-2904]
		add     rax, 2
		mov     qword [rbp-2912], rax
		mov     rax, qword [rbp-2880]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-2920], rax
		mov     rax, qword [rbp-2920]
		cmp     rax, 0
		jne     L39
		jmp     L41
L39:
		mov     rax, qword [rbp-2880]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-2928], rax
		mov     rax, qword [rbp-2928]
		cmp     rax, 0
		jne     L40
		jmp     L41
L40:
		mov     rax, 1
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		jmp     L42
L41:
		mov     rax, 0
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		jmp     L42
L42:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-2936], rax
		mov     rax, qword [rbp-2936]
		cmp     rax, 0
		jne     L44
		jmp     L43
L43:
		mov     rax, qword [rbp-2800]
		mov     rdx, qword [rbp-1504]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2808]
		mov     rdx, qword [rbp-1488]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2168]
		mov     rdx, qword [rbp-1472]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2176]
		mov     rdx, qword [rbp-1456]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2184]
		mov     rdx, qword [rbp-1440]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2192]
		mov     rdx, qword [rbp-1424]
		mov     qword [rdx], rax
		jmp     L57
L44:
		mov     rax, qword [rbp-2912]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-2944], rax
		mov     rax, qword [rbp-2944]
		cmp     rax, 0
		jne     L45
		jmp     L47
L45:
		mov     rax, qword [rbp-2912]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-2952], rax
		mov     rax, qword [rbp-2952]
		cmp     rax, 0
		jne     L46
		jmp     L47
L46:
		mov     rax, 1
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		jmp     L48
L47:
		mov     rax, 0
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		jmp     L48
L48:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-2960], rax
		mov     rax, qword [rbp-2960]
		cmp     rax, 0
		jne     L50
		jmp     L49
L49:
		mov     rax, qword [rbp-2800]
		mov     rdx, qword [rbp-1504]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2808]
		mov     rdx, qword [rbp-1488]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2960]
		mov     rdx, qword [rbp-1472]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2960]
		mov     rdx, qword [rbp-1456]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1440]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2912]
		mov     rdx, qword [rbp-1424]
		mov     qword [rdx], rax
		jmp     L57
L50:
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-2968], rax
		mov     rax, qword [rbp-2880]
		imul    rax, 8
		mov     qword [rbp-2976], rax
		mov     rax, qword [rbp-2968]
		add     rax, qword [rbp-2976]
		mov     qword [rbp-2984], rax
		mov     rdx, qword [rbp-2984]
		mov     rax, qword [rdx]
		mov     qword [rbp-2992], rax
		mov     rax, qword [rbp-2992]
		add     rax, 8
		mov     qword [rbp-3000], rax
		mov     rax, qword [rbp-2912]
		imul    rax, 8
		mov     qword [rbp-3008], rax
		mov     rax, qword [rbp-3000]
		add     rax, qword [rbp-3008]
		mov     qword [rbp-3016], rax
		mov     rdx, qword [rbp-3016]
		mov     rax, qword [rdx]
		mov     qword [rbp-3024], rax
		mov     rax, qword [rbp-3024]
		cmp     rax, -1
		sete    al
		movzx   rax, al
		mov     qword [rbp-3032], rax
		mov     rax, qword [rbp-3032]
		cmp     rax, 0
		jne     L52
		jmp     L51
L51:
		mov     rax, qword [rbp-2800]
		mov     rdx, qword [rbp-1504]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2808]
		mov     rdx, qword [rbp-1488]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2960]
		mov     rdx, qword [rbp-1472]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2960]
		mov     rdx, qword [rbp-1456]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1440]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2912]
		mov     rdx, qword [rbp-1424]
		mov     qword [rdx], rax
		jmp     L57
L52:
		mov     rax, qword [rbp-2800]
		add     rax, 1
		mov     qword [rbp-3040], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-3048], rax
		mov     rax, qword [rbp-3040]
		imul    rax, 8
		mov     qword [rbp-3056], rax
		mov     rax, qword [rbp-3048]
		add     rax, qword [rbp-3056]
		mov     qword [rbp-3064], rax
		mov     rax, qword [rbp-2880]
		mov     rdx, qword [rbp-3064]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-3072], rax
		mov     rax, qword [rbp-3072]
		add     rax, qword [rbp-3056]
		mov     qword [rbp-3080], rax
		mov     rax, qword [rbp-2912]
		mov     rdx, qword [rbp-3080]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2512]
		add     rax, 1
		mov     qword [rbp-3088], rax
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-3096], rax
		mov     rax, qword [rbp-2880]
		imul    rax, 8
		mov     qword [rbp-3104], rax
		mov     rax, qword [rbp-3096]
		add     rax, qword [rbp-3104]
		mov     qword [rbp-3112], rax
		mov     rdx, qword [rbp-3112]
		mov     rax, qword [rdx]
		mov     qword [rbp-3120], rax
		mov     rax, qword [rbp-3120]
		add     rax, 8
		mov     qword [rbp-3128], rax
		mov     rax, qword [rbp-2912]
		imul    rax, 8
		mov     qword [rbp-3136], rax
		mov     rax, qword [rbp-3128]
		add     rax, qword [rbp-3136]
		mov     qword [rbp-3144], rax
		mov     rax, qword [rbp-3088]
		mov     rdx, qword [rbp-3144]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2880]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-3152], rax
		mov     rax, qword [rbp-3152]
		cmp     rax, 0
		jne     L54
		jmp     L53
L53:
		mov     rax, qword [rbp-3040]
		mov     rdx, qword [rbp-1504]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2808]
		mov     rdx, qword [rbp-1488]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2960]
		mov     rdx, qword [rbp-1472]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2960]
		mov     rdx, qword [rbp-1456]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1440]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2912]
		mov     rdx, qword [rbp-1424]
		mov     qword [rdx], rax
		jmp     L57
L54:
		mov     rax, qword [rbp-2912]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-3160], rax
		mov     rax, qword [rbp-3160]
		cmp     rax, 0
		jne     L56
		jmp     L55
L55:
		mov     rax, qword [rbp-3040]
		mov     rdx, qword [rbp-1504]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2808]
		mov     rdx, qword [rbp-1488]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2960]
		mov     rdx, qword [rbp-1472]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2960]
		mov     rdx, qword [rbp-1456]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1440]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2912]
		mov     rdx, qword [rbp-1424]
		mov     qword [rdx], rax
		jmp     L57
L56:
		mov     rax, qword [rbp-3040]
		mov     rdx, qword [rbp-1504]
		mov     qword [rdx], rax
		mov     rax, 1
		mov     rdx, qword [rbp-1488]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2960]
		mov     rdx, qword [rbp-1472]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2960]
		mov     rdx, qword [rbp-1456]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1440]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2912]
		mov     rdx, qword [rbp-1424]
		mov     qword [rdx], rax
		jmp     L57
L57:
		mov     rdx, qword [rbp-1504]
		mov     rax, qword [rdx]
		mov     qword [rbp-3168], rax
		mov     rdx, qword [rbp-1488]
		mov     rax, qword [rdx]
		mov     qword [rbp-3176], rax
		mov     rdx, qword [rbp-1472]
		mov     rax, qword [rdx]
		mov     qword [rbp-3184], rax
		mov     rdx, qword [rbp-1456]
		mov     rax, qword [rdx]
		mov     qword [rbp-3192], rax
		mov     rdx, qword [rbp-1440]
		mov     rax, qword [rdx]
		mov     qword [rbp-3200], rax
		mov     rdx, qword [rbp-1424]
		mov     rax, qword [rdx]
		mov     qword [rbp-3208], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-3216], rax
		mov     rax, qword [rbp-2112]
		imul    rax, 8
		mov     qword [rbp-3224], rax
		mov     rax, qword [rbp-3216]
		add     rax, qword [rbp-3224]
		mov     qword [rbp-3232], rax
		mov     rdx, qword [rbp-3232]
		mov     rax, qword [rdx]
		mov     qword [rbp-3240], rax
		mov     rax, qword [rbp-3240]
		add     rax, 1
		mov     qword [rbp-3248], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-3256], rax
		mov     rax, qword [rbp-3256]
		add     rax, qword [rbp-3224]
		mov     qword [rbp-3264], rax
		mov     rdx, qword [rbp-3264]
		mov     rax, qword [rdx]
		mov     qword [rbp-3272], rax
		mov     rax, qword [rbp-3272]
		sub     rax, 2
		mov     qword [rbp-3280], rax
		mov     rax, qword [rbp-3248]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-3288], rax
		mov     rax, qword [rbp-3288]
		cmp     rax, 0
		jne     L58
		jmp     L60
L58:
		mov     rax, qword [rbp-3248]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-3296], rax
		mov     rax, qword [rbp-3296]
		cmp     rax, 0
		jne     L59
		jmp     L60
L59:
		mov     rax, 1
		mov     rdx, qword [rbp-880]
		mov     qword [rdx], rax
		jmp     L61
L60:
		mov     rax, 0
		mov     rdx, qword [rbp-880]
		mov     qword [rdx], rax
		jmp     L61
L61:
		mov     rdx, qword [rbp-880]
		mov     rax, qword [rdx]
		mov     qword [rbp-3304], rax
		mov     rax, qword [rbp-3304]
		cmp     rax, 0
		jne     L63
		jmp     L62
L62:
		mov     rax, qword [rbp-3168]
		mov     rdx, qword [rbp-848]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3176]
		mov     rdx, qword [rbp-832]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2200]
		mov     rdx, qword [rbp-816]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2208]
		mov     rdx, qword [rbp-800]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2216]
		mov     rdx, qword [rbp-784]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2224]
		mov     rdx, qword [rbp-768]
		mov     qword [rdx], rax
		jmp     L76
L63:
		mov     rax, qword [rbp-3280]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-3312], rax
		mov     rax, qword [rbp-3312]
		cmp     rax, 0
		jne     L64
		jmp     L66
L64:
		mov     rax, qword [rbp-3280]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-3320], rax
		mov     rax, qword [rbp-3320]
		cmp     rax, 0
		jne     L65
		jmp     L66
L65:
		mov     rax, 1
		mov     rdx, qword [rbp-864]
		mov     qword [rdx], rax
		jmp     L67
L66:
		mov     rax, 0
		mov     rdx, qword [rbp-864]
		mov     qword [rdx], rax
		jmp     L67
L67:
		mov     rdx, qword [rbp-864]
		mov     rax, qword [rdx]
		mov     qword [rbp-3328], rax
		mov     rax, qword [rbp-3328]
		cmp     rax, 0
		jne     L69
		jmp     L68
L68:
		mov     rax, qword [rbp-3168]
		mov     rdx, qword [rbp-848]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3176]
		mov     rdx, qword [rbp-832]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3328]
		mov     rdx, qword [rbp-816]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3328]
		mov     rdx, qword [rbp-800]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-784]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3280]
		mov     rdx, qword [rbp-768]
		mov     qword [rdx], rax
		jmp     L76
L69:
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-3336], rax
		mov     rax, qword [rbp-3248]
		imul    rax, 8
		mov     qword [rbp-3344], rax
		mov     rax, qword [rbp-3336]
		add     rax, qword [rbp-3344]
		mov     qword [rbp-3352], rax
		mov     rdx, qword [rbp-3352]
		mov     rax, qword [rdx]
		mov     qword [rbp-3360], rax
		mov     rax, qword [rbp-3360]
		add     rax, 8
		mov     qword [rbp-3368], rax
		mov     rax, qword [rbp-3280]
		imul    rax, 8
		mov     qword [rbp-3376], rax
		mov     rax, qword [rbp-3368]
		add     rax, qword [rbp-3376]
		mov     qword [rbp-3384], rax
		mov     rdx, qword [rbp-3384]
		mov     rax, qword [rdx]
		mov     qword [rbp-3392], rax
		mov     rax, qword [rbp-3392]
		cmp     rax, -1
		sete    al
		movzx   rax, al
		mov     qword [rbp-3400], rax
		mov     rax, qword [rbp-3400]
		cmp     rax, 0
		jne     L71
		jmp     L70
L70:
		mov     rax, qword [rbp-3168]
		mov     rdx, qword [rbp-848]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3176]
		mov     rdx, qword [rbp-832]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3328]
		mov     rdx, qword [rbp-816]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3328]
		mov     rdx, qword [rbp-800]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-784]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3280]
		mov     rdx, qword [rbp-768]
		mov     qword [rdx], rax
		jmp     L76
L71:
		mov     rax, qword [rbp-3168]
		add     rax, 1
		mov     qword [rbp-3408], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-3416], rax
		mov     rax, qword [rbp-3408]
		imul    rax, 8
		mov     qword [rbp-3424], rax
		mov     rax, qword [rbp-3416]
		add     rax, qword [rbp-3424]
		mov     qword [rbp-3432], rax
		mov     rax, qword [rbp-3248]
		mov     rdx, qword [rbp-3432]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-3440], rax
		mov     rax, qword [rbp-3440]
		add     rax, qword [rbp-3424]
		mov     qword [rbp-3448], rax
		mov     rax, qword [rbp-3280]
		mov     rdx, qword [rbp-3448]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2512]
		add     rax, 1
		mov     qword [rbp-3456], rax
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-3464], rax
		mov     rax, qword [rbp-3248]
		imul    rax, 8
		mov     qword [rbp-3472], rax
		mov     rax, qword [rbp-3464]
		add     rax, qword [rbp-3472]
		mov     qword [rbp-3480], rax
		mov     rdx, qword [rbp-3480]
		mov     rax, qword [rdx]
		mov     qword [rbp-3488], rax
		mov     rax, qword [rbp-3488]
		add     rax, 8
		mov     qword [rbp-3496], rax
		mov     rax, qword [rbp-3280]
		imul    rax, 8
		mov     qword [rbp-3504], rax
		mov     rax, qword [rbp-3496]
		add     rax, qword [rbp-3504]
		mov     qword [rbp-3512], rax
		mov     rax, qword [rbp-3456]
		mov     rdx, qword [rbp-3512]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3248]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-3520], rax
		mov     rax, qword [rbp-3520]
		cmp     rax, 0
		jne     L73
		jmp     L72
L72:
		mov     rax, qword [rbp-3408]
		mov     rdx, qword [rbp-848]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3176]
		mov     rdx, qword [rbp-832]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3328]
		mov     rdx, qword [rbp-816]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3328]
		mov     rdx, qword [rbp-800]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-784]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3280]
		mov     rdx, qword [rbp-768]
		mov     qword [rdx], rax
		jmp     L76
L73:
		mov     rax, qword [rbp-3280]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-3528], rax
		mov     rax, qword [rbp-3528]
		cmp     rax, 0
		jne     L75
		jmp     L74
L74:
		mov     rax, qword [rbp-3408]
		mov     rdx, qword [rbp-848]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3176]
		mov     rdx, qword [rbp-832]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3328]
		mov     rdx, qword [rbp-816]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3328]
		mov     rdx, qword [rbp-800]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-784]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3280]
		mov     rdx, qword [rbp-768]
		mov     qword [rdx], rax
		jmp     L76
L75:
		mov     rax, qword [rbp-3408]
		mov     rdx, qword [rbp-848]
		mov     qword [rdx], rax
		mov     rax, 1
		mov     rdx, qword [rbp-832]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3328]
		mov     rdx, qword [rbp-816]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3328]
		mov     rdx, qword [rbp-800]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-784]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3280]
		mov     rdx, qword [rbp-768]
		mov     qword [rdx], rax
		jmp     L76
L76:
		mov     rdx, qword [rbp-848]
		mov     rax, qword [rdx]
		mov     qword [rbp-3536], rax
		mov     rdx, qword [rbp-832]
		mov     rax, qword [rdx]
		mov     qword [rbp-3544], rax
		mov     rdx, qword [rbp-816]
		mov     rax, qword [rdx]
		mov     qword [rbp-3552], rax
		mov     rdx, qword [rbp-800]
		mov     rax, qword [rdx]
		mov     qword [rbp-3560], rax
		mov     rdx, qword [rbp-784]
		mov     rax, qword [rdx]
		mov     qword [rbp-3568], rax
		mov     rdx, qword [rbp-768]
		mov     rax, qword [rdx]
		mov     qword [rbp-3576], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-3584], rax
		mov     rax, qword [rbp-2112]
		imul    rax, 8
		mov     qword [rbp-3592], rax
		mov     rax, qword [rbp-3584]
		add     rax, qword [rbp-3592]
		mov     qword [rbp-3600], rax
		mov     rdx, qword [rbp-3600]
		mov     rax, qword [rdx]
		mov     qword [rbp-3608], rax
		mov     rax, qword [rbp-3608]
		add     rax, 1
		mov     qword [rbp-3616], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-3624], rax
		mov     rax, qword [rbp-3624]
		add     rax, qword [rbp-3592]
		mov     qword [rbp-3632], rax
		mov     rdx, qword [rbp-3632]
		mov     rax, qword [rdx]
		mov     qword [rbp-3640], rax
		mov     rax, qword [rbp-3640]
		add     rax, 2
		mov     qword [rbp-3648], rax
		mov     rax, qword [rbp-3616]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-3656], rax
		mov     rax, qword [rbp-3656]
		cmp     rax, 0
		jne     L77
		jmp     L79
L77:
		mov     rax, qword [rbp-3616]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-3664], rax
		mov     rax, qword [rbp-3664]
		cmp     rax, 0
		jne     L78
		jmp     L79
L78:
		mov     rax, 1
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L80
L79:
		mov     rax, 0
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L80
L80:
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-3672], rax
		mov     rax, qword [rbp-3672]
		cmp     rax, 0
		jne     L82
		jmp     L81
L81:
		mov     rax, qword [rbp-3536]
		mov     rdx, qword [rbp-192]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3544]
		mov     rdx, qword [rbp-176]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2232]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2240]
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2248]
		mov     rdx, qword [rbp-128]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2256]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		jmp     L95
L82:
		mov     rax, qword [rbp-3648]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-3680], rax
		mov     rax, qword [rbp-3680]
		cmp     rax, 0
		jne     L83
		jmp     L85
L83:
		mov     rax, qword [rbp-3648]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-3688], rax
		mov     rax, qword [rbp-3688]
		cmp     rax, 0
		jne     L84
		jmp     L85
L84:
		mov     rax, 1
		mov     rdx, qword [rbp-1216]
		mov     qword [rdx], rax
		jmp     L86
L85:
		mov     rax, 0
		mov     rdx, qword [rbp-1216]
		mov     qword [rdx], rax
		jmp     L86
L86:
		mov     rdx, qword [rbp-1216]
		mov     rax, qword [rdx]
		mov     qword [rbp-3696], rax
		mov     rax, qword [rbp-3696]
		cmp     rax, 0
		jne     L88
		jmp     L87
L87:
		mov     rax, qword [rbp-3536]
		mov     rdx, qword [rbp-192]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3544]
		mov     rdx, qword [rbp-176]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3696]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3696]
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-128]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3648]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		jmp     L95
L88:
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-3704], rax
		mov     rax, qword [rbp-3616]
		imul    rax, 8
		mov     qword [rbp-3712], rax
		mov     rax, qword [rbp-3704]
		add     rax, qword [rbp-3712]
		mov     qword [rbp-3720], rax
		mov     rdx, qword [rbp-3720]
		mov     rax, qword [rdx]
		mov     qword [rbp-3728], rax
		mov     rax, qword [rbp-3728]
		add     rax, 8
		mov     qword [rbp-3736], rax
		mov     rax, qword [rbp-3648]
		imul    rax, 8
		mov     qword [rbp-3744], rax
		mov     rax, qword [rbp-3736]
		add     rax, qword [rbp-3744]
		mov     qword [rbp-3752], rax
		mov     rdx, qword [rbp-3752]
		mov     rax, qword [rdx]
		mov     qword [rbp-3760], rax
		mov     rax, qword [rbp-3760]
		cmp     rax, -1
		sete    al
		movzx   rax, al
		mov     qword [rbp-3768], rax
		mov     rax, qword [rbp-3768]
		cmp     rax, 0
		jne     L90
		jmp     L89
L89:
		mov     rax, qword [rbp-3536]
		mov     rdx, qword [rbp-192]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3544]
		mov     rdx, qword [rbp-176]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3696]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3696]
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-128]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3648]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		jmp     L95
L90:
		mov     rax, qword [rbp-3536]
		add     rax, 1
		mov     qword [rbp-3776], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-3784], rax
		mov     rax, qword [rbp-3776]
		imul    rax, 8
		mov     qword [rbp-3792], rax
		mov     rax, qword [rbp-3784]
		add     rax, qword [rbp-3792]
		mov     qword [rbp-3800], rax
		mov     rax, qword [rbp-3616]
		mov     rdx, qword [rbp-3800]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-3808], rax
		mov     rax, qword [rbp-3808]
		add     rax, qword [rbp-3792]
		mov     qword [rbp-3816], rax
		mov     rax, qword [rbp-3648]
		mov     rdx, qword [rbp-3816]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2512]
		add     rax, 1
		mov     qword [rbp-3824], rax
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-3832], rax
		mov     rax, qword [rbp-3616]
		imul    rax, 8
		mov     qword [rbp-3840], rax
		mov     rax, qword [rbp-3832]
		add     rax, qword [rbp-3840]
		mov     qword [rbp-3848], rax
		mov     rdx, qword [rbp-3848]
		mov     rax, qword [rdx]
		mov     qword [rbp-3856], rax
		mov     rax, qword [rbp-3856]
		add     rax, 8
		mov     qword [rbp-3864], rax
		mov     rax, qword [rbp-3648]
		imul    rax, 8
		mov     qword [rbp-3872], rax
		mov     rax, qword [rbp-3864]
		add     rax, qword [rbp-3872]
		mov     qword [rbp-3880], rax
		mov     rax, qword [rbp-3824]
		mov     rdx, qword [rbp-3880]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3616]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-3888], rax
		mov     rax, qword [rbp-3888]
		cmp     rax, 0
		jne     L92
		jmp     L91
L91:
		mov     rax, qword [rbp-3776]
		mov     rdx, qword [rbp-192]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3544]
		mov     rdx, qword [rbp-176]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3696]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3696]
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-128]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3648]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		jmp     L95
L92:
		mov     rax, qword [rbp-3648]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-3896], rax
		mov     rax, qword [rbp-3896]
		cmp     rax, 0
		jne     L94
		jmp     L93
L93:
		mov     rax, qword [rbp-3776]
		mov     rdx, qword [rbp-192]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3544]
		mov     rdx, qword [rbp-176]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3696]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3696]
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-128]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3648]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		jmp     L95
L94:
		mov     rax, qword [rbp-3776]
		mov     rdx, qword [rbp-192]
		mov     qword [rdx], rax
		mov     rax, 1
		mov     rdx, qword [rbp-176]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3696]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3696]
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-128]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3648]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		jmp     L95
L95:
		mov     rdx, qword [rbp-192]
		mov     rax, qword [rdx]
		mov     qword [rbp-3904], rax
		mov     rdx, qword [rbp-176]
		mov     rax, qword [rdx]
		mov     qword [rbp-3912], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-3920], rax
		mov     rdx, qword [rbp-144]
		mov     rax, qword [rdx]
		mov     qword [rbp-3928], rax
		mov     rdx, qword [rbp-128]
		mov     rax, qword [rdx]
		mov     qword [rbp-3936], rax
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-3944], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-3952], rax
		mov     rax, qword [rbp-2112]
		imul    rax, 8
		mov     qword [rbp-3960], rax
		mov     rax, qword [rbp-3952]
		add     rax, qword [rbp-3960]
		mov     qword [rbp-3968], rax
		mov     rdx, qword [rbp-3968]
		mov     rax, qword [rdx]
		mov     qword [rbp-3976], rax
		mov     rax, qword [rbp-3976]
		sub     rax, 2
		mov     qword [rbp-3984], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-3992], rax
		mov     rax, qword [rbp-3992]
		add     rax, qword [rbp-3960]
		mov     qword [rbp-4000], rax
		mov     rdx, qword [rbp-4000]
		mov     rax, qword [rdx]
		mov     qword [rbp-4008], rax
		mov     rax, qword [rbp-4008]
		sub     rax, 1
		mov     qword [rbp-4016], rax
		mov     rax, qword [rbp-3984]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-4024], rax
		mov     rax, qword [rbp-4024]
		cmp     rax, 0
		jne     L96
		jmp     L98
L96:
		mov     rax, qword [rbp-3984]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-4032], rax
		mov     rax, qword [rbp-4032]
		cmp     rax, 0
		jne     L97
		jmp     L98
L97:
		mov     rax, 1
		mov     rdx, qword [rbp-992]
		mov     qword [rdx], rax
		jmp     L99
L98:
		mov     rax, 0
		mov     rdx, qword [rbp-992]
		mov     qword [rdx], rax
		jmp     L99
L99:
		mov     rdx, qword [rbp-992]
		mov     rax, qword [rdx]
		mov     qword [rbp-4040], rax
		mov     rax, qword [rbp-4040]
		cmp     rax, 0
		jne     L101
		jmp     L100
L100:
		mov     rax, qword [rbp-3904]
		mov     rdx, qword [rbp-1600]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3912]
		mov     rdx, qword [rbp-1584]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2264]
		mov     rdx, qword [rbp-1568]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2272]
		mov     rdx, qword [rbp-1552]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2280]
		mov     rdx, qword [rbp-1536]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2288]
		mov     rdx, qword [rbp-1520]
		mov     qword [rdx], rax
		jmp     L114
L101:
		mov     rax, qword [rbp-4016]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-4048], rax
		mov     rax, qword [rbp-4048]
		cmp     rax, 0
		jne     L102
		jmp     L104
L102:
		mov     rax, qword [rbp-4016]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-4056], rax
		mov     rax, qword [rbp-4056]
		cmp     rax, 0
		jne     L103
		jmp     L104
L103:
		mov     rax, 1
		mov     rdx, qword [rbp-1632]
		mov     qword [rdx], rax
		jmp     L105
L104:
		mov     rax, 0
		mov     rdx, qword [rbp-1632]
		mov     qword [rdx], rax
		jmp     L105
L105:
		mov     rdx, qword [rbp-1632]
		mov     rax, qword [rdx]
		mov     qword [rbp-4064], rax
		mov     rax, qword [rbp-4064]
		cmp     rax, 0
		jne     L107
		jmp     L106
L106:
		mov     rax, qword [rbp-3904]
		mov     rdx, qword [rbp-1600]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3912]
		mov     rdx, qword [rbp-1584]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4064]
		mov     rdx, qword [rbp-1568]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4064]
		mov     rdx, qword [rbp-1552]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1536]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4016]
		mov     rdx, qword [rbp-1520]
		mov     qword [rdx], rax
		jmp     L114
L107:
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-4072], rax
		mov     rax, qword [rbp-3984]
		imul    rax, 8
		mov     qword [rbp-4080], rax
		mov     rax, qword [rbp-4072]
		add     rax, qword [rbp-4080]
		mov     qword [rbp-4088], rax
		mov     rdx, qword [rbp-4088]
		mov     rax, qword [rdx]
		mov     qword [rbp-4096], rax
		mov     rax, qword [rbp-4096]
		add     rax, 8
		mov     qword [rbp-4104], rax
		mov     rax, qword [rbp-4016]
		imul    rax, 8
		mov     qword [rbp-4112], rax
		mov     rax, qword [rbp-4104]
		add     rax, qword [rbp-4112]
		mov     qword [rbp-4120], rax
		mov     rdx, qword [rbp-4120]
		mov     rax, qword [rdx]
		mov     qword [rbp-4128], rax
		mov     rax, qword [rbp-4128]
		cmp     rax, -1
		sete    al
		movzx   rax, al
		mov     qword [rbp-4136], rax
		mov     rax, qword [rbp-4136]
		cmp     rax, 0
		jne     L109
		jmp     L108
L108:
		mov     rax, qword [rbp-3904]
		mov     rdx, qword [rbp-1600]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3912]
		mov     rdx, qword [rbp-1584]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4064]
		mov     rdx, qword [rbp-1568]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4064]
		mov     rdx, qword [rbp-1552]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1536]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4016]
		mov     rdx, qword [rbp-1520]
		mov     qword [rdx], rax
		jmp     L114
L109:
		mov     rax, qword [rbp-3904]
		add     rax, 1
		mov     qword [rbp-4144], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-4152], rax
		mov     rax, qword [rbp-4144]
		imul    rax, 8
		mov     qword [rbp-4160], rax
		mov     rax, qword [rbp-4152]
		add     rax, qword [rbp-4160]
		mov     qword [rbp-4168], rax
		mov     rax, qword [rbp-3984]
		mov     rdx, qword [rbp-4168]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-4176], rax
		mov     rax, qword [rbp-4176]
		add     rax, qword [rbp-4160]
		mov     qword [rbp-4184], rax
		mov     rax, qword [rbp-4016]
		mov     rdx, qword [rbp-4184]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2512]
		add     rax, 1
		mov     qword [rbp-4192], rax
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-4200], rax
		mov     rax, qword [rbp-3984]
		imul    rax, 8
		mov     qword [rbp-4208], rax
		mov     rax, qword [rbp-4200]
		add     rax, qword [rbp-4208]
		mov     qword [rbp-4216], rax
		mov     rdx, qword [rbp-4216]
		mov     rax, qword [rdx]
		mov     qword [rbp-4224], rax
		mov     rax, qword [rbp-4224]
		add     rax, 8
		mov     qword [rbp-4232], rax
		mov     rax, qword [rbp-4016]
		imul    rax, 8
		mov     qword [rbp-4240], rax
		mov     rax, qword [rbp-4232]
		add     rax, qword [rbp-4240]
		mov     qword [rbp-4248], rax
		mov     rax, qword [rbp-4192]
		mov     rdx, qword [rbp-4248]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3984]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-4256], rax
		mov     rax, qword [rbp-4256]
		cmp     rax, 0
		jne     L111
		jmp     L110
L110:
		mov     rax, qword [rbp-4144]
		mov     rdx, qword [rbp-1600]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3912]
		mov     rdx, qword [rbp-1584]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4064]
		mov     rdx, qword [rbp-1568]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4064]
		mov     rdx, qword [rbp-1552]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1536]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4016]
		mov     rdx, qword [rbp-1520]
		mov     qword [rdx], rax
		jmp     L114
L111:
		mov     rax, qword [rbp-4016]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-4264], rax
		mov     rax, qword [rbp-4264]
		cmp     rax, 0
		jne     L113
		jmp     L112
L112:
		mov     rax, qword [rbp-4144]
		mov     rdx, qword [rbp-1600]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3912]
		mov     rdx, qword [rbp-1584]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4064]
		mov     rdx, qword [rbp-1568]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4064]
		mov     rdx, qword [rbp-1552]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1536]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4016]
		mov     rdx, qword [rbp-1520]
		mov     qword [rdx], rax
		jmp     L114
L113:
		mov     rax, qword [rbp-4144]
		mov     rdx, qword [rbp-1600]
		mov     qword [rdx], rax
		mov     rax, 1
		mov     rdx, qword [rbp-1584]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4064]
		mov     rdx, qword [rbp-1568]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4064]
		mov     rdx, qword [rbp-1552]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1536]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4016]
		mov     rdx, qword [rbp-1520]
		mov     qword [rdx], rax
		jmp     L114
L114:
		mov     rdx, qword [rbp-1600]
		mov     rax, qword [rdx]
		mov     qword [rbp-4272], rax
		mov     rdx, qword [rbp-1584]
		mov     rax, qword [rdx]
		mov     qword [rbp-4280], rax
		mov     rdx, qword [rbp-1568]
		mov     rax, qword [rdx]
		mov     qword [rbp-4288], rax
		mov     rdx, qword [rbp-1552]
		mov     rax, qword [rdx]
		mov     qword [rbp-4296], rax
		mov     rdx, qword [rbp-1536]
		mov     rax, qword [rdx]
		mov     qword [rbp-4304], rax
		mov     rdx, qword [rbp-1520]
		mov     rax, qword [rdx]
		mov     qword [rbp-4312], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-4320], rax
		mov     rax, qword [rbp-2112]
		imul    rax, 8
		mov     qword [rbp-4328], rax
		mov     rax, qword [rbp-4320]
		add     rax, qword [rbp-4328]
		mov     qword [rbp-4336], rax
		mov     rdx, qword [rbp-4336]
		mov     rax, qword [rdx]
		mov     qword [rbp-4344], rax
		mov     rax, qword [rbp-4344]
		sub     rax, 2
		mov     qword [rbp-4352], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-4360], rax
		mov     rax, qword [rbp-4360]
		add     rax, qword [rbp-4328]
		mov     qword [rbp-4368], rax
		mov     rdx, qword [rbp-4368]
		mov     rax, qword [rdx]
		mov     qword [rbp-4376], rax
		mov     rax, qword [rbp-4376]
		add     rax, 1
		mov     qword [rbp-4384], rax
		mov     rax, qword [rbp-4352]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-4392], rax
		mov     rax, qword [rbp-4392]
		cmp     rax, 0
		jne     L115
		jmp     L117
L115:
		mov     rax, qword [rbp-4352]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-4400], rax
		mov     rax, qword [rbp-4400]
		cmp     rax, 0
		jne     L116
		jmp     L117
L116:
		mov     rax, 1
		mov     rdx, qword [rbp-1296]
		mov     qword [rdx], rax
		jmp     L118
L117:
		mov     rax, 0
		mov     rdx, qword [rbp-1296]
		mov     qword [rdx], rax
		jmp     L118
L118:
		mov     rdx, qword [rbp-1296]
		mov     rax, qword [rdx]
		mov     qword [rbp-4408], rax
		mov     rax, qword [rbp-4408]
		cmp     rax, 0
		jne     L120
		jmp     L119
L119:
		mov     rax, qword [rbp-4272]
		mov     rdx, qword [rbp-1088]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4280]
		mov     rdx, qword [rbp-1072]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2296]
		mov     rdx, qword [rbp-1056]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2304]
		mov     rdx, qword [rbp-1040]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2312]
		mov     rdx, qword [rbp-1024]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2320]
		mov     rdx, qword [rbp-1008]
		mov     qword [rdx], rax
		jmp     L133
L120:
		mov     rax, qword [rbp-4384]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-4416], rax
		mov     rax, qword [rbp-4416]
		cmp     rax, 0
		jne     L121
		jmp     L123
L121:
		mov     rax, qword [rbp-4384]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-4424], rax
		mov     rax, qword [rbp-4424]
		cmp     rax, 0
		jne     L122
		jmp     L123
L122:
		mov     rax, 1
		mov     rdx, qword [rbp-1616]
		mov     qword [rdx], rax
		jmp     L124
L123:
		mov     rax, 0
		mov     rdx, qword [rbp-1616]
		mov     qword [rdx], rax
		jmp     L124
L124:
		mov     rdx, qword [rbp-1616]
		mov     rax, qword [rdx]
		mov     qword [rbp-4432], rax
		mov     rax, qword [rbp-4432]
		cmp     rax, 0
		jne     L126
		jmp     L125
L125:
		mov     rax, qword [rbp-4272]
		mov     rdx, qword [rbp-1088]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4280]
		mov     rdx, qword [rbp-1072]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4432]
		mov     rdx, qword [rbp-1056]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4432]
		mov     rdx, qword [rbp-1040]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1024]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4384]
		mov     rdx, qword [rbp-1008]
		mov     qword [rdx], rax
		jmp     L133
L126:
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-4440], rax
		mov     rax, qword [rbp-4352]
		imul    rax, 8
		mov     qword [rbp-4448], rax
		mov     rax, qword [rbp-4440]
		add     rax, qword [rbp-4448]
		mov     qword [rbp-4456], rax
		mov     rdx, qword [rbp-4456]
		mov     rax, qword [rdx]
		mov     qword [rbp-4464], rax
		mov     rax, qword [rbp-4464]
		add     rax, 8
		mov     qword [rbp-4472], rax
		mov     rax, qword [rbp-4384]
		imul    rax, 8
		mov     qword [rbp-4480], rax
		mov     rax, qword [rbp-4472]
		add     rax, qword [rbp-4480]
		mov     qword [rbp-4488], rax
		mov     rdx, qword [rbp-4488]
		mov     rax, qword [rdx]
		mov     qword [rbp-4496], rax
		mov     rax, qword [rbp-4496]
		cmp     rax, -1
		sete    al
		movzx   rax, al
		mov     qword [rbp-4504], rax
		mov     rax, qword [rbp-4504]
		cmp     rax, 0
		jne     L128
		jmp     L127
L127:
		mov     rax, qword [rbp-4272]
		mov     rdx, qword [rbp-1088]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4280]
		mov     rdx, qword [rbp-1072]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4432]
		mov     rdx, qword [rbp-1056]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4432]
		mov     rdx, qword [rbp-1040]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1024]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4384]
		mov     rdx, qword [rbp-1008]
		mov     qword [rdx], rax
		jmp     L133
L128:
		mov     rax, qword [rbp-4272]
		add     rax, 1
		mov     qword [rbp-4512], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-4520], rax
		mov     rax, qword [rbp-4512]
		imul    rax, 8
		mov     qword [rbp-4528], rax
		mov     rax, qword [rbp-4520]
		add     rax, qword [rbp-4528]
		mov     qword [rbp-4536], rax
		mov     rax, qword [rbp-4352]
		mov     rdx, qword [rbp-4536]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-4544], rax
		mov     rax, qword [rbp-4544]
		add     rax, qword [rbp-4528]
		mov     qword [rbp-4552], rax
		mov     rax, qword [rbp-4384]
		mov     rdx, qword [rbp-4552]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2512]
		add     rax, 1
		mov     qword [rbp-4560], rax
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-4568], rax
		mov     rax, qword [rbp-4352]
		imul    rax, 8
		mov     qword [rbp-4576], rax
		mov     rax, qword [rbp-4568]
		add     rax, qword [rbp-4576]
		mov     qword [rbp-4584], rax
		mov     rdx, qword [rbp-4584]
		mov     rax, qword [rdx]
		mov     qword [rbp-4592], rax
		mov     rax, qword [rbp-4592]
		add     rax, 8
		mov     qword [rbp-4600], rax
		mov     rax, qword [rbp-4384]
		imul    rax, 8
		mov     qword [rbp-4608], rax
		mov     rax, qword [rbp-4600]
		add     rax, qword [rbp-4608]
		mov     qword [rbp-4616], rax
		mov     rax, qword [rbp-4560]
		mov     rdx, qword [rbp-4616]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4352]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-4624], rax
		mov     rax, qword [rbp-4624]
		cmp     rax, 0
		jne     L130
		jmp     L129
L129:
		mov     rax, qword [rbp-4512]
		mov     rdx, qword [rbp-1088]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4280]
		mov     rdx, qword [rbp-1072]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4432]
		mov     rdx, qword [rbp-1056]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4432]
		mov     rdx, qword [rbp-1040]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1024]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4384]
		mov     rdx, qword [rbp-1008]
		mov     qword [rdx], rax
		jmp     L133
L130:
		mov     rax, qword [rbp-4384]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-4632], rax
		mov     rax, qword [rbp-4632]
		cmp     rax, 0
		jne     L132
		jmp     L131
L131:
		mov     rax, qword [rbp-4512]
		mov     rdx, qword [rbp-1088]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4280]
		mov     rdx, qword [rbp-1072]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4432]
		mov     rdx, qword [rbp-1056]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4432]
		mov     rdx, qword [rbp-1040]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1024]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4384]
		mov     rdx, qword [rbp-1008]
		mov     qword [rdx], rax
		jmp     L133
L132:
		mov     rax, qword [rbp-4512]
		mov     rdx, qword [rbp-1088]
		mov     qword [rdx], rax
		mov     rax, 1
		mov     rdx, qword [rbp-1072]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4432]
		mov     rdx, qword [rbp-1056]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4432]
		mov     rdx, qword [rbp-1040]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1024]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4384]
		mov     rdx, qword [rbp-1008]
		mov     qword [rdx], rax
		jmp     L133
L133:
		mov     rdx, qword [rbp-1088]
		mov     rax, qword [rdx]
		mov     qword [rbp-4640], rax
		mov     rdx, qword [rbp-1072]
		mov     rax, qword [rdx]
		mov     qword [rbp-4648], rax
		mov     rdx, qword [rbp-1056]
		mov     rax, qword [rdx]
		mov     qword [rbp-4656], rax
		mov     rdx, qword [rbp-1040]
		mov     rax, qword [rdx]
		mov     qword [rbp-4664], rax
		mov     rdx, qword [rbp-1024]
		mov     rax, qword [rdx]
		mov     qword [rbp-4672], rax
		mov     rdx, qword [rbp-1008]
		mov     rax, qword [rdx]
		mov     qword [rbp-4680], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-4688], rax
		mov     rax, qword [rbp-2112]
		imul    rax, 8
		mov     qword [rbp-4696], rax
		mov     rax, qword [rbp-4688]
		add     rax, qword [rbp-4696]
		mov     qword [rbp-4704], rax
		mov     rdx, qword [rbp-4704]
		mov     rax, qword [rdx]
		mov     qword [rbp-4712], rax
		mov     rax, qword [rbp-4712]
		add     rax, 2
		mov     qword [rbp-4720], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-4728], rax
		mov     rax, qword [rbp-4728]
		add     rax, qword [rbp-4696]
		mov     qword [rbp-4736], rax
		mov     rdx, qword [rbp-4736]
		mov     rax, qword [rdx]
		mov     qword [rbp-4744], rax
		mov     rax, qword [rbp-4744]
		sub     rax, 1
		mov     qword [rbp-4752], rax
		mov     rax, qword [rbp-4720]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-4760], rax
		mov     rax, qword [rbp-4760]
		cmp     rax, 0
		jne     L134
		jmp     L136
L134:
		mov     rax, qword [rbp-4720]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-4768], rax
		mov     rax, qword [rbp-4768]
		cmp     rax, 0
		jne     L135
		jmp     L136
L135:
		mov     rax, 1
		mov     rdx, qword [rbp-1408]
		mov     qword [rdx], rax
		jmp     L137
L136:
		mov     rax, 0
		mov     rdx, qword [rbp-1408]
		mov     qword [rdx], rax
		jmp     L137
L137:
		mov     rdx, qword [rbp-1408]
		mov     rax, qword [rdx]
		mov     qword [rbp-4776], rax
		mov     rax, qword [rbp-4776]
		cmp     rax, 0
		jne     L139
		jmp     L138
L138:
		mov     rax, qword [rbp-4640]
		mov     rdx, qword [rbp-976]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4648]
		mov     rdx, qword [rbp-960]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2328]
		mov     rdx, qword [rbp-944]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2336]
		mov     rdx, qword [rbp-928]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2344]
		mov     rdx, qword [rbp-912]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2352]
		mov     rdx, qword [rbp-896]
		mov     qword [rdx], rax
		jmp     L152
L139:
		mov     rax, qword [rbp-4752]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-4784], rax
		mov     rax, qword [rbp-4784]
		cmp     rax, 0
		jne     L140
		jmp     L142
L140:
		mov     rax, qword [rbp-4752]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-4792], rax
		mov     rax, qword [rbp-4792]
		cmp     rax, 0
		jne     L141
		jmp     L142
L141:
		mov     rax, 1
		mov     rdx, qword [rbp-1648]
		mov     qword [rdx], rax
		jmp     L143
L142:
		mov     rax, 0
		mov     rdx, qword [rbp-1648]
		mov     qword [rdx], rax
		jmp     L143
L143:
		mov     rdx, qword [rbp-1648]
		mov     rax, qword [rdx]
		mov     qword [rbp-4800], rax
		mov     rax, qword [rbp-4800]
		cmp     rax, 0
		jne     L145
		jmp     L144
L144:
		mov     rax, qword [rbp-4640]
		mov     rdx, qword [rbp-976]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4648]
		mov     rdx, qword [rbp-960]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4800]
		mov     rdx, qword [rbp-944]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4800]
		mov     rdx, qword [rbp-928]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-912]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4752]
		mov     rdx, qword [rbp-896]
		mov     qword [rdx], rax
		jmp     L152
L145:
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-4808], rax
		mov     rax, qword [rbp-4720]
		imul    rax, 8
		mov     qword [rbp-4816], rax
		mov     rax, qword [rbp-4808]
		add     rax, qword [rbp-4816]
		mov     qword [rbp-4824], rax
		mov     rdx, qword [rbp-4824]
		mov     rax, qword [rdx]
		mov     qword [rbp-4832], rax
		mov     rax, qword [rbp-4832]
		add     rax, 8
		mov     qword [rbp-4840], rax
		mov     rax, qword [rbp-4752]
		imul    rax, 8
		mov     qword [rbp-4848], rax
		mov     rax, qword [rbp-4840]
		add     rax, qword [rbp-4848]
		mov     qword [rbp-4856], rax
		mov     rdx, qword [rbp-4856]
		mov     rax, qword [rdx]
		mov     qword [rbp-4864], rax
		mov     rax, qword [rbp-4864]
		cmp     rax, -1
		sete    al
		movzx   rax, al
		mov     qword [rbp-4872], rax
		mov     rax, qword [rbp-4872]
		cmp     rax, 0
		jne     L147
		jmp     L146
L146:
		mov     rax, qword [rbp-4640]
		mov     rdx, qword [rbp-976]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4648]
		mov     rdx, qword [rbp-960]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4800]
		mov     rdx, qword [rbp-944]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4800]
		mov     rdx, qword [rbp-928]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-912]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4752]
		mov     rdx, qword [rbp-896]
		mov     qword [rdx], rax
		jmp     L152
L147:
		mov     rax, qword [rbp-4640]
		add     rax, 1
		mov     qword [rbp-4880], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-4888], rax
		mov     rax, qword [rbp-4880]
		imul    rax, 8
		mov     qword [rbp-4896], rax
		mov     rax, qword [rbp-4888]
		add     rax, qword [rbp-4896]
		mov     qword [rbp-4904], rax
		mov     rax, qword [rbp-4720]
		mov     rdx, qword [rbp-4904]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-4912], rax
		mov     rax, qword [rbp-4912]
		add     rax, qword [rbp-4896]
		mov     qword [rbp-4920], rax
		mov     rax, qword [rbp-4752]
		mov     rdx, qword [rbp-4920]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2512]
		add     rax, 1
		mov     qword [rbp-4928], rax
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-4936], rax
		mov     rax, qword [rbp-4720]
		imul    rax, 8
		mov     qword [rbp-4944], rax
		mov     rax, qword [rbp-4936]
		add     rax, qword [rbp-4944]
		mov     qword [rbp-4952], rax
		mov     rdx, qword [rbp-4952]
		mov     rax, qword [rdx]
		mov     qword [rbp-4960], rax
		mov     rax, qword [rbp-4960]
		add     rax, 8
		mov     qword [rbp-4968], rax
		mov     rax, qword [rbp-4752]
		imul    rax, 8
		mov     qword [rbp-4976], rax
		mov     rax, qword [rbp-4968]
		add     rax, qword [rbp-4976]
		mov     qword [rbp-4984], rax
		mov     rax, qword [rbp-4928]
		mov     rdx, qword [rbp-4984]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4720]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-4992], rax
		mov     rax, qword [rbp-4992]
		cmp     rax, 0
		jne     L149
		jmp     L148
L148:
		mov     rax, qword [rbp-4880]
		mov     rdx, qword [rbp-976]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4648]
		mov     rdx, qword [rbp-960]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4800]
		mov     rdx, qword [rbp-944]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4800]
		mov     rdx, qword [rbp-928]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-912]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4752]
		mov     rdx, qword [rbp-896]
		mov     qword [rdx], rax
		jmp     L152
L149:
		mov     rax, qword [rbp-4752]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-5000], rax
		mov     rax, qword [rbp-5000]
		cmp     rax, 0
		jne     L151
		jmp     L150
L150:
		mov     rax, qword [rbp-4880]
		mov     rdx, qword [rbp-976]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4648]
		mov     rdx, qword [rbp-960]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4800]
		mov     rdx, qword [rbp-944]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4800]
		mov     rdx, qword [rbp-928]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-912]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4752]
		mov     rdx, qword [rbp-896]
		mov     qword [rdx], rax
		jmp     L152
L151:
		mov     rax, qword [rbp-4880]
		mov     rdx, qword [rbp-976]
		mov     qword [rdx], rax
		mov     rax, 1
		mov     rdx, qword [rbp-960]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4800]
		mov     rdx, qword [rbp-944]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4800]
		mov     rdx, qword [rbp-928]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-912]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4752]
		mov     rdx, qword [rbp-896]
		mov     qword [rdx], rax
		jmp     L152
L152:
		mov     rdx, qword [rbp-976]
		mov     rax, qword [rdx]
		mov     qword [rbp-5008], rax
		mov     rdx, qword [rbp-960]
		mov     rax, qword [rdx]
		mov     qword [rbp-5016], rax
		mov     rdx, qword [rbp-944]
		mov     rax, qword [rdx]
		mov     qword [rbp-5024], rax
		mov     rdx, qword [rbp-928]
		mov     rax, qword [rdx]
		mov     qword [rbp-5032], rax
		mov     rdx, qword [rbp-912]
		mov     rax, qword [rdx]
		mov     qword [rbp-5040], rax
		mov     rdx, qword [rbp-896]
		mov     rax, qword [rdx]
		mov     qword [rbp-5048], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-5056], rax
		mov     rax, qword [rbp-2112]
		imul    rax, 8
		mov     qword [rbp-5064], rax
		mov     rax, qword [rbp-5056]
		add     rax, qword [rbp-5064]
		mov     qword [rbp-5072], rax
		mov     rdx, qword [rbp-5072]
		mov     rax, qword [rdx]
		mov     qword [rbp-5080], rax
		mov     rax, qword [rbp-5080]
		add     rax, 2
		mov     qword [rbp-5088], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-5096], rax
		mov     rax, qword [rbp-5096]
		add     rax, qword [rbp-5064]
		mov     qword [rbp-5104], rax
		mov     rdx, qword [rbp-5104]
		mov     rax, qword [rdx]
		mov     qword [rbp-5112], rax
		mov     rax, qword [rbp-5112]
		add     rax, 1
		mov     qword [rbp-5120], rax
		mov     rax, qword [rbp-5088]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-5128], rax
		mov     rax, qword [rbp-5128]
		cmp     rax, 0
		jne     L153
		jmp     L155
L153:
		mov     rax, qword [rbp-5088]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-5136], rax
		mov     rax, qword [rbp-5136]
		cmp     rax, 0
		jne     L154
		jmp     L155
L154:
		mov     rax, 1
		mov     rdx, qword [rbp-1200]
		mov     qword [rdx], rax
		jmp     L156
L155:
		mov     rax, 0
		mov     rdx, qword [rbp-1200]
		mov     qword [rdx], rax
		jmp     L156
L156:
		mov     rdx, qword [rbp-1200]
		mov     rax, qword [rdx]
		mov     qword [rbp-5144], rax
		mov     rax, qword [rbp-5144]
		cmp     rax, 0
		jne     L158
		jmp     L157
L157:
		mov     rax, qword [rbp-5008]
		mov     rdx, qword [rbp-1184]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5016]
		mov     rdx, qword [rbp-1168]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2360]
		mov     rdx, qword [rbp-1152]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2368]
		mov     rdx, qword [rbp-1136]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2376]
		mov     rdx, qword [rbp-1120]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2384]
		mov     rdx, qword [rbp-1104]
		mov     qword [rdx], rax
		jmp     L171
L158:
		mov     rax, qword [rbp-5120]
		cmp     rax, qword [rbp-1672]
		setl    al
		movzx   rax, al
		mov     qword [rbp-5152], rax
		mov     rax, qword [rbp-5152]
		cmp     rax, 0
		jne     L159
		jmp     L161
L159:
		mov     rax, qword [rbp-5120]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-5160], rax
		mov     rax, qword [rbp-5160]
		cmp     rax, 0
		jne     L160
		jmp     L161
L160:
		mov     rax, 1
		mov     rdx, qword [rbp-1248]
		mov     qword [rdx], rax
		jmp     L162
L161:
		mov     rax, 0
		mov     rdx, qword [rbp-1248]
		mov     qword [rdx], rax
		jmp     L162
L162:
		mov     rdx, qword [rbp-1248]
		mov     rax, qword [rdx]
		mov     qword [rbp-5168], rax
		mov     rax, qword [rbp-5168]
		cmp     rax, 0
		jne     L164
		jmp     L163
L163:
		mov     rax, qword [rbp-5008]
		mov     rdx, qword [rbp-1184]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5016]
		mov     rdx, qword [rbp-1168]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5168]
		mov     rdx, qword [rbp-1152]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5168]
		mov     rdx, qword [rbp-1136]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1120]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5120]
		mov     rdx, qword [rbp-1104]
		mov     qword [rdx], rax
		jmp     L171
L164:
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-5176], rax
		mov     rax, qword [rbp-5088]
		imul    rax, 8
		mov     qword [rbp-5184], rax
		mov     rax, qword [rbp-5176]
		add     rax, qword [rbp-5184]
		mov     qword [rbp-5192], rax
		mov     rdx, qword [rbp-5192]
		mov     rax, qword [rdx]
		mov     qword [rbp-5200], rax
		mov     rax, qword [rbp-5200]
		add     rax, 8
		mov     qword [rbp-5208], rax
		mov     rax, qword [rbp-5120]
		imul    rax, 8
		mov     qword [rbp-5216], rax
		mov     rax, qword [rbp-5208]
		add     rax, qword [rbp-5216]
		mov     qword [rbp-5224], rax
		mov     rdx, qword [rbp-5224]
		mov     rax, qword [rdx]
		mov     qword [rbp-5232], rax
		mov     rax, qword [rbp-5232]
		cmp     rax, -1
		sete    al
		movzx   rax, al
		mov     qword [rbp-5240], rax
		mov     rax, qword [rbp-5240]
		cmp     rax, 0
		jne     L166
		jmp     L165
L165:
		mov     rax, qword [rbp-5008]
		mov     rdx, qword [rbp-1184]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5016]
		mov     rdx, qword [rbp-1168]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5168]
		mov     rdx, qword [rbp-1152]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5168]
		mov     rdx, qword [rbp-1136]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1120]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5120]
		mov     rdx, qword [rbp-1104]
		mov     qword [rdx], rax
		jmp     L171
L166:
		mov     rax, qword [rbp-5008]
		add     rax, 1
		mov     qword [rbp-5248], rax
		mov     rax, qword [rbp-1712]
		add     rax, 8
		mov     qword [rbp-5256], rax
		mov     rax, qword [rbp-5248]
		imul    rax, 8
		mov     qword [rbp-5264], rax
		mov     rax, qword [rbp-5256]
		add     rax, qword [rbp-5264]
		mov     qword [rbp-5272], rax
		mov     rax, qword [rbp-5088]
		mov     rdx, qword [rbp-5272]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1800]
		add     rax, 8
		mov     qword [rbp-5280], rax
		mov     rax, qword [rbp-5280]
		add     rax, qword [rbp-5264]
		mov     qword [rbp-5288], rax
		mov     rax, qword [rbp-5120]
		mov     rdx, qword [rbp-5288]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2512]
		add     rax, 1
		mov     qword [rbp-5296], rax
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-5304], rax
		mov     rax, qword [rbp-5088]
		imul    rax, 8
		mov     qword [rbp-5312], rax
		mov     rax, qword [rbp-5304]
		add     rax, qword [rbp-5312]
		mov     qword [rbp-5320], rax
		mov     rdx, qword [rbp-5320]
		mov     rax, qword [rdx]
		mov     qword [rbp-5328], rax
		mov     rax, qword [rbp-5328]
		add     rax, 8
		mov     qword [rbp-5336], rax
		mov     rax, qword [rbp-5120]
		imul    rax, 8
		mov     qword [rbp-5344], rax
		mov     rax, qword [rbp-5336]
		add     rax, qword [rbp-5344]
		mov     qword [rbp-5352], rax
		mov     rax, qword [rbp-5296]
		mov     rdx, qword [rbp-5352]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5088]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-5360], rax
		mov     rax, qword [rbp-5360]
		cmp     rax, 0
		jne     L168
		jmp     L167
L167:
		mov     rax, qword [rbp-5248]
		mov     rdx, qword [rbp-1184]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5016]
		mov     rdx, qword [rbp-1168]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5168]
		mov     rdx, qword [rbp-1152]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5168]
		mov     rdx, qword [rbp-1136]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1120]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5120]
		mov     rdx, qword [rbp-1104]
		mov     qword [rdx], rax
		jmp     L171
L168:
		mov     rax, qword [rbp-5120]
		cmp     rax, qword [rbp-1680]
		sete    al
		movzx   rax, al
		mov     qword [rbp-5368], rax
		mov     rax, qword [rbp-5368]
		cmp     rax, 0
		jne     L170
		jmp     L169
L169:
		mov     rax, qword [rbp-5248]
		mov     rdx, qword [rbp-1184]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5016]
		mov     rdx, qword [rbp-1168]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5168]
		mov     rdx, qword [rbp-1152]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5168]
		mov     rdx, qword [rbp-1136]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1120]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5120]
		mov     rdx, qword [rbp-1104]
		mov     qword [rdx], rax
		jmp     L171
L170:
		mov     rax, qword [rbp-5248]
		mov     rdx, qword [rbp-1184]
		mov     qword [rdx], rax
		mov     rax, 1
		mov     rdx, qword [rbp-1168]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5168]
		mov     rdx, qword [rbp-1152]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5168]
		mov     rdx, qword [rbp-1136]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1672]
		mov     rdx, qword [rbp-1120]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5120]
		mov     rdx, qword [rbp-1104]
		mov     qword [rdx], rax
		jmp     L171
L171:
		mov     rdx, qword [rbp-1184]
		mov     rax, qword [rdx]
		mov     qword [rbp-5376], rax
		mov     rdx, qword [rbp-1168]
		mov     rax, qword [rdx]
		mov     qword [rbp-5384], rax
		mov     rdx, qword [rbp-1152]
		mov     rax, qword [rdx]
		mov     qword [rbp-5392], rax
		mov     rdx, qword [rbp-1136]
		mov     rax, qword [rdx]
		mov     qword [rbp-5400], rax
		mov     rdx, qword [rbp-1120]
		mov     rax, qword [rdx]
		mov     qword [rbp-5408], rax
		mov     rdx, qword [rbp-1104]
		mov     rax, qword [rdx]
		mov     qword [rbp-5416], rax
		mov     rax, qword [rbp-5384]
		cmp     rax, 1
		sete    al
		movzx   rax, al
		mov     qword [rbp-5424], rax
		mov     rax, qword [rbp-5424]
		cmp     rax, 0
		jne     L172
		jmp     L173
L172:
		mov     rax, qword [rbp-5384]
		mov     rdx, qword [rbp-1280]
		mov     qword [rdx], rax
		jmp     L174
L173:
		mov     rax, qword [rbp-2112]
		add     rax, 1
		mov     qword [rbp-5432], rax
		mov     rax, qword [rbp-5432]
		mov     rdx, qword [rbp-752]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5376]
		mov     rdx, qword [rbp-736]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5384]
		mov     rdx, qword [rbp-720]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2816]
		mov     rdx, qword [rbp-704]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2824]
		mov     rdx, qword [rbp-688]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2832]
		mov     rdx, qword [rbp-672]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-2840]
		mov     rdx, qword [rbp-656]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3184]
		mov     rdx, qword [rbp-640]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3192]
		mov     rdx, qword [rbp-624]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3200]
		mov     rdx, qword [rbp-608]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3208]
		mov     rdx, qword [rbp-592]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3552]
		mov     rdx, qword [rbp-576]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3560]
		mov     rdx, qword [rbp-560]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3568]
		mov     rdx, qword [rbp-544]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3576]
		mov     rdx, qword [rbp-528]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3920]
		mov     rdx, qword [rbp-512]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3928]
		mov     rdx, qword [rbp-496]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3936]
		mov     rdx, qword [rbp-480]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-3944]
		mov     rdx, qword [rbp-464]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4288]
		mov     rdx, qword [rbp-448]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4296]
		mov     rdx, qword [rbp-432]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4304]
		mov     rdx, qword [rbp-416]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4312]
		mov     rdx, qword [rbp-400]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4656]
		mov     rdx, qword [rbp-384]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4664]
		mov     rdx, qword [rbp-368]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4672]
		mov     rdx, qword [rbp-352]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-4680]
		mov     rdx, qword [rbp-336]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5024]
		mov     rdx, qword [rbp-320]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5032]
		mov     rdx, qword [rbp-304]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5040]
		mov     rdx, qword [rbp-288]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5048]
		mov     rdx, qword [rbp-272]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5392]
		mov     rdx, qword [rbp-256]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5400]
		mov     rdx, qword [rbp-240]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5408]
		mov     rdx, qword [rbp-224]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-5416]
		mov     rdx, qword [rbp-208]
		mov     qword [rdx], rax
		jmp     L17
L174:
		mov     rdx, qword [rbp-1280]
		mov     rax, qword [rdx]
		mov     qword [rbp-5440], rax
		mov     rax, qword [rbp-5440]
		cmp     rax, 1
		sete    al
		movzx   rax, al
		mov     qword [rbp-5448], rax
		mov     rax, qword [rbp-5448]
		cmp     rax, 0
		jne     L175
		jmp     L176
L175:
		mov     rax, qword [rbp-1880]
		add     rax, 8
		mov     qword [rbp-5456], rax
		mov     rax, qword [rbp-1680]
		imul    rax, 8
		mov     qword [rbp-5464], rax
		mov     rax, qword [rbp-5456]
		add     rax, qword [rbp-5464]
		mov     qword [rbp-5472], rax
		mov     rdx, qword [rbp-5472]
		mov     rax, qword [rdx]
		mov     qword [rbp-5480], rax
		mov     rax, qword [rbp-5480]
		add     rax, 8
		mov     qword [rbp-5488], rax
		mov     rax, qword [rbp-5488]
		add     rax, qword [rbp-5464]
		mov     qword [rbp-5496], rax
		mov     rdx, qword [rbp-5496]
		mov     rax, qword [rdx]
		mov     qword [rbp-5504], rax
		mov     rdi, qword [rbp-5504]
		call    toString
		mov     qword [rbp-5512], rax
		mov     rdi, qword [rbp-5512]
		call    println
		jmp     L177
L176:
		mov     rdi, __str_0
		call    print
		jmp     L177
L177:
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

__str_0:
		dq      13
		db      6EH, 6FH, 20H, 73H, 6FH, 6CH, 75H, 74H, 69H, 6FH, 6EH, 21H, 0AH, 00H

SECTION .bss


SECTION .text

print:
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


println:
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


getString:
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


getInt:
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


toString:
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


_stringLength:
        push    rbp
        mov     rbp, rsp
        mov     qword [rbp-8H], rdi
        mov     rax, qword [rbp-8H]
        mov     rax, qword [rax]
        pop     rbp
        ret


_stringSubstring:
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


_stringParseInt:
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


_stringOrd:
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


_stringAdd:
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


_stringEq:
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


_stringNeq:
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


_stringLt:
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


_stringGt:
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


_stringLe:
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


_stringGe:
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


_arraySize:
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


