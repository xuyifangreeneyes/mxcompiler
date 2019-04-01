default rel

global main
global _N
global _head
global _startx
global _starty
global _targetx
global _targety
global _x
global _y
global _xlist
global _ylist
global _tail
global _ok
global _now
global _dx
global _dy
global _step
global _i
global _j
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
global origin
global check
global addList
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
		sub     rsp, 96
		mov     rax, 12000
		imul    rax, 8
		mov     qword [rbp-8], rax
		mov     rax, qword [rbp-8]
		add     rax, 8
		mov     qword [rbp-16], rax
		mov     rdi, qword [rbp-16]
		call    malloc
		mov     qword [rbp-24], rax
		mov     rax, 12000
		mov     rdx, qword [rbp-24]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-24]
		mov     qword [rel _xlist], rax
		mov     rax, 12000
		imul    rax, 8
		mov     qword [rbp-32], rax
		mov     rax, qword [rbp-32]
		add     rax, 8
		mov     qword [rbp-40], rax
		mov     rdi, qword [rbp-40]
		call    malloc
		mov     qword [rbp-48], rax
		mov     rax, 12000
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-48]
		mov     qword [rel _ylist], rax
		mov     rax, 8
		imul    rax, 8
		mov     qword [rbp-56], rax
		mov     rax, qword [rbp-56]
		add     rax, 8
		mov     qword [rbp-64], rax
		mov     rdi, qword [rbp-64]
		call    malloc
		mov     qword [rbp-72], rax
		mov     rax, 8
		mov     rdx, qword [rbp-72]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-72]
		mov     qword [rel _dx], rax
		mov     rax, 9
		imul    rax, 8
		mov     qword [rbp-80], rax
		mov     rax, qword [rbp-80]
		add     rax, 8
		mov     qword [rbp-88], rax
		mov     rdi, qword [rbp-88]
		call    malloc
		mov     qword [rbp-96], rax
		mov     rax, 9
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-96]
		mov     qword [rel _dy], rax
		mov     rsp, rbp
		pop     rbp
		ret     

origin:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 304
		mov     qword [rbp-8], rdi
		mov     rax, rbp
		sub     rax, 16
		mov     qword [rbp-24], rax
		mov     rax, qword [rbp-8]
		mov     rdx, qword [rbp-24]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     qword [rel _head], rax
		mov     rax, 0
		mov     qword [rel _tail], rax
		mov     rdx, qword [rbp-24]
		mov     rax, qword [rdx]
		mov     qword [rbp-32], rax
		mov     rax, qword [rbp-32]
		imul    rax, 8
		mov     qword [rbp-40], rax
		mov     rax, qword [rbp-40]
		add     rax, 8
		mov     qword [rbp-48], rax
		mov     rdi, qword [rbp-48]
		call    malloc
		mov     qword [rbp-56], rax
		mov     rax, qword [rbp-32]
		mov     rdx, qword [rbp-56]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-56]
		mov     qword [rel _step], rax
		mov     rax, 0
		mov     qword [rel _i], rax
		jmp     L1
L1:
		mov     rax, qword [rel _i]
		mov     qword [rbp-64], rax
		mov     rdx, qword [rbp-24]
		mov     rax, qword [rdx]
		mov     qword [rbp-72], rax
		mov     rax, qword [rbp-64]
		cmp     rax, qword [rbp-72]
		setl    al
		movzx   rax, al
		mov     qword [rbp-80], rax
		mov     rax, qword [rbp-80]
		cmp     rax, 0
		jne     L2
		jmp     L8
L2:
		mov     rdx, qword [rbp-24]
		mov     rax, qword [rdx]
		mov     qword [rbp-88], rax
		mov     rax, qword [rbp-88]
		imul    rax, 8
		mov     qword [rbp-96], rax
		mov     rax, qword [rbp-96]
		add     rax, 8
		mov     qword [rbp-104], rax
		mov     rdi, qword [rbp-104]
		call    malloc
		mov     qword [rbp-112], rax
		mov     rax, qword [rbp-88]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		mov     rax, qword [rel _step]
		mov     qword [rbp-120], rax
		mov     rax, qword [rbp-120]
		add     rax, 8
		mov     qword [rbp-128], rax
		mov     rax, qword [rel _i]
		mov     qword [rbp-136], rax
		mov     rax, qword [rbp-136]
		imul    rax, 8
		mov     qword [rbp-144], rax
		mov     rax, qword [rbp-128]
		add     rax, qword [rbp-144]
		mov     qword [rbp-152], rax
		mov     rax, qword [rbp-112]
		mov     rdx, qword [rbp-152]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     qword [rel _j], rax
		jmp     L3
