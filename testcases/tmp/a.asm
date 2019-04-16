default rel

global main
global _n
global _h
global _now
global _a
global _A
global _M
global _Q
global _R
global _seed
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
global random
global initialize
global swap
global pd
global show
global win
global merge
global move
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
		mov     rax, 48271
		mov     qword [rel _A], rax
		mov     rax, 2147483647
		mov     qword [rel _M], rax
		mov     rax, 1
		mov     qword [rel _seed], rax
		mov     rsp, rbp
		pop     rbp
		ret     

random:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 128
		mov     rax, qword [rel _A]
		mov     qword [rbp-8], rax
		mov     rax, qword [rel _seed]
		mov     qword [rbp-16], rax
		mov     rax, qword [rel _Q]
		mov     qword [rbp-24], rax
		mov     rax, qword [rbp-16]
		cqo     
		mov     rcx, qword [rbp-24]
		idiv    rcx
		mov     qword [rbp-32], rdx
		mov     rax, qword [rbp-8]
		imul    rax, qword [rbp-32]
		mov     qword [rbp-40], rax
		mov     rax, qword [rel _R]
		mov     qword [rbp-48], rax
		mov     rax, qword [rel _seed]
		mov     qword [rbp-56], rax
		mov     rax, qword [rel _Q]
		mov     qword [rbp-64], rax
		mov     rax, qword [rbp-56]
		cqo     
		mov     rcx, qword [rbp-64]
		idiv    rcx
		mov     qword [rbp-72], rax
		mov     rax, qword [rbp-48]
		imul    rax, qword [rbp-72]
		mov     qword [rbp-80], rax
		mov     rax, qword [rbp-40]
		sub     rax, qword [rbp-80]
		mov     qword [rbp-88], rax
		mov     rax, qword [rbp-88]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-96], rax
		mov     rax, qword [rbp-96]
		cmp     rax, 0
		jne     L1
		jmp     L2
L1:
		mov     rax, qword [rbp-88]
		mov     qword [rel _seed], rax
		jmp     L3
L2:
		mov     rax, qword [rel _M]
		mov     qword [rbp-104], rax
		mov     rax, qword [rbp-88]
		add     rax, qword [rbp-104]
		mov     qword [rbp-112], rax
		mov     rax, qword [rbp-112]
		mov     qword [rel _seed], rax
		jmp     L3
L3:
		mov     rax, qword [rel _seed]
		mov     qword [rbp-120], rax
		mov     rax, qword [rbp-120]
		mov     rsp, rbp
		pop     rbp
		ret     

initialize:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 16
		mov     qword [rbp-8], rdi
		mov     rax, qword [rbp-8]
		mov     qword [rel _seed], rax
		mov     rsp, rbp
		pop     rbp
		ret     

swap:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 144
		mov     qword [rbp-8], rdi
		mov     qword [rbp-16], rsi
		mov     rax, qword [rel _a]
		mov     qword [rbp-24], rax
		mov     rax, qword [rbp-24]
		add     rax, 8
		mov     qword [rbp-32], rax
		mov     rax, qword [rbp-8]
		imul    rax, 8
		mov     qword [rbp-40], rax
		mov     rax, qword [rbp-32]
		add     rax, qword [rbp-40]
		mov     qword [rbp-48], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-56], rax
		mov     rax, qword [rel _a]
		mov     qword [rbp-64], rax
		mov     rax, qword [rbp-64]
		add     rax, 8
		mov     qword [rbp-72], rax
		mov     rax, qword [rbp-16]
		imul    rax, 8
		mov     qword [rbp-80], rax
		mov     rax, qword [rbp-72]
		add     rax, qword [rbp-80]
		mov     qword [rbp-88], rax
		mov     rdx, qword [rbp-88]
		mov     rax, qword [rdx]
		mov     qword [rbp-96], rax
		mov     rax, qword [rel _a]
		mov     qword [rbp-104], rax
		mov     rax, qword [rbp-104]
		add     rax, 8
		mov     qword [rbp-112], rax
		mov     rax, qword [rbp-112]
		add     rax, qword [rbp-40]
		mov     qword [rbp-120], rax
		mov     rax, qword [rbp-96]
		mov     rdx, qword [rbp-120]
		mov     qword [rdx], rax
		mov     rax, qword [rel _a]
		mov     qword [rbp-128], rax
		mov     rax, qword [rbp-128]
		add     rax, 8
		mov     qword [rbp-136], rax
		mov     rax, qword [rbp-136]
		add     rax, qword [rbp-80]
		mov     qword [rbp-144], rax
		mov     rax, qword [rbp-56]
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		mov     rsp, rbp
		pop     rbp
		ret     

pd:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 96
		mov     qword [rbp-8], rdi
		jmp     L4
L4:
		mov     rax, qword [rel _h]
		mov     qword [rbp-16], rax
		mov     rax, qword [rbp-16]
		cmp     rax, qword [rbp-8]
		setle   al
		movzx   rax, al
		mov     qword [rbp-24], rax
		mov     rax, qword [rbp-24]
		cmp     rax, 0
		jne     L5
		jmp     L8
L5:
		mov     rax, qword [rel _h]
		mov     qword [rbp-32], rax
		mov     rax, qword [rel _h]
		mov     qword [rbp-40], rax
		mov     rax, qword [rbp-40]
		add     rax, 1
		mov     qword [rbp-48], rax
		mov     rax, qword [rbp-32]
		imul    rax, qword [rbp-48]
		mov     qword [rbp-56], rax
		mov     rax, qword [rbp-56]
		cqo     
		mov     rcx, 2
		idiv    rcx
		mov     qword [rbp-64], rax
		mov     rax, qword [rbp-8]
		cmp     rax, qword [rbp-64]
		sete    al
		movzx   rax, al
		mov     qword [rbp-72], rax
		mov     rax, qword [rbp-72]
		cmp     rax, 0
		jne     L6
		jmp     L7
