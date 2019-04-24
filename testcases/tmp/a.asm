default rel

global _N
global _n
global _a
global _bak
global _a_left
global _a_right
global _heap
global _i1
global _i2
global _i3
global _i4
global _i5
global _i6
global _i7
global _i8
global _i9
global _i10
global _i11
global _i12
global _i13
global _i14
global _globalInit
global _A_Optimizer
global _A_A
global restore
global quicksort
global calc
global mergesort
global heapsort
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
		sub     rsp, 16
		mov     qword [rbp - 8], rbx
		mov     qword [rel _N], 100000
		mov     rbx, qword [rel _N]
		mov     rdi, rbx
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     qword [rel _a], rax
		mov     rbx, qword [rel _N]
		mov     rdi, rbx
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     qword [rel _bak], rax
		mov     rbx, qword [rel _N]
		mov     rdi, rbx
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     qword [rel _a_left], rax
		mov     rbx, qword [rel _N]
		mov     rdi, rbx
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     qword [rel _a_right], rax
		mov     rbx, qword [rel _N]
		mov     rdi, rbx
		imul    rdi, 8
		add     rdi, 8
		call    malloc
		mov     qword [rax], rbx
		mov     qword [rel _heap], rax
		mov     rbx, qword [rbp - 8]
		mov     rsp, rbp
		pop     rbp
		ret     

_A_Optimizer:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 240
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r15
		mov     qword [rbp - 24], r14
		mov     qword [rbp - 32], r13
		mov     qword [rbp - 40], r12
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 48], rax
		mov     rcx, qword [rbp - 48]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 48]
		mov     qword [rbp - 56], rcx
		add     qword [rbp - 56], 24
		mov     r10, qword [rbp - 48]
		add     r10, 8
		mov     rdx, 0
		mov     r11, 0
		mov     rsi, 0
		mov     rax, 0
		mov     r9, 0
		mov     r8, 0
		mov     rcx, 0
__L_1:
		mov     qword [rbp - 64], r10
		mov     qword [rbp - 72], rdx
		mov     qword [rbp - 80], r11
		mov     r15, rsi
		mov     rbx, rax
		mov     r12, r9
		mov     r14, r8
		mov     r13, rcx
		mov     rcx, qword [rbp - 56]
		cmp     qword [rbp - 64], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_2
__L_3:
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 88], rax
		mov     rcx, qword [rbp - 88]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 88]
		mov     qword [rbp - 96], rcx
		add     qword [rbp - 96], 24
		mov     rcx, qword [rbp - 88]
		add     rcx, 8
		mov     r9, rcx
		mov     rdx, qword [rbp - 72]
		mov     r8, qword [rbp - 80]
		mov     rcx, r15
		mov     rax, rbx
		mov     rsi, r12
		mov     r11, r14
		mov     r10, r13
__L_4:
		mov     qword [rbp - 104], r9
		mov     qword [rbp - 112], r8
		mov     r15, rcx
		mov     rbx, rax
		mov     r12, rsi
		mov     r13, r11
		mov     r14, r10
		mov     rcx, qword [rbp - 96]
		cmp     qword [rbp - 104], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_5
__L_6:
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 120], rax
		mov     rcx, qword [rbp - 120]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 120]
		mov     qword [rbp - 128], rcx
		add     qword [rbp - 128], 24
		mov     r8, qword [rbp - 120]
		add     r8, 8
		mov     rcx, qword [rbp - 112]
		mov     rdx, rbx
		mov     rsi, r12
		mov     rax, r13
		mov     r9, r14
__L_7:
		mov     qword [rbp - 136], r8
		mov     r8, rcx
		mov     r14, rdx
		mov     rbx, rsi
		mov     r13, rax
		mov     r12, r9
		mov     rcx, qword [rbp - 128]
		cmp     qword [rbp - 136], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_8
__L_9:
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 144], rax
		mov     rcx, qword [rbp - 144]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 144]
		mov     qword [rbp - 152], rcx
		add     qword [rbp - 152], 24
		mov     rax, qword [rbp - 144]
		add     rax, 8
		mov     r9, r15
		mov     rcx, r14
		mov     rdx, rbx
		mov     r8, r13
__L_10:
		mov     qword [rbp - 160], rax
		mov     r15, r9
		mov     r13, rcx
		mov     r14, rdx
		mov     rbx, r8
		mov     rcx, qword [rbp - 152]
		cmp     qword [rbp - 160], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_11
__L_12:
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 168], rax
		mov     rcx, qword [rbp - 168]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 168]
		mov     qword [rbp - 176], rcx
		add     qword [rbp - 176], 24
		mov     r8, qword [rbp - 168]
		add     r8, 8
		mov     rcx, r13
__L_13:
		mov     qword [rbp - 184], r8
		mov     r8, qword [rbp - 176]
		cmp     qword [rbp - 184], r8
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_14
__L_15:
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 192], rax
		mov     rcx, qword [rbp - 192]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 192]
		mov     qword [rbp - 200], rcx
		add     qword [rbp - 200], 24
		mov     rcx, qword [rbp - 192]
		add     rcx, 8
__L_16:
		mov     qword [rbp - 208], rcx
		mov     rcx, qword [rbp - 200]
		cmp     qword [rbp - 208], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_17