L3:
		mov     rax, qword [rel _j]
		mov     qword [rbp-160], rax
		mov     rdx, qword [rbp-24]
		mov     rax, qword [rdx]
		mov     qword [rbp-168], rax
		mov     rax, qword [rbp-160]
		cmp     rax, qword [rbp-168]
		setl    al
		movzx   rax, al
		mov     qword [rbp-176], rax
		mov     rax, qword [rbp-176]
		cmp     rax, 0
		jne     L4
		jmp     L6
L4:
		mov     rax, qword [rel _step]
		mov     qword [rbp-184], rax
		mov     rax, qword [rbp-184]
		add     rax, 8
		mov     qword [rbp-192], rax
		mov     rax, qword [rel _i]
		mov     qword [rbp-200], rax
		mov     rax, qword [rbp-200]
		imul    rax, 8
		mov     qword [rbp-208], rax
		mov     rax, qword [rbp-192]
		add     rax, qword [rbp-208]
		mov     qword [rbp-216], rax
		mov     rdx, qword [rbp-216]
		mov     rax, qword [rdx]
		mov     qword [rbp-224], rax
		mov     rax, qword [rbp-224]
		add     rax, 8
		mov     qword [rbp-232], rax
		mov     rax, qword [rel _j]
		mov     qword [rbp-240], rax
		mov     rax, qword [rbp-240]
		imul    rax, 8
		mov     qword [rbp-248], rax
		mov     rax, qword [rbp-232]
		add     rax, qword [rbp-248]
		mov     qword [rbp-256], rax
		mov     rax, 0
		mov     rdx, qword [rbp-256]
		mov     qword [rdx], rax
		jmp     L5
L5:
		mov     rax, qword [rel _j]
		mov     qword [rbp-264], rax
		mov     rax, qword [rel _j]
		mov     qword [rbp-272], rax
		mov     rax, qword [rbp-272]
		inc     rax
		mov     qword [rbp-280], rax
		mov     rax, qword [rbp-280]
		mov     qword [rel _j], rax
		jmp     L3
L6:
		jmp     L7
L7:
		mov     rax, qword [rel _i]
		mov     qword [rbp-288], rax
		mov     rax, qword [rel _i]
		mov     qword [rbp-296], rax
		mov     rax, qword [rbp-296]
		inc     rax
		mov     qword [rbp-304], rax
		mov     rax, qword [rbp-304]
		mov     qword [rel _i], rax
		jmp     L1
L8:
		mov     rsp, rbp
		pop     rbp
		ret     

check:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 96
		mov     qword [rbp-8], rdi
		mov     rax, rbp
		sub     rax, 16
		mov     qword [rbp-24], rax
		mov     rax, rbp
		sub     rax, 32
		mov     qword [rbp-40], rax
		mov     rax, qword [rbp-8]
		mov     rdx, qword [rbp-40]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-40]
		mov     rax, qword [rdx]
		mov     qword [rbp-48], rax
		mov     rax, qword [rel _N]
		mov     qword [rbp-56], rax
		mov     rax, qword [rbp-48]
		cmp     rax, qword [rbp-56]
		setl    al
		movzx   rax, al
		mov     qword [rbp-64], rax
		mov     rax, qword [rbp-64]
		cmp     rax, 0
		jne     L9
		jmp     L11
L9:
		mov     rdx, qword [rbp-40]
		mov     rax, qword [rdx]
		mov     qword [rbp-72], rax
		mov     rax, qword [rbp-72]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-80], rax
		mov     rax, qword [rbp-80]
		cmp     rax, 0
		jne     L10
		jmp     L11
L10:
		mov     rax, 1
		mov     rdx, qword [rbp-24]
		mov     qword [rdx], rax
		jmp     L12
L11:
		mov     rax, 0
		mov     rdx, qword [rbp-24]
		mov     qword [rdx], rax
		jmp     L12
L12:
		mov     rdx, qword [rbp-24]
		mov     rax, qword [rdx]
		mov     qword [rbp-88], rax
		mov     rax, qword [rbp-88]
		mov     rsp, rbp
		pop     rbp
		ret     