L6:
		mov     rax, 1
		mov     rsp, rbp
		pop     rbp
		ret     
L7:
		mov     rax, qword [rel _h]
		mov     qword [rbp-80], rax
		mov     rax, qword [rbp-80]
		inc     rax
		mov     qword [rbp-88], rax
		mov     rax, qword [rbp-88]
		mov     qword [rel _h], rax
		jmp     L4
L8:
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

show:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 112
		mov     rax, rbp
		sub     rax, 8
		mov     qword [rbp-16], rax
		mov     rax, 0
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L9
L9:
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-24], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-32], rax
		mov     rax, qword [rbp-24]
		cmp     rax, qword [rbp-32]
		setl    al
		movzx   rax, al
		mov     qword [rbp-40], rax
		mov     rax, qword [rbp-40]
		cmp     rax, 0
		jne     L10
		jmp     L11
L10:
		mov     rax, qword [rel _a]
		mov     qword [rbp-48], rax
		mov     rax, qword [rbp-48]
		add     rax, 8
		mov     qword [rbp-56], rax
		mov     rax, qword [rbp-24]
		imul    rax, 8
		mov     qword [rbp-64], rax
		mov     rax, qword [rbp-56]
		add     rax, qword [rbp-64]
		mov     qword [rbp-72], rax
		mov     rdx, qword [rbp-72]
		mov     rax, qword [rdx]
		mov     qword [rbp-80], rax
		mov     rdi, qword [rbp-80]
		call    toString
		mov     qword [rbp-88], rax
		mov     rdi, qword [rbp-88]
		mov     rsi, __str_0
		call    _stringAdd
		mov     qword [rbp-96], rax
		mov     rdi, qword [rbp-96]
		call    print
		mov     rax, qword [rbp-24]
		inc     rax
		mov     qword [rbp-104], rax
		mov     rax, qword [rbp-104]
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L9
L11:
		mov     rdi, __str_1
		call    println
		mov     rsp, rbp
		pop     rbp
		ret     

win:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 544
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
		mov     rdi, 816
		call    malloc
		mov     qword [rbp-120], rax
		mov     rax, 101
		mov     rdx, qword [rbp-120]
		mov     qword [rdx], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-128], rax
		mov     rax, qword [rel _h]
		mov     qword [rbp-136], rax
		mov     rax, qword [rbp-128]
		cmp     rax, qword [rbp-136]
		setne   al
		movzx   rax, al
		mov     qword [rbp-144], rax
		mov     rax, qword [rbp-144]
		cmp     rax, 0
		jne     L12
		jmp     L13
L12:
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     
L13:
		mov     rax, 0
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L14
L14:
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-152], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-160], rax
		mov     rax, qword [rbp-152]
		cmp     rax, qword [rbp-160]
		setl    al
		movzx   rax, al
		mov     qword [rbp-168], rax
		mov     rax, qword [rbp-168]
		cmp     rax, 0
		jne     L15
		jmp     L16
L15:
		mov     rax, qword [rel _a]
		mov     qword [rbp-176], rax
		mov     rax, qword [rbp-176]
		add     rax, 8
		mov     qword [rbp-184], rax
		mov     rax, qword [rbp-152]
		imul    rax, 8
		mov     qword [rbp-192], rax
		mov     rax, qword [rbp-184]
		add     rax, qword [rbp-192]
		mov     qword [rbp-200], rax
		mov     rdx, qword [rbp-200]
		mov     rax, qword [rdx]
		mov     qword [rbp-208], rax
		mov     rax, qword [rbp-120]
		add     rax, 8
		mov     qword [rbp-216], rax
		mov     rax, qword [rbp-216]
		add     rax, qword [rbp-192]
		mov     qword [rbp-224], rax
		mov     rax, qword [rbp-208]
		mov     rdx, qword [rbp-224]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-152]
		inc     rax
		mov     qword [rbp-232], rax
		mov     rax, qword [rbp-232]
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L14
L16:
		mov     rax, 0
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L17
L17:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-240], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-248], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-256], rax
		mov     rax, qword [rbp-256]
		sub     rax, 1
		mov     qword [rbp-264], rax
		mov     rax, qword [rbp-240]
		cmp     rax, qword [rbp-264]
		setl    al
		movzx   rax, al
		mov     qword [rbp-272], rax
		mov     rax, qword [rbp-272]
		cmp     rax, 0
		jne     L18
		jmp     L25
L18:
		mov     rax, qword [rbp-240]
		add     rax, 1
		mov     qword [rbp-280], rax
		mov     rax, qword [rbp-280]
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-248]
		mov     rdx, qword [rbp-80]
		mov     qword [rdx], rax
		jmp     L19
L19:
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-288], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-296], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-304], rax
		mov     rax, qword [rbp-288]
		cmp     rax, qword [rbp-304]
		setl    al
		movzx   rax, al
		mov     qword [rbp-312], rax
		mov     rax, qword [rbp-312]
		cmp     rax, 0
		jne     L20
		jmp     L24
L20:
		mov     rax, qword [rbp-120]
		add     rax, 8
		mov     qword [rbp-320], rax
		mov     rax, qword [rbp-240]
		imul    rax, 8
		mov     qword [rbp-328], rax
		mov     rax, qword [rbp-320]
		add     rax, qword [rbp-328]
		mov     qword [rbp-336], rax
		mov     rdx, qword [rbp-336]
		mov     rax, qword [rdx]
		mov     qword [rbp-344], rax
		mov     rax, qword [rbp-288]
		imul    rax, 8
		mov     qword [rbp-352], rax
		mov     rax, qword [rbp-320]
		add     rax, qword [rbp-352]
		mov     qword [rbp-360], rax
		mov     rdx, qword [rbp-360]
		mov     rax, qword [rdx]
		mov     qword [rbp-368], rax
		mov     rax, qword [rbp-344]
		cmp     rax, qword [rbp-368]
		setg    al
		movzx   rax, al
		mov     qword [rbp-376], rax
		mov     rax, qword [rbp-376]
		cmp     rax, 0
		jne     L22
		jmp     L21