__L_18:
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 216], rax
		mov     rcx, qword [rbp - 216]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 216]
		mov     qword [rbp - 224], rcx
		add     qword [rbp - 224], 24
		mov     rcx, qword [rbp - 216]
		add     rcx, 8
__L_19:
		mov     qword [rbp - 232], rcx
		mov     rcx, qword [rbp - 224]
		cmp     qword [rbp - 232], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_20
__L_21:
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 240], rax
		mov     rcx, qword [rbp - 240]
		mov     qword [rcx], 2
		mov     r14, qword [rbp - 240]
		add     r14, 24
		mov     rbx, qword [rbp - 240]
		add     rbx, 8
__L_22:
		cmp     rbx, r14
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_23
__L_24:
		mov     rdi, 24
		call    malloc
		mov     r15, rax
		mov     qword [r15], 2
		mov     r13, r15
		add     r13, 24
		mov     r12, r15
		add     r12, 8
__L_25:
		cmp     r12, r13
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_26
__L_27:
		mov     rdi, 24
		call    malloc
		mov     qword [rax], 2
		mov     qword [r12], rax
		add     r12, 8
		jmp     __L_25
__L_26:
		mov     qword [rbx], r15
		add     rbx, 8
		jmp     __L_22
__L_23:
		mov     r8, qword [rbp - 232]
		mov     rcx, qword [rbp - 240]
		mov     qword [r8], rcx
		mov     rcx, qword [rbp - 232]
		add     rcx, 8
		jmp     __L_19
__L_20:
		mov     r8, qword [rbp - 208]
		mov     rcx, qword [rbp - 216]
		mov     qword [r8], rcx
		mov     rcx, qword [rbp - 208]
		add     rcx, 8
		mov     r14, qword [rbp - 232]
		jmp     __L_16
__L_17:
		mov     r8, qword [rbp - 184]
		mov     rcx, qword [rbp - 192]
		mov     qword [r8], rcx
		mov     r8, qword [rbp - 184]
		add     r8, 8
		mov     rcx, qword [rbp - 208]
		jmp     __L_13
__L_14:
		mov     rdx, qword [rbp - 160]
		mov     r8, qword [rbp - 168]
		mov     qword [rdx], r8
		mov     rax, qword [rbp - 160]
		add     rax, 8
		mov     r9, qword [rbp - 184]
		mov     rdx, r14
		mov     r8, rbx
		jmp     __L_10
__L_11:
		mov     r8, qword [rbp - 136]
		mov     rcx, qword [rbp - 144]
		mov     qword [r8], rcx
		mov     r8, qword [rbp - 136]
		add     r8, 8
		mov     rcx, qword [rbp - 160]
		mov     rdx, r13
		mov     rsi, r14
		mov     rax, rbx
		mov     r9, r12
		jmp     __L_7
__L_8:
		mov     rdx, qword [rbp - 104]
		mov     rcx, qword [rbp - 120]
		mov     qword [rdx], rcx
		mov     r9, qword [rbp - 104]
		add     r9, 8
		mov     rdx, qword [rbp - 136]
		mov     rcx, r15
		mov     rax, r14
		mov     rsi, rbx
		mov     r11, r13
		mov     r10, r12
		jmp     __L_4
__L_5:
		mov     r8, qword [rbp - 64]
		mov     rcx, qword [rbp - 88]
		mov     qword [r8], rcx
		mov     r10, qword [rbp - 64]
		add     r10, 8
		mov     r11, qword [rbp - 112]
		mov     rsi, r15
		mov     rax, rbx
		mov     r9, r12
		mov     r8, r13
		mov     rcx, r14
		jmp     __L_1
__L_2:
		mov     rdx, 1
		mov     rbx, 0
__L_28:
		cmp     rdx, 1000
		setle   al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_29
__L_30:
		mov     r9, 123
		add     r9, rdx
		mov     rcx, qword [rbp - 48]
		add     rcx, 8
		add     rcx, 0
		mov     r8, qword [rcx]
		add     r8, 8
		add     r8, 8
		mov     r8, qword [r8]
		add     r8, 8
		add     r8, 0
		mov     r8, qword [r8]
		add     r8, 8
		add     r8, 8
		mov     r8, qword [r8]
		add     r8, 8
		add     r8, 0
		mov     r8, qword [r8]
		add     r8, 8
		add     r8, 8
		mov     r8, qword [r8]
		add     r8, 8
		add     r8, 0
		mov     r8, qword [r8]
		add     r8, 8
		add     r8, 8
		mov     r8, qword [r8]
		add     r8, 8
		add     r8, 0
		mov     r8, qword [r8]
		add     r8, 8
		add     r8, 8
		mov     qword [r8], r9
		mov     rcx, qword [rcx]
		add     rcx, 8
		add     rcx, 8
		mov     rcx, qword [rcx]
		add     rcx, 8
		add     rcx, 0
		mov     rcx, qword [rcx]
		add     rcx, 8
		add     rcx, 8
		mov     rcx, qword [rcx]
		add     rcx, 8
		add     rcx, 0
		mov     rcx, qword [rcx]
		add     rcx, 8
		add     rcx, 8
		mov     rcx, qword [rcx]
		add     rcx, 8
		add     rcx, 0
		mov     rcx, qword [rcx]
		add     rcx, 8
		add     rcx, 8
		mov     rcx, qword [rcx]
		add     rcx, 8
		add     rcx, 0
		mov     rcx, qword [rcx]
		add     rcx, 8
		add     rcx, 8
		mov     rcx, qword [rcx]
		add     rbx, rcx
		inc     rdx
		jmp     __L_28