addList:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 448
		mov     qword [rbp-8], rdi
		mov     qword [rbp-16], rsi
		mov     rax, rbp
		sub     rax, 24
		mov     qword [rbp-32], rax
		mov     rax, rbp
		sub     rax, 40
		mov     qword [rbp-48], rax
		mov     rax, qword [rbp-8]
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-16]
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-56], rax
		mov     rdi, qword [rbp-56]
		call    check
		mov     qword [rbp-64], rax
		mov     rax, qword [rbp-64]
		cmp     rax, 0
		jne     L13
		jmp     L19
L13:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-72], rax
		mov     rdi, qword [rbp-72]
		call    check
		mov     qword [rbp-80], rax
		mov     rax, qword [rbp-80]
		cmp     rax, 0
		jne     L14
		jmp     L19
L14:
		mov     rax, qword [rel _step]
		mov     qword [rbp-88], rax
		mov     rax, qword [rbp-88]
		add     rax, 8
		mov     qword [rbp-96], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-104], rax
		mov     rax, qword [rbp-104]
		imul    rax, 8
		mov     qword [rbp-112], rax
		mov     rax, qword [rbp-96]
		add     rax, qword [rbp-112]
		mov     qword [rbp-120], rax
		mov     rdx, qword [rbp-120]
		mov     rax, qword [rdx]
		mov     qword [rbp-128], rax
		mov     rax, qword [rbp-128]
		add     rax, 8
		mov     qword [rbp-136], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-144], rax
		mov     rax, qword [rbp-144]
		imul    rax, 8
		mov     qword [rbp-152], rax
		mov     rax, qword [rbp-136]
		add     rax, qword [rbp-152]
		mov     qword [rbp-160], rax
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-168], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-176], rax
		mov     rax, qword [rbp-168]
		cmp     rax, qword [rbp-176]
		sete    al
		movzx   rax, al
		mov     qword [rbp-184], rax
		mov     rax, qword [rbp-184]
		cmp     rax, 0
		jne     L15
		jmp     L19
L15:
		mov     rax, qword [rel _tail]
		mov     qword [rbp-192], rax
		mov     rax, qword [rel _tail]
		mov     qword [rbp-200], rax
		mov     rax, qword [rbp-200]
		inc     rax
		mov     qword [rbp-208], rax
		mov     rax, qword [rbp-208]
		mov     qword [rel _tail], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-216], rax
		mov     rax, qword [rel _xlist]
		mov     qword [rbp-224], rax
		mov     rax, qword [rbp-224]
		add     rax, 8
		mov     qword [rbp-232], rax
		mov     rax, qword [rel _tail]
		mov     qword [rbp-240], rax
		mov     rax, qword [rbp-240]
		imul    rax, 8
		mov     qword [rbp-248], rax
		mov     rax, qword [rbp-232]
		add     rax, qword [rbp-248]
		mov     qword [rbp-256], rax
		mov     rax, qword [rbp-216]
		mov     rdx, qword [rbp-256]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-264], rax
		mov     rax, qword [rel _ylist]
		mov     qword [rbp-272], rax
		mov     rax, qword [rbp-272]
		add     rax, 8
		mov     qword [rbp-280], rax
		mov     rax, qword [rel _tail]
		mov     qword [rbp-288], rax
		mov     rax, qword [rbp-288]
		imul    rax, 8
		mov     qword [rbp-296], rax
		mov     rax, qword [rbp-280]
		add     rax, qword [rbp-296]
		mov     qword [rbp-304], rax
		mov     rax, qword [rbp-264]
		mov     rdx, qword [rbp-304]
		mov     qword [rdx], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-312], rax
		mov     rax, qword [rbp-312]
		add     rax, 1
		mov     qword [rbp-320], rax
		mov     rax, qword [rel _step]
		mov     qword [rbp-328], rax
		mov     rax, qword [rbp-328]
		add     rax, 8
		mov     qword [rbp-336], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-344], rax
		mov     rax, qword [rbp-344]
		imul    rax, 8
		mov     qword [rbp-352], rax
		mov     rax, qword [rbp-336]
		add     rax, qword [rbp-352]
		mov     qword [rbp-360], rax
		mov     rdx, qword [rbp-360]
		mov     rax, qword [rdx]
		mov     qword [rbp-368], rax
		mov     rax, qword [rbp-368]
		add     rax, 8
		mov     qword [rbp-376], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-384], rax
		mov     rax, qword [rbp-384]
		imul    rax, 8
		mov     qword [rbp-392], rax
		mov     rax, qword [rbp-376]
		add     rax, qword [rbp-392]
		mov     qword [rbp-400], rax
		mov     rax, qword [rbp-320]
		mov     rdx, qword [rbp-400]
		mov     qword [rdx], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-408], rax
		mov     rax, qword [rel _targetx]
		mov     qword [rbp-416], rax
		mov     rax, qword [rbp-408]
		cmp     rax, qword [rbp-416]
		sete    al
		movzx   rax, al
		mov     qword [rbp-424], rax
		mov     rax, qword [rbp-424]
		cmp     rax, 0
		jne     L16
		jmp     L18