L21:
		mov     rax, qword [rbp-296]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		jmp     L23
L22:
		mov     rax, qword [rbp-120]
		add     rax, 8
		mov     qword [rbp-384], rax
		mov     rax, qword [rbp-240]
		imul    rax, 8
		mov     qword [rbp-392], rax
		mov     rax, qword [rbp-384]
		add     rax, qword [rbp-392]
		mov     qword [rbp-400], rax
		mov     rdx, qword [rbp-400]
		mov     rax, qword [rdx]
		mov     qword [rbp-408], rax
		mov     rax, qword [rbp-288]
		imul    rax, 8
		mov     qword [rbp-416], rax
		mov     rax, qword [rbp-384]
		add     rax, qword [rbp-416]
		mov     qword [rbp-424], rax
		mov     rdx, qword [rbp-424]
		mov     rax, qword [rdx]
		mov     qword [rbp-432], rax
		mov     rax, qword [rbp-432]
		mov     rdx, qword [rbp-400]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-408]
		mov     rdx, qword [rbp-424]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-408]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		jmp     L23
L23:
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-440], rax
		mov     rax, qword [rbp-288]
		inc     rax
		mov     qword [rbp-448], rax
		mov     rax, qword [rbp-448]
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-440]
		mov     rdx, qword [rbp-80]
		mov     qword [rdx], rax
		jmp     L19
L24:
		mov     rax, qword [rbp-240]
		inc     rax
		mov     qword [rbp-456], rax
		mov     rax, qword [rbp-456]
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-296]
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L17
L25:
		mov     rax, 0
		mov     rdx, qword [rbp-64]
		mov     qword [rdx], rax
		jmp     L26
L26:
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-464], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-472], rax
		mov     rax, qword [rbp-464]
		cmp     rax, qword [rbp-472]
		setl    al
		movzx   rax, al
		mov     qword [rbp-480], rax
		mov     rax, qword [rbp-480]
		cmp     rax, 0
		jne     L27
		jmp     L30
L27:
		mov     rax, qword [rbp-120]
		add     rax, 8
		mov     qword [rbp-488], rax
		mov     rax, qword [rbp-464]
		imul    rax, 8
		mov     qword [rbp-496], rax
		mov     rax, qword [rbp-488]
		add     rax, qword [rbp-496]
		mov     qword [rbp-504], rax
		mov     rdx, qword [rbp-504]
		mov     rax, qword [rdx]
		mov     qword [rbp-512], rax
		mov     rax, qword [rbp-464]
		add     rax, 1
		mov     qword [rbp-520], rax
		mov     rax, qword [rbp-512]
		cmp     rax, qword [rbp-520]
		setne   al
		movzx   rax, al
		mov     qword [rbp-528], rax
		mov     rax, qword [rbp-528]
		cmp     rax, 0
		jne     L28
		jmp     L29
L28:
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     
L29:
		mov     rax, qword [rbp-464]
		inc     rax
		mov     qword [rbp-536], rax
		mov     rax, qword [rbp-536]
		mov     rdx, qword [rbp-64]
		mov     qword [rdx], rax
		jmp     L26
L30:
		mov     rax, 1
		mov     rsp, rbp
		pop     rbp
		ret     

merge:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 352
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
		mov     rax, 0
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L31
L31:
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-88], rax
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-96], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-104], rax
		mov     rax, qword [rbp-88]
		cmp     rax, qword [rbp-104]
		setl    al
		movzx   rax, al
		mov     qword [rbp-112], rax
		mov     rax, qword [rbp-112]
		cmp     rax, 0
		jne     L32
		jmp     L41
L32:
		mov     rax, qword [rel _a]
		mov     qword [rbp-120], rax
		mov     rax, qword [rbp-120]
		add     rax, 8
		mov     qword [rbp-128], rax
		mov     rax, qword [rbp-88]
		imul    rax, 8
		mov     qword [rbp-136], rax
		mov     rax, qword [rbp-128]
		add     rax, qword [rbp-136]
		mov     qword [rbp-144], rax
		mov     rdx, qword [rbp-144]
		mov     rax, qword [rdx]
		mov     qword [rbp-152], rax
		mov     rax, qword [rbp-152]
		cmp     rax, 0
		sete    al
		movzx   rax, al
		mov     qword [rbp-160], rax
		mov     rax, qword [rbp-160]
		cmp     rax, 0
		jne     L34
		jmp     L33
L33:
		mov     rax, qword [rbp-96]
		mov     rdx, qword [rbp-64]
		mov     qword [rdx], rax
		jmp     L40
L34:
		mov     rax, qword [rbp-88]
		add     rax, 1
		mov     qword [rbp-168], rax
		mov     rax, qword [rbp-168]
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L35
L35:
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-176], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-184], rax
		mov     rax, qword [rbp-176]
		cmp     rax, qword [rbp-184]
		setl    al
		movzx   rax, al
		mov     qword [rbp-192], rax
		mov     rax, qword [rbp-192]
		cmp     rax, 0
		jne     L37
		jmp     L36
L36:
		mov     rax, qword [rbp-176]
		mov     rdx, qword [rbp-64]
		mov     qword [rdx], rax
		jmp     L40