__L_29:
		mov     rdi, rbx
		call    toString
		mov     rdi, rax
		call    println
		mov     rcx, 1
__L_31:
		cmp     rcx, 1000000
		setle   al
		movzx   r8, al
		cmp     r8, 0
		je      __L_32
__L_33:
		mov     rax, 18760
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		imul    rax, 2345
		cqo     
		mov     r8, 1234
		idiv    r8
		mov     rax, rdx
		cqo     
		mov     r8, 11
		idiv    r8
		add     rbx, rdx
		inc     rcx
		jmp     __L_31
__L_32:
		mov     rdi, rbx
		call    toString
		mov     rdi, rax
		call    println
		mov     rcx, 1
__L_34:
		cmp     rcx, 200000000
		setle   al
		movzx   r8, al
		cmp     r8, 0
		je      __L_35
__L_36:
		inc     rcx
		jmp     __L_34
__L_35:
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     r13, qword [rbp - 32]
		mov     r12, qword [rbp - 40]
		mov     rsp, rbp
		pop     rbp
		ret     

_A_A:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 256
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r15
		mov     qword [rbp - 24], r14
		mov     qword [rbp - 32], r13
		mov     qword [rbp - 40], r12
		mov     qword [rbp - 48], rdi
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 56], rax
		mov     rcx, qword [rbp - 56]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 56]
		mov     qword [rbp - 64], rcx
		add     qword [rbp - 64], 24
		mov     r10, qword [rbp - 56]
		add     r10, 8
		mov     rdx, 0
		mov     r11, 0
		mov     rsi, 0
		mov     rax, 0
		mov     r9, 0
		mov     r8, 0
		mov     rcx, 0
__L_37:
		mov     qword [rbp - 72], r10
		mov     qword [rbp - 80], rdx
		mov     qword [rbp - 88], r11
		mov     r15, rsi
		mov     r14, rax
		mov     r12, r9
		mov     rbx, r8
		mov     r13, rcx
		mov     rcx, qword [rbp - 64]
		cmp     qword [rbp - 72], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_38
__L_39:
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 96], rax
		mov     rcx, qword [rbp - 96]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 96]
		mov     qword [rbp - 104], rcx
		add     qword [rbp - 104], 24
		mov     rcx, qword [rbp - 96]
		add     rcx, 8
		mov     r9, rcx
		mov     rdx, qword [rbp - 80]
		mov     r8, qword [rbp - 88]
		mov     rcx, r15
		mov     rax, r14
		mov     rsi, r12
		mov     r11, rbx
		mov     r10, r13
__L_40:
		mov     qword [rbp - 112], r9
		mov     qword [rbp - 120], r8
		mov     r15, rcx
		mov     r12, rax
		mov     rbx, rsi
		mov     r14, r11
		mov     r13, r10
		mov     rcx, qword [rbp - 104]
		cmp     qword [rbp - 112], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_41
__L_42:
		mov     rdi, 32
		call    malloc
		mov     qword [rbp - 128], rax
		mov     rcx, qword [rbp - 128]
		mov     qword [rcx], 3
		mov     rcx, qword [rbp - 128]
		mov     qword [rbp - 136], rcx
		add     qword [rbp - 136], 32
		mov     r8, qword [rbp - 128]
		add     r8, 8
		mov     rcx, qword [rbp - 120]
		mov     rdx, r12
		mov     rsi, rbx
		mov     rax, r14
		mov     r9, r13
__L_43:
		mov     qword [rbp - 144], r8
		mov     r8, rcx
		mov     r12, rdx
		mov     r14, rsi
		mov     r13, rax
		mov     rbx, r9
		mov     rcx, qword [rbp - 136]
		cmp     qword [rbp - 144], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_44
__L_45:
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 152], rax
		mov     rcx, qword [rbp - 152]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 152]
		mov     qword [rbp - 160], rcx
		add     qword [rbp - 160], 24
		mov     rax, qword [rbp - 152]
		add     rax, 8
		mov     r9, r15
		mov     rcx, r12
		mov     rdx, r14
		mov     r8, r13
__L_46:
		mov     qword [rbp - 168], rax
		mov     r15, r9
		mov     r13, rcx
		mov     r12, rdx
		mov     r14, r8
		mov     rcx, qword [rbp - 160]
		cmp     qword [rbp - 168], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_47
__L_48:
		mov     rdi, 32
		call    malloc
		mov     qword [rbp - 176], rax
		mov     rcx, qword [rbp - 176]
		mov     qword [rcx], 3
		mov     rcx, qword [rbp - 176]
		mov     qword [rbp - 184], rcx
		add     qword [rbp - 184], 32
		mov     r8, qword [rbp - 176]
		add     r8, 8
		mov     rcx, r13
__L_49:
		mov     qword [rbp - 192], r8
		mov     r8, qword [rbp - 184]
		cmp     qword [rbp - 192], r8
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_50
__L_51:
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 200], rax
		mov     rcx, qword [rbp - 200]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 200]
		mov     qword [rbp - 208], rcx
		add     qword [rbp - 208], 24
		mov     rcx, qword [rbp - 200]
		add     rcx, 8