L16:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-432], rax
		mov     rax, qword [rel _targety]
		mov     qword [rbp-440], rax
		mov     rax, qword [rbp-432]
		cmp     rax, qword [rbp-440]
		sete    al
		movzx   rax, al
		mov     qword [rbp-448], rax
		mov     rax, qword [rbp-448]
		cmp     rax, 0
		jne     L17
		jmp     L18
L17:
		mov     rax, 1
		mov     qword [rel _ok], rax
		jmp     L18
L18:
		jmp     L19
L19:
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 1328
		call    _globalInit
		mov     rdi, 106
		call    origin
		call    getInt
		mov     qword [rbp-8], rax
		mov     rax, qword [rbp-8]
		mov     qword [rel _N], rax
		mov     rax, qword [rel _N]
		mov     qword [rbp-16], rax
		mov     rax, qword [rbp-16]
		sub     rax, 1
		mov     qword [rbp-24], rax
		mov     rax, qword [rbp-24]
		mov     qword [rel _targety], rax
		mov     rax, qword [rel _targety]
		mov     qword [rbp-32], rax
		mov     rax, qword [rbp-32]
		mov     qword [rel _targetx], rax
		mov     rax, 0
		mov     qword [rel _i], rax
		jmp     L20
L20:
		mov     rax, qword [rel _i]
		mov     qword [rbp-40], rax
		mov     rax, qword [rel _N]
		mov     qword [rbp-48], rax
		mov     rax, qword [rbp-40]
		cmp     rax, qword [rbp-48]
		setl    al
		movzx   rax, al
		mov     qword [rbp-56], rax
		mov     rax, qword [rbp-56]
		cmp     rax, 0
		jne     L21
		jmp     L27
L21:
		mov     rax, 0
		mov     qword [rel _j], rax
		jmp     L22
L22:
		mov     rax, qword [rel _j]
		mov     qword [rbp-64], rax
		mov     rax, qword [rel _N]
		mov     qword [rbp-72], rax
		mov     rax, qword [rbp-64]
		cmp     rax, qword [rbp-72]
		setl    al
		movzx   rax, al
		mov     qword [rbp-80], rax
		mov     rax, qword [rbp-80]
		cmp     rax, 0
		jne     L23
		jmp     L25
L23:
		mov     rax, 1
		neg     rax
		mov     qword [rbp-88], rax
		mov     rax, qword [rel _step]
		mov     qword [rbp-96], rax
		mov     rax, qword [rbp-96]
		add     rax, 8
		mov     qword [rbp-104], rax
		mov     rax, qword [rel _i]
		mov     qword [rbp-112], rax
		mov     rax, qword [rbp-112]
		imul    rax, 8
		mov     qword [rbp-120], rax
		mov     rax, qword [rbp-104]
		add     rax, qword [rbp-120]
		mov     qword [rbp-128], rax
		mov     rdx, qword [rbp-128]
		mov     rax, qword [rdx]
		mov     qword [rbp-136], rax
		mov     rax, qword [rbp-136]
		add     rax, 8
		mov     qword [rbp-144], rax
		mov     rax, qword [rel _j]
		mov     qword [rbp-152], rax
		mov     rax, qword [rbp-152]
		imul    rax, 8
		mov     qword [rbp-160], rax
		mov     rax, qword [rbp-144]
		add     rax, qword [rbp-160]
		mov     qword [rbp-168], rax
		mov     rax, qword [rbp-88]
		mov     rdx, qword [rbp-168]
		mov     qword [rdx], rax
		jmp     L24
L24:
		mov     rax, qword [rel _j]
		mov     qword [rbp-176], rax
		mov     rax, qword [rel _j]
		mov     qword [rbp-184], rax
		mov     rax, qword [rbp-184]
		inc     rax
		mov     qword [rbp-192], rax
		mov     rax, qword [rbp-192]
		mov     qword [rel _j], rax
		jmp     L22
L25:
		jmp     L26