L37:
		mov     rax, qword [rel _a]
		mov     qword [rbp-200], rax
		mov     rax, qword [rbp-200]
		add     rax, 8
		mov     qword [rbp-208], rax
		mov     rax, qword [rbp-176]
		imul    rax, 8
		mov     qword [rbp-216], rax
		mov     rax, qword [rbp-208]
		add     rax, qword [rbp-216]
		mov     qword [rbp-224], rax
		mov     rdx, qword [rbp-224]
		mov     rax, qword [rdx]
		mov     qword [rbp-232], rax
		mov     rax, qword [rbp-232]
		cmp     rax, 0
		setne   al
		movzx   rax, al
		mov     qword [rbp-240], rax
		mov     rax, qword [rbp-240]
		cmp     rax, 0
		jne     L38
		jmp     L39
L38:
		mov     rdi, qword [rbp-88]
		mov     rsi, qword [rbp-176]
		call    swap
		mov     rax, qword [rbp-176]
		mov     rdx, qword [rbp-64]
		mov     qword [rdx], rax
		jmp     L40
L39:
		mov     rax, qword [rbp-176]
		inc     rax
		mov     qword [rbp-248], rax
		mov     rax, qword [rbp-248]
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L35
L40:
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-256], rax
		mov     rax, qword [rbp-88]
		inc     rax
		mov     qword [rbp-264], rax
		mov     rax, qword [rbp-264]
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-256]
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		jmp     L31
L41:
		mov     rax, 0
		mov     rdx, qword [rbp-80]
		mov     qword [rdx], rax
		jmp     L42
L42:
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-272], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-280], rax
		mov     rax, qword [rbp-272]
		cmp     rax, qword [rbp-280]
		setl    al
		movzx   rax, al
		mov     qword [rbp-288], rax
		mov     rax, qword [rbp-288]
		cmp     rax, 0
		jne     L43
		jmp     L46
L43:
		mov     rax, qword [rel _a]
		mov     qword [rbp-296], rax
		mov     rax, qword [rbp-296]
		add     rax, 8
		mov     qword [rbp-304], rax
		mov     rax, qword [rbp-272]
		imul    rax, 8
		mov     qword [rbp-312], rax
		mov     rax, qword [rbp-304]
		add     rax, qword [rbp-312]
		mov     qword [rbp-320], rax
		mov     rdx, qword [rbp-320]
		mov     rax, qword [rdx]
		mov     qword [rbp-328], rax
		mov     rax, qword [rbp-328]
		cmp     rax, 0
		sete    al
		movzx   rax, al
		mov     qword [rbp-336], rax
		mov     rax, qword [rbp-336]
		cmp     rax, 0
		jne     L44
		jmp     L45
L44:
		mov     rax, qword [rbp-272]
		mov     qword [rel _now], rax
		jmp     L46
L45:
		mov     rax, qword [rbp-272]
		inc     rax
		mov     qword [rbp-344], rax
		mov     rax, qword [rbp-344]
		mov     rdx, qword [rbp-80]
		mov     qword [rdx], rax
		jmp     L42
L46:
		mov     rsp, rbp
		pop     rbp
		ret     

move:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 160
		mov     rax, rbp
		sub     rax, 8
		mov     qword [rbp-16], rax
		mov     rax, 0
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L47
L47:
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-24], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-32], rax
		mov     rax, qword [rbp-24]
		cmp     rax, qword [rbp-32]
		setl    al
		movzx   rax, al
		mov     qword [rbp-40], rax
		mov     rax, qword [rbp-40]
		cmp     rax, 0
		jne     L48
		jmp     L49
L48:
		mov     rax, qword [rel _a]
		mov     qword [rbp-48], rax
		mov     rax, qword [rbp-48]
		add     rax, 8
		mov     qword [rbp-56], rax
		mov     rax, qword [rbp-24]
		imul    rax, 8
		mov     qword [rbp-64], rax
		mov     rax, qword [rbp-56]
		add     rax, qword [rbp-64]
		mov     qword [rbp-72], rax
		mov     rdx, qword [rbp-72]
		mov     rax, qword [rdx]
		mov     qword [rbp-80], rax
		mov     rax, qword [rbp-80]
		dec     rax
		mov     qword [rbp-88], rax
		mov     rax, qword [rbp-88]
		mov     rdx, qword [rbp-72]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-24]
		add     rax, 1
		mov     qword [rbp-96], rax
		mov     rax, qword [rbp-96]
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L47
L49:
		mov     rax, qword [rel _now]
		mov     qword [rbp-104], rax
		mov     rax, qword [rel _a]
		mov     qword [rbp-112], rax
		mov     rax, qword [rbp-112]
		add     rax, 8
		mov     qword [rbp-120], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-128], rax
		mov     rax, qword [rbp-128]
		imul    rax, 8
		mov     qword [rbp-136], rax
		mov     rax, qword [rbp-120]
		add     rax, qword [rbp-136]
		mov     qword [rbp-144], rax
		mov     rax, qword [rbp-104]
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-152], rax
		mov     rax, qword [rbp-152]
		inc     rax
		mov     qword [rbp-160], rax
		mov     rax, qword [rbp-160]
		mov     qword [rel _now], rax
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 1488
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
		call    getInt
		mov     qword [rbp-264], rax
		mov     rax, 0
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-80]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-64]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		jmp     L50
L50:
		mov     rdx, qword [rbp-112]
		mov     rax, qword [rdx]
		mov     qword [rbp-272], rax
		mov     rdx, qword [rbp-96]
		mov     rax, qword [rdx]
		mov     qword [rbp-280], rax
		mov     rdx, qword [rbp-80]
		mov     rax, qword [rdx]
		mov     qword [rbp-288], rax
		mov     rdx, qword [rbp-64]
		mov     rax, qword [rdx]
		mov     qword [rbp-296], rax
		mov     rdx, qword [rbp-48]
		mov     rax, qword [rdx]
		mov     qword [rbp-304], rax
		mov     rax, qword [rbp-272]
		cmp     rax, qword [rbp-264]
		setl    al
		movzx   rax, al
		mov     qword [rbp-312], rax
		mov     rax, qword [rbp-312]
		cmp     rax, 0
		jne     L51
		jmp     L84