__L_52:
		mov     qword [rbp - 216], rcx
		mov     rcx, qword [rbp - 208]
		cmp     qword [rbp - 216], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_53
__L_54:
		mov     rdi, 24
		call    malloc
		mov     qword [rbp - 224], rax
		mov     rcx, qword [rbp - 224]
		mov     qword [rcx], 2
		mov     rcx, qword [rbp - 224]
		mov     qword [rbp - 232], rcx
		add     qword [rbp - 232], 24
		mov     rcx, qword [rbp - 224]
		add     rcx, 8
__L_55:
		mov     qword [rbp - 240], rcx
		mov     rcx, qword [rbp - 232]
		cmp     qword [rbp - 240], rcx
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_56
__L_57:
		mov     rdi, 32
		call    malloc
		mov     qword [rbp - 248], rax
		mov     rcx, qword [rbp - 248]
		mov     qword [rcx], 3
		mov     r12, qword [rbp - 248]
		add     r12, 32
		mov     r14, qword [rbp - 248]
		add     r14, 8
__L_58:
		cmp     r14, r12
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_59
__L_60:
		mov     rdi, 24
		call    malloc
		mov     r13, rax
		mov     qword [r13], 2
		mov     r15, r13
		add     r15, 24
		mov     rbx, r13
		add     rbx, 8
__L_61:
		cmp     rbx, r15
		setl    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_62
__L_63:
		mov     rdi, 24
		call    malloc
		mov     qword [rax], 2
		mov     qword [rbx], rax
		add     rbx, 8
		jmp     __L_61
__L_62:
		mov     qword [r14], r13
		add     r14, 8
		jmp     __L_58
__L_59:
		mov     r8, qword [rbp - 240]
		mov     rcx, qword [rbp - 248]
		mov     qword [r8], rcx
		mov     rcx, qword [rbp - 240]
		add     rcx, 8
		jmp     __L_55
__L_56:
		mov     r8, qword [rbp - 216]
		mov     rcx, qword [rbp - 224]
		mov     qword [r8], rcx
		mov     rcx, qword [rbp - 216]
		add     rcx, 8
		mov     r12, qword [rbp - 240]
		jmp     __L_52
__L_53:
		mov     r8, qword [rbp - 192]
		mov     rcx, qword [rbp - 200]
		mov     qword [r8], rcx
		mov     r8, qword [rbp - 192]
		add     r8, 8
		mov     rcx, qword [rbp - 216]
		jmp     __L_49
__L_50:
		mov     rdx, qword [rbp - 168]
		mov     r8, qword [rbp - 176]
		mov     qword [rdx], r8
		mov     rax, qword [rbp - 168]
		add     rax, 8
		mov     r9, qword [rbp - 192]
		mov     rdx, r12
		mov     r8, r14
		jmp     __L_46
__L_47:
		mov     r8, qword [rbp - 144]
		mov     rcx, qword [rbp - 152]
		mov     qword [r8], rcx
		mov     r8, qword [rbp - 144]
		add     r8, 8
		mov     rcx, qword [rbp - 168]
		mov     rdx, r13
		mov     rsi, r12
		mov     rax, r14
		mov     r9, rbx
		jmp     __L_43
__L_44:
		mov     rdx, qword [rbp - 112]
		mov     rcx, qword [rbp - 128]
		mov     qword [rdx], rcx
		mov     r9, qword [rbp - 112]
		add     r9, 8
		mov     rdx, qword [rbp - 144]
		mov     rcx, r15
		mov     rax, r12
		mov     rsi, r14
		mov     r11, r13
		mov     r10, rbx
		jmp     __L_40
__L_41:
		mov     r8, qword [rbp - 72]
		mov     rcx, qword [rbp - 96]
		mov     qword [r8], rcx
		mov     r10, qword [rbp - 72]
		add     r10, 8
		mov     r11, qword [rbp - 120]
		mov     rsi, r15
		mov     rax, r12
		mov     r9, rbx
		mov     r8, r14
		mov     rcx, r13
		jmp     __L_37
__L_38:
		mov     r8, qword [rbp - 48]
		add     r8, 0
		mov     rcx, qword [rbp - 56]
		mov     qword [r8], rcx
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     r13, qword [rbp - 32]
		mov     r12, qword [rbp - 40]
		mov     rsp, rbp
		pop     rbp
		ret     

restore:
		push    rbp
		mov     rbp, rsp
		mov     r8, 1
__L_64:
		mov     rcx, qword [rel _n]
		cmp     r8, rcx
		setle   al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_65
__L_66:
		mov     rcx, qword [rel _bak]
		add     rcx, 8
		mov     rdx, r8
		imul    rdx, 8
		add     rcx, rdx
		mov     r9, qword [rcx]
		mov     rcx, qword [rel _a]
		add     rcx, 8
		add     rcx, rdx
		mov     qword [rcx], r9
		inc     r8
		jmp     __L_64
__L_65:
		mov     rsp, rbp
		pop     rbp
		ret     