L26:
		mov     rax, qword [rel _i]
		mov     qword [rbp-200], rax
		mov     rax, qword [rel _i]
		mov     qword [rbp-208], rax
		mov     rax, qword [rbp-208]
		inc     rax
		mov     qword [rbp-216], rax
		mov     rax, qword [rbp-216]
		mov     qword [rel _i], rax
		jmp     L20
L27:
		mov     rax, 2
		neg     rax
		mov     qword [rbp-224], rax
		mov     rax, qword [rel _dx]
		mov     qword [rbp-232], rax
		mov     rax, qword [rbp-232]
		add     rax, 8
		mov     qword [rbp-240], rax
		mov     rax, 0
		imul    rax, 8
		mov     qword [rbp-248], rax
		mov     rax, qword [rbp-240]
		add     rax, qword [rbp-248]
		mov     qword [rbp-256], rax
		mov     rax, qword [rbp-224]
		mov     rdx, qword [rbp-256]
		mov     qword [rdx], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-264], rax
		mov     rax, qword [rel _dy]
		mov     qword [rbp-272], rax
		mov     rax, qword [rbp-272]
		add     rax, 8
		mov     qword [rbp-280], rax
		mov     rax, 0
		imul    rax, 8
		mov     qword [rbp-288], rax
		mov     rax, qword [rbp-280]
		add     rax, qword [rbp-288]
		mov     qword [rbp-296], rax
		mov     rax, qword [rbp-264]
		mov     rdx, qword [rbp-296]
		mov     qword [rdx], rax
		mov     rax, 2
		neg     rax
		mov     qword [rbp-304], rax
		mov     rax, qword [rel _dx]
		mov     qword [rbp-312], rax
		mov     rax, qword [rbp-312]
		add     rax, 8
		mov     qword [rbp-320], rax
		mov     rax, 1
		imul    rax, 8
		mov     qword [rbp-328], rax
		mov     rax, qword [rbp-320]
		add     rax, qword [rbp-328]
		mov     qword [rbp-336], rax
		mov     rax, qword [rbp-304]
		mov     rdx, qword [rbp-336]
		mov     qword [rdx], rax
		mov     rax, qword [rel _dy]
		mov     qword [rbp-344], rax
		mov     rax, qword [rbp-344]
		add     rax, 8
		mov     qword [rbp-352], rax
		mov     rax, 1
		imul    rax, 8
		mov     qword [rbp-360], rax
		mov     rax, qword [rbp-352]
		add     rax, qword [rbp-360]
		mov     qword [rbp-368], rax
		mov     rax, 1
		mov     rdx, qword [rbp-368]
		mov     qword [rdx], rax
		mov     rax, qword [rel _dx]
		mov     qword [rbp-376], rax
		mov     rax, qword [rbp-376]
		add     rax, 8
		mov     qword [rbp-384], rax
		mov     rax, 2
		imul    rax, 8
		mov     qword [rbp-392], rax
		mov     rax, qword [rbp-384]
		add     rax, qword [rbp-392]
		mov     qword [rbp-400], rax
		mov     rax, 2
		mov     rdx, qword [rbp-400]
		mov     qword [rdx], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-408], rax
		mov     rax, qword [rel _dy]
		mov     qword [rbp-416], rax
		mov     rax, qword [rbp-416]
		add     rax, 8
		mov     qword [rbp-424], rax
		mov     rax, 2
		imul    rax, 8
		mov     qword [rbp-432], rax
		mov     rax, qword [rbp-424]
		add     rax, qword [rbp-432]
		mov     qword [rbp-440], rax
		mov     rax, qword [rbp-408]
		mov     rdx, qword [rbp-440]
		mov     qword [rdx], rax
		mov     rax, qword [rel _dx]
		mov     qword [rbp-448], rax
		mov     rax, qword [rbp-448]
		add     rax, 8
		mov     qword [rbp-456], rax
		mov     rax, 3
		imul    rax, 8
		mov     qword [rbp-464], rax
		mov     rax, qword [rbp-456]
		add     rax, qword [rbp-464]
		mov     qword [rbp-472], rax
		mov     rax, 2
		mov     rdx, qword [rbp-472]
		mov     qword [rdx], rax
		mov     rax, qword [rel _dy]
		mov     qword [rbp-480], rax
		mov     rax, qword [rbp-480]
		add     rax, 8
		mov     qword [rbp-488], rax
		mov     rax, 3
		imul    rax, 8
		mov     qword [rbp-496], rax
		mov     rax, qword [rbp-488]
		add     rax, qword [rbp-496]
		mov     qword [rbp-504], rax
		mov     rax, 1
		mov     rdx, qword [rbp-504]
		mov     qword [rdx], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-512], rax
		mov     rax, qword [rel _dx]
		mov     qword [rbp-520], rax
		mov     rax, qword [rbp-520]
		add     rax, 8
		mov     qword [rbp-528], rax
		mov     rax, 4
		imul    rax, 8
		mov     qword [rbp-536], rax
		mov     rax, qword [rbp-528]
		add     rax, qword [rbp-536]
		mov     qword [rbp-544], rax
		mov     rax, qword [rbp-512]
		mov     rdx, qword [rbp-544]
		mov     qword [rdx], rax
		mov     rax, 2
		neg     rax
		mov     qword [rbp-552], rax
		mov     rax, qword [rel _dy]
		mov     qword [rbp-560], rax
		mov     rax, qword [rbp-560]
		add     rax, 8
		mov     qword [rbp-568], rax
		mov     rax, 4
		imul    rax, 8
		mov     qword [rbp-576], rax
		mov     rax, qword [rbp-568]
		add     rax, qword [rbp-576]
		mov     qword [rbp-584], rax
		mov     rax, qword [rbp-552]
		mov     rdx, qword [rbp-584]
		mov     qword [rdx], rax
		mov     rax, 1
		neg     rax
		mov     qword [rbp-592], rax
		mov     rax, qword [rel _dx]
		mov     qword [rbp-600], rax
		mov     rax, qword [rbp-600]
		add     rax, 8
		mov     qword [rbp-608], rax
		mov     rax, 5
		imul    rax, 8
		mov     qword [rbp-616], rax
		mov     rax, qword [rbp-608]
		add     rax, qword [rbp-616]
		mov     qword [rbp-624], rax
		mov     rax, qword [rbp-592]
		mov     rdx, qword [rbp-624]
		mov     qword [rdx], rax
		mov     rax, qword [rel _dy]
		mov     qword [rbp-632], rax
		mov     rax, qword [rbp-632]
		add     rax, 8
		mov     qword [rbp-640], rax
		mov     rax, 5
		imul    rax, 8
		mov     qword [rbp-648], rax
		mov     rax, qword [rbp-640]
		add     rax, qword [rbp-648]
		mov     qword [rbp-656], rax
		mov     rax, 2
		mov     rdx, qword [rbp-656]
		mov     qword [rdx], rax
		mov     rax, qword [rel _dx]
		mov     qword [rbp-664], rax
		mov     rax, qword [rbp-664]
		add     rax, 8
		mov     qword [rbp-672], rax
		mov     rax, 6
		imul    rax, 8
		mov     qword [rbp-680], rax
		mov     rax, qword [rbp-672]
		add     rax, qword [rbp-680]
		mov     qword [rbp-688], rax
		mov     rax, 1
		mov     rdx, qword [rbp-688]
		mov     qword [rdx], rax
		mov     rax, 2
		neg     rax
		mov     qword [rbp-696], rax
		mov     rax, qword [rel _dy]
		mov     qword [rbp-704], rax
		mov     rax, qword [rbp-704]
		add     rax, 8
		mov     qword [rbp-712], rax
		mov     rax, 6
		imul    rax, 8
		mov     qword [rbp-720], rax
		mov     rax, qword [rbp-712]
		add     rax, qword [rbp-720]
		mov     qword [rbp-728], rax
		mov     rax, qword [rbp-696]
		mov     rdx, qword [rbp-728]
		mov     qword [rdx], rax
		mov     rax, qword [rel _dx]
		mov     qword [rbp-736], rax
		mov     rax, qword [rbp-736]
		add     rax, 8
		mov     qword [rbp-744], rax
		mov     rax, 7
		imul    rax, 8
		mov     qword [rbp-752], rax
		mov     rax, qword [rbp-744]
		add     rax, qword [rbp-752]
		mov     qword [rbp-760], rax
		mov     rax, 1
		mov     rdx, qword [rbp-760]
		mov     qword [rdx], rax
		mov     rax, qword [rel _dy]
		mov     qword [rbp-768], rax
		mov     rax, qword [rbp-768]
		add     rax, 8
		mov     qword [rbp-776], rax
		mov     rax, 7
		imul    rax, 8
		mov     qword [rbp-784], rax
		mov     rax, qword [rbp-776]
		add     rax, qword [rbp-784]
		mov     qword [rbp-792], rax
		mov     rax, 2
		mov     rdx, qword [rbp-792]
		mov     qword [rdx], rax
		jmp     L28