L51:
		mov     rax, 5050
		mov     qword [rel _n], rax
		mov     rax, 0
		mov     qword [rel _h], rax
		mov     rdi, 816
		call    malloc
		mov     qword [rbp-320], rax
		mov     rax, 101
		mov     rdx, qword [rbp-320]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-320]
		mov     qword [rel _a], rax
		mov     rax, qword [rel _M]
		mov     qword [rbp-328], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-336], rax
		mov     rax, qword [rbp-328]
		cqo     
		mov     rcx, qword [rbp-336]
		idiv    rcx
		mov     qword [rbp-344], rax
		mov     rax, qword [rbp-344]
		mov     qword [rel _Q], rax
		mov     rax, qword [rel _M]
		mov     qword [rbp-352], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-360], rax
		mov     rax, qword [rbp-352]
		cqo     
		mov     rcx, qword [rbp-360]
		idiv    rcx
		mov     qword [rbp-368], rdx
		mov     rax, qword [rbp-368]
		mov     qword [rel _R], rax
		mov     rax, qword [rel _n]
		mov     qword [rbp-376], rax
		jmp     L52
L52:
		mov     rax, qword [rel _h]
		mov     qword [rbp-384], rax
		mov     rax, qword [rbp-384]
		cmp     rax, qword [rbp-376]
		setle   al
		movzx   rax, al
		mov     qword [rbp-392], rax
		mov     rax, qword [rbp-392]
		cmp     rax, 0
		jne     L53
		jmp     L56
L53:
		mov     rax, qword [rel _h]
		mov     qword [rbp-400], rax
		mov     rax, qword [rel _h]
		mov     qword [rbp-408], rax
		mov     rax, qword [rbp-408]
		add     rax, 1
		mov     qword [rbp-416], rax
		mov     rax, qword [rbp-400]
		imul    rax, qword [rbp-416]
		mov     qword [rbp-424], rax
		mov     rax, qword [rbp-424]
		cqo     
		mov     rcx, 2
		idiv    rcx
		mov     qword [rbp-432], rax
		mov     rax, qword [rbp-376]
		cmp     rax, qword [rbp-432]
		sete    al
		movzx   rax, al
		mov     qword [rbp-440], rax
		mov     rax, qword [rbp-440]
		cmp     rax, 0
		jne     L54
		jmp     L55
L54:
		mov     rax, 1
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		jmp     L57
L55:
		mov     rax, qword [rel _h]
		mov     qword [rbp-448], rax
		mov     rax, qword [rbp-448]
		inc     rax
		mov     qword [rbp-456], rax
		mov     rax, qword [rbp-456]
		mov     qword [rel _h], rax
		jmp     L52
L56:
		mov     rax, 0
		mov     rdx, qword [rbp-144]
		mov     qword [rdx], rax
		jmp     L57
L57:
		mov     rdx, qword [rbp-144]
		mov     rax, qword [rdx]
		mov     qword [rbp-464], rax
		mov     rax, qword [rbp-464]
		cmp     rax, 0
		jne     L59
		jmp     L58
L58:
		mov     rdi, __str_2
		call    println
		mov     rax, 1
		mov     rsp, rbp
		pop     rbp
		ret     
L59:
		mov     rdi, __str_3
		call    println
		mov     rax, qword [rel _A]
		mov     qword [rbp-472], rax
		mov     rax, qword [rel _seed]
		mov     qword [rbp-480], rax
		mov     rax, qword [rel _Q]
		mov     qword [rbp-488], rax
		mov     rax, qword [rbp-480]
		cqo     
		mov     rcx, qword [rbp-488]
		idiv    rcx
		mov     qword [rbp-496], rdx
		mov     rax, qword [rbp-472]
		imul    rax, qword [rbp-496]
		mov     qword [rbp-504], rax
		mov     rax, qword [rel _R]
		mov     qword [rbp-512], rax
		mov     rax, qword [rel _seed]
		mov     qword [rbp-520], rax
		mov     rax, qword [rel _Q]
		mov     qword [rbp-528], rax
		mov     rax, qword [rbp-520]
		cqo     
		mov     rcx, qword [rbp-528]
		idiv    rcx
		mov     qword [rbp-536], rax
		mov     rax, qword [rbp-512]
		imul    rax, qword [rbp-536]
		mov     qword [rbp-544], rax
		mov     rax, qword [rbp-504]
		sub     rax, qword [rbp-544]
		mov     qword [rbp-552], rax
		mov     rax, qword [rbp-552]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-560], rax
		mov     rax, qword [rbp-560]
		cmp     rax, 0
		jne     L60
		jmp     L61
L60:
		mov     rax, qword [rbp-552]
		mov     qword [rel _seed], rax
		jmp     L62
L61:
		mov     rax, qword [rel _M]
		mov     qword [rbp-568], rax
		mov     rax, qword [rbp-552]
		add     rax, qword [rbp-568]
		mov     qword [rbp-576], rax
		mov     rax, qword [rbp-576]
		mov     qword [rel _seed], rax
		jmp     L62
L62:
		mov     rax, qword [rel _seed]
		mov     qword [rbp-584], rax
		mov     rax, qword [rbp-584]
		mov     qword [rel _seed], rax
		mov     rax, qword [rel _A]
		mov     qword [rbp-592], rax
		mov     rax, qword [rel _seed]
		mov     qword [rbp-600], rax
		mov     rax, qword [rel _Q]
		mov     qword [rbp-608], rax
		mov     rax, qword [rbp-600]
		cqo     
		mov     rcx, qword [rbp-608]
		idiv    rcx
		mov     qword [rbp-616], rdx
		mov     rax, qword [rbp-592]
		imul    rax, qword [rbp-616]
		mov     qword [rbp-624], rax
		mov     rax, qword [rel _R]
		mov     qword [rbp-632], rax
		mov     rax, qword [rel _seed]
		mov     qword [rbp-640], rax
		mov     rax, qword [rel _Q]
		mov     qword [rbp-648], rax
		mov     rax, qword [rbp-640]
		cqo     
		mov     rcx, qword [rbp-648]
		idiv    rcx
		mov     qword [rbp-656], rax
		mov     rax, qword [rbp-632]
		imul    rax, qword [rbp-656]
		mov     qword [rbp-664], rax
		mov     rax, qword [rbp-624]
		sub     rax, qword [rbp-664]
		mov     qword [rbp-672], rax
		mov     rax, qword [rbp-672]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-680], rax
		mov     rax, qword [rbp-680]
		cmp     rax, 0
		jne     L63
		jmp     L64