quicksort:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r15
		mov     qword [rbp - 24], r14
		mov     r15, rsi
		mov     rcx, qword [rel _a]
		add     rcx, 8
		mov     r8, rdi
		imul    r8, 8
		add     rcx, r8
		mov     rdx, qword [rcx]
		mov     r9, rdi
		add     r9, 1
		mov     r14, 0
		mov     r8, 0
		mov     rax, 0
__L_67:
		mov     rcx, r8
		mov     rbx, rax
		cmp     r9, r15
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_68
__L_69:
		inc     r14
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     rax, r9
		imul    rax, 8
		add     r8, rax
		mov     r8, qword [r8]
		cmp     r8, rdx
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_70
__L_71:
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     rax, r9
		imul    rax, 8
		add     r8, rax
		mov     rsi, qword [r8]
		mov     rax, qword [rel _a_left]
		add     rax, 8
		mov     r8, rcx
		inc     r8
		imul    rcx, 8
		add     rax, rcx
		mov     qword [rax], rsi
		mov     rax, rbx
		jmp     __L_72
__L_70:
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     rax, r9
		imul    rax, 8
		add     r8, rax
		mov     rsi, qword [r8]
		mov     r8, qword [rel _a_right]
		add     r8, 8
		mov     rax, rbx
		inc     rax
		imul    rbx, 8
		add     r8, rbx
		mov     qword [r8], rsi
		mov     r8, rcx
__L_72:
		inc     r9
		jmp     __L_67
__L_68:
		mov     rsi, 0
		mov     r9, rdi
__L_73:
		cmp     rsi, rcx
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_74
__L_75:
		mov     r8, qword [rel _a_left]
		add     r8, 8
		mov     rax, rsi
		imul    rax, 8
		add     r8, rax
		mov     r10, qword [r8]
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     rax, r9
		inc     rax
		imul    r9, 8
		add     r8, r9
		mov     qword [r8], r10
		inc     rsi
		mov     r9, rax
		jmp     __L_73
__L_74:
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     rsi, r9
		inc     rsi
		imul    r9, 8
		add     r8, r9
		mov     qword [r8], rdx
		mov     rdx, 0
__L_76:
		cmp     rdx, rbx
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_77
__L_78:
		mov     r8, qword [rel _a_right]
		add     r8, 8
		mov     r9, rdx
		imul    r9, 8
		add     r8, r9
		mov     rax, qword [r8]
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     r9, rsi
		inc     r9
		imul    rsi, 8
		add     r8, rsi
		mov     qword [r8], rax
		inc     rdx
		mov     rsi, r9
		jmp     __L_76
__L_77:
		cmp     rcx, 1
		setg    al
		movzx   r8, al
		cmp     r8, 0
		jne     __L_79
__L_80:
		jmp     __L_81
__L_79:
		mov     rsi, rdi
		add     rsi, rcx
		call    quicksort
		add     r14, rax
__L_81:
		cmp     rbx, 1
		setg    al
		movzx   rcx, al
		cmp     rcx, 0
		jne     __L_82
__L_83:
		jmp     __L_84
__L_82:
		mov     rdi, r15
		sub     rdi, rbx
		mov     rsi, r15
		call    quicksort
		add     r14, rax
__L_84:
		mov     rax, r14
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     rsp, rbp
		pop     rbp
		ret     

calc:
		push    rbp
		mov     rbp, rsp
		mov     rcx, 1
__L_85:
		mov     r8, qword [rel _n]
		cmp     rcx, r8
		setle   al
		movzx   r8, al
		cmp     r8, 0
		je      __L_86
__L_87:
		mov     r8, rcx
		sub     r8, 1
		mov     rdx, qword [rel _a_left]
		add     rdx, 8
		mov     r9, rcx
		imul    r9, 8
		add     rdx, r9
		mov     qword [rdx], r8
		mov     r8, rcx
		add     r8, 1
		mov     rdx, qword [rel _a_right]
		add     rdx, 8
		add     rdx, r9
		mov     qword [rdx], r8
		inc     rcx
		jmp     __L_85
__L_86:
		mov     r9, qword [rel _n]
		mov     rcx, 0
__L_88:
		cmp     r9, 1
		setge   al
		movzx   r8, al
		cmp     r8, 0
		je      __L_89
__L_90:
		mov     r8, qword [rel _a_left]
		add     r8, 8
		mov     rdx, qword [rel _a]
		add     rdx, 8
		mov     rax, r9
		imul    rax, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		imul    rdx, 8
		add     r8, rdx
		mov     rsi, qword [r8]
		mov     r8, qword [rel _a_right]
		add     r8, 8
		mov     rdx, qword [rel _a]
		add     rdx, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		imul    rdx, 8
		add     r8, rdx
		mov     rax, qword [r8]
		mov     r8, qword [rel _a_right]
		add     r8, 8
		mov     rdx, rsi
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rax
		mov     r8, qword [rel _a_left]
		add     r8, 8
		mov     rdx, rax
		imul    rdx, 8
		add     r8, rdx
		mov     qword [r8], rsi
		add     rcx, rax
		sub     rcx, rsi
		sub     rcx, 2
		dec     r9
		jmp     __L_88
__L_89:
		mov     rax, rcx
		mov     rsp, rbp
		pop     rbp
		ret     

mergesort:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r15
		mov     qword [rbp - 24], r14
		mov     qword [rbp - 32], r13
		mov     r14, rdi
		mov     r13, rsi
		mov     rcx, r14
		add     rcx, 1
		cmp     rcx, r13
		sete    al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_91