L28:
		mov     rax, qword [rel _head]
		mov     qword [rbp-800], rax
		mov     rax, qword [rel _tail]
		mov     qword [rbp-808], rax
		mov     rax, qword [rbp-800]
		cmp     rax, qword [rbp-808]
		setle   al
		movzx   rax, al
		mov     qword [rbp-816], rax
		mov     rax, qword [rbp-816]
		cmp     rax, 0
		jne     L29
		jmp     L36
L29:
		mov     rax, qword [rel _xlist]
		mov     qword [rbp-824], rax
		mov     rax, qword [rbp-824]
		add     rax, 8
		mov     qword [rbp-832], rax
		mov     rax, qword [rel _head]
		mov     qword [rbp-840], rax
		mov     rax, qword [rbp-840]
		imul    rax, 8
		mov     qword [rbp-848], rax
		mov     rax, qword [rbp-832]
		add     rax, qword [rbp-848]
		mov     qword [rbp-856], rax
		mov     rdx, qword [rbp-856]
		mov     rax, qword [rdx]
		mov     qword [rbp-864], rax
		mov     rax, qword [rbp-864]
		mov     qword [rel _x], rax
		mov     rax, qword [rel _ylist]
		mov     qword [rbp-872], rax
		mov     rax, qword [rbp-872]
		add     rax, 8
		mov     qword [rbp-880], rax
		mov     rax, qword [rel _head]
		mov     qword [rbp-888], rax
		mov     rax, qword [rbp-888]
		imul    rax, 8
		mov     qword [rbp-896], rax
		mov     rax, qword [rbp-880]
		add     rax, qword [rbp-896]
		mov     qword [rbp-904], rax
		mov     rdx, qword [rbp-904]
		mov     rax, qword [rdx]
		mov     qword [rbp-912], rax
		mov     rax, qword [rbp-912]
		mov     qword [rel _y], rax
		mov     rax, qword [rel _step]
		mov     qword [rbp-920], rax
		mov     rax, qword [rbp-920]
		add     rax, 8
		mov     qword [rbp-928], rax
		mov     rax, qword [rel _x]
		mov     qword [rbp-936], rax
		mov     rax, qword [rbp-936]
		imul    rax, 8
		mov     qword [rbp-944], rax
		mov     rax, qword [rbp-928]
		add     rax, qword [rbp-944]
		mov     qword [rbp-952], rax
		mov     rdx, qword [rbp-952]
		mov     rax, qword [rdx]
		mov     qword [rbp-960], rax
		mov     rax, qword [rbp-960]
		add     rax, 8
		mov     qword [rbp-968], rax
		mov     rax, qword [rel _y]
		mov     qword [rbp-976], rax
		mov     rax, qword [rbp-976]
		imul    rax, 8
		mov     qword [rbp-984], rax
		mov     rax, qword [rbp-968]
		add     rax, qword [rbp-984]
		mov     qword [rbp-992], rax
		mov     rdx, qword [rbp-992]
		mov     rax, qword [rdx]
		mov     qword [rbp-1000], rax
		mov     rax, qword [rbp-1000]
		mov     qword [rel _now], rax
		mov     rax, 0
		mov     qword [rel _j], rax
		jmp     L30