L63:
		mov     rax, qword [rbp-672]
		mov     qword [rel _seed], rax
		jmp     L65
L64:
		mov     rax, qword [rel _M]
		mov     qword [rbp-688], rax
		mov     rax, qword [rbp-672]
		add     rax, qword [rbp-688]
		mov     qword [rbp-696], rax
		mov     rax, qword [rbp-696]
		mov     qword [rel _seed], rax
		jmp     L65
L65:
		mov     rax, qword [rel _seed]
		mov     qword [rbp-704], rax
		mov     rax, qword [rbp-704]
		cqo     
		mov     rcx, 10
		idiv    rcx
		mov     qword [rbp-712], rdx
		mov     rax, qword [rbp-712]
		add     rax, 1
		mov     qword [rbp-720], rax
		mov     rax, qword [rbp-720]
		mov     qword [rel _now], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-728], rax
		mov     rdi, qword [rbp-728]
		call    toString
		mov     qword [rbp-736], rax
		mov     rdi, qword [rbp-736]
		call    println
		mov     rax, 0
		mov     rdx, qword [rbp-256]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-240]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-280]
		mov     rdx, qword [rbp-224]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-288]
		mov     rdx, qword [rbp-208]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-296]
		mov     rdx, qword [rbp-192]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-304]
		mov     rdx, qword [rbp-176]
		mov     qword [rdx], rax
		jmp     L66
L66:
		mov     rdx, qword [rbp-256]
		mov     rax, qword [rdx]
		mov     qword [rbp-744], rax
		mov     rdx, qword [rbp-240]
		mov     rax, qword [rdx]
		mov     qword [rbp-752], rax
		mov     rdx, qword [rbp-224]
		mov     rax, qword [rdx]
		mov     qword [rbp-760], rax
		mov     rdx, qword [rbp-208]
		mov     rax, qword [rdx]
		mov     qword [rbp-768], rax
		mov     rdx, qword [rbp-192]
		mov     rax, qword [rdx]
		mov     qword [rbp-776], rax
		mov     rdx, qword [rbp-176]
		mov     rax, qword [rdx]
		mov     qword [rbp-784], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-792], rax
		mov     rax, qword [rbp-792]
		sub     rax, 1
		mov     qword [rbp-800], rax
		mov     rax, qword [rbp-744]
		cmp     rax, qword [rbp-800]
		setl    al
		movzx   rax, al
		mov     qword [rbp-808], rax
		mov     rax, qword [rbp-808]
		cmp     rax, 0
		jne     L67
		jmp     L77
L67:
		mov     rax, qword [rel _A]
		mov     qword [rbp-816], rax
		mov     rax, qword [rel _seed]
		mov     qword [rbp-824], rax
		mov     rax, qword [rel _Q]
		mov     qword [rbp-832], rax
		mov     rax, qword [rbp-824]
		cqo     
		mov     rcx, qword [rbp-832]
		idiv    rcx
		mov     qword [rbp-840], rdx
		mov     rax, qword [rbp-816]
		imul    rax, qword [rbp-840]
		mov     qword [rbp-848], rax
		mov     rax, qword [rel _R]
		mov     qword [rbp-856], rax
		mov     rax, qword [rel _seed]
		mov     qword [rbp-864], rax
		mov     rax, qword [rel _Q]
		mov     qword [rbp-872], rax
		mov     rax, qword [rbp-864]
		cqo     
		mov     rcx, qword [rbp-872]
		idiv    rcx
		mov     qword [rbp-880], rax
		mov     rax, qword [rbp-856]
		imul    rax, qword [rbp-880]
		mov     qword [rbp-888], rax
		mov     rax, qword [rbp-848]
		sub     rax, qword [rbp-888]
		mov     qword [rbp-896], rax
		mov     rax, qword [rbp-896]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-904], rax
		mov     rax, qword [rbp-904]
		cmp     rax, 0
		jne     L68
		jmp     L69
L68:
		mov     rax, qword [rbp-896]
		mov     qword [rel _seed], rax
		jmp     L70
L69:
		mov     rax, qword [rel _M]
		mov     qword [rbp-912], rax
		mov     rax, qword [rbp-896]
		add     rax, qword [rbp-912]
		mov     qword [rbp-920], rax
		mov     rax, qword [rbp-920]
		mov     qword [rel _seed], rax
		jmp     L70