__L_92:
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     r13, qword [rbp - 32]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     
__L_91:
		mov     rbx, r14
		add     rbx, r13
		sar     rbx, 1
		mov     rdi, r14
		mov     rsi, rbx
		call    mergesort
		mov     r15, 0
		add     r15, rax
		mov     rdi, rbx
		mov     rsi, r13
		call    mergesort
		mov     rcx, r15
		add     rcx, rax
		mov     r8, 0
		mov     rdx, r14
__L_93:
		mov     rsi, r8
		cmp     rdx, rbx
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_94
__L_95:
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     r9, rdx
		imul    r9, 8
		add     r8, r9
		mov     rax, qword [r8]
		mov     r9, qword [rel _a_left]
		add     r9, 8
		mov     r8, rsi
		inc     r8
		imul    rsi, 8
		add     r9, rsi
		mov     qword [r9], rax
		inc     rdx
		jmp     __L_93
__L_94:
		mov     r8, 0
__L_96:
		mov     r9, r8
		cmp     rbx, r13
		setl    al
		movzx   r8, al
		cmp     r8, 0
		je      __L_97
__L_98:
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     rdx, rbx
		imul    rdx, 8
		add     r8, rdx
		mov     rax, qword [r8]
		mov     rdx, qword [rel _a_right]
		add     rdx, 8
		mov     r8, r9
		inc     r8
		imul    r9, 8
		add     rdx, r9
		mov     qword [rdx], rax
		inc     rbx
		jmp     __L_96
__L_97:
		mov     rbx, 0
		mov     rdx, 0
__L_99:
		mov     r8, rdx
		cmp     rbx, rsi
		setl    al
		movzx   rdx, al
		cmp     rdx, 0
		jne     __L_100
__L_101:
		jmp     __L_102
__L_100:
		cmp     r8, r9
		setl    al
		movzx   rdx, al
		cmp     rdx, 0
		jne     __L_103
__L_104:
		jmp     __L_102
__L_103:
		inc     rcx
		mov     rdx, qword [rel _a_left]
		add     rdx, 8
		mov     rax, rbx
		imul    rax, 8
		add     rdx, rax
		mov     r10, qword [rdx]
		mov     rdx, qword [rel _a_right]
		add     rdx, 8
		mov     rax, r8
		imul    rax, 8
		add     rdx, rax
		mov     rdx, qword [rdx]
		cmp     r10, rdx
		setl    al
		movzx   rdx, al
		cmp     rdx, 0
		je      __L_105
__L_106:
		mov     rdx, qword [rel _a_left]
		add     rdx, 8
		mov     rax, rbx
		inc     rax
		imul    rbx, 8
		add     rdx, rbx
		mov     rbx, qword [rdx]
		mov     rdx, qword [rel _a]
		add     rdx, 8
		mov     r10, r14
		inc     r10
		imul    r14, 8
		add     rdx, r14
		mov     qword [rdx], rbx
		mov     rbx, rax
		mov     rdx, r8
		mov     r14, r10
		jmp     __L_99
__L_105:
		mov     rax, qword [rel _a_right]
		add     rax, 8
		mov     rdx, r8
		inc     rdx
		imul    r8, 8
		add     rax, r8
		mov     r10, qword [rax]
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     rax, r14
		inc     rax
		imul    r14, 8
		add     r8, r14
		mov     qword [r8], r10
		mov     r14, rax
		jmp     __L_99
__L_102:
		cmp     rbx, rsi
		setl    al
		movzx   rdx, al
		cmp     rdx, 0
		jne     __L_107
__L_108:
		jmp     __L_109
__L_107:
		mov     rdx, qword [rel _a_left]
		add     rdx, 8
		mov     rax, rbx
		inc     rax
		imul    rbx, 8
		add     rdx, rbx
		mov     rbx, qword [rdx]
		mov     rdx, qword [rel _a]
		add     rdx, 8
		mov     r10, r14
		inc     r10
		imul    r14, 8
		add     rdx, r14
		mov     qword [rdx], rbx
		mov     rbx, rax
		mov     r14, r10
		jmp     __L_102
__L_109:
		cmp     r8, r9
		setl    al
		movzx   rdx, al
		cmp     rdx, 0
		je      __L_110
__L_111:
		mov     rdx, qword [rel _a_right]
		add     rdx, 8
		mov     rax, r8
		inc     rax
		imul    r8, 8
		add     rdx, r8
		mov     rbx, qword [rdx]
		mov     r8, qword [rel _a]
		add     r8, 8
		mov     rdx, r14
		inc     rdx
		imul    r14, 8
		add     r8, r14
		mov     qword [r8], rbx
		mov     r8, rax
		mov     r14, rdx
		jmp     __L_109
__L_110:
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     r13, qword [rbp - 32]
		mov     rax, rcx
		mov     rsp, rbp
		pop     rbp
		ret     

heapsort:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r15
		mov     qword [rbp - 24], r14
		mov     rcx, 0
		mov     rdx, 1
		mov     r8, 0
__L_112:
		mov     r9, qword [rel _n]
		cmp     rdx, r9
		setle   al
		movzx   r9, al
		cmp     r9, 0
		je      __L_113