L30:
		mov     rax, qword [rel _j]
		mov     qword [rbp-1008], rax
		mov     rax, qword [rbp-1008]
		cmp     rax, 8
		setl    al
		movzx   rax, al
		mov     qword [rbp-1016], rax
		mov     rax, qword [rbp-1016]
		cmp     rax, 0
		jne     L31
		jmp     L33
L31:
		mov     rax, qword [rel _x]
		mov     qword [rbp-1024], rax
		mov     rax, qword [rel _dx]
		mov     qword [rbp-1032], rax
		mov     rax, qword [rbp-1032]
		add     rax, 8
		mov     qword [rbp-1040], rax
		mov     rax, qword [rel _j]
		mov     qword [rbp-1048], rax
		mov     rax, qword [rbp-1048]
		imul    rax, 8
		mov     qword [rbp-1056], rax
		mov     rax, qword [rbp-1040]
		add     rax, qword [rbp-1056]
		mov     qword [rbp-1064], rax
		mov     rdx, qword [rbp-1064]
		mov     rax, qword [rdx]
		mov     qword [rbp-1072], rax
		mov     rax, qword [rbp-1024]
		add     rax, qword [rbp-1072]
		mov     qword [rbp-1080], rax
		mov     rax, qword [rel _y]
		mov     qword [rbp-1088], rax
		mov     rax, qword [rel _dy]
		mov     qword [rbp-1096], rax
		mov     rax, qword [rbp-1096]
		add     rax, 8
		mov     qword [rbp-1104], rax
		mov     rax, qword [rel _j]
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
		mov     rax, qword [rbp-1088]
		add     rax, qword [rbp-1136]
		mov     qword [rbp-1144], rax
		mov     rdi, qword [rbp-1080]
		mov     rsi, qword [rbp-1144]
		call    addList
		jmp     L32