L70:
		mov     rax, qword [rel _seed]
		mov     qword [rbp-928], rax
		mov     rax, qword [rbp-928]
		cqo     
		mov     rcx, 10
		idiv    rcx
		mov     qword [rbp-936], rdx
		mov     rax, qword [rbp-936]
		add     rax, 1
		mov     qword [rbp-944], rax
		mov     rax, qword [rel _a]
		mov     qword [rbp-952], rax
		mov     rax, qword [rbp-952]
		add     rax, 8
		mov     qword [rbp-960], rax
		mov     rax, qword [rbp-744]
		imul    rax, 8
		mov     qword [rbp-968], rax
		mov     rax, qword [rbp-960]
		add     rax, qword [rbp-968]
		mov     qword [rbp-976], rax
		mov     rax, qword [rbp-944]
		mov     rdx, qword [rbp-976]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-776]
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-784]
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L71
L71:
		mov     rdx, qword [rbp-32]
		mov     rax, qword [rdx]
		mov     qword [rbp-984], rax
		mov     rdx, qword [rbp-16]
		mov     rax, qword [rdx]
		mov     qword [rbp-992], rax
		mov     rax, qword [rel _a]
		mov     qword [rbp-1000], rax
		mov     rax, qword [rbp-1000]
		add     rax, 8
		mov     qword [rbp-1008], rax
		mov     rax, qword [rbp-744]
		imul    rax, 8
		mov     qword [rbp-1016], rax
		mov     rax, qword [rbp-1008]
		add     rax, qword [rbp-1016]
		mov     qword [rbp-1024], rax
		mov     rdx, qword [rbp-1024]
		mov     rax, qword [rdx]
		mov     qword [rbp-1032], rax
		mov     rax, qword [rbp-1032]
		add     rax, qword [rbp-752]
		mov     qword [rbp-1040], rax
		mov     rax, qword [rel _n]
		mov     qword [rbp-1048], rax
		mov     rax, qword [rbp-1040]
		cmp     rax, qword [rbp-1048]
		setg    al
		movzx   rax, al
		mov     qword [rbp-1056], rax
		mov     rax, qword [rbp-1056]
		cmp     rax, 0
		jne     L72
		jmp     L76
L72:
		mov     rax, qword [rel _A]
		mov     qword [rbp-1064], rax
		mov     rax, qword [rel _seed]
		mov     qword [rbp-1072], rax
		mov     rax, qword [rel _Q]
		mov     qword [rbp-1080], rax
		mov     rax, qword [rbp-1072]
		cqo     
		mov     rcx, qword [rbp-1080]
		idiv    rcx
		mov     qword [rbp-1088], rdx
		mov     rax, qword [rbp-1064]
		imul    rax, qword [rbp-1088]
		mov     qword [rbp-1096], rax
		mov     rax, qword [rel _R]
		mov     qword [rbp-1104], rax
		mov     rax, qword [rel _seed]
		mov     qword [rbp-1112], rax
		mov     rax, qword [rel _Q]
		mov     qword [rbp-1120], rax
		mov     rax, qword [rbp-1112]
		cqo     
		mov     rcx, qword [rbp-1120]
		idiv    rcx
		mov     qword [rbp-1128], rax
		mov     rax, qword [rbp-1104]
		imul    rax, qword [rbp-1128]
		mov     qword [rbp-1136], rax
		mov     rax, qword [rbp-1096]
		sub     rax, qword [rbp-1136]
		mov     qword [rbp-1144], rax
		mov     rax, qword [rbp-1144]
		cmp     rax, 0
		setge   al
		movzx   rax, al
		mov     qword [rbp-1152], rax
		mov     rax, qword [rbp-1152]
		cmp     rax, 0
		jne     L73
		jmp     L74
L73:
		mov     rax, qword [rbp-1144]
		mov     qword [rel _seed], rax
		jmp     L75
L74:
		mov     rax, qword [rel _M]
		mov     qword [rbp-1160], rax
		mov     rax, qword [rbp-1144]
		add     rax, qword [rbp-1160]
		mov     qword [rbp-1168], rax
		mov     rax, qword [rbp-1168]
		mov     qword [rel _seed], rax
		jmp     L75
L75:
		mov     rax, qword [rel _seed]
		mov     qword [rbp-1176], rax
		mov     rax, qword [rbp-1176]
		cqo     
		mov     rcx, 10
		idiv    rcx
		mov     qword [rbp-1184], rdx
		mov     rax, qword [rbp-1184]
		add     rax, 1
		mov     qword [rbp-1192], rax
		mov     rax, qword [rel _a]
		mov     qword [rbp-1200], rax
		mov     rax, qword [rbp-1200]
		add     rax, 8
		mov     qword [rbp-1208], rax
		mov     rax, qword [rbp-744]
		imul    rax, 8
		mov     qword [rbp-1216], rax
		mov     rax, qword [rbp-1208]
		add     rax, qword [rbp-1216]
		mov     qword [rbp-1224], rax
		mov     rax, qword [rbp-1192]
		mov     rdx, qword [rbp-1224]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1176]
		mov     rdx, qword [rbp-32]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1144]
		mov     rdx, qword [rbp-16]
		mov     qword [rdx], rax
		jmp     L71
L76:
		mov     rax, qword [rel _a]
		mov     qword [rbp-1232], rax
		mov     rax, qword [rbp-1232]
		add     rax, 8
		mov     qword [rbp-1240], rax
		mov     rax, qword [rbp-744]
		imul    rax, 8
		mov     qword [rbp-1248], rax
		mov     rax, qword [rbp-1240]
		add     rax, qword [rbp-1248]
		mov     qword [rbp-1256], rax
		mov     rdx, qword [rbp-1256]
		mov     rax, qword [rdx]
		mov     qword [rbp-1264], rax
		mov     rax, qword [rbp-752]
		add     rax, qword [rbp-1264]
		mov     qword [rbp-1272], rax
		mov     rax, qword [rbp-744]
		inc     rax
		mov     qword [rbp-1280], rax
		mov     rax, qword [rbp-1280]
		mov     rdx, qword [rbp-256]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-1272]
		mov     rdx, qword [rbp-240]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-928]
		mov     rdx, qword [rbp-224]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-896]
		mov     rdx, qword [rbp-208]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-984]
		mov     rdx, qword [rbp-192]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-992]
		mov     rdx, qword [rbp-176]
		mov     qword [rdx], rax
		jmp     L66