__L_114:
		mov     r9, qword [rel _a]
		add     r9, 8
		mov     rax, rdx
		imul    rax, 8
		add     r9, rax
		mov     rbx, qword [r9]
		mov     r9, qword [rel _heap]
		add     r9, 8
		add     r9, rax
		mov     qword [r9], rbx
		mov     r9, rdx
__L_115:
		cmp     r9, 1
		setne   al
		movzx   rax, al
		cmp     rax, 0
		jne     __L_116
__L_117:
		jmp     __L_118
__L_116:
		inc     rcx
		mov     rax, qword [rel _heap]
		add     rax, 8
		mov     rbx, r9
		imul    rbx, 8
		add     rax, rbx
		mov     rsi, qword [rax]
		mov     rax, qword [rel _heap]
		add     rax, 8
		mov     rbx, r9
		sar     rbx, 1
		imul    rbx, 8
		add     rax, rbx
		mov     rax, qword [rax]
		cmp     rsi, rax
		setg    al
		movzx   rax, al
		cmp     rax, 0
		je      __L_119
__L_120:
		jmp     __L_118
__L_119:
		mov     r8, qword [rel _heap]
		add     r8, 8
		mov     rax, r9
		imul    rax, 8
		add     r8, rax
		mov     r8, qword [r8]
		mov     rbx, qword [rel _heap]
		add     rbx, 8
		sar     r9, 1
		mov     rsi, r9
		imul    rsi, 8
		add     rbx, rsi
		mov     r10, qword [rbx]
		mov     rbx, qword [rel _heap]
		add     rbx, 8
		add     rbx, rax
		mov     qword [rbx], r10
		mov     rax, qword [rel _heap]
		add     rax, 8
		add     rax, rsi
		mov     qword [rax], r8
		jmp     __L_115
__L_118:
		inc     rdx
		jmp     __L_112
__L_113:
		mov     r9, qword [rel _n]
		mov     rsi, 1
		mov     rdx, r8
		mov     r10, r9
		mov     r8, 0
		mov     rbx, 0
		mov     r9, 0
__L_121:
		mov     r11, r10
		mov     r14, r9
		mov     r9, qword [rel _n]
		cmp     rsi, r9
		setle   al
		movzx   r9, al
		cmp     r9, 0
		je      __L_122
__L_123:
		mov     r9, qword [rel _heap]
		add     r9, 8
		add     r9, 8
		mov     r10, qword [r9]
		mov     r9, qword [rel _a]
		add     r9, 8
		mov     rax, rsi
		imul    rax, 8
		add     r9, rax
		mov     qword [r9], r10
		mov     r9, qword [rel _heap]
		add     r9, 8
		mov     r10, r11
		dec     r10
		imul    r11, 8
		add     r9, r11
		mov     rax, qword [r9]
		mov     r9, qword [rel _heap]
		add     r9, 8
		add     r9, 8
		mov     qword [r9], rax
		mov     r9, rdx
		mov     r11, 1
		mov     rax, rbx
__L_124:
		mov     rdx, r9
		mov     r9, r11
		mov     rbx, rax
		mov     r11, r14
		mov     rax, r9
		shl     rax, 1
		cmp     rax, r10
		setle   al
		movzx   rax, al
		cmp     rax, 0
		jne     __L_125
__L_126:
		jmp     __L_127
__L_125:
		mov     r8, r9
		shl     r8, 1
		mov     rbx, r8
		add     rbx, 1
		cmp     rbx, r10
		setle   al
		movzx   rax, al
		cmp     rax, 0
		jne     __L_128
__L_129:
		mov     r11, r8
		jmp     __L_130
__L_128:
		inc     rcx
		mov     rax, qword [rel _heap]
		add     rax, 8
		mov     r11, rbx
		imul    r11, 8
		add     rax, r11
		mov     r14, qword [rax]
		mov     rax, qword [rel _heap]
		add     rax, 8
		mov     r11, r8
		imul    r11, 8
		add     rax, r11
		mov     rax, qword [rax]
		cmp     r14, rax
		setl    al
		movzx   rax, al
		cmp     rax, 0
		jne     __L_131
__L_132:
		mov     r11, r8
		jmp     __L_130
__L_131:
		mov     r11, rbx
__L_130:
		inc     rcx
		mov     rax, qword [rel _heap]
		add     rax, 8
		mov     r14, r9
		imul    r14, 8
		add     rax, r14
		mov     rdi, qword [rax]
		mov     rax, qword [rel _heap]
		add     rax, 8
		mov     r14, r11
		imul    r14, 8
		add     rax, r14
		mov     rax, qword [rax]
		cmp     rdi, rax
		setl    al
		movzx   rax, al
		cmp     rax, 0
		je      __L_133
__L_134:
		jmp     __L_127
__L_133:
		mov     rdx, qword [rel _heap]
		add     rdx, 8
		mov     rax, r9
		imul    rax, 8
		add     rdx, rax
		mov     rdi, qword [rdx]
		mov     rdx, qword [rel _heap]
		add     rdx, 8
		mov     r14, r11
		imul    r14, 8
		add     rdx, r14
		mov     r15, qword [rdx]
		mov     rdx, qword [rel _heap]
		add     rdx, 8
		add     rdx, rax
		mov     qword [rdx], r15
		mov     rdx, qword [rel _heap]
		add     rdx, 8
		add     rdx, r14
		mov     qword [rdx], rdi
		mov     rax, rbx
		mov     r14, r9
		jmp     __L_124