L32:
		mov     rax, qword [rel _j]
		mov     qword [rbp-1152], rax
		mov     rax, qword [rel _j]
		mov     qword [rbp-1160], rax
		mov     rax, qword [rbp-1160]
		inc     rax
		mov     qword [rbp-1168], rax
		mov     rax, qword [rbp-1168]
		mov     qword [rel _j], rax
		jmp     L30
L33:
		mov     rax, qword [rel _ok]
		mov     qword [rbp-1176], rax
		mov     rax, qword [rbp-1176]
		cmp     rax, 1
		sete    al
		movzx   rax, al
		mov     qword [rbp-1184], rax
		mov     rax, qword [rbp-1184]
		cmp     rax, 0
		jne     L34
		jmp     L35
L34:
		jmp     L36
L35:
		mov     rax, qword [rel _head]
		mov     qword [rbp-1192], rax
		mov     rax, qword [rel _head]
		mov     qword [rbp-1200], rax
		mov     rax, qword [rbp-1200]
		inc     rax
		mov     qword [rbp-1208], rax
		mov     rax, qword [rbp-1208]
		mov     qword [rel _head], rax
		jmp     L28
L36:
		mov     rax, qword [rel _ok]
		mov     qword [rbp-1216], rax
		mov     rax, qword [rbp-1216]
		cmp     rax, 1
		sete    al
		movzx   rax, al
		mov     qword [rbp-1224], rax
		mov     rax, qword [rbp-1224]
		cmp     rax, 0
		jne     L37
		jmp     L38
L37:
		mov     rax, qword [rel _step]
		mov     qword [rbp-1232], rax
		mov     rax, qword [rbp-1232]
		add     rax, 8
		mov     qword [rbp-1240], rax
		mov     rax, qword [rel _targetx]
		mov     qword [rbp-1248], rax
		mov     rax, qword [rbp-1248]
		imul    rax, 8
		mov     qword [rbp-1256], rax
		mov     rax, qword [rbp-1240]
		add     rax, qword [rbp-1256]
		mov     qword [rbp-1264], rax
		mov     rdx, qword [rbp-1264]
		mov     rax, qword [rdx]
		mov     qword [rbp-1272], rax
		mov     rax, qword [rbp-1272]
		add     rax, 8
		mov     qword [rbp-1280], rax
		mov     rax, qword [rel _targety]
		mov     qword [rbp-1288], rax
		mov     rax, qword [rbp-1288]
		imul    rax, 8
		mov     qword [rbp-1296], rax
		mov     rax, qword [rbp-1280]
		add     rax, qword [rbp-1296]
		mov     qword [rbp-1304], rax
		mov     rdx, qword [rbp-1304]
		mov     rax, qword [rdx]
		mov     qword [rbp-1312], rax
		mov     rdi, qword [rbp-1312]
		call    toString
		mov     qword [rbp-1320], rax
		mov     rdi, qword [rbp-1320]
		call    println
		jmp     L39
L38:
		mov     rdi, __str_0
		call    print
		jmp     L39
L39:
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

__str_0:
		dq      13
		db      6EH, 6FH, 20H, 73H, 6FH, 6CH, 75H, 74H, 69H, 6FH, 6EH, 21H, 0AH, 00H

SECTION .bss
_N:
		resb    8
_head:
		resb    8
_startx:
		resb    8
_starty:
		resb    8
_targetx:
		resb    8
_targety:
		resb    8
_x:
		resb    8
_y:
		resb    8
_xlist:
		resb    8
_ylist:
		resb    8
_tail:
		resb    8
_ok:
		resb    8
_now:
		resb    8
_dx:
		resb    8
_dy:
		resb    8
_step:
		resb    8
_i:
		resb    8
_j:
		resb    8


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