L77:
		mov     rax, qword [rel _n]
		mov     qword [rbp-1288], rax
		mov     rax, qword [rbp-1288]
		sub     rax, qword [rbp-752]
		mov     qword [rbp-1296], rax
		mov     rax, qword [rel _a]
		mov     qword [rbp-1304], rax
		mov     rax, qword [rbp-1304]
		add     rax, 8
		mov     qword [rbp-1312], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-1320], rax
		mov     rax, qword [rbp-1320]
		sub     rax, 1
		mov     qword [rbp-1328], rax
		mov     rax, qword [rbp-1328]
		imul    rax, 8
		mov     qword [rbp-1336], rax
		mov     rax, qword [rbp-1312]
		add     rax, qword [rbp-1336]
		mov     qword [rbp-1344], rax
		mov     rax, qword [rbp-1296]
		mov     rdx, qword [rbp-1344]
		mov     qword [rdx], rax
		mov     rax, 0
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		jmp     L78
L78:
		mov     rdx, qword [rbp-160]
		mov     rax, qword [rdx]
		mov     qword [rbp-1352], rax
		mov     rax, qword [rel _now]
		mov     qword [rbp-1360], rax
		mov     rax, qword [rbp-1352]
		cmp     rax, qword [rbp-1360]
		setl    al
		movzx   rax, al
		mov     qword [rbp-1368], rax
		mov     rax, qword [rbp-1368]
		cmp     rax, 0
		jne     L79
		jmp     L80
L79:
		mov     rax, qword [rel _a]
		mov     qword [rbp-1376], rax
		mov     rax, qword [rbp-1376]
		add     rax, 8
		mov     qword [rbp-1384], rax
		mov     rax, qword [rbp-1352]
		imul    rax, 8
		mov     qword [rbp-1392], rax
		mov     rax, qword [rbp-1384]
		add     rax, qword [rbp-1392]
		mov     qword [rbp-1400], rax
		mov     rdx, qword [rbp-1400]
		mov     rax, qword [rdx]
		mov     qword [rbp-1408], rax
		mov     rdi, qword [rbp-1408]
		call    toString
		mov     qword [rbp-1416], rax
		mov     rdi, qword [rbp-1416]
		mov     rsi, __str_0
		call    _stringAdd
		mov     qword [rbp-1424], rax
		mov     rdi, qword [rbp-1424]
		call    print
		mov     rax, qword [rbp-1352]
		inc     rax
		mov     qword [rbp-1432], rax
		mov     rax, qword [rbp-1432]
		mov     rdx, qword [rbp-160]
		mov     qword [rdx], rax
		jmp     L78
L80:
		mov     rdi, __str_1
		call    println
		call    merge
		mov     rax, 0
		mov     rdx, qword [rbp-128]
		mov     qword [rdx], rax
		jmp     L81
L81:
		mov     rdx, qword [rbp-128]
		mov     rax, qword [rdx]
		mov     qword [rbp-1440], rax
		call    win
		mov     qword [rbp-1448], rax
		mov     rax, qword [rbp-1448]
		cmp     rax, 0
		jne     L83
		jmp     L82
L82:
		mov     rax, qword [rbp-1440]
		inc     rax
		mov     qword [rbp-1456], rax
		call    move
		call    merge
		mov     rax, qword [rbp-1456]
		mov     rdx, qword [rbp-128]
		mov     qword [rdx], rax
		jmp     L81
L83:
		mov     rdi, qword [rbp-1440]
		call    toString
		mov     qword [rbp-1464], rax
		mov     rdi, __str_4
		mov     rsi, qword [rbp-1464]
		call    _stringAdd
		mov     qword [rbp-1472], rax
		mov     rdi, qword [rbp-1472]
		mov     rsi, __str_5
		call    _stringAdd
		mov     qword [rbp-1480], rax
		mov     rdi, qword [rbp-1480]
		call    println
		mov     rax, qword [rbp-272]
		inc     rax
		mov     qword [rbp-1488], rax
		mov     rax, qword [rbp-1488]
		mov     rdx, qword [rbp-112]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-760]
		mov     rdx, qword [rbp-96]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-768]
		mov     rdx, qword [rbp-80]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-776]
		mov     rdx, qword [rbp-64]
		mov     qword [rdx], rax
		mov     rax, qword [rbp-784]
		mov     rdx, qword [rbp-48]
		mov     qword [rdx], rax
		jmp     L50
L84:
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

__str_0:
		dq      1
		db      20H, 00H

__str_1:
		dq      0
		db      00H

__str_2:
		dq      79
		db      53H, 6FH, 72H, 72H, 79H, 2CH, 20H, 74H, 68H, 65H, 20H, 6EH, 75H, 6DH, 62H, 65H, 72H, 20H, 6EH, 20H, 6DH, 75H, 73H, 74H, 20H, 62H, 65H, 20H, 61H, 20H, 6EH, 75H, 6DH, 62H, 65H, 72H, 20H, 73H, 2EH, 74H, 2EH, 20H, 74H, 68H, 65H, 72H, 65H, 20H, 65H, 78H, 69H, 73H, 74H, 73H, 20H, 69H, 20H, 73H, 61H, 74H, 69H, 73H, 66H, 79H, 69H, 6EH, 67H, 20H, 6EH, 3DH, 31H, 2BH, 32H, 2BH, 2EH, 2EH, 2EH, 2BH, 69H, 00H

__str_3:
		dq      12
		db      4CH, 65H, 74H, 27H, 73H, 20H, 73H, 74H, 61H, 72H, 74H, 21H, 00H

__str_4:
		dq      7
		db      54H, 6FH, 74H, 61H, 6CH, 3AH, 20H, 00H

__str_5:
		dq      8
		db      20H, 73H, 74H, 65H, 70H, 28H, 73H, 29H, 00H

SECTION .bss
_n:
		resb    8
_h:
		resb    8
_now:
		resb    8
_a:
		resb    8
_A:
		resb    8
_M:
		resb    8
_Q:
		resb    8
_R:
		resb    8
_seed:
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