__L_127:
		mov     r9, rsi
		inc     r9
		mov     rsi, r9
		mov     r9, r11
		jmp     __L_121
__L_122:
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     rax, rcx
		mov     rsp, rbp
		pop     rbp
		ret     

main:
		push    rbp
		mov     rbp, rsp
		sub     rsp, 32
		mov     qword [rbp - 8], rbx
		mov     qword [rbp - 16], r15
		mov     qword [rbp - 24], r14
		mov     qword [rbp - 32], r13
		call    _globalInit
		call    getInt
		mov     qword [rel _n], rax
		call    getInt
		mov     r9, rax
		mov     r8, 1
__L_135:
		mov     rcx, qword [rel _n]
		cmp     r8, rcx
		setle   al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_136
__L_137:
		mov     rcx, qword [rel _a]
		add     rcx, 8
		mov     rdx, r8
		imul    rdx, 8
		add     rcx, rdx
		mov     qword [rcx], r8
		cmp     r8, r9
		setle   al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_138
__L_139:
		mov     rcx, r9
		add     rcx, 1
		sub     rcx, r8
		mov     rdx, qword [rel _a]
		add     rdx, 8
		mov     rax, r8
		imul    rax, 8
		add     rdx, rax
		mov     qword [rdx], rcx
__L_138:
		mov     rcx, qword [rel _a]
		add     rcx, 8
		mov     rdx, r8
		imul    rdx, 8
		add     rcx, rdx
		mov     rax, qword [rcx]
		mov     rcx, qword [rel _bak]
		add     rcx, 8
		add     rcx, rdx
		mov     qword [rcx], rax
		inc     r8
		jmp     __L_135
__L_136:
		mov     rsi, qword [rel _n]
		add     rsi, 1
		mov     rdi, 1
		call    quicksort
		mov     r14, rax
		mov     r8, 1
__L_140:
		mov     rcx, qword [rel _n]
		cmp     r8, rcx
		setle   al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_141
__L_142:
		mov     rcx, qword [rel _bak]
		add     rcx, 8
		mov     rdx, r8
		imul    rdx, 8
		add     rcx, rdx
		mov     r9, qword [rcx]
		mov     rcx, qword [rel _a]
		add     rcx, 8
		add     rcx, rdx
		mov     qword [rcx], r9
		inc     r8
		jmp     __L_140
__L_141:
		call    calc
		mov     r13, rax
		mov     r8, 1
__L_143:
		mov     rcx, qword [rel _n]
		cmp     r8, rcx
		setle   al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_144
__L_145:
		mov     rcx, qword [rel _bak]
		add     rcx, 8
		mov     rdx, r8
		imul    rdx, 8
		add     rcx, rdx
		mov     r9, qword [rcx]
		mov     rcx, qword [rel _a]
		add     rcx, 8
		add     rcx, rdx
		mov     qword [rcx], r9
		inc     r8
		jmp     __L_143
__L_144:
		mov     rsi, qword [rel _n]
		add     rsi, 1
		mov     rdi, 1
		call    mergesort
		mov     r15, rax
		mov     r8, 1
__L_146:
		mov     rcx, qword [rel _n]
		cmp     r8, rcx
		setle   al
		movzx   rcx, al
		cmp     rcx, 0
		je      __L_147
__L_148:
		mov     rcx, qword [rel _bak]
		add     rcx, 8
		mov     rdx, r8
		imul    rdx, 8
		add     rcx, rdx
		mov     r9, qword [rcx]
		mov     rcx, qword [rel _a]
		add     rcx, 8
		add     rcx, rdx
		mov     qword [rcx], r9
		inc     r8
		jmp     __L_146
__L_147:
		call    heapsort
		mov     rbx, rax
		mov     rdi, r14
		call    toString
		mov     rdi, rax
		call    println
		mov     rdi, r13
		call    toString
		mov     rdi, rax
		call    println
		mov     rdi, r15
		call    toString
		mov     rdi, rax
		call    println
		mov     rdi, rbx
		call    toString
		mov     rdi, rax
		call    println
		mov     rdi, 8
		call    malloc
		mov     rbx, rax
		mov     rdi, rbx
		call    _A_A
		mov     rdi, rbx
		call    _A_Optimizer
		mov     rbx, qword [rbp - 8]
		mov     r15, qword [rbp - 16]
		mov     r14, qword [rbp - 24]
		mov     r13, qword [rbp - 32]
		mov     rax, 0
		mov     rsp, rbp
		pop     rbp
		ret     

SECTION .data

SECTION .bss

_N:
		resb    8

_n:
		resb    8

_a:
		resb    8

_bak:
		resb    8

_a_left:
		resb    8

_a_right:
		resb    8

_heap:
		resb    8

_i1:
		resb    8

_i2:
		resb    8

_i3:
		resb    8

_i4:
		resb    8

_i5:
		resb    8

_i6:
		resb    8

_i7:
		resb    8

_i8:
		resb    8

_i9:
		resb    8

_i10:
		resb    8

_i11:
		resb    8

_i12:
		resb    8

_i13:
		resb    8

_i14:
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


